--Properties--

number minPlayerCnt = 2--최소 매칭 인원
number maxPlayerCnt = 2--최대 매칭 인원
number waitingDuration = 3--매칭 대기하는 시간
boolean resetDurationByCancel = true--누군가매칭을 취소하면 대기시간을 초기화합니다
boolean isEventMatchType = false--이벤트매칭 사용여부입니다
number eventMatchPeriod = 10--이벤트매칭의 주기입니다
string logMessage = "%d초후 게임이 시작됩니다"
number multipleMatching = 1--배수 매칭입니다(1:기본, 2일 경우 짝수 매칭)


--Methods--

[Server Only]
void OnBeginPlay()
{
	self._T.instanceMapCnt = 0
	self._T.readyCnt = 0
	self.minPlayerCnt = math.ceil(self.minPlayerCnt/self.multipleMatching) * self.multipleMatching
	self.maxPlayerCnt = math.ceil(self.maxPlayerCnt/self.multipleMatching) * self.multipleMatching 
	self:SetMatchState(_MatchEnum.NONE)
	
	
	
	if  not _InstanceMapService:IsInstanceRoom() then
		local onUserEnterEvent = function(event)			
				local user = _UserService:GetUserEntityByUserId(event.UserId)
				if _EntityService:IsValid(user) then
					self:OnReadyResult(user.OwnerId,false,self._T.readyCnt ,self._T.matchState,user.OwnerId)
				end
			end
		self._T.onUserEnterEvent = _UserService:ConnectEvent(UserEnterEvent,onUserEnterEvent)
	end
	
	if not self.isEventMatchType then
		self:SetMatchState(_MatchEnum.WAIT)
	else		
		if not _InstanceMapService:IsInstanceRoom() then
			self:InitEventMatch()
		end
	end
}

[Server]
void SetReady(Entity player, boolean ready)
{
	if _InstanceMapService:IsInstanceRoom() then
		return
	end
	if not self.isEventMatchType then
		if self._T.matchState == _MatchEnum.FINAL_READY then
			if self.resetDurationByCancel and not ready then
				self:SetMatchState(_MatchEnum.WAIT)
				self:StartFinalReady(false)
			end
		end
	end
	self._T.readyCnt = self:CheckReadyPlayer()
	self:OnReadyResult(player.OwnerId,ready,self._T.readyCnt ,self._T.matchState)
}

[Client]
void OnReadyResult(string playerId, boolean ready, number playerCnt, number matchState)
{
	local ReadyEvent = MatchReadyEvent(playerId,ready,playerCnt,matchState)
	self:SendEvent(ReadyEvent)
}

[Server]
void StartFinalReady(boolean start)
{
	if self._T.timerId ~= nil and self._T.timerId > 0 then	
		_TimerService:ClearTimer(self._T.timerId)
		self._T.timerId = 0
		self:SetMatchLog("")
	end
	if start then
		local time = math.floor(self.waitingDuration)
		self._T.timerId = 0
		local timer = function()
			local log = string.format(self.logMessage,tostring(time))	
			time = time - 1
			if time < 0 then
				log = ""
				_TimerService:ClearTimer(self._T.timerId)
				self:StartEnterGame()
			end
			self:SetMatchLog(log)
		end
		self._T.timerId = _TimerService:SetTimerRepeat(timer,1,0)
	end
}

[Client]
void SetMatchLog(string log)
{
	self:SendEvent(MatchLogEvent(log))
}

[Server]
void StartEnterGame()
{
	local readyCnt = self:CheckReadyPlayer()
	if readyCnt >= self.minPlayerCnt then	
		self:MoveToInstanceMap()
	end
	self:SetMatchState(_MatchEnum.NONE)
	if not self.isEventMatchType then
		wait(1)
		self:SetMatchState(_MatchEnum.WAIT)
		self:CheckReadyPlayer()
	end
}

[Default]
number CheckReadyPlayer()
{
	local users = _UserService.UserEntities
	if users == nil or users.Count == 0 then
		return 0
	end
	
	local readyCnt = 0
	for k,v in pairs(users) do
		if v.PlayerMatch ~=nil and v.PlayerMatch.isReady then
			readyCnt = readyCnt + 1
		end
	end
	if not self.isEventMatchType then
		if readyCnt >= self.minPlayerCnt then
			if self._T.matchState ~= _MatchEnum.FINAL_READY then
				self:SetMatchState(_MatchEnum.FINAL_READY)
				self:StartFinalReady(true)
			end
		else
			if self._T.matchState == _MatchEnum.FINAL_READY then
				self:SetMatchState(_MatchEnum.WAIT)
				self:StartFinalReady(false)
			end	
		end
	end
	return readyCnt
}

[Default]
void SetMatchState(number matchState)
{
	if matchState == self._T.matchState then
		return
	end
	self._T.matchState = matchState
	self:OnChangeMatchState(matchState)
}

[Client]
void OnChangeMatchState(number matchState)
{
	self:SendEvent(MatchStateEvent(matchState))
}

[Server]
void MoveToInstanceMap()
{
	local users = _UserService.UserEntities
	if users == nil or users.Count == 0 then
		return
	end
	local readyCnt = 0
	local userTable = {}
	
	for k,v in pairs(users) do
		local user = v.PlayerMatch
		if user ~=nil and user.isReady then
			readyCnt = readyCnt + 1
			table.insert(userTable,user)
		end
	end
	table.sort(userTable,function(a,b) return a.readyClickTime < b.readyClickTime  end)
	--매칭 시간이 긴 사람부터 매칭 시작
	
	self._T.instanceMapCnt = self._T.instanceMapCnt + 1
	
	
	local multiplePlayerCnt = math.floor(readyCnt/self.multipleMatching) * self.multipleMatching
	local maxPlayerCnt = math.min(self.maxPlayerCnt,multiplePlayerCnt)
	
	local instanceMap = _InstanceMapService:GetOrCreateInstanceRoom(self._T.instanceMapCnt)
	local usersIds = {}
	local moveUserCnt = 0
	for k,v in pairs(userTable) do
		local user = v
		if moveUserCnt < maxPlayerCnt then
			table.insert(usersIds,v.Entity.OwnerId)
			moveUserCnt = moveUserCnt + 1
		else
			break
		end	
	end
	instanceMap:MoveUsers(usersIds, "InGame")
}

[Server]
void ExitInstanceMap(string userId)
{
	_InstanceMapService:MoveUserToStaticRoom(userId)
}

[Server]
void ExitInstanceMapAllUser()
{
	local users = _UserService.UserEntities
	if users == nil or users.Count == 0 then
		return
	end
	local exitUsers = {}
	for k,v in pairs(users) do
		table.insert(exitUsers,v.OwnerId)
	end
	_InstanceMapService:MoveUsersToStaticRoom(exitUsers)
}

[Default]
void InitEventMatch()
{
	local eventMatch = function()
		self:SetMatchState(_MatchEnum.WAIT)
		self:StartFinalReady(true)
	end
	_TimerService:SetTimerRepeat(eventMatch,self.eventMatchPeriod+self.waitingDuration,self.eventMatchPeriod)
	
}

[Server]
void SinglePlay(string id)
{
	self._T.instanceMapCnt = self._T.instanceMapCnt + 1
	local instanceMap = _InstanceMapService:GetOrCreateInstanceRoom(tostring(self._T.instanceMapCnt))
	instanceMap:MoveUser(id, "InGame")
}

[Server Only]
void OnEndPlay()
{
	_UserService:DisconnectEvent(UserEnterEvent,self._T.onUserEnterEvent)
	if self._T.timerId ~= nil and self._T.timerId > 0 then	
		_TimerService:ClearTimer(self._T.timerId)
		self._T.timerId = 0
	end
}


--Events--


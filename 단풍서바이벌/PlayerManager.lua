--Properties--

Component timeManager
Component stageManager
Component spawnManager
Component skillManager
Component resultManager
dictionary<string, TransformComponent> livingPlayers
dictionary<string, boolean> isPlayerLoadFinished
dictionary<string, boolean> IsNewRecord
dictionary<string, string> playerNames
boolean isMulti = false
boolean processFinished = false
Component playerTransform
Component playerStat
Entity player


--Methods--

[Client Only]
void OnBeginPlay()
{
	local player = _UserService.LocalPlayer
	self.player = player
	self.playerStat = player.PlayerStat
	self:AddPlayer(player)
}

[Server]
void AddPlayer(Entity player)
{
	local id = player.OwnerId
	self.livingPlayers[id] = player.TransformComponent
	
	local cnt = 0
	for k, v in pairs(self.livingPlayers) do
		cnt = cnt + 1
	end
	
	if cnt == 2 then
		self.isMulti = true
	end
	self.isPlayerLoadFinished[id] = false
	self.playerNames[id] = player.PlayerComponent.Nickname
}

[Server]
void FinishLoad(string id)
{
	self.isPlayerLoadFinished[id] = true
	for k, v in pairs(self.isPlayerLoadFinished) do
		if not v then return end
	end
	
	self.timeManager:StartTime()
	self.stageManager:Init()
	self.skillManager:Start()
}

[Server]
void RemovePlayer(string id)
{
	self.livingPlayers[id] = nil
	
	local cnt = 0
	for k, v in pairs(self.livingPlayers) do
		cnt = cnt + 1
	end
	
	if cnt == 0 then
		self:OnGameFinished(false)
	end
}

[Server Only]
void OnGameFinished(boolean clear)
{
	if self.processFinished then return end
	self.processFinished = true
	
	_TimerService:ClearTimer(self.timeManager.timeTimer)
	_TimerService:ClearTimer(self.stageManager.stageTimer)
	self.spawnManager:ClearSpawns()
	
	if clear then self.timeManager.lastStage = 30 end
	
	if not self.isMulti then
		for k, v in pairs(self.playerNames) do
			local stage = math.floor(self.timeManager.lastStage)
			if stage == 0 then break end
			local time = math.floor(self.timeManager.lastStageUpTime)
			_DBLogic:ManageRecord(k, v, stage, time)
		end
	end
	
	local stage = self.timeManager.lastStage
	stage = math.floor(stage)
	
	local time = self.timeManager.lastStageUpTime
	time = math.floor(time)
	
	local meso = 25 * 1.05 ^ stage + stage * stage - 3 * stage - 20
	meso = math.floor(meso)
	
	self:OnGameFinishedClient(stage, time, meso, clear)
}

[Client]
void OnGameFinishedClient(number stage, number time, number meso, boolean clear)
{
	local id = self.player.OwnerId
	local isNewRecord = self.IsNewRecord[id]
	local level = self.playerStat.level
	
	self:GetMeso(id, meso)
	
	self.resultManager:ShowResult(isNewRecord, level, stage, time, meso, clear)
}

[Server]
void GetMeso(string id, number meso)
{
	log("Add Meso +",meso)
	local oldMeso = _DBLogic:LoadMeso(id)
	local newMeso = oldMeso + meso
	newMeso = math.floor(newMeso)
	
	_DBLogic:SaveMeso(id, newMeso)
}


--Events--

[Default]
HandleUserLeaveEvent(UserLeaveEvent event)
{
	local UserId = event.UserId
	self:RemovePlayer(UserId)
}


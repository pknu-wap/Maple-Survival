--Properties--

Component textWaitInfo
Component textMatchLog
Entity matchButton
Entity matchCancelButton
Entity singleButton


--Methods--

[Client Only]
void OnBeginPlay()
{
	if _InstanceMapService:IsInstanceRoom() then return end
	
	self._T.textWaitInfoText = self.textWaitInfo.Text
	self._T.IsReadyWaiting = false
	
	self._T.onClickMatchButton = self.matchButton:ConnectEvent(ButtonClickEvent,function()self:OnClickReadyBtn(true)end)
	self._T.onClickMatchCancelButton = self.matchCancelButton:ConnectEvent(ButtonClickEvent,function()self:OnClickReadyBtn(false)end)
	self._T.onClickSingleButton = self.singleButton:ConnectEvent(ButtonClickEvent, function() self:OnClickSingleBtn() end)
	self.textMatchLog.Text = ""
	self.textMatchLog.Enable = false
	self.Entity.Enable = not _MatchLogic.isEventMatchType
	
}

[Client Only]
void OnClickReadyBtn(boolean ready)
{
	if self._T.IsReadyWaiting == true then
		--서버 응답 대기중입니다
		return
	end
	self._T.IsReadyWaiting = true
	_UserService.LocalPlayer.PlayerMatch:SetReady(ready)
}

[Client]
void OnResultReady(boolean ready)
{
	self._T.IsReadyWaiting = false
	self.matchButton.Enable = not ready
	self.matchCancelButton.Enable = ready
}

[Client]
void OnClickSingleBtn()
{
	local id = _UserService.LocalPlayer.Name
	_MatchLogic:SinglePlay(id)
}

[Client Only]
void OnEndPlay()
{
	self.matchButton:DisconnectEvent(ButtonClickEvent,self._T.onClickMatchButton)
	self.matchCancelButton:DisconnectEvent(ButtonClickEvent,self._T.onClickMatchCancelButton)
	self.singleButton:DisconnectEvent(ButtonClickEvent,self._T.onClickSingleButton)
}


--Events--

[Client Only]
HandleMatchJoin(MatchReadyEvent event)
{
	-- Parameters
	local playerId = event.PlayerId
	local isReady = event.IsReady
	local playerCnt = event.PlayerCount
	local matchState = event.MatchState
	--------------------------------------------------------
	if _UserService.LocalPlayer.OwnerId == playerId then
		self:OnResultReady(isReady)
	end
	self.textWaitInfo.Text = string.format(self._T.textWaitInfoText, tostring(playerCnt))
}

[Client Only]
HandleMatchLog(MatchLogEvent event)
{
	-- Parameters
	local log = event.Log
	--------------------------------------------------------
	self.textMatchLog.Text = log
	self.textMatchLog.Enable = not _UtilLogic:IsNilorEmptyString(log)
}

[Client Only]
HandleMatchState(MatchStateEvent event)
{
	-- Parameters
	local matchState = event.MatchState
	--------------------------------------------------------
	if _MatchLogic.isEventMatchType then
		if matchState == _MatchEnum.NONE then	
			self:OnClickReadyBtn(false)
			self.Entity.Enable = false
		elseif matchState == _MatchEnum.WAIT then
			self.Entity.Enable = true
		end
	end
	
}

[Default]
HandleKeyDownEvent(KeyDownEvent event)
{
	local key = event.key
	if key == KeyboardKey.Escape then
		self.Entity.Visible = false
	end
}


--Properties--

Entity uiHp
Component timeManager
Component playerManager


--Methods--

[Server]
void Clear()
{
	_TimerService:SetTimerOnce(function()
		self.timeManager.lastStageUpTime = self.timeManager.time
		self.playerManager:OnGameFinished(true) end,
	1.2)
}


--Events--

[Default]
HandleSpriteAnimPlayerEndFrameEvent(SpriteAnimPlayerEndFrameEvent event)
{
	self.Entity.Visible = false
	self.uiHp.Visible = false
	
	self:Clear()
}


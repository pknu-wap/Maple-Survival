--Properties--

number hitCnt = 0


--Methods--

[Client Only]
void Play()
{
	local data = self.skillManager.skillDatas[self.idx]
	local level = data.level
	local playTime = data.time[level]
	_TimerService:SetTimerOnce(function() self.Entity.Enable = false end, playTime)
	
	__base:Play()
}


--Events--

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	self.hitCnt = self.hitCnt + 1
	self.Entity.TriggerComponent.Enable = (self.hitCnt % 4 == 0)
}


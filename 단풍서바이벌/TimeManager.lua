--Properties--

Component ui
number time = 0
number startTime = 0
integer timeTimer = 0
number lastStageUpTime = 0
number lastStage = 0


--Methods--

[Server Only]
void StartTime()
{
	self.startTime = _UtilLogic.ServerElapsedSeconds
	
	self:UpdateTime()
}

[Server Only]
void UpdateTime()
{
	self.time = _UtilLogic.ServerElapsedSeconds - self.startTime
	self:UpdateUI(self.time)
	
	self.timeTimer = _TimerService:SetTimerOnce(function() self:UpdateTime() end, 1)
}

[Client]
void UpdateUI(number time)
{
	local min = time / 60
	local sec = time % 60
	self.ui.Text = string.format("%02d:%02d", tostring(min), tostring(sec))
}

[Server Only]
void RecordLastStageUp(number stage)
{
	self.lastStage = stage 
	self.lastStageUpTime = self.time
}


--Events--


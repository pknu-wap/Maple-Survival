--Properties--



--Methods--

[Client Only]
void Play()
{
	__base:Play()
	
	self.trigger.Enable = true
	_TimerService:SetTimerOnce(function() self.trigger.Enable = false end, 1)
}


--Events--


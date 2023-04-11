--Properties--

Entity effect
Entity effect2


--Methods--

[Client Only]
void Play()
{
	__base:Play()
	
	self.effect.Enable = true
	
	_TimerService:SetTimerOnce(function()
		self.effect2.Enable = true
		_TimerService:SetTimerOnce(function() self:Trig() end, 1.6)
	end, 1.2)
	
	
}

[Client Only]
void Trig()
{
	self.trigger.Enable = true
	_TimerService:SetTimerOnce(function() self.trigger.Enable = false end, 0.1)
}


--Events--


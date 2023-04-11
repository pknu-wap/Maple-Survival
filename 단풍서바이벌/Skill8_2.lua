--Properties--



--Methods--


--Events--

[Default]
HandleTriggerEnterEvent(TriggerEnterEvent event)
{
	local monster = event.TriggerBodyEntity.Monster
	monster:AddHp(-self.dmg)
	self:End()
}


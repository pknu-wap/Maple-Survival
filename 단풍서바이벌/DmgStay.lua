--Properties--

number dmg = 0


--Methods--


--Events--

[Default]
HandleTriggerStayEvent(TriggerStayEvent event)
{
	if self.dmg == 0 then return end
	
	local playerStat = event.TriggerBodyEntity.PlayerStat
	
	if not playerStat then return end
	if playerStat.isInvincible then return end
	
	playerStat:AddHp(-self.dmg)
}


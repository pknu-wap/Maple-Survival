--Properties--

number time = 0


--Methods--

[Client Only]
void Play()
{
	local data = self.skillManager.skillDatas[self.idx]
	local level = data.level
	self.time = data.time[level] or data.time[1]
	__base:Play()
}


--Events--

[Default]
HandleTriggerEnterEvent(TriggerEnterEvent event)
{
	local monster = event.TriggerBodyEntity.Monster
	monster:AddHp(-self.dmg)
	monster:Bind(self.time)
}


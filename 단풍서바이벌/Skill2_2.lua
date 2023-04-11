--Properties--



--Methods--

[Client Only]
void Play()
{
	self:MoveToEnemy(true)
	
	__base:Play()
}

[Client Only]
void SetDmg()
{
	local data = self.skillManager.skillDatas[self.idx]
	local level = data.level
	self.dmg = data.dmg2[level] or data.dmg2[1]
}


--Events--


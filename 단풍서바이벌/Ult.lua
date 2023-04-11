--Properties--

Entity ultParent


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	self:SetDmg()
}

[Client Only]
void SetDmg()
{
	self.dmg = self.skillManager.skillDatas[self.idx].dmg or 0
}

[Client Only]
void Play()
{
	self:PlaySound()
}

[Client Only]
void End()
{
	self.Entity.Enable = false
}


--Events--


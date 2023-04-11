--Properties--

number hitCnt = 0


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	self.Entity.TransformComponent.Position = self.v3
}

[Client Only]
void OnUpgrade()
{
	self:SetDmg()
}


--Events--

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	if self.trigger == nil then return end
	
	self.hitCnt = self.hitCnt + 1
	self.trigger.Enable = (self.hitCnt % 3 == 0)
}


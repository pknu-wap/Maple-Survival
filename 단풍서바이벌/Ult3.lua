--Properties--

string spotlightModel = "model://8c2139ff-004c-4fb9-b9e4-c8347b4e5441"
number hitCnt = 0


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	local entity = self.Entity
	entity:AttachTo(self.localPlayer)
	entity.TransformComponent.Position = Vector3(0, 4, 0)
}


--Events--

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	if self.trigger == nil then return end
	
	self.hitCnt = self.hitCnt + 1
	self.trigger.Enable = (self.hitCnt % 4 == 0)
}


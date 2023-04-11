--Properties--

Component trans


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	entity:AttachTo(self.localPlayer)
	
	local trans = entity.TransformComponent
	self.trans = trans
	trans.Position = self.v3
}


--Events--


--Properties--



--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	entity:AttachTo(self.localPlayer)
	entity.TransformComponent.Position = Vector3(0, 0, 1)
}


--Events--


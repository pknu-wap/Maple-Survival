--Properties--



--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	entity:AttachTo(_UserService.LocalPlayer)
	entity.TransformComponent.Position = Vector3.zero
}


--Events--


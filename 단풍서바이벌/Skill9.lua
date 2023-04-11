--Properties--

Component transform


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	entity:Detach()
	self.transform = entity.TransformComponent
}

[Client Only]
void Play()
{
	local selfPos = self.localPlayer.TransformComponent.WorldPosition
	local targetPos = _MathLogic:GerNearEnemyV3(selfPos, self.maxRange)
	self.Entity.TransformComponent.WorldPosition = targetPos
	
	__base:Play()
}


--Events--


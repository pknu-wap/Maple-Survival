--Properties--

number repeatCnt = 36
array<Entity> spawns
number angle = 0
Component trans


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	entity:AttachTo(self.localPlayer)
	entity.TransformComponent.Position = Vector3.zero
	self.trans = entity.TransformComponent
	
	for i = 1, self.repeatCnt do
		local spawn = _SpawnService:SpawnByModelId(self.followupModel, "Ult2", Vector3.zero, self.map)
		spawn.Enable = false
		self.spawns[i] = spawn
	end
}

[Client Only]
void Play()
{
	__base:Play()
	
	local angle = 0
	
	for k, v in pairs(self.spawns) do
		v.TransformComponent.WorldZRotation = angle
	
		local fk = v.KinematicbodyComponent
		fk.MoveVelocity = _MathLogic:AngleToVector2(angle) * 5
		fk:SetPosition(self.trans.WorldPosition:ToVector2())
	
		v.Enable = true
	
		angle = angle + 10
	end
}


--Events--


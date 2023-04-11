--Properties--

Entity effect
array<Entity> swords
number time = 0


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	self.time = self.skillManager.skillDatas[self.idx].time
	
	local entity = self.Entity
	entity:AttachTo(self.localPlayer)
	entity.TransformComponent.Position = Vector3(0, 1.5, 1)
	
	self:SpawnSword(7)
}

[Client Only]
void Play()
{
	__base:Play()
	
	self.effect.Enable = true
	self.effect.Visible = true
	
	for k, v in ipairs(self.swords) do
		v.Enable = true
		v.KinematicbodyComponent:SetPosition(Vector2.zero)
	end
	
	_TimerService:SetTimerOnce(function() self:End() end, self.time)
}

[Client Only]
void End()
{
	self.Entity.Enable = false
	for k, v in ipairs(self.swords) do
		v.KinematicbodyComponent.MoveVelocity = Vector2.zero
		v.Enable = false
	end
}

[Client Only]
void SpawnSword(number idx)
{
	if idx == 0 then
		for k, v in ipairs(self.swords) do
			v.TweenCircularComponent.Speed = 100
			v.SpriteRendererComponent.Enable = true
		end
		return
	end
	
	local sword = _SpawnService:SpawnByModelId(self.followupModel, "Sword", Vector3.zero, self.localPlayer)
	self.swords[idx] = sword
	
	_TimerService:SetTimerOnce(function() self:SpawnSword(idx - 1) end, 0.1)
}


--Events--


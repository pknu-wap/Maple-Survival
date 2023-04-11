--Properties--

Component trans
Component localTrans
Entity spawn
Component sprite


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	self.trans = entity.TransformComponent
	self.sprite = entity.SpriteRendererComponent
	self.localTrans = self.localPlayer.TransformComponent
}

[Client Only]
void Play()
{
	local angle = _UtilLogic:RandomIntegerRange(0, 359)
	self.trans.ZRotation = angle
	self.sprite.FlipY = (angle > 90 and angle < 270)
	self.v3 = _MathLogic:AngleToVector2(angle):ToVector3() * 4.5 + Vector3(4.2, 0.3, 0)
	
	__base:Play()
}

[Client Only]
void Followup()
{
	self.spawn = self.spawn or
		_SpawnService:SpawnByModelId(self.followupModel, "Followup", Vector3.zero, self.map)
	
	self.spawn.TransformComponent.Position = self.localTrans.WorldPosition + self.v3
	
	self.spawn.Enable = true
	self.spawn.Skill:Play()
}


--Events--


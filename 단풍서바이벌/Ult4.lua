--Properties--

Component trans
Component kine
Component sprite


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	self.trans = entity.TransformComponent
	self.kine = entity.KinematicbodyComponent
	self.sprite = entity.SpriteRendererComponent
}

[Client Only]
void Play()
{
	local angle = _MathLogic:GetPlayerAngle()
	angle = (angle + 180) % 360
	self.trans.ZRotation = angle
	self.sprite.FlipY = (angle > 90 and angle < 270)
	
	self.kine.MoveVelocity = _MathLogic:AngleToVector2(angle) * self.moveSpd
	self.kine:SetWorldPosition(self.localPlayer.TransformComponent.Position:ToVector2())
	
	__base:Play()
}


--Events--


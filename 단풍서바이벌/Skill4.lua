--Properties--

Component trans
Component sprite


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	self.trans = entity.TransformComponent
	self.sprite = entity.SpriteRendererComponent
}

[Client Only]
void Play()
{
	local angle = _MathLogic:GetPlayerAngle()
	angle = (angle + 180) % 360
	self.trans.ZRotation = angle
	self.sprite.FlipY = (angle > 90 and angle < 270)
	
	__base:Play()
}


--Events--


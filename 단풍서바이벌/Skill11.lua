--Properties--

Component sprite


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	self.sprite = self.Entity.SpriteRendererComponent
}

[Client Only]
void Play()
{
	self.sprite.FlipX = _MathLogic:IsPlayerLookingRight()
	
	__base:Play()
}


--Events--


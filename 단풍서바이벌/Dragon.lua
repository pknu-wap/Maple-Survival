--Properties--

Entity ui
Component trans
Component kine
Component sprite
Entity breathParent
array<Vector2> pos
table breaths
string idleSprite = "e435268a9da54026be3342347fb258d6"
string breathSprite = "88a956ff992b482db0d4336a36a10eb4"
string breathParentModel = "model://d23b0644-a93c-4696-adfd-97498256cecd"
boolean isBreathMode = false
integer rand = 0


--Methods--

[Server Only]
void OnBeginPlay()
{
	self.pos[1] = Vector2(-8, 5)
	self.pos[2] = Vector2(-8, -1.5)
	self.pos[3] = Vector2(9.25, 5)
	self.pos[4] = Vector2(9.25, -1.5)
	
	local entity = self.Entity
	self.trans = entity.TransformComponent
	self.kine = entity.KinematicbodyComponent
	self.sprite = entity.SpriteRendererComponent
	
	local breathParent = _SpawnService:SpawnByModelId(self.breathParentModel, "BreathParent", Vector3(-4, -1.1, 0), entity)
	self.breaths = breathParent.BreathParent.breaths
	self.breathParent = breathParent
	breathParent.Enable = false
}

[Server]
void Play()
{
	self.rand = _UtilLogic:RandomIntegerRange(1, 4)
	self.trans.Scale.x = (self.rand == 1 or self.rand == 2) and -1 or 1
	self.kine:SetWorldPosition(self.pos[self.rand])
	
	self:SetUIVisible(true)
	
	_TimerService:SetTimerOnce(function()
		self:SetUIVisible(false)
		self:ChangeBreathMode(true)
	end, 2)
}

[Server]
void ChangeBreathMode(boolean breath)
{
	local sprite = self.sprite
	
	if breath then
		self.isBreathMode = true
		sprite.SpriteRUID = self.breathSprite
	else
		self.isBreathMode = false
		sprite.SpriteRUID = self.idleSprite
		self.kine.MoveVelocity = Vector2.zero
		self.Entity.Enable = false
	end
}

[Server]
boolean IsBreathMode()
{
	return self.isBreathMode
}

[Server]
void SpawnBreath()
{
	self.breathParent.Enable = true
	for k, v in ipairs(self.breaths) do
		v.Enable = true
	end
	self.kine.MoveVelocity = (self.rand == 1 or self.rand == 3) and Vector2(0, -1.6) or Vector2(0, 1.6)
}

[Server]
void RemoveBreath()
{
	self.breathParent.Enable = false
	for k, v in ipairs(self.breaths) do
		v.Enable = false
	end
}

[Client]
void SetUIVisible(boolean visible)
{
	self.ui.Enable = visible
	self.ui.Visible = visible
}


--Events--

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	if not self:IsBreathMode() then return end
	
	local frame = event.FrameIndex
	
	if frame == 10 then
		self:SpawnBreath()
	elseif event.FrameIndex == 33 then
		self:RemoveBreath()
	elseif event.FrameIndex == 35 then
		self:ChangeBreathMode(false)
	end
}


--Properties--

Entity map
Entity uiHp
Entity nova
Component sound
Component slider
array<Entity> pooledButterflys
array<Entity> fairydusts
array<Entity> lasers
array<Vector2> pos
string bgm = "ba829ea56b4c48c6862b3ba04ffabd91"
string dragonModel = "model://c68550c5-924b-4ebe-a5c7-33439930d257"
string butterflyModel = "model://b2cfa4fa-e41e-46f8-abf3-c42d8e4db69e"
string laserModel = "model://f1734b05-e10a-4c69-bb57-8021547f15ca"
string standMotion = "7d6915d162074fbdba004f4a5e7bbafd"
string dragonMotion = "f4c436458e964829ac2638883965e5c9"
string butterflyMotion = "73223623210a4c00b0eb46586b3444ef"
string fairydustModel = "model://a270b07f-6d75-4a5e-95d7-2828f5544f31"
string dieModel = "model://8ab2ab0d-86ae-496d-9c7d-bae9649a9ccd"
string chaseReadyMotion = "b873d999b1e848f19b78e0a3dd154a96"
string chaseMotion = "7d6915d162074fbdba004f4a5e7bbafd"
string chaseEndMotion = "ea2f7c0f10c84703ae8d1d3fb61faf30"
string fairydustReadyMotion = "e4a63122686b407ca0e73f5dbecabeb5"
string laserReadyMotion = "791e1fa0e6d047c5938807018a3cd914"
number fairydustSpd = 2.9
number maxHp = 10000000000000000
integer mode = 0
integer spawnMode = 0
integer standMode = 1
integer dragonMode = 2
integer butterflyMode = 3
integer chaseReadyMode = 4
integer chaseMode = 5
integer chaseEndMode = 6
integer fairydustReadyMode = 7
integer fairydustMode = 8
integer laserReadyMode = 9
integer laserMode = 10
Entity dragon
Vector2 pastPlayerPos = nil
boolean isDead = false
integer maxLaser = 30
Entity laserMsg


--Methods--

[Server Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	self.hp = self.maxHp
	
	self.dragon = _SpawnService:SpawnByModelId(self.dragonModel, "Dragon", Vector3.zero, self.map)
	self.dragon.Enable = false
	
	for i = 1, 6 do
		local fairydust = _SpawnService:SpawnByModelId(self.fairydustModel, "Fairydust", Vector3.zero, self.map)
		fairydust.Enable = false
		self.fairydusts[i] = fairydust
	end
	
	self.trigger = self.Entity.TriggerComponent
	
	self:SetLasers()
	
	_TimerService:SetTimerOnce(function() self.nova.Enable = true end, 1)
	
	self:ChangeBgm()
	self:MakeUIVisible()
	self:ZoomLucid()
}

[Client]
void ChangeBgm()
{
	self.sound:Stop()
	self.sound.AudioClipRUID = self.bgm
	self.sound:Play()
}

[Client]
void MakeUIVisible()
{
	self.uiHp.Enable = true
	self.uiHp.Visible = true
}

[Client]
void ZoomLucid()
{
	local originCam = _CameraService:GetCurrentCameraComponent()
	_CameraService:SwitchCameraTo(self.Entity.CameraComponent)
	local lucidCam = _CameraService:GetCurrentCameraComponent()
	
	lucidCam:SetZoomTo(200, 2)
	
	_TimerService:SetTimerOnce(function()
		lucidCam:SetZoomTo(100, 2)
		_CameraService.TransitionBlendTime = 1
		_CameraService:SwitchCameraTo(originCam)
	end, 2)
}

[Server]
void ChangeMode(number mode)
{
	if self.mode == mode then return end
	
	self.mode = mode
	
	if mode == self.standMode then
		
		self:ChangeSprite(self.standMotion)
		self.sprite.Color.a = 1
		self.sprite.FlipX = false
		self.trigger.Enable = true
		self.kine:SetWorldPosition(Vector2.zero)
		
	elseif mode == self.dragonMode then
		
		self:ChangeSprite(self.dragonMotion)
		_TimerService:SetTimerOnce(function() self:SpawnDragon() end, 1)
		
	elseif mode == self.butterflyMode then
		
		self:ChangeSprite(self.butterflyMotion)
		_TimerService:SetTimerOnce(function() self:SpawnButterfly() end, 0.5)
		
	elseif mode == self.chaseReadyMode then
		
		self:ChangeSprite(self.chaseReadyMotion)
		self.pastPlayerPos = _MathLogic:GetNearPlayerV2(Vector2.zero)
		
	elseif mode == self.chaseMode then
		
		self:ChangeSprite(self.chaseMotion)
		self.sprite.Color = Color.FromHexCode("#ff0000")
		self:StartChase()
		
	elseif mode == self.chaseEndMode then
		
		self:ChangeSprite(self.chaseEndMotion)
		
	elseif mode == self.fairydustReadyMode then
		
		self:ChangeSprite(self.fairydustReadyMotion)
		
	elseif mode == self.fairydustMode then
		
		self:SpawnFairydust()
		
	elseif mode == self.laserReadyMode then
		
		self:ChangeSprite(self.laserReadyMotion)
		self.trigger.Enable = false
		self:SetLaserMsgEnable(true)
		
	elseif mode == self.laserMode then
		
		self.sprite.Color.a = 0
		
	end
}

[Server]
void ChangeSprite(string sprite)
{
	self.sprite.SpriteRUID = sprite
}

[Server]
void SpawnDragon()
{
	self.dragon.Enable = true
	self.dragon.Dragon:Play()
}

[Server]
void SpawnButterfly()
{
	local x = _UtilLogic:RandomDouble() * 10 - 5
	local y = _UtilLogic:RandomDouble() * 6 - 3
	local butterfly = self:GetPooledButterfly()
	butterfly.Enable = true
	butterfly.TransformComponent.WorldPosition = Vector3(x, y, 0)
	butterfly.Butterfly:Play()
}

[Server Only]
Entity GetPooledButterfly()
{
	local butterfly = self.pooledButterflys[1]
	if butterfly then
		table.remove(self.pooledButterflys, 1)
		return butterfly
	end
	
	return self:CreateNewButterfly()
}

[Server Only]
Entity CreateNewButterfly()
{
	return _SpawnService:SpawnByModelId(self.butterflyModel, "Butterfly", Vector3.zero, self.map)
}

[Server]
void DisableButterfly(Entity butterfly)
{
	butterfly.Enable = false
	table.insert(self.pooledButterflys, butterfly)
}

[Server]
void AddHp(number hp)
{
	self.hp = self.hp + hp
	self:UpdateUI(self.hp)
	
	local pos = self.trans.Position:ToVector2()
	_DamageSkinService:Play(self.emptyTransform, self.damageSkin, 0.1, {-hp}, DamageSkinTweenType.Default, false, pos)
	
	if self.hp <= 0 then
		self:Die()
	end
}

[Client]
void UpdateUI(number hp)
{
	self.slider.Value = hp / self.maxHp
}

[Server Only]
void Die()
{
	if self.isDead then return end
	
	self.isDead = true
	self.Entity.Enable = false
	
	_SpawnService:SpawnByModelId(self.dieModel, "LucidDie", Vector3(-1.02, -5.58, 0), self.map)
}

[Server]
void Bind(number time)
{
	
}

[Server Only]
void StartChase()
{
	self:pastPlayerChase()
	
	_TimerService:SetTimerOnce(function()
		_TimerService:ClearTimer(self.chaseTimer)
		self.kine.MoveVelocity = Vector2.zero
		self.sprite.Color = Color.FromHexCode("#ffffff")
		self:ChangeMode(self.chaseEndMode)
	end, 10)
}

[Server Only]
void pastPlayerChase()
{
	local selfPos = self.trans.WorldPosition:ToVector2()
	local deltaPos = self.pastPlayerPos - selfPos
	local move = Vector2.Normalize(deltaPos) * self.spd
	self.sprite.FlipX = (move.x > 0)
	self.kine.MoveVelocity = move
	
	self.pastPlayerPos = _MathLogic:GetNearPlayerV2(selfPos)
	self.chaseTimer = _TimerService:SetTimerOnce(function() self:pastPlayerChase() end, 1)
}

[Server Only]
void SpawnFairydust()
{
	local angle = _UtilLogic:RandomIntegerRange(0, 359)
	for k, v in ipairs(self.fairydusts) do
		v.Enable = true
		v.TransformComponent.WorldZRotation = angle
		v.KinematicbodyComponent.MoveVelocity = _MathLogic:AngleToVector2(angle) * self.fairydustSpd
		angle = angle + 60
	end
	
	_TimerService:SetTimerOnce(function()
		for k, v in ipairs(self.fairydusts) do
			v.KinematicbodyComponent:SetWorldPosition(Vector2.zero)
			v.KinematicbodyComponent.MoveVelocity = Vector2.zero
			v.Enable = false
		end
	end, 5)
}

[Client]
void SpawnLaser(number idx, integer angle)
{
	if idx == 0 then
		_TimerService:SetTimerOnce(function() self:ChangeMode(self.standMode) end, 3)
		return
	end
	
	for i = idx, idx - 1, -1 do
		local laser = self.lasers[i]
		laser.Enable = true
	
		local trans = laser.TransformComponent
		trans.WorldPosition = _UserService.LocalPlayer.TransformComponent.WorldPosition
		trans.WorldZRotation = angle
		angle = angle + 45
	end
	
	_TimerService:SetTimerOnce(function() self:SpawnLaser(idx - 2, angle + 30) end, 0.5)
}

[Client]
void SetLasers()
{
	for i = 1, self.maxLaser do
		local laser = _SpawnService:SpawnByModelId(self.laserModel, "Fairydust", Vector3.zero, self.map)
		laser.Enable = false
		self.lasers[i] = laser
	end
}

[Client]
void SetLaserMsgEnable(boolean enable)
{
	self.laserMsg.Enable = enable
	self.laserMsg.Visible = enable
}


--Events--

[Default]
HandleKeyDownEvent(KeyDownEvent event)
{
	--디버그용
	local key = event.key
	
	if key == KeyboardKey.Alpha5 then
		self:ChangeMode(self.dragonMode)
	elseif key == KeyboardKey.Alpha6 then
		self:ChangeMode(self.butterflyMode)
	elseif key == KeyboardKey.Alpha7 then
		self:ChangeMode(self.chaseReadyMode)
	elseif key == KeyboardKey.Alpha8 then
		self:ChangeMode(self.fairydustReadyMode)
	elseif key == KeyboardKey.Alpha9 then
		self:ChangeMode(self.laserReadyMode)
	elseif key == KeyboardKey.Q then
		self:AddHp(-1000000000000000)
	end
	
	
}

[Default]
HandleSpriteAnimPlayerEndFrameEvent(SpriteAnimPlayerEndFrameEvent event)
{
	local mode = {self.spawnMode, self.dragonMode, self.butterflyMode, self.chaseEndMode, self.fairydustMode}
	
	for k, v in ipairs(mode) do
		if self.mode == v then
			self:ChangeMode(self.standMode)
			return
		end
	end
	
	if self.mode == self.laserReadyMode then
		self:ChangeMode(self.laserMode)
	end
}

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	local FrameIndex = event.FrameIndex
	
	if self.mode == self.chaseReadyMode and FrameIndex == 29 then
		
		self:ChangeMode(self.chaseMode)
		
	elseif self.mode == self.fairydustReadyMode and FrameIndex == 20 then
		
		self:ChangeMode(self.fairydustMode)
		
	elseif self.mode == self.laserReadyMode and FrameIndex == 26 then
		
		local angle = _UtilLogic:RandomIntegerRange(0, 359)
		self:SpawnLaser(self.maxLaser, angle)
		self:SetLaserMsgEnable(false)
		
	end
}


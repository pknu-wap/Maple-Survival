--Properties--

Entity emptyTransform
Component playerManager
Component spawnManager
Component itemManager
string gem = "model://b70b9fa7-cc35-437a-ac4d-7f36d71147ab"
string damageSkin = "3271c3e79bf04ecba9a107d55495970d"
string hitColor = "#FF5555"
string bind = "dc5264c64b7449dab99c633406de9e89"
number bindEffect = 0
Component trans
Component trigger
Component kine
Component sprite
number hp = 0
number spd = 0
number exp = 0
integer hitTimer = 0
integer chaseTimer = 0
boolean canMove = true


--Methods--

[Server Only]
void OnBeginPlay()
{
	local entity = self.Entity
	self.trans = entity.TransformComponent
	self.trigger = entity.TriggerComponent
	self.kine = entity.KinematicbodyComponent
	self.sprite = entity.SpriteRendererComponent
}

[Server Only]
void SetStat(Vector2 pos, string img, Vector2 offset, Vector2 size, number hp, number spd, number exp, number dmg)
{
	self.kine:SetPosition(pos)
	self.sprite.SpriteRUID = img
	self.trigger.ColliderOffset = offset
	self.trigger.BoxSize = size
	
	self.hp = hp
	self.spd = spd
	self.exp = exp
	self:SetStatClient(dmg)
	
	self:Chase()
}

[Client]
void SetStatClient(number dmg)
{
	self.dmg = dmg
}

[Server Only]
void Chase()
{
	if not self.canMove then return end
	
	local selfPos = self.trans.WorldPosition:ToVector2()
	local playerPos = _MathLogic:GetNearPlayerV2(selfPos)
	local deltaPos = playerPos - selfPos
	local move = Vector2.Normalize(deltaPos) * self.spd
	self.sprite.FlipX = (move.x > 0)
	self.kine.MoveVelocity = move
	
	self.chaseTimer = _TimerService:SetTimerOnce(function() self:Chase() end, 0.5)
}

[Server]
void AddHp(number hp)
{
	self.hp = self.hp + hp
	
	local pos = self.trans.Position:ToVector2()
	_DamageSkinService:Play(self.emptyTransform, self.damageSkin, 0.1, {-hp}, DamageSkinTweenType.Default, false, pos)
	
	if self.hp <= 0 then
		self:Die()
	end
	
	_TimerService:ClearTimer(self.hitTimer)
	self:PlayHitEffect()
}

[Server Only]
void Die()
{
	_TimerService:ClearTimer(self.chaseTimer)
	_TimerService:ClearTimer(self.hitTimer)
	self.hitTimer = 0
	
	self.canMove = true
	_EffectService:RemoveEffect(self.bindEffect)
	
	self.kine.MoveVelocity = Vector2.zero
	self.sprite.PlayRate = 1
	self.sprite.Color = Color.white
	self.spawnManager:DisableMob(self.Entity)
	
	self.itemManager:AddCnt(self.Entity.TransformComponent.Position)
}

[Server Only]
void PlayHitEffect()
{
	self.sprite.Color = Color.FromHexCode(self.hitColor)
	
	self.hitTimer = _TimerService:SetTimerOnce(function()
		self.sprite.Color = Color.white
		self.hitTimer = 0
	end, 0.35)
}

[Server]
void Bind(number time)
{
	self.canMove = false
	_TimerService:ClearTimer(self.chaseTimer)
	self.kine.MoveVelocity = Vector2.zero
	
	self.bindEffect = _EffectService:PlayEffectAttached(self.bind, self.Entity, Vector3.zero, 0 , Vector3.one, true)
	
	_TimerService:SetTimerOnce(function()
		self.canMove = true
		_EffectService:RemoveEffect(self.bindEffect)
		self:Chase()
	end, time)
}


--Events--


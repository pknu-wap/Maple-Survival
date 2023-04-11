--Properties--

Component itemManager
Component playerManager
Component skillManager
Component upgradeManager
Component ultManager
Component nameTxt
Component levelTxt
Component hpSlider
Component expSlider
boolean isInvincible = false
string levelUpEffect = "model://a8c29346-236a-4d18-9f36-e9d91d4af34b"
string ghostState = "GHOST"
integer level = 1
number hp = 2000
number maxHp = 2000
number exp = 0
integer maxExp = 30
Entity localPlayer
Component controller
Component state
Entity effect
integer up = 0
integer down = 0
integer left = 0
integer right = 0
integer hitTimer = 0
string material = "material://1e03fe4e-818c-4d51-99f8-0ce7bac4ee57"
Component sprite
table shopData


--Methods--

[Client Only]
void OnBeginPlay()
{
	
	local entity = self.Entity
	self.localPlayer = _UserService.LocalPlayer
	if entity ~= self.localPlayer then return end
	
	self.controller = entity.PlayerControllerComponent
	self:RemoveKeySet()
	
	if not _InstanceMapService:IsInstanceRoom() then
		local kine = entity.KinematicbodyComponent
		kine.SpeedFactor = Vector2(2, 2)
		kine.Enable = true
		return
	end
	
	self.effect = _SpawnService:SpawnByModelId(self.levelUpEffect, "Effect", Vector3(0, 1, 100), self.Entity)
	self.effect.Enable = false
	
	self:UpdateName()
	self:AddState()
}

[Client Only]
void RemoveKeySet()
{
	local dontRemove = {"UnderlyingSystemType", "__CastFrom", "CastFrom", "UpArrow", "DownArrow", "LeftArrow", "RightArrow"}
	
	for k, v in pairs(KeyboardKey) do
		for k2, v2 in pairs(dontRemove) do
			if k == v2 then goto CONTINUE end
		end
		self.controller:RemoveActionKey(v)
		
		::CONTINUE::
	end
}

[Server]
void AddState()
{
	self.Entity.StateComponent:AddState(self.ghostState, GhostState)
}

[Client Only]
void AddExp(number exp)
{
	self.exp = self.exp + exp
	
	if self.exp >= self.maxExp then
		self.exp = self.exp - self.maxExp
		self.maxExp = self.maxExp + 20
		
		self:AddLevel(1)
		self.upgradeManager:OnLevelUp()
	end
	
	self:UpdateExp()
}

[Client Only]
void AddLevel(integer level)
{
	self.effect.Enable = true
	self.effect.LevelUpEffect:Play()
	
	self.level = self.level + level
	
	self:UpdateLevel()
}

[Client Only]
void AddHp(number hp)
{
	self.hp = self.hp + hp
	if self.hp > self.maxHp then
		self.hp = self.maxHp
	end
	
	self:UpdateHp()
	
	if hp > 0 then return end
	
	if self.hp <= 0 then
		self:Die()
	end
	
	self:PlayHitEffet()
}

[Client Only]
void Die()
{
	self.skillManager:RemoveSkills()
	self.ultManager:RemoveUlt()
	
	self:DieServer(self.localPlayer.PlayerComponent.UserId)
}

[Server]
void DieServer(string id)
{
	local entity = self.Entity
	
	entity.TriggerComponent.Enable = false
	entity.PlayerControllerComponent.Enable = false
	entity.StateComponent:ChangeState(self.ghostState)
	self.playerManager:RemovePlayer(id)
}

[Client Only]
void UpdateName()
{
	self.nameTxt.Text = self.Entity.PlayerComponent.Nickname
}

[Client Only]
void UpdateLevel()
{
	self.levelTxt.Text = "LV. "..tostring(self.level)
}

[Client Only]
void UpdateHp()
{
	self.hpSlider.Value = self.hp / self.maxHp
}

[Client Only]
void UpdateExp()
{
	self.expSlider.Value = self.exp / self.maxExp
}

[Server]
void PlayHitEffet()
{
	_TimerService:ClearTimer(self.hitTimer)
	
	self.Entity.AvatarRendererComponent:SetColor(1, 0.3, 0.3, 1)
	
	self.hitTimer = _TimerService:SetTimerOnce(function()
		self.Entity.AvatarRendererComponent:SetColor(1, 1, 1, 1)
	end, 0.35)
}


--Events--

[Default]
HandleTriggerEnterEvent(TriggerEnterEvent event)
{
	local TriggerBodyEntity = event.TriggerBodyEntity
	
	local item = TriggerBodyEntity.Item
	if item then
		local idx = item.idx
		self.itemManager:DisableItem(TriggerBodyEntity)
		if idx == 1 then --젬
			self:AddExp(11)
		elseif idx == 2 then --포션
			self:AddHp(150)
		end
	else
		local dmgOnce = TriggerBodyEntity.DmgOnce
		if dmgOnce == nil then return end
		self:AddHp(-dmgOnce.dmg)
	end
}

[Default]
HandleKeyDownEvent(KeyDownEvent event)
{
	if self.Entity ~= self.localPlayer then return end
	
	local key = event.key
	if key == KeyboardKey.UpArrow then
		self.up = 1
	elseif key == KeyboardKey.DownArrow then
		self.down = 1
	elseif key == KeyboardKey.LeftArrow then
		self.left = 1
	elseif key == KeyboardKey.RightArrow then
		self.right = 1
	end
}

[Default]
HandleKeyReleaseEvent(KeyReleaseEvent event)
{
	if self.Entity ~= self.localPlayer then return end
	
	local key = event.key
	if key == KeyboardKey.UpArrow then
		self.up = 0
	elseif key == KeyboardKey.DownArrow then
		self.down = 0
	elseif key == KeyboardKey.LeftArrow then
		self.left = 0
	elseif key == KeyboardKey.RightArrow then
		self.right = 0
	end
}


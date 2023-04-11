--Properties--

Entity map
Component skillManager
Entity localPlayer
Component soundComponent
Component trigger
Entity spawn
number idx = 0
number playCnt = 1
number hitFrame = 0
string followupModel = nil
Vector2 v2 = nil
Vector3 v3 = nil
number followupFrame = 0
number maxRange = 0
number moveSpd = 0
number dmg = 0
number cnt = 0
string loadDataSet = "Load"


--Methods--

[Client Only]
void OnBeginPlay()
{
	self.localPlayer = _UserService.LocalPlayer
	
	local entity = self.Entity
	self.soundComponent = entity.SoundComponent
	self.trigger = entity.TriggerComponent
}

[Client Only]
void Play()
{
	self:SetDmg()
	self:PlaySound()
}

[Client Only]
void SetDmg()
{
	local data = self.skillManager.skillDatas[self.idx]
	local level = data.level
	self.dmg = data.dmg[level] or data.dmg[1]
}

[Client Only]
void PlaySound()
{
	self.soundComponent:Play()
}

[Client Only]
void Followup()
{
	self.spawn = self.spawn or
		_SpawnService:SpawnByModelId(self.followupModel, "Followup", Vector3.zero, self.map)
	
	local kine = self.spawn.KinematicbodyComponent
	if kine then
		kine.MoveVelocity = Vector2.zero
		kine:SetPosition(self.Entity.TransformComponent.WorldPosition:ToVector2() + self.v2)
	else
		self.spawn.TransformComponent.Position = self.Entity.TransformComponent.WorldPosition + self.v3
	end
	
	self.spawn.Enable = true
	self.spawn.Skill:Play()
}

[Client Only]
void MoveToEnemy(boolean near)
{
	local selfPos = self.localPlayer.TransformComponent.WorldPosition
	local targetPos = nil
	if near then
		targetPos = _MathLogic:GerNearEnemyV3(selfPos, self.maxRange) or selfPos + Vector3.left
	else
		targetPos = _MathLogic:GerFarEnemyV3(selfPos, self.maxRange) or selfPos + Vector3.left
	end
	local deltaPos = targetPos - selfPos
	local move = Vector3.Normalize(deltaPos):ToVector2() * self.moveSpd
	self.Entity.KinematicbodyComponent.MoveVelocity = move
}

[Client Only]
void End()
{
	self.Entity.Enable = false
}

[Client Only]
void OnUpgrade()
{
	
}

[Client Only]
void AddToLoadTable()
{
	local dataSet = _DataService:GetTable(self.loadDataSet) 
	local json = dataSet:GetRow(1):GetItem("skills")
	local skills = _HttpService:JSONDecode(json)
	local sprite = self.Entity.SpriteRendererComponent.SpriteRUID
	table.insert(skills, sprite)
	local newJson = _HttpService:JSONEncode(skills)
	_EditorService:DataSetSetCell(self.loadDataSet, 1, "skills", newJson)
}


--Events--

[Default]
HandleSpriteAnimPlayerStartFrameEvent(SpriteAnimPlayerStartFrameEvent event)
{
	if self.playCnt == 0 then return end
	
	self.cnt = self.cnt + 1
	if self.cnt == self.playCnt + 1 then 
		self.cnt = 1
		self:End()
	end
}

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	if self.hitFrame == 0 then return end
	
	local FrameIndex = event.FrameIndex
	self.Entity.TriggerComponent.Enable = (FrameIndex == self.hitFrame)
}

[Default]
HandleSpriteAnimPlayerChangeFrameEvent2(SpriteAnimPlayerChangeFrameEvent event)
{
	if self.followupFrame == 0 then return end
	
	local FrameIndex = event.FrameIndex
	if FrameIndex == self.followupFrame then
		self:Followup()
	end
}

[Default]
HandleTriggerEnterEvent(TriggerEnterEvent event)
{
	local entity = event.TriggerBodyEntity
	
	local monster = entity.Monster
	if monster then
		if self.dmg == 0 then
			log("0데미지 발생, idx = ",self.idx)
		end
		monster:AddHp(-self.dmg)
	end
}


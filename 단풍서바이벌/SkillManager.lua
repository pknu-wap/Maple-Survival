--Properties--

Entity map
Component ultManager
array<Entity> skills
table skillDatas
boolean isPlayerDead = false
string skillDataSet = "Skill"
string ultDataSet = "Ult"


--Methods--

[Client Only]
void OnBeginPlay()
{
	self:SetSkillDatas()
}

[Client Only]
void SetSkillDatas()
{
	--디버그용
	self.skillDatas[-1] = {
		icon = "", name = "에러", script = "스킬이 부족해서 나오는 에러"
	}
	
	local skillDataSet = _DataService:GetTable(self.skillDataSet)
	
	for i = 1, skillDataSet:GetRowCount() do
		local row = skillDataSet:GetRow(i)
		
		local idx = row:GetItem("idx")
		idx = tonumber(idx)
		
		local icon = row:GetItem("icon")
		local name = row:GetItem("name")
		local script = row:GetItem("script")
		local model = row:GetItem("model")
		
		local cool = row:GetItem("cool")
		if cool ~= "" then cool = _HttpService:JSONDecode(cool)
		else cool = nil end
		
		local dmg = row:GetItem("dmg")
		dmg = _HttpService:JSONDecode(dmg)
		
		self.skillDatas[idx] = {}
		self.skillDatas[idx].icon = icon
		self.skillDatas[idx].name = name
		self.skillDatas[idx].script = script
		self.skillDatas[idx].model = model
		self.skillDatas[idx].cool = cool
		self.skillDatas[idx].dmg = dmg
		self.skillDatas[idx].level = 0
		
		local etcKey = row:GetItem("etcKey")
		if etcKey ~= "" then
			local etcJson = row:GetItem("etcValue")
			local etcDecode = _HttpService:JSONDecode(etcJson)
			self.skillDatas[idx][etcKey] = etcDecode
		end
	end
	
	local ultDataSet = _DataService:GetTable(self.ultDataSet)
	
	for i = 1, ultDataSet:GetRowCount() do
		local row = ultDataSet:GetRow(i)
		
		local idx = row:GetItem("idx")
		idx = tonumber(idx)
		
		local icon = row:GetItem("icon")
		local name = row:GetItem("name")
		local script = row:GetItem("script")
		local model = row:GetItem("model")
		
		local cool = row:GetItem("cool")
		cool = tonumber(cool)
		
		local dmg = row:GetItem("dmg")
		dmg = tonumber(dmg)
		
		self.skillDatas[idx] = {}
		self.skillDatas[idx].icon = icon
		self.skillDatas[idx].name = name
		self.skillDatas[idx].script = script
		self.skillDatas[idx].model = model
		self.skillDatas[idx].cool = cool
		self.skillDatas[idx].dmg = dmg
		
		local etcKey = row:GetItem("etcKey")
		if etcKey == "" then goto CONTINUE end
		
		local etcValue = row:GetItem("etcValue")
		etcValue = tonumber(etcValue)
		self.skillDatas[idx][etcKey] = etcValue
		
		::CONTINUE::
	end
}

[Client]
void Start()
{
	self:UpgradeSkill(1)
}

[Client Only]
void UpgradeSkill(integer idx)
{
	if idx == nil or idx == -1 then return end --빈 스킬 처리, 디버그용, 임시용
	
	local data = self.skillDatas[idx]
	
	if idx > 10000 then
		self.ultManager:InitUlt(idx)
		return
	end
	
	data.level = data.level + 1
	if data.level == 1 then
		self:UseSkill(idx)
		return
	end
	
	self.skills[idx].Skill:OnUpgrade()
	
	if data.level == 3 then
		data.max = true
	end
}

[Client Only]
void UseSkill(integer idx)
{
	if self.isPlayerDead then return end
	
	local data = self.skillDatas[idx]
	self.skills[idx] = self.skills[idx] or
		_SpawnService:SpawnByModelId(data.model, "Skill", Vector3.zero, _UserService.LocalPlayer)
	
	local skill = self.skills[idx]
	
	local kine = skill.KinematicbodyComponent
	if kine then
		kine:SetPosition(Vector2.zero);
	else
		skill.TransformComponent.Position = Vector3.zero
	end
	
	skill.Enable = true
	skill.Skill:Play()
	
	if data.cool == nil then return end
	local level = data.level
	local cool = data.cool[level]
	
	_TimerService:SetTimerOnce(function() self:UseSkill(idx) end, cool)
}

[Client]
void RemoveSkills()
{
	self.isPlayerDead = true
	
	for k, v in pairs(self.skills) do
		_EntityService:Destroy(v)
	end
}


--Events--


--Properties--

Component skillManager
Entity ui
array<SpriteGUIRendererComponent> icons
array<TextComponent> names
array<TextComponent> scripts
array<TextComponent> levels
array<SpriteGUIRendererComponent> backs
array<Color> skillColors
table randSkills
boolean haveUlt = false
integer skillMaxLevel = 3
integer upgradeAvailableCnt = 0
string skillDataSet = "Skill"
string ultDataSet = "Ult"


--Methods--

[Client Only]
void OnBeginPlay()
{
	self:SetTables()
}

[Client Only]
void SetTables()
{
	for i = 1, 3 do
		local ui = self.ui.Children[i]
		self.icons[i] = ui.Children[1].SpriteGUIRendererComponent
		self.names[i] = ui.Children[2].TextComponent
		self.scripts[i] = ui.Children[3].TextComponent
		self.backs[i] = ui.Children[4].SpriteGUIRendererComponent
		self.levels[i] = ui.Children[4].Children[1].TextComponent
	end
	
	self.skillColors[1] = Color.FromHexCode("#FFFFFF")
	self.skillColors[2] = Color.FromHexCode("#FFD119")
	self.skillColors[3] = Color.FromHexCode("#6321ED")
	self.skillColors.max = Color.FromHexCode("#D40404")
}

[Client Only]
void RenewUpgrade()
{
	self.randSkills = self:GetRandomSkills()
	
	self:UpdateUI()
	self.ui.Enable = true
	self.ui.Visible = true
}

[Client Only]
table GetRandomSkills()
{
	local randTable = {}
	
	local skillDatas = self.skillManager.skillDatas
	
	for i = 1, #skillDatas do
		if skillDatas[i].max then
			if not self.haveUlt then
				table.insert(randTable, i+10000)
			end
		else
			table.insert(randTable, i)
		end
	end
	
	while #randTable < 3 do
		table.insert(randTable, -1)
	end
	
	local randSkills = {}
	for i = 1, 3 do
		local r = _UtilLogic:RandomIntegerRange(1, #randTable)
		randSkills[i] = randTable[r]
		table.remove(randTable, r)
	end
	
	return randSkills
}

[Client Only]
void UpdateUI()
{
	for i = 1, 3 do
		local idx = self.randSkills[i]
		local data = self.skillManager.skillDatas[idx]
	
		self.icons[i].ImageRUID = data.icon
		self.names[i].Text = data.name
		self.scripts[i].Text = data.script
		
		local level = data.level
		local text = nil
		
		if level then
			text = string.format("LV. %d", level + 1)
			self.backs[i].Color = self.skillColors[level + 1]
		else
			text = "MAX"
			self.backs[i].Color = self.skillColors.max
		end
		self.levels[i].Text = text
	end
}

[Client Only]
void UpgradeSkill(integer idx)
{
	self.randSkills = nil
	self.ui.Enable = false
	self.ui.Visible = false
	self.skillManager:UpgradeSkill(idx)
	
	if self.upgradeAvailableCnt == 0 then return end
	
	self.upgradeAvailableCnt = self.upgradeAvailableCnt - 1
	self:RenewUpgrade()
}

[Client Only]
void OnLevelUp()
{
	if self.ui.Enable then
		self.upgradeAvailableCnt = self.upgradeAvailableCnt + 1
	else
		self:RenewUpgrade()
	end
}


--Events--

[Default]
HandlePlayerActionEvent(PlayerActionEvent event)
{
	if self.randSkills == nil then return end
	
	local ActionName = event.ActionName
	
	if ActionName == "Upgrade1" then self:UpgradeSkill(self.randSkills[1])
	elseif ActionName == "Upgrade2" then self:UpgradeSkill(self.randSkills[2])
	elseif ActionName == "Upgrade3" then self:UpgradeSkill(self.randSkills[3]) end
}


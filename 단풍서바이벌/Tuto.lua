--Properties--

Entity btnPrev
Entity btnNext
Entity btnClose
Entity btnEnd
Component name
Component img
Component script
table scripts
integer idx = 1
string scriptPc = "TutoScriptPC"
string scriptMobile = "TutoScriptMobile"


--Methods--

[Client Only]
void OnBeginPlay()
{
	self:SetDialogs()
	self:UpdateUI(1)
}

[Client Only]
void SetDialogs()
{
	---@type string
	local dataSetName = Environment:IsPCPlatform() and self.scriptPc or self.scriptMobile
	local dataSet = _DataService:GetTable(dataSetName)
	for i = 1, dataSet:GetRowCount() do
		local str = dataSet:GetCell(i, 1)
		self.scripts[i] = str
	end
	
	
}

[Client Only]
void UpdateUI(integer idx)
{
	local txt = self.scripts[idx]
	self.script.Text = txt
	
	self.btnPrev.Enable = (idx ~= 1)
	self.btnPrev.Visible = (idx ~= 1)
	
	self.btnNext.Enable = (idx ~= #self.scripts)
	self.btnNext.Visible = (idx ~= #self.scripts)
	
	self.btnEnd.Enable = (idx == #self.scripts)
	self.btnEnd.Visible = (idx == #self.scripts)
}

[Client Only]
void OnClickBtn(number btn)
{
	local prev = 1; local next = 2; local close = 3
	
	if btn == prev then
		if self.idx == 1 then return end
		self.idx = self.idx - 1
		
	elseif btn == next then
		if self.idx == #self.scripts then return end
		self.idx = self.idx + 1
		
	elseif btn == close then
		self.ui.Enable = false
		self.ui.Visible = false
		self.idx = 1
	end
	
	self:UpdateUI(self.idx)
}


--Events--

[Default]
HandleKeyDownEvent(KeyDownEvent event)
{
	if not self.ui.Enable then return end
	
	local key = event.key
	
	if key == KeyboardKey.Q then
		self:OnClickBtn(1)
	elseif key == KeyboardKey.W then
		self:OnClickBtn(2)
	elseif key == KeyboardKey.Escape then
		self:OnClickBtn(3)
	end
}


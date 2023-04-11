--Properties--

Entity map
Entity ui
Component skillManager
Component upgradeManager
Component img
Component txt
table ultDatas
Component localTrans
Entity ult
integer maxCool = 0
integer cool = 0


--Methods--

[Client Only]
void OnBeginPlay()
{
	self.localTrans = _UserService.LocalPlayer.TransformComponent
}

[Client Only]
void InitUlt(number idx)
{
	self.upgradeManager.haveUlt = true
	
	local data = self.skillManager.skillDatas[idx]
	self.ult = _SpawnService:SpawnByModelId(data.model, "Ult", Vector3.zero, self.map)
	
	if data.cool == -1 then
		self.ult.Ult:Play()
		return
	end
	
	self.ult.Enable = false
	self.img.ImageRUID = data.icon
	self.maxCool = data.cool
	self.cool = 0
	
	self.ui.Enable = true
	self.ui.Visible = true
}

[Client Only]
void UseUlt()
{
	self.ult.Enable = true
	self.ult.Ult:Play()
	
	self.cool = self.maxCool
	self:Cooldown()
	self.img.Color.a = 0.5
}

[Client Only]
void Cooldown()
{
	if self.cool <= 0 then
		self.txt.Text = ""
		self.img.Color.a = 1
		return
	end
	
	self.cool = self.cool - 1
	
	local cool = self.cool / 10
	if cool >= 10 then cool = math.floor(cool) end
	self.txt.Text = tostring(cool)
	
	_TimerService:SetTimerOnce(function() self:Cooldown() end, 0.1)
}

[Client Only]
void RemoveUlt()
{
	self.ui.Enable = false
	self.ui.Visible = false
	self.ult = nil
}


--Events--

[Default]
HandlePlayerActionEvent(PlayerActionEvent event)
{
	if self.ult == nil then return end
	if self.cool > 0 then return end
	
	local ActionName = event.ActionName
	if ActionName == "Ult" then self:UseUlt() end
}


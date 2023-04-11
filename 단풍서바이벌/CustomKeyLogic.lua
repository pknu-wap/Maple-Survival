--Properties--

Component playerComp
Component controller
Entity KeySettings
Entity Panel
Entity DefaultItem
table LocalKeys
Entity SelectedKey
boolean BlockInput = false


--Methods--

[Client Only]
void OnBeginPlay()
{
	local player = _UserService.LocalPlayer
	self.controller = player.PlayerControllerComponent
	
	self:RemoveKeySets()
	self.controller:SetActionKey(KeyboardKey.Alpha1, "Upgrade1")
	self.controller:SetActionKey(KeyboardKey.Alpha2, "Upgrade2")
	self.controller:SetActionKey(KeyboardKey.Alpha3, "Upgrade3")
	self.controller:SetActionKey(KeyboardKey.Space, "Ult")
	
	self:LocalKeyDownLoader(player.OwnerId)
	
	if _InstanceMapService:IsInstanceRoom() then return end
	
	_EntityService:GetEntityByPath(self.KeySettings.Path.."/OpenBtn"):ConnectEvent(ButtonClickEvent,self.OpenPanel)
	self.Panel = _EntityService:GetEntityByPath(self.KeySettings.Path.."/Panel")
	self.Panel.Enable = false
	self.DefaultItem = _EntityService:GetEntityByPath(self.Panel.Path.."/KeyDefault")
	self.DefaultItem.Enable = false
	
	_EntityService:GetEntityByPath(self.Panel.Path.."/Confirm"):ConnectEvent(ButtonClickEvent,self.ConfirmBtn)
	_EntityService:GetEntityByPath(self.Panel.Path.."/Cancel"):ConnectEvent(ButtonClickEvent,self.CancelBtn)
	_EntityService:GetEntityByPath(self.Panel.Path.."/Default"):ConnectEvent(ButtonClickEvent,self.DefaultBtn)
}

[Client Only]
void OpenPanel(ButtonClickEvent event)
{
	self.BlockInput = true
	local scroll = _EntityService:GetEntityByPath(self.Panel.Path.."/ScrollLayout")
	local actionkeys = _DataService:GetTable("ActionKeys")
	
	for i = 1, actionkeys:GetRowCount() do
		local currow = actionkeys:GetRow(i)
		local curitem = _SpawnService:SpawnByEntity(self.DefaultItem,currow:GetItem("ActionName"),Vector3.zero,scroll)
		_EntityService:GetEntityByPath(curitem.Path.."/Name").TextComponent.Text = currow:GetItem("kor")
		local curkey = _EntityService:GetEntityByPath(curitem.Path.."/Key")
		curkey.TextComponent.Text = self.LocalKeys[currow:GetItem("ActionName")]
		curkey:ConnectEvent(ButtonClickEvent,self.KeySelect)
		curitem.Enable = true
	end
	self.Panel.Enable = true
}

[Client Only]
void ConfirmBtn(ButtonClickEvent event)
{
	local chk = {}
	for k,v in pairs(self.LocalKeys) do
		if chk[v] then
			_ScreenMessageLogic:PrivateMsg("키 할당에 실패했습니다!\
	중복 없이 유효한 키들로만 설정해 주세요!")
			return
		end
		chk[v] = true
	end
	local id = _UserService.LocalPlayer.OwnerId
	local keystring = _UtilLogic:TableToString(self.LocalKeys)
	self:LocalKeyUpLoader(id,keystring)
	self:LocalKeySetter(id,keystring)
	self:Demolisher()
	_ScreenMessageLogic:PrivateMsg("키 설정이 완료되었습니다!")
}

[Client Only]
void CancelBtn(ButtonClickEvent event)
{
	self:Demolisher()
}

[Client Only]
void DefaultBtn(ButtonClickEvent event)
{
	local keytable = {}
	local actionkeys = _DataService:GetTable("ActionKeys")
	for i = 1, actionkeys:GetRowCount() do
		local currow = actionkeys:GetRow(i)
		local curitem = _EntityService:GetEntityByPath(self.Panel.Path.."/ScrollLayout/"..currow:GetItem("ActionName").."/Key")
		curitem.TextComponent.Text = currow:GetItem("DefaultKey")
		keytable[currow:GetItem("ActionName")] = currow:GetItem("DefaultKey")
	end
	self.LocalKeys = keytable
}

[Client Only]
void Demolisher()
{
	local scroll = _EntityService:GetEntityByPath(self.Panel.Path.."/ScrollLayout")
	for k,v in ipairs(scroll.Children) do
		v:Destroy()
	end
	self.Panel.Enable = false
	self.BlockInput = false
}

[Server]
void LocalKeyDownLoader(string UserId)
{
	local userds = _DataStorageService:GetUserDataStorage(UserId)
	local err,keystring = userds:GetAndWait("MyKeys")
	if not isvalid(keystring) then
		keystring = ""
	end
	self:LocalKeySetter(UserId,keystring)
}

[Server]
void LocalKeyUpLoader(string UserId, string keystring)
{
	local userds = _DataStorageService:GetUserDataStorage(UserId)
	userds:SetAndWait("MyKeys",keystring)
}

[Client]
void LocalKeySetter(string UserId, string keystring)
{
	self:RemoveControl()
	
	local keytable = _UtilLogic:StringToTable(keystring)
	if keystring == "" then
		keytable = {}
		local actionkeys = _DataService:GetTable("ActionKeys")
	
		for i = 1, actionkeys:GetRowCount() do
			local currow = actionkeys:GetRow(i)
			keytable[currow:GetItem("ActionName")] = currow:GetItem("DefaultKey")
		end
	end
	self.LocalKeys = keytable
	
	for k,v in pairs(self.LocalKeys) do
		self.controller:SetActionKey(KeyboardKey[v],k)
		self.controller:AddCondition(k,function() return not self.BlockInput end)
	end
}

[Client Only]
void KeySelect(ButtonClickEvent event)
{
	if self.SelectedKey then
		self.SelectedKey.SpriteGUIRendererComponent.Color = Color.white
	end	
	self.SelectedKey = event.Entity
	self.SelectedKey.SpriteGUIRendererComponent.Color = Color(1,1,0,1)
}

[Client Only]
void RemoveControl()
{
	for k,v in pairs(KeyboardKey) do
		if k ~= "__CastFrom" and k ~= "CastFrom" and k ~= "UnderlyingSystemType" then
			self.controller:RemoveActionKey(v)
		end
	end
}

[Client]
void Block(boolean TF)
{
	self.BlockInput = TF
}

[Client]
void RemoveKeySets()
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


--Events--

[Default]
HandleKeyDownEvent(KeyDownEvent event)
{
	-- Parameters
	local key = event.key
	--------------------------------------------------------
	if not self.SelectedKey then
		return
	end
	
	local curkey
	for k,v in pairs(KeyboardKey) do
		if v == key then
			curkey = k
		end
	end
	self.SelectedKey.TextComponent.Text = curkey
	self.LocalKeys[self.SelectedKey.Parent.Name] = curkey
	self.SelectedKey.SpriteGUIRendererComponent.Color = Color(1,1,1,1)
	self.SelectedKey = nil
}


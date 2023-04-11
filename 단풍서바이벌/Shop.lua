--Properties--

Entity item
Entity itemParent
Component selectedIcon
Component selectedTxt
array<Entity> items
table itemData
number meso = 0
Component mesoTxt
Entity buyBtn
integer selectedIdx = 0
Entity detail
Component selectedPrice
table shopData
array<TextComponent> levelTxts
string shopDataSet = "Shop"


--Methods--

[Client Only]
void OnBeginPlay()
{
	local id = _UserService.LocalPlayer.PlayerComponent.UserId
	
	_DBLogic:LoadMesoClient(id)
	_DBLogic:LoadShopDataClient(id)
	
	self:SetItemData()
	self:MakeItems()
	
	_TimerService:SetTimerOnce(function() self:UpdateLevelTxt(id, self.shopData) end, 2)
}

[Client Only]
void SetItemData()
{
	local dataSet = _DataService:GetTable(self.shopDataSet)
	
	for k, v in ipairs(dataSet:GetAllRow()) do
		local icon = v:GetItem("icon")
		local name = v:GetItem("name")
		local value = v:GetItem("value"); value = tonumber(value)
		local price = v:GetItem("price"); price = tonumber(price)
		
		self.itemData[k] = {}
		self.itemData[k].icon = icon
		self.itemData[k].name = name
		self.itemData[k].value = value
		self.itemData[k].price = price
	end
	
	self:SetItemDataServer(self.itemData)
}

[Client Only]
void MakeItems()
{
	for k, v in ipairs(self.itemData) do
		local item = _SpawnService:SpawnByEntity(self.item, "Item", Vector3.zero, self.itemParent)
		item.Children[1].SpriteGUIRendererComponent.ImageRUID = v.icon
		item:ConnectEvent(ButtonClickEvent, function() self:OnClickItem(k) end)
		self.levelTxts[k] = item.Children[1].Children[1].TextComponent
		self.items[k] = item
	end
	
	self.buyBtn:ConnectEvent(ButtonClickEvent, function() self:BuyItem(_UserService.LocalPlayer.PlayerComponent.UserId, self.selectedIdx) end)
}

[Client Only]
void OnClickItem(integer idx)
{
	local data = self.itemData[idx]
	self.selectedIcon.ImageRUID = data.icon
	self.selectedTxt.Text = data.name
	
	local db = self.shopData[idx]
	local level = db.level
	local price = data.price * (level + 1)
	self.selectedPrice.Text = tostring(price)
	
	self.detail.Enable = true
	self.detail.Visible = true
	
	self.selectedIdx = idx
}

[Client]
void UpdateMeso(string id, number meso)
{
	if _UserService.LocalPlayer.PlayerComponent.UserId ~= id then return end
	
	self.meso = meso
	self.mesoTxt.Text = tostring(meso)
}

[Server]
void BuyItem(string id, integer idx)
{
	local itemData = self.itemData[idx]
	local serverShopData = _DBLogic:LoadShopData(id)
	local level = serverShopData[idx].level
	local price = itemData.price * (level + 1)
	
	local meso = _DBLogic:LoadMeso(id)
	log("load=",meso)
	if meso < price then return end
	
	meso = meso - price
	meso = math.floor(meso)
	serverShopData[idx].level = serverShopData[idx].level + 1
	log("save=",meso)
	_DBLogic:SaveMeso(id, meso)
	_DBLogic:SaveShopData(id, serverShopData)
	
	_DBLogic:LoadMesoClient(id)
	_DBLogic:LoadShopDataClient(id)
}

[Client]
void UpdateShopData(string id, table data)
{
	if _UserService.LocalPlayer.PlayerComponent.UserId ~= id then return end
	
	self.shopData = data
	
	local idx = self.selectedIdx
	if idx == 0 then return end
	local itemData = self.itemData[idx]
	local db = data[idx]
	local level = db.level
	local price = itemData.price * (level + 1)
	self.selectedPrice.Text = tostring(price)
	
	self:UpdateLevelTxt(id, self.shopData)
}

[Server]
void SetItemDataServer(table itemData)
{
	self.itemData = itemData
}

[Client]
void UpdateLevelTxt(string id, table data)
{
	if _UserService.LocalPlayer.PlayerComponent.UserId ~= id then return end
	
	for k, v in ipairs(self.itemData) do
		self.levelTxts[k].Text = data[k].level
	end
}


--Events--


--Properties--

Entity map
string item = "model://b70b9fa7-cc35-437a-ac4d-7f36d71147ab"
array<Entity> pooledItems
table itemDatas
string itemDataSet = "Item"


--Methods--

[Server Only]
void OnBeginPlay()
{
	self:SetItemDatas()
}

[Server Only]
void SetItemDatas()
{
	local dataSet = _DataService:GetTable(self.itemDataSet)
	
	for i = 1, dataSet:GetRowCount() do
		local row = dataSet:GetRow(i)
		
		local img = row:GetItem("img")
		
		local offset = row:GetItem("offset")
		offset = _HttpService:JSONDecode(offset)
		
		local size = row:GetItem("size")
		size = _HttpService:JSONDecode(size)
	
		local reqCnt = row:GetItem("reqCnt")
		reqCnt = tonumber(reqCnt)
		
		local randSpawn = row:GetItem("randSpawn")
		randSpawn = randSpawn ~= "" and true or false
		
		self.itemDatas[i] = {}
		self.itemDatas[i].img = img
		self.itemDatas[i].offset = Vector2(offset[1], offset[2])
		self.itemDatas[i].size = Vector2(size[1], size[2])
		self.itemDatas[i].reqCnt = reqCnt
		self.itemDatas[i].randSpawn = randSpawn
		self.itemDatas[i].cnt = 0
	end
}

[Server Only]
void AddCnt(Vector3 pos)
{
	for idx, data in ipairs(self.itemDatas) do
		data.cnt = data.cnt + 1
		if data.cnt >= data.reqCnt then
			data.cnt = data.cnt - data.reqCnt
			if data.randSpawn then
				local x = _UtilLogic:RandomDouble() * 10 - 5
				local y = _UtilLogic:RandomDouble() * 6 - 3
				pos = Vector3(x, y, 0)
			end
			self:SpawnItem(idx, pos)
			return
		end
	end
}

[Server Only]
void SpawnItem(number idx, Vector3 pos)
{
	local item = self:GetPooledItem()
	local data = self.itemDatas[idx]
	item.Item:SetStat(idx, pos, data.img, data.offset, data.size)
	item.Enable = true
}

[Server Only]
Entity GetPooledItem()
{
	local item = self.pooledItems[1]
	
	if item then
		table.remove(self.pooledItems, 1)
		return item
	end
	return self:CreateNewItem()
}

[Server Only]
Entity CreateNewItem()
{
	return _SpawnService:SpawnByModelId(self.item, "Item", Vector3.zero, self.map)
}

[Server]
void DisableItem(Entity item)
{
	item.TransformComponent.Position.z = 10000
	item.Enable = false
	table.insert(self.pooledItems, item)
}


--Events--


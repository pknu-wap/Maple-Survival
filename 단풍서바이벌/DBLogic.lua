--Properties--

Component rankManager
Component shopManager
Component playerManager
string recordKey = "Record"
string globalDataName = "GlobalData"
string rankKey = "Rank"
string mesoKey = "Meso"
string shopKey = "Shop"
integer rankSize = 100
integer itemSize = 12
integer lucidStage = 30


--Methods--

[Server Only]
void ManageRecord(string id, string name, number stage, number time)
{
	log("manage",id,name,"stage",stage)
	local record = {}
	record.stage = stage
	record.time = time
	
	local previousRecord = self:LoadRecord(id)
	
	if previousRecord and not self:IsBetterRecord(record, previousRecord) then return end
	
	self:OnNewRecord(id)
	self:SaveRecord(id, stage, time)
	self:ManageRank(id, name, stage, time)
}

[Server Only]
table LoadRecord(string id)
{
	local storage = _DataStorageService:GetUserDataStorage(id)
	local error, json = storage:GetAndWait(self.recordKey)
	
	if json == nil then return nil end
	
	local data = _HttpService:JSONDecode(json)
	return data
}

[Default]
boolean IsBetterRecord(table record, table target)
{
	local a = record.stage > target.stage
	local b = record.stage == self.lucidStage
	local c = record.time < target.time
	
	if a or b and c then return true end
	return false
}

[Client]
void OnNewRecord(string id)
{
	self.playerManager.IsNewRecord[id] = true
}

[Server Only]
void SaveRecord(string id, number stage, number time)
{
	log("save stage", stage)
	local data = {}
	data.stage = stage
	data.time = time
	
	local json = _HttpService:JSONEncode(data)
	local storage = _DataStorageService:GetUserDataStorage(id)
	storage:SetAndWait(self.recordKey, json)
}

[Server Only]
void ManageRank(string id, string name, number stage, number time)
{
	local storage = _DataStorageService:GetGlobalDataStorage(self.globalDataName)
	local error, json = storage:GetAndWait(self.rankKey)
	
	local data = {}
	if json then data = _HttpService:JSONDecode(json)
	else data = self:CreateNewRankData() end
	
	for k, v in pairs(data) do
		if id == v.id then
			data[k].stage = 0
		end
	end
	
	data[self.rankSize + 1] = {}
	data[self.rankSize + 1].id = id
	data[self.rankSize + 1].name = name
	data[self.rankSize + 1].stage = stage
	data[self.rankSize + 1].time = time
	
	local function cmp(record, target)
		return self:IsBetterRecord(record, target)
	end
	
	table.sort(data, cmp)
	
	local newJson = _HttpService:JSONEncode(data)
	storage:SetAndWait(self.rankKey, newJson)
}

[Server Only]
table CreateNewRankData()
{
	local data = {}
	
	for i = 1, self.rankSize do
		data[i] = {}
		data[i].id = "NoId"
		data[i].name = "NoName"
		data[i].stage = 0
		data[i].time = 0
	end
	
	return data
}

[Server]
void LoadRankClient()
{
	local storage = _DataStorageService:GetGlobalDataStorage(self.globalDataName)
	local error, json = storage:GetAndWait(self.rankKey)
	
	local data = {}
	if json then data = _HttpService:JSONDecode(json)
	else data = self:CreateNewRankData() end
	
	self.rankManager:UpdateRank(data)
}

[Server]
void LoadRecordClient(string id)
{
	local storage = _DataStorageService:GetUserDataStorage(id)
	local error, json = storage:GetAndWait(self.recordKey)
	
	local data = nil
	if json then data = _HttpService:JSONDecode(json) end
	
	self.rankManager:UpdateRecord(id, data)
}

[Server]
number LoadMeso(string id)
{
	local storage = _DataStorageService:GetUserDataStorage(id)
	local error, data = storage:GetAndWait(self.mesoKey)
	
	if data == nil then return 0 end
	
	return tonumber(data)
}

[Server]
void SaveMeso(string id, number meso)
{
	meso = math.floor(meso)
	local storage = _DataStorageService:GetUserDataStorage(id)
	local data = tostring(meso)
	storage:SetAndWait(self.mesoKey, data)
}

[Server]
table LoadShopData(string id)
{
	local storage = _DataStorageService:GetUserDataStorage(id)
	local error, data = storage:GetAndWait(self.shopKey)
	
	if data == nil then return end
	
	local decode = _HttpService:JSONDecode(data)
	return decode
}

[Server]
void SaveShopData(string id, table shopData)
{
	local storage = _DataStorageService:GetUserDataStorage(id)
	local json = _HttpService:JSONEncode(shopData)
	storage:SetAndWait(self.shopKey, json)
}

[Server]
void LoadMesoClient(string id)
{
	local storage = _DataStorageService:GetUserDataStorage(id)
	local error, data = storage:GetAndWait(self.mesoKey)
	
	local meso = nil
	if data == nil then
		self:SaveMeso(id, 50000)
		meso = 50000
	else
		meso = tonumber(data)
	end
	
	self.shopManager:UpdateMeso(id, meso)
}

[Server]
void LoadShopDataClient(string id)
{
	local storage = _DataStorageService:GetUserDataStorage(id)
	local error, data = storage:GetAndWait(self.shopKey)
	
	local ret = nil
	if data == nil then
		ret = self:CreateNewShopData()
		self:SaveShopData(id, ret)
	else
		ret = _HttpService:JSONDecode(data)
	end
	
	self.shopManager:UpdateShopData(id, ret)
}

[Server Only]
table CreateNewShopData()
{
	local ret = {}
	
	for i = 1, self.itemSize do
		ret[i] = {}
		ret[i].level = 0
	end
	
	return ret
}

[Server]
void Reset()
{
	local err, userPages = _DataStorageService:GetUserDataStoragePagesAndWait()
	while true do
		local storages = userPages:GetCurrentPageDatas()
		for k, v in pairs(storages) do
			log("delete", k, "record/meso/shopData")
			v:DeleteAndWait(self.recordKey)
			v:DeleteAndWait(self.mesoKey)
			v:DeleteAndWait(self.shopKey)
		end
		if userPages.IsLastPage then break end
		userPages:MoveToNextPageAndWait()
	end
	
	local storage = _DataStorageService:GetGlobalDataStorage(self.globalDataName)
	log("delete Rank")
	storage:DeleteAndWait(self.rankKey)
}


--Events--


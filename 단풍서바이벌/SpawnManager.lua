--Properties--

Entity map
Component stageManager
Component playerManager
string monster = "model://225a99de-b931-4e51-9c1d-b8fa15ab2eca"
dictionary<Entity, boolean> mobsClient
array<Entity> pooledMobs
table timers
table mobDatas
table mobComps
number maxTime = 0
dictionary<Entity, boolean> mobs
string monsterDataSet = "Monster"
string mobCompDataSet = "MonsterComposition"


--Methods--

[Server Only]
void OnBeginPlay()
{
	self.maxTime = self.stageManager.maxTime - 1
	self:SetTables()
}

[Server Only]
void SetTables()
{
	self:SetMobDatas()
	self:SetMobComps()
}

[Server Only]
void SetMobDatas()
{
	local dataSet = _DataService:GetTable(self.monsterDataSet)
	 
	for k, v in ipairs(dataSet:GetAllRow()) do
		local img = v:GetItem("img")
		local offset = v:GetItem("offset"); offset = _HttpService:JSONDecode(offset)
		local size = v:GetItem("size"); size = _HttpService:JSONDecode(size)
		local hp = v:GetItem("hp"); hp = tonumber(hp)
		local spd = v:GetItem("spd"); spd = tonumber(spd)
		local dmg = v:GetItem("dmg"); dmg = tonumber(dmg)
		
		self.mobDatas[k] = {}
		self.mobDatas[k].img = img
		self.mobDatas[k].offset = Vector2(offset[1], offset[2])
		self.mobDatas[k].size = Vector2(size[1], size[2])
		self.mobDatas[k].hp = hp
		self.mobDatas[k].spd = spd
		self.mobDatas[k].dmg = dmg
	end
}

[Server Only]
void SetMobComps()
{
	local dataSet = _DataService:GetTable(self.mobCompDataSet)
	
	for stage, row in ipairs(dataSet:GetAllRow()) do
		local idxs = row:GetItem("idx"); idxs = _HttpService:JSONDecode(idxs)
		local cnt = row:GetItem("cnt"); cnt = _HttpService:JSONDecode(cnt)
		
		self.mobComps[stage] = {}
		for k, idx in ipairs(idxs) do
			self.mobComps[stage][idx] = cnt[k]
		end
	end
}

[Server Only]
void SetSpawns(number stage)
{
	for k, v in pairs(self.mobComps[stage]) do
		local interval = self.maxTime / v
		self.timers[k] = _TimerService:SetTimerRepeat(function() self:SpawnMob(k) end, interval, 0.5)
	end
}

[Server Only]
void SpawnMob(number idx)
{
	local ids = {}
	for k, v in pairs(self.playerManager.livingPlayers) do
		table.insert(ids, k)
	end
	
	for k, v in pairs(ids) do
		local mob = self:GetPooledMob()
		self.mobs[mob] = true
		self:AddMobsClient(mob)
		local data = self.mobDatas[idx]
		local pos = self:GetRandPos(v)
		mob.Monster:SetStat(pos, data.img, data.offset, data.size, data.hp, data.spd, data.exp, data.dmg)
		mob.Enable = true
	end
}

[Server Only]
Entity GetPooledMob()
{
	local mob = self.pooledMobs[1]
	if mob then
		table.remove(self.pooledMobs, 1)
		return mob
	end
	
	return self:CreateNewMob()
}

[Server Only]
Entity CreateNewMob()
{
	local mob = _SpawnService:SpawnByModelId(self.monster, "Monster", Vector3.zero, self.map)
	
	return mob
}

[Server Only]
Vector2 GetRandPos(string id)
{
	local radius = 5
	local playerPos = _UserService:GetUserEntityByUserId(id).TransformComponent.Position
	local px = playerPos.x
	local py = playerPos.y
	local x = _UtilLogic:RandomDouble()*radius*2 - radius + px
	local dx = x - px
	local y = math.sqrt(radius * radius - dx * dx)
	y = _UtilLogic:RandomIntegerRange(0, 1) == 0 and y+py or -y+py
	
	return Vector2(x, y)
}

[Server Only]
void DisableMob(Entity mob)
{
	mob.Enable = false
	
	self.mobs[mob] = nil
	self:DeleteMobsClient(mob)
	table.insert(self.pooledMobs, mob)
}

[Server Only]
void ClearSpawns()
{
	for k, v in pairs(self.timers) do
		_TimerService:ClearTimer(v)
	end
	
	self.timers = {}
}

[Client]
void AddMobsClient(Entity mob)
{
	self.mobsClient[mob] = true
}

[Client]
void DeleteMobsClient(Entity mob)
{
	self.mobsClient[mob] = nil
}


--Events--


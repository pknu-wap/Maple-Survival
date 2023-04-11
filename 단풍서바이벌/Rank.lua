--Properties--

Entity itemParent
Component myRank
Component myName
Component myStage
Component myTime
array<Entity> items
array<TextComponent> rankNames
array<TextComponent> rankStages
array<TextComponent> rankTimes
array<string> ids
Entity itemModel
Entity player


--Methods--

[Client Only]
void OnBeginPlay()
{
	local tables = {nil, self.rankNames, self.rankStages, self.rankTimes}
	
	for i = 1, _DBLogic.rankSize do
		local item = _SpawnService:SpawnByEntity(self.itemModel, "Item", Vector3.zero, self.itemParent)
		self.items[i] = item
		item.Children[1].TextComponent.Text = tostring(i)
		for k, v in pairs(tables) do
			v[i] = item.Children[k].TextComponent
		end
	end
	
	_DBLogic:LoadRankClient()
	
	self.player = _UserService.LocalPlayer
	self.myName.Text = self.player.PlayerComponent.Nickname
	_DBLogic:LoadRecordClient(self.player.OwnerId)
}

[Client]
void UpdateRank(table data)
{
	for i = 1, _DBLogic.rankSize do
		local record = data[i]
		self.rankNames[i].Text = record.name
		self.rankStages[i].Text = record.stage
		
		if record.stage < 30 then
			self.rankTimes[i].Text = nil
		else
			local time = record.time
			local min = time / 60
			local sec = time % 60
			self.rankTimes[i].Text = string.format("%02d:%02d", min, sec)
		end
		
		self.ids[i] = data.id
		
		self.items[i].Visible = (record.stage ~= 0)
	end
}

[Client]
void UpdateRecord(string id, table data)
{
	if self.player.OwnerId ~= id then return end
	if data == nil then return end
	
	for k, v in pairs(self.ids) do
		if id == v then
			self.myRank.Text = tostring(k)
			break
		end
	end
	
	self.myStage.Text = tostring(data.stage)
	
	if data.stage < 30 then return end
	
	local time = data.time
	local min = time / 60
	local sec = time % 60
	self.myTime.Text = string.format("%02d:%02d", min, sec)
}


--Events--


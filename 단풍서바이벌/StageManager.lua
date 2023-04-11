--Properties--

Component timeManager
Component spawnManager
Component ui
boolean isStarted = false
integer stage = 1
integer maxTime = 15
integer stageTimer = nil
string lucid = "model://d7e4189a-cd90-4878-9c58-3a1d47a252fd"
Entity map
integer lucidStage = 30


--Methods--

[Server Only]
void Init()
{
	self.spawnManager:SetSpawns(1)
	_TimerService:SetTimerOnce(function() self:StageEnd() end, self.maxTime)
}

[Server]
void StageEnd()
{
	self.spawnManager:ClearSpawns()
	self.timeManager:RecordLastStageUp(self.stage)
	self.stage = self.stage + 1
	local stage = self.stage
	self:UpdateUI(stage)
	
	if stage == self.lucidStage then
		self:SetLucid()
		return
	end
	
	self.spawnManager:SetSpawns(stage)
	_TimerService:SetTimerOnce(function() self:StageEnd() end, self.maxTime)
}

[Client]
void UpdateUI(integer stage)
{
	self.ui.Text = string.format("STAGE %d", tostring(stage))
}

[Server]
void SetLucid()
{
	local mobs = self.spawnManager.mobs
	for k, v in pairs(mobs) do
		self.spawnManager:DisableMob(k)
	end
	
	local lucid = _SpawnService:SpawnByModelId(self.lucid, "Lucid", Vector3.zero, self.map)
	self.spawnManager:AddMobsClient(lucid)
}

[Server]
void Debug()
{
	self.stage = self.lucidStage-1
	self:StageEnd()
}

[Server]
void Debug2()
{
	self.stage = self.stage + 1
	self:UpdateUI(self.stage)
}


--Events--


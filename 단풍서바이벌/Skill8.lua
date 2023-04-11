--Properties--

array<Entity> spawns


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
}

[Client Only]
void Play()
{
	local level = self.skillManager.skillDatas[self.idx].level
	local repeatCnt = self.skillManager.skillDatas[self.idx].cnt[level]
	
	__base:Play()
	
	self:RepeatFollowup(repeatCnt)
	
}

[Client Only]
void RepeatFollowup(number repeatCnt)
{
	if repeatCnt == 0 then return end
	
	local spawn = self.spawns[repeatCnt] or
		_SpawnService:SpawnByModelId(self.followupModel, "Followup", Vector3.zero, self.map)
	local angle = _UtilLogic:RandomIntegerRange(0, 359)
	
	spawn.TransformComponent.WorldZRotation = angle
	
	local fk = spawn.KinematicbodyComponent
	fk.MoveVelocity = _MathLogic:AngleToVector2(angle) * 5
	fk:SetPosition(self.Entity.TransformComponent.WorldPosition:ToVector2())
	
	spawn.Enable = true
	spawn.Skill:Play()
	
	_TimerService:SetTimerOnce(function() self:RepeatFollowup(repeatCnt-1) end, 0.5)
}


--Events--


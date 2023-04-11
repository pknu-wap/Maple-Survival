--Properties--

Entity effect
Entity effect2
Entity effect3
Component effectTrans
Component effect2Trans
Component effect3Trans
Component trans
Component sprite
Component playerStat
number xScale = 1
Entity NewValue1


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	local entity = self.Entity
	self.trans = entity.TransformComponent
	self.sprite = entity.SpriteRendererComponent
	
	local player = self.localPlayer
	self.playerStat = player.PlayerStat
	entity:AttachTo(player)
	
	local spawn = _SpawnService:SpawnByModelId(self.followupModel, "Ult", Vector3.zero, self.localPlayer)
	spawn.Enable = false
	self.spawn = spawn
}

[Client Only]
void Play()
{
	__base:Play()
	
	local ps = self.playerStat
	local right = ps.right - ps.left
	self.xScale = (right == 1) and -1 or 1
	self.trans.Scale.x = self.xScale
}


--Events--

[Default]
HandleSpriteAnimPlayerEndFrameEvent(SpriteAnimPlayerEndFrameEvent event)
{
	self.effect.Enable = true
	self.effectTrans.Scale.x = self.xScale
	
	self.effect2.Enable = true
	self.effect2Trans.Scale.x = self.xScale
	
	_TimerService:SetTimerOnce(function()
		self.effect3.Enable = true
		self.effect3Trans.Scale.x = self.xScale
		self.spawn.Enable = true
		self.spawn.Ult:Play()
	end, 0.7)
	
	self.Entity.Enable = false
}


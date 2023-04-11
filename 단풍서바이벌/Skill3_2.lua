--Properties--

number followupCnt = nil
number hitOverCnt = nil


--Methods--

[Client Only]
void Play()
{
	self:MoveToEnemy(false)
	
	__base:Play()
}


--Events--

[Default]
HandleSpriteAnimPlayerStartFrameEvent(SpriteAnimPlayerStartFrameEvent event)
{
	self.cnt = self.cnt + 1
	if self.cnt == self.followupCnt then 
		self.Entity.Enable = false
		self.cnt = 1
		self:Followup()
	end
	
	self.Entity.TriggerComponent.Enable = (self.cnt >= self.hitOverCnt)
}

[Default]
HandleTriggerEnterEvent(TriggerEnterEvent event)
{
	self.Entity.Enable = false
	self.cnt = 1
	self:Followup()
}


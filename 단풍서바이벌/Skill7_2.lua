--Properties--

number hitCnt = 0


--Methods--

[Client Only]
void SetDmg()
{
	local data = self.skillManager.skillDatas[self.idx]
	local level = data.level
	self.dmg = data.dmg2[level] or data.dmg2[1]
}


--Events--

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	if self.trigger == nil then return end
	
	self.hitCnt = self.hitCnt + 1
	self.trigger.Enable = (self.hitCnt % 4 == 0)
}


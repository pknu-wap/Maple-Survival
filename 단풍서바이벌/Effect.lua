--Properties--

integer cnt = 0


--Methods--


--Events--

[Default]
HandleSpriteAnimPlayerStartFrameEvent(SpriteAnimPlayerStartFrameEvent event)
{
	self.cnt = self.cnt + 1
	if self.cnt == 2 then
		self.cnt = 1
		self.Entity.Enable = false
	end
}


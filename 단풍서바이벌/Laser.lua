--Properties--

Component trigger


--Methods--


--Events--

[Default]
HandleSpriteAnimPlayerEndFrameEvent(SpriteAnimPlayerEndFrameEvent event)
{
	self.Entity.Enable = false
}

[Default]
HandleSpriteAnimPlayerChangeFrameEvent(SpriteAnimPlayerChangeFrameEvent event)
{
	self.Entity.TriggerComponent.Enable = (event.FrameIndex == 21)
}


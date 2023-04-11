--Properties--

Component sound
integer cnt = 0


--Methods--

[Client Only]
void OnBeginPlay()
{
	self.sound = self.Entity.SoundComponent
}

[Client Only]
void Play()
{
	self.sound:Play()
}


--Events--

[Default]
HandleSpriteAnimPlayerStartFrameEvent(SpriteAnimPlayerStartFrameEvent event)
{
	self.cnt = self.cnt + 1
	
	if self.cnt == 2 then 
		self.Entity.Enable = false
		self.cnt = 1
	end
}


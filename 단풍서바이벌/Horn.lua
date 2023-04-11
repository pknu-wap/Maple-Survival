--Properties--

Component trans
Component sprite
string origin = "9a4a24ceb49e4de78eed0c71657c6f46"
string use = "98931cc34c43440db9e747c0048fe35f"
Vector2 gap = Vector2(-1.09, 0.12)
boolean isUseMode = false
number time = 0
number cnt = 0
Entity ui
Component slider


--Methods--

[Client Only]
void OnBeginPlay()
{
	self.ui = _EntityService:GetEntityByPath("/ui/Horn/UIHorn")
	self.slider = _EntityService:GetEntityByPath("/ui/Horn/UIHorn/back/slider").SliderComponent
	
	self:OnBeginPlayServer()
}

[Server]
void Use()
{
	if self.isUseMode then return end
	
	self:DisableUI()
	self.isUseMode = true
	self.sprite.SpriteRUID = self.use
	self.trans:Translate(self.gap.x, self.gap.y)
}

[Server]
void Disable()
{
	if not self.isUseMode then return end
	self.cnt = self.cnt + 1
	if self.cnt == 1 then return end
	
	self.cnt = 0
	self.isUseMode = false
	self.sprite.Enable = false
	self.trans:Translate(-self.gap.x, -self.gap.y)
}

[Server]
void Stay()
{
	self.time = self.time + 0.005
	self:UpdateUI(self.time)
	if self.time >= 1 then
		self:Use()
	end
}

[Server]
void OnBeginPlayServer()
{
	local entity = self.Entity
	self.trans = entity.TransformComponent
	self.sprite = entity.SpriteRendererComponent
}

[Client]
void UpdateUI(number time)
{
	self.slider.Value = time
	self.ui.Visible = true
}

[Client]
void DisableUI()
{
	self.slider.Value = 0
	self.ui.Visible = false
}


--Events--

[Default]
HandleSpriteAnimPlayerEndFrameEvent(SpriteAnimPlayerEndFrameEvent event)
{
	self:Disable()
}

[Default]
HandleTriggerStayEvent(TriggerStayEvent event)
{
	self:Stay()
}


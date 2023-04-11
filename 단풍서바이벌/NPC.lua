--Properties--

Component interactManager
Entity ui


--Methods--

[Client Only]
void SetUIEnable(boolean enable)
{
	self.ui.Visible = enable
	self.ui.Enable = enable
}


--Events--

[Default]
HandleInteractionEnterEvent(InteractionEnterEvent event)
{
	if self:IsServer() then return end
	
	self.interactManager:SetInteractEnable(true)
}

[Default]
HandleInteractionLeaveEvent(InteractionLeaveEvent event)
{
	if self:IsServer() then return end
	
	self.interactManager:SetInteractEnable(false)
	self:SetUIEnable(false)
}

[Default]
HandleInteractionEvent(InteractionEvent event)
{
	if self:IsServer() then return end
	
	self:SetUIEnable(true)
}


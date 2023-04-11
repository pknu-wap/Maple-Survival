--Properties--

Entity status
Entity stage
Entity load
Entity exit
Entity joystick
Entity joystickDynamic
Entity keySet


--Methods--

[Client Only]
void OnBeginPlay()
{
	local ui = nil
	if _InstanceMapService:IsInstanceRoom() then
		ui = {self.status, self.stage, self.load, self.exit, self.joystickDynamic}
	else
		ui = {self.joystick, self.keySet}
	end
	
	self:EnableUI(ui)
}

[Client Only]
void EnableUI(array ui)
{
	for k, v in pairs(ui) do
		v.Enable = true
		v.Visible = true
	end
}


--Events--


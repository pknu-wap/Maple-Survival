--Properties--

Entity interactMobile
string interactModel = "model://dff1be80-2ca4-4c5f-8b11-4fb39184eb2c"
Entity interact


--Methods--

[Client Only]
void OnBeginPlay()
{
	if Environment:IsMobilePlatform() then
		self.interact = self.interactMobile
	else
		self.interact = _SpawnService:SpawnByModelId(self.interactModel, "Interact" , Vector3.up, _UserService.LocalPlayer)
		self.interact.Enable = false
	end
}

[Client Only]
void SetInteractEnable(boolean enable)
{
	self.interact.Enable = enable
}


--Events--


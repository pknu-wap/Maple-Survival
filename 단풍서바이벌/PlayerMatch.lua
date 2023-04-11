--Properties--

boolean isReady = false
number readyClickTime = 0


--Methods--

[Server]
void SetReady(boolean ready)
{
	self.isReady = ready
	self.readyClickTime = _UtilLogic.ServerElapsedSeconds
	_MatchLogic:SetReady(self.Entity,ready)
}

[Server Only]
void OnDestroy()
{
	if not _InstanceMapService:IsInstanceRoom() then
		self:SetReady(false)
	end
}


--Events--


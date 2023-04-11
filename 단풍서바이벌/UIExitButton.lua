--Properties--

boolean isAllUserExit = false


--Methods--


--Events--

[Default]
HandleButtonClickEvent(ButtonClickEvent event)
{
	-- Parameters
	local Entity = event.Entity
	--------------------------------------------------------
	if self.isAllUserExit then
		_MatchLogic:ExitInstanceMapAllUser()
	else
		_MatchLogic:ExitInstanceMap(_UserService.LocalPlayer.OwnerId)
	end
}


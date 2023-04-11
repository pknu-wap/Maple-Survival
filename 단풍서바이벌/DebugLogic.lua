--Properties--

Component playerStat
Component stageManager


--Methods--

[Client Only]
void OnBeginPlay()
{
	self.playerStat = _UserService.LocalPlayer.PlayerStat
}


--Events--

[Default]
HandleKeyDownEvent(KeyDownEvent event)
{
	if _UserService.LocalPlayer.OwnerId ~= "20372000721739455" then return end
	
	local key = event.key
	if key == KeyboardKey.P then
		_DBLogic:Reset()
		log("DB 리셋")
	elseif key == KeyboardKey.T then
		self.playerStat:Die()
		log("자살")
	elseif key == KeyboardKey.R then
		self.playerStat:AddExp(50)
		log("경험치 획득")
	elseif key == KeyboardKey.F then
		self.playerStat:AddHp(500)
		log("체력 회복")
	elseif key == KeyboardKey.A then
		self.stageManager:Debug2()
		log("스테이지 업")
	elseif key == KeyboardKey.B then
		self.stageManager:Debug()
		log("루시드 스테이지")
	end
}


--Properties--

string originHpColor = "#FFFFFF"
string invinsibleHpColor = "#5b4270"
string effect = "5f2fa317767845e5824a7748e82fda3c"
Entity effect2
Component playerStat
Component hpSlider
number time = 0


--Methods--

[Client Only]
void OnBeginPlay()
{
	__base:OnBeginPlay()
	
	self.playerStat = self.localPlayer.PlayerStat
	self.hpSlider = self.playerStat.hpSlider
	self.time = self.skillManager.skillDatas[self.idx].time
}

[Client Only]
void Play()
{
	__base:Play()
	
	self.playerStat.isInvincible = true
	self.hpSlider.FillRectColor = Color.FromHexCode(self.invinsibleHpColor)
	
	_EffectService:PlayEffectAttached(self.effect, self.localPlayer, self.v3, 0, Vector3.one)
	
	self.effect2.Enable = true
	
	_TimerService:SetTimerOnce(function() self:End() end, self.time)
}

[Client Only]
void End()
{
	__base:End()
	
	self.playerStat.isInvincible = false
	self.hpSlider.FillRectColor = Color.FromHexCode(self.originHpColor)
}


--Events--


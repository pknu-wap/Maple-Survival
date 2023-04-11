--Properties--

Component script
Entity ui
Component name
Entity uiExit


--Methods--

[Client Only]
void ShowResult(boolean isNewRecord, number level, number stage, number time, number meso, boolean clear)
{
	if isNewRecord then
		self.name.Text = "신기록 달성!"
	elseif clear then
		self.name.Text = "클리어!"
	end
	
	local min = time / 60
	local sec = time % 60
	self.script.Text = string.format("레벨: %d\
	스테이지: %d\
	시간: %02d:%02d\
	\
	획득 메소: %d", tostring(level), tostring(stage), tostring(min), tostring(sec), tostring(meso))
	
	self.uiExit.Enable = false
	self.uiExit.Visible = false
	
	self.ui.Enable = true
	self.ui.Visible = true
}


--Events--


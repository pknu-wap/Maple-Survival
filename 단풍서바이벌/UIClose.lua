--Properties--



--Methods--

[Client Only]
void Close()
{
	self.Entity.Enable = false
	self.Entity.Visible = false
}


--Events--

[Default]
HandleKeyDownEvent(KeyDownEvent event)
{
	if event.key == KeyboardKey.Escape then	self:Close() end
}


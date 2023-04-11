--Properties--

Component skillManager
Component playerManager
Entity ui


--Methods--

[Client Only]
void OnBeginPlay()
{
	self:LoadSkillIcons()
	self:LoadAnims()
	self:LoadAsync()
	self:FinishLoad()
	self.Entity.Visible = false
}

[Client Only]
void LoadSkillIcons()
{
	local skillDatas = self.skillManager.skillDatas
	for k, v in pairs(skillDatas) do
		local icon = v.icon
		if icon == nil then goto CONTINUE end
		_ResourceService:LoadSpriteAndWait(icon)
		
		::CONTINUE::
	end
}

[Client Only]
void LoadAnims()
{
	local anims = {
	"01d8194f40ec4316b2911fd607acd9a3","6a834eef27724438874cdc2c03e23f28","76ad6c015034438f8e896acb4dbec6e5","56219cf39699479e9214a86a84b8b119",
	"d91e675288f9450b888c3daed98fb63e","441d0e6171fc4202aab361fd967b1d23","b4a76ba0b9f24f498e0b5245c584200e","29f1559f803f45a78c6f86a9c08529a6",
	"071410ac35aa4d22908ea76783fd35d8","ff051a7d5f6749d7a80a11452e8f4f66","97df4d15a8d14ef6809684ee4e5a5ae6","2798990a2d034d2fae1042114838f058",
	"bb9baefd13c44af0bb23aa8d0d5877e1","8f4aca6fa07645e0834f0182c54eab7c","0fac7ab65007401a87ce90aae2450797","baac4b0560804edcbf95865be5a9123b"
	}
	
	for k, v in pairs(anims) do
		_ResourceService:LoadAnimationClipAndWait(v)
	end
}

[Client Only]
void LoadAsync()
{
	local anims = {
	"5f2fa317767845e5824a7748e82fda3c","3eaa293e7c9c477a915d85d4d609103d","8b25a253565b4fa693aa57a07ac4e6f4","643c9e8d1b7043a29045e3fed2f1021c",
	"1cedb1791dda4d82a71af3b3541a60da","97db85b5314a49d990bad49250ad3608","97db85b5314a49d990bad49250ad3608","359f67d4614743dcb45c413f5f09dd82",
	"9899c51bcc5344cdb924976aa86ab3b3","97df4d15a8d14ef6809684ee4e5a5ae6","01eff730ea0a4c3aa797fdb50a1e4492","8f4aca6fa07645e0834f0182c54eab7c",
	"ce55606c96d94c059227f2956a1ae786","2bbd0ec09939486794d7122b04da6f20","17b557c2083342ba83d4330747c9033d","db15e54cdd9745cfa76177a89c51b76e",
	"e435268a9da54026be3342347fb258d6","56d9133a0521442d9eac24c123ecdf03","9a4a24ceb49e4de78eed0c71657c6f46","98931cc34c43440db9e747c0048fe35f",
	"73223623210a4c00b0eb46586b3444ef","f53f714841d546fbb70392dcf7ca9a64","7d6915d162074fbdba004f4a5e7bbafd","f4c436458e964829ac2638883965e5c9",
	"b873d999b1e848f19b78e0a3dd154a96","7d6915d162074fbdba004f4a5e7bbafd","ea2f7c0f10c84703ae8d1d3fb61faf30","e4a63122686b407ca0e73f5dbecabeb5",
	"564f873f57184d5481c67bf245bdf189","791e1fa0e6d047c5938807018a3cd914","6a5442b1607b4132933a0a41640a887c","88b4efd109c443f380cd0465707e92a8",
	"bd917f78203849b3ab936d9428f45edf","ad0d40cd051c49d5b0ec06cb3ad49b34","256dba3bd6054185a02556869fc8baed","1f0679016a8d4c13a82caffd64548ea8",
	"59d0beebd6c74c90a11de6aa0c666bd0"
	}
	
	for k, v in pairs(anims) do
		_ResourceService:PreloadAsync(v, nil)
	end
}

[Client Only]
void FinishLoad()
{
	self.ui.Enable = false
	local player = _UserService.LocalPlayer
	player.KinematicbodyComponent.Enable = true
	
	local id = player.OwnerId
	self.playerManager:FinishLoad(id)
}


--Events--


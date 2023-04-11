--Properties--

string breathModel = "model://b64f1489-2628-4a9c-8607-f94bde8e9873"
array<Entity> breaths


--Methods--

[Server Only]
void OnBeginPlay()
{
	local x = 0
	for i = 1, 6 do
		local breath = _SpawnService:SpawnByModelId(self.breathModel, "Breath", Vector3(x, 0, 0), self.Entity)
		breath.Enable = false
		self.breaths[i] = breath
		x = x - 2.5
	end
}


--Events--


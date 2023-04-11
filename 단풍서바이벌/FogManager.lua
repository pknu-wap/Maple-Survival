--Properties--

string fogModelID = "model://1a24b744-52bf-4db6-9e60-d9e33210c0f5"


--Methods--

[Client Only]
void OnBeginPlay()
{
	_SpawnService:SpawnByModelId(self.fogModelID, "Fog", Vector3(-15, -12, 0), nil)
}


--Events--


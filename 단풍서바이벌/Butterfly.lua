--Properties--

array<Entity> pooledBalls
string ball = "model://e2d6f2e4-af9b-4498-bdfb-74886d23fbdd"


--Methods--

[Server Only]
void OnBeginPlay()
{
	for i = 1, 12 do
		local ball = _SpawnService:SpawnByModelId(self.ball, "Ball", Vector3.zero, self.Entity)
		ball.Enable = false
		self.pooledBalls[i] = ball
	end
}

[Server]
void Play()
{
	_TimerService:SetTimerOnce(function() self:SpawnBall(1) end, 2)
}

[Server]
void SpawnBall(number idx)
{
	for i = idx, idx + 5 do
		local angle = idx == 1 and i * 60 or i * 60 + 30
		local ball = self.pooledBalls[i]
		ball.Visible = true
		ball.Enable = true
		
		local kine = ball.KinematicbodyComponent
		kine:SetPosition(Vector2.zero)
		kine.MoveVelocity = _MathLogic:AngleToVector2(angle) * 2
	end
	
	idx = (idx + 6) % 12
	_TimerService:SetTimerOnce(function() self:SpawnBall(idx) end, 4)
}


--Events--


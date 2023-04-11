--Properties--

Component spawnManager
Component playerManager
Component stat
Component controller


--Methods--

[Client Only]
void OnBeginPlay()
{
	local player = _UserService.LocalPlayer
	self.stat = player.PlayerStat
	self.controller = player.PlayerControllerComponent
}

[Default]
Vector3 GerNearEnemyV3(Vector3 pos, number radius)
{
	local minDir = radius * radius
	local res = nil
	
	for mob, v in pairs(self.spawnManager.mobsClient) do
		local mobPos = mob.TransformComponent.WorldPosition
		local dx = mobPos.x - pos.x
		local dy = mobPos.y - pos.y
		local dir = dx * dx + dy * dy
		if dir <= minDir then
			minDir = dir
			res = mobPos
		end
	end
	
	return res
}

[Default]
Vector3 GerFarEnemyV3(Vector3 pos, number radius)
{
	local maxDir = -1
	local res = nil
	
	for mob, v in pairs(self.spawnManager.mobsClient) do
		local mobPos = mob.TransformComponent.WorldPosition
		local dx = mobPos.x - pos.x
		local dy = mobPos.y - pos.y
		local dir = dx * dx + dy * dy
		if dir >= maxDir then
			maxDir = dir
			res = mobPos
		end
	end
	
	return res
}

[Default]
Vector2 AngleToVector2(number angle)
{
	angle = (angle + 180) % 360
	local rad = self:AngleToRad(angle)
	return Vector2(math.cos(rad), math.sin(rad))
}

[Default]
number AngleToRad(number angle)
{
	local rad = angle / 180 * math.pi
	return rad
}

[Client Only]
number GetPlayerAngle()
{
	local ps = self.stat
	local up = ps.up - ps.down
	local right = ps.right - ps.left
	local angle;
	
	if up == 1 and right == 1 then
		angle = 225
	elseif up == 1 and right == 0 then
		angle = 270
	elseif up == 1 and right == -1 then
		angle = 315
	elseif up == 0 and right == 1 then
		angle = 180
	elseif up == 0 and right == -1 then
		angle = 0
	elseif up == -1 and right == 1 then
		angle = 135
	elseif up == -1 and right == 0 then
		angle = 90
	elseif up == -1 and right == -1 then
		angle = 45
	else
		angle = 0
	end
	
	return angle
}

[Client Only]
boolean IsPlayerLookingRight()
{
	return self.controller.LookDirectionX == 1
}

[Server]
Vector2 GetNearPlayerV2(Vector2 pos)
{
	local players = self.playerManager.livingPlayers
	if #players == 1 then
		local trans = nil
		for k, v in pairs(players) do
			trans = v
		end
		local res = trans.WorldPosition:ToVector2()
		return res
	else
		local minDist = nil
		local res = nil
		for k, v in pairs(players) do
			local playerPos = v.WorldPosition:ToVector2()
			local dx = playerPos.x - pos.x
			local dy = playerPos.y - pos.y
			local dist = dx * dx + dy * dy
			if minDist == nil or dist < minDist then
				minDist = dist
				res = playerPos
			end
		end
		return res
	end
}


--Events--


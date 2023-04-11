--Properties--

integer idx = nil


--Methods--

[Server Only]
void SetStat(number idx, Vector3 pos, string img, Vector2 offset, Vector2 size)
{
	self:SetStatClient(idx)
	
	local entity = self.Entity
	entity.TransformComponent.Position = pos
	entity.SpriteRendererComponent.SpriteRUID = img
	
	local trigger = entity.TriggerComponent
	trigger.BoxOffset = offset
	trigger.BoxSize = size
}

[Client]
void SetStatClient(number idx)
{
	self.idx = idx
}


--Events--


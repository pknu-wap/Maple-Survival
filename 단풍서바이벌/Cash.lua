--Properties--

Entity buyBtn
Component shopManager
string item = "WQS5GZC19"
any handler = nil


--Methods--

[Client Only]
void OnBeginPlay()
{
	self:SetCallback()
	
	self.handler = self.buyBtn:ConnectEvent(ButtonClickEvent, self.OnBuyItem)
}

[Server]
void SetCallback()
{
	_WorldShopService:SetProcessPurchaseCallback(self.ProcessPurchase)
}

[Client Only]
void OnBuyItem()
{
	_WorldShopService:PromptPurchase(self.item)
}

[Server]
boolean ProcessPurchase(any purchaseInfo)
{
	local userEntity = _UserService:GetUserEntityByUserId(purchaseInfo.UserId)
	        	 		
	if not _EntityService:IsValid(userEntity) then
		log_error("유효하지 않은 사용자! PurchaseId: " .. purchaseInfo.PurchaseId .. " / " ..
		"UserId: " .. purchaseInfo.UserId .. " / " ..
		"ProductId: " .. purchaseInfo.ProductId)
		return false   
	end	
	
	local id = purchaseInfo.UserId
	local oldMeso = _DBLogic:LoadMeso(id)
	local newMeso = oldMeso + 1
	newMeso = math.floor(newMeso)
	_DBLogic:SaveMeso(id, newMeso)
	self.shopManager:UpdateMeso(id, newMeso)
	log("구매 성공!")
	
	return true
}


--Events--


ITEM.name = "Consumable"
ITEM.description = "Something to eat"
ITEM.model = "models/kleiner.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Consumables"
ITEM.hunger = 0
ITEM.thirst = 0
ITEM.empty = false
ITEM.quantity = 1
ITEM.weight = 0
ITEM.flatweight = 0

function ITEM:GetDescription()
	local str = self.description
	if self.longdesc then
		str = str.."\n"..(self.longdesc or "")
	end
	
	if (self.entity) then
		return (self.description)
	else
        return (str)
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		local cooked = item:GetData("cooked", 1)
		local quantity = item:GetData("quantity", item.quantity)

		draw.SimpleText(quantity.."/"..item.quantity, "stalkerregularinvfont", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

function ITEM:DecideFunction()
	if ITEM.thirst > 0 then
		ITEM.functions.use = {
			name = "Drink",
			icon = "icon16/stalker/drink.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity))
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				item.player:SetAction("Drinking", 5)
				item.player:Freeze(true) 
				item.player:ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0 ), 1, 3 ) 
				timer.Simple(1, function() 
					client:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 1, 3 ) 
				end)
				timer.Simple(4, function() 
					client:SetHunger(hunger + item.hunger)
					client:SetThirst(thirst + item.thirst)
					client:Freeze(false)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				
				item.player:UpdateThirstState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 then
		ITEM.functions.use = {
			name = "Eat",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity))
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				item.player:SetAction("Eating", 5)
				item.player:Freeze(true) 
				item.player:ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0 ), 1, 3 ) 
				timer.Simple(1, function() 
					client:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 1, 3 ) 
				end)
				timer.Simple(4, function() 
					client:SetHunger(hunger + item.hunger)
					client:SetThirst(thirst + item.thirst)
					client:Freeze(false)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				item.player:UpdateHungerState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 and ITEM.thirst > 0 then
		ITEM.functions.use = {
			name = "Consume",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity))
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				item.player:SetAction("Consuming", 5)
				item.player:Freeze(true) 
				item.player:ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0 ), 1, 3 ) 
				timer.Simple(1, function() 
					client:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 1, 3 ) 
				end)
				timer.Simple(4, function() 
					client:SetHunger(hunger + item.hunger)
					client:SetThirst(thirst + item.thirst)
					client:Freeze(false)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				item.player:UpdateHungerState(item.player)
				item.player:UpdateThirstState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	end	
end

function ITEM:GetWeight()
  return self.flatweight + (self.weight * self:GetData("quantity", self.quantity))
end
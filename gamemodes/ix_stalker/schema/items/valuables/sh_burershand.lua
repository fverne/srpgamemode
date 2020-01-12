ITEM.name = "Burer's hand"
ITEM.model ="models/kek1ch/item_burer_hand.mdl"
ITEM.description = "A severed burer's hand. It feels dry and brittle."
ITEM.longdesc = "Burer's hand seems to play a vital role in the creature's use of the telekinetic powers. Scientists will gladly examine it in the hope of finding the source of mutation. Smells like old socks and bad kimchee."
ITEM.width = 1
ITEM.height = 1
ITEM.price = 4000
ITEM.flag = "A"
ITEM.attribBoosts = { ["luck"] = 4 }
ITEM.value = ITEM.price*1*1
ITEM.weight = 3

ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
			},
			["self"] = {
				["OwnerName"] = "self",
				["Name"] = "",
				["UniqueID"] = "burer1",
				["Bone"] = "pelvis",
				["ClassName"] = "model",
				["Position"] = Vector(-5.272, -1.367, 1.286),
				["Size"] = 0.75,
				["Angles"] = Angle(-16.748, -100.096, 39.161),
				["Model"] = "models/kek1ch/item_burer_hand.mdl",
			},
		},
	},
	["self"] = {
		["UniqueID"] = "burer2",
		["Name"] = "",
		["ClassName"] = "group",
		["OwnerName"] = "self",
		["EditorExpand"] = true,
	},
},
}

-- On player uneqipped the item, Removes a weapon from the player and keep the ammo in the item.
ITEM.functions.EquipUn = { -- sorry, for name order.
	name = "Unequip",
	tip = "equipTip",
	icon = "icon16/stalker/unequip.png",
	OnRun = function(item)
		item:RemovePart(item.player)

		return false
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") == true and
			hook.Run("CanPlayerUnequipItem", client, item) != false and item.invID == client:GetCharacter():GetInventory():GetID()
	end
}

-- On player eqipped the item, Gives a weapon to player and load the ammo data from the item.
ITEM.functions.Equip = {
	name = "Equip",
	tip = "equipTip",
	icon = "icon16/stalker/equip.png",
	OnRun = function(item)
		local char = item.player:GetCharacter()
		local items = char:GetInventory():GetItems()

		for _, v in pairs(items) do
			if (v.id != item.id) then
				local itemTable = ix.item.instances[v.id]

				if (itemTable.pacData and v.outfitCategory == item.outfitCategory and itemTable:GetData("equip")) then
					item.player:Notify("You're already equipping this kind of outfit")

					return false
				end
			end
		end

		item:SetData("equip", true)
		item.player:AddPart(item.uniqueID, item)

		if (item.attribBoosts) then
			for k, v in pairs(item.attribBoosts) do
				char:AddBoost(item.uniqueID, k, v)
			end
		end

		item:OnEquipped()
		return false
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item:GetData("equip") != true and
			hook.Run("CanPlayerEquipItem", client, item) != false and item.invID == client:GetCharacter():GetInventory():GetID()
	end
}
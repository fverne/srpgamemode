ITEM.name = "Spider Shishkebab"
ITEM.description = "A meal made from a spider, cooked in the zone."
ITEM.longdesc = "A skewer of cooked, cubed Spider on a spit. The meat is tough and sinewy with a slightly sour taste, practically begging to be washed down with a swig of vodka or a can of beer."
ITEM.model = "models/lostsignalproject/items/consumable/meat_tushkano.mdl"

ITEM.price = 560
ITEM.width = 1
ITEM.height = 1

ITEM.WeightPerHunger = 0.025

ITEM.img = ix.util.GetMaterial("cotz/ui/icons/food_8.png")

ITEM.sound = "stalkersound/inv_eat_mutant_food.mp3"
ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("debuff_radiation", 10, { amount = 2.5/20 })
	ix.chat.Send(item.player, "iteminternal", "eats a bit of their "..item.name..".", false)
end)


function ITEM:PopulateTooltipIndividual(tooltip)
	if !IsValid(self.entity) then
		
		ix.util.PropertyDesc(tooltip, "Mutant Meal", Color(0, 255, 0))
	end
end
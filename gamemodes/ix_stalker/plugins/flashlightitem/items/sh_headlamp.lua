ITEM.name = "Headlamp"
ITEM.model = "models/kek1ch/dev_torch_light.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A standard flashlight that can be toggled."
ITEM.category = "Tools"
ITEM.busflag = {"hardware"}
ITEM.price = 2500
ITEM.repairCost = ITEM.price/100*1

ITEM:Hook("drop", function(item)
	item.player:Flashlight(false)
end)

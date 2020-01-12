ITEM.name = "Technician's Manual"
ITEM.desc = "A book that can introduce someone to the art of being a technician."
ITEM.model = "models/kek1ch/book2.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.flag = "A"
ITEM.weight = 0.5


ITEM.functions.read = {
	name = "Learn",
	icon = "icon16/stalker/read.png",
	OnCanRun = function(item)				
		return (!IsValid(item.entity))
	end,
	OnRun = function(item, data)
		local client = item.player
		local char = client:GetCharacter()
		local inv = char:GetInventory()

		
		client:GetCharacter():SetFlags("2")
		client:Notify("Technician flag added.")
		item.player:EmitSound("stalkersound/money.mp3")
		
		return true
	end,
}
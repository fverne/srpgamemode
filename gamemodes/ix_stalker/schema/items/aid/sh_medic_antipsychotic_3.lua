ITEM.name = "Zotepine Tablets"
ITEM.description = "A small blister packet."
ITEM.longdesc = "Zotepine, like Chlorpromazine, often called 'Psi-Block' by STALKERs that use it as a protectant against psychic attacks on their minds from enemies such as the infamous Controller. It only works for a short while after ingesting. This pill however has a much stronger effect, but you pay for the efficiency."
ITEM.model = "models/lostsignalproject/items/medical/psi_blockade.mdl"

ITEM.sound = "stalkersound/inv_eat_pills.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 2100

ITEM.quantity = 8
ITEM.psyblock = 75 --75% psyblock

ITEM.weight = 0.050
ITEM.flatweight = 0.005

ITEM.functions.use = {
	name = "Heal",
	icon = "icon16/stalker/heal.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)

		--item.player:AddBuff("buff_psysuppress", 180, { })
		--item.player:AddBuff("buff_psyblock", 180, { amount = self.psyblock })
		ix.chat.Send(item.player, "iteminternal", "pops out a pill from the "..item.name.." package and swallows it.", false)

		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end
		
		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}
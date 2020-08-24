ITEM.name = "valuable"
ITEM.description = "valuable item."
ITEM.longdesc = "No Longer Description Available"
ITEM.model = "models/Gibs/HGIBS.mdl"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 0

ITEM.flatweight = 0
ITEM.weight = 0

function ITEM:PopulateTooltip(tooltip)
    if !self.entity then
        ix.util.PropertyDesc(tooltip, "Valuable", Color(225, 223, 0))
    end

    if (self.PopulateTooltipIndividual) then
      self:PopulateTooltipIndividual(tooltip)
    end
end

function ITEM:GetWeight()
	if (self.quantity) then
		return self.flatweight + (self.weight * self:GetData("quantity", self.quantity))
	else
		return self.flatweight
	end
end
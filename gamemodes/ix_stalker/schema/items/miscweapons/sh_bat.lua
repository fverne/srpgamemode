ITEM.name = "Bat"
ITEM.description = "A baseball bat."
ITEM.model = "models/weapons/tfa_nmrih/w_me_bat_metal.mdl"
ITEM.longdesc = "A worn aluminium bat, with several dents in it. The leather wrapping around the handle is torn in several places."
ITEM.class = "tfa_nmrih_bat"
ITEM.weaponCategory = "secondary"
ITEM.price = 450
ITEM.busflag = {"melee"}
ITEM.height = 1
ITEM.width = 3
ITEM.category = "Melee"
ITEM.canAttach = false
ITEM.repairCost = ITEM.price/100*1
ITEM.weight = 2
ITEM.iconCam = {
	pos = Vector(-23, 0, 5),
	ang = Angle(0, -0, 90),
	fov = 70
}
ITEM.modifier = 20
ITEM.isPLWeapon = true

ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
				[1] = {
					["children"] = {
					},
					["self"] = {
						["Angles"] = Angle(0.719, 93.188, -174.281),
						["Position"] = Vector(-7.366, 6.884, 6.301),
						["Model"] = "models/weapons/tfa_nmrih/w_me_bat_metal.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "7777994673",
						["Bone"] = "chest",
						["Name"] = "bat",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1237770522",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "tfa_nmrih_bat@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "2789376348",
		["EditorExpand"] = true,
	},
},
}

function ITEM:OnInstanced(invID, x, y)
	if !self:GetData("durability") then
		self:SetData("durability", 10000)
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		//Equipsquare
		if (item:GetData("equip")) then
			surface.SetDrawColor(110, 255, 110, 255)
			--surface.DrawRect(w - 14, h - 14, 8, 8)
		else
			surface.SetDrawColor(255, 110, 110, 255)
		end

		surface.SetMaterial(item.equipIcon)
		surface.DrawTexturedRect(w-23,h-23,19,19)

		//Durability bar
		if item:GetData("durability") then
			local dura = item:GetData("durability",10000)
			if (item:GetOwner():GetWeapon( item.class )) and (item:GetData("equip")) then
				surface.SetDrawColor( Color( 255, 255, 255, 255 ) )
				surface.DrawOutlinedRect( 7, h - 15, 41, 9 )
				if (dura > 0) then
					surface.SetDrawColor(110, 255, 110, 100)
					surface.DrawRect(8, h - 14, (dura/10000) * 40, 8)
				else
					surface.SetDrawColor(255, 110, 110, 100)
					surface.DrawRect(8, h - 14, 40, 8)
				end
			else
				surface.SetDrawColor( Color( 255, 255, 255, 255 ) )
				surface.DrawOutlinedRect( 7, h - 15, 41, 9 )
				if (dura > 0) then
					surface.SetDrawColor(110, 255, 110, 100)
					surface.DrawRect(8, h - 14, (dura/10000) * 40, 8)
				else
					surface.SetDrawColor(255, 110, 110, 100)
					surface.DrawRect(8, h - 14, 40, 8)
				end
			end
		end
	end

	function ITEM:PopulateTooltip(tooltip)
		if (self:GetData("equip")) then
			local name = tooltip:GetRow("name")
			name:SetBackgroundColor(derma.GetColor("Success", tooltip))
		end
	end
end
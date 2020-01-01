ITEM.name = "Exohelm"
ITEM.description = "A high-end helmet."
ITEM.longdesc = "This helmet resembles that of an ordinary exoskeleton, but differs sightly from its standard counterpart and has differing protective characteristics. Good protection from gunfire and high calibre rounds in combination with anomaly protection make this helmet one of the best in its category."
ITEM.model = "models/kek1ch/helm_tactic.mdl"
ITEM.price = 50000
--ITEM.busflag = {"ARMOR4", "SPECIAL6_1"}
ITEM.busflag = {"headgear1_1_1"}
ITEM.br = 0.25
ITEM.fbr = 0
ITEM.ar = 0.2
ITEM.far = 0
ITEM.radProt = 0.2
ITEM.isGasmask = true
ITEM.isHelmet = true
ITEM.ballisticlevels = {"lll-a"}
ITEM.ballisticrpglevels = {["head"] = "20"}
ITEM.anomalousrpglevels = {"22","2","10","10","5"}
ITEM.Special = {"Heavy","Psy+10"}
ITEM.repairCost = ITEM.price/100*1

ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
			},
			["self"] = {
				["Skin"] = 0,
				["Invert"] = false,
				["LightBlend"] = 1,
				["CellShade"] = 0,
				["OwnerName"] = "self",
				["AimPartName"] = "",
				["IgnoreZ"] = false,
				["AimPartUID"] = "",
				["Passes"] = 1,
				["Name"] = "",
				["NoTextureFiltering"] = false,
				["DoubleFace"] = false,
				["PositionOffset"] = Vector(0, 0, 0),
				["IsDisturbing"] = false,
				["Fullbright"] = false,
				["EyeAngles"] = false,
				["DrawOrder"] = 0,
				["TintColor"] = Vector(0, 0, 0),
				["UniqueID"] = "4166330262",
				["Translucent"] = true,
				["LodOverride"] = -1,
				["BlurSpacing"] = 0,
				["Alpha"] = 1,
				["Material"] = "",
				["UseWeaponColor"] = false,
				["UsePlayerColor"] = false,
				["UseLegacyScale"] = false,
				["Bone"] = "head",
				["Color"] = Vector(255, 255, 255),
				["Brightness"] = 1,
				["BoneMerge"] = false,
				["BlurLength"] = 0,
				["Position"] = Vector(-73.03099822998, -10.041000366211, -1.7330000400543),
				["AngleOffset"] = Angle(0, 0, 0),
				["AlternativeScaling"] = false,
				["Hide"] = false,
				["OwnerEntity"] = false,
				["Scale"] = Vector(1.0299999713898, 1, 1),
				["ClassName"] = "model",
				["EditorExpand"] = true,
				["Size"] = 1.1499999761581,
				["ModelFallback"] = "",
				["Angles"] = Angle(1.9980000257492, -82.575248718262, -88.762619018555),
				["TextureFilter"] = 3,
				["Model"] = "models/projectpt/headwear_radsuit_visor.mdl",
				["BlendMode"] = "",
			},
		},
	},
	["self"] = {
		["DrawOrder"] = 0,
		["UniqueID"] = "450234006",
		["AimPartUID"] = "",
		["Hide"] = false,
		["Duplicate"] = false,
		["ClassName"] = "group",
		["OwnerName"] = "self",
		["IsDisturbing"] = false,
		["Name"] = "radsuitvisor",
		["EditorExpand"] = false,
	},
},
}

ITEM.pacDataExpedition = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
				[1] = {
					["children"] = {
					},
					["self"] = {
						["Jiggle"] = false,
						["DrawOrder"] = 0,
						["AlternativeBones"] = true,
						["FollowPartName"] = "",
						["Angles"] = Angle(0, 9.6999998092651, 0),
						["OwnerName"] = "self",
						["AimPartName"] = "",
						["FollowPartUID"] = "",
						["Bone"] = "head",
						["InvertHideMesh"] = false,
						["ScaleChildren"] = false,
						["ClassName"] = "bone",
						["FollowAnglesOnly"] = false,
						["Position"] = Vector(-0.40000000596046, 0, 0),
						["AimPartUID"] = "",
						["UniqueID"] = "1788525719",
						["Hide"] = false,
						["Name"] = "",
						["Scale"] = Vector(1, 1, 1),
						["MoveChildrenToOrigin"] = false,
						["EditorExpand"] = false,
						["Size"] = 1.1000000238419,
						["PositionOffset"] = Vector(0, 0, 0),
						["IsDisturbing"] = false,
						["AngleOffset"] = Angle(0, 0, 0),
						["EyeAngles"] = false,
						["HideMesh"] = false,
					},
				},
				[2] = {
					["children"] = {
					},
					["self"] = {
						["Jiggle"] = false,
						["DrawOrder"] = 0,
						["AlternativeBones"] = false,
						["FollowPartName"] = "",
						["Angles"] = Angle(0, 0, 0),
						["OwnerName"] = "self",
						["AimPartName"] = "",
						["FollowPartUID"] = "",
						["Bone"] = "neck",
						["InvertHideMesh"] = false,
						["ScaleChildren"] = false,
						["ClassName"] = "bone",
						["FollowAnglesOnly"] = false,
						["Position"] = Vector(0, 0, 0),
						["AimPartUID"] = "",
						["UniqueID"] = "2069354863",
						["Hide"] = false,
						["Name"] = "",
						["Scale"] = Vector(1, 1, 1),
						["MoveChildrenToOrigin"] = false,
						["EditorExpand"] = false,
						["Size"] = 1,
						["PositionOffset"] = Vector(0, 0, 0),
						["IsDisturbing"] = false,
						["AngleOffset"] = Angle(0, 0, 0),
						["EyeAngles"] = false,
						["HideMesh"] = true,
					},
				},
				[3] = {
					["children"] = {
					},
					["self"] = {
						["Jiggle"] = false,
						["DrawOrder"] = 0,
						["AlternativeBones"] = false,
						["FollowPartName"] = "",
						["Angles"] = Angle(0, 0, 0),
						["OwnerName"] = "self",
						["AimPartName"] = "",
						["FollowPartUID"] = "",
						["Bone"] = "spine 4",
						["InvertHideMesh"] = false,
						["ScaleChildren"] = false,
						["ClassName"] = "bone",
						["FollowAnglesOnly"] = false,
						["Position"] = Vector(0, 0, 0),
						["AimPartUID"] = "",
						["UniqueID"] = "1101017389",
						["Hide"] = false,
						["Name"] = "",
						["Scale"] = Vector(1, 1, 1),
						["MoveChildrenToOrigin"] = false,
						["EditorExpand"] = false,
						["Size"] = 1,
						["PositionOffset"] = Vector(0, 0, 0),
						["IsDisturbing"] = false,
						["AngleOffset"] = Angle(0, 0, 0),
						["EyeAngles"] = false,
						["HideMesh"] = true,
					},
				},
			},
			["self"] = {
				["Skin"] = 0,
				["Invert"] = false,
				["LightBlend"] = 1,
				["CellShade"] = 0,
				["OwnerName"] = "self",
				["AimPartName"] = "",
				["IgnoreZ"] = false,
				["AimPartUID"] = "",
				["Passes"] = 1,
				["Name"] = "",
				["NoTextureFiltering"] = false,
				["DoubleFace"] = false,
				["PositionOffset"] = Vector(0, 0, 0),
				["IsDisturbing"] = false,
				["Fullbright"] = false,
				["EyeAngles"] = false,
				["DrawOrder"] = 0,
				["TintColor"] = Vector(0, 0, 0),
				["UniqueID"] = "4166330262",
				["Translucent"] = true,
				["LodOverride"] = -1,
				["BlurSpacing"] = 0,
				["Alpha"] = 1,
				["Material"] = "",
				["UseWeaponColor"] = false,
				["UsePlayerColor"] = false,
				["UseLegacyScale"] = false,
				["Bone"] = "head",
				["Color"] = Vector(255, 255, 255),
				["Brightness"] = 1,
				["BoneMerge"] = true,
				["BlurLength"] = 0,
				["Position"] = Vector(0, 0, 0),
				["AngleOffset"] = Angle(0, 0, 0),
				["AlternativeScaling"] = false,
				["Hide"] = false,
				["OwnerEntity"] = false,
				["Scale"] = Vector(1, 1, 1),
				["ClassName"] = "model",
				["EditorExpand"] = true,
				["Size"] = 1,
				["ModelFallback"] = "",
				["Angles"] = Angle(0, 0, 0),
				["TextureFilter"] = 3,
				["Model"] = "models/projectpt/headwear_radsuit_visor.mdl",
				["BlendMode"] = "",
			},
		},
	},
	["self"] = {
		["DrawOrder"] = 0,
		["UniqueID"] = "450234006",
		["AimPartUID"] = "",
		["Hide"] = true,
		["Duplicate"] = false,
		["ClassName"] = "group",
		["OwnerName"] = "self",
		["IsDisturbing"] = false,
		["Name"] = "radsuitvisor",
		["EditorExpand"] = false,
	},
},
}

ITEM.pacDataBerill1 = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
			},
			["self"] = {
				["Skin"] = 0,
				["Invert"] = false,
				["LightBlend"] = 1,
				["CellShade"] = 0,
				["OwnerName"] = "self",
				["AimPartName"] = "",
				["IgnoreZ"] = false,
				["AimPartUID"] = "",
				["Passes"] = 1,
				["Name"] = "",
				["NoTextureFiltering"] = false,
				["DoubleFace"] = false,
				["PositionOffset"] = Vector(0, 0, 0),
				["IsDisturbing"] = false,
				["Fullbright"] = false,
				["EyeAngles"] = false,
				["DrawOrder"] = 0,
				["TintColor"] = Vector(0, 0, 0),
				["UniqueID"] = "4166330262",
				["Translucent"] = true,
				["LodOverride"] = -1,
				["BlurSpacing"] = 0,
				["Alpha"] = 1,
				["Material"] = "",
				["UseWeaponColor"] = false,
				["UsePlayerColor"] = false,
				["UseLegacyScale"] = false,
				["Bone"] = "head",
				["Color"] = Vector(255, 255, 255),
				["Brightness"] = 1,
				["BoneMerge"] = false,
				["BlurLength"] = 0,
				["Position"] = Vector(-67.331001281738, -10.041000366211, -1.4329999685287),
				["AngleOffset"] = Angle(0, 0, 0),
				["AlternativeScaling"] = false,
				["Hide"] = false,
				["OwnerEntity"] = false,
				["Scale"] = Vector(1.0299999713898, 1, 1),
				["ClassName"] = "model",
				["EditorExpand"] = true,
				["Size"] = 1.05,
				["ModelFallback"] = "",
				["Angles"] = Angle(1.9980000257492, -82.575248718262, -88.762619018555),
				["TextureFilter"] = 3,
				["Model"] = "models/projectpt/headwear_radsuit_visor.mdl",
				["BlendMode"] = "",
			},
		},
	},
	["self"] = {
		["DrawOrder"] = 0,
		["UniqueID"] = "450234006",
		["AimPartUID"] = "",
		["Hide"] = false,
		["Duplicate"] = false,
		["ClassName"] = "group",
		["OwnerName"] = "self",
		["IsDisturbing"] = false,
		["Name"] = "radsuitvisor",
		["EditorExpand"] = false,
	},
},	
}

ITEM.pacDataNBC = {
	
}
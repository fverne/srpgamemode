ITEM.name = "P226r"
ITEM.description = "The SIG Sauer P226 is a full-sized, service-type pistol made by SIG Sauer. It is chambered for the 9×19mm Parabellum, .40 S&W, .357 SIG, and .22 Long Rifle. It is essentially the same basic design of the SIG Sauer P220, but developed to use higher capacity, double stack magazines in place of the single stack magazines of the P220. These particular variants fire the 9x19mm Round."
ITEM.model = "models/weapons/ethereal/w_p226.mdl"
ITEM.class = "cw_kk_ins2_p226"
ITEM.weaponCategory = "secondary"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 11400
ITEM.busflag = {"guns3_1"}
ITEM.isWeapon = true
ITEM.isPLWeapon = true
ITEM.isCW = true
ITEM.holsterDrawInfo = {
	bone = "ValveBiped.Bip01_R_Thigh",
	ang = Angle(-0, -0,90),
	pos = Vector(-6, 8, -4),
}
ITEM.modifier = 13
ITEM.weight = 0.964
ITEM.repairCost = ITEM.price/100*1
ITEM.Range = 50
ITEM.RoF = "S/3/-"
ITEM.Dmg = "1d10+3"
ITEM.Pen = 4
ITEM.Mag = 15
ITEM.Rld = "Ready"
ITEM.Special = "CQC, Subsonic"
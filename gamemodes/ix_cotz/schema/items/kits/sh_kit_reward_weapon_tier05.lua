ITEM.name = "Professional Weapon Box"
ITEM.description= "Feels heavy, has something inside."
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"

ITEM.width = 4
ITEM.height = 2
ITEM.flag = "A"

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, -0.68, 200),
	ang = Angle(449.8, 90.22, 0),
	fov = 13.55
}

ITEM.upgradeItem = "kit_reward_weapon_tier06"
ITEM.upgradeCost = 65000

ITEM.items = {
	{
		{3, "task_reward_weapon_05_low"},
		{1, "task_reward_weapon_05_high"},
	},
}
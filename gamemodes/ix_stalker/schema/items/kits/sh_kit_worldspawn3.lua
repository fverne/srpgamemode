ITEM.name = "Old Parcel (Large)"
ITEM.description= "This box is addressed for someone a long time ago, but the label is too worn to see the receipent."
ITEM.model = "models/props_junk/cardboard_box003a.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.flag = "A"

ITEM.items[1] = {
	dropAmount = 2,
	dropRareChance = 40,
	dropVeryRareChance = 10,
	itemsCommon = {
		{"9x18zl", {["quantity"] = math.random(8)}},
		{"9x19zl", {["quantity"] = math.random(8)}},
		{"12gaugezl", {["quantity"] = math.random(3)}},
		{"12gaugebd", {["quantity"] = math.random(3)}},
		{"22lrzl", {["quantity"] = math.random(8)}},
		{"762x25zl", {["quantity"] = math.random(8)}},
		{"milkold", {["quantity"] = math.random(2)}},
		{"oldmeat", {["quantity"] = math.random(2)}},
		{"waterdirty", {["quantity"] = math.random(2)}},
		{"beer", {["quantity"] = math.random(2)}},
		{"beer2", {["quantity"] = math.random(2)}},
		{"beer3", {["quantity"] = math.random(2)}},
		{"beer4", {["quantity"] = math.random(2)}},
		{"vodka", {["quantity"] = math.random(2)}},
		{"vodka2", {["quantity"] = math.random(2)}},
		{"vodka2", {["quantity"] = math.random(2)}},
		{"moonshine", {["quantity"] = math.random(2)}},
		{"cig1", {["quantity"] = math.random(2)}},
		{"cannedbeans", {["quantity"] = 1}},
		{"cannedchilibeans", {["quantity"] = 1}},
		{"cannedcorn", {["quantity"] = 1}},
		{"cannedtomato", {["quantity"] = 1}},
		{"cannedtuna", {["quantity"] = 1}},
		{"cannedtushonka", {["quantity"] = 1}},
		{"cannedolives", {["quantity"] = 1}},
		{"energydrink"},
		{"bandage"},
		{"tooloil1"},
		{"component", {["quantity"] = math.random(5, 15)}},
		{"diecup"},
		{"caffeine", {["quantity"] = math.random(3)}},
	},
	itemsRare = {
/*		{"makarov", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"rugermk3", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"beretta92", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"brhp", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"glock17", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"p99", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"fort12", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"toz34short", {["ammo"] = math.random(0,2)}, {["durability"] = math.random(8)}},
		{"tokarev", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
		{"sawnoff", {["ammo"] = math.random(0,2)}, {["durability"] = math.random(8)}},
		{"cz52", {["ammo"] = math.random(0,3)}, {["durability"] = math.random(8)}},
*/		{"radio"},
		{"headlamp"},
		{"geigercounter"},
		{"pda"},
		{"documents4"},
	},
	itemsVeryRare = {
		{"documents0"},
		{"documents1"},
		{"documents2"},
		{"documents8"},
		{"documents9"},
	},
}

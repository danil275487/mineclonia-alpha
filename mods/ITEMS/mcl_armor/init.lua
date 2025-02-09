local S = minetest.get_translator("mcl_armor")

dofile(minetest.get_modpath(minetest.get_current_modname()).."/armor.lua")

-- Regisiter Head Armor

minetest.register_tool("mcl_armor:helmet_leather", {
	description = S("Leather Cap"),
	inventory_image = "mcl_armor_inv_helmet_leather.png",
	groups = { armor_head=1, mcl_armor_points=1, mcl_armor_uses=56 },
	_repair_material = "mcl_core:leather",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:helmet_iron", {
	description = S("Iron Helmet"),
	inventory_image = "mcl_armor_inv_helmet_iron.png",
	groups = { armor_head=1, mcl_armor_points=2, mcl_armor_uses=166 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:helmet_gold", {
	description = S("Golden Helmet"),
	inventory_image = "mcl_armor_inv_helmet_gold.png",
	groups = { armor_head=1, mcl_armor_points=2, mcl_armor_uses=78 },
	_repair_material = "mcl_core:gold_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:helmet_diamond",{
	description = S("Diamond Helmet"),
	inventory_image = "mcl_armor_inv_helmet_diamond.png",
	groups = { armor_head=1, mcl_armor_points=3, mcl_armor_uses=364, mcl_armor_toughness=2 },
	_repair_material = "mcl_core:diamond",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:helmet_chain", {
	description = S("Chain Helmet"),
	inventory_image = "mcl_armor_inv_helmet_chain.png",
	groups = { armor_head=1, mcl_armor_points=2, mcl_armor_uses=166 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

-- Regisiter Torso Armor

minetest.register_tool("mcl_armor:chestplate_leather", {
	description = S("Leather Tunic"),
	inventory_image = "mcl_armor_inv_chestplate_leather.png",
	groups = { armor_torso=1, mcl_armor_points=3, mcl_armor_uses=81 },
	_repair_material = "mcl_core:leather",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:chestplate_iron", {
	description = S("Iron Chestplate"),
	inventory_image = "mcl_armor_inv_chestplate_iron.png",
	groups = { armor_torso=1, mcl_armor_points=6, mcl_armor_uses=241 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:chestplate_gold", {
	description = S("Golden Chestplate"),
	inventory_image = "mcl_armor_inv_chestplate_gold.png",
	groups = { armor_torso=1, mcl_armor_points=5, mcl_armor_uses=113 },
	_repair_material = "mcl_core:gold_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:chestplate_diamond",{
	description = S("Diamond Chestplate"),
	inventory_image = "mcl_armor_inv_chestplate_diamond.png",
	groups = { armor_torso=1, mcl_armor_points=8, mcl_armor_uses=529, mcl_armor_toughness=2 },
	_repair_material = "mcl_core:diamond",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:chestplate_chain", {
	description = S("Chain Chestplate"),
	inventory_image = "mcl_armor_inv_chestplate_chain.png",
	groups = { armor_torso=1, mcl_armor_points=5, mcl_armor_uses=241 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

-- Regisiter Leg Armor

minetest.register_tool("mcl_armor:leggings_leather", {
	description = S("Leather Pants"),
	inventory_image = "mcl_armor_inv_leggings_leather.png",
	groups = { armor_legs=1, mcl_armor_points=2, mcl_armor_uses=76 },
	_repair_material = "mcl_core:leather",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:leggings_iron", {
	description = S("Iron Leggings"),
	inventory_image = "mcl_armor_inv_leggings_iron.png",
	groups = { armor_legs=1, mcl_armor_points=5, mcl_armor_uses=226 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:leggings_gold", {
	description = S("Golden Leggings"),
	inventory_image = "mcl_armor_inv_leggings_gold.png",
	groups = { armor_legs=1, mcl_armor_points=3, mcl_armor_uses=106 },
	_repair_material = "mcl_core:gold_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:leggings_diamond",{
	description = S("Diamond Leggings"),
	inventory_image = "mcl_armor_inv_leggings_diamond.png",
	groups = { armor_legs=1, mcl_armor_points=6, mcl_armor_uses=496, mcl_armor_toughness=2 },
	_repair_material = "mcl_core:diamond",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:leggings_chain", {
	description = S("Chain Leggings"),
	inventory_image = "mcl_armor_inv_leggings_chain.png",
	groups = {armor_legs=1, mcl_armor_points=4, mcl_armor_uses=226 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})
-- Regisiter Boots

minetest.register_tool("mcl_armor:boots_leather", {
	description = S("Leather Boots"),
	inventory_image = "mcl_armor_inv_boots_leather.png",
	groups = {armor_feet=1, mcl_armor_points=1, mcl_armor_uses=66 },
	_repair_material = "mcl_core:leather",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:boots_iron", {
	description = S("Iron Boots"),
	inventory_image = "mcl_armor_inv_boots_iron.png",
	groups = {armor_feet=1, mcl_armor_points=2, mcl_armor_uses=196 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:boots_gold", {
	description = S("Golden Boots"),
	inventory_image = "mcl_armor_inv_boots_gold.png",
	groups = {armor_feet=1, mcl_armor_points=1, mcl_armor_uses=92 },
	_repair_material = "mcl_core:gold_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:boots_diamond",{
	description = S("Diamond Boots"),
	inventory_image = "mcl_armor_inv_boots_diamond.png",
	groups = {armor_feet=1, mcl_armor_points=3, mcl_armor_uses=430, mcl_armor_toughness=2 },
	_repair_material = "mcl_core:diamond",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

minetest.register_tool("mcl_armor:boots_chain", {
	description = S("Chain Boots"),
	inventory_image = "mcl_armor_inv_boots_chain.png",
	groups = {armor_feet=1, mcl_armor_points=1, mcl_armor_uses=196 },
	_repair_material = "mcl_core:iron_ingot",

	on_place = armor.on_armor_use,
	on_secondary_use = armor.on_armor_use,
})

-- Register Craft Recipies

local craft_ingreds = {
	leather = "mcl_core:leather",
	iron = "mcl_core:iron_ingot",
	gold = "mcl_core:gold_ingot",
	diamond = "mcl_core:diamond",
}

for k, v in pairs(craft_ingreds) do
	-- material
	if v ~= nil then
		minetest.register_craft({
			output = "mcl_armor:helmet_"..k,
			recipe = {
				{v, v, v},
				{v, "", v},
				{"", "", ""},
			},
		})
		minetest.register_craft({
			output = "mcl_armor:chestplate_"..k,
			recipe = {
				{v, "", v},
				{v, v, v},
				{v, v, v},
			},
		})
		minetest.register_craft({
			output = "mcl_armor:leggings_"..k,
			recipe = {
				{v, v, v},
				{v, "", v},
				{v, "", v},
			},
		})
		minetest.register_craft({
			output = "mcl_armor:boots_"..k,
			recipe = {
				{v, "", v},
				{v, "", v},
			},
		})
	end
end


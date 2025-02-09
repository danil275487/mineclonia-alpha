local S = minetest.get_translator("mcl_farming")

minetest.register_craftitem("mcl_farming:wheat_seeds", {
	-- Original Minecraft name: “Seeds”
	description = S("Seeds"),
	groups = { craftitem=1 },
	inventory_image = "mcl_farming_wheat_seeds.png",
	on_place = function(itemstack, placer, pointed_thing)
		return mcl_farming:place_seed(itemstack, placer, pointed_thing, "mcl_farming:wheat_1")
	end
})

local sel_heights = {
	-5/16,
	-2/16,
	0,
	3/16,
	5/16,
	6/16,
	7/16,
}

for i=1,7 do
	minetest.register_node("mcl_farming:wheat_"..i, {
		description = S("Premature Wheat Plant (Stage @1)", i),
		paramtype = "light",
		paramtype2 = "meshoptions",
		place_param2 = 3,
		sunlight_propagates = true,
		walkable = false,
		drawtype = "plantlike",
		drop = "mcl_farming:wheat_seeds",
		tiles = {"mcl_farming_wheat_stage_"..(i-1)..".png"},
		inventory_image = "mcl_farming_wheat_stage_"..(i-1)..".png",
		wield_image = "mcl_farming_wheat_stage_"..(i-1)..".png",
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, sel_heights[i], 0.5}
			},
		},
		groups = {dig_immediate=3, not_in_creative_inventory=1, plant=1,attached_node=1, dig_by_water=1,destroy_by_lava_flow=1, },
		sounds = mcl_sounds.node_sound_leaves_defaults(),
		_mcl_blast_resistance = 0,
	})
end

minetest.register_node("mcl_farming:wheat", {
	description = S("Mature Wheat Plant"),
	sunlight_propagates = true,
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 3,
	walkable = false,
	drawtype = "plantlike",
	tiles = {"mcl_farming_wheat_stage_7.png"},
	inventory_image = "mcl_farming_wheat_stage_7.png",
	wield_image = "mcl_farming_wheat_stage_7.png",
	drop = {
		max_items = 4,
		items = {
			{ items = {'mcl_farming:wheat_seeds'} },
			{ items = {'mcl_farming:wheat_seeds'}, rarity = 2},
			{ items = {'mcl_farming:wheat_seeds'}, rarity = 5},
			{ items = {'mcl_farming:wheat_item'} }
		}
	},
	groups = {dig_immediate=3, not_in_creative_inventory=1, plant=1,attached_node=1, dig_by_water=1,destroy_by_lava_flow=1, },
	sounds = mcl_sounds.node_sound_leaves_defaults(),
	_mcl_blast_resistance = 0,
})

mcl_farming:add_plant("plant_wheat", "mcl_farming:wheat", {"mcl_farming:wheat_1", "mcl_farming:wheat_2", "mcl_farming:wheat_3", "mcl_farming:wheat_4", "mcl_farming:wheat_5", "mcl_farming:wheat_6", "mcl_farming:wheat_7"}, 25, 20)

minetest.register_craftitem("mcl_farming:wheat_item", {
	description = S("Wheat"),
	inventory_image = "mcl_farming_wheat_harvested.png",
	groups = { craftitem = 1 },
})

minetest.register_craft({
	output = "mcl_farming:bread",
	recipe = {
		{'mcl_farming:wheat_item', 'mcl_farming:wheat_item', 'mcl_farming:wheat_item'},
	}
})

minetest.register_craftitem("mcl_farming:bread", {
	description = S("Bread"),
	inventory_image = "mcl_farming_bread.png",
	groups = {food=2},
	on_place = minetest.item_eat(5),
	on_secondary_use = minetest.item_eat(5),
})

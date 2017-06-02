--edoylerite--
--nodes--
minetest.register_node("exoticores:stone_with_edoylerite", {
	tiles = {"exoticores_stone.png^exoticores_edoylerite.png"},
	groups = {cracky=1},
	description = "edoylerite Ore",
	drop = "exoticores:edoylerite_lump",
	paramtype = "light",
	light_source = 7,
})

minetest.register_node("exoticores:edoylerite_block", {
	tiles = {"exoticores_edoylerite_block.png"},
	groups = {cracky=1},
	description = "edoylerite Block",
	paramtype = "light",
	light_source = 8,
})
--crafting--
minetest.register_craft({
	type = "cooking",
	output = "exoticores:edoylerite_bar",
	recipe = "exoticores:edoylerite_lump",
})
minetest.register_craft({
	output = 'exoticores:edoylerite_block',
	recipe = {
		{'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar'},
		{'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar'},
		{'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar'},
	}
})
minetest.register_craft({
	output = 'exoticores:pick_edoylerite',
	recipe = {
		{'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:shovel_edoylerite',
	recipe = {
		{'', 'exoticores:edoylerite_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:axe_edoylerite',
	recipe = {
		{'', 'exoticores:edoylerite_bar', 'exoticores:edoylerite_bar'},
		{'', 'group:stick', 'exoticores:edoylerite_bar'},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:sword_edoylerite',
	recipe = {
		{'', 'exoticores:edoylerite_bar', ''},
		{'', 'exoticores:edoylerite_bar', ''},
		{'', 'group:stick', ''},
	}
})
--tools--
minetest.register_tool("exoticores:pick_edoylerite", {
	description = "edoylerite Pickaxe",
	inventory_image = "exoticores_tool_edoyleritepick.png",
	range = 8.0,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1, [2]=.50, [3]=0.30}, uses=400, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("exoticores:shovel_edoylerite", {
	description = "edoylerite Shovel",
	inventory_image = "exoticores_tool_edoyleriteshovel.png",
	wield_image = "exoticores_tool_edoyleriteshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=.10, [2]=0.50, [3]=0.30}, uses=400, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("exoticores:axe_edoylerite", {
	description = "edoylerite Axe",
	inventory_image = "exoticores_tool_edoyleriteaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=.10, [2]=0.90, [3]=0.50}, uses=400, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("exoticores:sword_edoylerite", {
	description = "edoylerite Sword",
	inventory_image = "exoticores_tool_edoyleritesword.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1, [2]=.5, [3]=0.30}, uses=3200, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	}
})

--craftitems--
minetest.register_craftitem("exoticores:edoylerite_lump", {
	description = "edoylerite Lump",
	inventory_image = "exoticores_edoylerite_lump.png",
})
minetest.register_craftitem("exoticores:edoylerite_bar", {
	description = "edoylerite Lump",
	inventory_image = "exoticores_edoylerite_bar.png",
})

--mapgen--
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "exoticores:stone_with_edoylerite",
		wherein        = "default:stone",
		clust_scarcity = 25 * 25 * 25,
		clust_num_ores = 3,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = -8000,
	})
--cobaltominite--
--nodes--
minetest.register_node("exoticores:stone_with_cobaltominite", {
	tiles = {"exoticores_stone.png^exoticores_cobaltominite.png"},
	groups = {cracky=1},
	description = "Cobaltominite Ore",
	drop = "exoticores:cobaltominite_lump",
	paramtype = "light",
	light_source = 10,
})

minetest.register_node("exoticores:cobaltominite_block", {
	tiles = {"exoticores_cobaltominite_block.png"},
	groups = {cracky=1},
	description = "Cobaltominite Block",
	paramtype = "light",
	light_source = 20,
})

--crafting--
minetest.register_craft({
	type = "cooking",
	output = "exoticores:cobaltominite_bar",
	recipe = "exoticores:cobaltominite_lump",
})
minetest.register_craft({
	output = 'exoticores:cobaltominite_block',
	recipe = {
		{'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar'},
		{'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar'},
		{'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar'},
	}
})
minetest.register_craft({
	output = 'exoticores:pick_cobaltominite',
	recipe = {
		{'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:shovel_cobaltominite',
	recipe = {
		{'', 'exoticores:cobaltominite_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:axe_cobaltominite',
	recipe = {
		{'', 'exoticores:cobaltominite_bar', 'exoticores:cobaltominite_bar'},
		{'', 'group:stick', 'exoticores:cobaltominite_bar'},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:sword_cobaltominite',
	recipe = {
		{'', 'exoticores:cobaltominite_bar', ''},
		{'', 'exoticores:cobaltominite_bar', ''},
		{'', 'group:stick', ''},
	}
})
--craftitems--
minetest.register_craftitem("exoticores:cobaltominite_lump", {
	description = "Cobaltominite Lump",
	inventory_image = "exoticores_cobaltominite_lump.png",
})
minetest.register_craftitem("exoticores:cobaltominite_bar", {
	description = "Cobaltominite Lump",
	inventory_image = "exoticores_cobaltominite_bar.png",
})

--mapgen--
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "exoticores:stone_with_cobaltominite",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 10,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})
--tools--
minetest.register_tool("exoticores:pick_cobaltominite", {
	description = "cobaltominite Pickaxe",
	inventory_image = "exoticores_tool_cobaltominitepick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("exoticores:shovel_cobaltominite", {
	description = "cobaltominite Shovel",
	inventory_image = "exoticores_tool_cobaltominiteshovel.png",
	wield_image = "exoticores_tool_cobaltominiteshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		range = 5.0,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("exoticores:axe_cobaltominite", {
	description = "cobaltominite Axe",
	inventory_image = "exoticores_tool_cobaltominiteaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=60, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("exoticores:sword_cobaltominite", {
	description = "cobaltominite Sword",
	inventory_image = "exoticores_tool_cobaltominitesword.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=120, maxlevel=3},
		},
		damage_groups = {fleshy=14},
	}
})
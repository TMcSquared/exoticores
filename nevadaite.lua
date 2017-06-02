--nevadaite--

--nodes--
minetest.register_node("exoticores:stone_with_nevadaite", {
	tiles = {"exoticores_stone.png^exoticores_nevadaite.png"},
	groups = {cracky=1},
	description = "Nevadaite Ore",
	drop = "exoticores:nevadaite_lump",
	paramtype = "light",
	light_source = 4,
})

minetest.register_node("exoticores:nevadaite_block", {
	tiles = {"exoticores_nevadaite_block.png"},
	groups = {cracky=1},
	description = "Nevadaite Block",
	paramtype = "light",
	light_source = 5,
})

--crafting--
minetest.register_craft({
	type = "cooking",
	output = "exoticores:nevadaite_bar",
	recipe = "exoticores:nevadaite_lump",
})
minetest.register_craft({
	output = 'exoticores:pick_nevadaite',
	recipe = {
		{'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:nevadaite_block',
	recipe = {
		{'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar'},
		{'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar'},
		{'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar'},
	}
})
minetest.register_craft({
	output = 'exoticores:nevadaite_bar 9',
	recipe = {
		{'exoticores:nevadaite_block'},
	}
})
minetest.register_craft({
	output = 'exoticores:shovel_nevadaite',
	recipe = {
		{'', 'exoticores:nevadaite_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:axe_nevadaite',
	recipe = {
		{'', 'exoticores:nevadaite_bar', 'exoticores:nevadaite_bar'},
		{'', 'group:stick', 'exoticores:nevadaite_bar'},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:sword_nevadaite',
	recipe = {
		{'', 'exoticores:nevadaite_bar', ''},
		{'', 'exoticores:nevadaite_bar', ''},
		{'', 'group:stick', ''},
	}
})

--craftitems--
minetest.register_craftitem("exoticores:nevadaite_lump", {
	description = "Nevadaite Lump",
	inventory_image = "exoticores_nevadaite_lump.png",
})
minetest.register_craftitem("exoticores:nevadaite_bar", {
	description = "Nevadaite Lump",
	inventory_image = "exoticores_nevadaite_bar.png",
})

--mapgen--
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "exoticores:stone_with_nevadaite",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 5,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})

--tools--

minetest.register_tool("exoticores:pick_nevadaite", {
	description = "Nevadaite Pickaxe",
	inventory_image = "exoticores_tool_nevadaitepick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("exoticores:shovel_nevadaite", {
	description = "Nevadaite Shovel",
	inventory_image = "exoticores_tool_nevadaiteshovel.png",
	wield_image = "exoticores_tool_nevadaiteshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		range = 5.0,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("exoticores:axe_nevadaite", {
	description = "Nevadaite Axe",
	inventory_image = "exoticores_tool_nevadaiteaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=100, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("exoticores:sword_nevadaite", {
	description = "Nevadaite Sword",
	inventory_image = "exoticores_tool_nevadaitesword.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})

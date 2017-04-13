--trinium--
--nodes--
minetest.register_node("exoticores:stone_with_trinium", {
	tiles = {"exoticores_stone.png^exoticores_trinium.png"},
	groups = {cracky=1},
	description = "trinium Ore",
	drop = "exoticores:trinium_lump",
	paramtype = "light",
	light_source = 10,
})

minetest.register_node("exoticores:trinium_block", {
	tiles = {"exoticores_trinium_block.png"},
	groups = {cracky=1},
	description = "trinium Block",
	paramtype = "light",
	light_source = 20,
})
--crafting--
minetest.register_craft({
	type = "cooking",
	output = "exoticores:trinium_bar",
	recipe = "exoticores:trinium_lump",
})
minetest.register_craft({
	output = 'exoticores:trinium_block',
	recipe = {
		{'exoticores:trinium_bar', 'exoticores:trinium_bar', 'exoticores:trinium_bar'},
		{'exoticores:trinium_bar', 'exoticores:trinium_bar', 'exoticores:trinium_bar'},
		{'exoticores:trinium_bar', 'exoticores:trinium_bar', 'exoticores:trinium_bar'},
	}
})
minetest.register_craft({
	output = 'exoticores:pick_trinium',
	recipe = {
		{'exoticores:trinium_bar', 'exoticores:trinium_bar', 'exoticores:trinium_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:shovel_trinium',
	recipe = {
		{'', 'exoticores:trinium_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:axe_trinium',
	recipe = {
		{'', 'exoticores:trinium_bar', 'exoticores:trinium_bar'},
		{'', 'group:stick', 'exoticores:trinium_bar'},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:sword_trinium',
	recipe = {
		{'', 'exoticores:trinium_bar', ''},
		{'', 'exoticores:trinium_bar', ''},
		{'', 'group:stick', ''},
	}
})
--tools--
minetest.register_tool("exoticores:pick_trinium", {
	description = "trinium Pickaxe",
	inventory_image = "exoticores_tool_triniumpick.png",
	range = 8.0,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=60, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("exoticores:shovel_trinium", {
	description = "trinium Shovel",
	inventory_image = "exoticores_tool_triniumshovel.png",
	wield_image = "exoticores_tool_triniumshovel.png^[transformR90",
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

minetest.register_tool("exoticores:axe_trinium", {
	description = "trinium Axe",
	inventory_image = "exoticores_tool_triniumaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=60, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("exoticores:sword_trinium", {
	description = "trinium Sword",
	inventory_image = "exoticores_tool_triniumsword.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=1600, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	}
})

--craftitems--
minetest.register_craftitem("exoticores:trinium_lump", {
	description = "trinium Lump",
	inventory_image = "exoticores_trinium_lump.png",
})
minetest.register_craftitem("exoticores:trinium_bar", {
	description = "trinium Lump",
	inventory_image = "exoticores_trinium_bar.png",
})

--mapgen--
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "exoticores:stone_with_trinium",
		wherein        = "default:stone",
		clust_scarcity = 25 * 25 * 25,
		clust_num_ores = 10,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})
	
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "exoticores:stone_with_trinium",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 10,
		clust_size     = 6,
		y_min          = -3100,
		y_max          = -3000,
	})	

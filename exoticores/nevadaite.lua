--nevadaite--

--nodes--
minetest.register_node("exoticores:stone_with_nevadaite", {
	tiles = {"exoticores_stone.png^exoticores_nevadaite.png"},
	groups = {cracky=1},
	description = "Nevadaite Ore",
	drop = "exoticores:nevadaite_lump",
	paramtype = "light",
	light_source = 10,
})

minetest.register_node("exoticores:nevadaite_block", {
	tiles = {"exoticores_nevadaite_block.png"},
	groups = {cracky=1},
	description = "Nevadaite Block",
	paramtype = "light",
	light_source = 20,
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
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 10,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})

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

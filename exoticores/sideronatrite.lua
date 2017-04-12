--sideronatrite--
--nodes--
minetest.register_node("exoticores:stone_with_sideronatrite", {
	tiles = {"exoticores_stone.png^exoticores_sideronatrite.png"},
	groups = {cracky=1},
	description = "sideronatrite Ore",
	drop = "exoticores:sideronatrite_lump",
	paramtype = "light",
	light_source = 10,
})

minetest.register_node("exoticores:sideronatrite_block", {
	tiles = {"exoticores_sideronatrite_block.png"},
	groups = {cracky=1},
	description = "sideronatrite Block",
	paramtype = "light",
	light_source = 20,
})
--crafting--
minetest.register_craft({
	type = "cooking",
	output = "exoticores:sideronatrite_bar",
	recipe = "exoticores:sideronatrite_lump",
})
minetest.register_craft({
	output = 'exoticores:sideronatrite_block',
	recipe = {
		{'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar'},
		{'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar'},
		{'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar'},
	}
})
minetest.register_craft({
	output = 'exoticores:pick_sideronatrite',
	recipe = {
		{'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:shovel_sideronatrite',
	recipe = {
		{'', 'exoticores:sideronatrite_bar', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:axe_sideronatrite',
	recipe = {
		{'', 'exoticores:sideronatrite_bar', 'exoticores:sideronatrite_bar'},
		{'', 'group:stick', 'exoticores:sideronatrite_bar'},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:sword_sideronatrite',
	recipe = {
		{'', 'exoticores:sideronatrite_bar', ''},
		{'', 'exoticores:sideronatrite_bar', ''},
		{'', 'group:stick', ''},
	}
})
--craftitems--
minetest.register_craftitem("exoticores:sideronatrite_lump", {
	description = "sideronatrite Lump",
	inventory_image = "exoticores_sideronatrite_lump.png",
})
minetest.register_craftitem("exoticores:sideronatrite_bar", {
	description = "sideronatrite Lump",
	inventory_image = "exoticores_sideronatrite_bar.png",
})

--mapgen--
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "exoticores:stone_with_sideronatrite",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 15,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})

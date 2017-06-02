--sideronatrite--
--nodes--
minetest.register_node("exoticores:stone_with_sideronatrite", {
	tiles = {"exoticores_stone.png^exoticores_sideronatrite.png"},
	groups = {cracky=1},
	description = "sideronatrite Ore",
	drop = "exoticores:sideronatrite_lump",
	paramtype = "light",
	light_source = 6,
})

minetest.register_node("exoticores:sideronatrite_block", {
	tiles = {"exoticores_sideronatrite_block.png"},
	groups = {cracky=1},
	description = "sideronatrite Block",
	paramtype = "light",
	light_source = 7,
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
--tools--
minetest.register_tool("exoticores:pick_sideronatrite", {
	description = "sideronatrite Pickaxe",
	inventory_image = "exoticores_tool_sideronatritepick.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.5, [2]=.7, [3]=.35}, uses=300, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("exoticores:shovel_sideronatrite", {
	description = "sideronatrite Shovel",
	inventory_image = "exoticores_tool_sideronatriteshovel.png",
	wield_image = "exoticores_tool_sideronatriteshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=.750, [2]=0.30, [3]=0.20}, uses=6000, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("exoticores:axe_sideronatrite", {
	description = "sideronatrite Axe",
	inventory_image = "exoticores_tool_sideronatriteaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=6000, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("exoticores:sword_sideronatrite", {
	description = "sideronatrite Sword",
	inventory_image = "exoticores_tool_sideronatritesword.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=16000, maxlevel=3},
		},
		damage_groups = {fleshy=20},
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
		clust_num_ores = 3,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = -4000,
	})


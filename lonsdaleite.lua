--lonsdaleite--
--nodes--
minetest.register_node("exoticores:lonsdaleite_block", {
	tiles = {"exoticores_lonsdaleite_block.png"},
	groups = {cracky=1},
	description = "lonsdaleite Block",
	drawtype = "glasslike_framed_optional",
	paramtype = "light",
	use_texture_alpha = true,
	light_source = 20,
})

--crafting--
minetest.register_craft({
	output = "exoticores:lonsdaleite_crystal",
	recipe = {
		{'exoticores:lonsdaleite_shard', 'exoticores:lonsdaleite_shard', 'exoticores:lonsdaleite_shard'},
		{'exoticores:lonsdaleite_shard', 'exoticores:lonsdaleite_shard', 'exoticores:lonsdaleite_shard'},
		{'exoticores:lonsdaleite_shard', 'exoticores:lonsdaleite_shard', 'exoticores:lonsdaleite_shard'},
	}
})
minetest.register_craft({
	output = "exoticores:lonsdaleite_shard",
	recipe = {
		{'exoticores:lonsdaleite_compressed_dust', 'exoticores:lonsdaleite_compressed_dust', 'exoticores:lonsdaleite_compressed_dust'},
		{'exoticores:lonsdaleite_compressed_dust', 'exoticores:lonsdaleite_compressed_dust', 'exoticores:lonsdaleite_compressed_dust'},
		{'exoticores:lonsdaleite_compressed_dust', 'exoticores:lonsdaleite_compressed_dust', 'exoticores:lonsdaleite_compressed_dust'},
	}
})
minetest.register_craft({
	output = "exoticores:lonsdaleite_compressed_dust",
	recipe = {
		{'exoticores:lonsdaleite_dust', 'exoticores:lonsdaleite_dust', 'exoticores:lonsdaleite_dust'},
		{'exoticores:lonsdaleite_dust', 'exoticores:lonsdaleite_dust', 'exoticores:lonsdaleite_dust'},
		{'exoticores:lonsdaleite_dust', 'exoticores:lonsdaleite_dust', 'exoticores:lonsdaleite_dust'},
	}
})
minetest.register_craft({
	output = 'exoticores:lonsdaleite_block',
	recipe = {
		{'exoticores:lonsdaleite_crystal', 'exoticores:lonsdaleite_crystal', 'exoticores:lonsdaleite_crystal'},
		{'exoticores:lonsdaleite_crystal', 'exoticores:lonsdaleite_crystal', 'exoticores:lonsdaleite_crystal'},
		{'exoticores:lonsdaleite_crystal', 'exoticores:lonsdaleite_crystal', 'exoticores:lonsdaleite_crystal'},
	}
})
minetest.register_craft({
	output = 'exoticores:lonsdaleite_crystal 9',
	recipe = {
		{'exoticores:lonsdaleite_block'},
	}
})
minetest.register_craft({
	output = 'exoticores:lonsdaleite_shard 9',
	recipe = {
		{'exoticores:lonsdaleite_crystal'},
	}
})
minetest.register_craft({
	output = 'exoticores:lonsdaleite_compressed_dust 9',
	recipe = {
		{'exoticores:lonsdaleite_shard'},
	}
})
minetest.register_craft({
	output = 'exoticores:lonsdaleite_dust 9',
	recipe = {
		{'exoticores:lonsdaleite_compressed_dust'},
	}
})
minetest.register_craft({
	output = 'exoticores:pick_lonsdaleite',
	recipe = {
		{'default:diamond_block', 'exoticores:lonsdaleite_crystal', 'default:diamond_block'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:shovel_lonsdaleite',
	recipe = {
		{'', 'exoticores:lonsdaleite_crystal', ''},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:axe_lonsdaleite',
	recipe = {
		{'', 'exoticores:lonsdaleite_crystal', 'default:diamond_block'},
		{'', 'group:stick', 'default:diamond_block'},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:axe_lonsdaleite',
	recipe = {
		{'default:diamond_block', 'exoticores:lonsdaleite_crystal', ''},
		{'default:diamond_block', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})
minetest.register_craft({
	output = 'exoticores:sword_lonsdaleite',
	recipe = {
		{'', 'exoticores:lonsdaleite_crystal', ''},
		{'', 'default:gold_ingot', ''},
		{'', 'group:stick', ''},
	}
})
--tools--
minetest.register_tool("exoticores:pick_lonsdaleite", {
	description = "lonsdaleite Pickaxe",
	inventory_image = "exoticores_tool_lonsdaleitepick.png",
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=6000, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	},
})

minetest.register_tool("exoticores:shovel_lonsdaleite", {
	description = "lonsdaleite Shovel",
	inventory_image = "exoticores_tool_lonsdaleiteshovel.png",
	wield_image = "exoticores_tool_lonsdaleiteshovel.png^[transformR90",
	range = 10.0,
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=6000, maxlevel=3},
		},
		damage_groups = {fleshy=100},
	},
})

minetest.register_tool("exoticores:axe_lonsdaleite", {
	description = "lonsdaleite Axe",
	inventory_image = "exoticores_tool_lonsdaleiteaxe.png",
	range = 10.0,
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=.01, [2]=0.01, [3]=0.01}, uses=6000, maxlevel=2},
		},
		damage_groups = {fleshy=200},
	},
})

minetest.register_tool("exoticores:sword_lonsdaleite", {
	description = "lonsdaleite Sword",
	inventory_image = "exoticores_tool_lonsdaleitesword.png",
	range = 10.0,
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=6000, maxlevel=10},
		},
		damage_groups = {fleshy=250},
	}
})

--craftitems--
minetest.register_craftitem("exoticores:lonsdaleite_dust", {
        stack_max = 1000,
	description = "lonsdaleite dust",
	inventory_image = "exoticores_lonsdaleite_dust.png",
})
minetest.register_craftitem("exoticores:lonsdaleite_compressed_dust", {
        stack_max = 1000,
	description = "lonsdaleite compressed dust",
	inventory_image = "exoticores_lonsdaleite_compressed_dust.png",
})
minetest.register_craftitem("exoticores:lonsdaleite_shard", {
        stack_max = 1000,
	description = "lonsdaleite shard",
	inventory_image = "exoticores_lonsdaleite_shard.png",
})
minetest.register_craftitem("exoticores:lonsdaleite_crystal", {
	description = "lonsdaleite crystal",
	inventory_image = "exoticores_lonsdaleite_crystal.png",
})

--mapgen--
minetest.register_ore({
		ore_type       = "scatter",
		ore            = "exoticores:lonsdaleite_block",
		wherein        = "default:stone",
		clust_scarcity = 100 * 100 * 100,
		clust_num_ores = 4,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = 31000,
	})
minetest.override_item("default:dirt_with_grass", {
	drop = {
		max_items = 1,
		items = {
			{
				items = {'exoticores:lonsdaleite_dust', 'default:dirt'},
				rarity = 20,
			},
			{
				items = {'default:dirt'},
			}
		}
	},
})
minetest.override_item("default:dirt_with_dry_grass", {
	drop = {
		max_items = 1,
		items = {
			{
				items = {'exoticores:lonsdaleite_dust', 'default:dirt'},
				rarity = 20,
			},
			{
				items = {'default:dirt'},
			}
		}
	},
})
minetest.override_item("default:dirt_with_snow", {
	drop = {
		max_items = 1,
		items = {
			{
				items = {'exoticores:lonsdaleite_dust', 'default:dirt'},
				rarity = 20,
			},
			{
				items = {'default:dirt'},
			}
		}
	},
})

minetest.override_item("default:silver_sand", {
	drop = {
		max_items = 1,
		items = {
			{
				items = {'exoticores:lonsdaleite_dust', 'default:silver_sand'},
				rarity = 20,
			},
			{
				items = {'default:silver_sand'},
			}
		}
	},
})

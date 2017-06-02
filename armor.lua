--3d armor textures used as template

--cobaltominite
	minetest.register_tool("exoticores:helmet_cobaltominite", {
		description = "cobaltominite Helmet",
		inventory_image = "exoticores_armor_inv_helmet_cobaltominite.png",
		groups = {armor_head=18, armor_heal=10, physics_jump=0.1, armor_fire=1, armor_use=200},
		wear = 0,
	})
	minetest.register_tool("exoticores:chestplate_cobaltominite", {
		description = "cobaltominite Chestplate",
		inventory_image = "exoticores_armor_inv_chestplate_cobaltominite.png",
		groups = {armor_torso=18, armor_heal=10, physics_jump=0.1, armor_fire=1, armor_use=200},
		wear = 0,
	})
	minetest.register_tool("exoticores:leggings_cobaltominite", {
		description = "cobaltominite Leggings",
		inventory_image = "exoticores_armor_inv_leggings_cobaltominite.png",
		groups = {armor_legs=18, armor_heal=10, physics_jump=0.1, armor_fire=1, armor_use=200},
		wear = 0,
	})
	minetest.register_tool("exoticores:boots_cobaltominite", {
		description = "cobaltominite Boots",
		inventory_image = "exoticores_armor_inv_boots_cobaltominite.png",
		groups = {armor_feet=18, armor_heal=10, physics_jump=0.1, armor_fire=1, armor_use=200},
		wear = 0,
	})
	minetest.register_tool("exoticores:shield_cobaltominite", {
		description = "cobaltominite Shield",
		inventory_image = "exoticores_armor_inv_shield_cobaltominite.png",
		groups = {armor_shield=18, armor_heal=10, physics_jump=0.1, armor_fire=1, armor_use=200},
		wear = 0,
	})

--lonsdaletite
	minetest.register_tool("exoticores:helmet_lonsdaleite", {
		description = "lonsdaleite Helmet",
		inventory_image = "exoticores_armor_inv_helmet_lonsdaleite.png",
		groups = {armor_head=18, armor_heal=50, physics_jump=0.1, armor_fire=10, armor_use=10},
		wear = 0,
	})
	minetest.register_tool("exoticores:chestplate_lonsdaleite", {
		description = "lonsdaleite Chestplate",
		inventory_image = "exoticores_armor_inv_chestplate_lonsdaleite.png",
		groups = {armor_torso=18, armor_heal=50, physics_jump=0.1, armor_fire=10, armor_use=10},
		wear = 0,
	})
	minetest.register_tool("exoticores:leggings_lonsdaleite", {
		description = "lonsdaleite Leggings",
		inventory_image = "exoticores_armor_inv_leggings_lonsdaleite.png",
		groups = {armor_legs=18, armor_heal=50, physics_jump=0.1, armor_fire=10, armor_use=10},
		wear = 0,
	})
	minetest.register_tool("exoticores:boots_lonsdaleite", {
		description = "lonsdaleite Boots",
		inventory_image = "exoticores_armor_inv_boots_lonsdaleite.png",
		groups = {armor_feet=18, armor_heal=50, physics_jump=0.1, armor_fire=10, armor_use=10},
		wear = 0,
	})
	minetest.register_tool("exoticores:shield_lonsdaleite", {
		description = "lonsdaleite Shield",
		inventory_image = "exoticores_armor_inv_shield_lonsdaleite.png",
		groups = {armor_shield=18, armor_heal=50, physics_jump=0.1, armor_fire=10, armor_use=10},
		wear = 0,
	})


-- Register Craft Recipies

local craft_ingreds = {
	cobaltominite = "exotixores:cobaltominite_bar",
	lonsdaleite = "exotixores:lonnsdaleite_bar",
}

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "exoticores_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "exoticores_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "exoticores_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "exoticores_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "exoticores_armor:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end



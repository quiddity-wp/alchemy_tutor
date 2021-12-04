at_formula_list = {
	{
		name = "toxicclean",
		material1 = {"water", "water", "water", "water", "water", "water_salt", "water_swamp", "swamp"},
		material2 = "red_herring",
		cauldron_contents = "radioactive_liquid",
		output = "water",
		output2 = "water_swamp",
	},
	{
		name = "melt_steel",
		material1 = "magic_liquid_mana_regeneration",
		material2 = "red_herring",
		cauldron = at_block,
		cauldron_material = "steel_static",
	},
	{ -- xxx
		name = "hastium",
		material1 = "magic_liquid_movement_faster",
		material2 = "magic_liquid_faster_levitation",
		output = "magic_liquid_faster_levitation_and_movement",
	},
	{
		name = "washinvis",
		material1 = "water",
		material2 = "red_herring",
		cauldron_contents = "magic_liquid_invisibility",
		output = "water",
	},
	{ --- xxx
		material1 = "magic_liquid_mana_regeneration",
		material2 = "red_herring",
		cauldron_contents = "water",
		output = "magic_liquid_mana_regeneration",
	},
	{
		name = "slimeclean",
		material1 = "water",
		material2 = "red_herring",
		cauldron_contents = {"slime", "slime", "slime", "slime_green", "slime_yellow"},
		output = "air",
		output2 = "water",
	},
	{
		name = "disinfect",
		material1 = "alcohol",
		material2 = "red_herring",
		cauldron_contents = {"slime", "slime", "slime", "slime_green", "slime_yellow"},
		output = "air",
		output2 = "alcohol",
	},
	{ -- xxx
		material1 = "material_confusion",
		material2 = "magic_liquid_berserk",
		output = "magic_liquid_charm",
	},
	{ -- xxx
		material1 = "radioactive_liquid",
		material2 = "powder_empty",
		cauldron_contents = "sand",
		cauldron_material = "air",
		other = at_planterbox,
		output = "fungi_creeping",
	},
	{ -- xxx
		material1 = "alcohol",
		material2 = "red_herring",
		other = at_frogs,
		output = "magic_liquid_berserk",
	},
	{
		name = "slimeboom",
		material1 = {"magic_liquid_movement_faster", "magic_liquid_faster_levitation"},
		material2 = "slime",
		cauldron = at_block,
		cauldron_material = "templerock_soft",
	},
	{
		material1 = "brass",
		material2 = "liquid_fire",
		cauldron = at_electrode,
		cauldron_material = "steel_static_unmeltable",
		output = "shock_powder",
	},
	{
		name = "manatele",
		material1 = "magic_liquid_mana_regeneration",
		material2 = "red_herring",
		cauldron_contents = "magic_liquid_unstable_teleportation",
		output = "air",
	},
	{
		material1 = "magic_liquid_unstable_teleportation",
		material2 = "material_confusion",
		output = "orb_powder",
	},
	{
		name = "silver1",
		material1 = "magic_liquid_random_polymorph",
		material2 = "diamond",
		output = "silver",
	},
	{
		name = "silver2",
		material1 = "magic_liquid_random_polymorph",
		material2 = "gold",
		material2_amount = 0.4,
		output = "silver",
	},
	{
		name = "silver3",
		material1 = "copper",
		material2 = "brass",
		cauldron_contents = "water",
		output = "silver",
	},
	{
		name = "purebrass",
		material1 = "brass",
		material2 = "diamond",
		output = "purifying_powder",
	},
	{
		name = "purelava",
		material1 = "purifying_powder",
		material2 = "red_herring",
		cauldron_contents = "lava",
		output = "air",
	},
	{
		material1 = "oil",
		material2 = "fire",
		cauldron_contents = "air",
		cauldron_minor = "meat",
		cauldron_check_y = 10,
		other = at_meat,
		output = "meat_done",
	},
	{
		material1 = "honey",
		material2 = "diamond",
		output = "magic_liquid_protection_all",
		output2 = "poison",
	},
	{
		name = "levi",
		material1 = "brass",
		material2 = "material_confusion",
		output = "magic_liquid_faster_levitation",
	},
	{
		material1 = {"slime", "slime", "slime", "slime_green", "slime_yellow"},
		material2 = "red_herring",
		cauldron_contents = "magic_liquid_unstable_teleportation",
		output = "magic_liquid_teleportation",
	},
	--[[ awkward layering, super slow, can't find a good method
	{
		name = "unstablespread",
		material1 = "magic_liquid_unstable_teleportation",
		material1_amount = 0.22,
		material2 = "red_herring",
		cauldron_contents = "water",
		cauldron_minor = "magic_liquid_teleportation",
		output = "magic_liquid_unstable_teleportation",
	},
	--]]
	{
		name = "drunktele",
		material1 = "red_herring",
		material2 = "alcohol",
		cauldron_contents = "magic_liquid_teleportation",
		output = "magic_liquid_unstable_teleportation",
	},
	{
		material1 = "blood_worm",
		material2 = "magic_liquid_worm_attractor",
		output = "material_confusion",
	},
	{
		material1 = "material_confusion",
		material2 = "oil",
		cauldron_contents = "blood",
		output = "magic_liquid_unstable_polymorph",
	},
	{
		material1 = "magic_liquid_polymorph",
		material2 = "radioactive_liquid",
		output = "magic_liquid_random_polymorph",
	},
	{
		material1 = "blood",
		material2 = "poison",
		output = "slime",
	},
	{
		material1 = "silver",
		material2 = "copper",
		cauldron_contents = "blood",
		output = "diamond",
	},
	{
		material1 = "silver",
		material2 = "magic_liquid_polymorph",
		output = "copper",
	},
	{
		material1 = "copper",
		material2 = "red_herring",
		cauldron_contents = "magic_liquid_teleportation",
		output = "brass",
	},
	{
		material1 = "brass",
		material2 = "magic_liquid_unstable_teleportation",
		output = "metal_sand",
	},
	{
		name = "pureworm",
		material1 = "silver",
		material2 = "diamond",
		cauldron_contents = "blood_worm",
		output = "purifying_powder",
		output2 = "water", -- purifying_powder purifies the worm blood
	},
	{
		name = "oddwater",
		material1 = "water",
		material2 = "red_herring",
		cauldron = at_block,
	},
	{
		name = "oddmana",
		material1 = "magic_liquid_mana_regeneration",
		material2 = "red_herring",
		cauldron = at_block,
	},
	{
		name = "oddamb",
		material1 = "magic_liquid_protection_all",
		material2 = "red_herring",
		cauldron = at_block,
	},
	--[[
	{
		name = "oddfire",
		material1 = "fire",
		material2 = "red_herring",
		cauldron = at_block,
	},
	]]
	{
		name = "void1",
		material1 = "radioactive_liquid",
		material2 = "blood_worm",
		cauldron_contents = {"fungi", "fungi", "fungi", "fungi_creeping", "fungi_green"},
		output = "void_liquid",
	},
	{
		name = "void2",
		material1 = "diamond",
		material2 = "magic_liquid_random_polymorph",
		cauldron_contents = "radioactive_liquid",
		output = "void_liquid",
	},
}

dofile("data/scripts/lib/mod_settings.lua") -- see this file for documentation on some of the features.

-- This file can't access other files from this or other mods in all circumstances.
-- Settings will be automatically saved.
-- Settings don't have access unsafe lua APIs.

-- Use ModSettingGet() in the game to query settings.
-- For some settings (for example those that affect world generation) you might want to retain the current value until a certain point, even
-- if the player has changed the setting while playing.
-- To make it easy to define settings like that, each setting has a "scope" (e.g. MOD_SETTING_SCOPE_NEW_GAME) that will define when the changes
-- will actually become visible via ModSettingGet(). In the case of MOD_SETTING_SCOPE_NEW_GAME the value at the start of the run will be visible
-- until the player starts a new game.
-- ModSettingSetNextValue() will set the buffered value, that will later become visible via ModSettingGet(), unless the setting scope is MOD_SETTING_SCOPE_RUNTIME.

local mod_id = "alchemy_tutor" -- This should match the name of your mod's folder.
mod_settings_version = 1 -- This is a magic global that can be used to migrate settings to new mod versions. call mod_settings_get_version() before mod_settings_update() to get the old value. 
mod_settings = 
{
	{
		id = "lab_chance",
		ui_name = "Lab Spawn Chance - Main Areas",
		ui_description = "Spawn weight when game is choosing a pixel scene to display",
		value_default = 4,
		value_min = 0,
		value_max = 10,
		value_display_multiplier = 10,
		value_display_formatting = " $0",
		scope = MOD_SETTING_SCOPE_NEW_GAME,
	},
	{
		id = "remote_lab_chance",
		ui_name = "Lab Spawn Chance - Remote Areas",
		ui_description = "Chance to put a remote lab entrance in a chest spawn location.",
		value_default = 0.2,
		value_min = 0,
		value_max = 0.6,
		value_display_multiplier = 100,
		value_display_formatting = " $0",
		scope = MOD_SETTING_SCOPE_NEW_GAME,
	},
	{
		id = "fixed_pixel_scenes",
		ui_name = "Fixed Position Pixel Scenes",
		ui_description = "You may want to disable fixed position scenes with biome mods that change the world layout",
		value_default = true,
		scope = MOD_SETTING_SCOPE_NEW_GAME,
	},
	{
		id = "formula_distance",
		ui_name = "Distance Dependant",
		ui_description = "Favor basic formulas near start, and obscure formula farther away",
		value_default = true,
		scope = MOD_SETTING_SCOPE_RUNTIME,
	},
	{
		id = "formula_progression",
		ui_name = "Progression Dependant",
		ui_description = "Simply formulas the first time, and limit obscurity based on number solved.",
		value_default = true,
		scope = MOD_SETTING_SCOPE_RUNTIME,
	},
}

if ModIsEnabled('EnableLogger') then
	table.insert( mod_settings, {
		id = "spawn_log_book",
		ui_name = "Spawn Log Book",
		ui_description = "Spawn a book with debug log of lab setup.",
		value_default = false,
		scope = MOD_SETTING_SCOPE_RUNTIME,
	})
end

-- This function is called to ensure the correct setting values are visible to the game via ModSettingGet(). your mod's settings don't work if you don't have a function like this defined in settings.lua.
-- This function is called:
--		- when entering the mod settings menu (init_scope will be MOD_SETTINGS_SCOPE_ONLY_SET_DEFAULT)
-- 		- before mod initialization when starting a new game (init_scope will be MOD_SETTING_SCOPE_NEW_GAME)
--		- when entering the game after a restart (init_scope will be MOD_SETTING_SCOPE_RESTART)
--		- at the end of an update when mod settings have been changed via ModSettingsSetNextValue() and the game is unpaused (init_scope will be MOD_SETTINGS_SCOPE_RUNTIME)
function ModSettingsUpdate( init_scope )
	local old_version = mod_settings_get_version( mod_id ) -- This can be used to migrate some settings between mod versions.
	mod_settings_update( mod_id, mod_settings, init_scope )
end

-- This function should return the number of visible setting UI elements.
-- Your mod's settings wont be visible in the mod settings menu if this function isn't defined correctly.
-- If your mod changes the displayed settings dynamically, you might need to implement custom logic.
-- The value will be used to determine whether or not to display various UI elements that link to mod settings.
-- At the moment it is fine to simply return 0 or 1 in a custom implementation, but we don't guarantee that will be the case in the future.
-- This function is called every frame when in the settings menu.
function ModSettingsGuiCount()
	return mod_settings_gui_count( mod_id, mod_settings )
end

-- This function is called to display the settings UI for this mod. Your mod's settings wont be visible in the mod settings menu if this function isn't defined correctly.
function ModSettingsGui( gui, in_main_menu )
	mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end

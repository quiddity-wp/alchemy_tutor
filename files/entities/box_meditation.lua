dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(entity_id)

local max_time = 8

component_readwrite(get_variable_storage_component(entity_id, "meditation_count"), { value_int = 0}, function(comp)
	local player = EntityGetInRadiusWithTag( pos_x, pos_y, 25, "player_unit" )[1]
	if player ~= nil then
		-- player is near, proceed with countdown...
		comp.value_int = comp.value_int + 1

		-- shortcut: holding the alchemist's key
		local children = EntityGetAllChildren( player )
		if ( children ~= nil ) then
			-- Inventory2Component
			-- mActiveItem
			local inventory2_comp = EntityGetFirstComponentIncludingDisabled( player, "Inventory2Component" )
			if ( inventory2_comp ~= nil ) then
				local active_item = ComponentGetValue( inventory2_comp, "mActiveItem" )
				if ( EntityHasTag( active_item, "alchemist_key" ) ) then
					comp.value_int = max_time
				end
			end
		end

		if comp.value_int == max_time then
			EntitySetComponentsWithTagEnabled( entity_id, "enabled_by_meditation", true )
			EntitySetComponentsWithTagEnabled( entity_id, "enabled_by_meditation_early", false )

			at_remember_return_location( pos_x, pos_y )

			setup_lab_teleport( entity_id )
		elseif comp.value_int >= 2 then
			-- teaser fx
			EntitySetComponentsWithTagEnabled( entity_id, "enabled_by_meditation_early", true )
			-- particle ring radius
			local ring = EntityGetFirstComponent(entity_id, "ParticleEmitterComponent", "enabled_by_meditation_early")
			local radius = comp.value_int * 10 / max_time
			local lifetime = comp.value_int * 4 / max_time
			if ring then
				ComponentSetValue2(ring, "area_circle_radius", radius, radius)
				ComponentSetValue2(ring, "lifetime_min", 0 )
				ComponentSetValue2(ring, "lifetime_max", lifetime )
			end
			local volume = math.pow( comp.value_int / max_time, 2 )
			local audios = EntityGetComponent(entity_id, "AudioLoopComponent", "enabled_by_meditation_early" )
			if audios then
				for i,audio in ipairs(audios) do
					ComponentSetValue2( audio, "m_volume", volume )
				end
			end
		end
	else
		-- reset
		EntitySetComponentsWithTagEnabled( entity_id, "enabled_by_meditation_early", false )
		EntitySetComponentsWithTagEnabled( entity_id, "enabled_by_meditation", false )
		comp.value_int = 0
	end
end)

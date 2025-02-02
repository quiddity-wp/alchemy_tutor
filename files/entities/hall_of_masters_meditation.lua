dofile_once("data/scripts/lib/utilities.lua")
dofile_once( "mods/alchemy_tutor/files/entities/hall_of_masters/hall_of_masters.lua" )

function setup_lab_teleport( entity_with_teleport )
	local ex, ey = at_get_entrance_location()
	local tele = EntityGetFirstComponentIncludingDisabled( entity_with_teleport, "TeleportComponent" )
	if tele then
		ComponentSetValue2( tele, "target", ex, ey )
	end
end

dofile( "mods/alchemy_tutor/files/entities/box_meditation.lua" )

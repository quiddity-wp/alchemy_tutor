dofile_once('mods/alchemy_tutor/files/remote_lab.lua')

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local p = EntityGetInRadiusWithTag( x, y, 350, "player_unit" )

if ( #p == 0 ) then
	at_remote_lab_exit( x, y )
	EntityKill( entity_id )
end

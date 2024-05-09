/// @description Go where the panel takes you

//Set the target room
global.targetroom = destination;

//Set up pipe info
global.pipetype = pipetype;
global.pipex = pipex;
global.pipey = pipey;
	
//Check star coins
event_user(0);

//Do not remember checkpoint
global.checkpoint = noone;

//Remember the player last position in map
with (obj_mapmario) event_user(0);

//If no curtain exists, create it
if (instance_number(obj_curtain_in) == 0) {

	with (instance_create_depth(obj_mapmario.x + 8, obj_mapmario.y + 4, -99, obj_curtain_in))
		target = global.targetroom;
}
/// @description It's the player... on the map!
    
    //Up key
    global.key[input.up] = vk_up;
    
    //Down key
    global.key[input.down] = vk_down;
    
    //Left key
    global.key[input.left] = vk_left;
    
    //Right key
    global.key[input.right] = vk_right;
    
    //Action 1 (Shift)
    global.key[input.action0] = vk_shift;
    
    //Action 2 (Control)
    global.key[input.action1] = vk_control;
    
    //Action 3 (Space)
    global.key[input.action2] = vk_space;
    
    //Select Key
    global.key[input.select] = vk_backspace;
    
    //Start Key
    global.key[input.start] = vk_enter;
    
    //Default controller configs
    
    //D-Pad Up
    global.button[input.up] = gp_padu;
    
    //D-Pad Down
    global.button[input.down] = gp_padd;
    
    //D-Pad Left
    global.button[input.left] = gp_padl;
    
    //D-Pad Right
    global.button[input.right] = gp_padr;
    
    //Action 1 (A)
    global.button[input.action0] = gp_face1;
    
    //Action 2 (X)
    global.button[input.action1] = gp_face3;
    
    //Action 3 (B)
    global.button[input.action2] = gp_face2;
    
    //Select (Select)
    global.button[input.select] = gp_select;
    
    //Start (Start)
    global.button[input.start] = gp_start;
    
    //Set autosave default to true
    global.autosave = true;



if (obj_Position.playerStartPosition != noone) {
    obj_mapplayer.x = obj_Position.playerStartPosition[0];
	obj_mapplayer.y = obj_Position.playerStartPosition[1];
	
	obj_Position.playerStartPosition = noone;
}
	
	

//Check if the position was modified before
if (ds_map_exists(global.worldmap, "playerx")) {

    //Place the player where it belongs
    x = ds_map_find_value(global.worldmap, "playerx");
    y = ds_map_find_value(global.worldmap, "playery");
}
else {

    //Set up the current position
    ds_map_add(global.worldmap, "playerx", x);
    ds_map_add(global.worldmap, "playery", y);
}

//Animate the object
image_speed = 0.125;

//Whether the object is moving
status = mapstate.idle;

//Speed
spd = 1;

//Origin
xorig = 7;
yorig = 7;

//Steps to take per steps
step = 0;

//Direction
direct = 270;

//Whether the player is climbing
is_climbing = 0;

//Whether the player is swimming
is_swimming = 0;

//Whether the player has selected a stage
is_ready = 0;

//Scale
xscale = 1;

//Reset global variables
	//Reset checkpoint
	global.mariostart = 0;

	//Restart time
	global.time = 0;

	//Restart carried items
	global.carrieditem = noone;
	global.carriedsprite = noone;

	//Restart P-Switch
	global.pswitch = 0;

	//Restart Starman
	global.starman = 0;

	//Restart ON/OFF Block
	global.onoff_block = false;

	//Restart the collected silver coins
	global.scoins = 0;

	//Clear the records of the opened doors
	global.doors = ds_map_create();

	//Clear the records of the collected dragon coins
	global.dcoins = ds_map_create();

	//Reset bonus game
	global.bonusgame = 0;

	//Reset warps
	global.postchange = -1;

//Tick for another player to show up (lower for map entry)
player_wait = -20;

//Time for the player to show up
wait_time = 8;

//Previous player
last_player = global.player;

//To save the game
savegame = false;

//If the level has been beaten
if (global.clear > 0) {

    alarm[0] = 30;
    status = mapstate.wait;   
}


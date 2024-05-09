/// @description If the player presses 'Up' on this door while carrying this key

//If the door is locked
if ((input_check_pressed(input.up)) || (gamepad_axis_value(0, gp_axislv) < -0.5)) 
&& (image_speed == 0)
&& (image_index == 0) 
&& (lock == 1)
&& (other.held == 1)
&& (global.powerup != cs_mega) {

    //Play 'Chest' sound
    audio_play_sound(snd_chest, 0, false);
    
    //Set the sprite
    sprite_index = spr_door_lock_unlocked;

    //Unlock the door
    lock = 0;
    
    //With the key
    with (other) {
    
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
        
        //Create a puff of smoke
        instance_create_depth(x, y+8, -4, obj_smoke);
        
        //Destroy
        instance_destroy();
    }
	
	//If Mario does exist
    if (instance_exists(obj_mario)) {
    
        //Check for it
        mario = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mario, 0, 0);
        
        //If Mario exists
        if (mario)
        && (mario.state != playerstate.jump)
        && (mario.state != playerstate.climb) {
        
            //Play 'Door' sound
            audio_play_sound(snd_door, 0, false);
            
            //Animate the door
            image_speed = 1;
            
            //Create a new mario object
            warpme = instance_create_depth(mario.x, mario.y, -5, obj_mario_door);
            
            //Facing direction
            warpme.image_xscale = mario.xscale;
            
            //Colour
            warpme.isflashing = mario.isflashing;
                        
            //Set up destination room
            if (destination != noone) {
            
                warpme.destination = destination;
            }
            
            //Set up door id
            warpme.my_door = id;
            
            //Set up warp parameters
            warpme.exit_id = exit_id;
            
            //Destroy mario object
            with (obj_mario) instance_destroy();
        }
    }
	
	//Create a puff of smoke
    instance_create_depth(x+8, y, -4, obj_smoke);
    
    //Remember it
    ds_map_add(global.doors, id, 1);
}
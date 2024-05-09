/// @description Shoot a Banzai Bill

//If Mario does not exist, deny event
if (!instance_exists(obj_mario)) {

    alarm[0] = 1;
    exit;
}

//Otherwise
else {

    //If Mario is nearby
    if ((obj_mario.x > bbox_left-32) && (obj_mario.x < bbox_right+32)) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise, if none of the conditions above match, let the shooting begin.
    else {
    
        //If there's 3 or less banzai bills on screen
        if (instance_number(obj_banzaibill) >= 3) {
        
            alarm[0] = 1;
            exit;
        }
    
        //If Mario is at the left
        if (obj_mario.x < x) {
            
            //If there's not a solid in position, shoot
            if (!collision_rectangle(bbox_left-1, bbox_top+1, bbox_left-1, bbox_bottom-1, obj_solid, 0, 0)) {
            
                //Play 'Lightning' sound
                audio_play_sound(snd_lightning, 0, false);                
                
                //Create Banzai Bill
                with (instance_create_depth(x + 32, y, 150, obj_banzaibill)) {
                
					//Set horizontal speed
					xspeed = -1.5;
					
					//Set facing direction
                    xscale = -1;
                   
					//Create smoke effect
                    with (instance_create_depth(x, y + 32, -6, obj_smoke)) {
						
						image_xscale = 4;
						image_yscale = 4;
					}
                }
                
                //Repeat
                alarm[0] = 360;
                
                //Animate the cannon
                ready = 1;
            }
            
            //If there's a solid at the left, deny event
            else {
            
                alarm[0] = 1;
                exit;
            }
        }
        
        //Otherwise, if Mario is at the right
        else if (obj_mario.x > x) {
                    
            //If there's not a solid in position, shoot
            if (!collision_rectangle(bbox_right+1, bbox_top+1, bbox_right+1, bbox_bottom-1, obj_solid, 0, 0)) {
            
                //Play 'Thud' sound
                audio_play_sound(snd_lightning, 0, false);
                
				//Create Banzai Bill
                with (instance_create_depth(x + 32, y, 150, obj_banzaibill)) {
                
					//Set horizontal speed
					xspeed = 1.5;
					
					//Set facing direction
                    xscale = 1;
                   
					//Create smoke effect
                    with (instance_create_depth(x, y + 32, -6, obj_smoke)) {
						
						image_xscale = 4;
						image_yscale = 4;
					}
                }
                
                //Repeat
                alarm[0] = 360;
                
                //Animate the cannon
                ready = 1;
            }
            
            //If there's a solid at the left, deny event
            else {
            
                alarm[0] = 1;
                exit;
            }            
        }          
    }
}

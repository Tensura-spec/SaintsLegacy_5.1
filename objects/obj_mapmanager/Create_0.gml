/// @description World Map Manager

///Level controller

/*
**  This item uses creation code!
**
**  mapmusic      = Music to play in the map
*/

audio_stop_all();

with (obj_controller1) {
    
        pixelate = 60;
    }
    
    //Initialize globals
    
instance_activate_object(obj_controller1);
//Default values
//mapmusic = bgm_map1;

//Play music
alarm[0] = 30;

///Create map HUD
alarm[2] = 2;

//Handles water animation
anim = 0;

//Generate a cloud every second
alarm[11] = 60;



/* */
/*  */

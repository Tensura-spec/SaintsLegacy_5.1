/// @description Flag as active and create a mushroom upon contact

if (ready == 0) {
	
	//Play 'Sprout' sound
	audio_play_sound(snd_sprout, 0, false);
	
	//Flag as active
	ready = 1;
	
	//Create a 1-UP
	mush = instance_create_layer(x + 8, obj_mario.bbox_top - 16, "Main", obj_mushroom);
	
	//With the 1-UP
	with (mush) {
	
		//Set vertical speed
		yspeed = -4;
		
		//Set horizontal speed
		if (!instance_exists(obj_mario))
		|| (obj_mario.x < other.x+8)
			xspeed = 1;
		else
			xspeed = -1;
	}
}
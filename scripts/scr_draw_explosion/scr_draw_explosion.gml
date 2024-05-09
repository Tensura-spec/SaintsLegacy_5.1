function scr_draw_explosion() {
	var maxParticles = 10;
	var newDir = 0;
	var dirDelta = int64(360 / maxParticles);

	for (var i = 0; i < maxParticles; i++)
	{
	  curParticle = instance_create_layer(x, 
	                                      y, 
	                                      "Explosions", 
	                                      objParticle);
                                      
	  with (curParticle)
	  {    
	    sprite = objExplosion.sprite_index;    
	    left = irandom_range(0, sprite_width / 1.5);
	    top = irandom_range(0, sprite_height / 1.5);
	    width = 4;  //irandom_range(4, 8);
	    height = 4; //irandom_range(4, 8);
	    spd = 2;
	    direction = newDir;
	  }
  
	  newDir += dirDelta;  
	}

	instance_destroy();


}

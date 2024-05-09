/// @description Fire Snake

//Inherit the parent event
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 2;

//How vulnerable is this enemy to Mario?
stomp = 2;

//How vulnerable is this enemy to Yoshi?
edible = 2;

//No swimming
noswim = 1;

//Jump
jumping = 0;

//Jump downwards
ready = 0;

//Check previous hspeed
prevxspeed = 0;

//Start moving
alarm[0] = 60;

#region BODY

	for (var i=0; i<4; i++) {

	    //Create body part
	    var b = instance_create_depth(xstart, ystart, -2, obj_firesnake_body);
    
	    //Assign the body to a id
	    mybody[i] = b;
	        b.parent = id;
			b.depth = -1+i
	}
#endregion

//Create a light
if (instance_exists(obj_lightcontrol)) {

	with (instance_create_layer(0, 0, "Main", obj_light_npc)) {
		
		parent = other.id;
		radius = 16;
		new_radius = 16;
	}
}

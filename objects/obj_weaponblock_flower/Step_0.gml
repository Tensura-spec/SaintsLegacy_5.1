/// @description Break with the following items

//Inherit event from parent
event_inherited();

//Set up the items that can break this block
items = [

	obj_fireball,
	obj_iceball,
	obj_superball,
	obj_fireball_gold
]

for (var i=0; i < array_length(items); i++) {
	
	var projectile = collision_rectangle(bbox_left-5, bbox_top-5, bbox_right+4, bbox_bottom+4, items[i], 0, 0);
	if (projectile) {
	
		event_user(15);
		with (projectile)
			instance_destroy();
	}
}
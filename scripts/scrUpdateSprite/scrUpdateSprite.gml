function scrUpdateSprite(){
	if (action == "Walk"){
		image_speed = 1.2;
	}
	else{
	image_speed = 0.1;
	}
	sprite_index = asset_get_index("spr" + name + action + face);
}

function scrUpdateSpriteP(){
	if (action == "Walk"){

	}
	else{

	}
	sprite_index = asset_get_index("spr_" + name + action + face);
}
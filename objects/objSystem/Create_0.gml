puntaje=0;
timer_duration_seconds = 300;


depth = -98;
	
	global.mRuaLeft = ds_map_create();
	global.mRuaMid = ds_map_create();
	global.mRuaRight = ds_map_create();
	global.irA = MiguelRuaCen;

playerStartPosition = noone;




global.TEXTBOX_FONT = font_add_sprite_ext(sprTextboxFont, "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzáéíóú0123456789¡!¿?()\"'.,-/ü|", true, 0);
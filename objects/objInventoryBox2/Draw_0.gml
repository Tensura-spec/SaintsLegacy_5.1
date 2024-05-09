var main_x = camera_get_view_x(view_camera[0]);
var main_y = camera_get_view_y(view_camera[0]);

if (!active) { exit; }

draw_sprite(sprInventoryBox, 0, main_x, main_y);


	draw_sprite(sprMiguelRuaMedalla, global.medallaMR, main_x + 7, main_y + 9);

	draw_set_font(global.TEXTBOX_FONT);
	draw_text(main_x + 40, main_y + 12, + "Miguel" );
	draw_text(main_x + 40, main_y + 20, + "Rua" );
	
	draw_sprite(GavichoMedalla_sprt, global.medallaPD, main_x + 7, main_y + 44);

	draw_set_font(global.TEXTBOX_FONT);
	draw_text(main_x + 40, main_y + 40, + "Gavicho" );
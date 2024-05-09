/// @description Draw menu


if (!active) { exit; }



#region MENU


//Otherwise if input has been given from the player, display menu
if (true) {
	
	

	//Set text alignment
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);

	//Line spacing
	var _gap = 32;
	var _yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 24 - (_gap * array_length_2d(menu, sub_menu));
	var _yyOffset = -20;
	
	draw_sprite(sprInventoryBox, 0, camera_get_view_x(view_camera[0]) + 20, camera_get_view_y(view_camera[0]) + 32);

	//Draw menu items
	for (var i=0; i<array_length_2d(menu, sub_menu); ++i) { 
	
		//Sets the colour of the highlighted option
		var _colour = (i == index) ? c_white : c_ltgray;
		
			switch (i)
		{
			
			case(0): 
			{
				draw_sprite(sprMiguelRuaMedalla, global.medallaMR, camera_get_view_x(view_camera[0]) + 32, _yy + _yyOffset +(_gap * i));
			} break;
			
			case(1): 
			{
				draw_sprite(GavichoMedalla_sprt, global.medallaPD, camera_get_view_x(view_camera[0]) +32, _yy + _yyOffset + (_gap * i));
			} break;
			
			case(2): 
			{
				draw_sprite(sprMamaMargaritaMedalla, global.medallaMM, camera_get_view_x(view_camera[0]) +32, _yy + _yyOffset +  (_gap * i));
			} break;
			
			case(3): 
			{
				draw_sprite(sprMiguelMagoneMedalla, global.medallaMiMa, camera_get_view_x(view_camera[0]) +32, _yy + _yyOffset +  (_gap * i));
			} break;
			
			case(4): 
			{
				draw_sprite(sprDomingoSavioMedalla, global.medallaDS, camera_get_view_x(view_camera[0]) +32, _yy +  _yyOffset + (_gap * i));
			} break;
			
			case(5): 
			{
				draw_sprite(sprLauraVMedalla, global.medallaLV, camera_get_view_x(view_camera[0]) +32, _yy + _yyOffset +  (_gap * i));
			} break;
			
			case(6): 
			{
				draw_sprite(sprCeferinoNamuncuraMedalla, global.medallaCN, camera_get_view_x(view_camera[0]) +32, _yy + _yyOffset +  (_gap * i));
			} break;
			
			case(7): 
			{
				draw_sprite(sprBartolomeGarelliMedalla, global.medallaBG, camera_get_view_x(view_camera[0]) +32, _yy + _yyOffset +  (_gap * i));
			} break;
			
			

		}
		
		//Draw the text
		draw_text_shadowed(camera_get_view_x(view_camera[0]) + 70, _yy + (_gap * i), string_upper(menu[sub_menu, i]), c_black, _colour, 1, 1, 0.5, 1);
	
		//Draw cursor
		if (i == index) {
		
			draw_sprite_ext(spr_gui_cursor, 0, camera_get_view_x(view_camera[0]) + 12, _yy + (_gap * i) - 8, 1, 1, 0, c_white, 1);
		}
	}

	//Set horizontal alignment
	draw_set_halign(fa_right);
	
	//Reset vertical text alignment
	draw_set_valign(fa_top);
}
#endregion



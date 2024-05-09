/// @description Render logo and disclaimer

//Logo
draw_sprite_ext(spr_title, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + 70, 0.5, 0.5, 0, c_white, 1);

//Set font
draw_set_font(global.gui_font);

//Set text alignment
draw_set_valign(fa_center);
draw_set_halign(fa_center);

//Set colour
draw_set_colour(c_white);

//Text
draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2) + 37, @"Tesistas 2024 Saints Legacy
framework escrito para ser usado con 
GameMaker v2022.8 en adelante

Santiago Loja - Brandon Rivera - Pedro Pesantez

");

//Reset text alignment
draw_set_valign(fa_top);
draw_set_halign(fa_left);

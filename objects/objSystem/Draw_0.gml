/// @description Insert description here
// You can write your code in this editor

var main2_x = camera_get_view_x(view_camera[0]);

draw_sprite(sprEstudiante, 0,main2_x + 550, camera_get_view_y(view_camera[0]) + 20);
draw_set_font(FuenteMiguelRua);
draw_set_color(c_white);
draw_text(main2_x + 570, camera_get_view_y(view_camera[0]) + 20, string(puntaje)+string("/4"));





















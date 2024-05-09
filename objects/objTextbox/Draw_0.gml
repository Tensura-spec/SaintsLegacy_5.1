if (pages == noone) { exit; }

var main_x = camera_get_view_x(view_camera[0]);

draw_sprite(sprTextbox, 0, main_x, camera_get_view_y(view_camera[0]));

draw_set_font(global.TEXTBOX_FONT);
draw_text_ext(main_x, camera_get_view_y(view_camera[0]), textOnDisplay, 10, 230);
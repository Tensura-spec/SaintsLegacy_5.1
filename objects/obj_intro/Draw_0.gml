/// @description Draw the letter and text

//Draw the letter background
draw_sprite_ext(spr_letter, -1, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2, 1, 1, 0, c_white, 1);

//Sets the font
draw_set_font(global.gui_font);

//Draws the text of the letter
draw_text_shadowed(camera_get_view_x(view_camera[0]) + 64, camera_get_view_y(view_camera[0]) + 40,"Hola!\n"
+ " \n"
+ "Bienvenido a Saints Legacy \n"
+ "Descrubre la historia de los \n"
+ "Personajes que dan nombre a \n"
+ "los edificios de nuestro \n"
+ "colegio \n"
+ " \n"
+ "Esperamos que disfrutes de \n"
+ "este juego tanto como nosotros  \n"
+ "disfrutamos crearlo \n"
+ " \n"
+ " \n"
+ " \n"
+ "        - RLP - Tesistas", c_black, c_black, 1, 1, 0.25, 1);

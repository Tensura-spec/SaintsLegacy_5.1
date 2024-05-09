function scr_draw_textbox(argument0, argument1, argument2) {
	var posX = argument0;
	var posY = argument1;
	var text = argument2;

	var textLen = string_length(text);
	var fontSize = font_get_size(fntBigBlue);
  
	var tx = posX - (textLen / 2) * fontSize;
  
	draw_sprite_stretched(sprBlack, image_index, tx - 8, posY - 4, textLen * fontSize - 32, 48);
  
	draw_set_halign(fa_left);
	draw_text(posX - (textLen / 2) * fontSize, posY, text);  


}

/// @description Draw the player


//Draw normally
if (xscale == 1)
    draw_sprite(sprite_index, image_index, round(x), round(y)-4+(4*is_swimming));
else
    draw_sprite_ext(sprite_index, image_index, round(x)+16, round(y)-4+(4*is_swimming), -1, 1, 0, c_white, 1);
    
//Reset the shader
pal_swap_reset();


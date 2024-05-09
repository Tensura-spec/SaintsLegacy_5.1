/// @description

var bonusImageSize = sprite_get_width(tits);
var bonusScore = bonusImageSize;

var percentage = real(score / bonusScore);

if (percentage > 1.0)
{
  percentage = 1;
  
  draw_set_halign(fa_center);
  draw_text_transformed(x, y + 85, titsNames[? image_index], 0.2, 0.2, 0);
}

var drawDelta = real(bonusImageSize * percentage);

draw_sprite_part(tits, image_index, 0, bonusImageSize - int64(drawDelta), 160, int64(drawDelta), x - bonusImageSize / 2, y - bonusImageSize / 2);

//draw_sprite(tits, image_index, x, y);

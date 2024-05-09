/// @description

var drawColor = c_white;

draw_sprite_general(sprite, 0, left, top, width, height, x, y, 1, 1, 0, drawColor, drawColor, drawColor, drawColor, alpha);

speed = spd;
alpha -= 0.1;

if (x < 0 || x > room_width || y < 0 || y > room_height || alpha < 0)
{
  instance_destroy();
}
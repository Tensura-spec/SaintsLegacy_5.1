/// @description

angle += 90;
angle %= 360;

if (!scr_can_move(figurePosX))
{
  angle -= 90;

  if (angle < 0)
  {
    angle += 360;
  }
}

angle %= 360;

scr_update_figure();
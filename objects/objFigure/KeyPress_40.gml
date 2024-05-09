/// @description

if (scr_can_fall())
{
  global.CurrentFigure.figurePosY++;
  scr_update_figure();
}
else
{
  scr_place_figure();
}
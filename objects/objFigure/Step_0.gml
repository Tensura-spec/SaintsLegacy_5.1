/// @description

global.McsAcc = get_timer();

if (global.McsAcc - global.OldMcs > global.FallDelayMs * 1000)
{
  global.OldMcs = global.McsAcc;
  global.TickCount++;

  if (scr_can_fall())
  {
    global.CurrentFigure.figurePosY++;
    scr_update_figure();
  }
  else
  {
    scr_place_figure();
  }
}

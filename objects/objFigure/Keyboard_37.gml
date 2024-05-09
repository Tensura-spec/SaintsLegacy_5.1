/// @description

if (global.McsAcc - global.KeyMcs > (global.KeyMsDelay * 1000))
{
  global.KeyMcs = global.McsAcc;
  global.KeyMsDelay = KeyDelayMs;
    
  if (!skipFrameL)
  {
    scr_try_to_move_h(true);
  }
  
  if (skipFrameL)
  {
    skipFrameL = false;
  }  
}

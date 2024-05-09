/// @description

if (global.McsAcc - global.KeyMcs > (global.KeyMsDelay * 1000))
{
  global.KeyMcs = global.McsAcc;
  global.KeyMsDelay = KeyDelayMs;
    
  if (!skipFrameR)
  {
    scr_try_to_move_h(false);
  }
  
  if (skipFrameR)
  {
    skipFrameR = false;
  }  
}
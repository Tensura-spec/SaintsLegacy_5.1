function scr_drop_figure() {
	for (var row = figurePosY; row < CupHeight; row++)
	{
	  if (scr_can_fall())
	  {
	    figurePosY++;
	    scr_update_figure();
	  }
	  else
	  {
	    scr_place_figure();
	    break;
	  }
	}

	global.OldMcs = global.McsAcc;


}

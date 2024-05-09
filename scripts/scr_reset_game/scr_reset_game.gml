function scr_reset_game() {
	global.IsGameOver = false;

	var maxTits = sprite_get_number(tits);

	global.CurrentTit++;

	global.CurrentTit %= maxTits;

	tits.image_index = global.CurrentTit;

	score = 0;

	global.CurrentFigure = noone;

	global.FallDelayMs = 1000;

	global.KeyMcs = 0;
	global.KeyMsDelay = KeyInitialDelayMs;

	global.McsAcc = get_timer();
	global.OldMcs = global.McsAcc;
	global.TickCount = 0;

	scr_clear_blocks();

	for (var row = 0; row < ds_list_size(global.MapGrid); row++)
	{
	  ds_list_destroy(global.MapGrid[| row]);
	}

	ds_list_destroy(global.MapGrid);

	global.MapGrid = ds_list_create();

	for (var i = 0; i < CupHeight; i++)
	{
	  var row = ds_list_create();
	  for (var j = 0; j < CupWidth; j++)
	  {
	    ds_list_add(row, 0);
	  }
  
	  ds_list_add(global.MapGrid, row);
	}

	global.BlocksRef[0, 0] = 0;
	for (var rows = 0; rows < CupHeight; rows++)
	{
	  for (var cols = 0; cols < CupWidth; cols++)
	  {
	    global.BlocksRef[rows, cols] = 0;
	  }
	}

	scr_create_figure();


}

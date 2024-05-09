function scr_check_game_over() {
	for (var col = 0; col < 10; col++)
	{
	  if (scr_grid_get_value(1, col) == 1)
	  {
	    global.IsGameOver = true;
	    return true;
	  }
	}

	return false;


}

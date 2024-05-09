function scr_refresh_map() {
	for (var rows = 0; rows < CupHeight; rows++)
	{
	  for (var cols = 0; cols < CupWidth; cols++)
	  {
	    if (scr_grid_get_value(rows, cols) == 1)
	    {
	      scr_create_block(rows, cols);
	    }
	  }  
	}


}

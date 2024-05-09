function scr_clear_blocks() {
	for (var rows = 0; rows < CupHeight; rows++)
	{
	  for (var cols = 0; cols < CupWidth; cols++)
	  {
	    scr_destroy_block(rows, cols);
	  }  
	}


}

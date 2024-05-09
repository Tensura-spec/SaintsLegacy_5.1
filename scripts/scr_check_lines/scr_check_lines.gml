function scr_check_lines() {
	var lineFound = false;

	var linesNums = [];
	var counter = 0;
	for (var rows = ds_list_size(global.MapGrid) - 1; rows >= 0; rows--)
	{
	  if (scr_row_has_all(rows, 1))
	  {
	    linesNums[counter] = rows;
	    counter++;
	  }
	}

	for (var rows = 0; rows < array_length_1d(linesNums); rows++)
	{
	  for (var cols = 0; cols < 10; cols++)
	  {
	    var wCoords = scr_AtW(cols, linesNums[rows]);
	    instance_create_layer(wCoords[0] + 6, wCoords[1] + 6, "Instances", objExplosion);
	  }  
	}

	while (true)
	{ 
	  lineFound = false;
  
	  for (var rows = ds_list_size(global.MapGrid) - 1; rows >= 0; rows--)
	  {    
	    if (scr_row_has_all(rows, 1))
	    {
	      score++;
      
	      global.FallDelayMs -= FallDelayStepMs;
      
	      if (global.FallDelayMs < FallMinDelayMs)
	      {
	        global.FallDelayMs = FallMinDelayMs;
	      }
      
	      lineFound = true;
      
	      ds_list_delete(global.MapGrid, rows);
    
	      var emptyRow = ds_list_create();    
	      for (var col = 0; col < 10; col++)
	      {
	        ds_list_add(emptyRow, 0);
	      }
    
	      ds_list_insert(global.MapGrid, 0, emptyRow);      
	    }
	  }
  
	  if (!lineFound)
	  {
	    break;
	  }
	}


}

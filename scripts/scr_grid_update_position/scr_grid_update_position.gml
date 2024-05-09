function scr_grid_update_position() {
	for (var i = 0; i < 4; i++)
	{
	  var ax = arrayPositionsX[| i];
	  var ay = arrayPositionsY[| i];
  
	  scr_grid_set_value(ax, ay, 1);        
	}



}

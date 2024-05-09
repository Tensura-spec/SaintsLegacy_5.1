function scr_can_fall() {
	for (var i = 0; i < 4; i++)
	{
	  var xPos = global.CurrentFigure.arrayPositionsX[| i];
	  var yPos = global.CurrentFigure.arrayPositionsY[| i];
    
	  if (xPos + 1 > 19
	  || scr_grid_get_value(xPos + 1, yPos) == 1)   
	  {
	    return false;
	  }
	}

	return true;


}

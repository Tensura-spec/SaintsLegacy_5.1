function scr_can_be_placed(argument0, argument1) {
	var newX = argument0;
	var hx = argument1;

	if (newX < 0 || hx > 9)
	{
	  return false;
	}

	var checks = [];

	for (var i = 0; i < 4; i++)
	{
	  checks[i] = true;
	}

	switch (figType)
	{
  #region BLOCK
	  case Figures.FigBlock:
	  {
	    checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	    checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	    checks[2] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	    checks[3] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);    
	  }
	  break;
  #endregion
  
  #region STEP_LR
	  case Figures.FigStepLR:
	  {
	    if (angle == 0 || angle == 180)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX + 2) == 0);                                         
	    }
	    else if (angle == 90 || angle == 270)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX) == 0); 
	    }
	  }
	  break;
  #endregion
  
  #region STEP_RL
	  case Figures.FigStepRL:
	  {
	    if (angle == 0 || angle == 180)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX + 2) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX) == 0);                                 
	    }
	    else if (angle == 90 || angle == 270)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX + 1) == 0);                                 
	    }
	  }
	  break;
  #endregion
  
  #region BOOT_L
	  case Figures.FigBootL:
	  {
	    if (angle == 0)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY, newX + 2) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	    }
	    else if (angle == 90)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX + 1) == 0);
	    }
	    else if (angle == 180)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX + 2) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX + 2) == 0);
	    }
	    else if (angle == 270)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 2, newX) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX + 1) == 0);
	    }    
	  }
	  break;
  #endregion
  
  #region BOOT_R
	  case Figures.FigBootR:
	  {
	    if (angle == 0)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY, newX + 2) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX + 2) == 0);
	    }
	    else if (angle == 90)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 2, newX) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX + 1) == 0);
	    }
	    else if (angle == 180)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX + 2) == 0);      
	    }
	    else if (angle == 270)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX) == 0);            
	    }     
	  }
	  break;
  #endregion
  
  #region T
	  case Figures.FigT:
	  {
	    if (angle == 0)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX + 2) == 0);                            
	    }
	    else if (angle == 90)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX) == 0);                            
	    }
	    else if (angle == 180)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY, newX + 2) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);                            
	    }
	    else if (angle == 270)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 1, newX + 1) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 2, newX + 1) == 0);                            
	    }   
	  }
	  break;
  #endregion
  
  #region LINE
	  case Figures.FigLine:
	  {
	    if (angle == 0 || angle == 180)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY, newX + 1) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY, newX + 2) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY, newX + 3) == 0);                                  
	    }
	    else if (angle == 90 || angle == 270)
	    {
	      checks[0] = (scr_grid_get_value(figurePosY, newX) == 0);
	      checks[1] = (scr_grid_get_value(figurePosY + 1, newX) == 0);
	      checks[2] = (scr_grid_get_value(figurePosY + 2, newX) == 0);
	      checks[3] = (scr_grid_get_value(figurePosY + 3, newX) == 0);                                        
	    }
	  }
	  break;
  #endregion
	}

	for (var i = 0; i < 4; i++)
	{
	  if (checks[i] == false)
	  {
	    return false;
	  }
	}

	return true;


}

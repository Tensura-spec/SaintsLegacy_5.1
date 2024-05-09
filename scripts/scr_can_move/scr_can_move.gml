function scr_can_move(argument0) {
	var newPosX = argument0;

	if (figurePosY >= 18)
	{
	  return false;
	}

	var lx = 0;
	var hx = 0;

	switch (figType)
	{
	  case Figures.FigBlock:
	  {
	    lx = newPosX;
	    hx = newPosX + 1;
	  }
	  break;
  
	  case Figures.FigStepLR:
	  case Figures.FigStepRL:
	  {
	    lx = newPosX;
    
	    if (angle == 90 || angle == 270)
	    {
	      hx = newPosX + 1;
	    }
	    else
	    {
	      hx = newPosX + 2;
	    }
	  }
	  break;
  
	  case Figures.FigBootL:
	  case Figures.FigBootR:
	  case Figures.FigT:
	  {
	    lx = newPosX;
    
	    if (angle == 0 || angle == 180)
	    {
	      hx = newPosX + 2;  
	    }
	    else
	    {
	      hx = newPosX + 1;
	    }    
	  }
	  break;
  
	  case Figures.FigLine:
	  {
	    lx = newPosX;
    
	    if (angle == 0 || angle == 180)
	    {
	      hx = newPosX + 3;  
	    }
	    else
	    {
	      hx = newPosX;
	    }
	  }
	  break;  
	}

	return scr_can_be_placed(newPosX, hx);
	//return true;


}

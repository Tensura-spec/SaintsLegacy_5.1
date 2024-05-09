function scr_update_figure() {
	switch (figType)
	{
  #region BLOCK
	  case Figures.FigBlock:
	  {
	    blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	    blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	    blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	    blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	    blocks[2].x = LeftmostSquare + figurePosX * BlockSize;
	    blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	    blocks[3].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	    blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	    scr_assign_new_positions(figurePosX, figurePosY,
	                             figurePosX + 1, figurePosY,
	                             figurePosX, figurePosY + 1,
	                             figurePosX + 1, figurePosY + 1);                                
	  }
	  break;
  #endregion
  
  #region STEP_LR
	  case Figures.FigStepLR:
	  {
	    if (angle == 0 || angle == 180)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX + 1, figurePosY,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX + 2, figurePosY + 1);                                
	    }
	    else if (angle == 90 || angle == 270)
	    {
	      blocks[0].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX + 1, figurePosY,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX, figurePosY + 1,
	                               figurePosX, figurePosY + 2);                                
	    }
	  }
	  break;
  #endregion
  
  #region STEP_RL
	  case Figures.FigStepRL:
	  {
	    if (angle == 0 || angle == 180)
	    {
	      blocks[0].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;
            
	      scr_assign_new_positions(figurePosX + 2, figurePosY,
	                               figurePosX + 1, figurePosY,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX, figurePosY + 1);                                
	    }
	    else if (angle == 90 || angle == 270)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 2);
	    }
	  }
	  break;
  #endregion
  
  #region BOOT_L
	  case Figures.FigBootL:
	  {
	    if (angle == 0)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[2].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[3].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;      
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX + 1, figurePosY,
	                               figurePosX + 2, figurePosY,
	                               figurePosX, figurePosY + 1);                                
	    }
	    else if (angle == 90)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX + 1, figurePosY,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 2);                                
	    }
	    else if (angle == 180)
	    {
	      blocks[0].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;
      
	      scr_assign_new_positions(figurePosX + 2, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX + 2, figurePosY + 1);                                
	    }
	    else if (angle == 270)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 2) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX, figurePosY + 2,
	                               figurePosX + 1, figurePosY + 2);                                
	    }    
	  }
	  break;
  #endregion
  
  #region BOOT_R
	  case Figures.FigBootR:
	  {
	    if (angle == 0)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[2].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;      
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX + 1, figurePosY,
	                               figurePosX + 2, figurePosY,
	                               figurePosX + 2, figurePosY + 1);                                
	    }
	    else if (angle == 90)
	    {
	      blocks[0].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 2) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX + 1, figurePosY,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX, figurePosY + 2,
	                               figurePosX + 1, figurePosY + 2);                                
	    }
	    else if (angle == 180)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX + 2, figurePosY + 1);                                
	    }
	    else if (angle == 270)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX + 1, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX, figurePosY + 2);                                
	    }     
	  }
	  break;
  #endregion
  
  #region T
	  case Figures.FigT:
	  {
	    if (angle == 0)
	    {
	      blocks[0].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;      
      
	      scr_assign_new_positions(figurePosX + 1, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX + 2, figurePosY + 1);                                
	    }
	    else if (angle == 90)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX, figurePosY + 2);                                
	    }
	    else if (angle == 180)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[2].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 1) * BlockSize;
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                               figurePosX + 1, figurePosY,
	                               figurePosX + 2, figurePosY,
	                               figurePosX + 1, figurePosY + 1);                                
	    }
	    else if (angle == 270)
	    {
	      blocks[0].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 2) * BlockSize;
      
	      scr_assign_new_positions(figurePosX + 1, figurePosY,
	                               figurePosX, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 1,
	                               figurePosX + 1, figurePosY + 2);                                
	    }   
	  }
	  break;
  #endregion
  
  #region LINE
	  case Figures.FigLine:
	  {
	    if (angle == 0 || angle == 180)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + (figurePosX + 1) * BlockSize;
	      blocks[1].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[2].x = LeftmostSquare + (figurePosX + 2) * BlockSize;
	      blocks[2].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[3].x = LeftmostSquare + (figurePosX + 3) * BlockSize;
	      blocks[3].y = UpmostSquare + figurePosY * BlockSize;      
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                                figurePosX + 1, figurePosY,
	                                figurePosX + 2, figurePosY,
	                                figurePosX + 3, figurePosY);  
	    }
	    else if (angle == 90 || angle == 270)
	    {
	      blocks[0].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[0].y = UpmostSquare + figurePosY * BlockSize;
    
	      blocks[1].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[1].y = UpmostSquare + (figurePosY + 1) * BlockSize;
    
	      blocks[2].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[2].y = UpmostSquare + (figurePosY + 2) * BlockSize;
    
	      blocks[3].x = LeftmostSquare + figurePosX * BlockSize;
	      blocks[3].y = UpmostSquare + (figurePosY + 3) * BlockSize;      
      
	      scr_assign_new_positions(figurePosX, figurePosY,
	                                figurePosX, figurePosY + 1,
	                                figurePosX, figurePosY + 2,
	                                figurePosX, figurePosY + 3);  
	    }
	  }
	  break;
  #endregion
	}




}

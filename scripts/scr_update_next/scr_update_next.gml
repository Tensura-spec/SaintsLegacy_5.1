/// @description
function scr_update_next() {

	switch (global.NextFigure)
	{
  #region BLOCK
	  case Figures.FigBlock:
	  {
	    blocksNext[0].x = drawPosX;
	    blocksNext[0].y = drawPosY;
    
	    blocksNext[1].x = drawPosX + BlockSize;
	    blocksNext[1].y = drawPosY;
    
	    blocksNext[2].x = drawPosX;
	    blocksNext[2].y = drawPosY + BlockSize;
    
	    blocksNext[3].x = drawPosX + BlockSize;
	    blocksNext[3].y = drawPosY + BlockSize;    
	  }
	  break;
  #endregion
  
  #region STEPLR
	  case Figures.FigStepLR:
	  {
	    blocksNext[0].x = drawPosX;
	    blocksNext[0].y = drawPosY;
    
	    blocksNext[1].x = drawPosX + BlockSize;
	    blocksNext[1].y = drawPosY;
    
	    blocksNext[2].x = drawPosX + BlockSize;
	    blocksNext[2].y = drawPosY + BlockSize;
    
	    blocksNext[3].x = drawPosX + BlockSize * 2;
	    blocksNext[3].y = drawPosY + BlockSize;      
	  }
	  break;
  #endregion
  
  #region STEPRL
	  case Figures.FigStepRL:
	  {
	    blocksNext[0].x = drawPosX + BlockSize * 2;
	    blocksNext[0].y = drawPosY;
    
	    blocksNext[1].x = drawPosX + BlockSize;
	    blocksNext[1].y = drawPosY;
    
	    blocksNext[2].x = drawPosX + BlockSize;
	    blocksNext[2].y = drawPosY + BlockSize;
    
	    blocksNext[3].x = drawPosX;
	    blocksNext[3].y = drawPosY + BlockSize;      
	  }
	  break;
  #endregion
  
  #region BOOTL
	  case Figures.FigBootL:
	  {
	    blocksNext[0].x = drawPosX;
	    blocksNext[0].y = drawPosY;
    
	    blocksNext[1].x = drawPosX + BlockSize;
	    blocksNext[1].y = drawPosY;
    
	    blocksNext[2].x = drawPosX + BlockSize * 2;
	    blocksNext[2].y = drawPosY;
    
	    blocksNext[3].x = drawPosX;
	    blocksNext[3].y = drawPosY + BlockSize;      
	  }
	  break;
  #endregion
  
  #region BOOTR
	  case Figures.FigBootR:
	  {
	    blocksNext[0].x = drawPosX;
	    blocksNext[0].y = drawPosY;
    
	    blocksNext[1].x = drawPosX + BlockSize;
	    blocksNext[1].y = drawPosY;
    
	    blocksNext[2].x = drawPosX + BlockSize * 2;
	    blocksNext[2].y = drawPosY;
    
	    blocksNext[3].x = drawPosX + BlockSize * 2;
	    blocksNext[3].y = drawPosY + BlockSize;      
	  }
	  break;
  #endregion
  
  #region T
	  case Figures.FigT:
	  {
	    blocksNext[0].x = drawPosX + BlockSize;
	    blocksNext[0].y = drawPosY;
    
	    blocksNext[1].x = drawPosX;
	    blocksNext[1].y = drawPosY + BlockSize;
    
	    blocksNext[2].x = drawPosX + BlockSize;
	    blocksNext[2].y = drawPosY + BlockSize;
    
	    blocksNext[3].x = drawPosX + BlockSize * 2;
	    blocksNext[3].y = drawPosY + BlockSize;      
	  }
	  break;
  #endregion
  
  #region LINE
	  case Figures.FigLine:
	  {
	    blocksNext[0].x = drawPosX;
	    blocksNext[0].y = drawPosY;
    
	    blocksNext[1].x = drawPosX + BlockSize;
	    blocksNext[1].y = drawPosY;
    
	    blocksNext[2].x = drawPosX + BlockSize * 2;
	    blocksNext[2].y = drawPosY;
    
	    blocksNext[3].x = drawPosX + BlockSize * 3;
	    blocksNext[3].y = drawPosY;      
	  }
	  break;
  #endregion
	}


}

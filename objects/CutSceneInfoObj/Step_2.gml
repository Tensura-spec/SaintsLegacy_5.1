   
    NumPellets = instance_number(PelletObj);
    //if(NumPellets<=0)
    //{
    //    instance_create(x,y,PauseOnRoomNextObj);
    //}
    
    PacSpeed = MOVEMENTSPEED;
    ThereAreGhosts = instance_number(BlueGhostObj);
    if(!ThereAreGhosts)
    {
        PacSpeed *= .90;//LevelData(PacManSpeed);
        PacDotsSpeed *= .8;
    }
    else
    {
        PacSpeed *= 1; //LevelData(FrightPacManSpeed);
        PacDotsSpeed *= 1.1;//LevelData(FrightPacManDotsSpeed);
    }
    
    //show_debug_message(string(PacSpeed)+ " " +string(BlueGhostScore))

    
    


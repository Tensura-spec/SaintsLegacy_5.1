    if(score>high_score) high_score = score

    
    
    if(lives <=0)
    {
        room_goto(room_first);
        
    }
    
    if(lives<5)
    if(score>nextlife) 
    {
        lives+=1;
        nextlife+=extralife;
        sound_play(NewLife_snd);
    }
    
    NumPellets = instance_number(PelletObj);
    if(NumPellets<=0 and !instance_exists(PauseOnRoomNextObj))
    {
        with(PackmanObj) image_speed = 0;
        if(score>=high_score) highscore_add("PAC",score);
        instance_create(x,y,PauseOnRoomNextObj);
    }
    
    
    PacSpeed = MOVEMENTSPEED;
    PacDotsSpeed = MOVEMENTSPEED;
    
    ThereAreGhosts = instance_number(BlueGhostObj);
    if(!ThereAreGhosts)
    {
        PacSpeed *= LevelData(PacManSpeed);
        PacDotsSpeed *= LevelData(PacManSpeed) * LevelData(PacManDotsSpeed); // Pac-Man's dot speed is relative to his current speed, not max speed.
    }
    else
    {
        PacSpeed *= LevelData(FrightPacManSpeed);
        PacDotsSpeed *= LevelData(PacManSpeed) * LevelData(FrightPacManDotsSpeed); // Pac-Man's dot speed is relative to his current speed, not max speed.
    }
    
    BlinkyGhostSpeed = MOVEMENTSPEED;
    

    if(NumPellets<=(LevelData(Elroy2DotsLeft))) 
    {
        BlinkyGhostSpeed *= LevelData(Elroy2Speed)
        Elroy = 1;
    }
    else if(NumPellets<=(LevelData(Elroy1DotsLeft))) 
    {
        BlinkyGhostSpeed *= LevelData(Elroy1Speed)
        Elroy = 1;
    }
    else 
        BlinkyGhostSpeed *=LevelData(GhostSpeed)
        
    //reset to 200
    if(!ThereAreGhosts and!instance_number(PausedObj)) BlueGhostScore = 200;
    //show_debug_message(string(ThereAreGhosts)+ " " +string(BlueGhostScore))
    
    
    


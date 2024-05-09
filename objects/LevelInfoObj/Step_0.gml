    if (GlobalDotCounter = 32 and !ClydeLeftHouse)
    {
        GlobalDotCounter = 0;
        GhostCountersDisabled = 0;
    }
    
    // For the global dot timer
    if (atepellet = 0 and alarm[0] <= 0 and !instance_exists(PausedObj))
    {
        if (Level < 5)
        alarm[0] = room_speed * 4;
        else if (Level >= 5)
        alarm[0] = room_speed * 3;
    }
    
    // If Pacman ate a pellet, reset the dot timer
    if (atepellet != 0)
    alarm[0] = -1;
    
    
    
    
    


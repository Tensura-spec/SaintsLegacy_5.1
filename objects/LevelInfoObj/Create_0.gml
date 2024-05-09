audio_stop_all();
globalvar RoomLast; RoomLast = room;
globalvar ThereAreGhosts; ThereAreGhosts = 0;
globalvar BlueGhostScore; BlueGhostScore = 200;
globalvar Elroy; Elroy = 0;
globalvar PacReset; PacReset = 1;

// Dot Counter Variables
globalvar GlobalDotCounter; GlobalDotCounter = 0; // Ghost dot counter for all three ghosts, triggers after Pacman dies
globalvar GhostCountersDisabled; GhostCountersDisabled = 0; // Disables all individual Ghost dot counters and allows the Global one to start
globalvar PinkyDotCounter; PinkyDotCounter = 0;
globalvar InkyDotCounter; InkyDotCounter = 0; 
globalvar ClydeDotCounter; ClydeDotCounter = 0;
globalvar PinkyLeftHouse; PinkyLeftHouse = false;
globalvar InkyLeftHouse; InkyLeftHouse = false;
globalvar ClydeLeftHouse; ClydeLeftHouse = false;
globalvar AttackMode; AttackMode = 0;

// Siren Variables
SirenPitch = 0;
RemSirenPitch = 0;


if(room == PlayfieldStart_room or room == PlayfieldDemo_room or room == Start_room or room == GhostRoom)
{
    
//    globalvar MOVEMENTSPEED; MOVEMENTSPEED  = 1.5;
    globalvar MOVEMENTSPEED; MOVEMENTSPEED  = 2.0;
    globalvar PacSpeed; PacSpeed = MOVEMENTSPEED;
    globalvar PacDotsSpeed; PacDotsSpeed = MOVEMENTSPEED;
    globalvar LevelDataGrid; LevelDataGrid = 0;
    globalvar atepellet; atepellet = 0;
    
    globalvar TotalPellets; TotalPellets = 0;
    globalvar high_score; high_score = highscore_value(1);
    globalvar NumPellets; NumPellets = 0; 
    globalvar nextlife, extralife;
    extralife = 10000;
    nextlife = extralife;
    lives = 3;
    score = 0;
    globalvar Level,BonusSymbol,BonusPoints,PacManSpeed,PacManDotsSpeed,GhostSpeed,GhostTunnelSpeed,Elroy1DotsLeft,Elroy1Speed,Elroy2DotsLeft,Elroy2Speed,FrightPacManSpeed,FrightPacManDotsSpeed,FrightGhostSpeed,FrightTimeinsec,NumberofFlashes;
    //What level we on?
    if(room == PlayfieldDemo_room)
    {
        globalvar ailastlevel; ailastlevel= 1;
        Level = ailastlevel;
    }
    else
        Level =1;
    //reference position in the data grid
    BonusSymbol = 1;
    BonusPoints = 2;
    PacManSpeed = 3;
    PacManDotsSpeed = 4
    GhostSpeed = 5;
    GhostTunnelSpeed = 6;
    Elroy1DotsLeft = 7;
    Elroy1Speed = 8;
    Elroy2DotsLeft = 9;
    Elroy2Speed = 10;
    FrightPacManSpeed = 11;
    FrightPacManDotsSpeed = 12;
    FrightGhostSpeed = 13;
    FrightTimeinsec = 14;
    NumberofFlashes = 15;
    
    //Named fruits
    globalvar Cherry, Strawberry, Peach, Apple, Melon, Galaxian, Bell, Key;
    Cherry = 0;
    Strawberry = 1;
    Peach = 2;
    Apple = 3;
    Melon = 4;
    Galaxian = 5;
    Bell = 6;
    Key = 7;
    
    //only once is needed
    //The data grid hoding all the items specs for each level
    if !ds_exists(LevelDataGrid, ds_type_grid)
    {
    LevelDataGrid = ds_grid_create(16,22)
    //copied from table, I converted the header text to actualy reference vars
    //I created a Stub function to set the grid data, that way I needed little coding
    //but copy the table...
    
    // There is an error with this table. The Pacman Dot speed should be relative to the Pacman's current speed, not his max speed.
    
    //dummy enty, so grid has level 1 as grid row 1 
    LevelDataSet(Level,BonusSymbol,BonusPoints,PacManSpeed,PacManDotsSpeed,GhostSpeed,GhostTunnelSpeed,Elroy1DotsLeft,Elroy1Speed,Elroy2DotsLeft,Elroy2Speed,FrightPacManSpeed,FrightPacManDotsSpeed,FrightGhostSpeed,FrightTimeinsec,NumberofFlashes);
    LevelDataSet(1,Cherry,100,80/100,71/100,75/100,40/100,20,80/100,10,85/100,90/100,79/100,50/100,6,5);
    LevelDataSet(2,Strawberry,300,90/100,79/100,85/100,45/100,30,90/100,15,95/100,95/100,83/100,55/100,5,5);
    LevelDataSet(3,Peach,500,90/100,79/100,85/100,45/100,40,90/100,20,95/100,95/100,83/100,55/100,4,5);
    LevelDataSet(4,Peach,500,90/100,79/100,85/100,45/100,40,90/100,20,95/100,95/100,83/100,55/100,3,5);
    LevelDataSet(5,Apple,700,100/100,87/100,95/100,50/100,40,100/100,20,105/100,100/100,87/100,60/100,2,5);
    LevelDataSet(6,Apple,700,100/100,87/100,95/100,50/100,50,100/100,25,105/100,100/100,87/100,60/100,5,5);
    LevelDataSet(7,Melon,1000,100/100,87/100,95/100,50/100,50,100/100,25,105/100,100/100,87/100,60/100,2,5);
    LevelDataSet(8,Melon,1000,100/100,87/100,95/100,50/100,50,100/100,25,105/100,100/100,87/100,60/100,2,5);
    LevelDataSet(9,Galaxian,2000,100/100,87/100,95/100,50/100,60,100/100,30,105/100,100/100,87/100,60/100,1,3);
    LevelDataSet(10,Galaxian,2000,100/100,87/100,95/100,50/100,60,100/100,30,105/100,100/100,87/100,60/100,5,5);
    LevelDataSet(11,Bell,3000,100/100,87/100,95/100,50/100,60,100/100,30,105/100,100/100,87/100,60/100,2,5);
    LevelDataSet(12,Bell,3000,100/100,87/100,95/100,50/100,80,100/100,40,105/100,100/100,87/100,60/100,1,3);
    LevelDataSet(13,Key,5000,100/100,87/100,95/100,50/100,80,100/100,40,105/100,100/100,87/100,60/100,1,3);
    LevelDataSet(14,Key,5000,100/100,87/100,95/100,50/100,80,100/100,40,105/100,100/100,87/100,60/100,3,5);
    LevelDataSet(15,Key,5000,100/100,87/100,95/100,50/100,100,100/100,50,105/100,100/100,87/100,60/100,1,3);
    LevelDataSet(16,Key,5000,100/100,87/100,95/100,50/100,100,100/100,50,105/100,100/100,87/100,60/100,1,3);
    LevelDataSet(17,Key,5000,100/100,87/100,95/100,50/100,100,100/100,50,105/100,0,0,0,0,0);
    LevelDataSet(18,Key,5000,100/100,87/100,95/100,50/100,100,100/100,50,105/100,100/100,87/100,60/100,1,3);
    LevelDataSet(19,Key,5000,100/100,87/100,95/100,50/100,120,100/100,60,105/100,0,0,0,0,0);
    LevelDataSet(20,Key,5000,100/100,87/100,95/100,50/100,120,100/100,60,105/100,0,0,0,0,0);
    LevelDataSet(21,Key,5000,90/100,79/100,95/100,50/100,120,100/100,60,105/100,0,0,0,0,0);
    }
}
else if(room == PlayfieldContinue_room or room == PlayfieldDemoContinue_room)
{
    //Increase the level
    Level +=1;
    if(room == PlayfieldDemoContinue_room) ailastlevel+=1;
}

globalvar BlinkyGhostSpeed; BlinkyGhostSpeed = MOVEMENTSPEED;
globalvar RegGhostSpeed; RegGhostSpeed = MOVEMENTSPEED;
globalvar BlueGhostSpeed; BlueGhostSpeed = MOVEMENTSPEED;
globalvar RegGhostTunnelSpeed; RegGhostTunnelSpeed = MOVEMENTSPEED;

globalvar FrightTime; FrightTime = room_speed * LevelData(FrightTimeinsec);
globalvar StartFlashTime; StartFlashTime = max(FrightTime - (room_speed/4 * LevelData(NumberofFlashes)) * 2,1);

RegGhostSpeed *= LevelData(GhostSpeed);
BlueGhostSpeed *= LevelData(FrightGhostSpeed);
BlinkyGhostSpeed = RegGhostSpeed;
RegGhostTunnelSpeed *= LevelData(GhostTunnelSpeed);

// Get total number of pellets
alarm[1] = 1;



audio_stop_all();
if(room == CarlosCrespiRecuerdo) 
{
audio_play_sound(CutScene_snd, 0, true);
alarm[0] = 11*room_speed;
}
else
alarm[0] = 18*room_speed;
globalvar ThereAreGhosts; ThereAreGhosts = 0;
globalvar BlueGhostScore; BlueGhostScore = 200;
globalvar Elroy; Elroy = 0;
globalvar PacReset; PacReset = 1;
if(room == Start_room or room == PlayfieldDemo_room)
{
    globalvar LevelDataGrid; LevelDataGrid = 0
    globalvar MOVEMENTSPEED; MOVEMENTSPEED  = 1.5;
    globalvar PacSpeed; PacSpeed = MOVEMENTSPEED;
    globalvar PacDotsSpeed; PacDotsSpeed = MOVEMENTSPEED;
    globalvar atepellet; atepellet = 0;
    
    globalvar high_score; high_score = highscore_value(1);
    globalvar NumPellets; NumPellets = 0; 
    globalvar nextlife, extralife;
    extralife = 10000;
    nextlife = extralife;
    //lives = 3;
    //score = 0;
    globalvar Level,BonusSymbol,BonusPoints,PacManSpeed,PacManDotsSpeed,GhostSpeed,GhostTunnelSpeed,Elroy1DotsLeft,Elroy1Speed,Elroy2DotsLeft,Elroy2Speed,FrightPacManSpeed,FrightPacManDotsSpeed,FrightGhostSpeed,FrightTimeinsec,NumberofFlashes;
    //What level we on?
    if(room == PlayfieldDemo_room)
    {
        
        globalvar ailastlevel; ailastlevel= 1;
        Level = ailastlevel;
    }
    else
        Level = 1;
    //reference position in the data grid
    BonusSymbol = 1
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
//    globalvar LevelDataGrid; 
    LevelDataGrid = ds_grid_create(16,22)
    //copied from table, I converted the header text to actualy reference vars
    //I created a Stub function to set the grid data, that way I needed little coding
    //but copy the table...
    
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

globalvar BlinkyGhostSpeed; BlinkyGhostSpeed = MOVEMENTSPEED;
globalvar RegGhostSpeed; RegGhostSpeed = MOVEMENTSPEED;
globalvar BlueGhostSpeed; BlueGhostSpeed = MOVEMENTSPEED;

globalvar FrightTime; FrightTime = room_speed * LevelData(FrightTimeinsec);
globalvar StartFlashTime; StartFlashTime = max(FrightTime - (room_speed/4 * LevelData(NumberofFlashes)) * 2,1);

RegGhostSpeed *= 1;//LevelData(PacManSpeed);
BlueGhostSpeed *= .3;//LevelData(FrightGhostSpeed);
BlinkyGhostSpeed = RegGhostSpeed;


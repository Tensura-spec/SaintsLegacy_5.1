GetLastTile = lasttile;
GetTheCurrentScript = current_script;
GetChangeDirection = ChangeDirection;
event_inherited();
lasttile = GetLastTile;
ChangeDirection = GetChangeDirection;
current_script = GetTheCurrentScript


with(GhostPatternObj)
{
timeline_running = 0;
alarm[1] = 1;
}

CurrentTile = collision_point(floor(x),floor(y),TileObj,0,0);
if (CurrentTile.InGhostHouse != 1)
{
current_script = GhostGotoRandomTile;
}

alarm[2] = FrightTime;
alarm[3] = StartFlashTime;
if (room != Start_room)
{
alarm[4] = 1;
}




HomeTile = noone;




CurrentTile = collision_point(floor(x),floor(y),TileObj,0,0);
//CheckDirection = collision_point(x, y, GhostDirectionObj,0,0);


if(object_index == BlueGhostObj and CurrentTile.InGhostHouse = 1) 
    maxspeed = BlueGhostSpeed * 2;
else if(object_index == BlueGhostObj and CurrentTile.object_index = TileGhost60spdObj) 
    maxspeed = BlueGhostSpeed / 2;
else if(object_index == BlueGhostObj) 
    maxspeed = BlueGhostSpeed;
else if(object_index == BlinkyObj and CurrentTile.object_index != TileGhost60spdObj)
    maxspeed = BlinkyGhostSpeed 
else if (object_index != GhostEyesObj and CurrentTile.object_index != TileGhost60spdObj) 
    maxspeed = RegGhostSpeed;
else if (object_index != GhostEyesObj)
    maxspeed = RegGhostTunnelSpeed;
    

//fix for wondering eyes
direction = round(direction/90) * 90
/*
if (CheckDirection != noone)
{
DirectionChangeDelay = 50
frame = (DirectionSelected/360) * 8;
}
else if (DirectionChangeDelay = 0)
frame = (direction/360) * 8;
else
DirectionChangeDelay -=1*/
frame = (direction/360) * 8;
//all animation have 2 frames, each animation is at 0,2,4,6 
AnimatePart(frame,2)

/* */
/*  */

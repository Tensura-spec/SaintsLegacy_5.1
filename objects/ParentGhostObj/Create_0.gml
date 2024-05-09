image_speed = .25;
frame = 0;
speed = 0;
maxspeed = 1;
alarm[0] = 1;
DirectionSelected = 0;
CurrentTile = 0;
DirectionChangeDelay = 0;

// These three variables had to be initialized differently in order for the game to work in Game Maker Studio.
ChangeDirection = 0;
lasttile = noone;
current_script = 0;



//path
path = path_add();
//path is shapr corners (a straight line anyway here)
path_set_kind(path,0);
//path is not closed
path_set_closed(path,0);





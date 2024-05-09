direction = 180
image_speed = .25;
frame = 0;
speed = 0;
maxspeed = 1;
ChangeDirection = 0
alarm[0] = 1;

lasttile = instance_nearest(x,y,TileObj);
//path
path = path_add();
//path is shapr corners (a straight line anyway here)
path_set_kind(path,0);
//path is not closed
path_set_closed(path,0);
endt = noone;
//default script
//if(!current_script)
current_script = DemoPackmanMove;
flipcount =0;

instance_create(0,0,GhostsSpawnObj);


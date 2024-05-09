keyboard_set_map(ord("W"),vk_up);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("S"),vk_down);
keyboard_set_map(ord("D"),vk_right);

random_set_seed(66);

image_speed = .25;
frame = 0;
dir = 2;
maxspeed = 1;
lasttile = noone;
SpeedNow = 0;

BlueScore =200;
//hspeed = -maxspeed;
instance_create(0,0,GhostsSpawnObj); // Used to initialize some variables the ghosts use.



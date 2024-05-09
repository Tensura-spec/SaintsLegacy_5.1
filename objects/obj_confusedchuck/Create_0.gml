/// @description Confused Chuck

//Inherit event from chuck
event_inherited();

//How vulnerable is this enemy to Mario?
stomp = 4;

//How edible is this enemy to Yoshi?
edible = 2;

//Does this enemy turn into a silver coin?
turn_silver = 0;

//NPC Health
hp = 2;
firehp = 4;

//Do not animate
image_speed = 0;
image_index = 0;

//Number of balls to throw
balls = round(random_range(2, 5));

//Whether the chuck is jumping
jumping = 0;

//Whether the chuck is throwing
throwing = 0;

//Throw balls
alarm[0] = 60;

//Deny alarm 10
alarm[10] = -1;
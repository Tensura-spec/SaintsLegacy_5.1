



var Blinkyx, Blinkyy, BlinkyVector, VectorDirection;


// Get Blinky's position

if (instance_exists(BlinkyObj))
{
    Blinkyx = BlinkyObj.x
    Blinkyy = BlinkyObj.y
}
else
{
    with(BlueGhostObj)
    {
        if (WhoIWas = BlinkyObj)
        {
            Blinkyx = x
            Blinkyy = y
        }
    }
    with(GhostEyesObj)
    {
        if (WhoIWas = BlinkyObj)
        {
            Blinkyx = x
            Blinkyy = y
        }
    }
}



// Without the offset bug
/*
BlinkyVector = point_distance(Blinkyx, Blinkyy, PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction), PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction))
VectorDirection = point_direction(Blinkyx, Blinkyy, PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction), PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction))


x = (PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction)) + lengthdir_x(BlinkyVector, VectorDirection)
y = (PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction)) + lengthdir_y(BlinkyVector, VectorDirection)
*/

// With the offset bug


if (PackmanObj.direction != 90)
{
    BlinkyVector = point_distance(Blinkyx, Blinkyy, PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction), PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction))
    VectorDirection = point_direction(Blinkyx, Blinkyy, PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction), PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction))
    x = (PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction)) + lengthdir_x(BlinkyVector, VectorDirection)
    y = (PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction)) + lengthdir_y(BlinkyVector, VectorDirection)
}
else
{
    BlinkyVector = point_distance(Blinkyx, Blinkyy, PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction) + lengthdir_x(12*2,180), PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction) + lengthdir_y(12*2,180))
    VectorDirection = point_direction(Blinkyx, Blinkyy, PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction) + lengthdir_x(12*2,180), PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction) + lengthdir_y(12*2,180))
    x = (PackmanObj.x + lengthdir_x(12*2,PackmanObj.direction) + lengthdir_x(12*2,180)) + lengthdir_x(BlinkyVector, VectorDirection)
    y = (PackmanObj.y + lengthdir_y(12*2,PackmanObj.direction) + lengthdir_y(12*2,180)) + lengthdir_y(BlinkyVector, VectorDirection)
}


/* */
/*  */

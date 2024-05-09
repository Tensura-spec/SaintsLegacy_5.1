/* Without the offset bug
x = PackmanObj.x + lengthdir_x(12*4,PackmanObj.direction);
y = PackmanObj.y + lengthdir_y(12*4,PackmanObj.direction);
*/

if (PackmanObj.direction != 90)
{
x = PackmanObj.x + lengthdir_x(12*4,PackmanObj.direction);
y = PackmanObj.y + lengthdir_y(12*4,PackmanObj.direction);
}
else
{
x = PackmanObj.x + lengthdir_x(12*4,PackmanObj.direction) + lengthdir_x(12*4,180);
y = PackmanObj.y + lengthdir_y(12*4,PackmanObj.direction) + lengthdir_y(12*4,180);
}

/* */
/*  */

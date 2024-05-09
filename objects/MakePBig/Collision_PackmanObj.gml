if(alarm[0]) 
{
    alarm[0] = 2;
    exit;
}
alarm[0] = 2;
with(other) {image_xscale = 3; image_yscale = 3;}
with(ParentGhostObj) GhostFlipDirection()

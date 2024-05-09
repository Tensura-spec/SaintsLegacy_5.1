image_speed = 0;
alarm[1] = 1;
with(ParentGhostObj)
{
        if(!collision_circle(other.x,other.y,6,id,0,0) and object_index != GhostEyesObj) // Don't freeze eye sprite speed since they are supposed to be moving.
        {
            with(instance_create(x,y,GhostPausedObj))
            {
                image_index = other.image_index;
                sprite_index = other.sprite_index;
            }
        }
        else if (collision_circle(other.x,other.y,6,id,0,0) and object_index = GhostEyesObj)
        visible = false;

if (object_index != GhostEyesObj)
{
    var i; i = 0;
    repeat(12)
    {
        remalarm[i] = alarm[i];
        alarm[i] = -1;    // Stop all timers
        i+=1;
    }
    remXXX = x;
    remYYY = y;
    rempspeed = path_speed;
    path_speed = 0;
    remimgspeed = image_speed;
    image_speed = 0;
    if(collision_circle(other.x,other.y,6,id,0,0))
    {
        visible = false;
        x = -100000000;
        y = 100000000;
    }
}
}
//instance_deactivate_object(ParentGhostObj);



with(PackmanObj)
{
        remXXX = x;
        remYYY = y;
        remhspeed = hspeed;
        remvspeed = vspeed;
        hspeed = 0;
        vspeed = 0;
    if(collision_circle(other.x,other.y,6,id,0,0))
    {
        visible = false;
        x = -100000000;
        y = -100000000
    }
}

with(DemoPackmanObj)
{
        rempspeed = path_speed;
        var i; i = 0;
        repeat(12)
        {
            remalarm[i] = alarm[i];
            alarm[i] = -1;
            i+=1;
        }
        visible = false;

        path_speed = 0;
}


with(PackmanObj) {x = remXXX; y = remYYY;}
/*
with(ParentGhostObj) {x = remXXX; y = remYYY;}
*/

alarm[0] = room_speed;

/* */
/*  */

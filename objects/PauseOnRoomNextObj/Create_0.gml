with(ParentGhostObj)
{
        var i; i = 0;
        repeat(12)
        {
            remalarm[i] = alarm[i];
            alarm[i] = -1;
            i+=1;
        }
        rempspeed = path_speed;
        path_speed = 0;
}
with(DemoPackmanObj)
{
        var i; i = 0;
        repeat(12)
        {
            remalarm[i] = alarm[i];
            alarm[i] = -1;
            i+=1;
        }
        rempspeed = path_speed;
        path_speed = 0;
}

with(PackmanObj)
{
        remhspeed = hspeed;
        remvspeed = vspeed;
        hspeed = 0;
        vspeed = 0;
}

alarm[0] = room_speed*2;


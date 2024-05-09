audio_stop_all();

with(ParentGhostObj)
{
        rempspeed = path_speed;
        var i; i = 0;
        repeat(12)
        {
            remalarm[i] = alarm[i];
            alarm[i] = -1;
            i+=1;
        }
        path_speed = 0;
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
        path_speed = 0;
}
with(PackmanObj)
{
        remhspeed = hspeed;
        remvspeed = vspeed;
        hspeed = 0;
        vspeed = 0;
}

alarm[0] = room_speed;


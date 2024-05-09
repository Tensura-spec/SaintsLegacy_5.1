if(instance_number(PausedObj) == 1)
{
    with(PackmanObj) {visible = true; hspeed = remhspeed; vspeed = remvspeed;}
    with(ParentGhostObj) 
    {
        visible = true; 
        path_speed = maxspeed; 
        var i; i = 0;
        repeat(12)
        {
            alarm[i] = remalarm[i];
            i+=1;
        }
    }
    with(DemoPackmanObj) 
    {
        visible = true; 
        path_speed = maxspeed; 
        var i; i = 0;
        repeat(12)
        {
            alarm[i] = remalarm[i];
            i+=1;
        }
    }
}
instance_destroy();


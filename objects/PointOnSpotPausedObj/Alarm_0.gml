if(instance_number(PausedObj) == 1)
{
    with(PackmanObj) {visible = true; hspeed = remhspeed; vspeed = remvspeed;}
    with(GhostPausedObj)
    {
        instance_destroy()
    }
//    instance_activate_object(ParentGhostObj);
    if (instance_exists(GhostEyesObj))
    GhostEyesObj.visible = true;

    
    with(ParentGhostObj) 
    {
        if (object_index != GhostEyesObj)
        {
        visible = true; 
        image_speed = remimgspeed;
        path_speed = maxspeed; 
        var i; i = 0;
        repeat(12)
        {
            alarm[i] = remalarm[i]+1;
            i+=1;
        }
        }
    }
    
    with(DemoPackmanObj) 
    {
        visible = true; 
        path_speed = maxspeed; 
        var i; i = 0;
        repeat(12)
        {
            alarm[i] = remalarm[i]+1;
            i+=1;
        }
    }
}
instance_destroy();


//event_inherited();
with(PackmanObj) {instance_create(xstart,ystart,object_index); instance_destroy();}
with(ParentGhostObj) {
    o = object_index;
    if(object_index == BlueGhostObj or object_index = GhostEyesObj)
        o = WhoIWas;

    with(instance_create(xstart,ystart,o))
    {
        if(object_index == BlinkyObj) y-=36;
    }
    instance_destroy();
}
instance_create(x,y,PauseOnResetObj);

lives-=1;
PacReset = 1;
instance_destroy();


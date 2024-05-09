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

if(Level mod 2 == 0) room_goto(FirstCutScene_room)
else
{
if(room == PlayfieldStart_room)
     room_goto(PlayfieldContinue_room);
else if(room == PlayfieldContinue_room)
     room_goto(PlayfieldContinue_room);
else if (room == PlayfieldDemo_room)
     room_goto(PlayfieldDemoContinue_room);
else if (room == PlayfieldDemoContinue_room)
     room_goto(PlayfieldDemoContinue_room);
}

instance_destroy();


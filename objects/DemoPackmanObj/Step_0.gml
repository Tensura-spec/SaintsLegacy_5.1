if(instance_exists(PausedObj)) exit;

// This code checks to see if Pacman ate a pellet, then keeps his dot speed for 10 steps before he returns to his normal speed.
if (atepellet = 0)
{
SpeedNow = PacSpeed;
}
else if (atepellet = 1 and alarm[1] <= 0)
{
SpeedNow = PacDotsSpeed;
alarm[1] = 10;
}


//Pellets
with(instance_nearest(x-6,y-6,PelletObj))
{
    if(point_distance(x,y,other.x-6,other.y-6) < 8)
    {
        score +=10;
        audio_play_sound(Pellet_snd, 0, false);
        instance_destroy();
        atepellet = 1;
        SpeedNow = PacDotsSpeed;
        
        if (GhostCountersDisabled = 0)
        {
            if (!PinkyLeftHouse)
            PinkyDotCounter +=1;
            else if (PinkyLeftHouse and !InkyLeftHouse)
            InkyDotCounter +=1;
            else if (InkyLeftHouse and !ClydeLeftHouse)
            ClydeDotCounter +=1;
        }
        else
        GlobalDotCounter +=1;
    }
}
//Pills
with(instance_nearest(x-6,y-6,PillObj))
{
    if(point_distance(x,y,other.x-6,other.y-6) < 8)
    {
        score +=50;
        BlueGhostScore = 200;
        audio_play_sound(Pellet_snd, 0, false);
        instance_destroy();
        
        with(ParentGhostObj) 
        {
            if(FrightTime)
            {
                if(object_index != BlueGhostObj and object_index != GhostEyesObj)
                {
                    WhatIDid = current_script;
                    WhoIWas = object_index;
                    if(object_index != GhostEyesObj) 
                    {      
                        GhostFlipDirection()                  
                        instance_change(BlueGhostObj,true);
                    }
                }
                else if (object_index = BlueGhostObj)
                {
                    GhostFlipDirection()
                    event_perform(ev_create, 0);
                    sprite_index = BlueGhost_spr
                }
            }
            else
            {
                if(object_index != BlueGhostObj and object_index != GhostEyesObj)
                    GhostFlipDirection();
            }
        }
        atepellet = 1;
        SpeedNow = PacDotsSpeed;
    }
}

//other confusion galore, simpler to use var
var pacid; pacid = id;
//Ghosts
var pt,xx,yy; 
pt = 0;
with(instance_nearest(x,y,ParentGhostObj))
{
    if(point_distance(x,y,pacid.x,pacid.y) < 8)
    {
        if(object_index == BlinkyObj or object_index == InkyObj
        or object_index == PinkyObj or object_index == ClydeObj)
        {
            instance_create(pacid.x,pacid.y,PauseAndDieObj);
            with(LevelInfoObj)
            alarm[0] = -1; // Stop the dot timer
        }
        //blue ghost
        else if(object_index == BlueGhostObj)
        {
            pt = BlueGhostScore;
            //add points
            score += pt;
            //double it for next time
            BlueGhostScore *=2;
            BlueGhostScore  = min(1600,BlueGhostScore );
            audio_play_sound(EatBlueGhost_snd, 0, false);
            
            //pacid.x -= pacid.hspeed * (1-0);
            //pacid.y -= pacid.vspeed * (1-0);
            with(instance_create(x,y,GhostEyesObj))
            {
                WhoIWas = other.WhoIWas;
                xstart = other.xstart;
                ystart = other.ystart;
                HomeTile = collision_point(other.xstart,other.ystart,TileObj,0,0);
            }
            xx = x;
            yy = y;
            instance_destroy();
        }
    }
}

            //show the points, paused
if(pt)
    with(instance_create(xx,yy,PointOnSpotPausedObj))
    {
        points = pt;
    }



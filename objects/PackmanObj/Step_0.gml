//show_debug_message(string(instance_number(PausedObj)))
if(instance_exists(PausedObj)) exit;


// This code checks to see if Pacman ate a pellet, then keeps his dot speed for 10 steps before he returns to his normal speed.

if (atepellet = 0)
{
SpeedNow = PacSpeed;
speed = PacSpeed;
}
else if (atepellet = 1 and alarm[0] <= 0)
{
SpeedNow = PacDotsSpeed;
speed = PacDotsSpeed;
alarm[0] = 10;
}


//what direction is asked
hs = (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
vs = (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up));

if(hs == 0 and vs == 0)
{
    hs = (keyboard_check(vk_right) - keyboard_check(vk_left));
    vs = (keyboard_check(vk_down) - keyboard_check(vk_up));
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
        speed = PacDotsSpeed;
        
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
                        instance_change(BlueGhostObj,1);
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
        speed = PacDotsSpeed;
    }
}


//OK, so did player have a key down, hs or vs is set to -1 or 1m not 0
    
    
    //round((x-6)/12)+6+hs*12,round((y-6)/12)+6+vs*12,10)
        //ShowXY(round((x-6)/12)*12+6+hs*12,round((y-6)/12)*12+6+vs*12,10);
if(abs(hs) != abs(vs))
{
    //get the direction in 0,1,2,3 format
    var newdir; newdir = floor(point_direction(0,0,hs,vs)/90); 
    //compare with old direction, detect change in direction
    if(newdir <> dir)
    {
        //look at desired location, to the next tile (hs*12, vs *12) does the offset
        tile = collision_point(round((x-6)/12)*12+6+hs*12,round((y-6)/12)*12+6+vs*12,TileObj,0,0)
        if(tile!=noone)
        {
            if(tile.PacDirs[newdir] == 1)
            {
                //there is a tile
                //remember new direction
                dir = newdir;
                //set the movement to speed
                hspeed = hs*SpeedNow;
                vspeed = vs*SpeedNow; 
            }
        }
    }
}

//go to center of the road on x when updown, on y when left right
//what tile are we on (closest)
tileon = collision_point(round((x-6)/12)*12+6,round((y-6)/12)*12+6,TileObj,0,0);
if(tileon != noone) lasttile = tileon;
if(lasttile != noone)
{
    //if left right movement
    if(dir == 0 or dir == 2)
    {
        //smooth move to tile axis
        dif = lasttile.y + 6 - y;
        y+=min(SpeedNow,abs(dif)) * sign(dif)
        //or instant like the real game
        //y = lasttile.y + 6
    }
    else //up down
    {
        //smooth move to tile axis
        dif = lasttile.x + 6 - x;
        x+=min(SpeedNow,abs(dif)) * sign(dif)
        //or instant like the real game
        //x = lasttile.x + 6
    }
}
//finaly, stop if no tile in the moving direction
//if(speed>0)
{
//this animates at .25 when speed is not 0
//0 image speed when speed is 0
    image_speed = .25 * (speed>0);

    //position to look at,
    xx = round(x)+sign(hspeed) * 10;// floor((x-6)/12)*12+6+sign(hspeed) * 7;
    yy = round(y)+sign(vspeed) * 10;//floor((y-6)/12)*12+6+sign(vspeed) * 7;
    //ShowXY(xx,yy,10)
    //with(lasttile) 
    //{
    //x -= 1000000
    //}
    //xx = (x/12)*12+sign(hspeed) * 13;
    //yy = (y/12)*12+sign(vspeed) * 13;
    if(!collision_circle(xx,yy,3,TileObj,0,0)) 
    {
        //speed = 0;
        if(tileon )
        {
            x = tileon.x+6;
            y = tileon.y+6;
            //this animates at .25 when speed is not 0
            //0 image speed when speed is 0
            image_speed = 0;

        }
    }
    //with(lasttile) 
    //{
    //x += 1000000;
    //}
}


//other confusion galore, simpler to use var
var pacid; pacid = id;
//Ghosts
var pt,xx,yy; 
pt = 0;

if (!Invincible)
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
            BlueGhostScore  = min(1600,BlueGhostScore);
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
    
    


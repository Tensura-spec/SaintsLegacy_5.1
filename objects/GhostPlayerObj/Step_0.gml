//show_debug_message(string(instance_number(PausedObj)))
if(instance_exists(PausedObj)) exit;


SpeedNow = PacSpeed;

//what direction is asked
hs = (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
vs = (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up));

if(hs == 0 and vs == 0)
{
    hs = (keyboard_check(vk_right) - keyboard_check(vk_left));
    vs = (keyboard_check(vk_down) - keyboard_check(vk_up));
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
        tile = collision_point(round((x-6)/12)*12+6+hs*12,round((y-6)/12)*12+6+vs*12,TileObj,0,0);
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
//            image_speed = 0;

        }
    }
    //with(lasttile) 
    //{
    //x += 1000000;
    //}
}



   
    


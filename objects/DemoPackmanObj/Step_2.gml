//fix for wondering eyes
direction = round(direction/90) * 90


//if packman is moving, decide the animation sequence in the subframes
if(path_speed>0)
    frame = ((direction/360) * 8) + 1;

/*    
if (atepellet = 0)
maxspeed = PacSpeed;
else
maxspeed = PacDotsSpeed;*/
maxspeed = PacSpeed;

//this animates at .25 when speed is not 0
//0 image speed when speed is 0
image_speed = .25 * (path_speed>0);

AnimatePart(frame,(frame>0) *2)
//(frame>0) *2 passes 0 or 2, if first frame, the start circle, pass 0, 
//else, pass 2, this is a quick was to decide between o and 2

/* */
/*  */

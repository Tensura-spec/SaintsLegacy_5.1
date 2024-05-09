//if packman is moving, decide the animation sequence in the subframes
if(speed>0)
{
    frame = (direction/360) * 8;
}


frame = (direction/360) * 8;
//all animation have 2 frames, each animation is at 0,2,4,6 
AnimatePart(frame,2)



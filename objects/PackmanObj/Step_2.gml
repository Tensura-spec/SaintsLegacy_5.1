//if packman is moving, decide the animation sequence in the subframes
if(speed>0)
{
    frame = ((direction/360) * 8) + 1;
}


AnimatePart(frame,(frame>0) *2)
//(frame>0) *2 passes 0 or 2, if first frame, the start circle, pass 0, 
//else, pass 2, this is a quick was to decide between o and 2



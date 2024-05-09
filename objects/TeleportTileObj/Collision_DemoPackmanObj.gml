if(Remote == noone) exit;
with(other)
{
    if(point_distance(x,y,other.x+6,other.y+6)<6)
    {
        //center of tiel x+6 the on edge beyond the point
        //where point_distance <6 would trigger the other tile port
        x = other.Remote.x+6 + lengthdir_x(6, direction);
        y = other.Remote.y+6 + lengthdir_y(6, direction);
        //lasttile = other.Remote;
        lasttile = noone;
        //path_end();
        event_perform(ev_other,ev_end_of_path);
    }
}

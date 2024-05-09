Remote = noone;
var i; i = 0;
while(instance_find(object_index,i) <> id)
{
//show_message("Count" + string(instance_find(object_index,i)))
    i+=1;
}

if((i mod 2) == 1)
{
    with(instance_find(object_index,i-1)) Remote = other.id;
    Remote = instance_find(object_index,i-1);
    //show_message(string(i))
}

//show_message("Set" + string(Remote))


if(!visible) exit;
if(!alarm[1]) exit;

if(point_distance(x,y,other.x,other.y) <6)
{
    audio_play_sound(EatFruit_snd, 0, false);
    image_index = floor(image_index) mod image_number;  
    score += LevelData(BonusPoints);
    
    with(instance_create(x,y,FruitPointsObj))
    {
        image_index = other.image_index;
    }
    visible = false;
}


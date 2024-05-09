if(instance_exists(PausedObj))
{
    alarm[0] = 1;
    exit;
}
image_index = LevelData(BonusSymbol);
visible = true;
alarm[1] = room_speed * 7;

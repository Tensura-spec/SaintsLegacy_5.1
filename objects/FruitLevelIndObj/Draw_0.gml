xx = x;
i = max(1,Level-7);
repeat(min(Level, 8))
{
    draw_sprite(sprite_index,LevelDataGet(i,BonusSymbol),xx,y);
    xx-= sprite_width;
    i+=1
}



/// @description

drawPosX = 384 - BlockSize * 4 - 8;
drawPosY = 90;

for (var i = 0; i < 4; i++)
{
  blocksNext[i] = instance_create_layer(0, 0, "Instances", objBlock);
}

scr_update_next();
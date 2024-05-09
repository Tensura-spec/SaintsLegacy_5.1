/// @description

for (var i = 0; i < 4; i++)
{
  if (!instance_exists(blocksNext[i]))
  {
    blocksNext[i] = instance_create_layer(0, 0, "Instances", objBlock);
  }
}

scr_update_next();
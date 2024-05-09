/// @description

alarm[0] = 0;

skipFrameR = true;
skipFrameL = true;

figType = global.NextFigure;

angle = 0;

figurePosX = 4;
figurePosY = 0;

for (var i = 0; i < 4; i++)
{
  blocks[i] = instance_create_layer(0, 0, "Instances", objBlock);
}

arrayPositionsX = ds_list_create();
arrayPositionsY = ds_list_create();

for (var i = 0; i < 4; i++)
{
  ds_list_add(arrayPositionsX, -1);
  ds_list_add(arrayPositionsY, -1);  
}

scr_update_figure();

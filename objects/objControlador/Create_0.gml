if(global.clearMiMa == 1)
{
	
	instance_create_layer(304, 98, "Instances_NPC", objMiguelMagone);
	object_set_visible(objMiguelMagone, true);
	object_set_solid(objMiguelMagone, true);
	instance_destroy(objDoorPDC);
	
}

if(global.clearDS == 1)
{

	instance_create_layer(243, 98, "Instances_NPC", objDomingoSavio)
	object_set_visible(objDomingoSavio, true);
	object_set_solid(objDomingoSavio, true);
	instance_destroy(objP2);
	
}

if(global.clearLV == 1)
{
	
	instance_create_layer(177, 98, "Instances_NPC", objLauraV);
	object_set_visible(objLauraV, true);
	object_set_solid(objLauraV, true);
	instance_destroy(objP3);
	
}

if(global.clearCN == 1)
{
	instance_create_layer(115, 98, "Instances_NPC", objCeferinoNamuncura);
	object_set_visible(objCeferinoNamuncura, true);
	object_set_solid(objCeferinoNamuncura, true);
	instance_destroy(objP4);
	
}

if(global.clearBG == 1)
{
	instance_create_layer(50, 98, "Instances_NPC", objBartolomeGarelli);
	object_set_visible(objBartolomeGarelli, true);
	object_set_solid(objBartolomeGarelli, true);
	instance_destroy(objP5);
	
}






















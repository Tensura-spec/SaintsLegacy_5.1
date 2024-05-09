function scr_create_block(argument0, argument1) {
	var row = argument0;
	var col = argument1;

	var newPosX = LeftmostSquare + col * BlockSize;
	var newPosY = UpmostSquare + row * BlockSize;

	global.BlocksRef[row, col] = instance_create_layer(newPosX, newPosY, "Instances", objBlock);


}

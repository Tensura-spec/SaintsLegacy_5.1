function scr_grid_get_value(argument0, argument1) {
	var arrayX = argument0;
	var arrayY = argument1;

	arrayX %= CupHeight;
	arrayY %= CupWidth;

	var rowNum = global.MapGrid[| arrayX];
	return rowNum[| arrayY];


}

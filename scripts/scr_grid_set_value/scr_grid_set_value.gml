function scr_grid_set_value(argument0, argument1, argument2) {
	var arrayX = argument0;
	var arrayY = argument1;
	var valueToSet = argument2;

	var rowNum = global.MapGrid[| arrayX];
	rowNum[| arrayY] = valueToSet;


}

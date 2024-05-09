function scr_row_has_all(argument0, argument1) {
	var rowToSearchIn = argument0
	var valueToSearch = argument1;

	var rowList = global.MapGrid[| rowToSearchIn];
	for (var i = 0; i < ds_list_size(rowList); i++)
	{
	  if (rowList[| i] != valueToSearch)
	  {
	    return false;
	  }
	}

	return true;


}

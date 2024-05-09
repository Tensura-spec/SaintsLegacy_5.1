function scr_try_to_move_h(argument0) {
	var left = argument0;

	var newPosX = (left ? figurePosX - 1 : figurePosX + 1);

	if (scr_can_move(newPosX))
	{
	  figurePosX = newPosX;
	  scr_update_figure();
	}



}

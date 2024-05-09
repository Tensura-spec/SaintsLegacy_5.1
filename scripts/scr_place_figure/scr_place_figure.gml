function scr_place_figure() {
	scr_grid_update_position();
	scr_check_lines();
	scr_destroy_figure(global.CurrentFigure);    
	scr_clear_blocks();
	scr_refresh_map();

	if (!scr_check_game_over())
	{
	  scr_create_figure();
	}



}

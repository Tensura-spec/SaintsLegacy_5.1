function scrPlayerCheckInteraction(){
	if (keyboard_check_pressed(vk_shift) && speed == 0) {
		var interactive = scrGetFacingObject();
		if (interactive) {
			with (interactive) {
				event_user(0);
			}
		}
	}
}
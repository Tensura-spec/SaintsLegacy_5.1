function scrPlayerCheckReading(){
	if (keyboard_check_pressed(vk_shift)) {
		with (objTextbox) {
			event_user(0);
		}
	}
}
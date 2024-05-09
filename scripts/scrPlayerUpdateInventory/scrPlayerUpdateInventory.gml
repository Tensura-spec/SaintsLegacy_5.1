function scrPlayerUpdateInventory(){
	if (keyboard_check_pressed(ord("I"))) {
		objInventoryBox.active = false;
		state = STATE_IDLE;
	}
}
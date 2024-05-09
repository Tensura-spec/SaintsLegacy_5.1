function scrPlayerCheckMovement(){
	keyRight =  keyboard_check(vk_right);
	keyLeft = keyboard_check(vk_left);
	keyUp =  keyboard_check(vk_up);
	keyDown = keyboard_check(vk_down);
	
	if (speed == 0) {
		if (keyRight) {
			scrMoveTo(1, 0);
		} else if (keyLeft) {
			scrMoveTo(-1, 0);
		} else if (keyUp) {
			scrMoveTo(0, 1);
		} else if (keyDown) {
			scrMoveTo(0, -1);
		}
	}
}
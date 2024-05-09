switch (state) {
	case STATE_IDLE:
		scrUpdateMovement();
		scrPlayerCheckMovement();
		scrPlayerCheckInteraction();
		scrPlayerCheckMenus();
		break;
		
	case STATE_READING:
		scrPlayerCheckReading();
		break;
		
	case STATE_INVENTORY:
		scrPlayerUpdateInventory();
		break;
}
function scrMoveTo(xTo, yTo){

	
	
	inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
	
	hSpd = lengthdir_x(inputMagnitude * 2.2, inputDirection);
	vSpd = lengthdir_y(inputMagnitude * 2.2, inputDirection);
	
	scrFaceTo(x + hSpd, y + vSpd);

	
	if (hSpd > 0)
	{
		checkX = x + hSpd + 3;
	}
	if (hSpd == 0)
	{
		checkX = x + hSpd;
	}
	
	
	if (hSpd < 0)
	{
		checkX = x + hSpd - 3;
	}
	
	if (vSpd > 0)
	{
		checkY = y + vSpd + 3;
	}
	
	if (vSpd < 0)
	{
		checkY = y + vSpd - 3;
	}
	if (vSpd == 0)
	{
		checkY = y + vSpd;
	}
	
	
	if (place_free(checkX, checkY)) {

		x += hSpd;
		y += vSpd;

		action = "Walk";
		return true;
	}
	
	return false;
}
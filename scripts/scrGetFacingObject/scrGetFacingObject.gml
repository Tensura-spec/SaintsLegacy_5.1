function scrGetFacingObject(){
	var tx = x;
	var ty = y;
	
	switch (face) {
		case "D":
			ty -= 16;
			break;
			
		case "R":
			tx += 16;
			break;
			
		case "U":
			ty += 16;
			break;
			
		case "L":
			tx -= 16;
			break;
	}
	
	return instance_place(tx, ty, objInteractive);
}
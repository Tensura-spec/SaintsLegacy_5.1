function scrFinishCharacterReading(player) {
	player.state = STATE_IDLE;

}

function scrFinishCharacterReadingP(player) {
	player.state = STATE_IDLE;
	room_goto(rm_controlsVG);
}

function scrFinishCharacterReadingM(player) {
	player.state = STATE_IDLE;
	room_goto(rm_controlsMM);
}

function scrFinishCharacterReadingMedalla1(player) {
	player.state = STATE_IDLE;
	global.medallaMR = 1;
	room_goto(rm_medallaMR);
}

function scrFinishCharacterReadingMedalla2(player) {
	player.state = STATE_IDLE;
	global.medallaPD = 1;
	room_goto(rm_medallaVG);
}


function scrFinishCharacterReadingMedalla(player) {
	player.state = STATE_IDLE;
	medalla = 1;
}

function scrFinishCharacterReadingRM (player) {
	player.state = STATE_IDLE;
	global.medallaMM= 1;
	room_goto(MamaMargaritaRecuerdo)
}

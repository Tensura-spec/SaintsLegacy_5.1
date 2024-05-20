function scrFinishCharacterReading(player) {
	player.state = STATE_IDLE;

}

function scrFinishCharacterReadingP(player) {
	player.state = STATE_IDLE;
	room_goto(rm_controlsGV);
}

function scrFinishCharacterReadingM(player) {
	player.state = STATE_IDLE;
	room_goto(rm_controlsMM);
}

function scrFinishCharacterReadingMedalla1(player) {
	player.state = STATE_IDLE;
	global.medallaMR = 1;
}

function scrFinishCharacterReadingMedalla2(player) {
	player.state = STATE_IDLE;
	global.medallaPD = 1;
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

if (Timer.timer_active){
	
	scrOpenTexbox("Gracias por rrescatarme");
	objPlayer.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayer, id]];
	objSystem.puntaje+=1;
	instance_destroy();
	
}

else
{
	scrOpenTexbox("Habla con Miguel RRua");
	objPlayer.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayer, id]];
}


if (!Timer.timer_active && objSystem.puntaje = 0)
{
scrOpenTexbox("¡Saludos, querido amigo! Soy Don Miguel Rúa, y estoy encantado de conocerte. Veo que eres una persona dispuesta a ayudar, y tengo una solicitud muy especial para ti.  Como sabes, Don Bosco dedicó su vida a ayudar a los jóvenes en dificultades. Ahora nos enfrentamos a una situación difícil: hay un grupo de jóvenes en la comunidad que se está alejando del camino correcto. Han perdido la motivación y algunos están involucrándose en actividades perjudiciales para ellos mismos y para la comunidad. Necesito tu ayuda para encontrar una solución a este problema. Don Bosco confiaba en la importancia de la educación y el cuidado personal para guiar a estos jóvenes hacia un camino mejor. ¿Podrías rescatarlos y ayudarles a redescubrir su ccamino?");
scrFaceTo(objPlayer.x, objPlayer.y);

objPlayer.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReading, [objPlayer, id]];

Timer.timer_active = true;

}

else
{
	scrOpenTexbox("Se te acaba el tiempo! Ve a eencontrarlos");
	
	objPlayer.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayer, id]];
}

if (!Timer.timer_active && objSystem.puntaje = 4)
{
	scrOpenTexbox("¡Lo has logrado! Gracias a tu dedicación, estos jóvenes están recuperando la esperanza y el rumbo en sus vidas. Tu ayuda ha sido crucial para darles un nuevo comienzo. Ten tu recompensa. Puedes Salir por la puerta de la iizquierda.");
	
	objPlayer.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReadingMedalla1, [objPlayer, id]];
}





   
   
scrOpenTexbox(" ¡Estoy asombrado! Gracias a tu ayuda, siento que estoy más cerca de descubrir mi propósito y veo cómo esto puede inspirar a otros jóvenes a buscar lo mismo. Tu apoyo ha sido iinvaluable.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];

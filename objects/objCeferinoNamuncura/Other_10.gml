
scrOpenTexbox("¡Es increíble lo que haz logrado! Gracias a tu ayuda, puedo ayudar a mi gente para que tenga más oportunidades y esperanza para un futuro mejor. Tu apoyo ha marcado una gran ddiferencia.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];


scrOpenTexbox("¡Es sorprendente lo que haz logrado! Gracias a tu ayuda, podemos continuar con el proyecto de dignificar la vida de los jóvenes. Tu apoyo ha marcado una gran ddiferencia.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];

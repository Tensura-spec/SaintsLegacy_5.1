
scrOpenTexbox(" ¡Es asombroso lo que haz logrado! Gracias a tu ayuda, podemos ayudar a más personas que están descubriendo el amor a Dios y siguen siendo inspiradas por mi testimonio. Tu apoyo ha marcado una gran ddiferencia.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];

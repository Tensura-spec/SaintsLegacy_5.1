
scrOpenTexbox("¡Es maravilloso lo que haz logrado! Gracias a tu ayuda, podemos ayudar a los más vulnerables para que se encuentren en protección y amor, y la fe se difunda entre nosotros. Tu apoyo ha marcado una gran ddiferencia.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];

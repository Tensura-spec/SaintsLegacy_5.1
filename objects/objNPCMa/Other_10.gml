
scrOpenTexbox("Hola, soy Mamá Margarita. He estado ayudando a mi hijo a cuidar y guiar a los jóvenes, y tengo un problema, así que necesito tu ayuda. En estos bares, 5 jóvenes me estaban ayudando a dar de comer a los demás, pero se han extraviado y parece que no quieren regresar. Estos jóvenes eran fundamentales para nuestra labor. ¿Podrías ayudarme a encontrarlos y continuar con esta importante llabor?");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReadingM, [objPlayerP, id]];


if(global.medallaMM== 1 && objSystemP.Player_Score != 3)
{
scrOpenTexbox("Creo que Gavicho esta te estaba buscando, deberias ir al ppolideportivo.");

scrFaceTo(objPlayerP.x, objPlayerP.y);

objPlayerP.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReadingMedalla2, [objPlayerP, id]];
}

else if (global.clearMiMa == 1 && global.clearDS == 1 && global.clearLV == 1 && global.clearCN == 1 && global.clearBG == 1)
{
	scrOpenTexbox("Los encontraste a todos, Muchas ggracias");

	scrFaceTo(objPlayerP.x, objPlayerP.y);

	objPlayerP.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReadingRM, [objPlayerP, id]];
}

else if (global.clearMiMa == 1 && global.clearDS == 1 && global.clearLV == 1 && global.clearCN == 1)
{
	scrOpenTexbox("Entra al bar de Bartolome GGarelli");

	scrFaceTo(objPlayerP.x, objPlayerP.y);

	objPlayerP.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];
}

else if (global.clearMiMa == 1 && global.clearDS == 1 && global.clearLV == 1)
{
	scrOpenTexbox("Entra al bar de Ceferino NNamuncura");

	scrFaceTo(objPlayerP.x, objPlayerP.y);

	objPlayerP.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];
}

else if (global.clearMiMa == 1 && global.clearDS == 1)
{
	scrOpenTexbox("Entra al bar de Laura VVicuña");

	scrFaceTo(objPlayerP.x, objPlayerP.y);

	objPlayerP.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];
}

else if (global.clearMiMa == 1)
{
	scrOpenTexbox("Entra al bar de Domingo SSavio");

	scrFaceTo(objPlayerP.x, objPlayerP.y);

	objPlayerP.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];
}

if(room = PatioDeComidas && global.clearMiMa == 0)
{
	scrOpenTexbox("Entra al bar de Miguel MMagone");

	scrFaceTo(objPlayerP.x, objPlayerP.y);

	objPlayerP.state = STATE_READING;

	objTextbox.callback = [scrFinishCharacterReading, [objPlayerP, id]];
}








/// @description Title Screen menu object

//Loop music
audio_play_sound(snd_title, 0, true);

//Sub menu enums
enum menupage {

	main	   =	0,
	options    =    1,
	keys	   =    2
}

//Save File info
for (i=0; i<3; i++) {

    completion[i] = 0;
}

//Options sub-menu 0
menu[menupage.main, 0] = "INICIAR!";
menu[menupage.main, 1] = "Configuracion";
menu[menupage.main, 2] = "Exit";

//Options sub-menu 1: Options 1 / 2
menu[menupage.options, 0] = "Controles para PC";
menu[menupage.options, 1] = "Cambiar Resolucion";
menu[menupage.options, 2] = "FPS: Off";
menu[menupage.options, 3] = "Volver";

//Options sub-menu 2: Keys
menu[menupage.keys, 0] = "Saltar/Interactuar:";
menu[menupage.keys, 1] = "Crrer/Disparar/Cancelar:";
menu[menupage.keys, 2] = "Reserva:";
menu[menupage.keys, 3] = "Pausar:";
menu[menupage.keys, 4] = "Arriba:";
menu[menupage.keys, 5] = "Abajo:";
menu[menupage.keys, 6] = "Izquierza:";
menu[menupage.keys, 7] = "Derecha:";
menu[menupage.keys, 8] = "Volver";


//Set keys
key[0] = string(key_to_string(global.key[input.action_0]));
key[1] = string(key_to_string(global.key[input.action_1]));
key[2] = string(key_to_string(global.key[input.action_2]));
key[3] = string(key_to_string(global.key[input.start]));
key[4] = string(key_to_string(global.key[input.up]));
key[5] = string(key_to_string(global.key[input.down]));
key[6] = string(key_to_string(global.key[input.left]));
key[7] = string(key_to_string(global.key[input.right]));

//Input delay
delay = 0;

//Menu index position
index = 0;

//Current submenu
sub_menu = 0;

//Waiting
waiting = 0;

//Allow navigation
start = 0;

//Cog wheel vars
alpha = 0;
anim = 0;

//Title y position
yy = 0;

//Display "Start" text
display = 1;
alarm[0] = 30;
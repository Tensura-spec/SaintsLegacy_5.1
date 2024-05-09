/// @description Handle menu navigation

if (!active) { exit; }

//Get key inputs
var _up		= input_check_pressed(input.up);
var _down	= input_check_pressed(input.down);
var _select = input_check_pressed(input.action_0);

//Decrement delay
delay--;


//Otherwise if input has been given from the player, allow navigation
if (true) {

	//Manage menu index
	if (waiting == 0) {
	
		var _move = _down - _up;
		if ((_move != 0) && (delay <= 0)) {
	
			//Play 'Fireball' sound
			audio_play_sound(snd_fireball, 0, false);

			//Move index
			index += _move;
			
			//Set delay
			delay = 8;
	
			//Clamp values
			var _size = array_length_2d(menu, sub_menu);
			if (index < 0)
				index = _size - 1;
			else if (index >= _size)
				index = 0;
		}
	}

	//Manage option selection
	if ((_select) && (waiting == 0)) {

		//Switch between sub_menu options
		switch (sub_menu) {
	
			//Sub Menu 0: Main
			case (0): {
		

				switch (index) {

					case (0): {
						audio_play_sound(snd_coin, 0, false);
						menu[0, 0] = (menu[0,0] == "Miguel Rua") ? "Primer Sucesor" : "Miguel Rua";
					} break;

					case (1): {

						audio_play_sound(snd_coin, 0, false);
						menu[0, 1] = (menu[0,1] == "Gavicho") ? "Cofundador del Tecniclub" : "Gavicho";
					} break;
				
					case (2): {
					
						audio_play_sound(snd_coin, 0, false);
						menu[0, 2] = (menu[0,2] == "Mama Margarita") ? "Madre de Don Bosco" : "Mama Margarita";
					} break;
					
					case (3): {
					
						audio_play_sound(snd_coin, 0, false);
						menu[0, 3] = (menu[0,3] == "Miguel Magone") ? "Patrono de \n jovenes de la calle" : "Miguel Magone";
					} break;
					
					case (4): {
					
						audio_play_sound(snd_coin, 0, false);
						menu[0, 4] = (menu[0,4] == "Domingo Savio") ? "Patrono de los \n Acolitos" : "Domingo Savio";
					} break;
					
					case (5): {
					
						audio_play_sound(snd_coin, 0, false);
						menu[0, 5] = (menu[0,0] == "Miguel Rua") ? "Madre de Don Bosco" : "Mama Margarita";
					} break;
					
					case (6): {
					
						audio_play_sound(snd_coin, 0, false);
						menu[0, 2] = (menu[0,0] == "Miguel Rua") ? "Madre de Don Bosco" : "Mama Margarita";
					} break;
					
					case (7): {
					
						audio_play_sound(snd_coin, 0, false);
						menu[0, 2] = (menu[0,0] == "Miguel Rua") ? "Madre de Don Bosco" : "Mama Margarita";
					} break;
					
			}
			
		}
		
	default:{
	}
	break;
	}
	}
	}
/// @description Title Screen menu object
depth = -98;
active = false;
//Sub menu enums
enum inventory {

	main	   =	0,
}


//Options sub-menu 0
menu[inventory.main, 0] = "Miguel Rua";
menu[inventory.main, 1] = "Gavicho";
menu[inventory.main, 2] = "Mama Margarita";
menu[inventory.main, 3] = "Miguel Magone";
menu[inventory.main, 4] = "Domingo Savio";
menu[inventory.main, 5] = "Laura V";
menu[inventory.main, 6] = "Ceferino Namuncura";
menu[inventory.main, 7] = "Bartolome Garelli";


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


//Title y position
yy = 0;

//Display "Start" text
display = 1;
alarm[0] = 30;
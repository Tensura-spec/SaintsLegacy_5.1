if (room != Start_room)
{
    event_inherited();
    current_script = EyesGotoHome;
    maxspeed = 3.5; // I had to eye it with a Pacman rom as the Pacman Dossier doesn't have anything on the speed of the eyes.
    alarm[1] = 1; // Wait a step to have the WhoIWas variable set correctly
}
else
{
event_inherited();
instance_destroy(); // Eyes disappear after the ghost is eaten by Pacman in the start room
}


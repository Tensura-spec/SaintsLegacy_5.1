with(ParentGhostObj)
{
        visible = false;
}
with(PackmanObj)
{
        visible = false;
}
image_speed = .125;
audio_play_sound(PacDies_snd, 0, false);

with(GhostPatternObj)
{
    timeline_speed = 0;
    timeline_position = 0;
    alarm[0] = 1;
}


// Reset Global dot counter due to death
GhostCountersDisabled = 1;
GlobalDotCounter = 0;
PinkyLeftHouse = false;
InkyLeftHouse = false;
ClydeLeftHouse = false;



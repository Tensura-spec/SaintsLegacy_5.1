// Siren sound that plays in Pacman

NumPellets = instance_number(PelletObj);

var EyesVisible, Paused; EyesVisible = false; Paused = 0;
with(GhostEyesObj)
    {
        if (visible = true and !instance_exists(PauseAndDieObj))
        EyesVisible = true;
    }
    
    RemSirenPitch = SirenPitch;

if (NumPellets > TotalPellets / 2)
{
    audio_sound_pitch(Siren_snd, 1.0);
    SirenPitch = 0;
}
else if (NumPellets <= TotalPellets / 2 and NumPellets > TotalPellets / 4)
{
    audio_sound_pitch(Siren_snd, 1.3);
    SirenPitch = 1;
}
else if (NumPellets <= TotalPellets / 4)
{
    audio_sound_pitch(Siren_snd, 1.6);
    SirenPitch = 2;
}

if (instance_exists(PauseAndDieObj) or instance_exists(AnimatedDeathObj) or instance_exists(PauseOnRoomNextObj) or instance_exists(PauseOnResetObj))
Paused = 1;



if(!instance_exists(BlueGhostObj) and !instance_exists(GhostEyesObj))
{
    if (instance_exists(PausedObj))
    audio_stop_sound(Siren_snd);
    
    if (RemSirenPitch != SirenPitch)
    audio_stop_sound(Siren_snd);

    if (!audio_is_playing(Siren_snd))
    {
        audio_stop_sound(FrightSiren_snd);
        audio_stop_sound(EyeSiren_snd);
        if (!instance_exists(PausedObj))
        audio_play_sound(Siren_snd, 0, true);
    }
}
else if (EyesVisible = false)
{
    if(!audio_is_playing(FrightSiren_snd) and Paused = 0)
    {
       audio_stop_sound(Siren_snd);
       audio_stop_sound(EyeSiren_snd);
       audio_play_sound(FrightSiren_snd, 0, true);
    }
    
    if (Paused = 1)
    audio_stop_sound(FrightSiren_snd);
}
else
{
    if(!audio_is_playing(EyeSiren_snd) and EyesVisible = true and Paused = 0)
    {
       audio_stop_sound(Siren_snd);
       audio_stop_sound(FrightSiren_snd);
       audio_play_sound(EyeSiren_snd, 0, true);
    }
    
    if (Paused = 1)
    audio_stop_sound(EyeSiren_snd);
}



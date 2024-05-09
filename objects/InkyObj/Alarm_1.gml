if (PinkyLeftHouse)
{
        if ((InkyDotCounter >= 30 and Level = 1 and GhostCountersDisabled = 0) or (InkyDotCounter >= 0 and Level > 1 and GhostCountersDisabled = 0) or GlobalDotCounter = 17)
        {
        InkyLeftHouse = true;
        if (AttackMode = 0)
        current_script = ScatterScript;
        else
        current_script = AttackScript;
        }
        else
        alarm[1] = 1;
}
else 
alarm[1] = 1; 


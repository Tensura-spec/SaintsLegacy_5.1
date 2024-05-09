if (WhoIWas = PinkyObj and !PinkyLeftHouse)
{
    if (GlobalDotCounter = 7 or (GhostCountersDisabled = 0 and PinkyDotCounter >= 0))
    {
    current_script = ScatterScript
    PinkyLeftHouse = true;
    }
    else
    PinkyLeftHouse = false;
    alarm[4] = 1;
}
else if (WhoIWas = InkyObj)
{
if (PinkyLeftHouse and !InkyLeftHouse)
{
        if ((InkyDotCounter >= 30 and Level = 1 and GhostCountersDisabled = 0) or (InkyDotCounter >= 0 and Level > 1 and GhostCountersDisabled = 0) or GlobalDotCounter = 17)
        {
        current_script = ScatterScript
        InkyLeftHouse = true;
        }
        else
        InkyLeftHouse = false;
        alarm[4] = 1;
}
else 
alarm[4] = 1; 
}
else if (WhoIWas = ClydeObj)
{
if (InkyLeftHouse and !ClydeLeftHouse)
{
        if ((ClydeDotCounter >= 60 and Level = 1 and GhostCountersDisabled = 0) or (ClydeDotCounter >= 50 and Level = 2) or (ClydeDotCounter >= 0 and Level > 2 and GhostCountersDisabled = 0))
        {
        current_script = ScatterScript
        ClydeLeftHouse = true;
        }
        else
        ClydeLeftHouse = false;
        alarm[4] = 1;
}
else
alarm[4] = 1;
}


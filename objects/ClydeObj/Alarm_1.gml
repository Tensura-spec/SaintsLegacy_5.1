if (InkyLeftHouse)
{
        if ((ClydeDotCounter >= 60 and Level = 1 and GhostCountersDisabled = 0) or (ClydeDotCounter >= 50 and Level = 2 and GhostCountersDisabled = 0) or (ClydeDotCounter >= 0 and Level > 2 and GhostCountersDisabled = 0))
        {
        ClydeLeftHouse = true;
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




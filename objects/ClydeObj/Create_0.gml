// Changed the way the Ghosts got these variables in order to convert the game to Game Maker Studio.

if (!instance_exists(GhostsSpawnObj))
{
GetLastTile = lasttile;
GetTheCurrentScript = current_script;
GetChangeDirection = ChangeDirection;
}
event_inherited();
if (!instance_exists(GhostsSpawnObj))
{
lasttile = GetLastTile;
ChangeDirection = GetChangeDirection;
current_script = GetTheCurrentScript
}

ScatterScript = ClydeScatter;
AttackScript = ClydeAttack;
direction = 90;


if (!ClydeLeftHouse)
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
    {
    current_script = GhostGotoUpDownTile;
    ClydeLeftHouse = false;
    alarm[1] = 1;
    }
}
else
{
        if (AttackMode = 0)
        current_script = ScatterScript;
        else
        current_script = AttackScript;
}


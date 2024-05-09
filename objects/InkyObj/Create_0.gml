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


ScatterScript = InkyScatter;
AttackScript = InkyAttack;
direction = 90;

if (!InkyLeftHouse)
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
    {
        current_script = GhostGotoUpDownTile
        InkyLeftHouse = false;
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


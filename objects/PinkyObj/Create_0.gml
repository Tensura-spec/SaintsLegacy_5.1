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

ScatterScript = PinkyScatter;
AttackScript = PinkyAttack;
direction = 270;

if (!PinkyLeftHouse)
{
    if (GhostCountersDisabled = 0 and PinkyDotCounter >= 0)
    {
        PinkyLeftHouse = true;
        if (AttackMode = 0)
        current_script = ScatterScript;
        else
        current_script = AttackScript;
    }
    else
    {
        current_script = GhostGotoUpDownTile
        PinkyLeftHouse = false;
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


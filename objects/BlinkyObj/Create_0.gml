
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

 
ScatterScript = BlinkyScatter;
AttackScript = BlinkyAttack;

direction = 180;
//current_script = ScatterScript;
if (AttackMode = 0)
current_script = ScatterScript;
else
current_script = AttackScript;



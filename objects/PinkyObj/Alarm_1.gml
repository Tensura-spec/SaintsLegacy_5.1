if ((!PinkyLeftHouse and GlobalDotCounter = 7) or (!PinkyLeftHouse and GhostCountersDisabled = 0 and PinkyDotCounter >= 0 ))
{
PinkyLeftHouse = true;
if (AttackMode = 0)
current_script = ScatterScript;
else
current_script = AttackScript;
}
else
alarm[1] = 1;


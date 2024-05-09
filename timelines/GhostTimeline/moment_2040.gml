if (Level <= 4)
{
with(ParentGhostObj)
GhostFlipDirection();

with(BlinkyObj)
current_script = AttackScript;

with(PinkyObj)
if (PinkyLeftHouse)
current_script = AttackScript;

with(InkyObj)
if (InkyLeftHouse)
current_script = AttackScript;

with(ClydeObj)
if (ClydeLeftHouse)
current_script = AttackScript;

AttackMode = 1;
}


if (Level >= 5)
{
with(ParentGhostObj)
GhostFlipDirection();

with(BlinkyObj)
current_script = ScatterScript;

with(PinkyObj)
if (PinkyLeftHouse)
current_script = ScatterScript;

with(InkyObj)
if (InkyLeftHouse)
current_script = ScatterScript;

with(ClydeObj)
if (ClydeLeftHouse)
current_script = ScatterScript;

AttackMode = 0;
}


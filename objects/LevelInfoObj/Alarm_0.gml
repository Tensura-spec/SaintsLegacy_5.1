//show_message("Dot Timer hit zero");

    if (!PinkyLeftHouse)    
    {
        with(PinkyObj)
        {
            if (AttackMode = 0)
            current_script = ScatterScript;
            else
            current_script = AttackScript;
        }
        with(BlueGhostObj)
        {
            if (WhoIWas = PinkyObj)
            current_script = ScatterScript;
        }
        PinkyLeftHouse = true;
    }
    else if (!InkyLeftHouse and PinkyLeftHouse)
    {
        with(InkyObj)
        {
            if (AttackMode = 0)
            current_script = ScatterScript;
            else
            current_script = AttackScript;
        }
        with(BlueGhostObj)
        {
            if (WhoIWas = InkyObj)
            current_script = ScatterScript;
        }
        InkyLeftHouse = true;
    }
    else if (!ClydeLeftHouse and InkyLeftHouse)
    {
        with(ClydeObj)
        {
            if (AttackMode = 0)
            current_script = ScatterScript;
            else
            current_script = AttackScript;
        }
        with(BlueGhostObj)
        {
            if (WhoIWas = ClydeObj)
            current_script = ScatterScript;
        }
    ClydeLeftHouse = true;
    }



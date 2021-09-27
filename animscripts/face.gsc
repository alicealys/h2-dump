// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19865()
{
    if ( !anim._ID39938 )
        return;

    if ( !_func_02F( self._ID7._ID9491 ) )
    {
        self._ID7._ID9491 = 0;
        self._ID7._ID19327 = anim._ID2517;
        self._ID13762 = [];
        self._ID13758 = 0;
    }
}

_ID30759( var_0 )
{
    var_1 = undefined;
    var_2 = 0;

    switch ( self._ID40757 )
    {

    }

    var_access_3 = 1 + self _meth_81BD() % var_2;

    if ( _unknown_0102() )
        var_1 = "enemy_fm";

    var_1 = var_1 + "_" + var_access_3;
    var_5 = undefined;

    switch ( var_access_5 )
    {

    }

    var_7 = undefined;

    if ( _func_02F( self._ID15532 ) )
    {
        var_7 = self._ID15532 + "_" + var_access_7 + "_" + var_0;

        if ( !_func_1D0( var_7 ) )
            var_7 = "generic_" + var_access_7 + "_" + var_0;
    }
    else
        var_7 = "generic_" + var_access_7 + "_" + var_0;

    thread _ID32659( var_2, var_7, var_5 );
    case "xslice":
    case "pmc":
    case "czech":
    case "french":
    case "taskforce":
    case "seal":
    case "american":
    case "delta":
    default:
    case "melee_death":
    case "dogdeathlongplr":
    case "dogdeathshortplr":
    case "dogdeathlong":
    case "dogdeathshort":
    case "meleecharge":
    case "flashbang":
    case "meleeattack":
    case "pain_small":
    case "death":
    case "pain":
    default:
}

actorisfemale()
{
    if ( _func_125( self._ID669, "female" ) )
        return 1;

    return 0;
}

_ID32659( var_0 )
{
    animscripts\battlechatter::_ID27185();
    self._ID7._ID19327 = var_0;
}

_ID32658( var_0 )
{
    if ( !anim._ID39938 )
        return;

    animscripts\battlechatter::_ID27185();
    self._ID7._ID19327 = var_0;
    _unknown_0237();
}

_ID30763( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    thread _unknown_024A( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID7492( var_0 )
{
    return;
}

_ID28080()
{
    return;
}

_ID28061( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self._ID7._ID13767 = 1;
    self._ID7._ID13771 = 1;

    if ( _func_02F( var_3 ) )
    {
        if ( _func_02F( var_1 ) )
        {
            if ( !_func_1D0( var_1 ) )
            {
                wait 0;
                self notify( var_3 );
            }

            self _meth_8071( var_1, "animscript facesound" + var_3, 1 );
            thread _unknown_03C7( var_3 );
        }
    }
    else
        self _meth_8071( var_1 );

    if ( !anim._ID39938 )
        return;

    _unknown_020B();

    if ( !_func_02F( var_0 ) && !_func_02F( var_1 ) )
    {
        if ( _func_02F( var_3 ) )
        {
            wait 0;
            self._ID13760 = "failed";
            self notify( var_3 );
        }

        return;
    }

    self endon( "death" );

    if ( _func_031( var_2 ) )
    {
        switch ( var_2 )
        {

        }
    }

    if ( var_2 <= self._ID7._ID9491 && _func_02F( var_4 ) && var_4 == "wait" )
    {
        var_6 = self._ID13762.size;
        var_7 = self._ID13758 + 1;
        self._ID13762[var_6]["facialanim"] = var_0;
        self._ID13762[var_6]["soundAlias"] = var_1;
        self._ID13762[var_6]["importance"] = var_2;
        self._ID13762[var_6]["notifyString"] = var_3;
        self._ID13762[var_6]["waitOrNot"] = var_4;
        self._ID13762[var_6]["timeToWait"] = var_5;
        self._ID13762[var_6]["notifyNum"] = var_7;
        thread _unknown_04B8( "animscript face stop waiting " + self._ID13762[var_6]["notifyNum"], "Face done waiting", "Face done waiting" );

        if ( _func_02F( var_5 ) )
            thread _unknown_04D3( var_5, "Face done waiting", "Face done waiting" );

        self waittill( "Face done waiting" );
        var_6 = undefined;

        for ( var_8 = 0; var_8 < self._ID13762.size; var_8++ )
        {
            if ( self._ID13762[var_8]["notifyNum"] == var_7 )
            {
                var_6 = var_8;
                break;
            }
        }

        if ( self._ID7._ID13761 == "notify" )
            _unknown_03E5( self._ID13762[var_6]["facialanim"], self._ID13762[var_6]["soundAlias"], self._ID13762[var_6]["importance"], self._ID13762[var_6]["notifyString"] );
        else if ( _func_02F( var_3 ) )
        {
            self._ID13760 = "failed";
            self notify( var_3 );
        }

        for ( var_8 = var_6 + 1; var_8 < self._ID13762.size; var_8++ )
        {
            self._ID13762[var_8 - 1]["facialanim"] = self._ID13762[var_8]["facialanim"];
            self._ID13762[var_8 - 1]["soundAlias"] = self._ID13762[var_8]["soundAlias"];
            self._ID13762[var_8 - 1]["importance"] = self._ID13762[var_8]["importance"];
            self._ID13762[var_8 - 1]["notifyString"] = self._ID13762[var_8]["notifyString"];
            self._ID13762[var_8 - 1]["waitOrNot"] = self._ID13762[var_8]["waitOrNot"];
            self._ID13762[var_8 - 1]["timeToWait"] = self._ID13762[var_8]["timeToWait"];
            self._ID13762[var_8 - 1]["notifyNum"] = self._ID13762[var_8]["notifyNum"];
        }

        self._ID13762[self._ID13762.size - 1] = undefined;
        return;
    }

    if ( var_2 >= self._ID7._ID9491 )
    {
        self notify( "end current face" );
        self endon( "end current face" );

        if ( _func_02F( var_3 ) )
        {
            if ( _func_02F( self._ID7._ID9492 ) )
            {
                self._ID13760 = "interrupted";
                self notify( self._ID7._ID9492 );
            }
        }

        self._ID7._ID9491 = var_2;
        self._ID7._ID9493 = var_1;
        self._ID7._ID9492 = var_3;
        self._ID7._ID13767 = 1;
        self._ID7._ID13771 = 1;

        if ( _func_02F( var_0 ) )
        {
            _ID42259::_ID11015();
            self _meth_8116( "animscript faceanim", var_0, 1, 0.1, 1 );
            self._ID7._ID13767 = 0;
            thread _unknown_063B();
        }
        else
            _ID42259::_ID11015( 0 );

        if ( _func_02F( var_1 ) )
        {
            self _meth_8071( var_1, "animscript facesound", 1 );
            self._ID7._ID13771 = 0;
            thread _unknown_066B();
        }

        while ( !self._ID7._ID13767 || !self._ID7._ID13771 )
            self waittill( "animscript facedone" );

        self._ID7._ID9491 = 0;
        self._ID7._ID9493 = undefined;
        self._ID7._ID9492 = undefined;

        if ( _func_02F( var_3 ) )
        {
            self._ID13760 = "finished";
            self notify( var_3 );
        }

        if ( _func_02F( self._ID13762 ) && self._ID13762.size > 0 )
        {
            var_9 = 0;
            var_10 = 1;

            for ( var_8 = 0; var_8 < self._ID13762.size; var_8++ )
            {
                if ( self._ID13762[var_8]["importance"] > var_9 )
                {
                    var_9 = self._ID13762[var_8]["importance"];
                    var_10 = var_8;
                }
            }

            self notify( "animscript face stop waiting " + self._ID13762[var_10]["notifyNum"] );
            return;
        }

        if ( _func_0D4( self ) )
        {
            _unknown_05BF();
            return;
        }

        return;
        return;
    }

    if ( _func_02F( var_3 ) )
    {
        self._ID13760 = "failed";
        self notify( var_3 );
        return;
    }

    return;
    return;
    case "any":
    case "death":
    case "pain":
}

_ID40992()
{
    self endon( "death" );
    self endon( "end current face" );
    animscripts\shared::_ID11529( "animscript faceanim" );
    self._ID7._ID13767 = 1;
    self notify( "animscript facedone" );
    _ID42259::_ID11015( 0 );
}

_ID40991( var_0 )
{
    self endon( "death" );
    self waittill( "animscript facesound" + var_0 );
    self notify( var_0 );
}

_ID28059( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( var_2 );
    self waittill( var_0 );
    self._ID7._ID13761 = "notify";
    self notify( var_1 );
}

_ID28060( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( var_2 );
    wait(var_0);
    self._ID7._ID13761 = "time";
    self notify( var_1 );
}

_ID19954()
{
    anim._ID25252 = 8;
    anim._ID25248 = 8;
    _unknown_07A8();
}
#using_animtree("generic_human");

_ID19903()
{
    anim._ID13764 = [];
    anim._ID13764["pain"] = [ %facial_pain_1, %facial_pain_2, %facial_pain_3, %facial_pain_4 ];
    anim._ID13764["aim"] = [ %facial_aim_1, %facial_aim_2 ];
    anim._ID13764["run"] = [ %facial_run_1, %facial_run_2 ];
    anim._ID13764["corner_stand_L"] = [ %facial_corner_stand_l_1, %facial_corner_stand_l_2 ];
    anim._ID13764["corner_stand_R"] = [ %facial_corner_stand_r_1, %facial_corner_stand_r_2 ];
    anim._ID13764["death"] = [ %facial_death_1, %facial_death_2, %facial_death_3, %facial_death_4 ];
    anim._ID13764["idle"] = [ %facial_idle_1, %facial_idle_2, %facial_idle_3 ];
}

_ID3186( var_0 )
{
    return _func_068( var_0, "facial_override" );
}

_ID51415()
{
    self _meth_814C( %head, 0.2 );
}

_ID28062( var_0, var_1, var_2 )
{
    if ( !_func_02F( self._ID13769 ) )
        thread _unknown_097E();

    if ( _func_02F( self._ID4956 ) && self._ID4956 )
        self _meth_814C( %head, 0.2 );
    else
    {
        if ( _func_02F( var_0 ) && _unknown_090A( var_0 ) )
        {
            self _meth_814C( %head, 0.2 );
            return;
        }

        if ( !_func_02F( anim._ID13764[var_1] ) )
            return;

        if ( _func_02F( var_2 ) && var_2 >= 0 && var_2 < anim._ID13764[var_1].size )
            var_3 = var_2;
        else
            var_3 = _func_0B7( anim._ID13764[var_1].size );

        var_4 = anim._ID13764[var_1][var_3];
        self _meth_814D( var_4 );

        if ( var_1 == "death" )
        {
            if ( _func_02F( var_0 ) )
                thread _unknown_09A1( _func_067( var_0 ) );
            else
                thread _unknown_09AA();
        }
    }
}

_ID12593( var_0 )
{
    var_1 = 1.0;
    var_2 = 0.2;

    if ( _func_02F( var_0 ) )
        var_1 = _func_0EE( var_0, var_2 + 0.5, var_1 + var_2 ) - var_2;

    wait(var_1);

    if ( _func_02F( self ) )
        self _meth_814C( %head, var_2 );
}

_ID15721()
{
    if ( self _meth_844F( "jnt_eyelid_TL" ) == -1 || self _meth_844F( "tag_eye" ) == -1 )
        return;

    if ( self _meth_844F( "jnt_eyelid_TR" ) == -1 )
        return;

    var_0 = self _meth_818D( "tag_eye" );
    var_1 = self _meth_818D( "jnt_eyelid_TR" );
    var_2 = self _meth_818D( "jnt_eyelid_TL" );
    var_3 = _func_0F0( _func_0C3( var_0[0] - var_1[0] ) );
    var_4 = _func_0F0( _func_0C3( var_0[0] - var_2[0] ) );

    if ( !_func_02F( self._ID28480 ) )
        self._ID28480 = var_3;

    if ( !_func_02F( self._ID28481 ) )
        self._ID28481 = var_4;

    if ( !_func_02F( self._ID13747 ) )
        self._ID13747 = 0;

    if ( _func_0F0( var_3 - self._ID28480 ) > 5 || _func_0F0( var_4 - self._ID28481 ) > 5 )
    {
        self._ID28480 = var_3;
        self._ID28481 = var_4;
    }
    else
        self._ID13747++;

    if ( _func_02F( self._ID13747 ) && self._ID13747 > 4 && _func_02F( self._ID912 ) && self._ID912 != "scripted" && self._ID912 != "death" && self._ID912 != "civilian_death" )
    {
        var_5 = _unknown_0A7D( undefined, "idle", undefined );

        if ( _func_02F( var_5 ) )
            wait(_func_067( anim._ID13764["idle"][var_5] ));

        self._ID13747 = 0;
    }
}

_ID13766()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self._ID13769 = 1;

    for (;;)
    {
        _unknown_0AEA();
        wait 0.35;
    }
}

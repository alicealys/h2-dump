// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19738()
{
    level._ID23516["easy"]["convergenceTime"] = 2.5;
    level._ID23516["easy"]["suppressionTime"] = 3.0;
    level._ID23516["easy"]["accuracy"] = 0.38;
    level._ID23516["easy"]["aiSpread"] = 2;
    level._ID23516["easy"]["playerSpread"] = 0.5;
    level._ID23516["medium"]["convergenceTime"] = 1.5;
    level._ID23516["medium"]["suppressionTime"] = 3.0;
    level._ID23516["medium"]["accuracy"] = 0.38;
    level._ID23516["medium"]["aiSpread"] = 2;
    level._ID23516["medium"]["playerSpread"] = 0.5;
    level._ID23516["hard"]["convergenceTime"] = 0.8;
    level._ID23516["hard"]["suppressionTime"] = 3.0;
    level._ID23516["hard"]["accuracy"] = 0.38;
    level._ID23516["hard"]["aiSpread"] = 2;
    level._ID23516["hard"]["playerSpread"] = 0.5;
    level._ID23516["fu"]["convergenceTime"] = 0.4;
    level._ID23516["fu"]["suppressionTime"] = 3.0;
    level._ID23516["fu"]["accuracy"] = 0.38;
    level._ID23516["fu"]["aiSpread"] = 2;
    level._ID23516["fu"]["playerSpread"] = 0.5;
}

_ID616()
{
    if ( _func_039( "mg42" ) == "" )
        _func_034( "mgTurret", "off" );

    level._ID22748 = 24;
    var_0 = _func_1A2( "turretInfo", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] _meth_80B7();
}

_ID28237()
{
    self _meth_802A( "weapon_mg42_carry", "tag_origin" );
    self endon( "death" );
    self._ID452 = level._ID10115;

    if ( _func_02F( self._ID1191 ) )
    {
        var_0 = _func_0C8( self._ID1191, "targetname" );

        if ( _func_02F( var_0 ) )
        {
            if ( _func_02F( var_0._ID851 ) )
                self._ID452 = var_0._ID851;

            self _meth_81B1( var_0 );
        }
    }

    while ( !_func_02F( self._ID700 ) )
        wait 0.05;

    var_1 = undefined;

    if ( _func_02F( self._ID1191 ) )
    {
        var_0 = _func_0C8( self._ID1191, "targetname" );
        var_1 = var_0;
    }

    if ( !_func_02F( var_1 ) )
        var_1 = self._ID700;

    if ( !_func_02F( var_1 ) )
        return;

    if ( var_1._ID1244 != "Turret" )
        return;

    var_2 = _unknown_0A60();
    var_2[self._ID700._ID740 + ""] = undefined;

    if ( _func_02F( var_2[var_1._ID740 + ""] ) )
        return;

    var_3 = var_1._ID39235;

    if ( _func_02F( var_3._ID886 ) )
        return;

    _unknown_0B3A( var_3 );

    if ( var_3._ID20897 )
        _unknown_09AF( var_3 );
    else
        _unknown_09DD( var_3 );

    _ID42330::_ID17529( var_1._ID39235 );
}

_ID23503()
{
    self waittill( "trigger" );
    level notify( self._ID1193 );
    level._ID23503[self._ID1193] = 1;
    self _meth_80B7();
}

_ID23513( var_0 )
{
    var_0 waittill( "trigger" );
    var_1 = _func_0DE( "bad_guys" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( _func_02F( var_1[var_2]._ID31288 ) && var_0._ID31288 == var_1[var_2]._ID31288 )
            var_1[var_2] notify( "auto_ai" );
    }

    var_3 = _func_0E0();

    for ( var_2 = 0; var_2 < var_3.size; var_2++ )
    {
        if ( _func_02F( var_3[var_2]._ID31288 ) && var_0._ID31288 == var_3[var_2]._ID31288 )
            var_3[var_2]._ID2312 = "auto_ai";
    }

    _ID42372::_ID21313( var_0 );
}

_ID23500( var_0 )
{
    self endon( "death" );
    self endon( "stop_suppressionFire" );

    if ( !_func_02F( self._ID36838 ) )
        self._ID36838 = 1;

    for (;;)
    {
        while ( self._ID36838 )
        {
            self _meth_810F( var_0[_func_0B7( var_0.size )] );
            wait(2 + _func_0B8( 2 ));
        }

        self _meth_8111();

        while ( !self._ID36838 )
            wait 1;
    }
}

_ID22904( var_0 )
{
    var_1 = self._ID740;
    self waittill( "auto_ai" );
    var_0 notify( "stopfiring" );
    var_0 _meth_806C( "auto_ai" );
    var_0 _meth_810F( level._ID794 );
}

_ID6447( var_0 )
{
    if ( var_0 == "delay" )
        return 0.2;
    else if ( var_0 == "delay_range" )
        return 0.5;
    else if ( var_0 == "burst" )
        return 0.5;
    else
        return 1.5;
}

_ID6448()
{
    self endon( "death" );
    self endon( "stop_burst_fire_unmanned" );

    if ( _func_02F( self._ID31121 ) )
        var_0 = self._ID31121;
    else
        var_0 = _unknown_0478( "delay" );

    if ( _func_02F( self._ID31120 ) )
        var_1 = self._ID31120 - var_0;
    else
        var_1 = _unknown_0491( "delay_range" );

    if ( _func_02F( self._ID31083 ) )
        var_2 = self._ID31083;
    else
        var_2 = _unknown_04A8( "burst" );

    if ( _func_02F( self._ID31082 ) )
        var_3 = self._ID31082 - var_2;
    else
        var_3 = _unknown_04C1( "burst_range" );

    var_4 = _func_03D();
    var_5 = "start";

    if ( _func_02F( self._ID33723 ) )
        thread _unknown_0540();

    for (;;)
    {
        var_6 = var_4 - _func_03D() * 0.001;

        if ( self _meth_80EB() && var_6 <= 0 )
        {
            if ( var_5 != "fire" )
            {
                var_5 = "fire";
                thread _unknown_0558();
            }

            var_6 = var_2 + _func_0B8( var_3 );
            thread _unknown_0596( var_6 );
            self waittill( "turretstatechange" );
            var_6 = var_0 + _func_0B8( var_1 );
            var_4 = _func_03D() + _func_0C1( var_6 * 1000 );
            continue;
        }

        if ( var_5 != "aim" )
            var_5 = "aim";

        thread _unknown_05C2( var_6 );
        self waittill( "turretstatechange" );
    }
}

_ID11644()
{
    self endon( "death" );
    self endon( "turretstatechange" );

    for (;;)
    {
        self _meth_80F1();

        if ( !_func_02F( self._ID43488 ) || !self._ID43488 )
            self notify( "turret_fire" );

        wait 0.1;
    }
}

_ID39312()
{
    self endon( "death" );
    self endon( "stop_burst_fire_unmanned" );

    if ( _func_02F( self._ID33724 ) )
        self._ID33725 = 1;

    for (;;)
    {
        self waittill( "turret_fire" );
        _func_157( self._ID33723, self, "tag_origin" );

        if ( _func_02F( self._ID33725 ) && self._ID33725 )
            thread _unknown_0619();
    }
}

_ID39313()
{
    self endon( "death" );
    self._ID33725 = 0;
    var_0 = self _meth_818C( "tag_origin" );
    var_1 = _ID42237::_ID12140( var_0, -30 );
    var_2 = var_0[2] - var_1[2];
    var_3 = var_2 / 300;
    wait(var_3);
    level thread _ID42237::_ID27077( self._ID33724, var_1 );
    wait 1;
    self._ID33725 = 1;
}

_ID39366( var_0 )
{
    if ( var_0 <= 0 )
        return;

    self endon( "turretstatechange" );
    wait(var_0);

    if ( _func_02F( self ) )
        self notify( "turretstatechange" );
}

_ID28956( var_0 )
{
    self endon( "death" );
    self notify( "stop random_spread" );
    self endon( "stop random_spread" );
    self endon( "stopfiring" );
    self _meth_810F( var_0 );

    for (;;)
    {
        if ( _func_1B3( var_0 ) )
            var_0._ID740 = self._ID22903 _meth_809C();
        else
            var_0._ID740 = self._ID22903._ID740;

        var_0._ID740 = var_0._ID740 + ( 20 - _func_0B8( 40 ), 20 - _func_0B8( 40 ), 20 - _func_0B8( 60 ) );
        wait 0.2;
    }
}

_ID23495( var_0 )
{
    self notify( "stop_using_built_in_burst_fire" );
    self endon( "stop_using_built_in_burst_fire" );
    var_0 _meth_80EA();

    for (;;)
    {
        var_0 waittill( "startfiring" );
        thread _unknown_072E( var_0 );
        var_0 _meth_80E9();
        var_0 waittill( "stopfiring" );
        var_0 _meth_80EA();
    }
}

_ID6446( var_0, var_1 )
{
    var_0 endon( "stopfiring" );
    self endon( "stop_using_built_in_burst_fire" );

    if ( _func_02F( var_0._ID31121 ) )
        var_2 = var_0._ID31121;
    else
        var_2 = _unknown_06A1( "delay" );

    if ( _func_02F( var_0._ID31120 ) )
        var_3 = var_0._ID31120 - var_2;
    else
        var_3 = _unknown_06BD( "delay_range" );

    if ( _func_02F( var_0._ID31083 ) )
        var_4 = var_0._ID31083;
    else
        var_4 = _unknown_06D7( "burst" );

    if ( _func_02F( var_0._ID31082 ) )
        var_5 = var_0._ID31082 - var_4;
    else
        var_5 = _unknown_06F3( "burst_range" );

    for (;;)
    {
        var_0 _meth_80E9();

        if ( _func_02F( var_1 ) )
            var_0 thread _unknown_079B( var_1 );

        wait(var_4 + _func_0B8( var_5 ));
        var_0 _meth_80EA();
        wait(var_2 + _func_0B8( var_3 ));
    }
}

_ID1638()
{
    if ( !_func_02F( self._ID14439 ) )
        self._ID14439 = 0;

    if ( !_func_02F( self._ID1193 ) )
        return;

    var_0 = _func_0C8( self._ID1193, "target" );

    if ( !_func_02F( var_0 ) )
        return;

    if ( !_func_02F( var_0._ID31287 ) )
        return;

    if ( !_func_02F( var_0._ID23494 ) )
        var_0._ID23494 = 1;

    self._ID31287 = var_0._ID31287;
    var_1 = 1;

    for (;;)
    {
        if ( var_1 )
        {
            var_1 = 0;

            if ( _func_02F( var_0._ID1193 ) || self._ID14439 )
                self waittill( "get new user" );
        }

        if ( !var_0._ID23494 )
        {
            var_0 waittill( "enable mg42" );
            var_0._ID23494 = 1;
        }

        var_2 = [];
        var_3 = _func_0DE();

        for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        {
            var_5 = 1;

            if ( _func_02F( var_3[var_4]._ID31287 ) && var_3[var_4]._ID31287 == self._ID31287 )
                var_5 = 0;

            if ( _func_02F( var_3[var_4]._ID39928 ) )
                var_5 = 1;

            if ( var_5 )
                var_2[var_2.size] = var_3[var_4];
        }

        if ( var_2.size )
            var_3 = _ID42407::_ID15602( var_0._ID740, undefined, var_2 );
        else
            var_3 = _ID42407::_ID15601( var_0._ID740, undefined );

        var_2 = undefined;

        if ( _func_02F( var_3 ) )
        {
            var_3 notify( "stop_going_to_node" );
            var_3 thread _ID42372::_ID16964( var_0 );
            var_3 waittill( "death" );
            continue;
        }

        self waittill( "get new user" );
    }
}

_ID23502()
{
    if ( !_func_02F( self._ID2312 ) )
        self._ID2312 = "manual_ai";

    var_0 = _func_0C8( self._ID1191, "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_1._ID25988 = var_0._ID740;

    if ( _func_02F( var_1._ID1191 ) )
    {
        if ( !_func_02F( level._ID23503 ) || !_func_02F( level._ID23503[var_1._ID1191] ) )
        {
            level._ID23503[var_1._ID1191] = 0;
            _func_1A1( var_1._ID1191, "targetname" ) thread _unknown_0820();
        }

        var_2 = 1;
    }
    else
        var_2 = 0;

    for (;;)
    {
        if ( self._ID216 == 0 )
            return;

        var_3 = undefined;

        while ( !_func_02F( var_3 ) )
        {
            var_3 = self _meth_809A();
            wait 1;
        }

        var_3 thread _unknown_0A2E( var_1, var_2, self._ID2312 );
        var_3 thread _unknown_0953( var_1 );
        var_3 waittill( "death" );

        if ( _func_02F( self._ID916 ) )
        {
            wait(self._ID916);
            continue;
        }

        if ( _func_02F( self._ID31121 ) && _func_02F( self._ID31120 ) )
        {
            wait(self._ID31121 + _func_0B8( self._ID31120 - self._ID31121 ));
            continue;
        }

        wait 1;
    }
}

_ID21294( var_0, var_1, var_2, var_3 )
{
    var_0 waittill( var_1 );

    if ( _func_02F( var_2 ) )
        var_2 _meth_80B7();

    if ( _func_02F( var_3 ) )
        var_3 _meth_80B7();
}

_ID23497( var_0, var_1, var_2 )
{
    self endon( "death" );

    if ( var_2 == "manual_ai" )
    {
        for (;;)
        {
            thread _unknown_0ADE( var_0, var_1 );
            self waittill( "auto_ai" );
            _unknown_0C26( var_0, "auto_ai" );
            self waittill( "manual_ai" );
        }
    }
    else
    {
        for (;;)
        {
            _unknown_0C3B( var_0, "auto_ai", level._ID794 );
            self waittill( "manual_ai" );
            thread _unknown_0B0D( var_0, var_1 );
            self waittill( "auto_ai" );
        }
    }
}

_ID27637()
{
    if ( !_func_02F( level._ID27328 ) )
        return 0;

    if ( level._ID794 _meth_8188() == "prone" )
        return 1;

    if ( level._ID27329 == "cow" && level._ID794 _meth_8188() == "crouch" )
        return 1;

    return 0;
}

_ID35580()
{
    if ( level._ID794 _meth_8188() == "prone" )
        return ( 0, 0, 5 );
    else if ( level._ID794 _meth_8188() == "crouch" )
        return ( 0, 0, 25 );

    return ( 0, 0, 50 );
}

_ID23496( var_0, var_1 )
{
    self endon( "death" );
    self endon( "auto_ai" );
    self._ID744 = 1;
    self _meth_81B2( var_0._ID25988 );
    self._ID452 = level._ID22748;
    self waittill( "goal" );

    if ( var_1 )
    {
        if ( !level._ID23503[var_0._ID1191] )
            level waittill( var_0._ID1191 );
    }

    self._ID744 = 0;
    var_0 _meth_806C( "auto_ai" );
    var_0 _meth_8111();
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_3 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_3._ID30768 = 3;

    if ( _func_039( "mg42" ) != "off" )
        var_3 _meth_80B8( "temp" );

    var_3 thread _unknown_0D59( var_0, var_2 );
    level thread _unknown_0BCC( self, "death", var_2, var_3 );
    level thread _unknown_0BD8( self, "auto_ai", var_2, var_3 );
    var_0._ID27696 = 0;
    var_4 = 0;
    var_5 = _func_1A2( "mg42_target", "targetname" );

    if ( var_5.size > 0 )
    {
        var_6 = 1;
        var_7 = var_5[_func_0B7( var_5.size )]._ID740;
        thread _unknown_0D69( var_5 );
        _unknown_0D8B( var_0 );
        self._ID37285 = var_2;
        var_0 _meth_806C( "manual_ai" );
        var_0 _meth_810F( var_2 );
        var_0 notify( "startfiring" );
        var_8 = 15;
        var_9 = 0.08;
        var_10 = 0.05;
        var_2._ID740 = var_5[_func_0B7( var_5.size )]._ID740;
        var_11 = 0;

        while ( !_func_02F( level._ID27328 ) )
        {
            var_7 = var_2._ID740;

            if ( _func_0F3( var_7, var_5[self._ID17513]._ID740 ) > var_8 )
            {
                var_12 = _func_119( var_5[self._ID17513]._ID740 - var_7 );
                var_12 *= var_8;
                var_7 += var_12;
            }
            else
                self notify( "next_target" );

            var_2._ID740 = var_7;
            wait 0.1;
        }

        for (;;)
        {
            for ( var_13 = 0; var_13 < 1; var_13 += var_10 )
            {
                var_2._ID740 = var_7 * 1.0 - var_13 + level._ID794 _meth_809C() + _unknown_0CD4() * var_13;

                if ( _unknown_0CCE() )
                    var_13 = 2;

                wait(var_9);
            }

            var_14 = level._ID794 _meth_809C();

            while ( !_unknown_0CE4() )
            {
                var_2._ID740 = level._ID794 _meth_809C();
                var_15 = var_2._ID740 - var_14;
                var_2._ID740 = var_2._ID740 + var_15 + _unknown_0D0E();
                var_14 = level._ID794 _meth_809C();
                wait 0.1;
            }

            if ( _unknown_0D13() )
            {
                var_11 = _func_03D() + 1500 + _func_0B8( 4000 );

                while ( _unknown_0D25() && _func_02F( level._ID27328._ID1191 ) && _func_03D() < var_11 )
                {
                    var_16 = _func_1A2( level._ID27328._ID1191, "targetname" );
                    var_16 = var_16[_func_0B7( var_16.size )];
                    var_2._ID740 = var_16._ID740 + ( _func_0B8( 30 ) - 15, _func_0B8( 30 ) - 15, _func_0B8( 40 ) - 60 );
                    wait 0.1;
                }
            }

            self notify( "next_target" );

            while ( _unknown_0D79() )
            {
                var_7 = var_2._ID740;

                if ( _func_0F3( var_7, var_5[self._ID17513]._ID740 ) > var_8 )
                {
                    var_12 = _func_119( var_5[self._ID17513]._ID740 - var_7 );
                    var_12 *= var_8;
                    var_7 += var_12;
                }
                else
                    self notify( "next_target" );

                var_2._ID740 = var_7;
                wait 0.1;
            }
        }
    }
    else
    {
        for (;;)
        {
            _unknown_0F25( var_0 );

            while ( !_func_02F( level._ID27328 ) )
            {
                if ( !var_0._ID27696 )
                {
                    var_0 _meth_810F( level._ID794 );
                    var_0._ID27696 = 1;
                    var_3._ID37274 = level._ID794;
                }

                wait 0.2;
            }

            var_0 _meth_806C( "manual_ai" );
            _unknown_0F5A( var_0 );
            var_0 notify( "startfiring" );
            var_11 = _func_03D() + 1500 + _func_0B8( 4000 );

            while ( var_11 > _func_03D() )
            {
                if ( _func_02F( level._ID27328 ) )
                {
                    var_16 = _func_1A2( level._ID27328._ID1191, "targetname" );
                    var_16 = var_16[_func_0B7( var_16.size )];
                    var_2._ID740 = var_16._ID740 + ( _func_0B8( 30 ) - 15, _func_0B8( 30 ) - 15, _func_0B8( 40 ) - 60 );
                    var_0 _meth_810F( var_2 );
                    var_3._ID37274 = var_2;
                    wait(_func_0B8( 1 ));
                    continue;
                }

                break;
            }

            var_0 notify( "stopfiring" );
            _unknown_0FCD( var_0 );

            if ( var_0._ID27696 )
            {
                var_0 _meth_806C( "auto_ai" );
                var_0 _meth_8111();
                var_0._ID27696 = 0;
                var_3._ID37274 = var_3;
                var_3._ID740 = ( 0, 0, 0 );
            }

            while ( _func_02F( level._ID27328 ) )
                wait 0.2;

            wait(0.75 + _func_0B8( 0.2 ));
        }
    }
}

_ID33760( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        var_1 = [];

        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
            var_1[var_2] = 0;

        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        {
            self._ID17513 = _func_0B7( var_0.size );
            self waittill( "next_target" );

            while ( var_1[self._ID17513] )
            {
                self._ID17513++;

                if ( self._ID17513 >= var_0.size )
                    self._ID17513 = 0;
            }

            var_1[self._ID17513] = 1;
        }
    }
}

_ID24385( var_0, var_1, var_2 )
{
    self _meth_81B2( var_0._ID25988 );
    self._ID452 = level._ID22748;
    self waittill( "goal" );

    if ( _func_02F( var_1 ) && var_1 == "auto_ai" )
    {
        var_0 _meth_806C( "auto_ai" );

        if ( _func_02F( var_2 ) )
            var_0 _meth_810F( var_2 );
        else
            var_0 _meth_8111();
    }

    self _meth_8196( var_0 );
}

_ID37495( var_0, var_1 )
{
    if ( _func_039( "mg42" ) == "off" )
        return;

    self._ID37274 = self;

    for (;;)
    {
        self._ID740 = var_1._ID740;
        wait 0.1;
    }
}

_ID39324( var_0 )
{
    var_1 = _func_1A1( var_0._ID4392, "targetname" );
    var_2 = 0.5;

    if ( _func_02F( var_1._ID31493 ) )
        var_2 = var_1._ID31493;

    var_3 = 2;

    if ( _func_02F( var_1._ID31492 ) )
        var_2 = var_1._ID31492;

    for (;;)
    {
        var_1 waittill( "turret_deactivate" );
        wait(var_2 + _func_0B8( var_3 - var_2 ));

        while ( !_func_09E( var_1 ) )
        {
            _unknown_1150( var_0, var_1 );
            wait 1.0;
        }
    }
}

_ID39259( var_0, var_1 )
{
    var_2 = _func_0DE();

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( var_2[var_3] _meth_8169( var_0._ID740 ) && var_2[var_3] _meth_8198( var_1 ) )
        {
            var_4 = var_2[var_3]._ID562;
            var_2[var_3]._ID562 = 0;

            if ( !var_2[var_3] _meth_8200( var_0 ) )
                var_2[var_3]._ID562 = var_4;
        }
    }
}

_ID32596()
{
    _unknown_0D4B();
    var_0 = _func_1A2( "misc_turret", "code_classname" );
    var_1 = _ID42407::_ID16219();

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _func_02F( var_0[var_2]._ID31432 ) )
        {
            switch ( var_0[var_2]._ID31432 )
            {

            }
        }

        _unknown_1259( var_0[var_2], var_1 );
        case "fu":
        case "hard":
        case "medium":
        case "easy":
        default:
    }
}

_ID23499( var_0, var_1 )
{
    var_0._ID212 = level._ID23516[var_1]["convergenceTime"];
    var_0._ID53961 = level._ID23516[var_1]["suppressionTime"];
    var_0._ID10 = level._ID23516[var_1]["accuracy"];
    var_0._ID2469 = level._ID23516[var_1]["aiSpread"];
    var_0._ID28002 = level._ID23516[var_1]["playerSpread"];
}

_ID23501( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 0.88;

    self endon( "death" );
    self notify( "stop_mg42_target_drones" );
    self endon( "stop_mg42_target_drones" );
    self._ID12043 = 0;

    if ( !_func_02F( self._ID31187 ) )
        self._ID31187 = 0;

    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    self _meth_806C( "manual_ai" );
    var_3 = _ID42407::_ID16219();

    if ( !_func_02F( level._ID12061 ) )
        var_4 = 1;
    else
        var_4 = 0;

    for (;;)
    {
        if ( var_4 )
        {
            if ( _func_02F( self._ID12071 ) )
                self _meth_806C( self._ID10142 );
            else if ( var_0 )
                self _meth_806C( "auto_nonai" );
            else
                self _meth_806C( "auto_ai" );

            level waittill( "new_drone" );
        }

        if ( !_func_02F( self._ID25547 ) )
            self._ID25547 = self._ID212;

        self._ID212 = 2;

        if ( !var_0 )
        {
            var_5 = self _meth_80F2();

            if ( !_func_1A7( var_5 ) || _func_1B3( var_5 ) )
            {
                wait 0.05;
                continue;
            }
            else
                var_1 = var_5._ID1194;
        }
        else
            var_5 = undefined;

        if ( var_1 == "allies" )
            var_6 = "axis";
        else
            var_6 = "allies";

        while ( level._ID12061[var_6]._ID21937 )
        {
            _ID42237::_ID22529( "mg42_drones" );

            if ( !level._ID12061[var_6]._ID21937 )
            {
                _ID42237::_ID39496( "mg42_drones" );
                break;
            }

            var_7 = _unknown_1481( var_6, var_2 );
            _ID42237::_ID39496( "mg42_drones" );

            if ( !_func_02F( self._ID31187 ) || !self._ID31187 )
            {
                wait 0.05;
                break;
            }

            if ( !_func_02F( var_7 ) )
            {
                wait 0.05;
                break;
            }

            if ( _func_02F( self._ID3146 ) )
                [[ self._ID3146 ]]();

            if ( var_0 )
                self _meth_806C( "manual" );
            else
                self _meth_806C( "manual_ai" );

            self _meth_810F( var_7, ( 0, 0, 32 ) );
            _unknown_14AC( var_7, 1, var_2 );
            self _meth_8111();
            self _meth_80EA();

            if ( !var_0 && !_func_02F( self _meth_80F2() ) && self _meth_80F2() == var_5 )
                break;
        }

        self._ID212 = self._ID25547;
        self._ID25547 = undefined;
        self _meth_8111();
        self _meth_80EA();

        if ( level._ID12061[var_6]._ID21937 )
        {
            var_4 = 0;
            continue;
        }

        var_4 = 1;
    }
}

_ID11994( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_3 = _func_03D() + var_1 * 1000;
    var_4 = 0;

    while ( var_3 > _func_03D() || var_4 )
    {
        _ID42237::_ID22529( "mg42_drones_target_trace" );
        var_5 = self _meth_8112( 1 );

        if ( !_func_08F( self _meth_818C( "tag_flash" ), var_0._ID740 + ( 0, 0, 40 ), 0, var_0 ) )
        {
            _ID42237::_ID39496( "mg42_drones_target_trace" );
            break;
        }
        else if ( _func_02F( var_5 ) && _func_0F3( var_5._ID740, self._ID740 ) < _func_0F3( self._ID740, var_0._ID740 ) )
        {
            _ID42237::_ID39496( "mg42_drones_target_trace" );
            break;
        }

        if ( !var_4 )
        {
            self _meth_80E9();
            var_4 = 1;
        }

        _ID42237::_ID39501( "mg42_drones_target_trace" );
    }

    self _meth_80EA();
    _ID42407::_ID36716( level._ID12061[var_0._ID1194], 1 );
}

_ID15582( var_0, var_1 )
{
    if ( level._ID12061[var_0]._ID21937 < 1 )
        return;

    var_2 = undefined;
    var_3 = _func_11F( self._ID65 );

    for ( var_4 = 0; var_4 < level._ID12061[var_0]._ID21937; var_4++ )
    {
        if ( !_func_02F( level._ID12061[var_0]._ID3291[var_4] ) )
            continue;

        var_5 = _func_11A( level._ID12061[var_0]._ID3291[var_4]._ID740 - self._ID740 );
        var_6 = _func_11F( var_5 );

        if ( _func_0FB( var_3, var_6 ) < var_1 )
            continue;

        var_2 = level._ID12061[var_0]._ID3291[var_4];

        if ( !_func_08F( self _meth_818C( "tag_flash" ), var_2 _meth_809D(), 0, var_2 ) )
        {
            var_2 = undefined;
            continue;
        }

        break;
    }

    var_7 = self _meth_8112( 1 );

    if ( !_func_02F( self._ID28409 ) )
    {
        if ( _func_02F( var_2 ) && _func_02F( var_7 ) && _func_0F5( self._ID740, var_7._ID740 ) < _func_0F5( self._ID740, var_2._ID740 ) )
            var_2 = undefined;
    }

    return var_2;
}

_ID30755( var_0 )
{
    var_1 = _func_1A2( "misc_turret", "code_classname" );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( _func_02F( var_1[var_3]._ID1193 ) )
            continue;

        if ( _func_02F( var_1[var_3]._ID20994 ) )
            continue;

        var_2[var_1[var_3]._ID740 + ""] = var_1[var_3];
    }

    if ( !var_2.size )
        return;

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = var_0[var_4];

        if ( var_5._ID1244 == "Path" )
            continue;

        if ( var_5._ID1244 == "Begin" )
            continue;

        if ( var_5._ID1244 == "End" )
            continue;

        var_6 = _func_11F( ( 0, var_5._ID65[1], 0 ) );
        var_7 = var_2;

        for ( var_11 = _func_1DA( var_7 ); _func_02F( var_11 ); var_11 = _func_1BF( var_7, var_11 ) )
        {
            var_8 = var_7[var_11];

            if ( _func_0F3( var_5._ID740, var_8._ID740 ) > 50 )
                continue;

            var_9 = _func_11F( ( 0, var_8._ID65[1], 0 ) );
            var_10 = _func_0FB( var_6, var_9 );

            if ( var_10 < 0.9 )
                continue;

            var_5._ID39350 = _func_06A( "script_origin", var_8._ID740 );
            var_5._ID39350._ID65 = var_8._ID65;
            var_5._ID39350._ID700 = var_5;
            var_5._ID39350._ID591 = 45;
            var_5._ID39350._ID895 = 45;
            var_5._ID39350._ID1215 = 15;
            var_5._ID39350._ID137 = 15;

            if ( _func_02F( var_8._ID591 ) )
                var_5._ID39350._ID591 = _func_0C4( var_8._ID591, 45 );

            if ( _func_02F( var_8._ID895 ) )
                var_5._ID39350._ID895 = _func_0C4( var_8._ID895, 45 );

            if ( _func_02F( var_8._ID1215 ) )
                var_5._ID39350._ID1215 = _func_0C4( var_8._ID1215, 15 );

            if ( _func_02F( var_8._ID137 ) )
                var_5._ID39350._ID137 = _func_0C4( var_8._ID137, 15 );

            var_2[var_11] = undefined;
            var_8 _meth_80B7();
        }

        var_clear_4
    }
}

_ID4393( var_0 )
{
    var_1 = _func_1A2( "misc_turret", "code_classname" );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( !_func_02F( var_1[var_3]._ID1193 ) || _func_128( var_1[var_3]._ID1193 ) != "find_mgTurret" )
            continue;

        if ( !_func_02F( var_1[var_3]._ID13703 ) )
            continue;

        if ( !_func_02F( var_1[var_3]._ID31147 ) )
            var_2[var_1[var_3]._ID740 + ""] = var_1[var_3];
    }

    if ( !var_2.size )
        return;

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = var_0[var_4];

        if ( var_5._ID1244 == "Path" )
            continue;

        if ( var_5._ID1244 == "Begin" )
            continue;

        if ( var_5._ID1244 == "End" )
            continue;

        var_6 = _func_11F( ( 0, var_5._ID65[1], 0 ) );
        var_7 = _func_1D9( var_2 );

        for ( var_3 = 0; var_3 < var_7.size; var_3++ )
        {
            var_8 = var_2[var_7[var_3]];

            if ( _func_0F3( var_5._ID740, var_8._ID740 ) > 70 )
                continue;

            var_9 = _func_11F( ( 0, var_8._ID65[1], 0 ) );
            var_10 = _func_0FB( var_6, var_9 );

            if ( var_10 < 0.9 )
                continue;

            var_5._ID39235 = var_8;
            var_8._ID700 = var_5;
            var_8._ID20897 = 1;
            var_2[var_7[var_3]] = undefined;
        }
    }

    var_0 = undefined;
}

_ID30736()
{
    self._ID33719 = [];
    self._ID33719["connected"] = [];
    self._ID33719["ambush"] = [];

    if ( !_func_02F( self._ID13703 ) )
        return;

    level._ID33718[self._ID13703] = self;

    if ( _func_02F( self._ID31494 ) )
    {
        var_0 = _func_129( self._ID31494, " " );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
            self._ID33719["connected"][var_0[var_1]] = 1;
    }

    if ( _func_02F( self._ID31491 ) )
    {
        var_0 = _func_129( self._ID31491, " " );

        for ( var_1 = 0; var_1 < var_0.size; var_1++ )
            self._ID33719["ambush"][var_0[var_1]] = 1;
    }
}

_ID29867()
{
    self notify( "gun_placed_again" );
    self endon( "gun_placed_again" );
    self waittill( "restore_default_drop_pitch" );
    wait 1;
    self _meth_8165();
}

_ID12185()
{
    thread _unknown_1B10();
}

_ID12186()
{
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0._ID740 = self _meth_818C( level._ID28238 );
    var_0._ID65 = self _meth_818D( level._ID28238 );
    var_0 _meth_80B8( self._ID39352 );
    var_1 = _func_11F( self._ID65 );
    var_1 *= 100;
    var_0 _meth_82BC( var_1, 0.5 );
    self _meth_802A( self._ID39352, level._ID28238 );
    self._ID39352 = undefined;
    wait 0.7;
    var_0 _meth_80B7();
}

_ID39342()
{
    self endon( "kill_turret_detach_thread" );
    self endon( "dropped_gun" );
    self waittill( "death" );

    if ( !_func_02F( self ) )
        return;

    _unknown_1B7C();
}

_ID39344()
{
    self endon( "death" );
    self endon( "kill_turret_detach_thread" );
    self waittill( "dropped_gun" );
    self _meth_802A( self._ID39352, level._ID28238 );
}

_ID29868()
{
    self._ID30386 = undefined;
    _ID42237::_ID32186( animscripts\init::_ID312 );
}

_ID29873()
{
    self waittill( "turret_deactivate" );
    self _meth_8165();
}

_ID39611( var_0 )
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self endon( "stop_updating_enemy_target_pos" );

    for (;;)
    {
        self waittill( "saw_enemy" );
        var_0._ID740 = self._ID21799;
    }
}

_ID24371( var_0, var_1 )
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self endon( "stop_updating_enemy_target_pos" );
    var_2 = self._ID39235._ID740 + ( 0, 0, 16 );
    var_3 = var_1._ID740 + ( 0, 0, 16 );

    for (;;)
    {
        wait 0.05;

        if ( _func_090( var_0._ID740, var_3, 0, undefined ) )
            continue;

        var_4 = _func_11A( var_2 - var_0._ID740 );
        var_5 = _func_11F( var_4 );
        var_5 *= 8;
        var_0._ID740 = var_0._ID740 + var_5;
    }
}

_ID29316( var_0 )
{
    self endon( "death" );
    self endon( "end_mg_behavior" );
    self endon( "stop_updating_enemy_target_pos" );
    var_0._ID6092 = [];

    for (;;)
    {
        var_0._ID6092[var_0._ID6092.size] = self._ID740 + ( 0, 0, 50 );
        wait 0.35;
    }
}

_ID2420( var_0, var_1 )
{
    if ( !_func_1A7( self._ID9442 ) && self _meth_81CA( self._ID9442 ) )
    {
        var_1._ID740 = self._ID21799;
        return;
    }

    var_2 = _func_11F( var_0._ID65 );

    for ( var_3 = var_1._ID6092.size - 3; var_3 >= 0; var_3-- )
    {
        var_4 = var_1._ID6092[var_3];
        var_5 = _func_119( var_4 - var_0._ID740 );
        var_6 = _func_0FB( var_2, var_5 );

        if ( var_6 < 0.75 )
            continue;

        var_1._ID740 = var_4;

        if ( _func_090( var_0._ID740, var_4, 0, undefined ) )
            continue;

        break;
    }
}

_ID14164( var_0 )
{
    var_1 = _unknown_1E7F( var_0 );
    var_2 = var_1["spot"];
    var_3 = var_1["type"];

    if ( !_func_02F( var_2 ) )
        return;

    _unknown_1F5C( var_2 );
    thread _unknown_1D3A( var_0 );
    thread _unknown_1D4B( var_0, var_2 );

    if ( var_3 == "ambush" )
        thread _unknown_1D7B( var_0 );

    if ( var_2._ID20897 )
        _unknown_1DE9( var_2 );
    else
    {
        _unknown_1E03( var_2 );
        _unknown_1E1D( var_2 );
    }

    self notify( "stop_updating_enemy_target_pos" );

    if ( var_3 == "ambush" )
        _unknown_1DBA( var_2, var_0 );

    var_2 _meth_810F( var_0 );
}

_ID34495( var_0 )
{
    var_0 _meth_806C( "manual" );
    wait 0.5;
    var_0 _meth_806C( "manual_ai" );
}

_ID22120( var_0 )
{
    self _meth_8197();
    animscripts\shared::_ID26732( self._ID834, "none" );
    var_1 = _unknown_1E52( var_0 );
    var_2 = _func_071( var_0._ID740, var_0._ID65, var_1 );
    self _meth_816A( var_2 );
    self waittill( "runto_arrived" );
    _unknown_1F18( var_0 );
}

_ID26643( var_0 )
{
    self _meth_8197();
    self._ID39235 _unknown_1FD2();
}

_ID16044( var_0 )
{
    var_1 = [];
    var_1["saw_bipod_stand"] = level._ID23490["bipod_stand_setup"];
    var_1["saw_bipod_crouch"] = level._ID23490["bipod_crouch_setup"];
    var_1["saw_bipod_prone"] = level._ID23490["bipod_prone_setup"];
    return var_1[var_0._ID1312];
}
#using_animtree("generic_human");

_ID30401( var_0 )
{
    var_1 = self._ID486;
    var_0 endon( "turret_deactivate" );
    self._ID23493 = var_0;
    self endon( "death" );
    self endon( "dropped_gun" );
    var_2 = _unknown_1ECA( var_0 );
    self._ID39352 = "weapon_mg42_carry";
    self notify( "kill_get_gun_back_on_killanimscript_thread" );
    animscripts\shared::_ID26732( self._ID1302, "none" );

    if ( self _meth_8147() )
        self._ID486 = 1;

    self._ID30386 = %saw_gunner_run_fast;
    self._ID9352 = %saw_gunner_run_fast;
    self _meth_801D( self._ID39352, level._ID28238 );
    thread _unknown_1E49();
    var_3 = _func_071( var_0._ID740, var_0._ID65, var_2 );
    self _meth_816A( var_3 );
    wait 0.05;
    _ID42237::_ID32186( animscripts\combat::_ID13289 );
    _ID42237::_ID7866( "move" );
    _ID42237::_ID32287( "cover_crouch", ::_unknown_1F9F );

    while ( _func_0F3( self._ID740, var_3 ) > 16 )
    {
        self _meth_816A( var_3 );
        wait 0.05;
    }

    self notify( "kill_turret_detach_thread" );

    if ( self _meth_8147() )
        self._ID486 = var_1;

    if ( _func_1D0( "weapon_setup" ) )
        thread _ID42237::_ID27077( "weapon_setup" );

    self _meth_8148( "setup_done", var_0._ID740, var_0._ID65, var_2 );
    _unknown_1ED3();
    self waittillmatch( "setup_done",  "end"  );
    var_0 notify( "restore_default_drop_pitch" );
    var_0 _unknown_20F6();
    animscripts\shared::_ID26732( self._ID834, "right" );
    _unknown_2050( var_0 );
    self _meth_802A( self._ID39352, level._ID28238 );
    _ID42237::_ID32186( animscripts\init::_ID312 );
    self notify( "bcs_portable_turret_setup" );
}

_ID24378()
{
    self _meth_816A( self._ID30442 );
}

_ID18752()
{
    self endon( "killanimscript" );
    self waittill( "death" );
}

_ID39969()
{
    if ( !_func_02F( self._ID39235 ) )
        return 0;

    return self._ID39235._ID743 == self;
}

_ID39331()
{
    if ( !_unknown_2058() )
    {
        _ID42237::_ID7866( "move" );
        return;
    }

    var_0 = _unknown_20E0( "connected" );
    var_1 = var_0["spots"];

    if ( !var_1.size )
    {
        _ID42237::_ID7866( "move" );
        return;
    }

    var_2 = self._ID700;

    if ( !_func_02F( var_2 ) || !_ID42407::_ID20542( var_1, var_2 ) )
    {
        var_3 = _unknown_20FA();

        for ( var_4 = 0; var_4 < var_1.size; var_4++ )
        {
            var_2 = _ID42237::_ID28945( var_1 );

            if ( _func_02F( var_3[var_2._ID740 + ""] ) )
                return;
        }
    }

    var_5 = var_2._ID39235;

    if ( _func_02F( var_5._ID886 ) )
        return;

    _unknown_21DB( var_5 );

    if ( var_5._ID20897 )
        _unknown_2051( var_5 );
    else
        _unknown_207F( var_5 );

    _ID42330::_ID17529( var_2._ID39235 );
}

_ID39915( var_0 )
{
    var_1 = self _meth_8196( var_0 );

    if ( var_1 )
    {
        _ID42237::_ID32287( "move", ::_unknown_20FF );
        self._ID39235 = var_0;
        thread _unknown_1AB7( var_0 );
        var_0 _meth_806C( "manual_ai" );
        var_0 thread _unknown_1FF9();
        self._ID39235 = var_0;
        var_0._ID743 = self;
        return 1;
    }
    else
    {
        var_0 _meth_8165();
        return 0;
    }
}

_ID15929( var_0 )
{
    var_1 = [];
    var_1[var_1.size] = ::_unknown_21E4;
    var_1[var_1.size] = ::_unknown_21E6;
    var_1 = _ID42237::_ID3320( var_1 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = [[ var_1[var_2] ]]( var_0 );

        if ( !_func_02F( var_3["spots"] ) )
            continue;

        var_3["spot"] = _ID42237::_ID28945( var_3["spots"] );
        return var_3;
    }
}

_ID16647()
{
    var_0 = [];
    var_1 = _func_0DE();

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !_func_02F( var_1[var_2]._ID700 ) )
            continue;

        var_0[var_1[var_2]._ID700._ID740 + ""] = 1;
    }

    return var_0;
}

_ID14175( var_0 )
{
    var_1 = level._ID33718;
    var_2 = [];
    var_3 = _func_1D9( var_1 );
    var_4 = _unknown_2215();
    var_4[self._ID700._ID740 + ""] = undefined;

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        var_6 = var_3[var_5];

        if ( var_1[var_6] == self._ID39235 )
            continue;

        var_7 = _func_1D9( self._ID39235._ID33719[var_0] );

        for ( var_8 = 0; var_8 < var_7.size; var_8++ )
        {
            if ( var_1[var_6]._ID13703 + "" != var_7[var_8] )
                continue;

            if ( _func_02F( var_1[var_6]._ID886 ) )
                continue;

            if ( _func_02F( var_4[var_1[var_6]._ID700._ID740 + ""] ) )
                continue;

            if ( _func_0F3( self._ID451, var_1[var_6]._ID740 ) > self._ID452 )
                continue;

            var_2[var_2.size] = var_1[var_6];
        }
    }

    var_9 = [];
    var_9["type"] = var_0;
    var_9["spots"] = var_2;
    return var_9;
}

_ID14185( var_0 )
{
    return _unknown_22D6( "ambush" );
}

_ID14183( var_0 )
{
    var_1 = _unknown_22E1( "connected" );
    var_2 = var_1["spots"];

    if ( !var_2.size )
        return;

    var_3 = [];

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        if ( !_ID42237::_ID41802( var_2[var_4]._ID740, var_2[var_4]._ID65, var_0._ID740, 0.75 ) )
            continue;

        if ( !_func_090( var_0._ID740, var_2[var_4]._ID740 + ( 0, 0, 16 ), 0, undefined ) )
            continue;

        var_3[var_3.size] = var_2[var_4];
    }

    var_1["spots"] = var_3;
    return var_1;
}

_ID28239()
{
    _unknown_2155();
    var_0 = 1;
    self._ID20897 = 1;
    self._ID886 = undefined;

    if ( _func_02F( self._ID20994 ) )
        return;

    if ( self._ID989 & var_0 )
        return;

    _unknown_23D3();
}

_ID18537()
{
    self notify( "stop_checking_for_flanking" );
    self._ID20897 = 0;
    self _meth_805A();
    self._ID34929 = 0;
    self _meth_80C7();
    self _meth_8164( 0 );
    thread _unknown_21B5();
}

_ID34039()
{
    self _meth_8059();
    self._ID34929 = 1;
    self _meth_80C6();
    self._ID20897 = 1;
    thread _unknown_2416();
}

_ID36520()
{
    self endon( "stop_checking_for_flanking" );
    self waittill( "turret_deactivate" );

    if ( _func_1A7( self._ID743 ) )
        self._ID743 notify( "end_mg_behavior" );
}

_ID39281( var_0 )
{
    var_1 = var_0 _meth_80F2();

    if ( !_func_02F( var_1 ) )
        return 0;

    return var_1 == self;
}

_ID12630( var_0 )
{
    _unknown_245F( var_0 );
    var_0._ID886 = undefined;
}

_ID41160( var_0 )
{
    var_0 endon( "turret_deactivate" );
    self endon( "death" );
    self waittill( "end_mg_behavior" );
}

_ID29729( var_0 )
{
    var_0._ID886 = self;
    thread _unknown_247F( var_0 );
}

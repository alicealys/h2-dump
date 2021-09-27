// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( !_ID42407::_ID44759() )
        return;

    _func_150( &"SCRIPT_INTELLIGENCE_OF_THIRTY" );
    _func_150( &"SCRIPT_INTELLIGENCE_PICKUP" );
    _func_150( &"SCRIPT_INTELLIGENCE_PICKUP_PC" );
    _func_14F( "h1_hud_ammo_status_glow" );
    _func_14F( "h1_hud_ammo_status_scanlines" );
    level._ID44135 = 45;
    level._ID20122 = _unknown_0082();
    level._ID37037 = _unknown_0098();
    _unknown_004C();
}

_ID19933()
{
    for ( var_0 = 0; var_0 < level._ID20122.size; var_0++ )
    {
        var_1 = level._ID20122[var_0];
        var_2 = var_1._ID740;
        level._ID20122[var_0]._ID25216 = _unknown_0103( var_2 );

        if ( level._ID20122[var_0] _unknown_00B5() )
        {
            var_1._ID530 _meth_805A();
            var_1._ID530 _meth_82C9();
            var_1 _ID42237::_ID38863();
            level._ID20122[var_0]._ID14836 = 1;
            continue;
        }

        level._ID20122[var_0] thread _unknown_0110();
    }

    _unknown_00C9();
}

_ID52495()
{
    for (;;)
    {
        for ( var_0 = 0; var_0 < level._ID20122.size; var_0++ )
        {
            if ( !_func_02F( level._ID20122[var_0]._ID29599 ) && level._ID20122[var_0] _unknown_0107() )
            {
                level._ID20122[var_0]._ID29599 = 1;
                level._ID20122[var_0]._ID530 _meth_805A();
                level._ID20122[var_0]._ID530 _meth_82C9();
                level._ID20122[var_0] _ID42237::_ID38863();
                level._ID20122[var_0] notify( "end_trigger_thread" );
            }
        }

        wait 0.1;
    }
}

_ID7376()
{
    return level._ID794 _meth_824B( self._ID25216 );
}

_ID9118()
{
    var_0 = _func_1A2( "intelligence_item", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_0[var_1]._ID530 = _func_1A1( var_0[var_1]._ID1191, "targetname" );
        var_0[var_1]._ID14836 = 0;
    }

    return var_0;
}

_ID9119()
{
    var_0 = [];

    for ( var_1 = 1; var_1 <= level._ID44135; var_1++ )
    {
        var_2 = _func_1C1( "sp/_intel_items.csv", 0, var_1, 4 );

        if ( _func_02F( var_2 ) && var_2 != "undefined" )
        {
            var_3 = _func_129( var_2, "," );

            for ( var_4 = 0; var_4 < var_3.size; var_4++ )
                var_3[var_4] = _func_0C1( var_3[var_4] );

            var_0[var_1] = ( var_3[0], var_3[1], var_3[2] );
            continue;
        }

        var_0[var_1] = undefined;
    }

    return var_0;
}

_ID40888()
{
    if ( self._ID170 == "trigger_use" || self._ID170 == "trigger_use_touch" )
    {
        thread _ID42237::_ID44574( level._ID794, &"SCRIPT_INTELLIGENCE_PICKUP", &"SCRIPT_INTELLIGENCE_PICKUP_PC", "trigger" );
        self _meth_8187();
    }

    self endon( "end_trigger_thread" );
    self waittill( "trigger" );
    self._ID14836 = 1;
    _ID42237::_ID38863();
    _unknown_0272();
    _func_02C();
    var_0 = level._ID794 _meth_8233( _ID42237::_ID44046(), "career", "intel_collected" );

    if ( _func_02F( var_0 ) )
    {
        var_0 += 1;
        level._ID794 _meth_8251( _ID42237::_ID44046(), "career", "intel_collected", var_0 );
    }

    thread _unknown_02B7();
}

_ID49156()
{
    level._ID794 _meth_824C( self._ID25216 );
    level._ID794 _meth_85D2();
}

_ID15870( var_0 )
{
    for ( var_1 = 1; var_1 < level._ID37037.size + 1; var_1++ )
    {
        if ( !_func_02F( level._ID37037[var_1] ) )
            continue;

        if ( _func_0F5( var_0, level._ID37037[var_1] ) < 25 )
            return var_1;
    }
}

_ID20121()
{
    self._ID530 _meth_805A();
    self._ID530 _meth_82C9();
    level thread _ID42237::_ID27077( "intelligence_pickup", self._ID530._ID740 );
    var_0 = 3000;
    var_1 = 700;
    var_2 = _ID42313::_ID9251( "h1_hud_ammo_status_glow", 400, 75 );
    var_2._ID196 = ( 1, 0.95, 0.4 );
    var_2._ID1331 = 0;
    var_2._ID1339 = -65;
    var_2._ID44 = "center";
    var_2._ID45 = "middle";
    var_2._ID499 = "center";
    var_2._ID1284 = "middle";
    var_2._ID408 = 1;
    var_2._ID55 = 0.0;
    var_3 = _ID42313::_ID9251( "h1_hud_ammo_status_scanlines", 800, 75 );
    var_3._ID196 = ( 1, 0.85, 0 );
    var_3._ID1331 = 0;
    var_3._ID1339 = -65;
    var_3._ID44 = "center";
    var_3._ID45 = "middle";
    var_3._ID499 = "center";
    var_3._ID1284 = "middle";
    var_3._ID408 = 1;
    var_3._ID55 = 0.0;
    var_4 = _ID42313::_ID9220( "objective", 1.5 );
    var_4 _unknown_044B();
    var_4 _meth_8090( 19, var_0, var_1 );
    var_4 _meth_80DE( _unknown_0471() );
    var_5 = _unknown_0478();

    if ( var_5 == 22 || _ID44185::_ID48939() )
        _ID42407::_ID16864( "THE_ROAD_LESS_TRAVELED" );

    if ( var_5 == 45 || _ID44185::_ID48939() )
        _ID42407::_ID16864( "LEAVE_NO_STONE_UNTURNED" );

    level._ID794 _meth_85CC( "intel_collected", var_5 );
    wait 0.7;
    var_2._ID55 = 0.5;
    wait 0.05;
    var_3._ID55 = 0.6;
    var_2 _meth_808B( 0.035 );
    var_2._ID55 = 0.0;
    wait 0.05;
    var_3 _meth_808B( 1.0 );
    var_3._ID55 = 0.0;
    wait(var_0 + var_1 / 1000);
    var_4 _meth_808F();
    var_2 _meth_808F();
    var_3 _meth_808F();
}

_ID33102()
{
    self._ID393 = 1.2;
    self._ID445 = ( 0.96, 0.81, 0 );
    self._ID444 = 0.2;
    self._ID196 = ( 0.99, 0.97, 0.85 );
    self._ID55 = 1;
    self._ID1331 = 0;
    self._ID1339 = -65;
    self._ID44 = "center";
    self._ID45 = "middle";
    self._ID499 = "center";
    self._ID1284 = "middle";
    self._ID408 = 1;
    self._ID578 = &"SCRIPT_INTELLIGENCE_OF_FOURTYFIVE";
}

_ID46663()
{
    var_0 = 0;

    for ( var_1 = 1; var_1 <= level._ID44135; var_1++ )
    {
        if ( level._ID794 _meth_824B( var_1 ) )
            var_0++;
    }

    return var_0;
}

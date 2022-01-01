// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( !_ID42407::_ID44759() )
        return;

    precachestring( &"SCRIPT_INTELLIGENCE_OF_THIRTY" );
    precachestring( &"SCRIPT_INTELLIGENCE_PICKUP" );
    precachestring( &"SCRIPT_INTELLIGENCE_PICKUP_PC" );
    precacheshader( "h1_hud_ammo_status_glow" );
    precacheshader( "h1_hud_ammo_status_scanlines" );
    level._ID44135 = 45;
    level._ID20122 = _ID9118();
    level._ID37037 = _ID9119();
    _ID19933();
}

_ID19933()
{
    for ( var_0 = 0; var_0 < level._ID20122.size; var_0++ )
    {
        var_1 = level._ID20122[var_0];
        var_2 = var_1._ID740;
        level._ID20122[var_0]._ID25216 = _ID15870( var_2 );

        if ( level._ID20122[var_0] _ID7376() )
        {
            var_1._ID530 hide();
            var_1._ID530 notsolid();
            var_1 _ID42237::_ID38863();
            level._ID20122[var_0]._ID14836 = 1;
            continue;
        }

        level._ID20122[var_0] thread _ID40888();
    }

    _ID52495();
}

_ID52495()
{
    for (;;)
    {
        for ( var_0 = 0; var_0 < level._ID20122.size; var_0++ )
        {
            if ( !isdefined( level._ID20122[var_0]._ID29599 ) && level._ID20122[var_0] _ID7376() )
            {
                level._ID20122[var_0]._ID29599 = 1;
                level._ID20122[var_0]._ID530 hide();
                level._ID20122[var_0]._ID530 notsolid();
                level._ID20122[var_0] _ID42237::_ID38863();
                level._ID20122[var_0] notify( "end_trigger_thread" );
            }
        }

        wait 0.1;
    }
}

_ID7376()
{
    return level._ID794 getplayerintelisfound( self._ID25216 );
}

_ID9118()
{
    var_0 = getentarray( "intelligence_item", "targetname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_0[var_1]._ID530 = getent( var_0[var_1]._ID1191, "targetname" );
        var_0[var_1]._ID14836 = 0;
    }

    return var_0;
}

_ID9119()
{
    var_0 = [];

    for ( var_1 = 1; var_1 <= level._ID44135; var_1++ )
    {
        var_2 = tablelookup( "sp/_intel_items.csv", 0, var_1, 4 );

        if ( isdefined( var_2 ) && var_2 != "undefined" )
        {
            var_3 = strtok( var_2, "," );

            for ( var_4 = 0; var_4 < var_3.size; var_4++ )
                var_3[var_4] = int( var_3[var_4] );

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
        self usetriggerrequirelookat();
    }

    self endon( "end_trigger_thread" );
    self waittill( "trigger" );
    self._ID14836 = 1;
    _ID42237::_ID38863();
    _ID49156();
    updategamerprofile();
    var_0 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "intel_collected" );

    if ( isdefined( var_0 ) )
    {
        var_0 += 1;
        level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "intel_collected", var_0 );
    }

    thread _ID20121();
}

_ID49156()
{
    level._ID794 setplayerintelfound( self._ID25216 );
    level._ID794 _meth_85d2();
}

_ID15870( var_0 )
{
    for ( var_1 = 1; var_1 < level._ID37037.size + 1; var_1++ )
    {
        if ( !isdefined( level._ID37037[var_1] ) )
            continue;

        if ( distancesquared( var_0, level._ID37037[var_1] ) < 25 )
            return var_1;
    }
}

_ID20121()
{
    self._ID530 hide();
    self._ID530 notsolid();
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
    var_4 _ID33102();
    var_4 setpulsefx( 19, var_0, var_1 );
    var_4 setvalue( _ID46663() );
    var_5 = _ID46663();

    if ( var_5 == 22 || _ID44185::_ID48939() )
        _ID42407::_ID16864( "THE_ROAD_LESS_TRAVELED" );

    if ( var_5 == 45 || _ID44185::_ID48939() )
        _ID42407::_ID16864( "LEAVE_NO_STONE_UNTURNED" );

    level._ID794 _meth_85cc( "intel_collected", var_5 );
    wait 0.7;
    var_2._ID55 = 0.5;
    wait 0.05;
    var_3._ID55 = 0.6;
    var_2 fadeovertime( 0.035 );
    var_2._ID55 = 0.0;
    wait 0.05;
    var_3 fadeovertime( 1.0 );
    var_3._ID55 = 0.0;
    wait(( var_0 + var_1 ) / 1000);
    var_4 destroy();
    var_2 destroy();
    var_3 destroy();
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
        if ( level._ID794 getplayerintelisfound( var_1 ) )
            var_0++;
    }

    return var_0;
}

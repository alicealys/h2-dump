// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID28924( var_0 )
{
    level notify( "rain_change",  "hard", var_0  );
    level thread _unknown_0080( 10, var_0 );
    wait(var_0 * 0.5);
    level._ID2877["rain"] = "";
    wait(var_0 * 0.5);
}

_ID28930( var_0 )
{
    level notify( "rain_change",  "hard", var_0  );
    level thread _unknown_00AD( 8, var_0 );
    wait(var_0 * 0.5);
    level._ID2877["rain"] = "";
    wait(var_0 * 0.5);
}

_ID28929( var_0 )
{
    level notify( "rain_change",  "light", var_0  );
    level thread _unknown_00D9( 5, var_0 );
    wait(var_0 * 0.5);
    level._ID2877["rain"] = "light";
    wait(var_0 * 0.5);
}

_ID28931( var_0 )
{
    level notify( "rain_change",  "none", var_0  );
    level thread _unknown_0104( 0, var_0 );
    wait(var_0 * 0.5);
    level._ID2877["rain"] = "norain";
    wait(var_0 * 0.5);
}

_ID28925( var_0 )
{
    _ID42237::_ID14400( "_weather_lightning_enabled" );
    _ID42237::_ID14402( "_weather_lightning_enabled" );
    _ID42237::_ID14400( "player_weather_enabled" );
    _ID42237::_ID14402( "player_weather_enabled" );

    if ( var_0 == "none" )
    {
        level._ID28926 = 0;
        level._ID1426["rain_drops"] = level._ID1426["rain_" + level._ID28926];
        _unknown_0121( 0.1 );
    }
    else if ( var_0 == "light" )
    {
        level._ID28926 = 5;
        level._ID1426["rain_drops"] = level._ID1426["rain_" + level._ID28926];
        _unknown_0138( 0.1 );
    }
    else
    {
        level._ID28926 = 10;
        level._ID1426["rain_drops"] = level._ID1426["rain_" + level._ID28926];
        _unknown_0139( 0.1 );
    }
}

_ID22327( var_0, var_1 )
{
    [[ var_0 ]]();
    waitframe;

    for (;;)
        _unknown_025D( var_0, var_1 );
}

_ID28923( var_0, var_1 )
{
    level notify( "rain_level_change" );
    level endon( "rain_level_change" );

    if ( level._ID28926 > var_0 )
    {
        var_2 = level._ID28926 - var_0;
        var_1 /= var_2;

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            wait(var_1);
            level._ID28926--;
            level._ID1426["rain_drops"] = level._ID1426["rain_" + level._ID28926];
        }
    }

    if ( level._ID28926 < var_0 )
    {
        var_2 = var_0 - level._ID28926;
        var_1 /= var_2;

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            wait(var_1);
            level._ID28926++;
            level._ID1426["rain_drops"] = level._ID1426["rain_" + level._ID28926];
        }
    }
}

_ID2049( var_0 )
{
    if ( !_func_02F( level._ID22338 ) )
    {
        level._ID22338 = [];
        level._ID22339 = 0;
    }

    level._ID22338[level._ID22338.size] = var_0;
}

_ID28055()
{
    var_0 = _func_1A2( "player", "classname" )[0];
    var_1 = _ID42237::_ID35164();

    for (;;)
    {
        while ( _ID42237::_ID14385( "player_weather_enabled" ) )
        {
            var_2 = var_0._ID65;
            var_1 _meth_82B8( var_0._ID740 + ( 0, 0, 650 ), 0.1 );
            var_1 _meth_82BF( ( -90, var_2[1], 180 ), 0.1 );
            _func_157( level._ID1426["rain_drops"], var_1, "tag_origin" );
            wait 0.3;
        }

        _ID42237::_ID14413( "player_weather_enabled" );
    }
}

_ID28927()
{
    if ( level._ID28926 == 0 )
        return _func_0B8( 30 );
    else if ( level._ID28926 == 1 )
        return _func_0B8( 24 );
    else if ( level._ID28926 == 2 )
        return _func_0B8( 20 );
    else if ( level._ID28926 == 3 )
        return _func_0B8( 15 );
    else if ( level._ID28926 == 4 )
        return _func_0B8( 12 );
    else if ( level._ID28926 == 5 )
        return _func_0B8( 9 );
    else if ( level._ID28926 == 6 )
        return _func_0B8( 8 );
    else if ( level._ID28926 == 7 )
        return _func_0B8( 8 );
    else if ( level._ID28926 == 8 )
        return _func_0B8( 7 );
    else if ( level._ID28926 == 9 )
        return _func_0B8( 6 );
    else if ( level._ID28926 == 10 )
        return _func_0B8( 5 );
}

_ID28928()
{
    if ( level._ID28926 == 0 )
        return 20;
    else if ( level._ID28926 == 1 )
        return 18;
    else if ( level._ID28926 == 2 )
        return 16;
    else if ( level._ID28926 == 3 )
        return 14;
    else if ( level._ID28926 == 4 )
        return 12;
    else if ( level._ID28926 == 5 )
        return 10;
    else if ( level._ID28926 == 6 )
        return 9;
    else if ( level._ID28926 == 7 )
        return 8;
    else if ( level._ID28926 == 8 )
        return 7;
    else if ( level._ID28926 == 9 )
        return 6;
    else if ( level._ID28926 == 10 )
        return 5;
}

_ID22341( var_0, var_1 )
{
    level endon( "rain_change" );
    var_2 = _func_03D() + _unknown_0439() + _unknown_040D() * 1000;

    if ( var_2 < level._ID24784 )
        level._ID24784 = var_2;

    for (;;)
    {
        _ID42237::_ID14413( "_weather_lightning_enabled" );
        var_3 = level._ID24784 - _func_03D() * 0.001;

        if ( var_3 > 0 )
            wait(var_3);

        if ( !_ID42237::_ID14385( "_weather_lightning_enabled" ) )
            continue;

        level notify( "lightning_strike" );
        _unknown_04CE( var_0, var_1 );
        level._ID24784 = _func_03D() + _unknown_0484() + _unknown_0458() * 1000;
    }
}

_ID14694( var_0 )
{
    if ( _func_02F( level._ID22339 ) )
        _ID42234::_ID13611( level._ID22338[level._ID22339] );

    [[ var_0 ]]();
}

_ID22340( var_0, var_1, var_2 )
{
    level.flashtype = var_2;
    var_3[0] = "quick";
    var_3[1] = "double";
    var_3[2] = "triple";
    thread _unknown_0545();

    if ( !_func_02F( level.flashtype ) )
        level.flashtype = _func_0B7( var_3.size );

    var_4 = 0;

    if ( _func_02F( level._ID22339 ) )
    {
        while ( var_4 == level._ID22339 )
            var_4 = _func_0B7( level._ID22338.size );

        level._ID22339 = var_4;
    }

    switch ( var_3[level.flashtype] )
    {

    }

    endswitch( 3 )  case "triple" loc_599 case "double" loc_59A case "quick" loc_59C
    case "triple":
    case "quick":
}

_ID37702()
{
    if ( level._ID28926 == 0 )
        wait(6 + _func_0B8( 2 ));
    else if ( level._ID28926 == 1 )
        wait(5 + _func_0B8( 1.8 ));
    else if ( level._ID28926 == 2 )
        wait(4.5 + _func_0B8( 1.6 ));
    else if ( level._ID28926 == 3 )
        wait(4 + _func_0B8( 1.6 ));
    else if ( level._ID28926 == 4 )
        wait(3.5 + _func_0B8( 1.5 ));
    else if ( level._ID28926 == 5 )
        wait(3 + _func_0B8( 1.5 ));
    else if ( level._ID28926 == 6 )
        wait(2.5 + _func_0B8( 1.2 ));
    else if ( level._ID28926 == 7 )
        wait(2 + _func_0B8( 1 ));
    else if ( level._ID28926 == 8 )
        wait(1.9 + _func_0B8( 0.5 ));
    else if ( level._ID28926 == 9 )
        wait 1.5;
    else if ( level._ID28926 == 10 )
        wait 1;

    var_0 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_0._ID740 = level._ID794._ID740 + ( 0, 0, 80 );
    var_0 _meth_8053( level._ID794 );

    if ( level._ID28926 <= 8 )
        var_0 _meth_80A1( "elm_thunder_distant", "sounddone" );
    else
    {
        var_0 _meth_80A1( "elm_thunder_distant", "sounddone" );
        var_0 thread _ID42407::_ID27079( "elm_thunder_strike" );
    }

    var_0 waittill( "sounddone" );
    var_0 _meth_80B7();
}

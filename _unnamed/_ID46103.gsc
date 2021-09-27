// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    level._ID53397 = [];
    _unknown_0172( "ac130" );
    _unknown_017A( "alley" );
    _unknown_0182( "bunker" );
    _unknown_018B( "city" );
    _unknown_0193( "container" );
    _unknown_019B( "exterior" );
    _unknown_01A3( "exterior1" );
    _unknown_01AC( "exterior2" );
    _unknown_01B4( "exterior3" );
    _unknown_01BC( "exterior4" );
    _unknown_01C4( "exterior5" );
    _unknown_01CD( "forrest" );
    _unknown_01D5( "hangar" );
    _unknown_01DD( "interior" );
    _unknown_01E5( "interior_metal" );
    _unknown_01EE( "interior_stone" );
    _unknown_01F6( "interior_vehicle" );
    _unknown_01FE( "interior_wood" );
    _unknown_0206( "mountains" );
    _unknown_020F( "pipe" );
    _unknown_0217( "shanty" );
    _unknown_021F( "tunnel" );
    _unknown_0227( "underpass" );

    if ( !_func_02F( level._ID2880 ) )
        level._ID2880 = [];

    if ( !_func_02F( level._ID2854 ) )
        level._ID2854 = [];

    if ( !_func_02F( level._ID15273 ) )
        level._ID15273 = 1;

    level._ID13116 = 0;
    level._ID13117 = 1;
    level._ID13120[level._ID13116] = "";
    level._ID13120[level._ID13117] = "";
    level._ID2877["interior"] = "";
    level._ID2877["exterior"] = "";
    level._ID2877["rain"] = "";
    _ID49457::_ID53937();
}

_ID45732( var_0 )
{
    level._ID58 = var_0;

    if ( level._ID58 == "exterior" )
        var_0 += level._ID2877["exterior"];

    if ( level._ID58 == "interior" )
        var_0 += level._ID2877["interior"];

    _func_12B( level._ID2890[var_0 + level._ID2877["rain"]], 1 );
    thread _unknown_0266( var_0 + level._ID2877["rain"] );
}

_ID45423()
{
    for (;;)
    {
        self waittill( "trigger" );
        _unknown_01D3( "interior" );

        while ( level._ID794 _meth_80B0( self ) )
            wait 0.1;

        _unknown_01EA( "exterior" );
    }
}

_ID2898( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID43456 ) )
        level._ID43456[var_0] = _func_1A5();
    else if ( !_func_02F( level._ID43456[var_0] ) )
        level._ID43456[var_0] = _func_1A5();

    level._ID43456[var_0]._ID23586 = var_1;
    level._ID43456[var_0]._ID28980 = var_2 - var_1;
}

_ID2899( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID43456[var_0]._ID52096 ) )
        var_3 = 0;
    else
        var_3 = level._ID43456[var_0]._ID52096.size;

    level._ID43456[var_0]._ID52096[var_3] = var_1;
    level._ID43456[var_0]._ID48302[var_3] = var_2;
}

_ID48801( var_0 )
{
    level._ID794 _meth_8339( level._ID2880[var_0]["priority"], level._ID2880[var_0]["roomtype"], level._ID2880[var_0]["drylevel"], level._ID2880[var_0]["wetlevel"], level._ID2880[var_0]["fadetime"] );
    level waittill( "new ambient event track" );
    level._ID794 _meth_833A( level._ID2880[var_0]["priority"], 2 );
}

_ID49391( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID2854[var_0] ) )
        level._ID2854[var_0] = [];

    level._ID2854[var_0][var_1] = var_2;
}

_ID46017( var_0, var_1 )
{
    level._ID13120[var_1] = "exterior";

    if ( !_func_02F( level._ID2854 ) || !_func_02F( level._ID2854[var_0] ) )
    {
        _unknown_037C( var_1 );
        return;
    }

    level._ID13120[var_1] = var_0;
    var_2 = _func_1D9( level._ID2854[var_0] );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        var_5 = _ID49457::_ID51978( level._ID2854[var_0][var_4] );

        if ( !_func_02F( var_5 ) )
            continue;

        for ( var_6 = 0; var_6 < 3; var_6++ )
        {
            if ( _func_02F( var_5["type"][var_6] ) )
            {
                level._ID794 _meth_8130( var_4, var_1, var_6, var_5["type"][var_6], var_5["gain"][var_6], var_5["vol"][var_6], var_5["freq"][var_6], var_5["q"][var_6] );
                continue;
            }

            level._ID794 _meth_8132( var_1, var_4, var_6 );
        }
    }
}

_ID9777( var_0 )
{
    level._ID794 _meth_8132( var_0 );
}

_ID2900( var_0 )
{
    _unknown_0502( var_0 );
}

_ID35631( var_0 )
{
    level notify( "new ambient event track" );
    level endon( "new ambient event track" );

    if ( !_func_02F( level._ID794._ID53762 ) )
    {
        level._ID794._ID53762 = _func_06A( "script_origin", ( 0, 0, 0 ) );
        level._ID794._ID53762._ID49540 = 0;
    }
    else if ( level._ID794._ID53762._ID49540 )
        level._ID794._ID53762 waittill( "sounddone" );

    var_1 = level._ID794._ID53762;
    var_2 = level._ID43456[var_0]._ID23586;
    var_3 = level._ID43456[var_0]._ID28980;
    var_4 = 0;
    var_5 = 0;

    if ( _func_02F( level._ID2880[var_0] ) )
        thread _unknown_0431( var_0 );

    for (;;)
    {
        wait(var_2 + _func_0B8( var_3 ));

        while ( var_5 == var_4 )
            var_5 = _unknown_04DE( var_0 );

        var_4 = var_5;
        var_1._ID740 = level._ID794._ID740;
        var_1 _meth_8053( level._ID794 );
        var_1 _meth_80A1( level._ID43456[var_0]._ID52096[var_5], "sounddone" );
        var_1._ID49540 = 1;
        var_1 waittill( "sounddone" );
        var_1._ID49540 = 0;
    }
}

_ID43840( var_0 )
{
    var_1 = level._ID43456[var_0]._ID52096.size;
    var_2 = _func_0B7( var_1 );

    if ( var_1 > 1 )
    {
        var_3 = 0;
        var_4 = 0;

        for ( var_5 = 0; var_5 < var_1; var_5++ )
        {
            var_3++;
            var_4 += level._ID43456[var_0]._ID48302[var_5];
        }

        if ( var_3 == var_1 )
        {
            var_6 = _func_0B8( var_4 );
            var_4 = 0;

            for ( var_5 = 0; var_5 < var_1; var_5++ )
            {
                var_4 += level._ID43456[var_0]._ID48302[var_5];

                if ( var_6 < var_4 )
                {
                    var_2 = var_5;
                    break;
                }
            }
        }
    }

    return var_2;
}

_ID51979( var_0 )
{
    level._ID53397[var_0] = 1;
}

_ID43195( var_0 )
{

}

_ID44663()
{
    var_0 = _func_129( self._ID58, " " );

    if ( var_0.size == 1 )
    {
        var_1 = var_0[0];

        for (;;)
        {
            self waittill( "trigger",  var_2  );
            _unknown_0657( var_1 );
        }
    }

    var_3 = _func_1A1( self._ID1191, "targetname" );
    var_4 = var_3._ID740;
    var_5 = undefined;

    if ( _func_02F( var_3._ID1191 ) )
    {
        var_6 = _func_1A1( var_3._ID1191, "targetname" );
        var_5 = var_6._ID740;
    }
    else
        var_5 = var_4;

    var_7 = _func_0F3( var_4, var_5 );
    var_8 = var_0[0];
    var_9 = var_0[1];
    var_10 = 0.5;

    if ( _func_02F( self._ID1193 ) && self._ID1193 == "ambient_exit" )
        var_10 = 0;

    for (;;)
    {
        self waittill( "trigger",  var_2  );
        var_11 = undefined;

        while ( level._ID794 _meth_80B0( self ) )
        {
            var_11 = _ID42407::_ID15936( var_4, var_5, level._ID794._ID740, var_7 );

            if ( var_11 < 0 )
                var_11 = 0;

            if ( var_11 > 1 )
                var_11 = 1;

            _unknown_06C9( var_11, var_8, var_9 );
            wait 0.05;
        }

        if ( var_11 > var_10 )
            var_11 = 1;
        else
            var_11 = 0;

        _unknown_06E2( var_11, var_8, var_9 );
    }
}

_ID47931( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger",  var_5  );
        _unknown_06EB( var_0, var_1, var_2, var_3, var_4 );
    }
}

_ID44907( var_0, var_1, var_2, var_3, var_4 )
{
    level notify( "trigger_ambience_touched" );
    level endon( "trigger_ambience_touched" );

    for (;;)
    {
        var_5 = _ID42407::_ID15936( var_0, var_1, level._ID794._ID740, var_2 );

        if ( var_5 < 0 )
        {
            var_5 = 0;
            _unknown_0750( var_3 );
            break;
        }

        if ( var_5 >= 1 )
        {
            _unknown_075E( var_4 );
            break;
        }

        _unknown_074C( var_5, var_3, var_4 );
        wait 0.05;
    }
}

_ID49716( var_0, var_1, var_2 )
{
    if ( level._ID13120[level._ID13116] != var_2 )
        _unknown_065D( var_2, level._ID13116 );

    if ( level._ID13120[level._ID13117] != var_1 )
        _unknown_066E( var_1, level._ID13117 );

    level._ID794 _meth_8133( var_0, level._ID13116 );

    if ( var_0 == 1 || var_0 == 0 )
        level._ID49942 = 0;

    if ( !_func_02F( level._ID49942 ) )
        level._ID49942 = 0;

    if ( _func_03D() < level._ID49942 )
        return;

    level._ID49942 = _func_03D() + 200;
}

_ID46502( var_0 )
{
    if ( _func_02F( level._ID43456[var_0] ) )
        thread _unknown_06E9( var_0 );

    if ( level._ID13120[level._ID13116] != var_0 )
        _unknown_06BD( var_0, level._ID13116 );

    level._ID794 _meth_8133( 1, level._ID13116 );
}

_ID54475( var_0, var_1, var_2 )
{
    if ( _func_039( "loc_warnings" ) == "1" )
        return;

    if ( _func_039( "debug_hud" ) != "" )
        return;

    if ( !_func_02F( level._ID51278 ) )
    {
        var_3 = -40;
        var_4 = 460;
        level._ID51278 = [];
        var_5 = _func_1AF();
        var_5._ID44 = "left";
        var_5._ID45 = "bottom";
        var_5._ID1331 = var_3 + 22;
        var_5._ID1339 = var_4 + 10;
        var_5._ID196 = ( 0.4, 0.9, 0.6 );
        level._ID51278["inner"] = var_5;
        var_5 = _func_1AF();
        var_5._ID44 = "left";
        var_5._ID45 = "bottom";
        var_5._ID1331 = var_3;
        var_5._ID1339 = var_4 + 10;
        var_5._ID196 = ( 0.4, 0.9, 0.6 );
        level._ID51278["frac_inner"] = var_5;
        var_5 = _func_1AF();
        var_5._ID44 = "left";
        var_5._ID45 = "bottom";
        var_5._ID1331 = var_3 + 22;
        var_5._ID1339 = var_4;
        var_5._ID196 = ( 0.4, 0.9, 0.6 );
        level._ID51278["outer"] = var_5;
        var_5 = _func_1AF();
        var_5._ID44 = "left";
        var_5._ID45 = "bottom";
        var_5._ID1331 = var_3;
        var_5._ID1339 = var_4;
        var_5._ID196 = ( 0.4, 0.9, 0.6 );
        level._ID51278["frac_outer"] = var_5;
    }

    if ( _func_02F( var_2 ) )
    {
        level._ID51278["frac_outer"]._ID578 = _func_0C1( 100 * 1 - var_0 );
        level._ID51278["frac_outer"]._ID55 = 1;
        level._ID51278["outer"]._ID578 = var_2;
        level._ID51278["outer"]._ID55 = 1;
    }
    else
    {
        level._ID51278["outer"]._ID55 = 0;
        level._ID51278["frac_outer"]._ID55 = 0;
    }

    level._ID51278["outer"] _meth_808B( 0.5 );
    level._ID51278["frac_outer"] _meth_808B( 0.5 );
    level._ID51278["frac_inner"]._ID578 = _func_0C1( 100 * var_0 );
    level._ID51278["frac_inner"]._ID55 = 1;
    level._ID51278["frac_inner"] _meth_808B( 0.5 );
    level._ID51278["inner"] _meth_80D1( var_1 );
    level._ID51278["inner"]._ID55 = 1;
    level._ID51278["inner"] _meth_808B( 0.5 );
}

_ID46495( var_0, var_1, var_2 )
{
    if ( var_0 == 0 )
    {
        _unknown_09B0( 1, var_1, var_2 );
        return;
    }

    var_3 = 0;
    var_4 = 0.05;
    var_5 = 1 / var_0 / var_4;

    for (;;)
    {
        var_3 += var_5;

        if ( var_3 >= 1 )
        {
            _unknown_09E9( var_2 );
            break;
        }

        _unknown_09D7( var_3, var_1, var_2 );
        wait(var_4);
    }
}

_ID39899( var_0, var_1 )
{
    if ( level._ID794 _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    var_2 = level._ID2854[var_0];

    for ( var_6 = _func_1DA( var_2 ); _func_02F( var_6 ); var_6 = _func_1BF( var_2, var_6 ) )
    {
        var_3 = var_2[var_6];
        var_4 = _ID49457::_ID51978( var_0 );

        if ( !_func_02F( var_4 ) )
            continue;

        if ( _func_02F( var_4["type"][0] ) && _func_02F( var_4["type"][1] ) && _func_02F( var_4["type"][2] ) )
        {
            level._ID794 _meth_8131( var_6, var_1, var_4["type"][0], var_4["gain"][0], var_4["vol"][0], var_4["freq"][0], var_4["q"][0], var_4["type"][1], var_4["gain"][1], var_4["vol"][1], var_4["freq"][1], var_4["q"][1], var_4["type"][2], var_4["gain"][2], var_4["vol"][2], var_4["freq"][2], var_4["q"][2] );
            continue;
        }

        if ( _func_02F( var_4["type"][0] ) && _func_02F( var_4["type"][1] ) && !_func_02F( var_4["type"][2] ) )
        {
            level._ID794 _meth_8131( var_6, var_1, var_4["type"][0], var_4["gain"][0], var_4["vol"][0], var_4["freq"][0], var_4["q"][0], var_4["type"][1], var_4["gain"][1], var_4["vol"][1], var_4["freq"][1], var_4["q"][1] );
            continue;
        }

        if ( _func_02F( var_4["type"][0] ) && !_func_02F( var_4["type"][1] ) && !_func_02F( var_4["type"][2] ) )
        {
            level._ID794 _meth_8131( var_6, var_1, var_4["type"][0], var_4["gain"][0], var_4["vol"][0], var_4["freq"][0], var_4["q"][0] );
            continue;
        }

        if ( _func_02F( var_4["type"][0] ) && !_func_02F( var_4["type"][1] ) && !_func_02F( var_4["type"][2] ) )
        {
            level._ID794 _meth_8132( var_1, var_6 );
            continue;
        }

        for ( var_5 = 0; var_5 < 3; var_5++ )
        {
            if ( _func_02F( var_4["type"][var_5] ) )
            {
                level._ID794 _meth_8130( var_6, var_1, var_5, var_4["type"][var_5], var_4["gain"][var_5], var_4["vol"][var_5], var_4["freq"][var_5], var_4["q"][var_5] );
                continue;
            }

            level._ID794 _meth_8132( var_1, var_6, var_5 );
        }
    }

    var_clear_3
}

_ID44649( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();
    var_3._ID23586 = var_1;
    var_3._ID28980 = var_2 - var_1;
    var_3._ID52096 = [];
    var_3._ID49078 = [];
    var_3._ID38049 = var_0;
    level._ID43456[var_0] = var_3;
    return var_3;
}

_ID49344()
{
    waitframe;
}

_ID45174( var_0, var_1 )
{
    self._ID52096[var_0] = var_1;
}

_ID46146( var_0, var_1 )
{
    self._ID49078[var_0] = var_1;
}

_ID45966( var_0 )
{
    level._ID49300[self._ID38049] = level._ID49300[var_0];
    level._ID2854[self._ID38049] = level._ID2854[var_0];
    level._ID2880[self._ID38049] = level._ID2880[var_0];
}

_ID49513( var_0 )
{
    if ( var_0 == "exterior" && _func_02F( level._ID49586 ) )
        return level._ID49586;

    return var_0;
}

_ID9778()
{
    level._ID29941 = "";
    level._ID794 _meth_833A( "snd_enveffectsprio_level", 2 );
    _unknown_0F8C( "reverb" );
}

_ID39913( var_0 )
{
    if ( level._ID794 _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    var_1 = level._ID2880[var_0];
    level._ID794 _meth_8339( var_1["priority"], var_1["roomtype"], var_1["drylevel"], var_1["wetlevel"], var_1["fadetime"] );
}

_ID53341( var_0 )
{
    level._ID49586 = var_0;
}

_ID45842( var_0, var_1 )
{
    level._ID43456[var_0] _unknown_0E80( var_1 );
}

_ID33350( var_0, var_1 )
{
    var_0 = _unknown_0E94( var_0 );

    if ( !_func_02F( var_0 ) || !_func_02F( level._ID2854[var_0] ) )
    {
        _unknown_0C25( var_1 );
        return 0;
    }

    if ( level._ID13120[var_1] == var_0 )
        return 0;

    level._ID13120[var_1] = var_0;
    _unknown_0DE8( var_0, var_1 );
    return 1;
}

_ID51713( var_0, var_1 )
{
    var_2 = 0.05;
    var_3 = var_1 / var_2;
    var_4 = 1 / var_3;

    for ( var_5 = 0; var_5 <= 1; var_5 += var_4 )
    {
        level._ID794 _meth_8133( var_5, var_0 );
        wait(var_2);
    }

    level._ID794 _meth_8133( 1, var_0 );
}

_ID53282( var_0 )
{
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1 += var_3;
    }

    var_clear_2
    return var_1;
}

_ID43677( var_0 )
{
    if ( !_func_02F( level._ID2890 ) )
        return;

    if ( !_func_02F( level._ID2890[var_0] ) )
        return;

    if ( !_func_02F( level._ID52044 ) )
        level._ID52044 = 1;

    _func_12B( level._ID2890[var_0], 1, level._ID52044 );
}

_ID47462()
{
    level._ID51278 = [];

    if ( _unknown_1090() )
        return;

    var_0 = 20;
    var_1 = 460;
    var_2 = 22;
    var_3 = -70;
    var_4 = ( 0.4, 0.9, 0.6 );
    var_5 = [];
    var_6 = "ambient";
    var_5[var_6] = [];
    var_7 = _func_1AF();
    var_7._ID1331 = var_0 + var_3;
    var_7._ID1339 = var_1;
    var_7 _meth_80D1( "Ambient track: " );
    var_5[var_6]["label"] = var_7;
    var_7 = _func_1AF();
    var_7._ID1331 = var_0;
    var_7._ID1339 = var_1;
    var_5[var_6]["track"] = var_7;
    var_1 -= 10;
    var_6 = "event_system";
    var_5[var_6] = [];
    var_7 = _func_1AF();
    var_7._ID1331 = var_0 + var_3;
    var_7._ID1339 = var_1;
    var_7 _meth_80D1( "Event system: " );
    var_5[var_6]["label"] = var_7;
    var_7 = _func_1AF();
    var_7._ID1331 = var_0;
    var_7._ID1339 = var_1;
    var_5[var_6]["track"] = var_7;
    var_1 -= 10;
    var_6 = "eq_0";
    var_5[var_6] = [];
    var_7 = _func_1AF();
    var_7._ID1331 = var_0 + var_3;
    var_7._ID1339 = var_1;
    var_7 _meth_80D1( "EQ main: " );
    var_5[var_6]["label"] = var_7;
    var_7 = _func_1AF();
    var_7._ID1331 = var_0 + var_2;
    var_7._ID1339 = var_1;
    var_5[var_6]["track"] = var_7;
    var_7 = _func_1AF();
    var_7._ID1331 = var_0;
    var_7._ID1339 = var_1;
    var_5[var_6]["fraction"] = var_7;
    var_1 -= 10;
    var_6 = "eq_1";
    var_5[var_6] = [];
    var_7 = _func_1AF();
    var_7._ID1331 = var_0 + var_3;
    var_7._ID1339 = var_1;
    var_7 _meth_80D1( "EQ mix: " );
    var_5[var_6]["label"] = var_7;
    var_7 = _func_1AF();
    var_7._ID1331 = var_0 + var_2;
    var_7._ID1339 = var_1;
    var_5[var_6]["track"] = var_7;
    var_7 = _func_1AF();
    var_7._ID1331 = var_0;
    var_7._ID1339 = var_1;
    var_5[var_6]["fraction"] = var_7;
    var_1 -= 10;
    var_6 = "reverb";
    var_5[var_6] = [];
    var_7 = _func_1AF();
    var_7._ID1331 = var_0 + var_3;
    var_7._ID1339 = var_1;
    var_7 _meth_80D1( "Reverb: " );
    var_5[var_6]["label"] = var_7;
    var_7 = _func_1AF();
    var_7._ID1331 = var_0;
    var_7._ID1339 = var_1;
    var_5[var_6]["track"] = var_7;
    var_1 -= 10;
    var_8 = var_5;

    for ( var_12 = _func_1DA( var_8 ); _func_02F( var_12 ); var_12 = _func_1BF( var_8, var_12 ) )
    {
        var_9 = var_8[var_12];
        var_10 = var_9;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_7 = var_10[var_11];
            var_7._ID44 = "left";
            var_7._ID45 = "bottom";
            var_7._ID196 = var_4;
            var_7._ID55 = 0;
        }

        var_clear_2
        var_clear_1
        var_5[var_12]["track"]._ID12560 = 0;
    }

    var_clear_4
    level._ID51278 = var_5;
}

_ID54734( var_0, var_1 )
{
    if ( _unknown_12A5() )
        return;

    if ( !_func_02F( level._ID51278[var_0] ) )
        return;

    level._ID51278[var_0]["track"]._ID12560 = 1;
    var_2 = level._ID51278[var_0];

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID55 = 1;
    }

    var_clear_2
    var_clear_0
    level._ID51278[var_0]["track"] _meth_80D1( var_1 );
}

_ID43966( var_0, var_1 )
{
    if ( !level._ID51278[var_0]["track"]._ID12560 )
    {
        _unknown_1303( var_0 );
        return;
    }

    level._ID51278[var_0]["fraction"] _meth_80D1( _func_0C1( var_1 * 100 ) );
    var_2 = level._ID51278[var_0];

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3._ID55 = 1;
    }

    var_clear_2
    var_clear_0
}

_ID44479( var_0 )
{

}

_ID54667()
{
    if ( _func_039( "loc_warnings", 0 ) == "1" )
        return 1;

    if ( _func_03A( "debug_hud" ) )
        return 1;

    return !_func_02F( level._ID51278 );
}

_ID54260()
{

}

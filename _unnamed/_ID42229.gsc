// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34993()
{
    return _func_039( "scr_createfx_type", "0" ) == "2";
}

_ID15288()
{
    return _func_039( "scr_createfx_type", "0" ) == "1";
}

_ID38156( var_0 )
{
    if ( _func_02F( level._ID38077 ) )
    {
        if ( !_func_02F( level._ID38078 ) )
            level._ID38078 = [];

        level._ID38078[level._ID38078.size] = level._ID38077._ID40005;
    }

    level._ID38077 = var_0;
}

_ID9214( var_0, var_1 )
{
    var_2 = _func_1A5();

    if ( _unknown_004C() )
        _unknown_005E( var_2 );
    else
    {
        if ( !_func_02F( level._ID9242 ) )
            level._ID9242 = [];

        level._ID9242[level._ID9242.size] = var_2;
    }

    var_2._ID40005 = [];
    var_2._ID40005["type"] = var_0;
    var_2._ID40005["fxid"] = var_1;
    var_2._ID40005["angles"] = ( 0, 0, 0 );
    var_2._ID40005["origin"] = ( 0, 0, 0 );
    var_2._ID11742 = 1;

    if ( _func_02F( var_1 ) && _func_02F( level._ID9240 ) )
    {
        var_3 = level._ID9240[var_1];

        if ( !_func_02F( var_3 ) )
            var_3 = [];

        var_3[var_3.size] = var_2;
        level._ID9240[var_1] = var_3;
    }

    return var_2;
}

_ID16402()
{
    return 0.5;
}

_ID16484()
{
    return -15;
}

_ID16272()
{
    return 0;
}

_ID16349()
{
    return 0.75;
}

_ID16348()
{
    return 2;
}

_ID9260()
{
    var_0 = _func_1A5();

    if ( _unknown_00F6() )
        _unknown_0102( var_0 );
    else
    {
        if ( !_func_02F( level._ID9242 ) )
            level._ID9242 = [];

        level._ID9242[level._ID9242.size] = var_0;
    }

    var_0._ID40005 = [];
    var_0._ID40005["type"] = "soundfx";
    var_0._ID40005["fxid"] = "No FX";
    var_0._ID40005["soundalias"] = "nil";
    var_0._ID40005["angles"] = ( 0, 0, 0 );
    var_0._ID40005["origin"] = ( 0, 0, 0 );
    var_0._ID40005["server_culled"] = 1;

    if ( _func_039( "serverCulledSounds" ) != "1" )
        var_0._ID40005["server_culled"] = 0;

    var_0._ID11742 = 1;
    return var_0;
}

_ID9253()
{
    var_0 = _unknown_01D9();
    var_0._ID40005["type"] = "soundfx_interval";
    var_0._ID40005["delay_min"] = _unknown_01E7();
    var_0._ID40005["delay_max"] = _unknown_01F5();
    return var_0;
}

_ID9212()
{
    var_0 = _func_1A5();

    if ( _unknown_01C1() )
        _unknown_01CD( var_0 );
    else
    {
        if ( !_func_02F( level._ID9242 ) )
            level._ID9242 = [];

        level._ID9242[level._ID9242.size] = var_0;
    }

    var_0._ID40005 = [];
    var_0._ID40005["origin"] = ( 0, 0, 0 );
    var_0._ID40005["dynamic_distance"] = 1000;
    var_0._ID40005["fxid"] = "No FX";
    var_0._ID40005["type"] = "soundfx_dynamic";
    var_0._ID40005["ambiencename"] = "nil";
    return var_0;
}

_ID9264()
{
    var_0 = _func_1A5();

    if ( _unknown_0230() )
        _unknown_023D( var_0 );
    else
    {
        if ( !_func_02F( level._ID9242 ) )
            level._ID9242 = [];

        level._ID9242[level._ID9242.size] = var_0;
    }

    var_0._ID40005 = [];
    var_0._ID40005["type"] = "exploder";
    var_0._ID40005["fxid"] = "No FX";
    var_0._ID40005["soundalias"] = "nil";
    var_0._ID40005["loopsound"] = "nil";
    var_0._ID40005["angles"] = ( 0, 0, 0 );
    var_0._ID40005["origin"] = ( 0, 0, 0 );
    var_0._ID40005["exploder"] = 1;
    var_0._ID40005["flag"] = "nil";
    var_0._ID40005["exploder_type"] = "normal";
    var_0._ID11742 = 1;
    return var_0;
}

_ID9218( var_0, var_1 )
{
    var_2 = _ID42237::_ID9217( var_0 );
    var_2._ID40005["exploder"] = var_1;
    return var_2;
}

_ID9275()
{
    var_0 = _func_1A5();

    if ( _unknown_02EF() )
        _unknown_0300( var_0 );
    else
    {
        if ( !_func_02F( level._ID9242 ) )
            level._ID9242 = [];

        level._ID9242[level._ID9242.size] = var_0;
    }

    var_0._ID40005 = [];
    var_0._ID40005["origin"] = ( 0, 0, 0 );
    var_0._ID40005["reactive_radius"] = 200;
    var_0._ID40005["fxid"] = "No FX";
    var_0._ID40005["type"] = "reactive_fx";
    var_0._ID40005["soundalias"] = "nil";
    return var_0;
}

_ID32402( var_0, var_1 )
{
    if ( _func_02F( level._ID9236 ) )
        var_0 += level._ID9236;

    self._ID40005["origin"] = var_0;
    self._ID40005["angles"] = var_1;
}

_ID32323()
{
    self._ID40005["up"] = _func_11D( self._ID40005["angles"] );
    self._ID40005["forward"] = _func_11F( self._ID40005["angles"] );
}

_ID8619()
{
    if ( level._ID1400._ID31849.size < 1 )
        return;

    _func_036( "curr_exp_num", 1 );
    var_0 = _func_03A( "curr_exp_num" );
    var_1 = 0;
    var_2 = level._ID1400._ID31849;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID40005["type"] == "oneshotfx" )
        {
            var_1 = 1;
            _func_15E( var_3._ID22654, 1 );
            waittillframeend;
            var_3 _ID42237::_ID26402();
            var_3._ID40005["type"] = "exploder";
            var_3._ID40005["exploder"] = var_0;
            var_3._ID40005["exploder_type"] = "normal";
            var_3 _ID42237::_ID1792();
            continue;
        }

        _func_19E( "^3Cannot convert createfx ent to exploder type=" + var_3._ID40005["type"] + " at " + var_3._ID40005["origin"] );
    }

    var_clear_2
    var_clear_0

    if ( var_1 )
        level._ID1400._ID21199 = 1;
}

_ID9226()
{
    _func_14F( "black" );
    level._ID1400 = _func_1A5();
    level._ID1400._ID458 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    level._ID1400._ID458._ID15142 = _func_155( "vfx/explosion/frag_grenade_default" );
    level._ID1400._ID458._ID34972 = "null";
    level._ID1400._ID458._ID851 = 256;
    wait 0.05;
    _ID42237::_ID14400( "createfx_saving" );
    _ID42237::_ID14400( "createfx_started" );

    if ( !_func_02F( level._ID9221 ) )
        level._ID9221 = [];

    level._ID9234 = 0;
    _func_034( "ui_hidehud", "1" );
    level notify( "createfx_common_done" );
}

_ID19722()
{
    level._ID1400._ID31854 = 0;
    level._ID1400._ID31852 = 0;
    level._ID1400._ID31853 = 0;
    level._ID1400._ID31855 = 0;
    level._ID1400._ID31856 = 0;
    level._ID1400._ID31857 = 0;
    level._ID1400._ID31848 = [];
    level._ID1400._ID31849 = [];
    level._ID1400._ID21199 = 0;
    level._ID1400._ID855 = 1;
    level._ID1400._ID34496 = 0;
    level._ID1400._ID34497 = 0;
    level._ID1400._ID22515 = 0;
    level._ID1400._ID4637 = 0;
    level._ID1400._ID31837 = 0;
    level._ID1400._ID27676 = _func_03B( "g_speed" );
    _unknown_097A();
}

_ID19733()
{
    level._ID1400._ID22545 = [];
    level._ID1400._ID22545["escape"] = 1;
    level._ID1400._ID22545["BUTTON_LSHLDR"] = 1;
    level._ID1400._ID22545["BUTTON_RSHLDR"] = 1;
    level._ID1400._ID22545["mouse1"] = 1;
    level._ID1400._ID22545["ctrl"] = 1;
    level._ID1400._ID22545["del"] = 1;
    level._ID1400._ID22545["x"] = 1;
}

_ID19662()
{
    var_0 = [];
    var_0["loopfx"]["selected"] = ( 1, 1, 0.2 );
    var_0["loopfx"]["highlighted"] = ( 0.4, 0.95, 1 );
    var_0["loopfx"]["default"] = ( 0.3, 0.8, 1 );
    var_0["oneshotfx"]["selected"] = ( 1, 1, 0.2 );
    var_0["oneshotfx"]["highlighted"] = ( 0.3, 0.6, 1 );
    var_0["oneshotfx"]["default"] = ( 0.1, 0.2, 1 );
    var_0["exploder"]["selected"] = ( 1, 1, 0.2 );
    var_0["exploder"]["highlighted"] = ( 1, 0.2, 0.2 );
    var_0["exploder"]["default"] = ( 1, 0.1, 0.1 );
    var_0["rainfx"]["selected"] = ( 1, 1, 0.2 );
    var_0["rainfx"]["highlighted"] = ( 0.95, 0.4, 0.95 );
    var_0["rainfx"]["default"] = ( 0.78, 0, 0.73 );
    var_0["soundfx"]["selected"] = ( 1, 1, 0.2 );
    var_0["soundfx"]["highlighted"] = ( 0.2, 1, 0.2 );
    var_0["soundfx"]["default"] = ( 0.1, 1, 0.1 );
    var_0["soundfx_interval"]["selected"] = ( 1, 1, 0.2 );
    var_0["soundfx_interval"]["highlighted"] = ( 0.3, 1, 0.3 );
    var_0["soundfx_interval"]["default"] = ( 0.1, 1, 0.1 );
    var_0["reactive_fx"]["selected"] = ( 1, 1, 0.2 );
    var_0["reactive_fx"]["highlighted"] = ( 0.5, 1, 0.75 );
    var_0["reactive_fx"]["default"] = ( 0.2, 0.9, 0.2 );
    var_0["soundfx_dynamic"]["selected"] = ( 1, 1, 0.2 );
    var_0["soundfx_dynamic"]["highlighted"] = ( 0.3, 1, 0.3 );
    var_0["soundfx_dynamic"]["default"] = ( 0.1, 1, 0.1 );
    level._ID1400._ID8283 = var_0;
}

_ID45273()
{
    var_0 = _func_1A5();
    var_0._ID393 = 1.2;
    var_0._ID43736 = 17;
    var_1 = _func_1A5();
    var_1._ID47490 = -0.1;
    var_1._ID48450 = 0;
    var_1._ID49103 = 0;
    var_1._ID47861 = -0.002;
    var_1._ID445 = ( 0, 0, 0 );
    var_1._ID46934 = 0.5;
    var_1._ID51817 = -0.1;
    var_1._ID46218 = 0;
    var_1._ID54057 = ( 0, 0, 0 );
    var_1._ID48466 = 0.75;
    var_0._ID45083 = var_1;
    level._ID1400._ID54031 = var_0;
}

_ID49974( var_0 )
{
    var_1 = level._ID1400._ID54031._ID45083;
    var_0 _meth_8355( var_1._ID47490, var_1._ID48450, var_1._ID49103, var_1._ID47861, var_1._ID445, var_1._ID46934, var_1._ID51817, var_1._ID46218, var_1._ID54057, var_1._ID48466 );
}

_ID9246()
{
    waitframe;
    wait 0.05;

    if ( !_func_02F( level._ID1426 ) )
        level._ID1426 = [];

    if ( _func_02F( level._ID15089 ) )
        [[ level._ID15089 ]]();

    _unknown_0AC6();
    _unknown_1802();
    _ID42230::_ID19737();
    _unknown_17BB();
    _unknown_1836();
    _unknown_1811();
    _unknown_09F6();
    _unknown_0A22();
    _unknown_0A44();

    if ( _func_039( "createfx_use_f4" ) == "" )
    {

    }

    if ( _func_039( "createfx_no_autosave" ) == "" )
    {

    }

    level._ID9227 = 1;
    level._ID21788 = undefined;
    level._ID6493 = [];
    var_0 = ( 0, 0, 0 );
    _ID42237::_ID14402( "createfx_started" );

    if ( !level._ID24495 )
        var_0 = level._ID794._ID740;

    var_1 = undefined;
    level._ID15238 = 0;
    _ID42230::_ID32685( "none" );
    level._ID9239 = 0;
    var_2 = _func_1AF();
    var_2._ID1331 = -120;
    var_2._ID1339 = 200;
    var_2._ID408 = 0;
    var_2 _meth_80D3( "black", 250, 160 );
    var_2._ID55 = 0;
    level._ID9232 = 0;
    var_3 = level._ID9242;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _unknown_1222();
    }

    var_clear_2
    var_clear_0
    thread _unknown_10FC();
    var_6 = undefined;
    thread _unknown_1123();
    level._ID9233 = 0;
    thread _unknown_1A36();
    thread _unknown_19BE();
    level._ID45459 = 0;

    for (;;)
    {
        var_7 = 0;
        var_8 = _func_11E( level._ID794 _meth_8346() );
        var_9 = _func_11F( level._ID794 _meth_8346() );
        var_10 = _func_11D( level._ID794 _meth_8346() );
        var_11 = 0.85;
        var_12 = var_9 * 750;
        level._ID9241 = _func_06D( level._ID794 _meth_80AF(), level._ID794 _meth_80AF() + var_12, 0, undefined );
        var_13 = undefined;
        level._ID6491 = [];
        level._ID6481 = [];
        _unknown_17B9();
        var_14 = _unknown_18D8( "ctrl", "BUTTON_LSHLDR" );
        var_15 = _unknown_18EE( "mouse1", "BUTTON_A" );
        var_16 = _unknown_18F2( "mouse1", "BUTTON_A" );
        var_17 = _unknown_18FB( "shift" );
        _ID42230::_ID9148();
        var_18 = "F5";

        if ( _func_03A( "createfx_use_f4" ) )
            var_18 = "F4";

        if ( _unknown_1920( var_18 ) )
        {

        }

        if ( _func_03A( "scr_createfx_dump" ) )
            _unknown_163D();

        if ( _unknown_1936( "F2" ) )
            _unknown_0E3C();

        if ( _unknown_1943( "ins" ) )
            _unknown_0E4C();

        if ( _unknown_1951( "del" ) )
            _unknown_124F();

        if ( _unknown_1962( "escape", "x" ) )
            _unknown_143D();

        if ( _unknown_1973( "rightarrow", "space" ) && !level._ID9235 )
            _unknown_11DF();

        if ( _unknown_1987( "leftarrow" ) && !level._ID9235 )
            _unknown_120E();

        if ( _unknown_199A( "f" ) )
            _unknown_1B0C();

        if ( _unknown_19A8( "u" ) )
            _unknown_1027();

        if ( _unknown_19B5( "c" ) )
            _unknown_0B8F();

        _unknown_0E58();

        if ( !var_14 && _unknown_19CB( "g" ) )
        {
            _unknown_1354( "exploder" );
            _unknown_135C( "flag" );
        }

        if ( _unknown_19E6( "h" ) )
            _unknown_16E9();

        if ( level._ID9230 )
            _ID42230::_ID18492();

        if ( _unknown_19FC( "BUTTON_LSTICK" ) )
            _unknown_13B7();

        if ( _unknown_1A09( "BUTTON_RSTICK" ) )
            _unknown_13DD();

        if ( _unknown_1A17( "z" ) )
            _unknown_1BF0();

        if ( _unknown_1A24( "z" ) && var_17 )
            _unknown_1C0E();

        if ( var_14 )
        {
            if ( _unknown_1A39( "c" ) )
                _unknown_13F4();

            if ( _unknown_1A47( "v" ) )
                _unknown_141B();

            if ( _unknown_1A54( "g" ) )
                _unknown_173C();
        }

        if ( _func_02F( level._ID1400._ID31850 ) )
            _ID42230::_ID23473();

        for ( var_19 = 0; var_19 < level._ID9242.size; var_19++ )
        {
            var_4 = level._ID9242[var_19];
            var_20 = level._ID794 _meth_8469();
            var_21 = _func_119( var_4._ID40005["origin"] - var_20 );
            var_22 = _func_0FB( var_9, var_21 );

            if ( var_22 < var_11 )
                continue;

            var_11 = var_22;
            var_13 = var_4;
        }

        level._ID15194 = var_13;

        if ( _func_02F( var_13 ) )
        {
            if ( _func_02F( var_1 ) )
            {
                if ( var_1 != var_13 )
                {
                    if ( !_unknown_15E9( var_1 ) )
                        var_1 thread _unknown_1578();

                    if ( !_unknown_15F7( var_13 ) )
                        var_13 thread _unknown_1596();
                }
            }
            else if ( !_unknown_1608( var_13 ) )
                var_13 thread _unknown_15A7();
        }

        _unknown_1046( var_13, var_15, var_16, var_14, var_8 );
        var_7 = _unknown_1179( var_7 );
        wait 0.05;

        if ( var_7 )
            _unknown_1708();

        if ( !level._ID24495 )
            var_0 = [[ level._ID15090 ]]( var_0 );

        var_1 = var_13;

        if ( _unknown_134E( var_6 ) )
        {
            level._ID12317 = 0;
            _unknown_15F4();
            _ID42230::_ID32685( "none" );
        }

        if ( level._ID1400._ID31849.size )
        {
            var_6 = level._ID1400._ID31849[level._ID1400._ID31849.size - 1];
            continue;
        }

        var_6 = undefined;
    }
}

_ID23888()
{
    var_0 = 0;
    var_1 = _unknown_1B4A( "ctrl" );

    if ( _unknown_1B53( "." ) )
    {
        if ( var_1 )
        {
            if ( level._ID1400._ID27676 < 190 )
                level._ID1400._ID27676 = 190;
            else
                level._ID1400._ID27676 = level._ID1400._ID27676 + 10;
        }
        else
            level._ID1400._ID27676 = level._ID1400._ID27676 + 5;

        var_0 = 1;
    }
    else if ( _unknown_1B9B( "," ) )
    {
        if ( var_1 )
        {
            if ( level._ID1400._ID27676 > 190 )
                level._ID1400._ID27676 = 190;
            else
                level._ID1400._ID27676 = level._ID1400._ID27676 - 10;
        }
        else
            level._ID1400._ID27676 = level._ID1400._ID27676 - 5;

        var_0 = 1;
    }

    if ( var_0 )
    {
        level._ID1400._ID27676 = _func_0EE( level._ID1400._ID27676, 5, 500 );
        [[ level._ID15088 ]]();
    }

    if ( !level._ID9230 && var_0 || !_func_02F( level._ID1400._ID27681 ) )
        _unknown_10EC();
}

_ID32415()
{
    if ( !_func_02F( level._ID1400._ID27681 ) )
    {
        var_0 = _func_1AF();
        var_0._ID44 = "left";
        var_0._ID45 = "bottom";
        var_0._ID408 = 1;
        var_0._ID393 = level._ID1400._ID54031._ID393;
        var_0._ID55 = 1.0;
        var_0._ID1331 = 0;
        var_0._ID1339 = 450;
        _unknown_0FA3( var_0 );
        level._ID1400._ID27681 = var_0;
    }
}

_ID45345()
{
    if ( _func_02F( level._ID1400._ID27681 ) )
    {
        level._ID1400._ID27681 _meth_808F();
        level._ID1400._ID27681 = undefined;
    }
}

_ID37836()
{
    level._ID9227 = !level._ID9227;
}

_ID20102()
{
    _ID42230::_ID32685( "creation" );
    level._ID12317 = 0;
    _unknown_119E();
}

_ID46162()
{
    level._ID9230 = 0;
    _unknown_1D0A();
    _unknown_1D1F( "Pick effect type to create:" );
    _unknown_1D27( "1. One Shot FX" );
    _unknown_1D30( "2. Looping FX" );
    _unknown_1D38( "3. Looping sound" );
    _unknown_1D40( "4. Exploder" );
    _unknown_1D48( "5. One Shot Sound" );
    _unknown_1D51( "6. Reactive Sound" );
    _unknown_1D59( "7. Dynamic Ambience" );
    _unknown_1D61( "(x) Exit >" );
}

_ID46665( var_0, var_1, var_2 )
{
    if ( var_1 != "" )
    {
        if ( !_func_02F( var_2 ) )
            var_2 = 0;

        if ( _func_02F( var_0._ID40005["type"] ) && _func_125( var_0._ID40005["type"], var_1 ) )
            return var_2;
        else if ( _func_02F( var_0._ID40005["fxid"] ) && _func_125( var_0._ID40005["fxid"], var_1 ) )
            return var_2;
        else if ( _func_02F( var_0._ID40005["soundalias"] ) && _func_125( var_0._ID40005["soundalias"], var_1 ) )
            return var_2;
        else if ( _func_02F( var_0._ID40005["exploder"] ) && _func_125( var_0._ID40005["exploder"], var_1 ) )
            return var_2;

        return !var_2;
    }

    return 0;
}

_ID22896( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !level._ID9227 )
        return;

    if ( level._ID1400._ID31837 )
    {
        level._ID1400._ID31837 = 0;
        var_0 = undefined;
    }
    else if ( _unknown_1EA5() )
        var_0 = undefined;

    for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
    {
        var_6 = level._ID9242[var_5];

        if ( !var_6._ID11742 )
            continue;

        if ( _unknown_12F4( var_6, _func_039( "createfx_filter" ), 0 ) )
            continue;

        if ( _unknown_1306( var_6, _func_039( "createfx_filter_out" ), 1 ) )
            continue;

        var_7 = _func_03B( "createfx_scaleid" );

        if ( _func_02F( var_0 ) && var_6 == var_0 )
        {
            if ( !_ID42230::_ID13073() )
                _ID42230::_ID11084( var_6 );

            if ( var_1 )
            {
                var_8 = _unknown_1935( var_5 );
                level._ID9230 = 0;
                level._ID9239 = !var_8;

                if ( !var_3 )
                {
                    var_9 = level._ID1400._ID31849.size;
                    _unknown_195B();

                    if ( var_8 && var_9 == 1 )
                        _unknown_1924( var_5, var_6 );
                }

                _unknown_1922( var_5, var_6 );
            }
            else if ( var_2 )
            {
                if ( var_3 )
                {
                    if ( level._ID9239 )
                        _unknown_1942( var_5, var_6 );

                    if ( !level._ID9239 )
                        _unknown_1965( var_5, var_6 );
                }
            }

            var_10 = "highlighted";
        }
        else
            var_10 = "default";

        if ( _unknown_1995( var_5 ) )
            var_10 = "selected";

        var_6 _unknown_147E( var_10, var_7, var_4 );
    }
}

_ID44910( var_0, var_1 )
{
    var_2 = level._ID794 _meth_8469();
    var_3 = level._ID794 _meth_8346();
    var_4 = level._ID1400._ID8283[self._ID40005["type"]][var_1];
    var_5 = 0;
    var_6 = 1;
    var_7 = ( 0, 0, 0 );
    var_8 = _func_0C1( _func_0E6( 16, _func_03B( "createfx_crosshairdrawdist" ) ) );
    var_9 = _func_0C1( _func_0E6( 16, _func_03B( "createfx_accuratedrawdist" ) ) );
    var_10 = var_9 * var_9;
    var_11 = _func_0F5( var_2, self._ID40005["origin"] ) < var_10 * var_0;

    if ( var_11 )
    {
        var_12 = _func_0F3( var_2, self._ID40005["origin"] );
        var_13 = var_12 / var_8 - 16;
        var_5 = 1 - _func_0EE( var_13, 0.0, 1.0 );
        var_6 = _func_0EE( var_13, 0.333, 1.0 );
        var_14 = _func_11E( var_3 ) * -2.5 * var_0;
        var_15 = _func_11D( var_3 ) * -3.5 * var_0;
        var_7 = var_14 + var_15;
    }

    if ( var_5 > 0 )
    {
        var_16 = _ID42237::_ID41802( var_2, var_3, self._ID40005["origin"], 0.422618 );

        if ( var_16 )
        {
            var_17 = 2.0;
            var_18 = 4.0;
            var_19 = _func_11F( self._ID40005["angles"] );
            var_19 *= var_18 * var_0;
            var_20 = _func_11E( self._ID40005["angles"] ) * -1;
            var_20 *= var_18 * var_0;
            var_21 = _func_11D( self._ID40005["angles"] );
            var_21 *= var_18 * var_0;
        }
    }
}

_ID9238( var_0, var_1, var_2 )
{
    if ( _func_03A( "fx_showLightGridSampleOffset" ) != 0 )
    {
        var_3 = _func_03B( "fx_lightGridSampleOffset" );
        var_4 = _func_11F( self._ID40005["angles"] ) * var_3;
    }

    _unknown_155C( var_1, var_0 );

    if ( self._ID37566 > 0 )
    {
        var_5 = _unknown_15E8();

        if ( !_func_02F( var_5 ) )
            var_5 = "nil";

        var_6 = var_2 * var_5.size * -2.93 * var_1;
        var_7 = level._ID1400._ID8283[self._ID40005["type"]][var_0];

        if ( _func_02F( self._ID20591 ) )
            var_7 = ( 1, 0.5, 0 );

        if ( _func_02F( self._ID40005["reactive_radius"] ) )
            return;

        if ( _func_02F( self._ID40005["dynamic_distance"] ) )
            return;

        return;
    }
}

_ID15935()
{
    switch ( self._ID40005["type"] )
    {

    }

    case "oneshotfx":
    case "exploder":
    case "reactive_fx":
    case "soundfx_dynamic":
    case "soundfx_interval":
    case "soundfx":
    default:
}

_ID31838()
{
    level._ID12317 = 0;
    _ID42230::_ID32685( "select_by_name" );
    _unknown_1779();
}

_ID54132()
{
    level._ID9230 = 0;
    _ID42230::_ID11702( "Select by name" );
}

_ID17932( var_0 )
{
    if ( level._ID1400._ID31849.size > 0 && level._ID9230 == 0 )
    {
        var_0 = _unknown_1841( var_0 );

        if ( !_unknown_21CF( "selected_ents" ) )
        {
            _unknown_21C3( "selected_ents" );
            _unknown_220F( "Mode( KP 5 ):", "move" );
            _unknown_221C( "Move Rate( -/+ ):", level._ID1400._ID855 );

            if ( level._ID1400._ID34496 )
            {
                var_1 = "on";
                var_2 = ( 0, 1, 0 );
            }
            else
            {
                var_1 = "off";
                var_2 = ( 0.5, 0.5, 0.5 );
            }

            _unknown_2252( "Snap2Normal( S ):", var_1, var_2 );

            if ( level._ID1400._ID34497 )
            {
                var_3 = "on";
                var_4 = ( 0, 1, 0 );
            }
            else
            {
                var_3 = "off";
                var_4 = ( 0.5, 0.5, 0.5 );
            }

            _unknown_2288( "90deg Snap( L ):", var_3, var_4 );

            if ( level._ID1400._ID22515 )
            {
                var_5 = "on";
                var_6 = ( 0, 1, 0 );
            }
            else
            {
                var_5 = "off";
                var_6 = ( 0.5, 0.5, 0.5 );
            }

            _unknown_22BE( "Local Rotation( R ):", var_5, var_6 );
        }

        if ( level._ID1400._ID4637 && level._ID1400._ID31849.size > 0 )
        {
            _unknown_22DE( "Mode( KP 5 ):", "rotate" );
            thread [[ level._ID15091 ]]();

            if ( _unknown_2219( "p" ) )
                _unknown_1A3E();

            if ( _unknown_2226( "o" ) )
                _unknown_1A2A();

            if ( _unknown_2234( "v" ) )
                _unknown_1A1C();

            for ( var_7 = 0; var_7 < level._ID1400._ID31849.size; var_7++ )
                level._ID1400._ID31849[var_7] _unknown_1D9A();

            if ( level._ID31855 != 0 || level._ID31857 != 0 || level._ID31856 != 0 )
                var_0 = 1;
        }
        else
        {
            _unknown_234D( "Mode( KP 5 ):", "move" );
            var_8 = _unknown_1DE1();

            for ( var_7 = 0; var_7 < level._ID1400._ID31849.size; var_7++ )
            {
                var_9 = level._ID1400._ID31849[var_7];

                if ( _func_02F( var_9._ID669 ) )
                    continue;

                var_9._ID40005["origin"] = var_9._ID40005["origin"] + var_8;
            }

            if ( _func_0F3( ( 0, 0, 0 ), var_8 ) > 0 )
            {
                thread _unknown_2493();
                level._ID9233 = 0;
                var_0 = 1;
            }
        }
    }
    else
        _unknown_238B();

    return var_0;
}

_ID31847( var_0 )
{
    if ( _unknown_22F0( "kp_5", "BUTTON_X" ) )
        _unknown_1A91();

    _unknown_1A3D();

    if ( _unknown_2301( "s" ) )
        _unknown_1AA6();

    if ( _unknown_230F( "l" ) )
        _unknown_1ACA();

    if ( _unknown_231C( "r" ) )
        _unknown_1AEE();

    if ( _unknown_232A( "kp_end" ) )
    {
        _unknown_1B73();
        var_0 = 1;
    }

    if ( _unknown_233D( "tab", "BUTTON_RSHLDR" ) )
    {
        _unknown_1C81();
        var_0 = 1;
    }

    return var_0;
}

_ID23889()
{
    var_0 = _ID29728( "shift" );
    var_1 = _unknown_2350( "ctrl" );

    if ( _unknown_2366( "=", "kp_plus" ) )
    {
        if ( var_0 )
            level._ID1400._ID855 = level._ID1400._ID855 + 0.025;
        else if ( var_1 )
        {
            if ( level._ID1400._ID855 < 1 )
                level._ID1400._ID855 = 1;
            else
                level._ID1400._ID855 = level._ID1400._ID855 + 10;
        }
        else if ( level._ID1400._ID855 < 0.1 )
            level._ID1400._ID855 = 0.1;
        else
            level._ID1400._ID855 = level._ID1400._ID855 + 0.1;
    }
    else if ( _unknown_23E0( "-", "kp_minus" ) )
    {
        if ( var_0 )
            level._ID1400._ID855 = level._ID1400._ID855 - 0.025;
        else if ( var_1 )
        {
            if ( level._ID1400._ID855 > 1 )
                level._ID1400._ID855 = 1;
            else
                level._ID1400._ID855 = 0.1;
        }
        else
            level._ID1400._ID855 = level._ID1400._ID855 - 0.1;
    }

    level._ID1400._ID855 = _func_0EE( level._ID1400._ID855, 0.025, 100 );
    _unknown_251F( "Move Rate( -/+ ):", level._ID1400._ID855 );
}

_ID37831()
{
    level._ID1400._ID4637 = !level._ID1400._ID4637;
}

_ID37855()
{
    level._ID1400._ID34496 = !level._ID1400._ID34496;

    if ( level._ID1400._ID34496 )
    {
        var_0 = "on";
        var_1 = ( 0, 1, 0 );
    }
    else
    {
        var_0 = "off";
        var_1 = ( 0.5, 0.5, 0.5 );
    }

    _unknown_2570( "Snap2Normal( S ):", var_0, var_1 );
}

_ID37856()
{
    level._ID1400._ID34497 = !level._ID1400._ID34497;

    if ( level._ID1400._ID34497 )
    {
        var_0 = "on";
        var_1 = ( 0, 1, 0 );
    }
    else
    {
        var_0 = "off";
        var_1 = ( 0.5, 0.5, 0.5 );
    }

    _unknown_25B4( "90deg Snap( L ):", var_0, var_1 );
}

_ID37847()
{
    level._ID1400._ID22515 = !level._ID1400._ID22515;

    if ( level._ID1400._ID22515 )
    {
        var_0 = "on";
        var_1 = ( 0, 1, 0 );
    }
    else
    {
        var_0 = "off";
        var_1 = ( 0.5, 0.5, 0.5 );
    }

    _unknown_25F7( "Local Rotation( R ):", var_0, var_1 );
}

_ID8659()
{
    thread _unknown_26EF();
    level notify( "new_ent_selection" );

    for ( var_0 = 0; var_0 < level._ID1400._ID31849.size; var_0++ )
    {
        var_1 = level._ID1400._ID31849[var_0];
        var_1._ID40005["angles"] = level._ID1400._ID31849[level._ID1400._ID31849.size - 1]._ID40005["angles"];
        var_1 _unknown_1733();
    }

    _unknown_2179();
    level._ID9233 = 0;
}

_ID2411()
{
    thread _unknown_2740();
    level notify( "new_ent_selection" );
    var_0 = level._ID1400._ID31849[level._ID1400._ID31849.size - 1];

    for ( var_1 = 0; var_1 < level._ID1400._ID31849.size - 1; var_1++ )
    {
        var_2 = level._ID1400._ID31849[var_1];
        var_3 = _func_11A( var_0._ID40005["origin"] - var_2._ID40005["origin"] );
        var_2._ID40005["angles"] = var_3;
        var_2 _unknown_1798();
    }

    _unknown_21DE();
    level._ID9233 = 0;
}

_ID29734()
{
    level notify( "new_ent_selection" );
    thread _unknown_27AB();

    for ( var_0 = 0; var_0 < level._ID1400._ID31849.size; var_0++ )
    {
        var_1 = level._ID1400._ID31849[var_0];
        var_1._ID40005["angles"] = ( 0, 0, 0 );
        var_1 _unknown_17DD();
    }

    _unknown_2223();
    level._ID9233 = 0;
}

_ID21848( var_0 )
{
    if ( _func_02F( var_0 ) )
    {
        if ( !_ID42230::_ID13073() )
            return 1;
    }
    else
        return _ID42230::_ID13073();

    return var_0 != level._ID1400._ID31849[level._ID1400._ID31849.size - 1];
}

_ID12137()
{
    thread _unknown_2812();

    for ( var_0 = 0; var_0 < level._ID1400._ID31849.size; var_0++ )
    {
        var_1 = level._ID1400._ID31849[var_0];
        var_2 = _func_06D( var_1._ID40005["origin"], var_1._ID40005["origin"] + ( 0, 0, -2048 ), 0, undefined );
        var_1._ID40005["origin"] = var_2["position"];
    }

    level._ID9233 = 0;
}

_ID32396()
{
    level notify( "createfx_exploder_reset" );
    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID1400._ID31849.size; var_1++ )
    {
        var_2 = level._ID1400._ID31849[var_1];

        if ( _func_02F( var_2._ID40005["exploder"] ) )
            var_0[var_2._ID40005["exploder"]] = 1;
    }

    var_3 = _func_1D9( var_0 );

    for ( var_1 = 0; var_1 < var_3.size; var_1++ )
        _ID42234::_ID13611( var_3[var_1] );
}

_ID39184()
{
    level notify( "createfx_exploder_reset" );
    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID1400._ID31849.size; var_1++ )
    {
        var_2 = level._ID1400._ID31849[var_1];

        if ( _func_02F( var_2._ID40005["exploder"] ) )
            var_0[var_2._ID40005["exploder"]] = 1;
    }

    var_3 = _func_1D9( var_0 );

    for ( var_1 = 0; var_1 < var_3.size; var_1++ )
        _ID42234::_ID21260( var_3[var_1] );
}

_ID11698()
{
    var_0 = 0;

    if ( _func_03A( "createfx_drawdist" ) == 0 )
    {

    }

    for (;;)
    {
        var_1 = _func_03A( "createfx_drawdist" );
        var_1 *= var_1;

        for ( var_2 = 0; var_2 < level._ID9242.size; var_2++ )
        {
            var_3 = level._ID9242[var_2];
            var_3._ID11742 = _func_0F5( level._ID794._ID740, var_3._ID40005["origin"] ) <= var_1;
            var_0++;

            if ( var_0 > 100 )
            {
                var_0 = 0;
                wait 0.05;
            }
        }

        if ( level._ID9242.size == 0 )
            wait 0.05;
    }
}

_ID9223()
{
    _func_036( "createfx_autosave_time", "300" );

    for (;;)
    {
        wait(_func_03A( "createfx_autosave_time" ));
        _ID42237::_ID14426( "createfx_saving" );

        if ( _func_03A( "createfx_no_autosave" ) )
            continue;

        _unknown_24E3( 1 );
    }
}

_ID30197( var_0, var_1 )
{
    level endon( "new_ent_selection" );
    var_2 = 0.1;

    for ( var_3 = 0; var_3 < var_2 * 20; var_3++ )
    {
        if ( level._ID31855 != 0 )
            var_0 _meth_82C3( level._ID31855 );
        else if ( level._ID31856 != 0 )
            var_0 _meth_82C4( level._ID31856 );
        else
            var_0 _meth_82C5( level._ID31857 );

        wait 0.05;
        var_0 _unknown_236A();

        for ( var_4 = 0; var_4 < level._ID1400._ID31849.size; var_4++ )
        {
            var_5 = level._ID1400._ID31849[var_4];

            if ( _func_02F( var_5._ID669 ) )
                continue;

            var_5._ID40005["origin"] = var_1[var_4]._ID740;
            var_5._ID40005["angles"] = var_1[var_4]._ID65;
        }
    }
}

_ID10290()
{
    if ( level._ID9232 )
    {
        _unknown_216E();
        return;
    }

    _unknown_218F();
}

_ID29569()
{
    if ( !_func_02F( level._ID1400._ID31850 ) )
        return;

    level._ID21788 = undefined;
    var_0 = level._ID1400._ID25935[level._ID1400._ID31850]["name"];

    for ( var_1 = 0; var_1 < level._ID9242.size; var_1++ )
    {
        var_2 = level._ID9242[var_1];

        if ( !_unknown_23D5( var_2 ) )
            continue;

        var_2 _unknown_21CC( var_0 );
    }

    _unknown_24C3();
    _unknown_2397();
}

_ID29560( var_0 )
{
    self._ID40005[var_0] = undefined;
}

_ID10294()
{
    _unknown_2A92();
    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID9242.size; var_1++ )
    {
        var_2 = level._ID9242[var_1];

        if ( _unknown_2410( var_2 ) )
        {
            if ( _func_02F( var_2._ID22676 ) )
            {
                var_2._ID22676 _meth_80B2();
                var_2._ID22676 _meth_80B7();
            }

            if ( _func_02F( var_2._ID22654 ) )
                var_2._ID22654 _meth_80B7();

            var_2 notify( "stop_loop" );
            continue;
        }

        var_0[var_0.size] = var_2;
    }

    level._ID9242 = var_0;
    level._ID1400._ID31848 = [];
    level._ID1400._ID31849 = [];
    _unknown_299E();
    _unknown_2B03();
}

_ID24361()
{
    thread _unknown_2B00();
    var_0 = level._ID9241["position"];

    if ( level._ID1400._ID31849.size <= 0 )
        return;

    var_1 = _unknown_233C( level._ID1400._ID31849 );
    var_2 = var_1 - var_0;

    for ( var_3 = 0; var_3 < level._ID1400._ID31849.size; var_3++ )
    {
        var_4 = level._ID1400._ID31849[var_3];

        if ( _func_02F( var_4._ID669 ) )
            continue;

        var_4._ID40005["origin"] = var_4._ID40005["origin"] - var_2;

        if ( level._ID1400._ID34496 )
        {
            if ( _func_02F( level._ID9241["normal"] ) )
                var_4._ID40005["angles"] = _func_11A( level._ID9241["normal"] );
        }
    }

    level._ID9233 = 0;
}

_ID31842()
{
    _unknown_24C2( level._ID9242.size - 1, level._ID9242[level._ID9242.size - 1] );
}

_ID29728()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID9242.size; var_1++ )
    {
        if ( _unknown_250A( var_1 ) )
            var_0[var_0.size] = var_1;
    }

    _unknown_2528();
    _unknown_2B24( var_0 );
}

_ID31836( var_0 )
{
    var_1 = [];
    var_2 = level._ID1400._ID31849;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];

        if ( !_func_02F( var_3._ID40005[var_0] ) )
            continue;

        var_4 = var_3._ID40005[var_0];
        var_1[var_4] = 1;
    }

    var_clear_3
    var_clear_0
    var_6 = var_1;

    for ( var_4 = _func_1DA( var_6 ); _func_02F( var_4 ); var_4 = _func_1BF( var_6, var_4 ) )
    {
        var_7 = var_6[var_4];
        var_8 = level._ID9242;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_3 = var_8[var_9];

            if ( _ID15940( var_9 ) )
                continue;

            if ( !_func_02F( var_3._ID40005[var_0] ) )
                continue;

            if ( var_3._ID40005[var_0] != var_4 )
                continue;

            _unknown_2577( var_9, var_3 );
        }

        var_clear_1
    }

    var_clear_3
    _unknown_26A1();
}

_ID8665()
{
    if ( level._ID1400._ID31849.size <= 0 )
        return;

    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID1400._ID31849.size; var_1++ )
    {
        var_2 = level._ID1400._ID31849[var_1];
        var_3 = _func_1A5();
        var_3._ID40005 = var_2._ID40005;
        var_3 _unknown_249D();
        var_0[var_0.size] = var_3;
    }

    level._ID36631 = var_0;
}

_ID28272()
{
    self._ID37566 = 0;
    self._ID11742 = 1;
}

_ID26303()
{
    if ( !_func_02F( level._ID36631 ) )
        return;

    _unknown_262A();

    for ( var_0 = 0; var_0 < level._ID36631.size; var_0++ )
        _unknown_24E3( level._ID36631[var_0] );

    _unknown_244B();
    _unknown_2716();
    level._ID36631 = [];
    _unknown_24CD();
}

_ID1844( var_0 )
{
    level._ID9242[level._ID9242.size] = var_0;
    _unknown_2491();
}

_ID15594( var_0 )
{
    var_1 = ( 0, 0, 0 );

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_1 = ( var_1[0] + var_0[var_2]._ID40005["origin"][0], var_1[1] + var_0[var_2]._ID40005["origin"][1], var_1[2] + var_0[var_2]._ID40005["origin"][2] );

    return ( var_1[0] / var_0.size, var_1[1] / var_0.size, var_1[2] / var_0.size );
}

_ID15940( var_0 )
{
    var_1 = var_0[0]._ID40005["origin"];
    var_2 = var_0[0]._ID40005["origin"];
    var_3 = var_1[0];
    var_4 = var_1[1];
    var_5 = var_1[2];
    var_6 = var_2[0];
    var_7 = var_2[1];
    var_8 = var_2[2];

    for ( var_9 = 0; var_9 < var_0.size; var_9++ )
    {
        var_10 = var_0[var_9]._ID40005["origin"];

        if ( var_10[0] < var_1[0] )
            var_3 = var_10[0];

        if ( var_10[0] > var_2[0] )
            var_6 = var_10[0];

        if ( var_10[1] < var_1[1] )
            var_4 = var_10[1];

        if ( var_10[1] > var_2[1] )
            var_7 = var_10[1];

        if ( var_10[2] < var_1[2] )
            var_5 = var_10[2];

        if ( var_10[2] > var_2[2] )
            var_8 = var_10[2];
    }

    var_1 = ( var_3, var_4, var_5 );
    var_2 = ( var_6, var_7, var_8 );
    var_11 = _func_0F3( var_2, var_1 );
    return var_11;
}

_ID13018()
{
    self endon( "death" );

    for (;;)
    {
        _unknown_2780();
        wait 0.05;
    }
}

_ID30224()
{
    if ( level._ID31856 != 0 )
        return 1;

    if ( level._ID31855 != 0 )
        return 1;

    return level._ID31857 != 0;
}

_ID28571( var_0, var_1, var_2 )
{
    for ( var_3 = 0; var_3 < level._ID1400._ID25935.size; var_3++ )
    {
        var_4 = level._ID1400._ID25935[var_3];

        if ( _func_02F( var_4["nowrite"] ) && var_4["nowrite"] )
            continue;

        var_5 = var_4["name"];

        if ( !_func_02F( var_0._ID40005[var_5] ) )
            continue;

        if ( !_ID42230::_ID22997( var_4["mask"], var_0._ID40005["type"] ) )
            continue;

        if ( !level._ID24495 )
        {
            if ( _ID42230::_ID22997( "fx", var_0._ID40005["type"] ) && var_5 == "fxid" )
                continue;

            if ( var_0._ID40005["type"] == "exploder" && var_5 == "exploder" )
                continue;

            var_6 = var_0._ID40005["type"] + "/" + var_5;

            if ( _func_02F( level._ID1400._ID10143[var_6] ) && level._ID1400._ID10143[var_6] == var_0._ID40005[var_5] )
                continue;
        }

        if ( var_4["type"] == "string" )
        {
            var_7 = var_0._ID40005[var_5] + "";

            if ( var_7 == "nil" )
                continue;

            if ( var_5 == "platform" && var_7 == "all" )
                continue;

            _unknown_2C32( var_1 + "ent.v[ \"" + var_5 + "\" ] = \"" + var_0._ID40005[var_5] + "\";" );
            continue;
        }

        _unknown_2C51( var_1 + "ent.v[ \"" + var_5 + "\" ] = " + var_0._ID40005[var_5] + ";" );
    }
}

_ID13076()
{
    self notify( "highlight change" );
    self endon( "highlight change" );

    for (;;)
    {
        self._ID37566 = self._ID37566 * 0.85;
        self._ID37566 = self._ID37566 - 0.05;

        if ( self._ID37566 < 0 )
            break;

        wait 0.05;
    }

    self._ID37566 = 0;
}

_ID13077()
{
    self notify( "highlight change" );
    self endon( "highlight change" );

    for (;;)
    {
        self._ID37566 = self._ID37566 + 0.05;
        self._ID37566 = self._ID37566 * 1.25;

        if ( self._ID37566 > 1 )
            break;

        wait 0.05;
    }

    self._ID37566 = 1;
}

_ID7897()
{
    level._ID9232 = 0;
    level._ID1400._ID31850 = undefined;
    _unknown_28E3();
}

_ID29744()
{
    for ( var_0 = 0; var_0 < level._ID1400._ID19172; var_0++ )
        level._ID1400._ID19180[var_0][0]._ID196 = ( 1, 1, 1 );
}

_ID37837( var_0, var_1 )
{
    if ( _func_02F( level._ID1400._ID31848[var_0] ) )
        _unknown_294F( var_0, var_1 );
    else
        _unknown_293D( var_0, var_1 );
}

_ID31840( var_0, var_1 )
{
    if ( _func_02F( level._ID1400._ID31848[var_0] ) )
        return;

    _unknown_2937();
    level notify( "new_ent_selection" );
    var_1 thread _unknown_2930();
    level._ID1400._ID31848[var_0] = 1;
    level._ID1400._ID31849[level._ID1400._ID31849.size] = var_1;
    level._ID9235 = 0;
}

_ID13034( var_0 )
{
    if ( !_func_02F( level._ID15194 ) )
        return 0;

    return var_0 == level._ID15194;
}

_ID10422( var_0, var_1 )
{
    if ( !_func_02F( level._ID1400._ID31848[var_0] ) )
        return;

    _unknown_2980();
    level notify( "new_ent_selection" );
    level._ID1400._ID31848[var_0] = undefined;

    if ( !_unknown_29C0( var_1 ) )
        var_1 thread _unknown_2976();

    var_2 = [];

    for ( var_3 = 0; var_3 < level._ID1400._ID31849.size; var_3++ )
    {
        if ( level._ID1400._ID31849[var_3] != var_1 )
            var_2[var_2.size] = level._ID1400._ID31849[var_3];
    }

    level._ID1400._ID31849 = var_2;
}

_ID19525( var_0 )
{
    return _func_02F( level._ID1400._ID31848[var_0] );
}

_ID13035( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID1400._ID31849.size; var_1++ )
    {
        if ( level._ID1400._ID31849[var_1] == var_0 )
            return 1;
    }

    return 0;
}

_ID7864()
{
    for ( var_0 = 0; var_0 < level._ID1400._ID31849.size; var_0++ )
    {
        if ( !_unknown_2A3C( level._ID1400._ID31849[var_0] ) )
            level._ID1400._ID31849[var_0] thread _unknown_29F8();
    }

    level._ID1400._ID31848 = [];
    level._ID1400._ID31849 = [];
}

_ID11684()
{

}

_ID11694()
{

}

_ID9224( var_0 )
{
    thread _unknown_2AAF( var_0 );
}

_ID9225( var_0 )
{
    level notify( "new_createfx_centerprint" );
    level endon( "new_createfx_centerprint" );
    var_1 = var_0.size;
    var_2 = level._ID9224.size;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        if ( var_3 < var_1 )
            continue;
    }

    while ( level._ID9232 )
        wait 0.1;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {

    }
}

_ID15967()
{
    var_0 = level._ID794 _meth_8346()[1];
    var_1 = ( 0, var_0, 0 );
    var_2 = _func_11E( var_1 );
    var_3 = _func_11F( var_1 );
    var_4 = _func_11D( var_1 );
    var_5 = 0;
    var_6 = level._ID1400._ID855;

    if ( _unknown_2FBC( "kp_uparrow", "DPAD_UP" ) )
    {
        if ( level._ID31852 < 0 )
            level._ID31852 = 0;

        level._ID31852 = level._ID31852 + var_6;
    }
    else if ( _unknown_2FDC( "kp_downarrow", "DPAD_DOWN" ) )
    {
        if ( level._ID31852 > 0 )
            level._ID31852 = 0;

        level._ID31852 = level._ID31852 - var_6;
    }
    else
        level._ID31852 = 0;

    if ( _unknown_2FFF( "kp_rightarrow", "DPAD_RIGHT" ) )
    {
        if ( level._ID31853 < 0 )
            level._ID31853 = 0;

        level._ID31853 = level._ID31853 + var_6;
    }
    else if ( _unknown_301F( "kp_leftarrow", "DPAD_LEFT" ) )
    {
        if ( level._ID31853 > 0 )
            level._ID31853 = 0;

        level._ID31853 = level._ID31853 - var_6;
    }
    else
        level._ID31853 = 0;

    if ( _unknown_3043( "kp_pgup", "BUTTON_Y" ) )
    {
        if ( level._ID31854 < 0 )
            level._ID31854 = 0;

        level._ID31854 = level._ID31854 + var_6;
    }
    else if ( _unknown_3063( "kp_pgdn", "BUTTON_B" ) )
    {
        if ( level._ID31854 > 0 )
            level._ID31854 = 0;

        level._ID31854 = level._ID31854 - var_6;
    }
    else
        level._ID31854 = 0;

    var_7 = ( 0, 0, 0 );
    var_7 += var_3 * level._ID31852;
    var_7 += var_2 * level._ID31853;
    var_7 += var_4 * level._ID31854;
    return var_7;
}

_ID32190()
{
    if ( !level._ID1400._ID34497 )
        var_0 = level._ID1400._ID855;
    else
        var_0 = 90;

    if ( _unknown_30BB( "kp_uparrow", "DPAD_UP" ) )
    {
        if ( level._ID31855 < 0 )
            level._ID31855 = 0;

        level._ID31855 = level._ID31855 + var_0;
    }
    else if ( _unknown_30DC( "kp_downarrow", "DPAD_DOWN" ) )
    {
        if ( level._ID31855 > 0 )
            level._ID31855 = 0;

        level._ID31855 = level._ID31855 - var_0;
    }
    else
        level._ID31855 = 0;

    if ( _unknown_30FF( "kp_leftarrow", "DPAD_LEFT" ) )
    {
        if ( level._ID31857 < 0 )
            level._ID31857 = 0;

        level._ID31857 = level._ID31857 + var_0;
    }
    else if ( _unknown_311F( "kp_rightarrow", "DPAD_RIGHT" ) )
    {
        if ( level._ID31857 > 0 )
            level._ID31857 = 0;

        level._ID31857 = level._ID31857 - var_0;
    }
    else
        level._ID31857 = 0;

    if ( _unknown_3142( "kp_pgup", "BUTTON_Y" ) )
    {
        if ( level._ID31856 < 0 )
            level._ID31856 = 0;

        level._ID31856 = level._ID31856 + var_0;
    }
    else if ( _unknown_3160( "kp_pgdn", "BUTTON_B" ) )
    {
        if ( level._ID31856 > 0 )
            level._ID31856 = 0;

        level._ID31856 = level._ID31856 - var_0;
    }
    else
        level._ID31856 = 0;
}

_ID39647()
{
    var_0 = 0;
    var_1 = level._ID1400._ID31849;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2._ID40005["type"] == "reactive_fx" )
            var_0 = 1;

        var_2 _unknown_34B6();
        var_2 [[ level._ID15092 ]]();
    }

    var_clear_2
    var_clear_0

    if ( var_0 )
        _unknown_2E31();
}

_ID36497()
{
    if ( _func_02F( self._ID22654 ) )
        self._ID22654 _meth_80B7();

    _unknown_2E0F();
}

_ID43432()
{
    self endon( "death" );
    level waittill( "exploding_" + self._ID40005["stop_on_exploder"] );
    _unknown_2E19();
}

_ID36518()
{
    self notify( "stop_loop" );

    if ( _func_02F( self._ID22676 ) )
    {
        self._ID22676 _meth_80B2();
        self._ID22676 _meth_80B7();
    }
}

_ID15083()
{
    if ( !_func_02F( level._ID1427 ) )
        var_0 = _func_1D9( level._ID1426 );
    else
    {
        var_0 = _func_1D9( level._ID1426 );

        if ( var_0.size == level._ID1427.size )
            return level._ID1427;
    }

    var_0 = _ID42237::_ID2812( var_0 );
    level._ID1427 = var_0;
    return var_0;
}

_ID29837()
{
    _unknown_2E64();
    _unknown_2413();

    switch ( self._ID40005["type"] )
    {

    }

    case "loopfx":
    case "soundfx_dynamic":
    case "soundfx_interval":
    case "soundfx":
}

_ID29380()
{
    level._ID1461._ID29072 = undefined;
    var_0 = level._ID9242;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( var_1._ID40005["type"] == "reactive_fx" )
        {
            var_1 _unknown_248E();
            var_1 _ID42235::_ID1933();
        }
    }

    var_clear_2
    var_clear_0
}

_ID28655()
{
    if ( level._ID15238 )
    {
        thread _unknown_34A2();
        level._ID9233 = 0;
        return;
    }

    _unknown_2EA1();

    if ( !_unknown_2D2A() )
        return;

    level._ID15238 = 1;

    if ( level._ID1400._ID31849.size > 1 && !level._ID1400._ID22515 )
    {
        var_0 = _unknown_2CF0( level._ID1400._ID31849 );
        var_1 = _func_06A( "script_origin", var_0 );
        var_1._ID40005["angles"] = level._ID1400._ID31849[0]._ID40005["angles"];
        var_1._ID40005["origin"] = var_0;
        var_2 = [];

        for ( var_3 = 0; var_3 < level._ID1400._ID31849.size; var_3++ )
        {
            var_2[var_3] = _func_06A( "script_origin", level._ID1400._ID31849[var_3]._ID40005["origin"] );
            var_2[var_3]._ID65 = level._ID1400._ID31849[var_3]._ID40005["angles"];
            var_2[var_3] _meth_8453( var_1 );
        }

        _unknown_2C49( var_1, var_2 );
        var_1 _meth_80B7();

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
            var_2[var_3] _meth_80B7();
    }
    else if ( level._ID1400._ID31849.size > 0 )
    {
        var_4 = level._ID1400._ID31849;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
            var_2._ID65 = var_5._ID40005["angles"];

            if ( level._ID31855 != 0 )
                var_2 _meth_82C3( level._ID31855 );
            else if ( level._ID31857 != 0 )
                var_2 _meth_82C4( level._ID31857 );
            else
                var_2 _meth_82C5( level._ID31856 );

            var_5._ID40005["angles"] = var_2._ID65;
            var_2 _meth_80B7();
        }

        var_clear_3
        var_clear_0
        wait 0.05;
    }

    level._ID15238 = 0;
}

_ID35079()
{
    _func_156( level._ID1400._ID458._ID15142, level._ID9241["position"] );
    level._ID1400._ID458 _meth_80A1( level._ID1400._ID458._ID34972 );
    _func_18F( level._ID9241["position"], level._ID1400._ID458._ID851, 50, 5, undefined, "MOD_EXPLOSIVE" );
    level notify( "code_damageradius",  undefined, level._ID1400._ID458._ID851, level._ID9241["position"]  );
}

_ID34010()
{
    if ( level._ID9230 == 1 )
    {
        _ID9222();
        level._ID9230 = 0;
        level._ID9235 = 0;
        _unknown_2DFD();
    }
    else
    {
        level._ID9230 = 1;
        level._ID9235 = 1;
        level._ID18490 = 0;
        _ID42230::_ID11705();
        _unknown_354C();
        _unknown_299D();
    }

    wait 0.2;
}

_ID15495( var_0 )
{

}

_ID41825( var_0, var_1 )
{
    var_2 = "\t";

    if ( _func_03A( "scr_map_exploder_dump" ) )
    {
        if ( !_func_02F( var_0._ID669 ) )
            return;
    }
    else if ( _func_02F( var_0._ID669 ) )
        return;

    if ( var_0._ID40005["type"] == "loopfx" )
        _unknown_33BB( var_2 + "ent = createLoopEffect( \"" + var_0._ID40005["fxid"] + "\" );" );

    if ( var_0._ID40005["type"] == "oneshotfx" )
        _unknown_33E1( var_2 + "ent = createOneshotEffect( \"" + var_0._ID40005["fxid"] + "\" );" );

    if ( var_0._ID40005["type"] == "exploder" )
    {
        if ( _func_02F( var_0._ID40005["exploder"] ) && !level._ID24495 )
            _unknown_3427( var_2 + "ent = createExploderEx( \"" + var_0._ID40005["fxid"] + "\", \"" + var_0._ID40005["exploder"] + "\" );" );
        else
            _unknown_3442( var_2 + "ent = createExploder( \"" + var_0._ID40005["fxid"] + "\" );" );
    }

    if ( var_0._ID40005["type"] == "soundfx" )
        _unknown_345B( var_2 + "ent = createLoopSound();" );

    if ( var_0._ID40005["type"] == "soundfx_interval" )
        _unknown_3474( var_2 + "ent = createIntervalSound();" );

    if ( var_0._ID40005["type"] == "reactive_fx" )
        _unknown_348D( var_2 + "ent = createReactiveEnt();" );

    if ( var_0._ID40005["type"] == "soundfx_dynamic" )
        _unknown_34A5( var_2 + "ent = createDynamicAmbience();" );

    _unknown_34CA( var_2 + "ent set_origin_and_angles( " + var_0._ID40005["origin"] + ", " + var_0._ID40005["angles"] + " );" );
    _unknown_3058( var_0, var_2, var_1 );
    _unknown_34D9( "" );
}

_ID41826( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "\t";
    _unknown_34E9();
    _unknown_34F3( "//_createfx generated. Do not touch!!" );
    _unknown_34FC( "#include common_scripts\utility;" );
    _unknown_3504( "#include common_scripts\_createfx;\n" );
    _unknown_350C( "" );
    _unknown_3514( "main()" );
    _unknown_351D( "{" );

    if ( level._ID24495 )
    {
        var_6 = var_0.size;

        if ( _func_02F( var_4 ) )
            var_6 += var_4.size;

        _unknown_353E( var_5 + "// CreateFX " + var_1 + " entities placed: " + var_6 );
    }

    var_7 = var_0;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];

        if ( level._ID9234 > 16 )
        {
            level._ID9234 = 0;
            wait 0.1;
        }

        level._ID9234++;
        _unknown_33B9( var_8, var_2 );
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_4 ) )
    {
        var_10 = var_4;

        for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
        {
            var_11 = var_10[var_12];

            if ( level._ID9234 > 16 )
            {
                level._ID9234 = 0;
                wait 0.1;
            }

            level._ID9234++;
            var_8 = _func_1A5();
            var_8._ID40005 = var_11;
            _unknown_33FA( var_8, var_2 );
        }

        var_clear_2
        var_clear_0
    }

    _unknown_35BE( "}" );
    _unknown_35C6( " " );
    _unknown_35D1( var_2, var_3, var_1 );
}

_ID9222()
{
    var_0 = 0.1;
    var_1 = level._ID9242;

    for ( var_6 = _func_1DA( var_1 ); _func_02F( var_6 ); var_6 = _func_1BF( var_1, var_6 ) )
    {
        var_2 = var_1[var_6];
        var_3 = [];
        var_4 = [];

        for ( var_5 = 0; var_5 < 3; var_5++ )
        {
            var_3[var_5] = var_2._ID40005["origin"][var_5];
            var_4[var_5] = var_2._ID40005["angles"][var_5];

            if ( var_3[var_5] < var_0 && var_3[var_5] > var_0 * -1 )
                var_3[var_5] = 0;

            if ( var_4[var_5] < var_0 && var_4[var_5] > var_0 * -1 )
                var_4[var_5] = 0;
        }

        var_2._ID40005["origin"] = ( var_3[0], var_3[1], var_3[2] );
        var_2._ID40005["angles"] = ( var_4[0], var_4[1], var_4[2] );
    }

    var_clear_5
    var_clear_0
}

_ID15647( var_0 )
{
    var_1 = _unknown_3600( var_0 );
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_2[var_5] = [];
    }

    var_clear_2
    var_6 = level._ID9242;

    for ( var_10 = _func_1DA( var_6 ); _func_02F( var_10 ); var_10 = _func_1BF( var_6, var_10 ) )
    {
        var_7 = var_6[var_10];
        var_8 = 0;
        var_9 = var_1;

        for ( var_5 = _func_1DA( var_9 ); _func_02F( var_5 ); var_5 = _func_1BF( var_9, var_5 ) )
        {
            var_0 = var_9[var_5];

            if ( var_7._ID40005["type"] != var_0 )
                continue;

            var_8 = 1;
            var_2[var_5][var_2[var_5].size] = var_7;
            break;
        }

        var_clear_1
    }

    var_clear_4
    var_clear_0
    var_11 = [];

    for ( var_12 = 0; var_12 < var_1.size; var_12++ )
    {
        var_13 = var_2[var_12];

        for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
        {
            var_7 = var_13[var_14];
            var_11[var_11.size] = var_7;
        }

        var_clear_1
        var_clear_0
    }

    return var_11;
}

_ID15648( var_0 )
{
    var_1 = [];

    if ( var_0 == "fx" )
    {
        var_1[0] = "loopfx";
        var_1[1] = "oneshotfx";
        var_1[2] = "exploder";
    }
    else
    {
        var_1[0] = "soundfx";
        var_1[1] = "soundfx_interval";
        var_1[2] = "reactive_fx";
        var_1[3] = "soundfx_dynamic";
    }

    return var_1;
}

_ID20498( var_0, var_1 )
{
    var_2 = _unknown_36F6( var_1 );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_0._ID40005["type"] == var_4 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID9229()
{
    var_0 = [];
    var_0[0] = "soundfx";
    var_0[1] = "loopfx";
    var_0[2] = "oneshotfx";
    var_0[3] = "exploder";
    var_0[4] = "soundfx_interval";
    var_0[5] = "reactive_fx";
    var_0[6] = "soundfx_dynamic";
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1[var_4] = [];
    }

    var_clear_2
    var_5 = level._ID9242;

    for ( var_10 = _func_1DA( var_5 ); _func_02F( var_10 ); var_10 = _func_1BF( var_5, var_10 ) )
    {
        var_6 = var_5[var_10];
        var_7 = 0;
        var_8 = var_0;

        for ( var_4 = _func_1DA( var_8 ); _func_02F( var_4 ); var_4 = _func_1BF( var_8, var_4 ) )
        {
            var_9 = var_8[var_4];

            if ( var_6._ID40005["type"] != var_9 )
                continue;

            var_7 = 1;
            var_1[var_4][var_1[var_4].size] = var_6;
            break;
        }

        var_clear_2
    }

    var_clear_5
    var_clear_0
    var_11 = [];

    for ( var_12 = 0; var_12 < var_0.size; var_12++ )
    {
        var_13 = var_1[var_12];

        for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
        {
            var_6 = var_13[var_14];
            var_11[var_11.size] = var_6;
        }

        var_clear_1
        var_clear_0
    }

    level._ID9242 = var_11;
}

_ID7198()
{
    _ID42237::_ID14012();
}

_ID7196( var_0 )
{
    _ID42237::_ID14010( var_0 );
}

_ID7197( var_0, var_1, var_2 )
{
    var_3 = 1;

    if ( var_1 != "" || var_0 )
        var_3 = 0;

    if ( _ID42237::_ID20913() )
    {
        var_4 = _ID42237::_ID16023() + var_1 + "_" + var_2 + ".gsc";

        if ( var_0 )
            var_4 = "backup_" + var_2 + ".gsc";
    }
    else
    {
        var_4 = _ID42237::_ID16023() + var_1 + "_" + var_2 + ".gsc";

        if ( var_0 )
            var_4 = "backup.gsc";
    }

    _ID42237::_ID14011( "/share/raw/maps/createfx/" + var_4, var_3 );
}

_ID28643()
{
    _unknown_3A02( "mouse1" );
    _unknown_3A0A( "BUTTON_RSHLDR" );
    _unknown_3A13( "BUTTON_LSHLDR" );
    _unknown_3A1B( "BUTTON_RSTICK" );
    _unknown_3A23( "BUTTON_LSTICK" );
    _unknown_3A2B( "BUTTON_A" );
    _unknown_3A34( "BUTTON_B" );
    _unknown_3A3C( "BUTTON_X" );
    _unknown_3A44( "BUTTON_Y" );
    _unknown_3A4C( "DPAD_UP" );
    _unknown_3A55( "DPAD_LEFT" );
    _unknown_3A5D( "DPAD_RIGHT" );
    _unknown_3A65( "DPAD_DOWN" );
    _unknown_3A7F( "shift" );
    _unknown_3A87( "ctrl" );
    _unknown_3A8F( "escape" );
    _unknown_3A98( "F5" );
    _unknown_3AA0( "F4" );
    _unknown_3AA8( "F2" );
    _unknown_3AB0( "a" );
    _unknown_3AB9( "g" );
    _unknown_3AC1( "c" );
    _unknown_3AC9( "h" );
    _unknown_3AD1( "i" );
    _unknown_3ADA( "f" );
    _unknown_3AE2( "k" );
    _unknown_3AEA( "l" );
    _unknown_3AF2( "m" );
    _unknown_3AFB( "o" );
    _unknown_3B03( "p" );
    _unknown_3B0B( "r" );
    _unknown_3B13( "s" );
    _unknown_3B1C( "u" );
    _unknown_3B24( "v" );
    _unknown_3B2C( "x" );
    _unknown_3B34( "y" );
    _unknown_3B3D( "z" );
    _unknown_3B45( "del" );
    _unknown_3B4D( "end" );
    _unknown_3B55( "tab" );
    _unknown_3B5E( "ins" );
    _unknown_3B66( "add" );
    _unknown_3B6E( "space" );
    _unknown_3B76( "enter" );
    _unknown_3B7F( "1" );
    _unknown_3B87( "2" );
    _unknown_3B8F( "3" );
    _unknown_3B97( "4" );
    _unknown_3BA0( "5" );
    _unknown_3BA8( "6" );
    _unknown_3BB0( "7" );
    _unknown_3BB8( "8" );
    _unknown_3BC1( "9" );
    _unknown_3BC9( "0" );
    _unknown_3BD1( "-" );
    _unknown_3BD9( "=" );
    _unknown_3BE2( "," );
    _unknown_3BEA( "." );
    _unknown_3BF2( "[" );
    _unknown_3BFA( "]" );
    _unknown_3C03( "leftarrow" );
    _unknown_3C0B( "rightarrow" );
    _unknown_3C13( "uparrow" );
    _unknown_3C1B( "downarrow" );
    _unknown_3C24( "kp_leftarrow" );
    _unknown_3C2C( "kp_rightarrow" );
    _unknown_3C34( "kp_uparrow" );
    _unknown_3C3C( "kp_downarrow" );
    _unknown_3C45( "kp_home" );
    _unknown_3C4D( "kp_end" );
    _unknown_3C55( "kp_pgup" );
    _unknown_3C5D( "kp_pgdn" );
    _unknown_3C66( "kp_ins" );
    _unknown_3C6E( "kp_del" );
    _unknown_3C76( "kp_enter" );
    _unknown_3C7E( "kp_plus" );
    _unknown_3C87( "kp_minus" );
    _unknown_3C8F( "kp_star" );
    _unknown_3C97( "kp_slash" );
    _unknown_3C9F( "kp_5" );
}

_ID22540( var_0 )
{
    if ( level._ID45459 && _func_02F( level._ID6481[var_0] ) )
        return 1;

    if ( _func_02F( level._ID1400._ID22545[var_0] ) )
        return 0;

    return _unknown_3CAC( var_0 );
}

_ID21206( var_0 )
{
    return level._ID45459 || level._ID9232 && _func_02F( level._ID6481[var_0] );
}

_ID1853( var_0 )
{
    if ( _unknown_3CBC( var_0 ) )
        return;

    if ( !_func_02F( level._ID6493[var_0] ) )
    {
        if ( level._ID794 _meth_8256( var_0 ) )
        {
            level._ID6493[var_0] = 1;
            level._ID6491[var_0] = 1;
        }
    }
    else if ( !level._ID794 _meth_8256( var_0 ) )
        level._ID6493[var_0] = undefined;
}

_ID1902( var_0 )
{
    level._ID6481[var_0] = 1;
    _unknown_3D0A( var_0 );
}

_ID6492( var_0, var_1 )
{
    return _unknown_3D2F( var_0 ) || _unknown_3D36( var_1 );
}

_ID6501( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _unknown_3D23( var_0 ) )
        return 0;

    return level._ID794 _meth_8256( var_0 );
}

_ID6480( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
    {
        if ( _func_02F( level._ID6493[var_1] ) )
            return 1;
    }

    return _func_02F( level._ID6493[var_0] );
}

_ID6479( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
    {
        if ( _func_02F( level._ID6491[var_1] ) )
            return 1;
    }

    return _func_02F( level._ID6491[var_0] );
}

_ID19713()
{
    level._ID1400._ID19180 = [];
    level._ID1400._ID19172 = 30;
    level._ID7949 = _func_1AF();
    level._ID7949._ID55 = 0;

    for ( var_0 = 0; var_0 < level._ID1400._ID19172; var_0++ )
    {
        var_1 = [];
        var_2 = _func_1AF();
        var_2._ID44 = "left";
        var_2._ID22519 = 0;
        var_2._ID408 = 1;
        var_2._ID393 = level._ID1400._ID54031._ID393;
        var_2._ID983 = 20;
        var_2._ID55 = 1;
        var_2._ID1331 = 0;
        var_2._ID1339 = 30 + var_0 * level._ID1400._ID54031._ID43736;
        _unknown_3153( var_2 );
        var_1[var_1.size] = var_2;
        level._ID1400._ID19180[var_0] = var_1;
    }

    var_1 = [];

    for ( var_0 = 0; var_0 < 5; var_0++ )
    {
        var_2 = _func_1AF();
        var_2._ID44 = "center";
        var_2._ID22519 = 0;
        var_2._ID408 = 1;
        var_2._ID393 = level._ID1400._ID54031._ID393;
        var_2._ID983 = 20;
        var_2._ID55 = 1;
        var_2._ID1331 = 320;
        var_2._ID1339 = 280 + var_0 * level._ID1400._ID54031._ID43736;
        _unknown_31BB( var_2 );
        var_1[var_1.size] = var_2;
    }

    level._ID9224 = var_1;
}

_ID19665()
{
    var_0 = _func_1AF();
    var_0._ID22519 = 0;
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID408 = 1;
    var_0._ID393 = 2;
    var_0._ID983 = 20;
    var_0._ID55 = 1;
    var_0._ID1331 = 320;
    var_0._ID1339 = 233;
}

_ID7868()
{
    level._ID7949 _meth_80D2();

    for ( var_0 = 0; var_0 < level._ID1400._ID19172; var_0++ )
    {
        for ( var_1 = 0; var_1 < 1; var_1++ )
        {

        }
    }

    level._ID15274 = 0;
}

_ID32325( var_0 )
{
    for ( var_1 = 0; var_1 < 1; var_1++ )
    {

    }

    level._ID15274++;
}

_ID19822()
{
    if ( !_func_02F( level._ID1400._ID37870 ) )
        level._ID1400._ID37870 = [];

    if ( !_func_02F( level._ID1400._ID37869 ) )
        level._ID1400._ID37869 = 1;

    if ( !_func_02F( level._ID1400._ID37868 ) )
        level._ID1400._ID37868 = "";
}

_ID24748( var_0 )
{
    var_1 = level._ID1400._ID37870;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID40023 ) )
            var_2._ID40023 _meth_808F();

        var_2 _meth_808F();
        level._ID1400._ID37870[var_3] = undefined;
    }

    var_clear_2
    level._ID1400._ID37868 = var_0;
}

_ID9459( var_0 )
{
    return level._ID1400._ID37868 == var_0;
}

_ID7902()
{
    _unknown_4019( "" );
}

_ID24749( var_0 )
{
    var_1 = _func_1AF();
    var_1._ID44 = "left";
    var_1._ID45 = "bottom";
    var_1._ID22519 = 0;
    var_1._ID408 = 1;
    var_1._ID393 = level._ID1400._ID54031._ID393;
    var_1._ID55 = 1;
    var_1._ID1331 = 0;
    var_1._ID1339 = 350 + var_0 * level._ID1400._ID54031._ID43736;
    _unknown_331F( var_1 );
    return var_1;
}

_ID16028( var_0 )
{
    if ( _func_02F( level._ID1400._ID37870[var_0] ) )
        return level._ID1400._ID37870[var_0];

    return undefined;
}

_ID32478( var_0, var_1, var_2 )
{
    var_3 = _unknown_40C6( var_0 );

    if ( !_func_02F( var_3 ) )
    {
        var_3 = _unknown_40BB( level._ID1400._ID37870.size );
        level._ID1400._ID37870[var_0] = var_3;
        var_3._ID37557 = var_0;
    }

    if ( _func_02F( var_1 ) )
    {
        if ( _func_02F( var_3._ID40023 ) )
            var_4 = var_3._ID40023;
        else
        {
            var_4 = _unknown_40EA( level._ID1400._ID37870.size );
            var_4._ID1331 = var_4._ID1331 + 130;
            var_4._ID1339 = var_3._ID1339;
            var_3._ID40023 = var_4;
        }

        if ( _func_02F( var_4._ID37557 ) && var_4._ID37557 == var_1 )
            return;

        var_4._ID37557 = var_1;

        if ( !_func_02F( var_2 ) )
            var_2 = ( 1, 1, 1 );

        var_4._ID196 = var_2;
    }
}

_ID31839()
{
    var_0 = _func_039( "select_by_substring" );

    if ( var_0 == "" )
        return 0;

    _func_034( "select_by_substring", "" );
    var_1 = [];
    var_2 = level._ID9242;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_125( var_3._ID40005["fxid"], var_0 ) )
            var_1[var_1.size] = var_4;
    }

    var_clear_2

    if ( var_1.size == 0 )
        return 0;

    _unknown_4213();
    _unknown_420A( var_1 );
    var_5 = var_1;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_3 = level._ID9242[var_6];
        _unknown_3BEA( var_6, var_3 );
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID31841( var_0 )
{
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = level._ID9242[var_2];
        _unknown_3C16( var_2, var_3 );
    }

    var_clear_3
    var_clear_0
}

_ID10421()
{
    var_0 = level._ID1400._ID31849;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _unknown_3C54( var_2, var_1 );
    }

    var_clear_2
}

_ID33133()
{
    wait 0.5;

    for (;;)
    {
        level._ID9233 = level._ID9233 + 0.05;

        if ( level._ID9233 == 0.15 )
        {
            var_0 = level._ID1400._ID31849;

            for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
            {
                var_1 = var_0[var_2];

                if ( var_1._ID40005["type"] == "exploder" )
                    var_1 _ID42237::_ID1792();
            }

            var_clear_2
            var_clear_0
            _ID42230::_ID11081();
            _unknown_4374();
        }

        if ( level._ID9233 == 0.05 )
        {
            var_1 = _ID42230::_ID15798();
            _ID42230::_ID11081();
        }

        wait 0.05;
    }
}

_ID14864()
{
    if ( level._ID1400._ID31849.size < 1 )
        return;

    if ( level._ID1400._ID31849.size > 1 )
    {
        var_0 = _unknown_3BC6( level._ID1400._ID31849 );
        var_1 = _unknown_3BEE( level._ID1400._ID31849 ) + 200;
    }
    else
    {
        var_0 = level._ID1400._ID31849[0]._ID40005["origin"];
        var_1 = 200;
    }

    var_2 = _func_11F( level._ID794 _meth_8346() );
    var_3 = var_2 * -1 * var_1;
    var_4 = level._ID794 _meth_80AF();
    var_5 = var_4 - level._ID794._ID740;
    level._ID794 _meth_8343( var_0 + var_3 - var_5 );
}

_ID7833()
{
    var_0 = level._ID9242;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( var_1._ID22654 ) )
            var_1._ID22654 _meth_80B7();

        var_1 _unknown_3E7F();
    }

    var_clear_2
    var_clear_0
}

_ID29838()
{
    var_0 = level._ID9242;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( var_1._ID40005["type"] == "oneshotfx" )
            var_1 _unknown_3EC8();
    }

    var_clear_2
    var_clear_0
}

_ID29839()
{
    var_0 = level._ID1400._ID31849;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( var_1 ) && var_1._ID40005["type"] == "exploder" )
            var_1 _ID42237::_ID1792();
    }

    var_clear_2
    var_clear_0
}

_ID30737()
{
    if ( _func_02F( level._ID9242 ) && level._ID9233 > 0.15 )
        level._ID9244 = _unknown_44CF( level._ID9242 );
}

_ID30735()
{
    if ( _func_02F( level._ID9242 ) )
        level._ID9243 = _unknown_44E1( level._ID9242 );
}

_ID39462()
{
    if ( _func_02F( level._ID9244 ) )
    {
        _ID30737();
        level._ID9242 = [];
        level._ID9242 = _unknown_44F9( level._ID9244 );
        _unknown_437D();
        _unknown_3C86();
        _unknown_44B9();
        _ID39462();
    }
}

_ID29349()
{
    if ( _func_02F( level._ID9243 ) )
    {
        _unknown_44B9();
        level._ID9242 = [];
        level._ID9242 = _unknown_4520( level._ID9243 );
        _unknown_43A4();
        _unknown_3CAD();
        _unknown_44E0();
        _unknown_44F4();
    }
}

_ID8669( var_0 )
{
    var_1 = [];

    if ( var_0.size > 0 )
    {
        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        {
            var_3 = _func_1A5();

            if ( _func_02F( var_0[var_2]._ID40005 ) )
            {
                var_3._ID40005 = [];
                var_3._ID40005["type"] = var_0[var_2]._ID40005["type"];
                var_3._ID40005["fxid"] = var_0[var_2]._ID40005["fxid"];
                var_3._ID40005["soundalias"] = var_0[var_2]._ID40005["soundalias"];
                var_3._ID40005["loopsound"] = var_0[var_2]._ID40005["loopsound"];
                var_3._ID40005["angles"] = var_0[var_2]._ID40005["angles"];
                var_3._ID40005["origin"] = var_0[var_2]._ID40005["origin"];
                var_3._ID40005["exploder"] = var_0[var_2]._ID40005["exploder"];
                var_3._ID40005["flag"] = var_0[var_2]._ID40005["flag"];
                var_3._ID40005["exploder_type"] = var_0[var_2]._ID40005["exploder_type"];
                var_3._ID40005["server_culled"] = var_0[var_2]._ID40005["server_culled"];
                var_3._ID40005["delay_min"] = var_0[var_2]._ID40005["delay_min"];
                var_3._ID40005["delay_max"] = var_0[var_2]._ID40005["delay_max"];
                var_3._ID40005["delay"] = var_0[var_2]._ID40005["delay"];
                var_3._ID40005["forward"] = var_0[var_2]._ID40005["forward"];
                var_3._ID40005["up"] = var_0[var_2]._ID40005["up"];
                var_3._ID40005["repeat"] = var_0[var_2]._ID40005["repeat"];
                var_3._ID40005["reactive_radius"] = var_0[var_2]._ID40005["reactive_radius"];
                var_3._ID40005["ambiencename"] = var_0[var_2]._ID40005["ambiencename"];
                var_3._ID40005["dynamic_distance"] = var_0[var_2]._ID40005["dynamic_distance"];

                if ( !level._ID24495 )
                {
                    var_3._ID40005["tintcolor"] = var_0[var_2]._ID40005["tintcolor"];
                    var_3._ID40005["tintalpha"] = var_0[var_2]._ID40005["tintalpha"];
                    var_3._ID40005["emissive"] = var_0[var_2]._ID40005["emissive"];
                    var_3._ID40005["sizescale"] = var_0[var_2]._ID40005["sizescale"];
                    var_3._ID40005["firefx"] = var_0[var_2]._ID40005["firefx"];
                    var_3._ID40005["firefxdelay"] = var_0[var_2]._ID40005["firefxdelay"];
                    var_3._ID40005["firefxtimeout"] = var_0[var_2]._ID40005["firefxtimeout"];
                    var_3._ID40005["firefxsound"] = var_0[var_2]._ID40005["firefxsound"];
                    var_3._ID40005["damage"] = var_0[var_2]._ID40005["damage"];
                    var_3._ID40005["damage_radius"] = var_0[var_2]._ID40005["damage_radius"];
                    var_3._ID40005["earthquake"] = var_0[var_2]._ID40005["earthquake"];
                    var_3._ID40005["ender"] = var_0[var_2]._ID40005["ender"];
                    var_3._ID40005["rumble"] = var_0[var_2]._ID40005["rumble"];
                    var_3._ID40005["stoppable"] = var_0[var_2]._ID40005["stoppable"];
                }

                var_3._ID40005["kill_on_delete"] = var_0[var_2]._ID40005["kill_on_delete"];
                var_3._ID40005["ignore_fx_volume_groups"] = var_0[var_2]._ID40005["ignore_fx_volume_groups"];
                var_3._ID669 = var_0[var_2]._ID669;
                var_1[var_2] = var_3;
            }

            var_1[var_2]._ID11742 = var_0[var_2]._ID11742;
            var_1[var_2]._ID37566 = var_0[var_2]._ID37566;
        }
    }

    return var_1;
}

_ID29622( var_0 )
{
    var_1 = [];
    var_2 = level._ID9242;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID669 ) && var_3._ID669 == var_0 )
            continue;

        var_1[var_1.size] = var_3;
    }

    var_clear_2
    level._ID9242 = var_1;
}

_ID49930()
{
    if ( !_func_02F( level._ID49529 ) )
        return;

    if ( _func_02F( self._ID40005["ignore_fx_volume_groups"] ) && self._ID40005["ignore_fx_volume_groups"] )
    {
        self._ID40005["fx_volume_groups"] = undefined;
        return;
    }

    self._ID40005["fx_volume_groups"] = [];
    var_0 = level._ID49529;

    for ( var_6 = _func_1DA( var_0 ); _func_02F( var_6 ); var_6 = _func_1BF( var_0, var_6 ) )
    {
        var_1 = var_0[var_6];
        var_2 = 0;

        if ( !_func_02F( var_1._ID49512 ) )
            continue;

        var_3 = var_1._ID49512;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( _unknown_4A09( self._ID40005["origin"], var_4 ) )
            {
                var_2 = 1;
                break;
            }
        }

        var_clear_3
        var_clear_1

        if ( var_2 )
            self._ID40005["fx_volume_groups"][self._ID40005["fx_volume_groups"].size] = var_6;
    }

    var_clear_6
}

_ID54634( var_0, var_1 )
{
    var_2 = 0;

    switch ( var_1._ID1244 )
    {

    }

    return var_2;
    case "info_volume":
    default:
}

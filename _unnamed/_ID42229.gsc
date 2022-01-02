// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34993()
{
    return getdvar( "scr_createfx_type", "0" ) == "2";
}

_ID15288()
{
    return getdvar( "scr_createfx_type", "0" ) == "1";
}

_ID38156( var_0 )
{
    if ( isdefined( level._ID38077 ) )
    {
        if ( !isdefined( level._ID38078 ) )
            level._ID38078 = [];

        level._ID38078[level._ID38078.size] = level._ID38077._ID40005;
    }

    level._ID38077 = var_0;
}

_ID9214( var_0, var_1 )
{
    var_2 = spawnstruct();

    if ( _ID34993() )
        _ID38156( var_2 );
    else
    {
        if ( !isdefined( level._ID9242 ) )
            level._ID9242 = [];

        level._ID9242[level._ID9242.size] = var_2;
    }

    var_2._ID40005 = [];
    var_2._ID40005["type"] = var_0;
    var_2._ID40005["fxid"] = var_1;
    var_2._ID40005["angles"] = ( 0, 0, 0 );
    var_2._ID40005["origin"] = ( 0, 0, 0 );
    var_2._ID11742 = 1;

    if ( isdefined( var_1 ) && isdefined( level._ID9240 ) )
    {
        var_3 = level._ID9240[var_1];

        if ( !isdefined( var_3 ) )
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
    var_0 = spawnstruct();

    if ( _ID15288() )
        _ID38156( var_0 );
    else
    {
        if ( !isdefined( level._ID9242 ) )
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

    if ( getdvar( "serverCulledSounds" ) != "1" )
        var_0._ID40005["server_culled"] = 0;

    var_0._ID11742 = 1;
    return var_0;
}

_ID9253()
{
    var_0 = _ID9260();
    var_0._ID40005["type"] = "soundfx_interval";
    var_0._ID40005["delay_min"] = _ID16349();
    var_0._ID40005["delay_max"] = _ID16348();
    return var_0;
}

_ID9212()
{
    var_0 = spawnstruct();

    if ( _ID15288() )
        _ID38156( var_0 );
    else
    {
        if ( !isdefined( level._ID9242 ) )
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
    var_0 = spawnstruct();

    if ( _ID15288() )
        _ID38156( var_0 );
    else
    {
        if ( !isdefined( level._ID9242 ) )
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
    var_0 = spawnstruct();

    if ( _ID34993() )
        _ID38156( var_0 );
    else
    {
        if ( !isdefined( level._ID9242 ) )
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
    if ( isdefined( level._ID9236 ) )
        var_0 += level._ID9236;

    self._ID40005["origin"] = var_0;
    self._ID40005["angles"] = var_1;
}

_ID32323()
{
    self._ID40005["up"] = anglestoup( self._ID40005["angles"] );
    self._ID40005["forward"] = anglestoforward( self._ID40005["angles"] );
}

_ID8619()
{
    if ( level._ID1400._ID31849.size < 1 )
        return;

    setdynamicdvar( "curr_exp_num", 1 );
    var_0 = getdvarint( "curr_exp_num" );
    var_1 = 0;

    foreach ( var_3 in level._ID1400._ID31849 )
    {
        if ( var_3._ID40005["type"] == "oneshotfx" )
        {
            var_1 = 1;
            _func_15e( var_3._ID22654, 1 );
            waittillframeend;
            var_3 _ID42237::_ID26402();
            var_3._ID40005["type"] = "exploder";
            var_3._ID40005["exploder"] = var_0;
            var_3._ID40005["exploder_type"] = "normal";
            var_3 _ID42237::_ID1792();
            continue;
        }

        iprintln( "^3Cannot convert createfx ent to exploder type=" + var_3._ID40005["type"] + " at " + var_3._ID40005["origin"] );
    }

    if ( var_1 )
        level._ID1400._ID21199 = 1;
}

_ID9226()
{
    precacheshader( "black" );
    level._ID1400 = spawnstruct();
    level._ID1400.grenade = spawn( "script_origin", ( 0, 0, 0 ) );
    level._ID1400.grenade._ID15142 = loadfx( "vfx/explosion/frag_grenade_default" );
    level._ID1400.grenade._ID34972 = "null";
    level._ID1400.grenade.radius = 256;
    wait 0.05;
    _ID42237::_ID14400( "createfx_saving" );
    _ID42237::_ID14400( "createfx_started" );

    if ( !isdefined( level._ID9221 ) )
        level._ID9221 = [];

    level._ID9234 = 0;
    setdvar( "ui_hidehud", "1" );
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
    level._ID1400._ID27676 = getdvarfloat( "g_speed" );
    _ID32415();
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
    var_0 = spawnstruct();
    var_0.fontscale = 1.2;
    var_0._ID43736 = 17;
    var_1 = spawnstruct();
    var_1._ID47490 = -0.1;
    var_1._ID48450 = 0;
    var_1._ID49103 = 0;
    var_1._ID47861 = -0.002;
    var_1.glowcolor = ( 0, 0, 0 );
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
    var_0 _meth_8355( var_1._ID47490, var_1._ID48450, var_1._ID49103, var_1._ID47861, var_1.glowcolor, var_1._ID46934, var_1._ID51817, var_1._ID46218, var_1._ID54057, var_1._ID48466 );
}

_ID9246()
{
    waitframe;
    wait 0.05;

    if ( !isdefined( level._ID1426 ) )
        level._ID1426 = [];

    if ( isdefined( level._ID15089 ) )
        [[ level._ID15089 ]]();

    _ID45273();
    _ID19665();
    _ID42230::_ID19737();
    _ID19713();
    _ID19822();
    _ID19665();
    _ID19722();
    _ID19733();
    _ID19662();

    if ( getdvar( "createfx_use_f4" ) == "" )
    {

    }

    if ( getdvar( "createfx_no_autosave" ) == "" )
    {

    }

    level._ID9227 = 1;
    level._ID21788 = undefined;
    level._ID6493 = [];
    var_0 = ( 0, 0, 0 );
    _ID42237::_ID14402( "createfx_started" );

    if ( !level._ID24495 )
        var_0 = level.player.origin;

    var_1 = undefined;
    level._ID15238 = 0;
    _ID42230::_ID32685( "none" );
    level._ID9239 = 0;
    var_2 = newhudelem();
    var_2.x = -120;
    var_2.y = 200;
    var_2.foreground = 0;
    var_2 setshader( "black", 250, 160 );
    var_2.alpha = 0;
    level._ID9232 = 0;

    foreach ( var_4 in level._ID9242 )
        var_4 _ID28272();

    thread _ID11698();
    var_6 = undefined;
    thread _ID9223();
    level._ID9233 = 0;
    thread _ID30737();
    thread _ID33133();
    level._ID45459 = 0;

    for (;;)
    {
        var_7 = 0;
        var_8 = anglestoright( level.player getplayerangles() );
        var_9 = anglestoforward( level.player getplayerangles() );
        var_10 = anglestoup( level.player getplayerangles() );
        var_11 = 0.85;
        var_12 = var_9 * 750;
        level._ID9241 = bullettrace( level.player geteye(), level.player geteye() + var_12, 0, undefined );
        var_13 = undefined;
        level._ID6491 = [];
        level._ID6481 = [];
        _ID28643();
        var_14 = _ID6480( "ctrl", "BUTTON_LSHLDR" );
        var_15 = _ID6479( "mouse1", "BUTTON_A" );
        var_16 = _ID6480( "mouse1", "BUTTON_A" );
        var_17 = _ID6480( "shift" );
        _ID42230::_ID9148();
        var_18 = "F5";

        if ( getdvarint( "createfx_use_f4" ) )
            var_18 = "F4";

        if ( _ID6479( var_18 ) )
        {

        }

        if ( getdvarint( "scr_createfx_dump" ) )
            _ID15495();

        if ( _ID6479( "F2" ) )
            _ID37836();

        if ( _ID6479( "ins" ) )
            _ID20102();

        if ( _ID6479( "del" ) )
            _ID10290();

        if ( _ID6479( "escape", "x" ) )
            _ID7897();

        if ( _ID6479( "rightarrow", "space" ) && !level._ID9235 )
            _ID32396();

        if ( _ID6479( "leftarrow" ) && !level._ID9235 )
            _ID39184();

        if ( _ID6479( "f" ) )
            _ID14864();

        if ( _ID6479( "u" ) )
            _ID31838();

        if ( _ID6479( "c" ) )
            _ID8619();

        _ID23888();

        if ( !var_14 && _ID6479( "g" ) )
        {
            _ID31836( "exploder" );
            _ID31836( "flag" );
        }

        if ( _ID6479( "h" ) )
            _ID34010();

        if ( level._ID9230 )
            _ID42230::_ID18492();

        if ( _ID6479( "BUTTON_LSTICK" ) )
            _ID8665();

        if ( _ID6479( "BUTTON_RSTICK" ) )
            _ID26303();

        if ( _ID6479( "z" ) )
            _ID39462();

        if ( _ID6479( "z" ) && var_17 )
            _ID29349();

        if ( var_14 )
        {
            if ( _ID6479( "c" ) )
                _ID8665();

            if ( _ID6479( "v" ) )
                _ID26303();

            if ( _ID6479( "g" ) )
                _ID35079();
        }

        if ( isdefined( level._ID1400._ID31850 ) )
            _ID42230::_ID23473();

        for ( var_19 = 0; var_19 < level._ID9242.size; var_19++ )
        {
            var_4 = level._ID9242[var_19];
            var_20 = level.player _meth_8469();
            var_21 = vectornormalize( var_4._ID40005["origin"] - var_20 );
            var_22 = vectordot( var_9, var_21 );

            if ( var_22 < var_11 )
                continue;

            var_11 = var_22;
            var_13 = var_4;
        }

        level._ID15194 = var_13;

        if ( isdefined( var_13 ) )
        {
            if ( isdefined( var_1 ) )
            {
                if ( var_1 != var_13 )
                {
                    if ( !_ID13035( var_1 ) )
                        var_1 thread _ID13076();

                    if ( !_ID13035( var_13 ) )
                        var_13 thread _ID13077();
                }
            }
            else if ( !_ID13035( var_13 ) )
                var_13 thread _ID13077();
        }

        _ID22896( var_13, var_15, var_16, var_14, var_8 );
        var_7 = _ID17932( var_7 );
        wait 0.05;

        if ( var_7 )
            _ID39647();

        if ( !level._ID24495 )
            var_0 = [[ level._ID15090 ]]( var_0 );

        var_1 = var_13;

        if ( _ID21848( var_6 ) )
        {
            level._ID12317 = 0;
            _ID7897();
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
    var_1 = _ID6480( "ctrl" );

    if ( _ID6480( "." ) )
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
    else if ( _ID6480( "," ) )
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
        level._ID1400._ID27676 = clamp( level._ID1400._ID27676, 5, 500 );
        [[ level._ID15088 ]]();
    }

    if ( !level._ID9230 && ( var_0 || !isdefined( level._ID1400._ID27681 ) ) )
        _ID32415();
}

_ID32415()
{
    if ( !isdefined( level._ID1400._ID27681 ) )
    {
        var_0 = newhudelem();
        var_0.alignx = "left";
        var_0.aligny = "bottom";
        var_0.foreground = 1;
        var_0.fontscale = level._ID1400._ID54031.fontscale;
        var_0.alpha = 1.0;
        var_0.x = 0;
        var_0.y = 450;
        _ID49974( var_0 );
        level._ID1400._ID27681 = var_0;
    }
}

_ID45345()
{
    if ( isdefined( level._ID1400._ID27681 ) )
    {
        level._ID1400._ID27681 destroy();
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
    _ID46162();
}

_ID46162()
{
    level._ID9230 = 0;
    _ID7868();
    _ID32325( "Pick effect type to create:" );
    _ID32325( "1. One Shot FX" );
    _ID32325( "2. Looping FX" );
    _ID32325( "3. Looping sound" );
    _ID32325( "4. Exploder" );
    _ID32325( "5. One Shot Sound" );
    _ID32325( "6. Reactive Sound" );
    _ID32325( "7. Dynamic Ambience" );
    _ID32325( "(x) Exit >" );
}

_ID46665( var_0, var_1, var_2 )
{
    if ( var_1 != "" )
    {
        if ( !isdefined( var_2 ) )
            var_2 = 0;

        if ( isdefined( var_0._ID40005["type"] ) && issubstr( var_0._ID40005["type"], var_1 ) )
            return var_2;
        else if ( isdefined( var_0._ID40005["fxid"] ) && issubstr( var_0._ID40005["fxid"], var_1 ) )
            return var_2;
        else if ( isdefined( var_0._ID40005["soundalias"] ) && issubstr( var_0._ID40005["soundalias"], var_1 ) )
            return var_2;
        else if ( isdefined( var_0._ID40005["exploder"] ) && issubstr( var_0._ID40005["exploder"], var_1 ) )
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
    else if ( _ID31839() )
        var_0 = undefined;

    for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
    {
        var_6 = level._ID9242[var_5];

        if ( !var_6._ID11742 )
            continue;

        if ( _ID46665( var_6, getdvar( "createfx_filter" ), 0 ) )
            continue;

        if ( _ID46665( var_6, getdvar( "createfx_filter_out" ), 1 ) )
            continue;

        var_7 = getdvarfloat( "createfx_scaleid" );

        if ( isdefined( var_0 ) && var_6 == var_0 )
        {
            if ( !_ID42230::_ID13073() )
                _ID42230::_ID11084( var_6 );

            if ( var_1 )
            {
                var_8 = _ID19525( var_5 );
                level._ID9230 = 0;
                level._ID9239 = !var_8;

                if ( !var_3 )
                {
                    var_9 = level._ID1400._ID31849.size;
                    _ID7864();

                    if ( var_8 && var_9 == 1 )
                        _ID31840( var_5, var_6 );
                }

                _ID37837( var_5, var_6 );
            }
            else if ( var_2 )
            {
                if ( var_3 )
                {
                    if ( level._ID9239 )
                        _ID31840( var_5, var_6 );

                    if ( !level._ID9239 )
                        _ID10422( var_5, var_6 );
                }
            }

            var_10 = "highlighted";
        }
        else
            var_10 = "default";

        if ( _ID19525( var_5 ) )
            var_10 = "selected";

        var_6 _ID9238( var_10, var_7, var_4 );
    }
}

_ID44910( var_0, var_1 )
{
    var_2 = level.player _meth_8469();
    var_3 = level.player getplayerangles();
    var_4 = level._ID1400._ID8283[self._ID40005["type"]][var_1];
    var_5 = 0;
    var_6 = 1;
    var_7 = ( 0, 0, 0 );
    var_8 = int( max( 16, getdvarfloat( "createfx_crosshairdrawdist" ) ) );
    var_9 = int( max( 16, getdvarfloat( "createfx_accuratedrawdist" ) ) );
    var_10 = var_9 * var_9;
    var_11 = distancesquared( var_2, self._ID40005["origin"] ) < var_10 * var_0;

    if ( var_11 )
    {
        var_12 = distance( var_2, self._ID40005["origin"] );
        var_13 = var_12 / ( var_8 - 16 );
        var_5 = 1 - clamp( var_13, 0.0, 1.0 );
        var_6 = clamp( var_13, 0.333, 1.0 );
        var_14 = anglestoright( var_3 ) * -2.5 * var_0;
        var_15 = anglestoup( var_3 ) * -3.5 * var_0;
        var_7 = var_14 + var_15;
    }

    if ( var_5 > 0 )
    {
        var_16 = _ID42237::_ID41802( var_2, var_3, self._ID40005["origin"], 0.422618 );

        if ( var_16 )
        {
            var_17 = 2.0;
            var_18 = 4.0;
            var_19 = anglestoforward( self._ID40005["angles"] );
            var_19 *= ( var_18 * var_0 );
            var_20 = anglestoright( self._ID40005["angles"] ) * -1;
            var_20 *= ( var_18 * var_0 );
            var_21 = anglestoup( self._ID40005["angles"] );
            var_21 *= ( var_18 * var_0 );
        }
    }
}

_ID9238( var_0, var_1, var_2 )
{
    if ( getdvarint( "fx_showLightGridSampleOffset" ) != 0 )
    {
        var_3 = getdvarfloat( "fx_lightGridSampleOffset" );
        var_4 = anglestoforward( self._ID40005["angles"] ) * var_3;
    }

    _ID44910( var_1, var_0 );

    if ( self._ID37566 > 0 )
    {
        var_5 = _ID15935();

        if ( !isdefined( var_5 ) )
            var_5 = "nil";

        var_6 = var_2 * ( var_5.size * -2.93 ) * var_1;
        var_7 = level._ID1400._ID8283[self._ID40005["type"]][var_0];

        if ( isdefined( self._ID20591 ) )
            var_7 = ( 1, 0.5, 0 );

        if ( isdefined( self._ID40005["reactive_radius"] ) )
            return;

        if ( isdefined( self._ID40005["dynamic_distance"] ) )
            return;

        return;
    }
}

_ID15935()
{
    switch ( self._ID40005["type"] )
    {
        case "reactive_fx":
            return "reactive: " + self._ID40005["soundalias"];
        case "soundfx_interval":
            return self._ID40005["soundalias"];
        case "soundfx_dynamic":
            return "dynamic: " + self._ID40005["ambiencename"];
        case "soundfx":
            return self._ID40005["soundalias"];
        case "exploder":
            if ( isdefined( self._ID40005["soundalias"] ) && self._ID40005["soundalias"] != "nil" )
            {
                if ( self._ID40005["fxid"] == "No FX" )
                    return "@)) " + self._ID40005["soundalias"];
                else
                    return self._ID40005["fxid"] + " @))";
            }
            else
                return self._ID40005["fxid"];
        case "oneshotfx":
            if ( isdefined( self._ID40005["soundalias"] ) && self._ID40005["soundalias"] != "nil" )
                return self._ID40005["fxid"] + " @))";
            else
                return self._ID40005["fxid"];
        default:
            return self._ID40005["fxid"];
    }
}

_ID31838()
{
    level._ID12317 = 0;
    _ID42230::_ID32685( "select_by_name" );
    _ID54132();
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
        var_0 = _ID31847( var_0 );

        if ( !_ID9459( "selected_ents" ) )
        {
            _ID24748( "selected_ents" );
            _ID32478( "Mode( KP 5 ):", "move" );
            _ID32478( "Move Rate( -/+ ):", level._ID1400._ID855 );

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

            _ID32478( "Snap2Normal( S ):", var_1, var_2 );

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

            _ID32478( "90deg Snap( L ):", var_3, var_4 );

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

            _ID32478( "Local Rotation( R ):", var_5, var_6 );
        }

        if ( level._ID1400._ID4637 && level._ID1400._ID31849.size > 0 )
        {
            _ID32478( "Mode( KP 5 ):", "rotate" );
            thread [[ level._ID15091 ]]();

            if ( _ID6479( "p" ) )
                _ID29734();

            if ( _ID6479( "o" ) )
                _ID2411();

            if ( _ID6479( "v" ) )
                _ID8659();

            for ( var_7 = 0; var_7 < level._ID1400._ID31849.size; var_7++ )
                level._ID1400._ID31849[var_7] _ID11684();

            if ( level._ID31855 != 0 || level._ID31857 != 0 || level._ID31856 != 0 )
                var_0 = 1;
        }
        else
        {
            _ID32478( "Mode( KP 5 ):", "move" );
            var_8 = _ID15967();

            for ( var_7 = 0; var_7 < level._ID1400._ID31849.size; var_7++ )
            {
                var_9 = level._ID1400._ID31849[var_7];

                if ( isdefined( var_9.model ) )
                    continue;

                var_9._ID40005["origin"] = var_9._ID40005["origin"] + var_8;
            }

            if ( distance( ( 0, 0, 0 ), var_8 ) > 0 )
            {
                thread _ID30737();
                level._ID9233 = 0;
                var_0 = 1;
            }
        }
    }
    else
        _ID7902();

    return var_0;
}

_ID31847( var_0 )
{
    if ( _ID6479( "kp_5", "BUTTON_X" ) )
        _ID37831();

    _ID23889();

    if ( _ID6479( "s" ) )
        _ID37855();

    if ( _ID6479( "l" ) )
        _ID37856();

    if ( _ID6479( "r" ) )
        _ID37847();

    if ( _ID6479( "kp_end" ) )
    {
        _ID12137();
        var_0 = 1;
    }

    if ( _ID6479( "tab", "BUTTON_RSHLDR" ) )
    {
        _ID24361();
        var_0 = 1;
    }

    return var_0;
}

_ID23889()
{
    var_0 = _ID6480( "shift" );
    var_1 = _ID6480( "ctrl" );

    if ( _ID6479( "=", "kp_plus" ) )
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
    else if ( _ID6479( "-", "kp_minus" ) )
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

    level._ID1400._ID855 = clamp( level._ID1400._ID855, 0.025, 100 );
    _ID32478( "Move Rate( -/+ ):", level._ID1400._ID855 );
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

    _ID32478( "Snap2Normal( S ):", var_0, var_1 );
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

    _ID32478( "90deg Snap( L ):", var_0, var_1 );
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

    _ID32478( "Local Rotation( R ):", var_0, var_1 );
}

_ID8659()
{
    thread _ID30737();
    level notify( "new_ent_selection" );

    for ( var_0 = 0; var_0 < level._ID1400._ID31849.size; var_0++ )
    {
        var_1 = level._ID1400._ID31849[var_0];
        var_1._ID40005["angles"] = level._ID1400._ID31849[level._ID1400._ID31849.size - 1]._ID40005["angles"];
        var_1 _ID32323();
    }

    _ID39647();
    level._ID9233 = 0;
}

_ID2411()
{
    thread _ID30737();
    level notify( "new_ent_selection" );
    var_0 = level._ID1400._ID31849[level._ID1400._ID31849.size - 1];

    for ( var_1 = 0; var_1 < level._ID1400._ID31849.size - 1; var_1++ )
    {
        var_2 = level._ID1400._ID31849[var_1];
        var_3 = vectortoangles( var_0._ID40005["origin"] - var_2._ID40005["origin"] );
        var_2._ID40005["angles"] = var_3;
        var_2 _ID32323();
    }

    _ID39647();
    level._ID9233 = 0;
}

_ID29734()
{
    level notify( "new_ent_selection" );
    thread _ID30737();

    for ( var_0 = 0; var_0 < level._ID1400._ID31849.size; var_0++ )
    {
        var_1 = level._ID1400._ID31849[var_0];
        var_1._ID40005["angles"] = ( 0, 0, 0 );
        var_1 _ID32323();
    }

    _ID39647();
    level._ID9233 = 0;
}

_ID21848( var_0 )
{
    if ( isdefined( var_0 ) )
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
    thread _ID30737();

    for ( var_0 = 0; var_0 < level._ID1400._ID31849.size; var_0++ )
    {
        var_1 = level._ID1400._ID31849[var_0];
        var_2 = bullettrace( var_1._ID40005["origin"], var_1._ID40005["origin"] + ( 0, 0, -2048 ), 0, undefined );
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

        if ( isdefined( var_2._ID40005["exploder"] ) )
            var_0[var_2._ID40005["exploder"]] = 1;
    }

    var_3 = getarraykeys( var_0 );

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

        if ( isdefined( var_2._ID40005["exploder"] ) )
            var_0[var_2._ID40005["exploder"]] = 1;
    }

    var_3 = getarraykeys( var_0 );

    for ( var_1 = 0; var_1 < var_3.size; var_1++ )
        _ID42234::_ID21260( var_3[var_1] );
}

_ID11698()
{
    var_0 = 0;

    if ( getdvarint( "createfx_drawdist" ) == 0 )
    {

    }

    for (;;)
    {
        var_1 = getdvarint( "createfx_drawdist" );
        var_1 *= var_1;

        for ( var_2 = 0; var_2 < level._ID9242.size; var_2++ )
        {
            var_3 = level._ID9242[var_2];
            var_3._ID11742 = distancesquared( level.player.origin, var_3._ID40005["origin"] ) <= var_1;
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
    setdynamicdvar( "createfx_autosave_time", "300" );

    for (;;)
    {
        wait(getdvarint( "createfx_autosave_time" ));
        _ID42237::_ID14426( "createfx_saving" );

        if ( getdvarint( "createfx_no_autosave" ) )
            continue;

        _ID15495( 1 );
    }
}

_ID30197( var_0, var_1 )
{
    level endon( "new_ent_selection" );
    var_2 = 0.1;

    for ( var_3 = 0; var_3 < var_2 * 20; var_3++ )
    {
        if ( level._ID31855 != 0 )
            var_0 addpitch( level._ID31855 );
        else if ( level._ID31856 != 0 )
            var_0 addyaw( level._ID31856 );
        else
            var_0 addroll( level._ID31857 );

        wait 0.05;
        var_0 _ID11684();

        for ( var_4 = 0; var_4 < level._ID1400._ID31849.size; var_4++ )
        {
            var_5 = level._ID1400._ID31849[var_4];

            if ( isdefined( var_5.model ) )
                continue;

            var_5._ID40005["origin"] = var_1[var_4].origin;
            var_5._ID40005["angles"] = var_1[var_4].angles;
        }
    }
}

_ID10290()
{
    if ( level._ID9232 )
    {
        _ID29569();
        return;
    }

    _ID10294();
}

_ID29569()
{
    if ( !isdefined( level._ID1400._ID31850 ) )
        return;

    level._ID21788 = undefined;
    var_0 = level._ID1400._ID25935[level._ID1400._ID31850]["name"];

    for ( var_1 = 0; var_1 < level._ID9242.size; var_1++ )
    {
        var_2 = level._ID9242[var_1];

        if ( !_ID13035( var_2 ) )
            continue;

        var_2 _ID29560( var_0 );
    }

    _ID39647();
    _ID7897();
}

_ID29560( var_0 )
{
    self._ID40005[var_0] = undefined;
}

_ID10294()
{
    _ID30737();
    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID9242.size; var_1++ )
    {
        var_2 = level._ID9242[var_1];

        if ( _ID13035( var_2 ) )
        {
            if ( isdefined( var_2._ID22676 ) )
            {
                var_2._ID22676 stopsounds();
                var_2._ID22676 delete();
            }

            if ( isdefined( var_2._ID22654 ) )
                var_2._ID22654 delete();

            var_2 notify( "stop_loop" );
            continue;
        }

        var_0[var_0.size] = var_2;
    }

    level._ID9242 = var_0;
    level._ID1400._ID31848 = [];
    level._ID1400._ID31849 = [];
    _ID7868();
    _ID30735();
}

_ID24361()
{
    thread _ID30737();
    var_0 = level._ID9241["position"];

    if ( level._ID1400._ID31849.size <= 0 )
        return;

    var_1 = _ID15594( level._ID1400._ID31849 );
    var_2 = var_1 - var_0;

    for ( var_3 = 0; var_3 < level._ID1400._ID31849.size; var_3++ )
    {
        var_4 = level._ID1400._ID31849[var_3];

        if ( isdefined( var_4.model ) )
            continue;

        var_4._ID40005["origin"] = var_4._ID40005["origin"] - var_2;

        if ( level._ID1400._ID34496 )
        {
            if ( isdefined( level._ID9241["normal"] ) )
                var_4._ID40005["angles"] = vectortoangles( level._ID9241["normal"] );
        }
    }

    level._ID9233 = 0;
}

_ID31842()
{
    _ID31840( level._ID9242.size - 1, level._ID9242[level._ID9242.size - 1] );
}

_ID29728()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID9242.size; var_1++ )
    {
        if ( _ID19525( var_1 ) )
            var_0[var_0.size] = var_1;
    }

    _ID7864();
    _ID31841( var_0 );
}

_ID31836( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._ID1400._ID31849 )
    {
        if ( !isdefined( var_3._ID40005[var_0] ) )
            continue;

        var_4 = var_3._ID40005[var_0];
        var_1[var_4] = 1;
    }

    foreach ( var_4, var_7 in var_1 )
    {
        foreach ( var_9, var_3 in level._ID9242 )
        {
            if ( _ID19525( var_9 ) )
                continue;

            if ( !isdefined( var_3._ID40005[var_0] ) )
                continue;

            if ( var_3._ID40005[var_0] != var_4 )
                continue;

            _ID31840( var_9, var_3 );
        }
    }

    _ID39647();
}

_ID8665()
{
    if ( level._ID1400._ID31849.size <= 0 )
        return;

    var_0 = [];

    for ( var_1 = 0; var_1 < level._ID1400._ID31849.size; var_1++ )
    {
        var_2 = level._ID1400._ID31849[var_1];
        var_3 = spawnstruct();
        var_3._ID40005 = var_2._ID40005;
        var_3 _ID28272();
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
    if ( !isdefined( level._ID36631 ) )
        return;

    _ID7864();

    for ( var_0 = 0; var_0 < level._ID36631.size; var_0++ )
        _ID1844( level._ID36631[var_0] );

    _ID24361();
    _ID39647();
    level._ID36631 = [];
    _ID8665();
}

_ID1844( var_0 )
{
    level._ID9242[level._ID9242.size] = var_0;
    _ID31842();
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
    var_11 = distance( var_2, var_1 );
    return var_11;
}

_ID13018()
{
    self endon( "death" );

    for (;;)
    {
        _ID11684();
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

        if ( isdefined( var_4["nowrite"] ) && var_4["nowrite"] )
            continue;

        var_5 = var_4["name"];

        if ( !isdefined( var_0._ID40005[var_5] ) )
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

            if ( isdefined( level._ID1400._ID10143[var_6] ) && level._ID1400._ID10143[var_6] == var_0._ID40005[var_5] )
                continue;
        }

        if ( var_4["type"] == "string" )
        {
            var_7 = var_0._ID40005[var_5] + "";

            if ( var_7 == "nil" )
                continue;

            if ( var_5 == "platform" && var_7 == "all" )
                continue;

            _ID7196( var_1 + "ent.v[ \"" + var_5 + "\" ] = \"" + var_0._ID40005[var_5] + "\";" );
            continue;
        }

        _ID7196( var_1 + "ent.v[ \"" + var_5 + "\" ] = " + var_0._ID40005[var_5] + ";" );
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
    _ID29744();
}

_ID29744()
{
    for ( var_0 = 0; var_0 < level._ID1400._ID19172; var_0++ )
        level._ID1400._ID19180[var_0][0].color = ( 1, 1, 1 );
}

_ID37837( var_0, var_1 )
{
    if ( isdefined( level._ID1400._ID31848[var_0] ) )
        _ID10422( var_0, var_1 );
    else
        _ID31840( var_0, var_1 );
}

_ID31840( var_0, var_1 )
{
    if ( isdefined( level._ID1400._ID31848[var_0] ) )
        return;

    _ID7897();
    level notify( "new_ent_selection" );
    var_1 thread _ID13077();
    level._ID1400._ID31848[var_0] = 1;
    level._ID1400._ID31849[level._ID1400._ID31849.size] = var_1;
    level._ID9235 = 0;
}

_ID13034( var_0 )
{
    if ( !isdefined( level._ID15194 ) )
        return 0;

    return var_0 == level._ID15194;
}

_ID10422( var_0, var_1 )
{
    if ( !isdefined( level._ID1400._ID31848[var_0] ) )
        return;

    _ID7897();
    level notify( "new_ent_selection" );
    level._ID1400._ID31848[var_0] = undefined;

    if ( !_ID13034( var_1 ) )
        var_1 thread _ID13076();

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
    return isdefined( level._ID1400._ID31848[var_0] );
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
        if ( !_ID13034( level._ID1400._ID31849[var_0] ) )
            level._ID1400._ID31849[var_0] thread _ID13076();
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
    thread _ID9225( var_0 );
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
    var_0 = level.player getplayerangles()[1];
    var_1 = ( 0, var_0, 0 );
    var_2 = anglestoright( var_1 );
    var_3 = anglestoforward( var_1 );
    var_4 = anglestoup( var_1 );
    var_5 = 0;
    var_6 = level._ID1400._ID855;

    if ( _ID6492( "kp_uparrow", "DPAD_UP" ) )
    {
        if ( level._ID31852 < 0 )
            level._ID31852 = 0;

        level._ID31852 = level._ID31852 + var_6;
    }
    else if ( _ID6492( "kp_downarrow", "DPAD_DOWN" ) )
    {
        if ( level._ID31852 > 0 )
            level._ID31852 = 0;

        level._ID31852 = level._ID31852 - var_6;
    }
    else
        level._ID31852 = 0;

    if ( _ID6492( "kp_rightarrow", "DPAD_RIGHT" ) )
    {
        if ( level._ID31853 < 0 )
            level._ID31853 = 0;

        level._ID31853 = level._ID31853 + var_6;
    }
    else if ( _ID6492( "kp_leftarrow", "DPAD_LEFT" ) )
    {
        if ( level._ID31853 > 0 )
            level._ID31853 = 0;

        level._ID31853 = level._ID31853 - var_6;
    }
    else
        level._ID31853 = 0;

    if ( _ID6492( "kp_pgup", "BUTTON_Y" ) )
    {
        if ( level._ID31854 < 0 )
            level._ID31854 = 0;

        level._ID31854 = level._ID31854 + var_6;
    }
    else if ( _ID6492( "kp_pgdn", "BUTTON_B" ) )
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

    if ( _ID6492( "kp_uparrow", "DPAD_UP" ) )
    {
        if ( level._ID31855 < 0 )
            level._ID31855 = 0;

        level._ID31855 = level._ID31855 + var_0;
    }
    else if ( _ID6492( "kp_downarrow", "DPAD_DOWN" ) )
    {
        if ( level._ID31855 > 0 )
            level._ID31855 = 0;

        level._ID31855 = level._ID31855 - var_0;
    }
    else
        level._ID31855 = 0;

    if ( _ID6492( "kp_leftarrow", "DPAD_LEFT" ) )
    {
        if ( level._ID31857 < 0 )
            level._ID31857 = 0;

        level._ID31857 = level._ID31857 + var_0;
    }
    else if ( _ID6492( "kp_rightarrow", "DPAD_RIGHT" ) )
    {
        if ( level._ID31857 > 0 )
            level._ID31857 = 0;

        level._ID31857 = level._ID31857 - var_0;
    }
    else
        level._ID31857 = 0;

    if ( _ID6492( "kp_pgup", "BUTTON_Y" ) )
    {
        if ( level._ID31856 < 0 )
            level._ID31856 = 0;

        level._ID31856 = level._ID31856 + var_0;
    }
    else if ( _ID6492( "kp_pgdn", "BUTTON_B" ) )
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

    foreach ( var_2 in level._ID1400._ID31849 )
    {
        if ( var_2._ID40005["type"] == "reactive_fx" )
            var_0 = 1;

        var_2 _ID49930();
        var_2 [[ level._ID15092 ]]();
    }

    if ( var_0 )
        _ID29380();
}

_ID36497()
{
    if ( isdefined( self._ID22654 ) )
        self._ID22654 delete();

    _ID36518();
}

_ID43432()
{
    self endon( "death" );
    level waittill( "exploding_" + self._ID40005["stop_on_exploder"] );
    _ID36497();
}

_ID36518()
{
    self notify( "stop_loop" );

    if ( isdefined( self._ID22676 ) )
    {
        self._ID22676 stopsounds();
        self._ID22676 delete();
    }
}

_ID15083()
{
    if ( !isdefined( level._ID1427 ) )
        var_0 = getarraykeys( level._ID1426 );
    else
    {
        var_0 = getarraykeys( level._ID1426 );

        if ( var_0.size == level._ID1427.size )
            return level._ID1427;
    }

    var_0 = _ID42237::_ID2812( var_0 );
    level._ID1427 = var_0;
    return var_0;
}

_ID29837()
{
    _ID36497();
    _ID32323();

    switch ( self._ID40005["type"] )
    {
        case "loopfx":
            _ID42235::_ID9164();
            break;
        case "oneshotfx":
            _ID42235::_ID9184();
            break;
        case "soundfx":
            _ID42235::_ID9165();
            break;
        case "soundfx_interval":
            _ID42235::_ID9158();
            break;
        case "soundfx_dynamic":
            _ID42235::_ID9138();
            break;
    }
}

_ID29380()
{
    level._ID1461._ID29072 = undefined;

    foreach ( var_1 in level._ID9242 )
    {
        if ( var_1._ID40005["type"] == "reactive_fx" )
        {
            var_1 _ID32323();
            var_1 _ID42235::_ID1933();
        }
    }
}

_ID28655()
{
    if ( level._ID15238 )
    {
        thread _ID30737();
        level._ID9233 = 0;
        return;
    }

    _ID32190();

    if ( !_ID30224() )
        return;

    level._ID15238 = 1;

    if ( level._ID1400._ID31849.size > 1 && !level._ID1400._ID22515 )
    {
        var_0 = _ID15594( level._ID1400._ID31849 );
        var_1 = spawn( "script_origin", var_0 );
        var_1._ID40005["angles"] = level._ID1400._ID31849[0]._ID40005["angles"];
        var_1._ID40005["origin"] = var_0;
        var_2 = [];

        for ( var_3 = 0; var_3 < level._ID1400._ID31849.size; var_3++ )
        {
            var_2[var_3] = spawn( "script_origin", level._ID1400._ID31849[var_3]._ID40005["origin"] );
            var_2[var_3].angles = level._ID1400._ID31849[var_3]._ID40005["angles"];
            var_2[var_3] _meth_8453( var_1 );
        }

        _ID30197( var_1, var_2 );
        var_1 delete();

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
            var_2[var_3] delete();
    }
    else if ( level._ID1400._ID31849.size > 0 )
    {
        foreach ( var_5 in level._ID1400._ID31849 )
        {
            var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
            var_2.angles = var_5._ID40005["angles"];

            if ( level._ID31855 != 0 )
                var_2 addpitch( level._ID31855 );
            else if ( level._ID31857 != 0 )
                var_2 addyaw( level._ID31857 );
            else
                var_2 addroll( level._ID31856 );

            var_5._ID40005["angles"] = var_2.angles;
            var_2 delete();
        }

        wait 0.05;
    }

    level._ID15238 = 0;
}

_ID35079()
{
    playfx( level._ID1400.grenade._ID15142, level._ID9241["position"] );
    level._ID1400.grenade playsound( level._ID1400.grenade._ID34972 );
    radiusdamage( level._ID9241["position"], level._ID1400.grenade.radius, 50, 5, undefined, "MOD_EXPLOSIVE" );
    level notify( "code_damageradius",  undefined, level._ID1400.grenade.radius, level._ID9241["position"]  );
}

_ID34010()
{
    if ( level._ID9230 == 1 )
    {
        _ID7868();
        level._ID9230 = 0;
        level._ID9235 = 0;
        _ID29728();
    }
    else
    {
        level._ID9230 = 1;
        level._ID9235 = 1;
        level._ID18490 = 0;
        _ID42230::_ID11705();
        _ID7902();
        _ID45345();
    }

    wait 0.2;
}

_ID15495( var_0 )
{

}

_ID41825( var_0, var_1 )
{
    var_2 = "\t";

    if ( getdvarint( "scr_map_exploder_dump" ) )
    {
        if ( !isdefined( var_0.model ) )
            return;
    }
    else if ( isdefined( var_0.model ) )
        return;

    if ( var_0._ID40005["type"] == "loopfx" )
        _ID7196( var_2 + "ent = createLoopEffect( \"" + var_0._ID40005["fxid"] + "\" );" );

    if ( var_0._ID40005["type"] == "oneshotfx" )
        _ID7196( var_2 + "ent = createOneshotEffect( \"" + var_0._ID40005["fxid"] + "\" );" );

    if ( var_0._ID40005["type"] == "exploder" )
    {
        if ( isdefined( var_0._ID40005["exploder"] ) && !level._ID24495 )
            _ID7196( var_2 + "ent = createExploderEx( \"" + var_0._ID40005["fxid"] + "\", \"" + var_0._ID40005["exploder"] + "\" );" );
        else
            _ID7196( var_2 + "ent = createExploder( \"" + var_0._ID40005["fxid"] + "\" );" );
    }

    if ( var_0._ID40005["type"] == "soundfx" )
        _ID7196( var_2 + "ent = createLoopSound();" );

    if ( var_0._ID40005["type"] == "soundfx_interval" )
        _ID7196( var_2 + "ent = createIntervalSound();" );

    if ( var_0._ID40005["type"] == "reactive_fx" )
        _ID7196( var_2 + "ent = createReactiveEnt();" );

    if ( var_0._ID40005["type"] == "soundfx_dynamic" )
        _ID7196( var_2 + "ent = createDynamicAmbience();" );

    _ID7196( var_2 + "ent set_origin_and_angles( " + var_0._ID40005["origin"] + ", " + var_0._ID40005["angles"] + " );" );
    _ID28571( var_0, var_2, var_1 );
    _ID7196( "" );
}

_ID41826( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "\t";
    _ID7198();
    _ID7196( "//_createfx generated. Do not touch!!" );
    _ID7196( "#include common_scripts\utility;" );
    _ID7196( "#include common_scripts\_createfx;\n" );
    _ID7196( "" );
    _ID7196( "main()" );
    _ID7196( "{" );

    if ( level._ID24495 )
    {
        var_6 = var_0.size;

        if ( isdefined( var_4 ) )
            var_6 += var_4.size;

        _ID7196( var_5 + "// CreateFX " + var_1 + " entities placed: " + var_6 );
    }

    foreach ( var_8 in var_0 )
    {
        if ( level._ID9234 > 16 )
        {
            level._ID9234 = 0;
            wait 0.1;
        }

        level._ID9234++;
        _ID41825( var_8, var_2 );
    }

    if ( isdefined( var_4 ) )
    {
        foreach ( var_11 in var_4 )
        {
            if ( level._ID9234 > 16 )
            {
                level._ID9234 = 0;
                wait 0.1;
            }

            level._ID9234++;
            var_8 = spawnstruct();
            var_8._ID40005 = var_11;
            _ID41825( var_8, var_2 );
        }
    }

    _ID7196( "}" );
    _ID7196( " " );
    _ID7197( var_2, var_3, var_1 );
}

_ID9222()
{
    var_0 = 0.1;

    foreach ( var_2 in level._ID9242 )
    {
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
}

_ID15647( var_0 )
{
    var_1 = _ID15648( var_0 );
    var_2 = [];

    foreach ( var_5, var_4 in var_1 )
        var_2[var_5] = [];

    foreach ( var_7 in level._ID9242 )
    {
        var_8 = 0;

        foreach ( var_5, var_0 in var_1 )
        {
            if ( var_7._ID40005["type"] != var_0 )
                continue;

            var_8 = 1;
            var_2[var_5][var_2[var_5].size] = var_7;
            break;
        }
    }

    var_11 = [];

    for ( var_12 = 0; var_12 < var_1.size; var_12++ )
    {
        foreach ( var_7 in var_2[var_12] )
            var_11[var_11.size] = var_7;
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
    var_2 = _ID15648( var_1 );

    foreach ( var_4 in var_2 )
    {
        if ( var_0._ID40005["type"] == var_4 )
            return 1;
    }

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

    foreach ( var_4, var_3 in var_0 )
        var_1[var_4] = [];

    foreach ( var_6 in level._ID9242 )
    {
        var_7 = 0;

        foreach ( var_4, var_9 in var_0 )
        {
            if ( var_6._ID40005["type"] != var_9 )
                continue;

            var_7 = 1;
            var_1[var_4][var_1[var_4].size] = var_6;
            break;
        }
    }

    var_11 = [];

    for ( var_12 = 0; var_12 < var_0.size; var_12++ )
    {
        foreach ( var_6 in var_1[var_12] )
            var_11[var_11.size] = var_6;
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
    _ID1853( "mouse1" );
    _ID1853( "BUTTON_RSHLDR" );
    _ID1853( "BUTTON_LSHLDR" );
    _ID1853( "BUTTON_RSTICK" );
    _ID1853( "BUTTON_LSTICK" );
    _ID1853( "BUTTON_A" );
    _ID1853( "BUTTON_B" );
    _ID1853( "BUTTON_X" );
    _ID1853( "BUTTON_Y" );
    _ID1853( "DPAD_UP" );
    _ID1853( "DPAD_LEFT" );
    _ID1853( "DPAD_RIGHT" );
    _ID1853( "DPAD_DOWN" );
    _ID1902( "shift" );
    _ID1902( "ctrl" );
    _ID1902( "escape" );
    _ID1902( "F5" );
    _ID1902( "F4" );
    _ID1902( "F2" );
    _ID1902( "a" );
    _ID1902( "g" );
    _ID1902( "c" );
    _ID1902( "h" );
    _ID1902( "i" );
    _ID1902( "f" );
    _ID1902( "k" );
    _ID1902( "l" );
    _ID1902( "m" );
    _ID1902( "o" );
    _ID1902( "p" );
    _ID1902( "r" );
    _ID1902( "s" );
    _ID1902( "u" );
    _ID1902( "v" );
    _ID1902( "x" );
    _ID1902( "y" );
    _ID1902( "z" );
    _ID1902( "del" );
    _ID1902( "end" );
    _ID1902( "tab" );
    _ID1902( "ins" );
    _ID1902( "add" );
    _ID1902( "space" );
    _ID1902( "enter" );
    _ID1902( "1" );
    _ID1902( "2" );
    _ID1902( "3" );
    _ID1902( "4" );
    _ID1902( "5" );
    _ID1902( "6" );
    _ID1902( "7" );
    _ID1902( "8" );
    _ID1902( "9" );
    _ID1902( "0" );
    _ID1902( "-" );
    _ID1902( "=" );
    _ID1902( "," );
    _ID1902( "." );
    _ID1902( "[" );
    _ID1902( "]" );
    _ID1902( "leftarrow" );
    _ID1902( "rightarrow" );
    _ID1902( "uparrow" );
    _ID1902( "downarrow" );
    _ID1902( "kp_leftarrow" );
    _ID1902( "kp_rightarrow" );
    _ID1902( "kp_uparrow" );
    _ID1902( "kp_downarrow" );
    _ID1902( "kp_home" );
    _ID1902( "kp_end" );
    _ID1902( "kp_pgup" );
    _ID1902( "kp_pgdn" );
    _ID1902( "kp_ins" );
    _ID1902( "kp_del" );
    _ID1902( "kp_enter" );
    _ID1902( "kp_plus" );
    _ID1902( "kp_minus" );
    _ID1902( "kp_star" );
    _ID1902( "kp_slash" );
    _ID1902( "kp_5" );
}

_ID22540( var_0 )
{
    if ( level._ID45459 && isdefined( level._ID6481[var_0] ) )
        return 1;

    if ( isdefined( level._ID1400._ID22545[var_0] ) )
        return 0;

    return _ID21206( var_0 );
}

_ID21206( var_0 )
{
    return ( level._ID45459 || level._ID9232 ) && isdefined( level._ID6481[var_0] );
}

_ID1853( var_0 )
{
    if ( _ID22540( var_0 ) )
        return;

    if ( !isdefined( level._ID6493[var_0] ) )
    {
        if ( level.player buttonpressed( var_0 ) )
        {
            level._ID6493[var_0] = 1;
            level._ID6491[var_0] = 1;
        }
    }
    else if ( !level.player buttonpressed( var_0 ) )
        level._ID6493[var_0] = undefined;
}

_ID1902( var_0 )
{
    level._ID6481[var_0] = 1;
    _ID1853( var_0 );
}

_ID6492( var_0, var_1 )
{
    return _ID6501( var_0 ) || _ID6501( var_1 );
}

_ID6501( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( _ID21206( var_0 ) )
        return 0;

    return level.player buttonpressed( var_0 );
}

_ID6480( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
    {
        if ( isdefined( level._ID6493[var_1] ) )
            return 1;
    }

    return isdefined( level._ID6493[var_0] );
}

_ID6479( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
    {
        if ( isdefined( level._ID6491[var_1] ) )
            return 1;
    }

    return isdefined( level._ID6491[var_0] );
}

_ID19713()
{
    level._ID1400._ID19180 = [];
    level._ID1400._ID19172 = 30;
    level._ID7949 = newhudelem();
    level._ID7949.alpha = 0;

    for ( var_0 = 0; var_0 < level._ID1400._ID19172; var_0++ )
    {
        var_1 = [];
        var_2 = newhudelem();
        var_2.alignx = "left";
        var_2._ID22519 = 0;
        var_2.foreground = 1;
        var_2.fontscale = level._ID1400._ID54031.fontscale;
        var_2.sort = 20;
        var_2.alpha = 1;
        var_2.x = 0;
        var_2.y = 30 + var_0 * level._ID1400._ID54031._ID43736;
        _ID49974( var_2 );
        var_1[var_1.size] = var_2;
        level._ID1400._ID19180[var_0] = var_1;
    }

    var_1 = [];

    for ( var_0 = 0; var_0 < 5; var_0++ )
    {
        var_2 = newhudelem();
        var_2.alignx = "center";
        var_2._ID22519 = 0;
        var_2.foreground = 1;
        var_2.fontscale = level._ID1400._ID54031.fontscale;
        var_2.sort = 20;
        var_2.alpha = 1;
        var_2.x = 320;
        var_2.y = 280 + var_0 * level._ID1400._ID54031._ID43736;
        _ID49974( var_2 );
        var_1[var_1.size] = var_2;
    }

    level._ID9224 = var_1;
}

_ID19665()
{
    var_0 = newhudelem();
    var_0._ID22519 = 0;
    var_0.alignx = "center";
    var_0.aligny = "middle";
    var_0.foreground = 1;
    var_0.fontscale = 2;
    var_0.sort = 20;
    var_0.alpha = 1;
    var_0.x = 320;
    var_0.y = 233;
}

_ID7868()
{
    level._ID7949 clearalltextafterhudelem();

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
    if ( !isdefined( level._ID1400._ID37870 ) )
        level._ID1400._ID37870 = [];

    if ( !isdefined( level._ID1400._ID37869 ) )
        level._ID1400._ID37869 = 1;

    if ( !isdefined( level._ID1400._ID37868 ) )
        level._ID1400._ID37868 = "";
}

_ID24748( var_0 )
{
    foreach ( var_3, var_2 in level._ID1400._ID37870 )
    {
        if ( isdefined( var_2._ID40023 ) )
            var_2._ID40023 destroy();

        var_2 destroy();
        level._ID1400._ID37870[var_3] = undefined;
    }

    level._ID1400._ID37868 = var_0;
}

_ID9459( var_0 )
{
    return level._ID1400._ID37868 == var_0;
}

_ID7902()
{
    _ID24748( "" );
}

_ID24749( var_0 )
{
    var_1 = newhudelem();
    var_1.alignx = "left";
    var_1.aligny = "bottom";
    var_1._ID22519 = 0;
    var_1.foreground = 1;
    var_1.fontscale = level._ID1400._ID54031.fontscale;
    var_1.alpha = 1;
    var_1.x = 0;
    var_1.y = 350 + var_0 * level._ID1400._ID54031._ID43736;
    _ID49974( var_1 );
    return var_1;
}

_ID16028( var_0 )
{
    if ( isdefined( level._ID1400._ID37870[var_0] ) )
        return level._ID1400._ID37870[var_0];

    return undefined;
}

_ID32478( var_0, var_1, var_2 )
{
    var_3 = _ID16028( var_0 );

    if ( !isdefined( var_3 ) )
    {
        var_3 = _ID24749( level._ID1400._ID37870.size );
        level._ID1400._ID37870[var_0] = var_3;
        var_3._ID37557 = var_0;
    }

    if ( isdefined( var_1 ) )
    {
        if ( isdefined( var_3._ID40023 ) )
            var_4 = var_3._ID40023;
        else
        {
            var_4 = _ID24749( level._ID1400._ID37870.size );
            var_4.x = var_4.x + 130;
            var_4.y = var_3.y;
            var_3._ID40023 = var_4;
        }

        if ( isdefined( var_4._ID37557 ) && var_4._ID37557 == var_1 )
            return;

        var_4._ID37557 = var_1;

        if ( !isdefined( var_2 ) )
            var_2 = ( 1, 1, 1 );

        var_4.color = var_2;
    }
}

_ID31839()
{
    var_0 = getdvar( "select_by_substring" );

    if ( var_0 == "" )
        return 0;

    setdvar( "select_by_substring", "" );
    var_1 = [];

    foreach ( var_4, var_3 in level._ID9242 )
    {
        if ( issubstr( var_3._ID40005["fxid"], var_0 ) )
            var_1[var_1.size] = var_4;
    }

    if ( var_1.size == 0 )
        return 0;

    _ID10421();
    _ID31841( var_1 );

    foreach ( var_6 in var_1 )
    {
        var_3 = level._ID9242[var_6];
        _ID31840( var_6, var_3 );
    }

    return 1;
}

_ID31841( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        var_3 = level._ID9242[var_2];
        _ID31840( var_2, var_3 );
    }
}

_ID10421()
{
    foreach ( var_2, var_1 in level._ID1400._ID31849 )
        _ID10422( var_2, var_1 );
}

_ID33133()
{
    wait 0.5;

    for (;;)
    {
        level._ID9233 = level._ID9233 + 0.05;

        if ( level._ID9233 == 0.15 )
        {
            foreach ( var_1 in level._ID1400._ID31849 )
            {
                if ( var_1._ID40005["type"] == "exploder" )
                    var_1 _ID42237::_ID1792();
            }

            _ID42230::_ID11081();
            _ID30735();
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
        var_0 = _ID15594( level._ID1400._ID31849 );
        var_1 = _ID15940( level._ID1400._ID31849 ) + 200;
    }
    else
    {
        var_0 = level._ID1400._ID31849[0]._ID40005["origin"];
        var_1 = 200;
    }

    var_2 = anglestoforward( level.player getplayerangles() );
    var_3 = var_2 * ( -1 * var_1 );
    var_4 = level.player geteye();
    var_5 = var_4 - level.player.origin;
    level.player setorigin( var_0 + var_3 - var_5 );
}

_ID7833()
{
    foreach ( var_1 in level._ID9242 )
    {
        if ( isdefined( var_1._ID22654 ) )
            var_1._ID22654 delete();

        var_1 _ID36518();
    }
}

_ID29838()
{
    foreach ( var_1 in level._ID9242 )
    {
        if ( var_1._ID40005["type"] == "oneshotfx" )
            var_1 _ID29837();
    }
}

_ID29839()
{
    foreach ( var_1 in level._ID1400._ID31849 )
    {
        if ( isdefined( var_1 ) && var_1._ID40005["type"] == "exploder" )
            var_1 _ID42237::_ID1792();
    }
}

_ID30737()
{
    if ( isdefined( level._ID9242 ) && level._ID9233 > 0.15 )
        level._ID9244 = _ID8669( level._ID9242 );
}

_ID30735()
{
    if ( isdefined( level._ID9242 ) )
        level._ID9243 = _ID8669( level._ID9242 );
}

_ID39462()
{
    if ( isdefined( level._ID9244 ) )
    {
        _ID7833();
        level._ID9242 = [];
        level._ID9242 = _ID8669( level._ID9244 );
        _ID7868();
        _ID29728();
        _ID29838();
        _ID29839();
    }
}

_ID29349()
{
    if ( isdefined( level._ID9243 ) )
    {
        _ID7833();
        level._ID9242 = [];
        level._ID9242 = _ID8669( level._ID9243 );
        _ID7868();
        _ID29728();
        _ID29838();
        _ID29839();
    }
}

_ID8669( var_0 )
{
    var_1 = [];

    if ( var_0.size > 0 )
    {
        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        {
            var_3 = spawnstruct();

            if ( isdefined( var_0[var_2]._ID40005 ) )
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
                var_3.model = var_0[var_2].model;
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

    foreach ( var_4, var_3 in level._ID9242 )
    {
        if ( isdefined( var_3.model ) && var_3.model == var_0 )
            continue;

        var_1[var_1.size] = var_3;
    }

    level._ID9242 = var_1;
}

_ID49930()
{
    if ( !isdefined( level._ID49529 ) )
        return;

    if ( isdefined( self._ID40005["ignore_fx_volume_groups"] ) && self._ID40005["ignore_fx_volume_groups"] )
    {
        self._ID40005["fx_volume_groups"] = undefined;
        return;
    }

    self._ID40005["fx_volume_groups"] = [];

    foreach ( var_6, var_1 in level._ID49529 )
    {
        var_2 = 0;

        if ( !isdefined( var_1._ID49512 ) )
            continue;

        foreach ( var_4 in var_1._ID49512 )
        {
            if ( _ID54634( self._ID40005["origin"], var_4 ) )
            {
                var_2 = 1;
                break;
            }
        }

        if ( var_2 )
            self._ID40005["fx_volume_groups"][self._ID40005["fx_volume_groups"].size] = var_6;
    }
}

_ID54634( var_0, var_1 )
{
    var_2 = 0;

    switch ( var_1.type )
    {
        case "info_volume":
            if ( !isdefined( level._ID44322 ) )
                level._ID44322 = spawn( "script_origin", ( 0, 0, 0 ) );

            level._ID44322.origin = var_0;
            var_2 = level._ID44322 istouching( var_1._ID52337 );
            break;
        default:
            _ID42237::_ID13138( "Unhandled FX volume type!" );
            break;
    }

    return var_2;
}

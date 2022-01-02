// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19737()
{
    level._ID1400._ID25935 = [];
    _ID2076( "vector", "origin", "Origin", ( 0, 0, 0 ), "fx", 1 );
    _ID2076( "vector", "angles", "Angles", ( 0, 0, 0 ), "fx", 1 );
    _ID2076( "string", "fxid", "FX id", "nil", "fx" );
    _ID2076( "float", "delay", "Repeat rate/start delay", 0.5, "fx" );
    _ID2076( "string", "flag", "Flag", "nil", "exploder" );
    _ID2076( "string", "platform", "Platform", "all", "all" );

    if ( !level._ID24495 )
    {
        _ID2076( "vector", "tintcolor", "Tint Color", ( 1, 1, 1 ), "fx" );
        _ID2076( "float", "tintalpha", "Tint Alpha", 1.0, "fx" );
        _ID2076( "float", "emissive", "Emissive", 1.0, "fx" );
        _ID2076( "float", "sizescale", "Scale", 1.0, "fx" );
        _ID2076( "string", "firefx", "2nd FX id", "nil", "exploder" );
        _ID2076( "float", "firefxdelay", "2nd FX id repeat rate", 0.5, "exploder" );
        _ID2076( "float", "firefxtimeout", "2nd FX timeout", 5, "exploder" );
        _ID2076( "string", "firefxsound", "2nd FX soundalias", "nil", "exploder" );
        _ID2076( "float", "damage", "Radius damage", 150, "exploder" );
        _ID2076( "float", "damage_radius", "Radius of radius damage", 250, "exploder" );
        _ID2076( "string", "earthquake", "Earthquake", "nil", "exploder" );
        _ID2076( "string", "ender", "Level notify for ending 2nd FX", "nil", "exploder" );
    }

    _ID2076( "float", "delay_min", "Minimimum time between repeats", 1, "soundfx_interval" );
    _ID2076( "float", "delay_max", "Maximum time between repeats", 2, "soundfx_interval" );
    _ID2076( "int", "repeat", "Number of times to repeat", 5, "exploder" );
    _ID2076( "string", "exploder", "Exploder", "1", "exploder" );
    _ID2076( "string", "stop_on_exploder", "Stop on exploder", "1", "all" );
    _ID33088();
    _ID2076( "string", "soundalias", "Soundalias", "nil", "all" );
    _ID2076( "string", "loopsound", "Loopsound", "nil", "exploder" );
    _ID2076( "int", "reactive_radius", "Reactive Radius", 100, "reactive_fx", undefined, ::_ID20096 );
    _ID2076( "string", "ambiencename", "Ambience Name", "nil", "soundfx_dynamic" );
    _ID2076( "int", "dynamic_distance", "Dynamic Max Distance", 1000, "soundfx_dynamic" );

    if ( !level._ID24495 )
    {
        _ID2076( "string", "rumble", "Rumble", "nil", "exploder" );
        _ID2076( "int", "stoppable", "Can be stopped from script", "1", "all" );
    }

    _ID2076( "int", "kill_on_delete", "Kill FX on delete", 1, "fx" );
    _ID2076( "int", "ignore_fx_volume_groups", "Ignore FX volume groups", 1, "fx" );
    level._ID12317 = 0;
    level._ID12318 = 10;
    level._ID12316 = 0;
    level._ID18490 = 0;
    level._ID18491 = 15;
    level._ID9230 = 0;
    level._ID9235 = 0;
    level._ID9247 = [];
    level._ID9247["all"] = [];
    level._ID9247["all"]["exploder"] = 1;
    level._ID9247["all"]["oneshotfx"] = 1;
    level._ID9247["all"]["loopfx"] = 1;
    level._ID9247["all"]["soundfx"] = 1;
    level._ID9247["all"]["soundfx_interval"] = 1;
    level._ID9247["all"]["reactive_fx"] = 1;
    level._ID9247["all"]["soundfx_dynamic"] = 1;
    level._ID9247["fx"] = [];
    level._ID9247["fx"]["exploder"] = 1;
    level._ID9247["fx"]["oneshotfx"] = 1;
    level._ID9247["fx"]["loopfx"] = 1;
    level._ID9247["exploder"] = [];
    level._ID9247["exploder"]["exploder"] = 1;
    level._ID9247["loopfx"] = [];
    level._ID9247["loopfx"]["loopfx"] = 1;
    level._ID9247["oneshotfx"] = [];
    level._ID9247["oneshotfx"]["oneshotfx"] = 1;
    level._ID9247["soundfx"] = [];
    level._ID9247["soundfx"]["soundalias"] = 1;
    level._ID9247["soundfx_interval"] = [];
    level._ID9247["soundfx_interval"]["soundfx_interval"] = 1;
    level._ID9247["reactive_fx"] = [];
    level._ID9247["reactive_fx"]["reactive_fx"] = 1;
    level._ID9247["soundfx_dynamic"] = [];
    level._ID9247["soundfx_dynamic"]["soundfx_dynamic"] = 1;
    var_0 = [];
    var_0["creation"] = ::_ID23471;
    var_0["create_oneshot"] = ::_ID23470;
    var_0["create_loopfx"] = ::_ID23470;
    var_0["change_fxid"] = ::_ID23470;
    var_0["none"] = ::_ID23474;
    var_0["add_options"] = ::_ID23468;
    var_0["select_by_name"] = ::_ID23475;
    level._ID1400._ID23479 = var_0;
}

_ID23467( var_0 )
{
    return level._ID9148 == var_0;
}

_ID32685( var_0 )
{
    level._ID9148 = var_0;
}

_ID9148()
{
    if ( _ID42229::_ID6479( "escape", "x" ) )
    {
        _ID1448();
        return;
    }

    if ( isdefined( level._ID1400._ID23479[level._ID9148] ) )
        [[ level._ID1400._ID23479[level._ID9148] ]]();
}

_ID23471()
{
    if ( level._ID9230 )
        return;

    _ID42229::_ID46162();

    if ( _ID42229::_ID6479( "1" ) )
    {
        _ID32685( "create_oneshot" );
        _ID11702();
        return;
    }
    else if ( _ID42229::_ID6479( "2" ) )
    {
        _ID32685( "create_loopfx" );
        _ID11702();
        return;
    }
    else if ( _ID42229::_ID6479( "3" ) )
    {
        _ID32685( "create_loopsound" );
        var_0 = _ID42229::_ID9260();
        _ID14225( var_0 );
        return;
    }
    else if ( _ID42229::_ID6479( "4" ) )
    {
        _ID32685( "create_exploder" );
        var_0 = _ID42229::_ID9264();
        _ID14225( var_0 );
        return;
    }
    else if ( _ID42229::_ID6479( "5" ) )
    {
        _ID32685( "create_interval_sound" );
        var_0 = _ID42229::_ID9253();
        _ID14225( var_0 );
        return;
    }
    else if ( _ID42229::_ID6479( "6" ) )
    {
        var_0 = _ID42229::_ID9275();
        _ID14225( var_0 );
        return;
    }
    else if ( _ID42229::_ID6479( "7" ) )
    {
        var_0 = _ID42229::_ID9212();
        _ID14225( var_0 );
        return;
    }
}

_ID23470()
{
    if ( level._ID9230 )
        return;

    level._ID9235 = 1;

    if ( _ID24763() )
        _ID19516();
    else if ( _ID28507() )
        _ID10079();

    _ID11702();
    _ID23472();
}

_ID23474()
{
    if ( _ID42229::_ID6479( "m" ) )
        _ID19516();

    _ID23469();

    if ( _ID13073() && !level._ID9230 )
    {
        var_0 = _ID15798();

        if ( !isdefined( level._ID21788 ) || var_0 != level._ID21788 || level._ID1400._ID21199 == 1 )
        {
            _ID11084( var_0 );
            level._ID21788 = var_0;
            level._ID1400._ID21199 = 0;
        }

        if ( _ID42229::_ID6479( "a" ) )
        {
            _ID42229::_ID7897();
            _ID32685( "add_options" );
            return;
        }
    }
    else
        level._ID21788 = undefined;
}

_ID23468()
{
    if ( !_ID13073() )
    {
        _ID42229::_ID7868();
        _ID32685( "none" );
        return;
    }

    _ID11083( _ID15798() );

    if ( _ID24763() )
        _ID19516();
}

_ID23475()
{
    if ( level._ID9230 )
        return;

    if ( _ID24763() )
        _ID19516();
    else if ( _ID28507() )
        _ID10079();

    _ID42229::_ID54132();
    _ID31837();
}

_ID24763()
{
    return _ID42229::_ID6479( "rightarrow" );
}

_ID28507()
{
    return _ID42229::_ID6479( "leftarrow" );
}

_ID1448()
{
    if ( level._ID9232 )
        return;

    if ( level._ID9230 )
    {
        level._ID9230 = 0;
        return;
    }

    _ID42229::_ID7868();

    if ( _ID23467( "add_options" ) )
        level._ID21788 = undefined;
    else
        _ID42229::_ID7864();

    _ID42229::_ID39647();
    _ID32685( "none" );
}

_ID23472()
{
    var_0 = 0;
    var_1 = undefined;
    var_2 = _ID42229::_ID15083();

    for ( var_3 = level._ID12317; var_3 < var_2.size; var_3++ )
    {
        var_0 += 1;
        var_4 = var_0;

        if ( var_4 == 10 )
            var_4 = 0;

        if ( _ID42229::_ID6479( var_4 + "" ) )
        {
            var_1 = var_2[var_3];
            break;
        }

        if ( var_0 > level._ID12318 )
            break;
    }

    if ( !isdefined( var_1 ) )
        return;

    if ( _ID23467( "change_fxid" ) )
    {
        _ID3240( _ID15877( "fxid" ), var_1 );
        level._ID12317 = 0;
        _ID42229::_ID7868();
        _ID32685( "none" );
        level._ID9235 = 0;
        level._ID9233 = 0;
        return;
    }

    var_5 = undefined;

    if ( _ID23467( "create_loopfx" ) )
        var_5 = _ID42237::_ID9259( var_1 );

    if ( _ID23467( "create_oneshot" ) )
        var_5 = _ID42237::_ID9265( var_1 );

    _ID14225( var_5 );
}

_ID14225( var_0 )
{
    var_0._ID40005["angles"] = vectortoangles( var_0._ID40005["origin"] + ( 0, 0, 100 ) - var_0._ID40005["origin"] );
    var_0 _ID42229::_ID28272();
    _ID42229::_ID7864();
    _ID42229::_ID31842();
    _ID42229::_ID24361();
    _ID42229::_ID39647();
    _ID32685( "none" );
    level._ID9235 = 0;
}

_ID13073()
{
    return level._ID1400._ID31849.size > 0;
}

_ID23469()
{
    if ( !level._ID1400._ID31849.size )
        return;

    var_0 = 0;
    var_1 = 0;
    var_2 = _ID15798();

    for ( var_3 = 0; var_3 < level._ID1400._ID25935.size; var_3++ )
    {
        var_4 = level._ID1400._ID25935[var_3];

        if ( !isdefined( var_2._ID40005[var_4["name"]] ) )
            continue;

        var_0++;

        if ( var_0 < level._ID12317 )
            continue;

        var_1++;
        var_5 = var_1;

        if ( var_5 == 10 )
            var_5 = 0;

        if ( _ID42229::_ID6479( var_5 + "" ) )
        {
            _ID28440( var_4, var_1 );
            break;
        }

        if ( var_1 > level._ID12318 )
        {
            var_6 = 1;
            break;
        }
    }
}

_ID28440( var_0, var_1 )
{
    if ( var_0["name"] == "fxid" )
    {
        _ID32685( "change_fxid" );
        _ID11702();
        return;
    }

    level._ID9232 = 1;
    level._ID1400._ID19180[var_1 + 1][0].color = ( 1, 1, 0 );

    if ( isdefined( var_0["input_func"] ) )
        thread [[ var_0["input_func"] ]]( var_1 + 1 );
    else
    {
        var_2 = [ "Editing '" + var_0["description"] + "' option:", "To edit, type /fx newvalue in the console.", "To delete, type /fx del in the console or press Delete on keyboard.", "To cancel, press X on keyboard." ];
        _ID42229::_ID9224( var_2 );
    }

    _ID32400( var_0["name"] );
    setdvar( "fx", "nil" );
}

_ID23473()
{
    if ( getdvar( "fx" ) == "nil" )
        return;

    if ( getdvar( "fx" ) == "del" )
        _ID42229::_ID29569();
    else
    {
        var_0 = _ID15968();
        var_1 = undefined;

        if ( var_0["type"] == "string" )
            var_1 = getdvar( "fx" );

        if ( var_0["type"] == "int" )
            var_1 = getdvarint( "fx" );

        if ( var_0["type"] == "float" )
            var_1 = getdvarfloat( "fx" );

        if ( var_0["type"] == "vector" )
            var_1 = getdvarvector( "fx" );

        if ( isdefined( var_1 ) )
        {
            _ID3240( var_0, var_1 );
            return;
        }

        setdvar( "fx", "nil" );
    }
}

_ID3240( var_0, var_1 )
{
    _ID42229::_ID30737();

    for ( var_2 = 0; var_2 < level._ID1400._ID31849.size; var_2++ )
    {
        var_3 = level._ID1400._ID31849[var_2];

        if ( _ID22997( var_0["mask"], var_3._ID40005["type"] ) )
            var_3._ID40005[var_0["name"]] = var_1;
    }

    level._ID21788 = undefined;
    _ID42229::_ID39647();
    _ID42229::_ID7897();

    if ( var_0["name"] == "origin" )
    {
        level._ID9233 = 0;
        _ID42229::_ID14864();
    }

    if ( var_0["name"] == "angles" )
        level._ID9233 = 0;

    _ID42229::_ID30735();
}

_ID32400( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID1400._ID25935.size; var_1++ )
    {
        if ( level._ID1400._ID25935[var_1]["name"] != var_0 )
            continue;

        level._ID1400._ID31850 = var_1;
        return;
    }
}

_ID15968()
{
    return level._ID1400._ID25935[level._ID1400._ID31850];
}

_ID22997( var_0, var_1 )
{
    return isdefined( level._ID9247[var_0][var_1] );
}

_ID2076( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = [];
    var_7["type"] = var_0;
    var_7["name"] = var_1;
    var_7["description"] = var_2;
    var_7["default"] = var_3;
    var_7["mask"] = var_4;

    if ( isdefined( var_5 ) && var_5 )
        var_7["nowrite"] = 1;
    else
        var_7["nowrite"] = 0;

    if ( isdefined( var_6 ) )
        var_7["input_func"] = var_6;

    level._ID1400._ID25935[level._ID1400._ID25935.size] = var_7;
}

_ID15877( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID1400._ID25935.size; var_1++ )
    {
        if ( level._ID1400._ID25935[var_1]["name"] == var_0 )
            return level._ID1400._ID25935[var_1];
    }
}

_ID20096( var_0 )
{
    for (;;)
    {
        wait 0.05;

        if ( level._ID45459 )
            continue;

        if ( level.player buttonpressed( "escape" ) || level.player buttonpressed( "x" ) )
            break;

        var_1 = 0;

        if ( level.player buttonpressed( "-" ) )
            var_1 = -10;
        else if ( level.player buttonpressed( "=" ) )
            var_1 = 10;

        if ( var_1 != 0 )
        {
            foreach ( var_3 in level._ID1400._ID31849 )
            {
                if ( isdefined( var_3._ID40005["reactive_radius"] ) )
                {
                    var_3._ID40005["reactive_radius"] = var_3._ID40005["reactive_radius"] + var_1;
                    var_3._ID40005["reactive_radius"] = clamp( var_3._ID40005["reactive_radius"], 10, 1000 );
                }
            }
        }
    }

    level._ID21788 = undefined;
    _ID42229::_ID39647();
    _ID42229::_ID7897();
}

_ID11083( var_0 )
{
    if ( level._ID9230 )
        return;

    level._ID9235 = 1;
    _ID42229::_ID7868();
    _ID42229::_ID32325( "Name: " + var_0._ID40005["fxid"] );
    _ID42229::_ID32325( "Type: " + var_0._ID40005["type"] );
    _ID42229::_ID32325( "Origin: " + var_0._ID40005["origin"] );
    _ID42229::_ID32325( "Angles: " + var_0._ID40005["angles"] );
    var_1 = 0;
    var_2 = 0;
    var_3 = 0;

    if ( level._ID12317 >= level._ID1400._ID25935.size )
        level._ID12317 = 0;

    for ( var_4 = 0; var_4 < level._ID1400._ID25935.size; var_4++ )
    {
        var_5 = level._ID1400._ID25935[var_4];

        if ( isdefined( var_0._ID40005[var_5["name"]] ) )
            continue;

        if ( !_ID22997( var_5["mask"], var_0._ID40005["type"] ) )
            continue;

        var_1++;

        if ( var_1 < level._ID12317 )
            continue;

        if ( var_2 >= level._ID12318 )
            continue;

        var_2++;
        var_6 = var_2;

        if ( var_6 == 10 )
            var_6 = 0;

        if ( _ID42229::_ID6479( var_6 + "" ) )
        {
            _ID1924( var_5 );
            _ID23478();
            level._ID21788 = undefined;
            return;
        }

        _ID42229::_ID32325( var_6 + ". " + var_5["description"] );
    }

    if ( var_1 > level._ID12318 )
    {
        level._ID12316 = var_1;
        _ID42229::_ID32325( "(->) More >" );
    }

    _ID42229::_ID32325( "(x) Exit >" );
}

_ID1924( var_0 )
{
    var_1 = undefined;

    for ( var_2 = 0; var_2 < level._ID1400._ID31849.size; var_2++ )
    {
        var_3 = level._ID1400._ID31849[var_2];

        if ( _ID22997( var_0["mask"], var_3._ID40005["type"] ) )
            var_3._ID40005[var_0["name"]] = var_0["default"];
    }
}

_ID23478()
{
    level._ID12317 = 0;
    _ID42229::_ID7868();
    _ID32685( "none" );
}

_ID11084( var_0 )
{
    if ( !_ID23467( "none" ) )
        return;

    if ( level._ID9230 )
        return;

    _ID42229::_ID7868();
    _ID42229::_ID32325( "Name: " + var_0._ID40005["fxid"] );
    _ID42229::_ID32325( "Type: " + var_0._ID40005["type"] );

    if ( _ID13073() )
    {
        var_1 = 0;
        var_2 = 0;
        var_3 = 0;

        for ( var_4 = 0; var_4 < level._ID1400._ID25935.size; var_4++ )
        {
            var_5 = level._ID1400._ID25935[var_4];

            if ( !isdefined( var_0._ID40005[var_5["name"]] ) )
                continue;

            var_1++;

            if ( var_1 < level._ID12317 )
                continue;

            var_2++;
            _ID42229::_ID32325( var_2 + ". " + var_5["description"] + ": " + var_0._ID40005[var_5["name"]] );

            if ( var_2 > level._ID12318 )
            {
                var_3 = 1;
                break;
            }
        }

        if ( var_1 > level._ID12318 )
        {
            level._ID12316 = var_1;
            _ID42229::_ID32325( "(->) More >" );
        }

        _ID42229::_ID32325( "(a) Add >" );
        _ID42229::_ID32325( "(x) Exit >" );
    }
    else
    {
        var_1 = 0;
        var_3 = 0;

        for ( var_4 = 0; var_4 < level._ID1400._ID25935.size; var_4++ )
        {
            var_5 = level._ID1400._ID25935[var_4];

            if ( !isdefined( var_0._ID40005[var_5["name"]] ) )
                continue;

            var_1++;
            _ID42229::_ID32325( var_5["description"] + ": " + var_0._ID40005[var_5["name"]] );

            if ( var_1 > level._ID1400._ID19172 )
                break;
        }
    }
}

_ID11081()
{
    var_0 = _ID15798();

    if ( isdefined( var_0 ) )
        _ID11084( var_0 );
}

_ID11702( var_0 )
{
    _ID42229::_ID7868();
    var_1 = 0;
    var_2 = 0;
    var_3 = _ID42229::_ID15083();
    level._ID12316 = var_3.size;

    if ( !isdefined( var_0 ) )
        var_0 = "Pick an effect";

    _ID42229::_ID32325( var_0 + " [" + level._ID12317 + " - " + var_3.size + "]:" );

    for ( var_4 = level._ID12317; var_4 < var_3.size; var_4++ )
    {
        var_1 += 1;
        _ID42229::_ID32325( var_1 + ". " + var_3[var_4] );

        if ( var_1 >= level._ID12318 )
        {
            var_2 = 1;
            break;
        }
    }

    if ( var_3.size > level._ID12318 )
    {
        _ID42229::_ID32325( "(->) More >" );
        _ID42229::_ID32325( "(<-) Previous >" );
    }

    _ID42229::_ID32325( "(x) Exit >" );
}

_ID19516()
{
    if ( level._ID12317 >= level._ID12316 - level._ID12318 )
        level._ID12317 = 0;
    else
        level._ID12317 = level._ID12317 + level._ID12318;
}

_ID10079()
{
    if ( level._ID12316 < level._ID12318 )
        level._ID12317 = 0;
    else
    {
        level._ID12317 = level._ID12317 - level._ID12318;

        if ( level._ID12317 < 0 )
            level._ID12317 = level._ID12316 - level._ID12318;
    }
}

_ID11705( var_0 )
{
    _ID42229::_ID7868();
    var_1 = 0;
    var_2 = level._ID9231;

    if ( !isdefined( var_0 ) )
        var_0 = "Help";

    if ( var_2.size > level._ID18491 )
    {
        var_3 = ceil( var_2.size / level._ID18491 );
        var_4 = floor( level._ID18490 / level._ID18491 ) + 1;
        _ID42229::_ID32325( "[" + var_0 + " (page " + var_4 + " of " + var_3 + ")]" );
    }
    else
        _ID42229::_ID32325( "[" + var_0 + "]" );

    for ( var_5 = level._ID18490; var_5 < var_2.size; var_5++ )
    {
        var_1 += 1;
        _ID42229::_ID32325( var_2[var_5] );

        if ( var_1 >= level._ID18491 )
        {
            var_6 = 1;
            break;
        }
    }

    if ( var_2.size > level._ID18491 )
    {
        level._ID12316 = var_2.size;
        _ID42229::_ID32325( "(->) More >" );
        _ID42229::_ID32325( "(<-) Previous >" );
    }

    _ID42229::_ID32325( "(x, h) Exit >" );
}

_ID19513()
{
    var_0 = level._ID9231;
    level._ID18490 = level._ID18490 + level._ID18491;

    if ( level._ID18490 >= var_0.size )
        level._ID18490 = 0;
}

_ID10078()
{
    level._ID18490 = level._ID18490 - level._ID18491;

    if ( level._ID18490 < 0 )
    {
        var_0 = level._ID9231;
        var_1 = ceil( var_0.size / level._ID18491 );
        level._ID18490 = int( ( var_1 - 1 ) * level._ID18491 );
    }
}

_ID18492()
{
    if ( _ID24763() )
    {
        _ID19513();
        _ID11705();
    }
    else if ( _ID28507() )
    {
        _ID10078();
        _ID11705();
    }
}

_ID33088()
{
    level._ID9231 = [ "Insert                  Insert entity", "F2                      Toggle createfx dot and text drawing", "F5                      SAVES your work", "Z                       Undo", "Shift-Z                 Redo", "F                       Frames currently selected entities in camera view", "END                     Exit CreateFX", "KP END                  Drop selected entities to the ground", "A                       Add option to the selected entities", "P                       Reset the rotation of the selected entities", "V                       Copy the angles from the most recently selected fx onto all selected fx.", "O                       Orient all selected fx to point at most recently selected fx.", "S                       Toggle Snap2Normal mode.", "L                       Toggle 90deg Snap mode.", "G                       Select all effects in level of same exploder or flag as selected.", "U                       Select by name list.", "C                       Convert One-Shot to Exploder.", "Delete                  Kill the selected entities", "X                       Cancel out of option-modify-mode. Back or exit from current menu.", "SPACE or ->             Turn on exploders", "<-                      Turn off exploders", "Dpad, KP arrows         Move selected entities horizontally or rotate pitch/yaw", "KP page up/down\t     Move selected entities vertically or rotate roll", "A button                Toggle the selection of the current entity", "KP 5 or X button        Toggle between entity rotation or move mode", "Y button                Move selected entites up or rotate roll", "B button                Move selected entites down or rotate roll", "Tab, R Shoulder         Move selected entities to the cursor", "L Shoulder              Hold to select multiple entites", "L JoyClick              Copy", "R JoyClick              Paste", "Ctrl-C                  Copy", "Ctrl-V                  Paste", "N                       UFO", "T                       Toggle Timescale FAST", "Y                       Toggle Timescale SLOW", "[                       Toggle FX Visibility", "]                       Toggle ShowTris", "F11                     Toggle FX Profile" ];
}

_ID31837()
{
    var_0 = 0;
    var_1 = undefined;
    var_2 = _ID42229::_ID15083();

    for ( var_3 = level._ID12317; var_3 < var_2.size; var_3++ )
    {
        var_0 += 1;
        var_4 = var_0;

        if ( var_4 == 10 )
            var_4 = 0;

        if ( _ID42229::_ID6479( var_4 + "" ) )
        {
            var_1 = var_2[var_3];
            break;
        }

        if ( var_0 > level._ID12318 )
            break;
    }

    if ( !isdefined( var_1 ) )
        return;

    var_5 = [];

    foreach ( var_3, var_7 in level._ID9242 )
    {
        if ( issubstr( var_7._ID40005["fxid"], var_1 ) )
            var_5[var_5.size] = var_3;
    }

    _ID42229::_ID10421();
    _ID42229::_ID31841( var_5 );
    level._ID1400._ID31837 = 1;
}

_ID15798()
{
    return level._ID1400._ID31849[level._ID1400._ID31849.size - 1];
}

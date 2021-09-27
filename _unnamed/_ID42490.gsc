// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34528()
{
    _unknown_0012();
    _unknown_002D();
    _unknown_0066();
    _unknown_0146();
}

_ID34648( var_0 )
{
    level._ID1632._ID9447._ID22152 = var_0;
    level._ID794 _meth_8133( var_0, 0 );
}

_ID34533()
{
    return level._ID1632._ID9447._ID22152;
}

_ID34553()
{
    var_0 = _func_1A5();
    var_0._ID24651 = [];
    var_0._ID24651[0] = "";
    var_0._ID24651[1] = "";
    var_0._ID22152 = 0;
    level._ID1632._ID9447 = var_0;
}

_ID34534( var_0 )
{
    return level._ID1632._ID9447._ID24651[var_0];
}

_ID34644( var_0, var_1 )
{
    level._ID1632._ID9447._ID24651[var_0] = var_1;
}

_ID34554()
{
    var_0 = _func_1A5();
    var_0._ID680 = "";
    level._ID1632._ID9461 = var_0;
    _unknown_00C4( "" );
}

_ID34535()
{
    return level._ID1632._ID9461._ID680;
}

_ID34645( var_0 )
{
    level._ID1632._ID9461._ID680 = var_0;
}

_ID34567()
{
    var_0 = _ID42475::_ID34590( "DSP bus", [ "sounddata/dspbuses.csv" ], 2, "name", "name" );

    if ( _func_02F( var_0 ) )
        level._ID1632._ID12209 = var_0;
    else
        level._ID1632._ID12209 = [];
}

_ID34537()
{
    var_0 = [];
    var_1 = level._ID1632._ID12209;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_0[var_0.size] = var_2._ID680;
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID34562( var_0 )
{
    return _func_02F( level._ID1632._ID12209[var_0] );
}

_ID34538()
{
    return "sounddata/dspbuses.csv";
}

_ID34568()
{
    level._ID1632._ID14032 = _func_1A5();
    var_0 = [];
    var_0[var_0.size] = "soundtables/sp_defaults.csv";
    var_0[var_0.size] = "soundtables/" + level._ID912 + ".csv";
    level._ID1632._ID14032._ID28453 = _ID42475::_ID34590( "Filter", var_0, 7, "filter_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );
}

_ID34647( var_0, var_1, var_2 )
{
    if ( _func_02F( level._ID794._ID13019 ) && _func_02F( level._ID794._ID13019["player_has_red_flashing_overlay"] ) && level._ID794 _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    var_3 = 0;

    if ( _func_02F( var_1 ) )
        var_3 = var_1;

    if ( !_func_02F( var_0 ) || _func_02F( var_0 ) && var_0 == "" || var_0 == "none" )
    {
        _unknown_01CB( var_3, "" );
        level._ID794 _meth_8132( var_3 );
        return;
    }

    var_4 = _unknown_0284( var_0 );

    if ( !_func_02F( var_4 ) )
        return;

    if ( _unknown_01DE( var_3 ) != var_0 )
    {
        _unknown_01EC( var_3, var_0 );
        thread _unknown_02C0( var_3, var_4 );
    }
}

_ID34716( var_0 )
{
    self endon( "fade_begin" );
    var_1 = 0.0;
    var_2 = 0.05 / var_0;

    while ( var_1 < 1.0 )
    {
        _unknown_01F7( var_1 );
        var_1 += var_2;
        wait 0.05;
    }

    _unknown_0209( 1.0 );
}

_ID34526( var_0, var_1 )
{
    self notify( "fade_begin" );
    _unknown_0219( 0 );
    _unknown_034B( 0 );
    _unknown_0351( 1 );
    _unknown_0294( var_0 );
    thread _unknown_02C4( var_1 );
}

_ID34717( var_0 )
{
    self endon( "fade_begin" );
    var_1 = _unknown_0241();
    var_2 = var_1 * 0.05 / var_0;

    while ( var_1 > 0.0 )
    {
        _unknown_0251( var_1 );
        var_1 -= var_2;
        wait 0.05;
    }

    _unknown_0263( 0.0 );
}

_ID34527( var_0 )
{
    self notify( "fade_begin" );
    thread _unknown_0325( var_0 );
}

_ID34539( var_0 )
{
    if ( _func_02F( level._ID1632._ID14032._ID28453[var_0] ) )
        return level._ID1632._ID14032._ID28453[var_0];

    return undefined;
}

_ID34718( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();
    var_3._ID12208 = var_1;
    var_3._ID517 = var_0;
    var_3._ID1244 = var_2["type"];
    var_3._ID15316 = var_2["gain"];
    var_3._ID40762 = var_2["vol"];
    var_3._ID14905 = var_2["freq"];
    var_3._ID28789 = var_2["q"];
    return var_3;
}

_ID34649( var_0, var_1 )
{
    var_2 = _ID42475::_ID34545();
    var_3 = [];
    var_4 = var_1._ID32823;

    for ( var_11 = _func_1DA( var_4 ); _func_02F( var_11 ); var_11 = _func_1BF( var_4, var_11 ) )
    {
        var_5 = var_4[var_11];
        var_6 = var_5["dsp_bus_name"];

        if ( var_6 == "all" || var_6 == "set_all" )
        {
            var_7 = _unknown_0353();
            var_8 = var_7;

            for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
            {
                var_9 = var_8[var_10];
                var_3[var_9] = _unknown_03FF( var_0, var_9, var_5 );
            }

            var_clear_2
            var_clear_0
            continue;
        }

        if ( _unknown_0391( var_6 ) )
        {
            var_3[var_6] = _unknown_041E( var_0, var_6, var_5 );
            continue;
        }
    }

    var_clear_3
    var_clear_0
    var_12 = var_3;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        level._ID794 _meth_8130( var_13._ID12208, var_13._ID517, var_13._ID1244, var_13._ID15316, var_13._ID40762, var_13._ID14905, var_13._ID28789 );
        var_2 _ID42475::_ID34685();
    }

    var_clear_2
    var_clear_0
}

_ID34501( var_0 )
{
    var_1 = 0;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    _unknown_0416( undefined, var_1 );
}

_ID34569()
{
    level._ID1632._ID25395 = _func_1A5();
    var_0 = [];
    var_0[var_0.size] = "soundtables/sp_defaults.csv";
    var_0[var_0.size] = "soundtables/" + level._ID912 + ".csv";
    level._ID1632._ID25395._ID28453 = _ID42475::_ID34590( "Filter", var_0, 7, "occlusion_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );
}

_ID34650( var_0 )
{
    if ( _func_02F( level._ID794._ID13019 ) && _func_02F( level._ID794._ID13019["player_has_red_flashing_overlay"] ) && level._ID794 _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    if ( !_func_02F( var_0 ) )
    {
        _unknown_044C( "" );
        thread _unknown_05CF();
        return;
    }

    var_1 = _unknown_058D( var_0 );

    if ( !_func_02F( var_1 ) )
        return;

    if ( _unknown_045E() != var_0 )
    {
        _unknown_0469( var_0 );
        thread _unknown_05B1( var_1._ID32823 );
    }
}

_ID34541( var_0 )
{
    if ( _func_02F( level._ID1632._ID25395._ID28453[var_0] ) )
        return level._ID1632._ID25395._ID28453[var_0];

    return undefined;
}

_ID34651( var_0 )
{
    var_1 = _ID42475::_ID34545();
    var_2 = var_0;

    for ( var_9 = _func_1DA( var_2 ); _func_02F( var_9 ); var_9 = _func_1BF( var_2, var_9 ) )
    {
        var_3 = var_2[var_9];
        var_4 = var_3["dsp_bus_name"];

        if ( var_4 == "all" )
        {
            var_5 = _unknown_04CF();
            var_6 = var_5;

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];
                level._ID794 _meth_8126( var_7, var_3["freq"], var_3["type"], var_3["gain"], var_3["vol"], var_3["q"] );
                var_1 _ID42475::_ID34685();
            }

            var_clear_2
            var_clear_0
            break;
            continue;
        }

        if ( _unknown_052E( var_4 ) )
        {
            level._ID794 _meth_8126( var_4, var_3["freq"], var_3["type"], var_3["gain"], var_3["vol"], var_3["q"] );
            jump loc_6AC
        }

        var_1 _ID42475::_ID34685();
    }

    var_clear_3
    var_clear_0
}

_ID34517()
{
    level._ID1632._ID25395._ID20513 = 1;
}

_ID34511()
{
    var_0 = _ID42475::_ID34545();
    var_1 = _unknown_056A();
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        level._ID794 _meth_8128( var_3 );
        var_0 _ID42475::_ID34685();
    }

    var_clear_2
    var_clear_0
}

_ID34510()
{
    level._ID1632._ID25395._ID20513 = 0;
    thread _unknown_070B();
}

_ID34514()
{
    level._ID1632._ID41956 = undefined;
}

_ID34519()
{
    level._ID1632._ID41956 = 1;
}

_ID34547()
{
    return _func_02F( level._ID1632._ID41956 );
}

_ID34515()
{
    _unknown_05E9( undefined, 0 );
    _unknown_05F0( undefined, 1 );
    _ID34515();
    _unknown_0750();
}

_ID34520()
{
    var_0 = undefined;
    var_1 = "default";

    if ( _func_02F( level._ID1374._ID41964._ID9482 ) && _func_02F( level._ID1374._ID41964._ID41977[level._ID1374._ID41964._ID9482] ) )
    {
        var_2 = _ID42474::_ID4638();
        var_3 = level._ID1374._ID41964._ID41977[var_2];

        if ( _func_02F( var_3["occlusion"] ) && var_3["occlusion"] != "none" )
            var_1 = var_3["occlusion"];

        if ( _func_02F( var_3["filter"] ) && var_3["filter"] != "none" )
            var_0 = var_3["filter"];
    }

    if ( _unknown_0634() != var_1 )
        var_1 = _unknown_063B();

    _unknown_07D9();
    _unknown_0684( var_0, 0 );
    _unknown_068A( undefined, 1 );
    _unknown_076B( var_1 );
}

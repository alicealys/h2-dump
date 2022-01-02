// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34528()
{
    _ID34553();
    _ID34554();
    _ID34568();
    _ID34569();
}

_ID34648( var_0 )
{
    level._ID1632._ID9447._ID22152 = var_0;
    level.player seteqlerp( var_0, 0 );
}

_ID34533()
{
    return level._ID1632._ID9447._ID22152;
}

_ID34553()
{
    var_0 = spawnstruct();
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
    var_0 = spawnstruct();
    var_0.name = "";
    level._ID1632._ID9461 = var_0;
    _ID34645( "" );
}

_ID34535()
{
    return level._ID1632._ID9461.name;
}

_ID34645( var_0 )
{
    level._ID1632._ID9461.name = var_0;
}

_ID34567()
{
    var_0 = _ID42475::_ID34590( "DSP bus", [ "sounddata/dspbuses.csv" ], 2, "name", "name" );

    if ( isdefined( var_0 ) )
        level._ID1632._ID12209 = var_0;
    else
        level._ID1632._ID12209 = [];
}

_ID34537()
{
    var_0 = [];

    foreach ( var_2 in level._ID1632._ID12209 )
        var_0[var_0.size] = var_2.name;

    return var_0;
}

_ID34562( var_0 )
{
    return isdefined( level._ID1632._ID12209[var_0] );
}

_ID34538()
{
    return "sounddata/dspbuses.csv";
}

_ID34568()
{
    level._ID1632._ID14032 = spawnstruct();
    var_0 = [];
    var_0[var_0.size] = "soundtables/sp_defaults.csv";
    var_0[var_0.size] = "soundtables/" + level.script + ".csv";
    level._ID1632._ID14032._ID28453 = _ID42475::_ID34590( "Filter", var_0, 7, "filter_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );
}

_ID34647( var_0, var_1, var_2 )
{
    if ( isdefined( level.player._ID13019 ) && isdefined( level.player._ID13019["player_has_red_flashing_overlay"] ) && level.player _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    var_3 = 0;

    if ( isdefined( var_1 ) )
        var_3 = var_1;

    if ( !isdefined( var_0 ) || isdefined( var_0 ) && ( var_0 == "" || var_0 == "none" ) )
    {
        _ID34644( var_3, "" );
        level.player deactivateeq( var_3 );
        return;
    }

    var_4 = _ID34539( var_0 );

    if ( !isdefined( var_4 ) )
        return;

    if ( _ID34534( var_3 ) != var_0 )
    {
        _ID34644( var_3, var_0 );
        thread _ID34649( var_3, var_4 );
    }
}

_ID34716( var_0 )
{
    self endon( "fade_begin" );
    var_1 = 0.0;
    var_2 = 0.05 / var_0;

    while ( var_1 < 1.0 )
    {
        _ID34648( var_1 );
        var_1 += var_2;
        wait 0.05;
    }

    _ID34648( 1.0 );
}

_ID34526( var_0, var_1 )
{
    self notify( "fade_begin" );
    _ID34648( 0 );
    _ID34501( 0 );
    _ID34501( 1 );
    _ID34647( var_0 );
    thread _ID34716( var_1 );
}

_ID34717( var_0 )
{
    self endon( "fade_begin" );
    var_1 = _ID34533();
    var_2 = var_1 * 0.05 / var_0;

    while ( var_1 > 0.0 )
    {
        _ID34648( var_1 );
        var_1 -= var_2;
        wait 0.05;
    }

    _ID34648( 0.0 );
}

_ID34527( var_0 )
{
    self notify( "fade_begin" );
    thread _ID34717( var_0 );
}

_ID34539( var_0 )
{
    if ( isdefined( level._ID1632._ID14032._ID28453[var_0] ) )
        return level._ID1632._ID14032._ID28453[var_0];

    return undefined;
}

_ID34718( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3._ID12208 = var_1;
    var_3._ID517 = var_0;
    var_3.type = var_2["type"];
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

    foreach ( var_5 in var_1._ID32823 )
    {
        var_6 = var_5["dsp_bus_name"];

        if ( var_6 == "all" || var_6 == "set_all" )
        {
            var_7 = _ID34537();

            foreach ( var_9 in var_7 )
                var_3[var_9] = _ID34718( var_0, var_9, var_5 );

            continue;
        }

        if ( _ID34562( var_6 ) )
        {
            var_3[var_6] = _ID34718( var_0, var_6, var_5 );
            continue;
        }
    }

    foreach ( var_13 in var_3 )
    {
        level.player seteq( var_13._ID12208, var_13._ID517, var_13.type, var_13._ID15316, var_13._ID40762, var_13._ID14905, var_13._ID28789 );
        var_2 _ID42475::_ID34685();
    }
}

_ID34501( var_0 )
{
    var_1 = 0;

    if ( isdefined( var_0 ) )
        var_1 = var_0;

    _ID34647( undefined, var_1 );
}

_ID34569()
{
    level._ID1632._ID25395 = spawnstruct();
    var_0 = [];
    var_0[var_0.size] = "soundtables/sp_defaults.csv";
    var_0[var_0.size] = "soundtables/" + level.script + ".csv";
    level._ID1632._ID25395._ID28453 = _ID42475::_ID34590( "Filter", var_0, 7, "occlusion_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );
}

_ID34650( var_0 )
{
    if ( isdefined( level.player._ID13019 ) && isdefined( level.player._ID13019["player_has_red_flashing_overlay"] ) && level.player _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    if ( !isdefined( var_0 ) )
    {
        _ID34645( "" );
        thread _ID34511();
        return;
    }

    var_1 = _ID34541( var_0 );

    if ( !isdefined( var_1 ) )
        return;

    if ( _ID34535() != var_0 )
    {
        _ID34645( var_0 );
        thread _ID34651( var_1._ID32823 );
    }
}

_ID34541( var_0 )
{
    if ( isdefined( level._ID1632._ID25395._ID28453[var_0] ) )
        return level._ID1632._ID25395._ID28453[var_0];

    return undefined;
}

_ID34651( var_0 )
{
    var_1 = _ID42475::_ID34545();

    foreach ( var_3 in var_0 )
    {
        var_4 = var_3["dsp_bus_name"];

        if ( var_4 == "all" )
        {
            var_5 = _ID34537();

            foreach ( var_7 in var_5 )
            {
                level.player setocclusion( var_7, var_3["freq"], var_3["type"], var_3["gain"], var_3["vol"], var_3["q"] );
                var_1 _ID42475::_ID34685();
            }

            break;
            continue;
        }

        if ( _ID34562( var_4 ) )
        {
            level.player setocclusion( var_4, var_3["freq"], var_3["type"], var_3["gain"], var_3["vol"], var_3["q"] );
            jump loc_6AC
        }

        var_1 _ID42475::_ID34685();
    }
}

_ID34517()
{
    level._ID1632._ID25395._ID20513 = 1;
}

_ID34511()
{
    var_0 = _ID42475::_ID34545();
    var_1 = _ID34537();

    foreach ( var_3 in var_1 )
    {
        level.player deactivateocclusion( var_3 );
        var_0 _ID42475::_ID34685();
    }
}

_ID34510()
{
    level._ID1632._ID25395._ID20513 = 0;
    thread _ID34511();
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
    return isdefined( level._ID1632._ID41956 );
}

_ID34515()
{
    _ID34647( undefined, 0 );
    _ID34647( undefined, 1 );
    _ID34510();
    _ID34514();
}

_ID34520()
{
    var_0 = undefined;
    var_1 = "default";

    if ( isdefined( level._ID1374._ID41964._ID9482 ) && isdefined( level._ID1374._ID41964._ID41977[level._ID1374._ID41964._ID9482] ) )
    {
        var_2 = _ID42474::_ID4638();
        var_3 = level._ID1374._ID41964._ID41977[var_2];

        if ( isdefined( var_3["occlusion"] ) && var_3["occlusion"] != "none" )
            var_1 = var_3["occlusion"];

        if ( isdefined( var_3["filter"] ) && var_3["filter"] != "none" )
            var_0 = var_3["filter"];
    }

    if ( _ID34535() != var_1 )
        var_1 = _ID34535();

    _ID34519();
    _ID34647( var_0, 0 );
    _ID34647( undefined, 1 );
    _ID34650( var_1 );
}

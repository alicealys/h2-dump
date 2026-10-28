// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

mm_init()
{
    if ( !isdefined( level._audio ) )
        level._audio = spawnstruct();

    if ( !isdefined( level._audio.mix ) )
        level._audio.mix = spawnstruct();

    level._audio.mix.curr_preset = undefined;
    level._audio.mix.zonemix = [];
    level._audio.mix._id_D021 = [];
    level._audio.mix._id_D3FA = [ "wpn_int_med", "wpn_int_sml" ];
}

mm_start_preset( var_0, var_1 )
{
    if ( !isdefined( level._audio.mix.curr_preset ) || var_0 != level._audio.mix.curr_preset )
    {
        clearallsubmixes( 0.0 );

        if ( isdefined( var_1 ) )
            addsubmix( var_0, var_1 );
        else
            addsubmix( var_0 );

        level._audio.mix.curr_preset = var_0;
    }
}

mm_start_zone_preset( var_0, var_1 )
{
    foreach ( var_3 in level._audio.mix.zonemix )
    {
        if ( var_0 != var_3 )
        {
            makeunstickysubmix( var_3 );
            clearsubmix( var_3, 1.0 );
            level._audio.mix.zonemix[var_3] = undefined;
        }
    }

    mmx_start_zone_preset( var_0 );
    _id_CD06( var_1 );
}

_id_CD06( var_0 )
{
    if ( !_id_AFAA( var_0 ) )
        return;

    foreach ( var_2 in level._audio.mix._id_D021 )
    {
        if ( var_0 != var_2 )
        {
            makeunstickysubmix( var_2 );
            clearsubmix( var_2, 1.0 );
            level._audio.mix._id_D021[var_2] = undefined;
        }
    }

    _id_B595( var_0 );
}

mm_clear_zone_mix( var_0, var_1, var_2 )
{
    var_3 = 1.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    if ( !isdefined( var_0 ) )
    {
        foreach ( var_0 in level._audio.mix.zonemix )
        {
            makeunstickysubmix( var_0 );
            clearsubmix( var_0, var_3 );
            level._audio.mix.zonemix[var_0] = undefined;
        }
    }
    else if ( isdefined( level._audio.mix.zonemix[var_0] ) )
    {
        makeunstickysubmix( var_0 );
        clearsubmix( var_0, var_3 );
        level._audio.mix.zonemix[var_0] = undefined;
    }

    _id_C489( var_1, var_3 );
}

_id_C489( var_0, var_1 )
{
    if ( !_id_AFAA( var_0 ) )
        return;

    if ( !isdefined( var_0 ) )
    {
        foreach ( var_0 in level._audio.mix._id_D021 )
        {
            makeunstickysubmix( var_0 );
            clearsubmix( var_0, var_1 );
            level._audio.mix._id_D021[var_0] = undefined;
        }
    }
    else if ( isdefined( level._audio.mix._id_D021[var_0] ) )
    {
        makeunstickysubmix( var_0 );
        clearsubmix( var_0, var_1 );
        level._audio.mix._id_D021[var_0] = undefined;
    }
}

_id_AFAA( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    foreach ( var_2 in level._audio.mix._id_D3FA )
    {
        if ( var_0 == var_2 )
            return 1;
    }

    return 0;
}

mm_blend_zone_mix( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( isdefined( var_4 ) && isdefined( var_5 ) && var_4 == var_5 )
    {
        var_4 = undefined;
        var_5 = undefined;
    }

    if ( isdefined( var_0 ) && var_0 != "none" )
    {
        if ( var_1 == 0 )
            mm_clear_zone_mix( var_0, var_4, 0.0 );
        else
        {
            mmx_start_zone_preset( var_0 );
            blendsubmix( var_0, var_1, 0.0 );

            if ( _id_B595( var_4 ) )
                blendsubmix( var_4, var_1, 0.0 );
        }
    }

    if ( isdefined( var_2 ) && var_2 != "none" )
    {
        if ( var_3 == 0 )
            mm_clear_zone_mix( var_2, var_5, 0.0 );
        else
        {
            mmx_start_zone_preset( var_2 );
            blendsubmix( var_2, var_3, 0.0 );

            if ( _id_B595( var_5 ) )
                blendsubmix( var_5, var_3, 0.0 );
        }
    }
}

mm_clear_submixes( var_0 )
{
    clearallsubmixes( var_0 );
    level._audio.mix.curr_preset = undefined;
}

mm_make_submix_sticky( var_0 )
{
    makestickysubmix( var_0 );
}

mm_make_submix_unsticky( var_0 )
{
    makeunstickysubmix( var_0 );
}

mm_add_submix( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        addsubmix( var_0, var_1 );
    else
        addsubmix( var_0 );
}

mm_scale_submix( var_0, var_1, var_2 )
{
    var_3 = 0.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    addsubmix( var_0, var_3, var_1 );
}

mm_blend_submix( var_0, var_1, var_2 )
{
    var_1 = clamp( var_1, 0, 1 );
    var_3 = 0.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    blendsubmix( var_0, var_1, var_3 );
}

mm_clear_submix( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        clearsubmix( var_0, var_1 );
    else
        clearsubmix( var_0 );

    if ( isdefined( level._audio.mix.curr_preset ) && level._audio.mix.curr_preset == var_0 )
        level._audio.mix.curr_preset = undefined;
}

mm_add_dynamic_volmod_submix( var_0, var_1, var_2 )
{
    var_3 = 0.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    addsubmix( var_0, var_3, 1.0, var_1 );
}

mm_mute_volmods( var_0, var_1 )
{
    var_2 = [];

    if ( isstring( var_0 ) )
    {
        var_2[var_2.size] = var_0;
        var_2[var_2.size] = 0.0;
    }
    else
    {
        foreach ( var_4 in var_0 )
        {
            var_2[var_2.size] = var_4;
            var_2[var_2.size] = 0.0;
        }
    }

    mm_add_dynamic_volmod_submix( "mm_mute", var_2, var_1 );
}

mm_clear_volmod_mute_mix( var_0 )
{
    if ( isdefined( var_0 ) )
        clearsubmix( "mm_mute", var_0 );
    else
        clearsubmix( "mm_mute" );
}

mm_solo_volmods( var_0, var_1 )
{
    var_2 = [];
    var_2[var_2.size] = "set_all";
    var_2[var_2.size] = 0.0;

    if ( isstring( var_0 ) )
    {
        var_2[var_2.size] = var_0;
        var_2[var_2.size] = 1.0;
    }
    else
    {
        foreach ( var_4 in var_0 )
        {
            var_2[var_2.size] = var_4;
            var_2[var_2.size] = 1.0;
        }
    }

    mm_add_dynamic_volmod_submix( "mm_solo", var_2, var_1 );
}

mm_clear_solo_volmods( var_0 )
{
    if ( isdefined( var_0 ) )
        clearsubmix( "mm_solo", var_0 );
    else
        clearsubmix( "mm_solo" );
}

mmx_start_zone_preset( var_0, var_1 )
{
    if ( !isdefined( level._audio.mix.zonemix[var_0] ) )
    {
        addsubmix( var_0 );
        makestickysubmix( var_0 );
        level._audio.mix.zonemix[var_0] = var_0;
    }

    _id_B595( var_1 );
}

_id_B595( var_0 )
{
    if ( !_id_AFAA( var_0 ) )
        return 0;

    if ( !isdefined( level._audio.mix._id_D021[var_0] ) )
    {
        addsubmix( var_0 );
        makestickysubmix( var_0 );
        level._audio.mix._id_D021[var_0] = var_0;
    }

    return 1;
}

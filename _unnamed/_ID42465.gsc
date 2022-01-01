// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID23805()
{
    if ( !isdefined( level._ID1374 ) )
        level._ID1374 = spawnstruct();

    if ( !isdefined( level._ID1374._ID23787 ) )
        level._ID1374._ID23787 = spawnstruct();

    level._ID1374._ID23787._ID9428 = undefined;
    level._ID1374._ID23787._ID41974 = [];
    level._ID1374._ID23787._ID53281 = [];
    level._ID1374._ID23787._ID54266 = [ "wpn_int_med", "wpn_int_sml" ];
}

_ID23811( var_0, var_1 )
{
    if ( !isdefined( level._ID1374._ID23787._ID9428 ) || var_0 != level._ID1374._ID23787._ID9428 )
    {
        clearallsubmixes( 0.0 );

        if ( isdefined( var_1 ) )
            addsubmix( var_0, var_1 );
        else
            addsubmix( var_0 );

        level._ID1374._ID23787._ID9428 = var_0;
    }
}

_ID23812( var_0, var_1 )
{
    foreach ( var_3 in level._ID1374._ID23787._ID41974 )
    {
        if ( var_0 != var_3 )
        {
            makeunstickysubmix( var_3 );
            clearsubmix( var_3, 1.0 );
            level._ID1374._ID23787._ID41974[var_3] = undefined;
        }
    }

    _ID23813( var_0 );
    _ID52486( var_1 );
}

_ID52486( var_0 )
{
    if ( !_ID44970( var_0 ) )
        return;

    foreach ( var_2 in level._ID1374._ID23787._ID53281 )
    {
        if ( var_0 != var_2 )
        {
            makeunstickysubmix( var_2 );
            clearsubmix( var_2, 1.0 );
            level._ID1374._ID23787._ID53281[var_2] = undefined;
        }
    }

    _ID46485( var_0 );
}

_ID23804( var_0, var_1, var_2 )
{
    var_3 = 1.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    if ( !isdefined( var_0 ) )
    {
        foreach ( var_0 in level._ID1374._ID23787._ID41974 )
        {
            makeunstickysubmix( var_0 );
            clearsubmix( var_0, var_3 );
            level._ID1374._ID23787._ID41974[var_0] = undefined;
        }
    }
    else if ( isdefined( level._ID1374._ID23787._ID41974[var_0] ) )
    {
        makeunstickysubmix( var_0 );
        clearsubmix( var_0, var_3 );
        level._ID1374._ID23787._ID41974[var_0] = undefined;
    }

    _ID50313( var_1, var_3 );
}

_ID50313( var_0, var_1 )
{
    if ( !_ID44970( var_0 ) )
        return;

    if ( !isdefined( var_0 ) )
    {
        foreach ( var_0 in level._ID1374._ID23787._ID53281 )
        {
            makeunstickysubmix( var_0 );
            clearsubmix( var_0, var_1 );
            level._ID1374._ID23787._ID53281[var_0] = undefined;
        }
    }
    else if ( isdefined( level._ID1374._ID23787._ID53281[var_0] ) )
    {
        makeunstickysubmix( var_0 );
        clearsubmix( var_0, var_1 );
        level._ID1374._ID23787._ID53281[var_0] = undefined;
    }
}

_ID44970( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    foreach ( var_2 in level._ID1374._ID23787._ID54266 )
    {
        if ( var_0 == var_2 )
            return 1;
    }

    return 0;
}

_ID23799( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( isdefined( var_4 ) && isdefined( var_5 ) && var_4 == var_5 )
    {
        var_4 = undefined;
        var_5 = undefined;
    }

    if ( isdefined( var_0 ) && var_0 != "none" )
    {
        if ( var_1 == 0 )
            _ID23804( var_0, var_4, 0.0 );
        else
        {
            _ID23813( var_0 );
            blendsubmix( var_0, var_1, 0.0 );

            if ( _ID46485( var_4 ) )
                blendsubmix( var_4, var_1, 0.0 );
        }
    }

    if ( isdefined( var_2 ) && var_2 != "none" )
    {
        if ( var_3 == 0 )
            _ID23804( var_2, var_5, 0.0 );
        else
        {
            _ID23813( var_2 );
            blendsubmix( var_2, var_3, 0.0 );

            if ( _ID46485( var_5 ) )
                blendsubmix( var_5, var_3, 0.0 );
        }
    }
}

_ID23802( var_0 )
{
    clearallsubmixes( var_0 );
    level._ID1374._ID23787._ID9428 = undefined;
}

_ID23806( var_0 )
{
    makestickysubmix( var_0 );
}

_ID23807( var_0 )
{
    makeunstickysubmix( var_0 );
}

_ID23797( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        addsubmix( var_0, var_1 );
    else
        addsubmix( var_0 );
}

_ID23809( var_0, var_1, var_2 )
{
    var_3 = 0.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    addsubmix( var_0, var_3, var_1 );
}

_ID23798( var_0, var_1, var_2 )
{
    var_1 = clamp( var_1, 0, 1 );
    var_3 = 0.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    blendsubmix( var_0, var_1, var_3 );
}

_ID23801( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        clearsubmix( var_0, var_1 );
    else
        clearsubmix( var_0 );

    if ( isdefined( level._ID1374._ID23787._ID9428 ) && level._ID1374._ID23787._ID9428 == var_0 )
        level._ID1374._ID23787._ID9428 = undefined;
}

_ID23796( var_0, var_1, var_2 )
{
    var_3 = 0.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    addsubmix( var_0, var_3, 1.0, var_1 );
}

_ID23808( var_0, var_1 )
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

    _ID23796( "mm_mute", var_2, var_1 );
}

_ID23803( var_0 )
{
    if ( isdefined( var_0 ) )
        clearsubmix( "mm_mute", var_0 );
    else
        clearsubmix( "mm_mute" );
}

_ID23810( var_0, var_1 )
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

    _ID23796( "mm_solo", var_2, var_1 );
}

_ID23800( var_0 )
{
    if ( isdefined( var_0 ) )
        clearsubmix( "mm_solo", var_0 );
    else
        clearsubmix( "mm_solo" );
}

_ID23813( var_0, var_1 )
{
    if ( !isdefined( level._ID1374._ID23787._ID41974[var_0] ) )
    {
        addsubmix( var_0 );
        makestickysubmix( var_0 );
        level._ID1374._ID23787._ID41974[var_0] = var_0;
    }

    _ID46485( var_1 );
}

_ID46485( var_0 )
{
    if ( !_ID44970( var_0 ) )
        return 0;

    if ( !isdefined( level._ID1374._ID23787._ID53281[var_0] ) )
    {
        addsubmix( var_0 );
        makestickysubmix( var_0 );
        level._ID1374._ID23787._ID53281[var_0] = var_0;
    }

    return 1;
}

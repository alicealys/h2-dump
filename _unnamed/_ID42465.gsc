// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID23805()
{
    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    if ( !_func_02F( level._ID1374._ID23787 ) )
        level._ID1374._ID23787 = _func_1A5();

    level._ID1374._ID23787._ID9428 = undefined;
    level._ID1374._ID23787._ID41974 = [];
    level._ID1374._ID23787._ID53281 = [];
    level._ID1374._ID23787._ID54266 = [ "wpn_int_med", "wpn_int_sml" ];
}

_ID23811( var_0, var_1 )
{
    if ( !_func_02F( level._ID1374._ID23787._ID9428 ) || var_0 != level._ID1374._ID23787._ID9428 )
    {
        _func_07C( 0.0 );

        if ( _func_02F( var_1 ) )
            _func_07A( var_0, var_1 );
        else
            _func_07A( var_0 );

        level._ID1374._ID23787._ID9428 = var_0;
    }
}

_ID23812( var_0, var_1 )
{
    var_2 = level._ID1374._ID23787._ID41974;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_0 != var_3 )
        {
            _func_07F( var_3 );
            _func_07B( var_3, 1.0 );
            level._ID1374._ID23787._ID41974[var_3] = undefined;
        }
    }

    var_clear_2
    var_clear_0
    _unknown_0243( var_0 );
    _unknown_011E( var_1 );
}

_ID52486( var_0 )
{
    if ( !_unknown_0189( var_0 ) )
        return;

    var_1 = level._ID1374._ID23787._ID53281;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_0 != var_2 )
        {
            _func_07F( var_2 );
            _func_07B( var_2, 1.0 );
            level._ID1374._ID23787._ID53281[var_2] = undefined;
        }
    }

    var_clear_2
    var_clear_0
    _unknown_02A1( var_0 );
}

_ID23804( var_0, var_1, var_2 )
{
    var_3 = 1.0;

    if ( _func_02F( var_2 ) )
        var_3 = var_2;

    if ( !_func_02F( var_0 ) )
    {
        var_4 = level._ID1374._ID23787._ID41974;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_0 = var_4[var_5];
            _func_07F( var_0 );
            _func_07B( var_0, var_3 );
            level._ID1374._ID23787._ID41974[var_0] = undefined;
        }

        var_clear_1
        var_clear_0
    }
    else if ( _func_02F( level._ID1374._ID23787._ID41974[var_0] ) )
    {
        _func_07F( var_0 );
        _func_07B( var_0, var_3 );
        level._ID1374._ID23787._ID41974[var_0] = undefined;
    }

    _unknown_021E( var_1, var_3 );
}

_ID50313( var_0, var_1 )
{
    if ( !_unknown_024A( var_0 ) )
        return;

    if ( !_func_02F( var_0 ) )
    {
        var_2 = level._ID1374._ID23787._ID53281;

        for ( var_3 = _func_1DA( var_2 ); _func_02F( var_3 ); var_3 = _func_1BF( var_2, var_3 ) )
        {
            var_0 = var_2[var_3];
            _func_07F( var_0 );
            _func_07B( var_0, var_1 );
            level._ID1374._ID23787._ID53281[var_0] = undefined;
        }

        var_clear_1
        var_clear_0
    }
    else if ( _func_02F( level._ID1374._ID23787._ID53281[var_0] ) )
    {
        _func_07F( var_0 );
        _func_07B( var_0, var_1 );
        level._ID1374._ID23787._ID53281[var_0] = undefined;
    }
}

_ID44970( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = level._ID1374._ID23787._ID54266;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_0 == var_2 )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID23799( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( _func_02F( var_4 ) && _func_02F( var_5 ) && var_4 == var_5 )
    {
        var_4 = undefined;
        var_5 = undefined;
    }

    if ( _func_02F( var_0 ) && var_0 != "none" )
    {
        if ( var_1 == 0 )
            _unknown_02CD( var_0, var_4, 0.0 );
        else
        {
            _unknown_03E7( var_0 );
            _func_07D( var_0, var_1, 0.0 );

            if ( _unknown_0403( var_4 ) )
                _func_07D( var_4, var_1, 0.0 );
        }
    }

    if ( _func_02F( var_2 ) && var_2 != "none" )
    {
        if ( var_3 == 0 )
            _unknown_0309( var_2, var_5, 0.0 );
        else
        {
            _unknown_0420( var_2 );
            _func_07D( var_2, var_3, 0.0 );

            if ( _unknown_043C( var_5 ) )
                _func_07D( var_5, var_3, 0.0 );
        }
    }
}

_ID23802( var_0 )
{
    _func_07C( var_0 );
    level._ID1374._ID23787._ID9428 = undefined;
}

_ID23806( var_0 )
{
    _func_07E( var_0 );
}

_ID23807( var_0 )
{
    _func_07F( var_0 );
}

_ID23797( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
        _func_07A( var_0, var_1 );
    else
        _func_07A( var_0 );
}

_ID23809( var_0, var_1, var_2 )
{
    var_3 = 0.0;

    if ( _func_02F( var_2 ) )
        var_3 = var_2;

    _func_07A( var_0, var_3, var_1 );
}

_ID23798( var_0, var_1, var_2 )
{
    var_1 = _func_0EE( var_1, 0, 1 );
    var_3 = 0.0;

    if ( _func_02F( var_2 ) )
        var_3 = var_2;

    _func_07D( var_0, var_1, var_3 );
}

_ID23801( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
        _func_07B( var_0, var_1 );
    else
        _func_07B( var_0 );

    if ( _func_02F( level._ID1374._ID23787._ID9428 ) && level._ID1374._ID23787._ID9428 == var_0 )
        level._ID1374._ID23787._ID9428 = undefined;
}

_ID23796( var_0, var_1, var_2 )
{
    var_3 = 0.0;

    if ( _func_02F( var_2 ) )
        var_3 = var_2;

    _func_07A( var_0, var_3, 1.0, var_1 );
}

_ID23808( var_0, var_1 )
{
    var_2 = [];

    if ( _func_031( var_0 ) )
    {
        var_2[var_2.size] = var_0;
        var_2[var_2.size] = 0.0;
    }
    else
    {
        var_3 = var_0;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            var_2[var_2.size] = var_4;
            var_2[var_2.size] = 0.0;
        }

        var_clear_2
        var_clear_0
    }

    _unknown_04EE( "mm_mute", var_2, var_1 );
}

_ID23803( var_0 )
{
    if ( _func_02F( var_0 ) )
        _func_07B( "mm_mute", var_0 );
    else
        _func_07B( "mm_mute" );
}

_ID23810( var_0, var_1 )
{
    var_2 = [];
    var_2[var_2.size] = "set_all";
    var_2[var_2.size] = 0.0;

    if ( _func_031( var_0 ) )
    {
        var_2[var_2.size] = var_0;
        var_2[var_2.size] = 1.0;
    }
    else
    {
        var_3 = var_0;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];
            var_2[var_2.size] = var_4;
            var_2[var_2.size] = 1.0;
        }

        var_clear_2
        var_clear_0
    }

    _unknown_055F( "mm_solo", var_2, var_1 );
}

_ID23800( var_0 )
{
    if ( _func_02F( var_0 ) )
        _func_07B( "mm_solo", var_0 );
    else
        _func_07B( "mm_solo" );
}

_ID23813( var_0, var_1 )
{
    if ( !_func_02F( level._ID1374._ID23787._ID41974[var_0] ) )
    {
        _func_07A( var_0 );
        _func_07E( var_0 );
        level._ID1374._ID23787._ID41974[var_0] = var_0;
    }

    _unknown_0600( var_1 );
}

_ID46485( var_0 )
{
    if ( !_unknown_0532( var_0 ) )
        return 0;

    if ( !_func_02F( level._ID1374._ID23787._ID53281[var_0] ) )
    {
        _func_07A( var_0 );
        _func_07E( var_0 );
        level._ID1374._ID23787._ID53281[var_0] = var_0;
    }

    return 1;
}

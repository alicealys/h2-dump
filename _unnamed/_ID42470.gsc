// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34390()
{
    level._ID1374._ID36658 = _func_1A5();
    level._ID1374._ID36658._ID24574 = _func_1A5();
    level._ID1374._ID36658._ID24574._ID9421 = _unknown_0156();
    level._ID1374._ID36658._ID24574._ID28470 = _unknown_0165();
    level._ID1374._ID36658._ID2841 = _func_1A5();
    level._ID1374._ID36658._ID2841._ID9421 = _unknown_017F();
    level._ID1374._ID36658._ID2841._ID28470 = _unknown_018E();
}

_ID34393( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_6 = 1.0;

    if ( _func_02F( var_1 ) )
        var_6 = _func_0E6( var_1, 0 );

    var_7 = 1.0;

    if ( _func_02F( var_4 ) )
        var_7 = _func_0E6( var_4, 0 );

    _unknown_01F9( level._ID1374._ID36658._ID2841._ID28470, level._ID1374._ID36658._ID2841._ID9421._ID680, level._ID1374._ID36658._ID2841._ID9421._ID40762, level._ID1374._ID36658._ID2841._ID9421._ID13788 );
    _unknown_020C( level._ID1374._ID36658._ID2841._ID9421, var_0, var_7, var_6 );
    _func_12B( var_0, var_6, var_7 );
}

_ID34392( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_6 = 1.0;

    if ( _func_02F( var_1 ) )
        var_6 = _func_0E6( var_1, 0 );

    var_7 = 1.0;

    if ( _func_02F( var_2 ) )
        var_7 = var_2;

    var_8 = 1.0;

    if ( _func_02F( var_3 ) )
        var_8 = _func_0E6( var_3, 0 );

    _unknown_0286( level._ID1374._ID36658._ID24574._ID28470, level._ID1374._ID36658._ID24574._ID9421._ID680, level._ID1374._ID36658._ID24574._ID9421._ID40762, level._ID1374._ID36658._ID24574._ID9421._ID13788 );
    _unknown_0298( level._ID1374._ID36658._ID24574._ID9421, var_0, var_8, var_6 );

    if ( _func_02F( var_4 ) )
    {
        _func_078( var_7, var_4 );
        _func_077( var_0, var_6, var_8, 0 );
    }
    else
        _func_077( var_0, var_6, var_8 );
}

_ID34395( var_0, var_1 )
{
    if ( var_0 != "none" )
    {
        if ( !_func_1D0( var_0 ) )
            return;

        var_3 = 1.0;

        if ( _func_02F( var_1 ) )
            var_3 = _func_0E6( var_1, 0 );

        if ( level._ID1374._ID36658._ID2841._ID9421._ID680 == var_0 )
        {
            level._ID1374._ID36658._ID2841._ID9421 = level._ID1374._ID36658._ID2841._ID28470;
            _unknown_031D( level._ID1374._ID36658._ID2841._ID28470 );
        }
        else if ( level._ID1374._ID36658._ID2841._ID28470._ID680 == var_0 )
            _unknown_0342( level._ID1374._ID36658._ID2841._ID28470 );

        _func_14B( var_3, var_0 );
    }
}

_ID34397( var_0, var_1 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_3 = 1.0;

    if ( _func_02F( var_1 ) )
        var_3 = _func_0E6( var_1, 0 );

    if ( level._ID1374._ID36658._ID24574._ID9421._ID680 == var_0 )
    {
        level._ID1374._ID36658._ID24574._ID9421 = level._ID1374._ID36658._ID24574._ID28470;
        _unknown_039A( level._ID1374._ID36658._ID24574._ID28470 );
    }
    else if ( level._ID1374._ID36658._ID2841._ID28470._ID680 == var_0 )
        _unknown_03BF( level._ID1374._ID36658._ID24574._ID28470 );

    _func_078( var_3, var_0 );
}

_ID34394( var_0 )
{
    var_1 = 1.0;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    _func_14B( var_1 );
}

_ID34396( var_0 )
{
    var_1 = 1.0;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    _unknown_03F5( level._ID1374._ID36658._ID24574._ID9421 );
    _unknown_0405( level._ID1374._ID36658._ID24574._ID28470 );
    _func_078( var_1 );
}

_ID34391( var_0 )
{
    var_1 = 0.009;

    if ( var_0.size == 1 )
        _unknown_0424( level._ID1374._ID36658._ID2841._ID9421, var_0[0]._ID2521, var_0[0]._ID40762, var_0[0]._ID13788 );
    else if ( var_0.size == 2 )
    {
        _unknown_044E( level._ID1374._ID36658._ID2841._ID28470, var_0[0]._ID2521, var_0[0]._ID40762, var_0[0]._ID13788 );
        _unknown_046F( level._ID1374._ID36658._ID2841._ID9421, var_0[1]._ID2521, var_0[1]._ID40762, var_0[1]._ID13788 );
    }

    for ( var_6 = 0; var_6 < var_0.size; var_6++ )
    {
        var_7 = var_0[var_6]._ID2521;
        var_8 = _func_0E6( var_0[var_6]._ID40762, 0 );
        var_9 = _func_0EE( var_0[var_6]._ID13788, 0, 1 );

        if ( var_7 != "none" )
        {
            if ( !_func_1D0( var_7 ) )
                continue;

            if ( var_8 < var_1 )
            {
                _func_14B( var_9, var_7 );
                continue;
            }

            _func_12B( var_7, var_9, var_8, 0 );
        }
    }
}

_ID34388()
{
    return level._ID1374._ID36658._ID2841._ID9421._ID680;
}

_ID34389()
{
    return level._ID1374._ID36658._ID24574._ID9421._ID680;
}

_ID34460( var_0, var_1, var_2, var_3 )
{
    var_0._ID680 = var_1;
    var_0._ID40762 = var_2;
    var_0._ID13788 = var_3;
}

_ID34459()
{
    var_0 = _func_1A5();
    var_0._ID680 = "";
    var_0._ID40762 = 0.0;
    var_0._ID13788 = 0.0;
    return var_0;
}

_ID34458( var_0 )
{
    var_0._ID680 = "";
    var_0._ID40762 = 0.0;
    var_0._ID13788 = 0.0;
}

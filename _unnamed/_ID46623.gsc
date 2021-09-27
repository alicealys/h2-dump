// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level thread _unknown_0017( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID51576( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 12;
    else if ( var_0 < 7 )
        var_0 = 7;

    if ( !_func_02F( var_1 ) )
        var_1 = 150;

    if ( !_func_02F( var_2 ) )
        var_2 = 100;

    if ( !_func_02F( var_3 ) )
        var_3 = 100;

    if ( !_func_02F( var_5 ) )
        var_6 = "default";
    else
        var_6 = var_5;

    var_7 = level._ID794 _meth_809C() + ( 0, 8, 2 );
    var_8 = 320;
    var_9 = var_1 + _func_0B7( var_2 );
    var_10 = var_3;
    level._ID794 _meth_80A1( "weapons_rocket_explosion" );
    wait 0.25;
    _func_18F( var_7, var_8, var_9, var_10 );
    _func_192( 0.75, 2, var_7, 2250 );

    if ( _func_1A7( level._ID794 ) )
    {
        level._ID794 _meth_8121( 0 );
        level._ID794 _meth_8122( 0 );
        level._ID794 _meth_8123( 1 );
        wait 0.15;
        level._ID794 _meth_81BB( 127, level._ID794._ID740 );
        level._ID794 _meth_818E( var_6, var_0 );

        if ( !_func_02F( var_4 ) )
            level._ID794 thread _unknown_0124( var_0 );

        wait 1.5;
        level._ID794 _meth_8121( 1 );
        level._ID794 _meth_8122( 1 );
    }
}

_ID50149( var_0 )
{
    self._ID33728 = 1;
    self._ID511 = 1;
    self notify( "player is shell shocked" );
    self endon( "player is shell shocked" );
    wait(var_0 - 1);
    self._ID33728 = 0;
    self._ID511 = 0;
}

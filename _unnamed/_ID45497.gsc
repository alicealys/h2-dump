// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50002()
{
    var_0 = [];

    if ( _func_02F( var_0[level._ID912] ) )
        thread _unknown_0017( var_0[level._ID912] );
}

_ID45769( var_0 )
{
    var_1 = 0;
    var_2 = 0;

    for (;;)
    {
        var_3 = level._ID794 _meth_831C();
        var_4 = level._ID794 _meth_834B();
        var_5 = var_4 == 1.0 || var_4 > var_1;
        var_6 = _func_02F( var_3 ) && var_3 == "dragunov" && var_5;

        if ( var_6 && !var_2 )
            level._ID794 _meth_83CE( var_0, 0 );
        else if ( !var_6 && var_2 )
            level._ID794 _meth_83CF( 0 );

        var_2 = var_6;
        var_1 = var_4;
        wait 0.05;
    }
}

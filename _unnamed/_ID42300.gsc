// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID16944( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( level._ID52845[var_0] ) )
    {
        var_5 = level._ID52845[var_0];
        var_0 = var_5["targetname"];
        var_1 = var_5["fxFile"];
        var_2 = var_5["delay"];
        var_3 = var_5["fxName"];
        var_4 = var_5["soundalias"];
    }

    if ( !_func_02F( level._ID1426 ) )
        level._ID1426 = [];

    if ( !_func_02F( var_3 ) )
        var_3 = var_1;

    level._ID16944[var_0] = var_3;
    var_6 = _ID42407::_ID16641( var_0, "targetname" );

    if ( !_func_02F( var_6 ) )
        return;

    if ( !var_6.size )
        return;

    if ( !_func_02F( var_2 ) )
        var_2 = _func_0BA( -20, -15 );

    var_7 = var_6;

    for ( var_11 = _func_1DA( var_7 ); _func_02F( var_11 ); var_11 = _func_1BF( var_7, var_11 ) )
    {
        var_8 = var_7[var_11];

        if ( !_func_02F( level._ID1426[var_3] ) )
            level._ID1426[var_3] = _func_155( var_1 );

        if ( !_func_02F( var_8._ID65 ) )
            var_8._ID65 = ( 0, 0, 0 );

        var_9 = _ID42237::_ID9265( var_3 );
        var_9._ID40005["origin"] = var_8._ID740;
        var_9._ID40005["angles"] = var_8._ID65;
        var_9._ID40005["fxid"] = var_3;
        var_9._ID40005["delay"] = var_2;

        if ( _func_02F( var_4 ) )
        {
            var_9._ID40005["soundalias"] = var_4;
            var_9._ID40005["stopable"] = 1;
        }

        if ( !_func_02F( var_8._ID922 ) )
            continue;

        var_10 = var_8._ID922;

        if ( !_func_02F( level._ID1478[var_10] ) )
            level._ID1478[var_10] = [];

        level._ID1478[var_10][level._ID1478[var_10].size] = var_9;
    }

    var_clear_4
    var_clear_0
}

_ID521()
{
    if ( !_func_02F( level._ID16944 ) )
        level._ID16944 = [];

    level._ID1478 = [];

    if ( !_func_02F( level._ID52845 ) )
        level._ID52845 = [];
}

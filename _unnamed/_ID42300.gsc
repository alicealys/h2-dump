// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID16944( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( level._ID52845[var_0] ) )
    {
        var_5 = level._ID52845[var_0];
        var_0 = var_5["targetname"];
        var_1 = var_5["fxFile"];
        var_2 = var_5["delay"];
        var_3 = var_5["fxName"];
        var_4 = var_5["soundalias"];
    }

    if ( !isdefined( level._ID1426 ) )
        level._ID1426 = [];

    if ( !isdefined( var_3 ) )
        var_3 = var_1;

    level._ID16944[var_0] = var_3;
    var_6 = _ID42407::_ID16641( var_0, "targetname" );

    if ( !isdefined( var_6 ) )
        return;

    if ( !var_6.size )
        return;

    if ( !isdefined( var_2 ) )
        var_2 = randomfloatrange( -20, -15 );

    foreach ( var_8 in var_6 )
    {
        if ( !isdefined( level._ID1426[var_3] ) )
            level._ID1426[var_3] = loadfx( var_1 );

        if ( !isdefined( var_8._ID65 ) )
            var_8._ID65 = ( 0, 0, 0 );

        var_9 = _ID42237::_ID9265( var_3 );
        var_9._ID40005["origin"] = var_8._ID740;
        var_9._ID40005["angles"] = var_8._ID65;
        var_9._ID40005["fxid"] = var_3;
        var_9._ID40005["delay"] = var_2;

        if ( isdefined( var_4 ) )
        {
            var_9._ID40005["soundalias"] = var_4;
            var_9._ID40005["stopable"] = 1;
        }

        if ( !isdefined( var_8._ID922 ) )
            continue;

        var_10 = var_8._ID922;

        if ( !isdefined( level._ID1478[var_10] ) )
            level._ID1478[var_10] = [];

        level._ID1478[var_10][level._ID1478[var_10].size] = var_9;
    }
}

_ID521()
{
    if ( !isdefined( level._ID16944 ) )
        level._ID16944 = [];

    level._ID1478 = [];

    if ( !isdefined( level._ID52845 ) )
        level._ID52845 = [];
}

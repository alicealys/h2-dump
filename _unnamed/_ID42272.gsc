// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID33575( var_0, var_1 )
{
    level._ID23670 = var_0;

    if ( !isdefined( level._ID1512 ) && !isdefined( var_1 ) )
    {

    }

    if ( !isdefined( var_1 ) )
        var_1 = "minimap_corner";

    var_2 = getdvarfloat( "scr_requiredMapAspectRatio", 1 );
    var_3 = getentarray( var_1, "targetname" );

    if ( var_3.size != 2 )
        return;

    var_4 = ( var_3[0]._ID740[0], var_3[0]._ID740[1], 0 );
    var_5 = ( var_3[1]._ID740[0], var_3[1]._ID740[1], 0 );
    var_6 = var_5 - var_4;
    var_7 = ( cos( getnorthyaw() ), sin( getnorthyaw() ), 0 );
    var_8 = ( 0 - var_7[1], var_7[0], 0 );

    if ( vectordot( var_6, var_8 ) > 0 )
    {
        if ( vectordot( var_6, var_7 ) > 0 )
        {
            var_9 = var_5;
            var_10 = var_4;
        }
        else
        {
            var_11 = _ID40049( var_7, vectordot( var_6, var_7 ) );
            var_9 = var_5 - var_11;
            var_10 = var_4 + var_11;
        }
    }
    else if ( vectordot( var_6, var_7 ) > 0 )
    {
        var_11 = _ID40049( var_7, vectordot( var_6, var_7 ) );
        var_9 = var_4 + var_11;
        var_10 = var_5 - var_11;
    }
    else
    {
        var_9 = var_4;
        var_10 = var_5;
    }

    if ( var_2 > 0 )
    {
        var_12 = vectordot( var_9 - var_10, var_7 );
        var_13 = vectordot( var_9 - var_10, var_8 );
        var_14 = var_13 / var_12;

        if ( var_14 < var_2 )
        {
            var_15 = var_2 / var_14;
            var_16 = _ID40049( var_8, var_13 * ( var_15 - 1 ) * 0.5 );
        }
        else
        {
            var_15 = var_14 / var_2;
            var_16 = _ID40049( var_7, var_12 * ( var_15 - 1 ) * 0.5 );
        }

        var_9 += var_16;
        var_10 -= var_16;
    }

    level._ID22915 = [];
    level._ID22915["top"] = var_9[1];
    level._ID22915["left"] = var_10[0];
    level._ID22915["bottom"] = var_10[1];
    level._ID22915["right"] = var_9[0];
    level._ID22919 = level._ID22915["right"] - level._ID22915["left"];
    level._ID22916 = level._ID22915["top"] - level._ID22915["bottom"];
    level._ID22931 = vectordot( var_9 - var_10, var_7 );
    setminimap( var_0, var_9[0], var_9[1], var_10[0], var_10[1] );
}

_ID40049( var_0, var_1 )
{
    return ( var_0[0] * var_1, var_0[1] * var_1, var_0[2] * var_1 );
}

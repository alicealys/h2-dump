// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24567()
{
    _ID2952();

    if ( !isdefined( level._ID1374 ) )
        level._ID1374 = spawnstruct();

    level._ID1374._ID24574 = spawnstruct();
    level._ID1374._ID24574._ID9398 = [];
    level._ID1374._ID24574._ID9423 = "";
    level._ID1374._ID24574._ID28474 = "";
    level._ID1374._ID24574._ID12453 = 0;
    level._ID1374._ID24574._ID13113 = [ [ 0.0, 0.5 ], [ 0.9, 1.0 ], [ 1.0, 1.0 ] ];
    thread _ID24594();
}

_ID24570( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !soundexists( var_0 ) )
        return;

    var_5 = undefined;
    var_6 = _ID24566();
    var_7 = _ID24591( var_0 );
    var_8 = var_7["fade_in_time"];

    if ( isdefined( var_1 ) )
        var_8 = var_1;

    var_9 = 2.0;

    if ( isdefined( var_6 ) )
    {
        if ( isdefined( var_2 ) )
            var_9 = var_2;
        else if ( isdefined( var_1 ) )
            var_9 = var_1;
        else if ( isdefined( var_6["fade_out_time"] ) )
            var_9 = var_6["fade_out_time"];
    }

    var_10 = var_7["volume"];

    if ( isdefined( var_3 ) )
        var_10 = var_3;

    _ID24595( var_7["name"], var_8, var_9, var_10, var_4 );
}

_ID24571( var_0 )
{
    var_1 = 3.0;

    if ( _ID24568() )
    {
        var_2 = _ID24593( level._ID1374._ID24574._ID9423 );
        var_1 = var_2["fade_out_time"];
    }

    if ( isdefined( var_0 ) )
        var_1 = var_0;

    _ID24596( var_1 );
}

_ID24568()
{
    return isdefined( level._ID1374._ID24574._ID9423 ) && level._ID1374._ID24574._ID9423 != "";
}

_ID24566()
{
    var_0 = undefined;

    if ( _ID24568() )
        var_0 = _ID24593( level._ID1374._ID24574._ID9423 );

    return var_0;
}

_ID24591( var_0 )
{
    var_1 = _ID24593( var_0 );

    if ( !isdefined( var_1 ) )
    {
        var_1 = [];
        var_1["alias"] = var_0;
        var_1["volume"] = 1.0;
        var_1["fade_in_time"] = 1.5;
        var_1["fade_out_time"] = 1.5;
        var_1["auto_mix"] = 0;
        var_1["name"] = var_0;
        _ID24590( var_1 );
    }

    return var_1;
}

_ID24595( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;

    if ( isdefined( var_4 ) )
        var_5 = var_4;

    if ( var_0 == level._ID1374._ID24574._ID9423 && !var_5 )
        return;
    else
    {
        var_6 = level._ID1374._ID24574._ID28474;
        var_7 = level._ID1374._ID24574._ID9423;
        level._ID1374._ID24574._ID28474 = level._ID1374._ID24574._ID9423;
        level._ID1374._ID24574._ID9423 = var_0;
        var_8 = _ID24593( level._ID1374._ID24574._ID9423 );
        var_9 = _ID24593( level._ID1374._ID24574._ID28474 );
        var_10 = undefined;

        if ( isdefined( var_9 ) )
            var_10 = var_9["alias"];

        _ID42470::_ID34392( var_8["alias"], var_1, var_2, var_3, var_10 );
    }
}

_ID24596( var_0 )
{
    _ID42470::_ID34396( var_0 );
}

_ID24592()
{
    return level._ID1374._ID24574._ID12453;
}

_ID24593( var_0 )
{
    return level._ID1374._ID24574._ID9398[var_0];
}

_ID24590( var_0 )
{
    level._ID1374._ID24574._ID9398[var_0["name"]] = var_0;
}

_ID24594()
{
    if ( _ID24592() )
    {
        var_0 = 1.0;

        for (;;)
        {
            wait(var_0);

            if ( _ID24592() )
            {
                var_1 = _ID42463::_ID3895();
                var_2 = _ID42463::_ID10396( var_1, level._ID1374._ID24574._ID13113 );
            }
        }
    }
}

_ID2952()
{
    level._ID1632._ID1362 = spawnstruct();
    level._ID1632._ID1362._ID9425 = 0;
    level._ID1632._ID1362._ID9429 = "";
    _ID42475::_ID34640( "ams_start", ::_ID2959 );
    _ID42475::_ID34640( "ams_stop", ::_ID2960 );
    _ID42475::_ID34640( "ams_set_state", ::_ID2958 );
    _ID42475::_ID34640( "ams_set_proxy_vehicle", ::_ID2957 );
    _ID42475::_ID34640( "ams_set_intensity", ::_ID2956 );
    _ID42471::_ID4518( "ams_intensity", ::_ID2953 );
    _ID42471::_ID4518( "ams_proxy_vehicle_speed", ::_ID2955 );
}

_ID2959( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID2961();
    var_4._ID28744 = _ID42471::_ID4503();
    var_5 = 3;
    var_6 = 3;

    if ( isdefined( var_0 ) && !isstring( var_0 ) )
    {
        var_7 = var_0;
        var_0 = var_7._ID28452;
        var_1 = var_7._ID19925;
        var_2 = var_7._ID13811;
        var_3 = var_7._ID13816;
        jump loc_440
    }

    _ID2958( var_1 );
    var_8 = spawnstruct();
    var_8._ID28452 = var_0;
    var_8._ID13811 = _ID42463::_ID3891( var_5, var_2 );
    var_8._ID13816 = _ID42463::_ID3891( var_6, var_3 );
    var_4._ID28744 _ID42475::_ID34575( "snd_start_vehicle", var_8 );
}

_ID2960( var_0 )
{
    var_0 = _ID42463::_ID3891( 3.0, var_0 );
    var_1 = _ID2962();
    var_1 _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
    var_1 delete();
}

_ID2951()
{
    return level._ID1632._ID1362._ID9429;
}

_ID2958( var_0 )
{
    level._ID1632._ID1362._ID9429 = var_0;
}

_ID2956( var_0 )
{
    var_1 = _ID2961();
    var_1._ID9425 = var_0;
}

_ID2957( var_0 )
{
    level._ID1632._ID1362._ID28744._ID40059 = var_0;
}

_ID2953()
{
    return _ID2961()._ID9425;
}

_ID2954()
{
    return level.player.health;
}

_ID2955()
{
    var_0 = 0;
    var_1 = _ID42471::_ID4557();
    var_2 = _ID2963();

    if ( isdefined( var_2 ) )
        var_0 = var_2 vehicle_getspeed();

    return var_0;
}

_ID2961()
{
    return level._ID1632._ID1362;
}

_ID2962()
{
    return level._ID1632._ID1362._ID28744;
}

_ID2963()
{
    var_0 = undefined;
    var_1 = _ID2962();

    if ( isdefined( var_1 ) )
        var_0 = level._ID1632._ID1362._ID28744._ID40059;

    return var_0;
}

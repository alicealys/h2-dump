// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24567()
{
    _unknown_00D6();

    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    level._ID1374._ID24574 = _func_1A5();
    level._ID1374._ID24574._ID9398 = [];
    level._ID1374._ID24574._ID9423 = "";
    level._ID1374._ID24574._ID28474 = "";
    level._ID1374._ID24574._ID12453 = 0;
    level._ID1374._ID24574._ID13113 = [ [ 0.0, 0.5 ], [ 0.9, 1.0 ], [ 1.0, 1.0 ] ];
    thread _unknown_0136();
}

_ID24570( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !_func_1D0( var_0 ) )
        return;

    var_5 = undefined;
    var_6 = _unknown_00EE();
    var_7 = _unknown_00FC( var_0 );
    var_8 = var_7["fade_in_time"];

    if ( _func_02F( var_1 ) )
        var_8 = var_1;

    var_9 = 2.0;

    if ( _func_02F( var_6 ) )
    {
        if ( _func_02F( var_2 ) )
            var_9 = var_2;
        else if ( _func_02F( var_1 ) )
            var_9 = var_1;
        else if ( _func_02F( var_6["fade_out_time"] ) )
            var_9 = var_6["fade_out_time"];
    }

    var_10 = var_7["volume"];

    if ( _func_02F( var_3 ) )
        var_10 = var_3;

    _unknown_0171( var_7["name"], var_8, var_9, var_10, var_4 );
}

_ID24571( var_0 )
{
    var_1 = 3.0;

    if ( _unknown_0156() )
    {
        var_2 = _unknown_01C0( level._ID1374._ID24574._ID9423 );
        var_1 = var_2["fade_out_time"];
    }

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    _unknown_01CF( var_1 );
}

_ID24568()
{
    return _func_02F( level._ID1374._ID24574._ID9423 ) && level._ID1374._ID24574._ID9423 != "";
}

_ID24566()
{
    var_0 = undefined;

    if ( _unknown_019D() )
        var_0 = _unknown_0208( level._ID1374._ID24574._ID9423 );

    return var_0;
}

_ID24591( var_0 )
{
    var_1 = _unknown_0211( var_0 );

    if ( !_func_02F( var_1 ) )
    {
        var_1 = [];
        var_1["alias"] = var_0;
        var_1["volume"] = 1.0;
        var_1["fade_in_time"] = 1.5;
        var_1["fade_out_time"] = 1.5;
        var_1["auto_mix"] = 0;
        var_1["name"] = var_0;
        _unknown_0250( var_1 );
    }

    return var_1;
}

_ID24595( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 0;

    if ( _func_02F( var_4 ) )
        var_5 = var_4;

    if ( var_0 == level._ID1374._ID24574._ID9423 && !var_5 )
        return;
    else
    {
        var_6 = level._ID1374._ID24574._ID28474;
        var_7 = level._ID1374._ID24574._ID9423;
        level._ID1374._ID24574._ID28474 = level._ID1374._ID24574._ID9423;
        level._ID1374._ID24574._ID9423 = var_0;
        var_8 = _unknown_02AD( level._ID1374._ID24574._ID9423 );
        var_9 = _unknown_02BA( level._ID1374._ID24574._ID28474 );
        var_10 = undefined;

        if ( _func_02F( var_9 ) )
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
    if ( _unknown_030D() )
    {
        var_0 = 1.0;

        for (;;)
        {
            wait(var_0);

            if ( _unknown_0319() )
            {
                var_1 = _ID42463::_ID3895();
                var_2 = _ID42463::_ID10396( var_1, level._ID1374._ID24574._ID13113 );
            }
        }
    }
}

_ID2952()
{
    level._ID1632._ID1362 = _func_1A5();
    level._ID1632._ID1362._ID9425 = 0;
    level._ID1632._ID1362._ID9429 = "";
    _ID42475::_ID34640( "ams_start", ::_unknown_0398 );
    _ID42475::_ID34640( "ams_stop", ::_unknown_03C9 );
    _ID42475::_ID34640( "ams_set_state", ::_unknown_03E2 );
    _ID42475::_ID34640( "ams_set_proxy_vehicle", ::_unknown_03F6 );
    _ID42475::_ID34640( "ams_set_intensity", ::_unknown_03FD );
    _ID42471::_ID4518( "ams_intensity", ::_unknown_0412 );
    _ID42471::_ID4518( "ams_proxy_vehicle_speed", ::_unknown_0422 );
}

_ID2959( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_043C();
    var_4._ID28744 = _ID42471::_ID4503();
    var_5 = 3;
    var_6 = 3;

    if ( _func_02F( var_0 ) && !_func_031( var_0 ) )
    {
        var_7 = var_0;
        var_0 = var_7._ID28452;
        var_1 = var_7._ID19925;
        var_2 = var_7._ID13811;
        var_3 = var_7._ID13816;
        jump loc_440
    }

    _unknown_045F( var_1 );
    var_8 = _func_1A5();
    var_8._ID28452 = var_0;
    var_8._ID13811 = _ID42463::_ID3891( var_5, var_2 );
    var_8._ID13816 = _ID42463::_ID3891( var_6, var_3 );
    var_4._ID28744 _ID42475::_ID34575( "snd_start_vehicle", var_8 );
}

_ID2960( var_0 )
{
    var_0 = _ID42463::_ID3891( 3.0, var_0 );
    var_1 = _unknown_04B7();
    var_1 _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
    var_1 _meth_80B7();
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
    var_1 = _unknown_04E0();
    var_1._ID9425 = var_0;
}

_ID2957( var_0 )
{
    level._ID1632._ID1362._ID28744._ID40059 = var_0;
}

_ID2953()
{
    return _unknown_04FB()._ID9425;
}

_ID2954()
{
    return level._ID794._ID486;
}

_ID2955()
{
    var_0 = 0;
    var_1 = _ID42471::_ID4557();
    var_2 = _unknown_0518();

    if ( _func_02F( var_2 ) )
        var_0 = var_2 _meth_8290();

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
    var_1 = _ID2963();

    if ( _func_02F( var_1 ) )
        var_0 = level._ID1632._ID1362._ID28744._ID40059;

    return var_0;
}

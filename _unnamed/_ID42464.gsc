// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID9657()
{
    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    if ( !_func_02F( level._ID1374._ID9654 ) )
    {
        level._ID1374._ID9654 = _func_1A5();
        level._ID1374._ID9654._ID22648 = 0;
        level._ID1374._ID9654._ID34190 = 0;
        level._ID1374._ID9654._ID25756 = 0;
        level._ID1374._ID9654._ID32160 = 1;
        level._ID1374._ID9654._ID809 = [];
        level._ID1374._ID9654._ID809["zone"] = [];
        level._ID1374._ID9654._ID809["free"] = [];
        level._ID1374._ID9654._ID8409 = [];
        level._ID1374._ID9654._ID6663 = [];
        level._ID1374._ID9654._ID28450 = [];
        level._ID1374._ID9654._ID8408 = [];
        level._ID1374._ID9654._ID22636 = [];
        level._ID1374._ID9654._ID39914 = 0;
        level._ID1374._ID9654._ID13081 = 0;
        level._ID1374._ID9654._ID22640 = 0;
        level._ID1374._ID9654._ID23047 = 15;
    }
}

_ID9663( var_0 )
{
    level._ID1374._ID9654._ID23047 = var_0;
}

_ID9674()
{
    level._ID1374._ID9654._ID39914 = 1;
}

_ID9675( var_0, var_1 )
{
    _unknown_02A6( "zone", var_0, undefined, var_1 );
}

_ID9666( var_0, var_1, var_2, var_3 )
{
    _unknown_02BB( "free", var_0, var_1, var_2, undefined, undefined, undefined, var_3 );
}

_ID9667( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( _func_02F( var_3 ) )
        thread _unknown_0194( var_0, var_1, var_2, var_3, var_4, var_5 );
    else
        _unknown_02E2( "free", var_0, var_2, undefined, var_1, undefined, undefined, var_5 );
}

_ID9671( var_0, var_1, var_2 )
{
    if ( _func_031( var_1 ) )
        var_3 = var_1;
    else
        var_3 = var_0;

    level notify( var_3 + "dist_monitor_stop" );
    _unknown_0236( var_3, var_2 );
}

_ID9659( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _func_1A5();
    var_5._ID680 = var_0;
    var_5._ID28188 = var_1;
    var_5._ID578 = var_2;
    var_5._ID23589 = var_3;
    var_5._ID23039 = var_4;
    return var_5;
}

_ID9696( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( _func_031( var_2 ) )
        level endon( var_2 + "dist_monitor_stop" );
    else
        level endon( var_0 + "dist_monitor_stop" );

    var_6 = 1.0;

    if ( _func_02F( var_4 ) )
        var_6 = var_4;

    var_7 = 1;

    for (;;)
    {
        var_8 = _func_0F3( level._ID794._ID740, var_1 );

        if ( var_8 < var_3 )
        {
            if ( var_7 )
            {
                var_7 = 0;
                _unknown_0381( "free", var_0, var_2, undefined, var_1, undefined, undefined, var_5 );
            }
        }
        else if ( !var_7 )
        {
            var_7 = 1;

            if ( _func_02F( var_2 ) )
                _unknown_040F( "free", var_2, var_6 );
            else
                _unknown_041D( "free", var_0, var_6 );
        }

        wait 1;
    }
}

_ID9668( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "attach";

    if ( _func_02F( var_3 ) )
        var_5 = var_3;

    _unknown_03D0( "free", var_0, var_2, var_4, undefined, var_1, var_5 );
}

_ID9669( var_0, var_1 )
{
    var_2 = 2.0;

    if ( _func_02F( var_0 ) )
        var_2 = var_0;

    var_3 = "all";

    if ( _func_02F( var_1 ) )
        var_3 = var_1;

    if ( var_3 == "free" || var_3 == "all" )
    {
        var_4 = level._ID1374._ID9654._ID809["free"];

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            _unknown_0351( var_6, var_2 );
        }

        var_clear_2
    }

    if ( var_3 == "zone" || var_3 == "all" )
    {
        var_7 = level._ID1374._ID9654._ID809["zone"];

        for ( var_6 = _func_1DA( var_7 ); _func_02F( var_6 ); var_6 = _func_1BF( var_7, var_6 ) )
        {
            var_5 = var_7[var_6];
            _unknown_0389( var_6, var_2 );
        }

        var_clear_2
    }
}

_ID9672( var_0 )
{
    _unknown_04E5( "zone", undefined, var_0 );
}

_ID9676( var_0, var_1 )
{
    _unknown_04F4( "zone", var_0, var_1 );
}

_ID9670( var_0, var_1 )
{
    _unknown_0502( "free", var_0, var_1 );
}

_ID9662( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_0 ) && var_0 != "none" )
    {
        if ( var_1 == 0 )
            _unknown_03DE( var_0, 2.0 );
        else
            _unknown_0349( var_0, var_1 );
    }

    if ( _func_02F( var_2 ) && var_2 != "none" )
    {
        if ( var_3 == 0 )
            _unknown_0403( var_2, 2.0 );
        else
            _unknown_036B( var_2, var_3 );
    }
}

_ID9664( var_0, var_1 )
{
    if ( !_func_02F( level._ID1374._ID9654._ID6638 ) )
        level._ID1374._ID9654._ID6638 = [];

    level._ID1374._ID9654._ID6638[var_0] = var_1;
}

_ID9665( var_0, var_1 )
{
    var_2 = [];

    if ( _func_02F( level._ID1374._ID9654._ID28450[var_0] ) )
        var_2 = level._ID1374._ID9654._ID28450[var_0];
    else if ( level._ID1374._ID9654._ID39914 )
    {
        var_2 = _unknown_0DAD( var_0, 1 );
        level._ID1374._ID9654._ID28450[var_0] = var_2;
    }
    else
    {
        var_2 = _unknown_0DC2( var_0, 0 );
        level._ID1374._ID9654._ID28450[var_0] = var_2;
    }

    var_3 = var_2["components"];

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _unknown_04C6( var_4, var_1 );
    }

    var_clear_2
    var_clear_0
}

_ID9661( var_0, var_1 )
{
    var_2 = "free";

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    if ( _func_02F( level._ID1374._ID9654._ID809[var_2][var_0] ) )
        level._ID1374._ID9654._ID809[var_2][var_0]["paused"] = 1;
}

_ID9673( var_0, var_1 )
{
    var_2 = "free";

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    if ( _func_02F( level._ID1374._ID9654._ID809[var_2][var_0] ) )
    {
        level._ID1374._ID9654._ID809[var_2][var_0]["paused"] = 0;
        level notify( var_2 + "_" + var_0 + "_event" );
    }
}

_ID9660( var_0, var_1 )
{
    var_2 = "free";

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    if ( _func_02F( level._ID1374._ID9654._ID809[var_2][var_0] ) )
        level notify( var_2 + "_" + var_0 + "_event" );
}

_ID9658( var_0, var_1, var_2, var_3 )
{
    var_4 = "free";

    if ( _func_02F( level._ID1374._ID9654._ID809[var_4][var_0] ) && _func_02F( level._ID1374._ID9654._ID809[var_4][var_1] ) )
    {
        var_2 = _func_0C4( var_2, var_3 );
        var_3 = _func_0E6( var_2, var_3 );

        if ( !_func_02F( level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"] ) )
            level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"] = [];

        var_5 = level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"].size;
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5] = _func_1A5();
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5]._ID680 = var_1;
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5]._ID23589 = _func_0E6( var_2, 0 );
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5]._ID23039 = _func_0E6( var_3, 0 );
    }
}

_ID9706( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = 1.0;

    if ( _func_02F( var_3 ) )
        var_8 = var_3;

    var_9 = var_1;

    if ( _func_031( var_2 ) )
        var_9 = var_2;

    if ( !_func_02F( level._ID1374._ID9654._ID809[var_0][var_9] ) )
    {
        var_10 = _unknown_0FAD( var_1 );

        if ( !_func_02F( var_10 ) )
            return;

        level._ID1374._ID9654._ID809[var_0][var_9] = var_10;
        level._ID1374._ID9654._ID809[var_0][var_9]["prob_scale"] = var_8;
        level._ID1374._ID9654._ID809[var_0][var_9]["paused"] = 0;

        if ( _func_02F( var_7 ) )
            _unknown_07B1( var_9, var_7 );

        if ( _func_02F( var_5 ) )
        {
            level._ID1374._ID9654._ID809[var_0][var_9]["entity"] = var_5;
            level._ID1374._ID9654._ID809[var_0][var_9]["mode"] = var_6;
        }

        thread _unknown_0D2D( var_0, var_9, var_4 );
    }
    else if ( level._ID1374._ID9654._ID809[var_0][var_9]["prob_scale"] != var_8 )
        level._ID1374._ID9654._ID809[var_0][var_9]["prob_scale"] = var_8;
}

_ID9705( var_0, var_1 )
{
    if ( _func_0D3( var_1 ) )
    {
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            _unknown_07F3( "free", var_3._ID680, var_3._ID578, undefined, var_3._ID28188 );
            _unknown_0782( var_3._ID578 );
            _unknown_07C8( var_0, var_3._ID578, var_3._ID23589, var_3._ID23039 );
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        _unknown_082C( "free", var_1._ID680, var_1._ID578, undefined, var_1._ID28188 );
        _unknown_07BA( var_1._ID578 );
        _unknown_0801( var_0, var_1._ID578, var_1._ID23589, var_1._ID23039 );
    }
}

_ID9707( var_0, var_1, var_2 )
{
    var_3 = 2.0;

    if ( _func_02F( var_2 ) )
        var_3 = var_2;

    if ( var_0 == "zone" && !_func_02F( var_1 ) )
    {
        if ( _func_02F( level._ID1374._ID9654._ID809[var_0] ) )
        {
            var_4 = level._ID1374._ID9654._ID809[var_0];

            for ( var_1 = _func_1DA( var_4 ); _func_02F( var_1 ); var_1 = _func_1BF( var_4, var_1 ) )
            {
                var_5 = var_4[var_1];
                level._ID1374._ID9654._ID809[var_0][var_1]["fade"] = var_3;
                level notify( var_0 + "_" + var_1 + "_stop" );
            }

            var_clear_1
        }
    }
    else if ( _func_02F( level._ID1374._ID9654._ID809[var_0][var_1] ) )
    {
        level._ID1374._ID9654._ID809[var_0][var_1]["fade"] = var_3;
        level notify( var_0 + "_" + var_1 + "_stop" );
    }
}

_ID9710( var_0, var_1, var_2 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_3 = level._ID1374._ID9654._ID809[var_0][var_1]["event_time"];
    var_4 = _func_0C4( var_3[0], var_3[1] );
    var_5 = _func_0E6( var_3[0], var_3[1] );
    var_6 = undefined;
    var_7 = undefined;

    if ( _func_02F( level._ID1374._ID9654._ID809[var_0][var_1]["first_event"] ) )
    {
        var_3 = level._ID1374._ID9654._ID809[var_0][var_1]["first_event"];
        var_6 = _func_0C4( var_3[0], var_3[1] );
        var_7 = _func_0E6( var_3[0], var_3[1] );
    }

    var_8 = undefined;

    if ( _func_02F( var_6 ) )
        var_8 = _func_0BA( var_6, var_7 );
    else
        var_8 = _func_0BA( var_4, var_5 );

    for (;;)
    {
        if ( !level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
            wait(var_8);

        if ( level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
            level waittill( var_0 + "_" + var_1 + "_event" );

        var_9 = _unknown_0E48( var_0, var_1 );

        if ( !_func_02F( var_9 ) )
            continue;

        var_10 = _unknown_0B15( var_0, var_1, var_9, var_1 );

        if ( var_10._ID39974 )
        {
            if ( var_10._ID39971 && !_func_02F( var_10._ID13016 ) )
            {
                level notify( var_0 + "_" + var_1 + "_stop" );
                break;
            }

            var_11 = _unknown_0C28( var_10, var_1, var_9 );

            if ( var_11._ID36783 )
            {
                if ( level._ID1374._ID9654._ID32160 )
                    _unknown_0D53( var_0, var_1, var_11 );
                else
                    thread _unknown_0D5E( var_0, var_1, var_11 );
            }
        }
        else
            _ID42463::_ID4144( "Dynamic ambience is playing back serially and using components which do not define oneshots or loops" );

        var_8 = _func_0BA( var_4, var_5 );
    }
}

_ID9704( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_2["single_loops"] ) )
    {
        var_5 = var_2["single_loops"];

        for ( var_9 = _func_1DA( var_5 ); _func_02F( var_9 ); var_9 = _func_1BF( var_5, var_9 ) )
        {
            var_6 = var_5[var_9];
            var_7 = undefined;

            if ( _func_02F( var_4 ) )
                var_7 = _func_06A( "script_origin", var_4._ID740 );
            else if ( _func_02F( var_3 ) )
                var_7 = _func_06A( "script_origin", var_3 );
            else
                var_7 = _func_06A( "script_origin", level._ID794._ID740 );

            level._ID1374._ID9654._ID22640++;
            var_7 _meth_807C( var_6 );

            if ( _func_02F( var_4 ) )
                var_7 _meth_8053( var_4 );

            var_8 = level._ID1374._ID9654._ID34190;
            level._ID1374._ID9654._ID809[var_0][var_1]["single_loops"][var_8] = var_7;
            level._ID1374._ID9654._ID34190++;
        }

        var_clear_4
        var_clear_0
    }
}

_ID9683( var_0, var_1, var_2 )
{
    var_3 = _func_1A5();
    var_3._ID39974 = 0;

    if ( !_func_02F( var_2["single_loops"] ) )
        var_3._ID34191 = 0;
    else
        var_3._ID34191 = 1;

    if ( _func_02F( var_2["oneshots"] ) || _func_02F( var_2["loops"] ) )
    {
        var_3._ID39974 = 1;

        if ( !_func_02F( var_2["radius"] ) )
            var_2["radius"] = [ 0.0, 0.01 ];

        var_3._ID23605 = _func_0C4( var_2["radius"][0], var_2["radius"][1] );
        var_3._ID23061 = _func_0E6( var_2["radius"][0], var_2["radius"][1] );

        if ( _func_0D3( var_2["event_time"] ) )
        {
            var_3._ID641 = _func_0C4( var_2["event_time"][0], var_2["event_time"][1] );
            var_3._ID624 = _func_0E6( var_2["event_time"][0], var_2["event_time"][1] );
        }

        if ( _func_0D3( var_2["first_event"] ) )
        {
            var_3._ID14349 = 1;
            var_3._ID14351 = _func_0C4( var_2["first_event"][0], var_2["first_event"][1] );
            var_3._ID14350 = _func_0E6( var_2["first_event"][0], var_2["first_event"][1] );
        }

        if ( _func_0D3( var_2["pitch"] ) )
        {
            var_3._ID23601 = _func_0C4( var_2["pitch"][0], var_2["pitch"][1] );
            var_3._ID23055 = _func_0E6( var_2["pitch"][0], var_2["pitch"][1] );
        }

        if ( _func_0D3( var_2["travel_time"] ) )
        {
            var_3._ID23613 = _func_0C4( var_2["travel_time"][0], var_2["travel_time"][1] );
            var_3._ID23069 = _func_0E6( var_2["travel_time"][0], var_2["travel_time"][1] );

            if ( _func_0D3( var_2["delta"] ) )
            {
                var_3._ID23590 = _func_0C4( var_2["delta"][0], var_2["delta"][1] );
                var_3._ID23040 = _func_0E6( var_2["delta"][0], var_2["delta"][1] );
            }
            else
            {
                var_3._ID23591 = _func_0C4( var_2["delta_angle"][0], var_2["delta_angle"][1] );
                var_3._ID23041 = _func_0E6( var_2["delta_angle"][0], var_2["delta_angle"][1] );
            }
        }

        if ( _func_0D3( var_2["pitch_time"] ) )
        {
            var_3._ID23603 = _func_0C4( var_2["pitch_time"][0], var_2["pitch_time"][1] );
            var_3._ID23057 = _func_0E6( var_2["pitch_time"][0], var_2["pitch_time"][1] );
        }

        if ( _func_02F( var_2["cone"] ) )
        {
            var_3._ID23612 = _func_0C4( var_2["cone"][0], var_2["cone"][1] );
            var_3._ID23068 = _func_0E6( var_2["cone"][0], var_2["cone"][1] );
        }
    }
    else
        var_3._ID39974 = 0;

    var_3._ID39971 = 0;

    if ( _func_02F( level._ID1374._ID9654._ID809[var_0][var_1]["entity"] ) )
    {
        var_3._ID39971 = 1;
        var_3._ID13016 = level._ID1374._ID9654._ID809[var_0][var_1]["entity"];
        var_3._ID23864 = level._ID1374._ID9654._ID809[var_0][var_1]["mode"];
    }

    var_3._ID28637 = level._ID1374._ID9654._ID809[var_0][var_1]["prob_scale"];
    return var_3;
}

_ID9697( var_0, var_1, var_2 )
{
    for (;;)
    {
        if ( !_func_02F( var_2 ) )
            level notify( var_0 + "_" + var_1 + "_stop" );

        wait 1.0;
    }
}

_ID9680( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A5();

    if ( _func_0B8( 1.0 ) < var_0._ID28637 )
    {
        var_4._ID36783 = 1;

        if ( _func_02F( level._ID1374._ID9654._ID6663[var_1] ) )
            thread [[ level._ID1374._ID9654._ID6638[var_1] ]]();
        else
        {
            var_4._ID2521 = _unknown_1293( var_2 );
            var_4._ID28188 = var_3;
            var_4._ID13016 = var_0._ID13016;
            var_4._ID23864 = var_0._ID23864;
            var_5 = _func_0BA( var_0._ID23605, var_0._ID23061 );
            var_6 = undefined;

            if ( _func_02F( var_0._ID23612 ) )
                var_6 = _func_0BA( var_0._ID23612, var_0._ID23068 );
            else
                var_6 = _func_0BA( 0, 360 );

            var_7 = var_5 * _func_0BC( var_6 );
            var_8 = var_5 * _func_0BB( var_6 );
            var_4._ID35909 = ( var_7, var_8, 0 );

            if ( _func_02F( var_0._ID23613 ) )
            {
                var_4._ID38699 = _func_0BA( var_0._ID23613, var_0._ID23069 );

                if ( _func_02F( var_0._ID23590 ) )
                {
                    var_5 = _func_0BA( var_0._ID23590, var_0._ID23040 );
                    var_6 = _func_0BA( 0, 360 );
                    var_7 = var_5 * _func_0BC( var_6 );
                    var_8 = var_5 * _func_0BB( var_6 );
                    var_4._ID12610 = var_4._ID35909 + ( var_7, var_8, 0 );
                }
                else
                {
                    var_9 = _func_0BA( var_0._ID23591, var_0._ID23041 );
                    var_9 *= 0.5;
                    var_10 = level._ID794._ID740;

                    if ( _func_02F( var_3 ) )
                        var_10 = var_3;

                    var_11 = var_4._ID35909 - var_10;
                    var_7 = var_11[0] * _func_0BC( var_9 ) - var_11[1] * _func_0BB( var_9 );
                    var_8 = var_11[0] * _func_0BB( var_9 ) + var_11[1] * _func_0BC( var_9 );
                    var_4._ID12610 = var_4._ID35909 + ( var_7, var_8, 0 );
                }
            }

            if ( _func_02F( var_0._ID23601 ) )
                var_4._ID35888 = _func_0BA( var_0._ID23601, var_0._ID23055 );

            if ( _func_02F( var_0._ID23603 ) )
            {
                var_4._ID12608 = _func_0BA( var_0._ID23601, var_0._ID23055 );
                var_4._ID26714 = _func_0BA( var_0._ID23603, var_0._ID23057 );
            }
        }
    }
    else
        var_4._ID36783 = 0;

    return var_4;
}

_ID9708( var_0, var_1 )
{
    wait(var_1);
    _unknown_0EBC( var_0 );
}

_ID9695( var_0 )
{
    var_1 = undefined;

    if ( _func_02F( var_0._ID14349 ) )
        var_1 = _func_0BA( var_0._ID14351, var_0._ID14350 );
    else
        var_1 = _func_0BA( var_0._ID641, var_0._ID624 );

    return var_1;
}

_ID9709( var_0, var_1, var_2, var_3 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_4 = _unknown_10A3( var_0, var_1, var_2, var_1 );

    if ( var_4._ID34191 )
    {
        _unknown_107C( var_0, var_1, var_2, var_3, var_4._ID13016 );

        if ( var_4._ID39971 && !var_4._ID39974 )
            thread _unknown_11A4( var_0, var_1, var_4._ID13016 );
    }

    if ( var_4._ID39974 )
    {
        var_5 = _unknown_123E( var_4 );

        for (;;)
        {
            if ( !level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
                wait(var_5);

            if ( level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
                level waittill( var_0 + "_" + var_1 + "_event" );

            if ( var_4._ID39971 && !_func_02F( var_4._ID13016 ) )
            {
                level notify( var_0 + "_" + var_1 + "_stop" );
                break;
            }

            if ( _func_02F( level._ID1374._ID9654._ID809[var_0][var_1]["linked_dambs"] ) )
            {
                var_6 = level._ID1374._ID9654._ID809[var_0][var_1]["linked_dambs"];

                for ( var_9 = _func_1DA( var_6 ); _func_02F( var_9 ); var_9 = _func_1BF( var_6, var_9 ) )
                {
                    var_7 = var_6[var_9];
                    var_8 = _func_0BA( var_7._ID23589, var_7._ID23039 );
                    thread _unknown_12DE( var_7._ID680, var_8 );
                }

                var_clear_3
                var_clear_0
            }

            var_4._ID28637 = level._ID1374._ID9654._ID809[var_0][var_1]["prob_scale"];
            var_10 = _unknown_1287( var_4, var_1, var_2, var_3 );

            if ( var_10._ID36783 )
                thread _unknown_13A4( var_0, var_1, var_10 );

            var_5 = _func_0BA( var_4._ID641, var_4._ID624 );
        }
    }
}

_ID9711( var_0, var_1, var_2, var_3 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_3 waittill( "sounddone" );

    if ( _func_02F( level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_2] ) )
    {
        var_3 _meth_80B7();
        _ID9702();
        level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_2] = undefined;
    }
}

_ID9700( var_0, var_1, var_2 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );

    if ( var_2._ID2521["type"] == "loop" )
        _unknown_149E( var_0, var_1, var_2 );
    else
        _unknown_143D( var_0, var_1, var_2 );
}

_ID9699( var_0, var_1, var_2 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_3 = level._ID794._ID740;

    if ( _func_02F( var_2._ID13016 ) )
        var_3 = var_2._ID13016._ID740;
    else if ( _func_02F( var_2._ID28188 ) )
        var_3 = var_2._ID28188;

    if ( level._ID1374._ID9654._ID13081 < level._ID1374._ID9654._ID23047 )
    {
        var_4 = _func_06A( "script_origin", var_3 + var_2._ID35909 );

        if ( _func_02F( var_2._ID13016 ) && var_2._ID23864 == "attach" )
            var_4 _meth_8053( var_2._ID13016 );

        var_4 _meth_80A1( var_2._ID2521["name"], "sounddone" );
        var_4 thread _ID42463::_ID3769();

        if ( !var_4._ID34989 )
        {
            var_5 = level._ID1374._ID9654._ID25756;
            level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_5] = var_4;
            level._ID1374._ID9654._ID25756++;
            _unknown_1A43();

            if ( _func_02F( var_2._ID12610 ) && !_func_02F( var_2._ID337 ) )
            {
                var_6 = 0.1 * var_2._ID38699;
                var_4 _meth_82B8( var_3 + var_2._ID12610, var_2._ID38699, var_6, var_6 );
            }

            if ( _func_02F( var_2._ID35888 ) )
                var_4 _meth_8074( var_2._ID35888 );

            if ( _func_02F( var_2._ID26714 ) )
            {
                wait 0.05;

                if ( _func_02F( var_4 ) && !var_4._ID34989 )
                    var_4 _meth_8074( var_2._ID12608, var_2._ID26714 );
            }

            thread _unknown_1536( var_0, var_1, var_5, var_4 );
            var_4 waittill( "sounddone" );
            return;
        }

        var_4 _meth_80B7();
        return;
    }
    else
        _ID42463::_ID4144( "TRYING TO PLAY ONESHOT WITH DAMB REF COUNT AT MAXIMUM!" );
}

_ID9698( var_0, var_1, var_2 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );

    if ( level._ID1374._ID9654._ID13081 < level._ID1374._ID9654._ID23047 )
    {
        var_3 = level._ID794._ID740;

        if ( _func_02F( var_2._ID13016 ) )
            var_3 = var_2._ID13016._ID740;
        else if ( _func_02F( var_2._ID28188 ) )
            var_3 = var_2._ID28188;

        var_4 = var_2._ID2521["name"];
        var_5 = _unknown_17E0( var_4 );

        if ( !_func_02F( var_5 ) )
            return;

        var_6 = _func_0C4( var_5["duration"][0], var_5["duration"][1] );
        var_7 = _func_0E6( var_5["duration"][0], var_5["duration"][1] );
        var_8 = _func_0BA( var_6, var_7 );
        var_9 = var_5["loop_alias"];
        var_10 = var_5["fade_in"];
        var_11 = var_5["fade_out"];
        var_12 = undefined;

        if ( _func_02F( var_5["end_alias"] ) )
            var_12 = var_5["end_alias"];

        var_13 = _func_06A( "script_origin", var_3 + var_2._ID35909 );

        if ( _func_02F( var_2._ID13016 ) && var_2._ID23864 == "attach" )
            var_13 _meth_8053( var_2._ID13016 );

        var_13 _meth_807C( var_9 );

        if ( _func_02F( var_10 ) )
        {
            var_13 _meth_8076( 0.0 );
            wait 0.05;
            var_13 _meth_8076( 1.0, var_10 );
        }

        var_13 thread _ID42463::_ID3769();

        if ( !var_13._ID34989 )
        {
            var_14 = level._ID1374._ID9654._ID22648;
            level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] = var_13;
            _unknown_1BE8();
            level._ID1374._ID9654._ID22648++;
            var_15 = 0;

            if ( _func_02F( var_2._ID23864 ) && var_2._ID23864 == "free" && _func_02F( var_2._ID12610 ) )
                var_15 = 1;
            else if ( !_func_02F( var_2._ID23864 ) && _func_02F( var_2._ID12610 ) )
                var_15 = 1;

            if ( var_15 )
            {
                var_16 = 0.1 * var_2._ID38699;
                var_13 _meth_82B8( var_3 + var_2._ID12610, var_2._ID38699, var_16, var_16 );
            }

            if ( _func_02F( var_2._ID35888 ) )
                var_13 _meth_8073( var_2._ID35888 );

            if ( _func_02F( var_2._ID26714 ) )
            {
                wait 0.05;

                if ( _func_02F( var_13 ) && !var_13._ID34989 )
                    var_13 _meth_8073( var_2._ID12608, var_2._ID26714 );
            }

            wait(var_8);

            if ( !var_13._ID34989 )
            {
                if ( _func_02F( level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] ) )
                {
                    if ( _func_02F( var_12 ) )
                    {
                        var_17 = _func_06A( "script_origin", var_13._ID740 );
                        var_17 _meth_80A1( var_12, "sounddone" );
                        var_18 = level._ID1374._ID9654._ID25756;
                        level._ID1374._ID9654._ID25756++;
                        level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_18] = var_17;
                        _unknown_1CE1();
                        thread _unknown_1775( var_0, var_1, var_18, var_17 );
                    }

                    if ( _func_02F( var_11 ) )
                        thread _ID42463::_ID3868( var_13, var_11 );
                    else
                    {
                        var_13 _meth_80B2();
                        wait 0.05;
                        var_13 _meth_80B7();
                    }

                    _unknown_1D0E();
                    level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] = undefined;
                    return;
                }

                return;
            }

            var_13 _meth_80B2();
            var_13 _meth_80B7();
            _unknown_1D2D();
            level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] = undefined;
            return;
            return;
        }

        var_13 _meth_80B7();
        return;
    }
    else
        _ID42463::_ID4144( "TRYING TO PLAY LOOP WITH DAMB REF COUNT AT MAXIMUM!" );
}

_ID9702( var_0, var_1 )
{
    var_2 = 0;
    var_3 = level._ID1374._ID9654._ID809[var_0][var_1]["components"];

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_5 = var_4[1];
        var_2 += var_5;
    }

    var_clear_3
    var_clear_0
    var_7 = _func_0B8( var_2 );
    var_8 = 0.0;
    var_9 = undefined;
    var_10 = level._ID1374._ID9654._ID809[var_0][var_1]["components"];

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_4 = var_10[var_12];
        var_11 = var_8 + var_4[1];

        if ( var_7 >= var_8 && var_7 < var_11 )
        {
            var_9 = var_4[0];
            break;
        }

        var_8 = var_11;
    }

    var_clear_2
    var_clear_0
    var_13 = _unknown_1AB6( var_9 );

    if ( !_func_02F( var_13 ) )
        return;

    var_13["name"] = var_9;
    return var_13;
}

_ID9701( var_0 )
{
    var_1 = var_0["loops"];
    var_2 = var_0["oneshots"];
    var_3 = undefined;

    if ( !_func_02F( level._ID1374._ID9654._ID8409[var_0["name"]] ) )
    {
        var_3 = 0;

        if ( _func_02F( var_1 ) )
        {
            if ( _func_031( var_1[0] ) )
                var_3 += var_1[1];
            else
            {
                var_4 = var_1;

                for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
                {
                    var_5 = var_4[var_6];
                    var_3 += var_5[1];
                }

                var_clear_2
                var_clear_0
            }
        }

        if ( _func_02F( var_2 ) )
        {
            if ( _func_031( var_2[0] ) )
                var_3 += var_2[1];
            else
            {
                var_7 = var_2;

                for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
                {
                    var_5 = var_7[var_8];
                    var_3 += var_5[1];
                }

                var_clear_2
                var_clear_0
            }
        }

        level._ID1374._ID9654._ID8409[var_0["name"]] = var_3;
    }
    else
        var_3 = level._ID1374._ID9654._ID8409[var_0["name"]];

    var_9 = _func_0BA( 0.0, var_3 );
    var_10 = undefined;
    var_11 = undefined;
    var_12 = 0.0;

    if ( _func_02F( var_1 ) )
    {
        if ( _func_031( var_1[0] ) )
        {
            var_13 = var_12 + var_1[1];

            if ( var_9 >= var_12 && var_9 < var_13 )
            {
                var_10 = var_1[0];
                var_11 = "loop";
            }
            else
                var_12 = var_13;
        }
        else
        {
            var_14 = var_1;

            for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
            {
                var_5 = var_14[var_15];
                var_13 = var_12 + var_5[1];

                if ( var_9 >= var_12 && var_9 < var_13 )
                {
                    var_10 = var_5[0];
                    var_11 = "loop";
                    break;
                    continue;
                }

                var_12 = var_13;
            }

            var_clear_2
            var_clear_0
        }
    }

    if ( !_func_02F( var_10 ) && _func_02F( var_2 ) )
    {
        if ( _func_0D3( var_2 ) )
        {
            var_16 = var_2;

            for ( var_17 = _func_1DA( var_16 ); _func_02F( var_17 ); var_17 = _func_1BF( var_16, var_17 ) )
            {
                var_5 = var_16[var_17];
                var_13 = var_12 + var_5[1];

                if ( var_9 >= var_12 && var_9 < var_13 )
                {
                    var_10 = var_5[0];
                    var_11 = "oneshot";
                    break;
                    continue;
                }

                var_12 = var_13;
            }

            var_clear_2
            var_clear_0
        }
        else
        {
            var_13 = var_12 + var_2[1];

            if ( var_9 >= var_12 && var_9 < var_13 )
            {
                var_10 = var_2[0];
                var_11 = "oneshot";
            }
            else
                var_12 = var_13;
        }
    }

    var_18 = [];
    var_18["name"] = var_10;
    var_18["type"] = var_11;
    return var_18;
}

_ID9691( var_0 )
{
    var_1 = [];

    if ( _func_02F( level._ID1374._ID9654._ID22636[var_0] ) )
        var_1 = level._ID1374._ID9654._ID22636[var_0];
    else
        var_1 = _unknown_1D9C( var_0, 1 );

    if ( !_func_02F( var_1 ) || var_1.size == 0 )
        return;

    level._ID1374._ID9654._ID22636[var_0] = var_1;
    return var_1;
}

_ID9686( var_0 )
{
    if ( !_func_02F( level._ID1374._ID9654._ID8408 ) )
        level._ID1374._ID9654._ID8408 = [];

    var_1 = [];

    if ( _func_02F( level._ID1374._ID9654._ID8408[var_0] ) )
        var_1 = level._ID1374._ID9654._ID8408[var_0];

    var_1 = _unknown_1F6A( var_0, 1 );

    if ( !_func_02F( var_1 ) || var_1.size == 0 )
        return;

    level._ID1374._ID9654._ID8408[var_0] = var_1;
    return var_1;
}

_ID9703( var_0, var_1, var_2 )
{
    level._ID1374._ID9654._ID809[var_0][var_1]["loops"] = [];
    level._ID1374._ID9654._ID809[var_0][var_1]["single_loops"] = [];
    level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"] = [];

    if ( !_func_02F( level._ID1374._ID9654._ID809[var_0][var_1]["event_time"] ) )
    {
        var_3 = level._ID1374._ID9654._ID809[var_0][var_1]["components"];

        for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
        {
            var_4 = var_3[var_6];
            var_5 = _unknown_1D92( var_4 );

            if ( !_func_02F( var_5 ) )
                return;

            var_5["name"] = var_4;
            thread _unknown_1AF3( var_0, var_1, var_5, var_2 );
        }

        var_clear_3
        var_clear_0
    }
    else
        thread _unknown_18EE( var_0, var_1, var_2 );

    level waittill( var_0 + "_" + var_1 + "_stop" );
    wait 0.1;
    var_7 = level._ID1374._ID9654._ID809[var_0][var_1]["loops"];

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        thread _unknown_1EAB( var_8, level._ID1374._ID9654._ID809[var_0][var_1]["fade"], 0 );
    }

    var_clear_2
    var_clear_0
    var_10 = level._ID1374._ID9654._ID809[var_0][var_1]["single_loops"];

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_8 = var_10[var_11];
        thread _unknown_1EEB( var_8, level._ID1374._ID9654._ID809[var_0][var_1]["fade"], 1 );
    }

    var_clear_1
    var_clear_0
    var_12 = level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"];

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_8 = var_12[var_13];
        thread _unknown_1F1E( var_8, level._ID1374._ID9654._ID809[var_0][var_1]["fade"] );
    }

    var_clear_1
    var_clear_0
    level._ID1374._ID9654._ID809[var_0][var_1] = undefined;
}

_ID9682( var_0, var_1 )
{
    if ( _func_02F( var_0 ) )
    {
        var_0 _meth_8076( 0.0, var_1 );
        wait(var_1);
        var_0 _meth_80B3();
        wait 0.05;
        var_0 _meth_80B7();
        _unknown_21E9();
    }
}

_ID9681( var_0, var_1, var_2 )
{
    var_0 _meth_8076( 0.0, var_1 );
    wait(var_1);

    if ( _func_02F( var_0 ) )
    {
        var_0 _meth_80B2();
        wait 0.05;
        var_0 _meth_80B7();
    }

    if ( var_2 )
        level._ID1374._ID9654._ID22640--;
    else
        _unknown_221C();
}

_ID9688( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;

    if ( _func_02F( var_3 ) )
        var_4 = var_3;

    var_5 = [];
    var_6 = 0;
    var_7 = _func_129( var_0, "+" );
    var_8 = 0;

    for ( var_9 = 0; var_9 < var_7.size; var_9++ )
    {
        var_10 = _func_129( var_7[var_9], " " );

        if ( var_10.size == 1 && var_10[0] != "" )
        {
            var_5[var_5.size] = var_10[0];
            continue;
        }

        var_11 = var_5.size;
        var_5[var_11] = [];
        var_5[var_11][0] = var_10[0];
        var_5[var_11][1] = _func_0C2( var_10[1] );
    }

    if ( !var_6 && var_4 )
    {
        var_12 = [];

        for ( var_9 = 0; var_9 < var_5.size; var_9++ )
        {
            var_13 = var_12.size;
            var_12[var_13] = [];
            var_12[var_13][0] = var_5[var_9];
            var_12[var_13][1] = 1.0;
        }

        var_5 = var_12;
    }

    return var_5;
}

_ID9689( var_0, var_1 )
{
    var_2 = "soundtables/sp_defaults.csv";
    var_3 = _ID42463::_ID15662();
    var_4 = [];

    if ( var_1 )
        var_4 = _unknown_20AA( var_3, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        var_4 = _unknown_20BC( var_2, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        return;

    return var_4;
}

_ID9690( var_0, var_1 )
{
    var_2 = [];
    var_3 = 8;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = undefined;
    var_8 = [];
    var_9 = _func_2A0( var_0, "loop_defs", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( _func_02F( var_9 ) )
    {
        for ( var_10 = 0; var_10 < var_3; var_10++ )
        {
            var_11 = _func_2A1( var_0, 0, "loop_defs", var_10, var_9[0], var_9[1] );

            if ( !_func_02F( var_11 ) || var_11 == "" )
                return;

            var_12 = _func_2A1( var_0, 0, var_1, var_10, var_9[0], var_9[1] );

            if ( var_12 != "" && var_11 != "comments" )
            {
                switch ( var_11 )
                {

                }

                case "duration_max":
                case "fade_out":
                case "duration_min":
                case "end_alias":
                case "loop_alias":
                case "fade_in":
                default:
            }
        }

        var_2["loop_alias"] = var_4;

        if ( _func_02F( var_6 ) )
            var_2["fade_in"] = var_6;

        if ( _func_02F( var_7 ) )
            var_2["fade_out"] = var_7;

        if ( _func_02F( var_5 ) )
            var_2["end_alias"] = var_5;

        if ( _func_02F( var_8[0] ) )
            var_2["duration"] = _unknown_229F( var_8 );

        return var_2;
    }
}

_ID9694( var_0 )
{
    var_1 = [];
    var_1[0] = _func_0C2( var_0[0] );
    var_1[1] = _func_0C2( var_0[1] );
    return var_1;
}

_ID9685( var_0, var_1 )
{
    var_2 = [];
    var_3 = 21;
    var_4 = 8;
    var_5 = [];
    var_6 = [];
    var_7 = [];
    var_8 = [];
    var_9 = [];
    var_10 = [];
    var_11 = [];
    var_12 = [];
    var_13 = [];
    var_14 = [];
    var_15 = [];
    var_16 = 0;
    var_17 = _func_2A0( var_0, "components", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( _func_02F( var_17 ) )
    {
        for ( var_18 = 1; var_18 < var_3; var_18++ )
        {
            var_19 = _func_2A1( var_0, 0, "components", var_18, var_17[0], var_17[1] );

            if ( !_func_02F( var_19 ) )
                return;

            var_20 = _func_2A1( var_0, 0, var_1, var_18, var_17[0], var_17[1] );

            if ( var_20 != "" && var_19 != "comments" )
            {
                var_16++;

                switch ( var_19 )
                {

                }

                endswitch( 20 )  case "pitch_time_max" loc_2499 case "pitch_time_min" loc_249B case "pitch_max" loc_249D case "pitch_min" loc_249F case "travel_time_max" loc_24A1 case "travel_time_min" loc_24A3 case "travel_max" loc_24A4 case "travel_min" loc_24A6 case "cone_max" loc_24A8 case "cone_min" loc_24AA case "dist_max" loc_24AC case "dist_min" loc_24AE case "event_time_max" loc_24B0 case "event_time_min" loc_24B2 case "first_event_max" loc_24B3 case "first_event_min" loc_24B5 case "loops" loc_24AE case "oneshots" loc_24AD case "single_loops" loc_24BF default loc_2500
                case "pitch_time_min":
                case "pitch_max":
                case "pitch_min":
                case "travel_time_max":
                case "travel_time_min":
                case "travel_max":
                case "travel_min":
                case "cone_max":
                case "cone_min":
                case "dist_max":
                case "loops":
                case "dist_min":
                case "event_time_max":
                case "event_time_min":
                case "first_event_max":
                case "first_event_min":
                case "oneshots":
                case "single_loops":
                default:
            }
        }

        if ( var_16 > 0 )
        {
            if ( _func_02F( var_5[0] ) )
            {
                if ( _func_031( var_5[0] ) )
                    var_5[1] = 1.0;

                var_2["oneshots"] = var_5;
            }

            if ( _func_02F( var_6[0] ) )
                var_2["loops"] = var_6;

            if ( _func_02F( var_7[0] ) )
                var_2["single_loops"] = var_7;

            if ( _func_02F( var_8[0] ) )
                var_2["first_event"] = _unknown_24D5( var_8 );

            if ( _func_02F( var_9[0] ) )
                var_2["event_time"] = _unknown_24E7( var_9 );

            if ( _func_02F( var_10[0] ) )
                var_2["radius"] = _unknown_24F9( var_10 );

            if ( _func_02F( var_11[0] ) )
                var_2["cone"] = _unknown_250B( var_11 );

            if ( _func_02F( var_12[0] ) )
                var_2["delta"] = _unknown_251D( var_12 );

            if ( _func_02F( var_13[0] ) )
                var_2["travel_time"] = _unknown_252F( var_13 );

            if ( _func_02F( var_14[0] ) )
                var_2["pitch"] = _unknown_2541( var_14 );

            if ( _func_02F( var_15[0] ) )
                var_2["pitch_time"] = _unknown_2552( var_15 );

            if ( !_func_02F( var_2["radius"] ) )
                var_2["radius"] = [ 0.0, 0.01 ];
        }

        return var_2;
    }
}

_ID9684( var_0, var_1 )
{
    var_2 = _ID42463::_ID15661();
    var_3 = "soundtables/sp_defaults.csv";
    var_4 = [];

    if ( var_1 )
        var_4 = _unknown_2595( var_2, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        var_4 = _unknown_25A7( var_3, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        return;

    return var_4;
}

_ID9693( var_0, var_1 )
{
    var_2 = 7;
    var_3 = [];
    var_4 = [];
    var_5 = [];
    var_6 = [];
    var_7 = _func_2A0( var_0, "dynamic_ambience_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( _func_02F( var_7 ) )
    {
        for ( var_8 = 1; var_8 < var_2; var_8++ )
        {
            var_9 = _func_2A1( var_0, 0, "dynamic_ambience_names", var_8, var_7[0], var_7[1] );
            var_10 = _func_2A1( var_0, 0, var_1, var_8, var_7[0], var_7[1] );
            var_11 = 0;

            if ( var_10 != "" && var_9 != "comments" )
            {
                switch ( var_9 )
                {

                }

                case "event_time_max":
                case "components":
                case "event_time_min":
                case "first_event_min":
                case "comment":
                default:
            }
        }

        var_11 = 0;

        if ( _func_02F( var_5[0] ) )
        {
            var_11 = 1;
            var_3["first_event"] = var_5;
        }

        if ( _func_02F( var_6[0] ) )
        {
            var_11 = 1;
            var_3["event_time"] = var_6;
        }

        if ( var_11 )
        {
            if ( _func_02F( var_4[0][1] ) )
                var_3["components"] = var_4;
            else
            {
                var_3["components"] = [];

                for ( var_8 = 0; var_8 < var_4.size; var_8++ )
                    var_3["components"][var_3["components"].size] = [ var_4[0], 1.0 ];

                if ( var_3["components"].size == 0 )
                    var_3["components"] = undefined;
            }
        }
        else if ( var_4.size != 0 )
            var_3["components"] = var_4;

        return var_3;
    }
}

_ID9692( var_0, var_1 )
{
    var_2 = _ID42463::_ID15663();
    var_3 = "soundtables/sp_defaults.csv";
    var_4 = [];

    if ( var_1 )
        var_4 = _unknown_2853( var_2, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        var_4 = _unknown_2865( var_3, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        return;

    return var_4;
}

_ID9687( var_0 )
{
    var_1 = [];

    if ( _func_02F( level._ID1374._ID9654._ID28450[var_0] ) )
        var_1 = level._ID1374._ID9654._ID28450[var_0];
    else
        var_1 = _unknown_291F( var_0, 1 );

    if ( !_func_02F( var_1 ) || var_1.size == 0 )
        return;

    level._ID1374._ID9654._ID28450[var_0] = var_1;
    var_1["name"] = var_0;
    return var_1;
}

_ID19517()
{
    level._ID1374._ID9654._ID13081++;
}

_ID10080()
{
    level._ID1374._ID9654._ID13081--;
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID9657()
{
    if ( !isdefined( level._ID1374 ) )
        level._ID1374 = spawnstruct();

    if ( !isdefined( level._ID1374._ID9654 ) )
    {
        level._ID1374._ID9654 = spawnstruct();
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
    _ID9706( "zone", var_0, undefined, var_1 );
}

_ID9666( var_0, var_1, var_2, var_3 )
{
    _ID9706( "free", var_0, var_1, var_2, undefined, undefined, undefined, var_3 );
}

_ID9667( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( isdefined( var_3 ) )
        thread _ID9696( var_0, var_1, var_2, var_3, var_4, var_5 );
    else
        _ID9706( "free", var_0, var_2, undefined, var_1, undefined, undefined, var_5 );
}

_ID9671( var_0, var_1, var_2 )
{
    if ( isstring( var_1 ) )
        var_3 = var_1;
    else
        var_3 = var_0;

    level notify( var_3 + "dist_monitor_stop" );
    _ID9670( var_3, var_2 );
}

_ID9659( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = spawnstruct();
    var_5.name = var_0;
    var_5._ID28188 = var_1;
    var_5.label = var_2;
    var_5._ID23589 = var_3;
    var_5._ID23039 = var_4;
    return var_5;
}

_ID9696( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( isstring( var_2 ) )
        level endon( var_2 + "dist_monitor_stop" );
    else
        level endon( var_0 + "dist_monitor_stop" );

    var_6 = 1.0;

    if ( isdefined( var_4 ) )
        var_6 = var_4;

    var_7 = 1;

    for (;;)
    {
        var_8 = distance( level.player.origin, var_1 );

        if ( var_8 < var_3 )
        {
            if ( var_7 )
            {
                var_7 = 0;
                _ID9706( "free", var_0, var_2, undefined, var_1, undefined, undefined, var_5 );
            }
        }
        else if ( !var_7 )
        {
            var_7 = 1;

            if ( isdefined( var_2 ) )
                _ID9707( "free", var_2, var_6 );
            else
                _ID9707( "free", var_0, var_6 );
        }

        wait 1;
    }
}

_ID9668( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = "attach";

    if ( isdefined( var_3 ) )
        var_5 = var_3;

    _ID9706( "free", var_0, var_2, var_4, undefined, var_1, var_5 );
}

_ID9669( var_0, var_1 )
{
    var_2 = 2.0;

    if ( isdefined( var_0 ) )
        var_2 = var_0;

    var_3 = "all";

    if ( isdefined( var_1 ) )
        var_3 = var_1;

    if ( var_3 == "free" || var_3 == "all" )
    {
        foreach ( var_6, var_5 in level._ID1374._ID9654._ID809["free"] )
            _ID9670( var_6, var_2 );
    }

    if ( var_3 == "zone" || var_3 == "all" )
    {
        foreach ( var_6, var_5 in level._ID1374._ID9654._ID809["zone"] )
            _ID9676( var_6, var_2 );
    }
}

_ID9672( var_0 )
{
    _ID9707( "zone", undefined, var_0 );
}

_ID9676( var_0, var_1 )
{
    _ID9707( "zone", var_0, var_1 );
}

_ID9670( var_0, var_1 )
{
    _ID9707( "free", var_0, var_1 );
}

_ID9662( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_0 ) && var_0 != "none" )
    {
        if ( var_1 == 0 )
            _ID9676( var_0, 2.0 );
        else
            _ID9675( var_0, var_1 );
    }

    if ( isdefined( var_2 ) && var_2 != "none" )
    {
        if ( var_3 == 0 )
            _ID9676( var_2, 2.0 );
        else
            _ID9675( var_2, var_3 );
    }
}

_ID9664( var_0, var_1 )
{
    if ( !isdefined( level._ID1374._ID9654._ID6638 ) )
        level._ID1374._ID9654._ID6638 = [];

    level._ID1374._ID9654._ID6638[var_0] = var_1;
}

_ID9665( var_0, var_1 )
{
    var_2 = [];

    if ( isdefined( level._ID1374._ID9654._ID28450[var_0] ) )
        var_2 = level._ID1374._ID9654._ID28450[var_0];
    else if ( level._ID1374._ID9654._ID39914 )
    {
        var_2 = _ID9692( var_0, 1 );
        level._ID1374._ID9654._ID28450[var_0] = var_2;
    }
    else
    {
        var_2 = _ID9692( var_0, 0 );
        level._ID1374._ID9654._ID28450[var_0] = var_2;
    }

    foreach ( var_4 in var_2["components"] )
        _ID9664( var_4, var_1 );
}

_ID9661( var_0, var_1 )
{
    var_2 = "free";

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    if ( isdefined( level._ID1374._ID9654._ID809[var_2][var_0] ) )
        level._ID1374._ID9654._ID809[var_2][var_0]["paused"] = 1;
}

_ID9673( var_0, var_1 )
{
    var_2 = "free";

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    if ( isdefined( level._ID1374._ID9654._ID809[var_2][var_0] ) )
    {
        level._ID1374._ID9654._ID809[var_2][var_0]["paused"] = 0;
        level notify( var_2 + "_" + var_0 + "_event" );
    }
}

_ID9660( var_0, var_1 )
{
    var_2 = "free";

    if ( isdefined( var_1 ) )
        var_2 = var_1;

    if ( isdefined( level._ID1374._ID9654._ID809[var_2][var_0] ) )
        level notify( var_2 + "_" + var_0 + "_event" );
}

_ID9658( var_0, var_1, var_2, var_3 )
{
    var_4 = "free";

    if ( isdefined( level._ID1374._ID9654._ID809[var_4][var_0] ) && isdefined( level._ID1374._ID9654._ID809[var_4][var_1] ) )
    {
        var_2 = min( var_2, var_3 );
        var_3 = max( var_2, var_3 );

        if ( !isdefined( level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"] ) )
            level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"] = [];

        var_5 = level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"].size;
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5] = spawnstruct();
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5].name = var_1;
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5]._ID23589 = max( var_2, 0 );
        level._ID1374._ID9654._ID809[var_4][var_0]["linked_dambs"][var_5]._ID23039 = max( var_3, 0 );
    }
}

_ID9706( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = 1.0;

    if ( isdefined( var_3 ) )
        var_8 = var_3;

    var_9 = var_1;

    if ( isstring( var_2 ) )
        var_9 = var_2;

    if ( !isdefined( level._ID1374._ID9654._ID809[var_0][var_9] ) )
    {
        var_10 = _ID9687( var_1 );

        if ( !isdefined( var_10 ) )
            return;

        level._ID1374._ID9654._ID809[var_0][var_9] = var_10;
        level._ID1374._ID9654._ID809[var_0][var_9]["prob_scale"] = var_8;
        level._ID1374._ID9654._ID809[var_0][var_9]["paused"] = 0;

        if ( isdefined( var_7 ) )
            _ID9705( var_9, var_7 );

        if ( isdefined( var_5 ) )
        {
            level._ID1374._ID9654._ID809[var_0][var_9]["entity"] = var_5;
            level._ID1374._ID9654._ID809[var_0][var_9]["mode"] = var_6;
        }

        thread _ID9703( var_0, var_9, var_4 );
    }
    else if ( level._ID1374._ID9654._ID809[var_0][var_9]["prob_scale"] != var_8 )
        level._ID1374._ID9654._ID809[var_0][var_9]["prob_scale"] = var_8;
}

_ID9705( var_0, var_1 )
{
    if ( isarray( var_1 ) )
    {
        foreach ( var_3 in var_1 )
        {
            _ID9706( "free", var_3.name, var_3.label, undefined, var_3._ID28188 );
            _ID9661( var_3.label );
            _ID9658( var_0, var_3.label, var_3._ID23589, var_3._ID23039 );
        }
    }
    else
    {
        _ID9706( "free", var_1.name, var_1.label, undefined, var_1._ID28188 );
        _ID9661( var_1.label );
        _ID9658( var_0, var_1.label, var_1._ID23589, var_1._ID23039 );
    }
}

_ID9707( var_0, var_1, var_2 )
{
    var_3 = 2.0;

    if ( isdefined( var_2 ) )
        var_3 = var_2;

    if ( var_0 == "zone" && !isdefined( var_1 ) )
    {
        if ( isdefined( level._ID1374._ID9654._ID809[var_0] ) )
        {
            foreach ( var_1, var_5 in level._ID1374._ID9654._ID809[var_0] )
            {
                level._ID1374._ID9654._ID809[var_0][var_1]["fade"] = var_3;
                level notify( var_0 + "_" + var_1 + "_stop" );
            }
        }
    }
    else if ( isdefined( level._ID1374._ID9654._ID809[var_0][var_1] ) )
    {
        level._ID1374._ID9654._ID809[var_0][var_1]["fade"] = var_3;
        level notify( var_0 + "_" + var_1 + "_stop" );
    }
}

_ID9710( var_0, var_1, var_2 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_3 = level._ID1374._ID9654._ID809[var_0][var_1]["event_time"];
    var_4 = min( var_3[0], var_3[1] );
    var_5 = max( var_3[0], var_3[1] );
    var_6 = undefined;
    var_7 = undefined;

    if ( isdefined( level._ID1374._ID9654._ID809[var_0][var_1]["first_event"] ) )
    {
        var_3 = level._ID1374._ID9654._ID809[var_0][var_1]["first_event"];
        var_6 = min( var_3[0], var_3[1] );
        var_7 = max( var_3[0], var_3[1] );
    }

    var_8 = undefined;

    if ( isdefined( var_6 ) )
        var_8 = randomfloatrange( var_6, var_7 );
    else
        var_8 = randomfloatrange( var_4, var_5 );

    for (;;)
    {
        if ( !level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
            wait(var_8);

        if ( level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
            level waittill( var_0 + "_" + var_1 + "_event" );

        var_9 = _ID9702( var_0, var_1 );

        if ( !isdefined( var_9 ) )
            continue;

        var_10 = _ID9683( var_0, var_1, var_9, var_1 );

        if ( var_10._ID39974 )
        {
            if ( var_10._ID39971 && !isdefined( var_10._ID13016 ) )
            {
                level notify( var_0 + "_" + var_1 + "_stop" );
                break;
            }

            var_11 = _ID9680( var_10, var_1, var_9 );

            if ( var_11._ID36783 )
            {
                if ( level._ID1374._ID9654._ID32160 )
                    _ID9700( var_0, var_1, var_11 );
                else
                    thread _ID9700( var_0, var_1, var_11 );
            }
        }
        else
            _ID42463::_ID4144( "Dynamic ambience is playing back serially and using components which do not define oneshots or loops" );

        var_8 = randomfloatrange( var_4, var_5 );
    }
}

_ID9704( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_2["single_loops"] ) )
    {
        foreach ( var_6 in var_2["single_loops"] )
        {
            var_7 = undefined;

            if ( isdefined( var_4 ) )
                var_7 = spawn( "script_origin", var_4.origin );
            else if ( isdefined( var_3 ) )
                var_7 = spawn( "script_origin", var_3 );
            else
                var_7 = spawn( "script_origin", level.player.origin );

            level._ID1374._ID9654._ID22640++;
            var_7 playloopsound( var_6 );

            if ( isdefined( var_4 ) )
                var_7 linkto( var_4 );

            var_8 = level._ID1374._ID9654._ID34190;
            level._ID1374._ID9654._ID809[var_0][var_1]["single_loops"][var_8] = var_7;
            level._ID1374._ID9654._ID34190++;
        }
    }
}

_ID9683( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3._ID39974 = 0;

    if ( !isdefined( var_2["single_loops"] ) )
        var_3._ID34191 = 0;
    else
        var_3._ID34191 = 1;

    if ( isdefined( var_2["oneshots"] ) || isdefined( var_2["loops"] ) )
    {
        var_3._ID39974 = 1;

        if ( !isdefined( var_2["radius"] ) )
            var_2["radius"] = [ 0.0, 0.01 ];

        var_3._ID23605 = min( var_2["radius"][0], var_2["radius"][1] );
        var_3._ID23061 = max( var_2["radius"][0], var_2["radius"][1] );

        if ( isarray( var_2["event_time"] ) )
        {
            var_3._ID641 = min( var_2["event_time"][0], var_2["event_time"][1] );
            var_3._ID624 = max( var_2["event_time"][0], var_2["event_time"][1] );
        }

        if ( isarray( var_2["first_event"] ) )
        {
            var_3._ID14349 = 1;
            var_3._ID14351 = min( var_2["first_event"][0], var_2["first_event"][1] );
            var_3._ID14350 = max( var_2["first_event"][0], var_2["first_event"][1] );
        }

        if ( isarray( var_2["pitch"] ) )
        {
            var_3._ID23601 = min( var_2["pitch"][0], var_2["pitch"][1] );
            var_3._ID23055 = max( var_2["pitch"][0], var_2["pitch"][1] );
        }

        if ( isarray( var_2["travel_time"] ) )
        {
            var_3._ID23613 = min( var_2["travel_time"][0], var_2["travel_time"][1] );
            var_3._ID23069 = max( var_2["travel_time"][0], var_2["travel_time"][1] );

            if ( isarray( var_2["delta"] ) )
            {
                var_3._ID23590 = min( var_2["delta"][0], var_2["delta"][1] );
                var_3._ID23040 = max( var_2["delta"][0], var_2["delta"][1] );
            }
            else
            {
                var_3._ID23591 = min( var_2["delta_angle"][0], var_2["delta_angle"][1] );
                var_3._ID23041 = max( var_2["delta_angle"][0], var_2["delta_angle"][1] );
            }
        }

        if ( isarray( var_2["pitch_time"] ) )
        {
            var_3._ID23603 = min( var_2["pitch_time"][0], var_2["pitch_time"][1] );
            var_3._ID23057 = max( var_2["pitch_time"][0], var_2["pitch_time"][1] );
        }

        if ( isdefined( var_2["cone"] ) )
        {
            var_3._ID23612 = min( var_2["cone"][0], var_2["cone"][1] );
            var_3._ID23068 = max( var_2["cone"][0], var_2["cone"][1] );
        }
    }
    else
        var_3._ID39974 = 0;

    var_3._ID39971 = 0;

    if ( isdefined( level._ID1374._ID9654._ID809[var_0][var_1]["entity"] ) )
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
        if ( !isdefined( var_2 ) )
            level notify( var_0 + "_" + var_1 + "_stop" );

        wait 1.0;
    }
}

_ID9680( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();

    if ( randomfloat( 1.0 ) < var_0._ID28637 )
    {
        var_4._ID36783 = 1;

        if ( isdefined( level._ID1374._ID9654._ID6663[var_1] ) )
            thread [[ level._ID1374._ID9654._ID6638[var_1] ]]();
        else
        {
            var_4._ID2521 = _ID9701( var_2 );
            var_4._ID28188 = var_3;
            var_4._ID13016 = var_0._ID13016;
            var_4._ID23864 = var_0._ID23864;
            var_5 = randomfloatrange( var_0._ID23605, var_0._ID23061 );
            var_6 = undefined;

            if ( isdefined( var_0._ID23612 ) )
                var_6 = randomfloatrange( var_0._ID23612, var_0._ID23068 );
            else
                var_6 = randomfloatrange( 0, 360 );

            var_7 = var_5 * cos( var_6 );
            var_8 = var_5 * sin( var_6 );
            var_4._ID35909 = ( var_7, var_8, 0 );

            if ( isdefined( var_0._ID23613 ) )
            {
                var_4._ID38699 = randomfloatrange( var_0._ID23613, var_0._ID23069 );

                if ( isdefined( var_0._ID23590 ) )
                {
                    var_5 = randomfloatrange( var_0._ID23590, var_0._ID23040 );
                    var_6 = randomfloatrange( 0, 360 );
                    var_7 = var_5 * cos( var_6 );
                    var_8 = var_5 * sin( var_6 );
                    var_4._ID12610 = var_4._ID35909 + ( var_7, var_8, 0 );
                }
                else
                {
                    var_9 = randomfloatrange( var_0._ID23591, var_0._ID23041 );
                    var_9 *= 0.5;
                    var_10 = level.player.origin;

                    if ( isdefined( var_3 ) )
                        var_10 = var_3;

                    var_11 = var_4._ID35909 - var_10;
                    var_7 = var_11[0] * cos( var_9 ) - var_11[1] * sin( var_9 );
                    var_8 = var_11[0] * sin( var_9 ) + var_11[1] * cos( var_9 );
                    var_4._ID12610 = var_4._ID35909 + ( var_7, var_8, 0 );
                }
            }

            if ( isdefined( var_0._ID23601 ) )
                var_4._ID35888 = randomfloatrange( var_0._ID23601, var_0._ID23055 );

            if ( isdefined( var_0._ID23603 ) )
            {
                var_4._ID12608 = randomfloatrange( var_0._ID23601, var_0._ID23055 );
                var_4._ID26714 = randomfloatrange( var_0._ID23603, var_0._ID23057 );
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
    _ID9660( var_0 );
}

_ID9695( var_0 )
{
    var_1 = undefined;

    if ( isdefined( var_0._ID14349 ) )
        var_1 = randomfloatrange( var_0._ID14351, var_0._ID14350 );
    else
        var_1 = randomfloatrange( var_0._ID641, var_0._ID624 );

    return var_1;
}

_ID9709( var_0, var_1, var_2, var_3 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_4 = _ID9683( var_0, var_1, var_2, var_1 );

    if ( var_4._ID34191 )
    {
        _ID9704( var_0, var_1, var_2, var_3, var_4._ID13016 );

        if ( var_4._ID39971 && !var_4._ID39974 )
            thread _ID9697( var_0, var_1, var_4._ID13016 );
    }

    if ( var_4._ID39974 )
    {
        var_5 = _ID9695( var_4 );

        for (;;)
        {
            if ( !level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
                wait(var_5);

            if ( level._ID1374._ID9654._ID809[var_0][var_1]["paused"] )
                level waittill( var_0 + "_" + var_1 + "_event" );

            if ( var_4._ID39971 && !isdefined( var_4._ID13016 ) )
            {
                level notify( var_0 + "_" + var_1 + "_stop" );
                break;
            }

            if ( isdefined( level._ID1374._ID9654._ID809[var_0][var_1]["linked_dambs"] ) )
            {
                foreach ( var_7 in level._ID1374._ID9654._ID809[var_0][var_1]["linked_dambs"] )
                {
                    var_8 = randomfloatrange( var_7._ID23589, var_7._ID23039 );
                    thread _ID9708( var_7.name, var_8 );
                }
            }

            var_4._ID28637 = level._ID1374._ID9654._ID809[var_0][var_1]["prob_scale"];
            var_10 = _ID9680( var_4, var_1, var_2, var_3 );

            if ( var_10._ID36783 )
                thread _ID9700( var_0, var_1, var_10 );

            var_5 = randomfloatrange( var_4._ID641, var_4._ID624 );
        }
    }
}

_ID9711( var_0, var_1, var_2, var_3 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_3 waittill( "sounddone" );

    if ( isdefined( level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_2] ) )
    {
        var_3 delete();
        _ID10080();
        level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_2] = undefined;
    }
}

_ID9700( var_0, var_1, var_2 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );

    if ( var_2._ID2521["type"] == "loop" )
        _ID9698( var_0, var_1, var_2 );
    else
        _ID9699( var_0, var_1, var_2 );
}

_ID9699( var_0, var_1, var_2 )
{
    level endon( var_0 + "_" + var_1 + "_stop" );
    var_3 = level.player.origin;

    if ( isdefined( var_2._ID13016 ) )
        var_3 = var_2._ID13016.origin;
    else if ( isdefined( var_2._ID28188 ) )
        var_3 = var_2._ID28188;

    if ( level._ID1374._ID9654._ID13081 < level._ID1374._ID9654._ID23047 )
    {
        var_4 = spawn( "script_origin", var_3 + var_2._ID35909 );

        if ( isdefined( var_2._ID13016 ) && var_2._ID23864 == "attach" )
            var_4 linkto( var_2._ID13016 );

        var_4 playsound( var_2._ID2521["name"], "sounddone" );
        var_4 thread _ID42463::_ID3769();

        if ( !var_4._ID34989 )
        {
            var_5 = level._ID1374._ID9654._ID25756;
            level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_5] = var_4;
            level._ID1374._ID9654._ID25756++;
            _ID19517();

            if ( isdefined( var_2._ID12610 ) && !isdefined( var_2._ID337 ) )
            {
                var_6 = 0.1 * var_2._ID38699;
                var_4 moveto( var_3 + var_2._ID12610, var_2._ID38699, var_6, var_6 );
            }

            if ( isdefined( var_2._ID35888 ) )
                var_4 setpitch( var_2._ID35888 );

            if ( isdefined( var_2._ID26714 ) )
            {
                wait 0.05;

                if ( isdefined( var_4 ) && !var_4._ID34989 )
                    var_4 setpitch( var_2._ID12608, var_2._ID26714 );
            }

            thread _ID9711( var_0, var_1, var_5, var_4 );
            var_4 waittill( "sounddone" );
            return;
        }

        var_4 delete();
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
        var_3 = level.player.origin;

        if ( isdefined( var_2._ID13016 ) )
            var_3 = var_2._ID13016.origin;
        else if ( isdefined( var_2._ID28188 ) )
            var_3 = var_2._ID28188;

        var_4 = var_2._ID2521["name"];
        var_5 = _ID9691( var_4 );

        if ( !isdefined( var_5 ) )
            return;

        var_6 = min( var_5["duration"][0], var_5["duration"][1] );
        var_7 = max( var_5["duration"][0], var_5["duration"][1] );
        var_8 = randomfloatrange( var_6, var_7 );
        var_9 = var_5["loop_alias"];
        var_10 = var_5["fade_in"];
        var_11 = var_5["fade_out"];
        var_12 = undefined;

        if ( isdefined( var_5["end_alias"] ) )
            var_12 = var_5["end_alias"];

        var_13 = spawn( "script_origin", var_3 + var_2._ID35909 );

        if ( isdefined( var_2._ID13016 ) && var_2._ID23864 == "attach" )
            var_13 linkto( var_2._ID13016 );

        var_13 playloopsound( var_9 );

        if ( isdefined( var_10 ) )
        {
            var_13 setvolume( 0.0 );
            wait 0.05;
            var_13 setvolume( 1.0, var_10 );
        }

        var_13 thread _ID42463::_ID3769();

        if ( !var_13._ID34989 )
        {
            var_14 = level._ID1374._ID9654._ID22648;
            level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] = var_13;
            _ID19517();
            level._ID1374._ID9654._ID22648++;
            var_15 = 0;

            if ( isdefined( var_2._ID23864 ) && var_2._ID23864 == "free" && isdefined( var_2._ID12610 ) )
                var_15 = 1;
            else if ( !isdefined( var_2._ID23864 ) && isdefined( var_2._ID12610 ) )
                var_15 = 1;

            if ( var_15 )
            {
                var_16 = 0.1 * var_2._ID38699;
                var_13 moveto( var_3 + var_2._ID12610, var_2._ID38699, var_16, var_16 );
            }

            if ( isdefined( var_2._ID35888 ) )
                var_13 prefetchsound( var_2._ID35888 );

            if ( isdefined( var_2._ID26714 ) )
            {
                wait 0.05;

                if ( isdefined( var_13 ) && !var_13._ID34989 )
                    var_13 prefetchsound( var_2._ID12608, var_2._ID26714 );
            }

            wait(var_8);

            if ( !var_13._ID34989 )
            {
                if ( isdefined( level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] ) )
                {
                    if ( isdefined( var_12 ) )
                    {
                        var_17 = spawn( "script_origin", var_13.origin );
                        var_17 playsound( var_12, "sounddone" );
                        var_18 = level._ID1374._ID9654._ID25756;
                        level._ID1374._ID9654._ID25756++;
                        level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"][var_18] = var_17;
                        _ID19517();
                        thread _ID9711( var_0, var_1, var_18, var_17 );
                    }

                    if ( isdefined( var_11 ) )
                        thread _ID42463::_ID3868( var_13, var_11 );
                    else
                    {
                        var_13 stopsounds();
                        wait 0.05;
                        var_13 delete();
                    }

                    _ID10080();
                    level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] = undefined;
                    return;
                }

                return;
            }

            var_13 stopsounds();
            var_13 delete();
            _ID10080();
            level._ID1374._ID9654._ID809[var_0][var_1]["loops"][var_14] = undefined;
            return;
            return;
        }

        var_13 delete();
        return;
    }
    else
        _ID42463::_ID4144( "TRYING TO PLAY LOOP WITH DAMB REF COUNT AT MAXIMUM!" );
}

_ID9702( var_0, var_1 )
{
    var_2 = 0;

    foreach ( var_4 in level._ID1374._ID9654._ID809[var_0][var_1]["components"] )
    {
        var_5 = var_4[1];
        var_2 += var_5;
    }

    var_7 = randomfloat( var_2 );
    var_8 = 0.0;
    var_9 = undefined;

    foreach ( var_4 in level._ID1374._ID9654._ID809[var_0][var_1]["components"] )
    {
        var_11 = var_8 + var_4[1];

        if ( var_7 >= var_8 && var_7 < var_11 )
        {
            var_9 = var_4[0];
            break;
        }

        var_8 = var_11;
    }

    var_13 = _ID9686( var_9 );

    if ( !isdefined( var_13 ) )
        return;

    var_13["name"] = var_9;
    return var_13;
}

_ID9701( var_0 )
{
    var_1 = var_0["loops"];
    var_2 = var_0["oneshots"];
    var_3 = undefined;

    if ( !isdefined( level._ID1374._ID9654._ID8409[var_0["name"]] ) )
    {
        var_3 = 0;

        if ( isdefined( var_1 ) )
        {
            if ( isstring( var_1[0] ) )
                var_3 += var_1[1];
            else
            {
                foreach ( var_5 in var_1 )
                    var_3 += var_5[1];
            }
        }

        if ( isdefined( var_2 ) )
        {
            if ( isstring( var_2[0] ) )
                var_3 += var_2[1];
            else
            {
                foreach ( var_5 in var_2 )
                    var_3 += var_5[1];
            }
        }

        level._ID1374._ID9654._ID8409[var_0["name"]] = var_3;
    }
    else
        var_3 = level._ID1374._ID9654._ID8409[var_0["name"]];

    var_9 = randomfloatrange( 0.0, var_3 );
    var_10 = undefined;
    var_11 = undefined;
    var_12 = 0.0;

    if ( isdefined( var_1 ) )
    {
        if ( isstring( var_1[0] ) )
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
            foreach ( var_5 in var_1 )
            {
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
        }
    }

    if ( !isdefined( var_10 ) && isdefined( var_2 ) )
    {
        if ( isarray( var_2 ) )
        {
            foreach ( var_5 in var_2 )
            {
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

    if ( isdefined( level._ID1374._ID9654._ID22636[var_0] ) )
        var_1 = level._ID1374._ID9654._ID22636[var_0];
    else
        var_1 = _ID9689( var_0, 1 );

    if ( !isdefined( var_1 ) || var_1.size == 0 )
        return;

    level._ID1374._ID9654._ID22636[var_0] = var_1;
    return var_1;
}

_ID9686( var_0 )
{
    if ( !isdefined( level._ID1374._ID9654._ID8408 ) )
        level._ID1374._ID9654._ID8408 = [];

    var_1 = [];

    if ( isdefined( level._ID1374._ID9654._ID8408[var_0] ) )
        var_1 = level._ID1374._ID9654._ID8408[var_0];

    var_1 = _ID9684( var_0, 1 );

    if ( !isdefined( var_1 ) || var_1.size == 0 )
        return;

    level._ID1374._ID9654._ID8408[var_0] = var_1;
    return var_1;
}

_ID9703( var_0, var_1, var_2 )
{
    level._ID1374._ID9654._ID809[var_0][var_1]["loops"] = [];
    level._ID1374._ID9654._ID809[var_0][var_1]["single_loops"] = [];
    level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"] = [];

    if ( !isdefined( level._ID1374._ID9654._ID809[var_0][var_1]["event_time"] ) )
    {
        foreach ( var_4 in level._ID1374._ID9654._ID809[var_0][var_1]["components"] )
        {
            var_5 = _ID9686( var_4 );

            if ( !isdefined( var_5 ) )
                return;

            var_5["name"] = var_4;
            thread _ID9709( var_0, var_1, var_5, var_2 );
        }
    }
    else
        thread _ID9710( var_0, var_1, var_2 );

    level waittill( var_0 + "_" + var_1 + "_stop" );
    wait 0.1;

    foreach ( var_8 in level._ID1374._ID9654._ID809[var_0][var_1]["loops"] )
        thread _ID9681( var_8, level._ID1374._ID9654._ID809[var_0][var_1]["fade"], 0 );

    foreach ( var_8 in level._ID1374._ID9654._ID809[var_0][var_1]["single_loops"] )
        thread _ID9681( var_8, level._ID1374._ID9654._ID809[var_0][var_1]["fade"], 1 );

    foreach ( var_8 in level._ID1374._ID9654._ID809[var_0][var_1]["oneshots"] )
        thread _ID9682( var_8, level._ID1374._ID9654._ID809[var_0][var_1]["fade"] );

    level._ID1374._ID9654._ID809[var_0][var_1] = undefined;
}

_ID9682( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
    {
        var_0 setvolume( 0.0, var_1 );
        wait(var_1);
        var_0 playrumbleonentity();
        wait 0.05;
        var_0 delete();
        _ID10080();
    }
}

_ID9681( var_0, var_1, var_2 )
{
    var_0 setvolume( 0.0, var_1 );
    wait(var_1);

    if ( isdefined( var_0 ) )
    {
        var_0 stopsounds();
        wait 0.05;
        var_0 delete();
    }

    if ( var_2 )
        level._ID1374._ID9654._ID22640--;
    else
        _ID10080();
}

_ID9688( var_0, var_1, var_2, var_3 )
{
    var_4 = 0;

    if ( isdefined( var_3 ) )
        var_4 = var_3;

    var_5 = [];
    var_6 = 0;
    var_7 = strtok( var_0, "+" );
    var_8 = 0;

    for ( var_9 = 0; var_9 < var_7.size; var_9++ )
    {
        var_10 = strtok( var_7[var_9], " " );

        if ( var_10.size == 1 && var_10[0] != "" )
        {
            var_5[var_5.size] = var_10[0];
            continue;
        }

        var_11 = var_5.size;
        var_5[var_11] = [];
        var_5[var_11][0] = var_10[0];
        var_5[var_11][1] = float( var_10[1] );
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
        var_4 = _ID9690( var_3, var_0 );

    if ( !isdefined( var_4 ) || var_4.size == 0 )
        var_4 = _ID9690( var_2, var_0 );

    if ( !isdefined( var_4 ) || var_4.size == 0 )
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
    var_9 = _func_2a0( var_0, "loop_defs", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( isdefined( var_9 ) )
    {
        for ( var_10 = 0; var_10 < var_3; var_10++ )
        {
            var_11 = _func_2a1( var_0, 0, "loop_defs", var_10, var_9[0], var_9[1] );

            if ( !isdefined( var_11 ) || var_11 == "" )
                return;

            var_12 = _func_2a1( var_0, 0, var_1, var_10, var_9[0], var_9[1] );

            if ( var_12 != "" && var_11 != "comments" )
            {
                switch ( var_11 )
                {
                    case "loop_alias":
                        var_4 = var_12;
                        continue;
                    case "fade_in":
                        if ( isdefined( var_12 ) && var_12 != "" )
                            var_6 = max( float( var_12 ), 0.0 );

                        continue;
                    case "fade_out":
                        if ( isdefined( var_12 ) && var_12 != "" )
                            var_7 = max( float( var_12 ), 0.0 );

                        continue;
                    case "end_alias":
                        if ( isdefined( var_12 ) && var_12 != "" )
                            var_5 = var_12;

                        continue;
                    case "duration_min":
                        if ( isdefined( var_12 ) && var_12 != "" )
                            var_8[0] = float( var_12 );

                        continue;
                    case "duration_max":
                        if ( isdefined( var_12 ) && var_12 != "" )
                            var_8[1] = float( var_12 );

                        continue;
                    default:
                        continue;
                }
            }
        }

        var_2["loop_alias"] = var_4;

        if ( isdefined( var_6 ) )
            var_2["fade_in"] = var_6;

        if ( isdefined( var_7 ) )
            var_2["fade_out"] = var_7;

        if ( isdefined( var_5 ) )
            var_2["end_alias"] = var_5;

        if ( isdefined( var_8[0] ) )
            var_2["duration"] = _ID9694( var_8 );

        return var_2;
    }
}

_ID9694( var_0 )
{
    var_1 = [];
    var_1[0] = float( var_0[0] );
    var_1[1] = float( var_0[1] );
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
    var_17 = _func_2a0( var_0, "components", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( isdefined( var_17 ) )
    {
        for ( var_18 = 1; var_18 < var_3; var_18++ )
        {
            var_19 = _func_2a1( var_0, 0, "components", var_18, var_17[0], var_17[1] );

            if ( !isdefined( var_19 ) )
                return;

            var_20 = _func_2a1( var_0, 0, var_1, var_18, var_17[0], var_17[1] );

            if ( var_20 != "" && var_19 != "comments" )
            {
                var_16++;

                switch ( var_19 )
                {
                    case "oneshots":
                        var_5 = _ID9688( var_20, "component definition", "oneshots", 1 );
                        continue;
                    case "loops":
                        var_6 = _ID9688( var_20, "component definition", "loops", 1 );
                        continue;
                    case "single_loops":
                        var_7 = _ID9688( var_20, "component definition", "single_loops", 0 );
                        continue;
                    case "first_event_min":
                        var_8[0] = float( var_20 );
                        continue;
                    case "first_event_max":
                        var_8[1] = float( var_20 );
                        continue;
                    case "event_time_min":
                        var_9[0] = float( var_20 );
                        continue;
                    case "event_time_max":
                        var_9[1] = float( var_20 );
                        continue;
                    case "dist_min":
                        var_10[0] = float( var_20 );
                        continue;
                    case "dist_max":
                        var_10[1] = float( var_20 );
                        continue;
                    case "cone_min":
                        var_11[0] = float( var_20 );
                        continue;
                    case "cone_max":
                        var_11[1] = float( var_20 );
                        continue;
                    case "travel_min":
                        var_12[0] = float( var_20 );
                        continue;
                    case "travel_max":
                        var_12[1] = float( var_20 );
                        continue;
                    case "travel_time_min":
                        var_13[0] = float( var_20 );
                        continue;
                    case "travel_time_max":
                        var_13[1] = float( var_20 );
                        continue;
                    case "pitch_min":
                        var_14[0] = float( var_20 );
                        continue;
                    case "pitch_max":
                        var_14[1] = float( var_20 );
                        continue;
                    case "pitch_time_min":
                        var_15[0] = float( var_20 );
                        continue;
                    case "pitch_time_max":
                        var_15[1] = float( var_20 );
                        continue;
                    default:
                        continue;
                }
            }
        }

        if ( var_16 > 0 )
        {
            if ( isdefined( var_5[0] ) )
            {
                if ( isstring( var_5[0] ) )
                    var_5[1] = 1.0;

                var_2["oneshots"] = var_5;
            }

            if ( isdefined( var_6[0] ) )
                var_2["loops"] = var_6;

            if ( isdefined( var_7[0] ) )
                var_2["single_loops"] = var_7;

            if ( isdefined( var_8[0] ) )
                var_2["first_event"] = _ID9694( var_8 );

            if ( isdefined( var_9[0] ) )
                var_2["event_time"] = _ID9694( var_9 );

            if ( isdefined( var_10[0] ) )
                var_2["radius"] = _ID9694( var_10 );

            if ( isdefined( var_11[0] ) )
                var_2["cone"] = _ID9694( var_11 );

            if ( isdefined( var_12[0] ) )
                var_2["delta"] = _ID9694( var_12 );

            if ( isdefined( var_13[0] ) )
                var_2["travel_time"] = _ID9694( var_13 );

            if ( isdefined( var_14[0] ) )
                var_2["pitch"] = _ID9694( var_14 );

            if ( isdefined( var_15[0] ) )
                var_2["pitch_time"] = _ID9694( var_15 );

            if ( !isdefined( var_2["radius"] ) )
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
        var_4 = _ID9685( var_2, var_0 );

    if ( !isdefined( var_4 ) || var_4.size == 0 )
        var_4 = _ID9685( var_3, var_0 );

    if ( !isdefined( var_4 ) || var_4.size == 0 )
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
    var_7 = _func_2a0( var_0, "dynamic_ambience_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( isdefined( var_7 ) )
    {
        for ( var_8 = 1; var_8 < var_2; var_8++ )
        {
            var_9 = _func_2a1( var_0, 0, "dynamic_ambience_names", var_8, var_7[0], var_7[1] );
            var_10 = _func_2a1( var_0, 0, var_1, var_8, var_7[0], var_7[1] );
            var_11 = 0;

            if ( var_10 != "" && var_9 != "comments" )
            {
                switch ( var_9 )
                {
                    case "components":
                        var_4 = _ID9688( var_10, "preset definition", "components" );
                        continue;
                    case "first_event_min":
                        if ( isdefined( var_10 ) && var_10 != "" )
                            var_5[0] = float( var_10 );

                        continue;
                    case "first_event_max":
                        if ( isdefined( var_10 ) && var_10 != "" )
                            var_5[1] = float( var_10 );

                        continue;
                    case "event_time_min":
                        if ( isdefined( var_10 ) && var_10 != "" )
                            var_6[0] = float( var_10 );

                        continue;
                    case "event_time_max":
                        if ( isdefined( var_10 ) && var_10 != "" )
                            var_6[1] = float( var_10 );
                    case "comment":
                        continue;
                    default:
                        continue;
                }
            }
        }

        var_11 = 0;

        if ( isdefined( var_5[0] ) )
        {
            var_11 = 1;
            var_3["first_event"] = var_5;
        }

        if ( isdefined( var_6[0] ) )
        {
            var_11 = 1;
            var_3["event_time"] = var_6;
        }

        if ( var_11 )
        {
            if ( isdefined( var_4[0][1] ) )
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
        var_4 = _ID9693( var_2, var_0 );

    if ( !isdefined( var_4 ) || var_4.size == 0 )
        var_4 = _ID9693( var_3, var_0 );

    if ( !isdefined( var_4 ) || var_4.size == 0 )
        return;

    return var_4;
}

_ID9687( var_0 )
{
    var_1 = [];

    if ( isdefined( level._ID1374._ID9654._ID28450[var_0] ) )
        var_1 = level._ID1374._ID9654._ID28450[var_0];
    else
        var_1 = _ID9692( var_0, 1 );

    if ( !isdefined( var_1 ) || var_1.size == 0 )
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

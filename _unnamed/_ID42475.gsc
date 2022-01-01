// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34551()
{
    if ( !isdefined( level._ID1632 ) )
    {
        level._ID1632 = spawnstruct();
        level._ID1632._ID17491 = 0;
        level._ID1632._ID10132 = 1.0;
        thread _ID34555();
        _ID34505();
        _ID42492::_ID34549();
        _ID34652( level._ID912 );
        _ID42490::_ID34567();
        _ID42490::_ID34528();
        _ID42495::_ID34687();
        _ID42491::_ID34531();
        _ID34576();
        _ID42476::_ID34503();
    }
}

_ID34555()
{
    level._ID1632._ID20524 = 1;
    waitframe;
    level._ID1632._ID20524 = 0;
}

_ID34563()
{
    return level._ID1632._ID20524;
}

_ID34576()
{
    level._ID1632._ID23484 = [];
}

_ID34640( var_0, var_1 )
{
    level._ID1632._ID23484[var_0] = var_1;
}

_ID34585( var_0, var_1, var_2 )
{
    level notify( "stop_other_music" );
    level endon( "stop_other_music" );

    if ( isdefined( var_2 ) )
        childthread _ID34575( "snd_music_handler", var_0, var_1, var_2 );
    else if ( isdefined( var_1 ) )
        childthread _ID34575( "snd_music_handler", var_0, var_1 );
    else
        childthread _ID34575( "snd_music_handler", var_0 );
}

_ID34575( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( level._ID1632._ID23484[var_0] ) )
    {
        if ( isdefined( var_3 ) )
            thread [[ level._ID1632._ID23484[var_0] ]]( var_1, var_2, var_3 );
        else if ( isdefined( var_2 ) )
            thread [[ level._ID1632._ID23484[var_0] ]]( var_1, var_2 );
        else if ( isdefined( var_1 ) )
            thread [[ level._ID1632._ID23484[var_0] ]]( var_1 );
        else
            thread [[ level._ID1632._ID23484[var_0] ]]();
    }
}

_ID34638( var_0 )
{

}

_ID34639( var_0 )
{

}

_ID34544( var_0, var_1 )
{
    var_2 = undefined;

    if ( isarray( var_1 ) )
        var_2 = var_1[var_0];

    return var_2;
}

_ID34542()
{
    return gettime() * 0.001;
}

_ID34587()
{
    level._ID1632._ID17491++;
    return level._ID1632._ID17491;
}

_ID34571( var_0, var_1 )
{
    return _func_255( var_0, var_1 );
}

_ID34530()
{
    var_0 = newhudelem();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 setshader( "white", 640, 480 );
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 1;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 1.0;
    var_0._ID408 = 1;
    wait 0.05;
    var_0 destroy();
}

_ID34659( var_0 )
{

}

_ID34685()
{
    if ( self._ID216 >= self._ID23037 )
        wait 0.05;
    else
        self._ID216++;

    if ( !self._ID29754 )
        thread _ID34686();
}

_ID34686()
{
    self._ID29754 = 1;
    waitframe;
    self._ID29754 = 0;
    self._ID216 = 0;
}

_ID34545( var_0 )
{
    var_1 = spawnstruct();
    var_1._ID680 = "throttle_waiter";
    var_1._ID216 = 0;
    var_1._ID29754 = 0;
    var_2 = 10;

    if ( isdefined( var_0 ) )
        var_2 = max( var_0, 1 );

    var_1._ID23037 = var_2;
    return var_1;
}

_ID34652( var_0 )
{
    level._ID1632._ID34995 = var_0;
}

_ID34543()
{
    return level._ID1632._ID34995;
}

_ID34589( var_0, var_1, var_2 )
{
    var_3 = [];

    for ( var_4 = 0; var_4 < var_2; var_4++ )
    {
        var_5 = tablelookupbyrow( var_0, var_1, var_4 );
        var_3[var_5] = var_4;
    }

    return var_3;
}

_ID34590( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];

    for ( var_6 = 0; var_6 < var_1.size; var_6++ )
    {
        var_7 = var_1[var_6];
        var_8 = 0;
        var_9 = undefined;
        var_10 = 0;
        var_11 = 0;
        var_12 = undefined;
        var_13 = "";
        var_14 = _func_2a0( var_7, var_3, var_4 );

        if ( isdefined( var_14 ) )
        {
            while ( var_10 < 10 && var_8 + var_14[0] < var_14[1] )
            {
                var_15 = tablelookupbyrow( var_7, var_8 + var_14[0], var_11 );

                if ( var_15 != "" )
                {
                    var_10 = 0;

                    if ( !isdefined( var_9 ) )
                    {
                        var_9 = _ID34589( var_7, var_8 + var_14[0], var_2 );
                        var_11 = var_9[var_3];
                    }
                    else
                    {
                        var_16 = 0;

                        if ( !isdefined( var_12 ) )
                            var_16 = 1;
                        else if ( var_15 != var_13 )
                        {
                            var_5[var_13] = var_12;
                            var_16 = 1;
                        }

                        if ( var_16 )
                        {
                            var_12 = spawnstruct();
                            var_12._ID680 = var_15;
                            var_12._ID32823 = [];
                            var_13 = var_15;
                        }

                        var_17 = [];

                        foreach ( var_21, var_19 in var_9 )
                        {
                            var_20 = tablelookupbyrow( var_7, var_8 + var_14[0], var_19 );

                            if ( var_21 == var_3 )
                            {
                                if ( var_20 != var_13 )
                                    break;

                                continue;
                            }

                            if ( _ID42407::_ID20617( var_20 ) )
                            {
                                var_17[var_21] = float( var_20 );
                                continue;
                            }

                            var_17[var_21] = var_20;
                        }

                        var_12._ID32823[var_12._ID32823.size] = var_17;
                    }
                }
                else
                {
                    if ( isdefined( var_12 ) )
                    {
                        var_5[var_13] = var_12;
                        var_12 = undefined;
                    }

                    var_10++;
                }

                var_8++;
            }

            if ( isdefined( var_12 ) )
            {
                var_5[var_13] = var_12;
                var_12 = undefined;
            }
        }
    }

    return var_5;
}

_ID34505()
{

}

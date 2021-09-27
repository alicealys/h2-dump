// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34551()
{
    if ( !_func_02F( level._ID1632 ) )
    {
        level._ID1632 = _func_1A5();
        level._ID1632._ID17491 = 0;
        level._ID1632._ID10132 = 1.0;
        thread _unknown_0036();
        _unknown_013E();
        _ID42492::_ID34549();
        _unknown_00D1( level._ID912 );
        _ID42490::_ID34567();
        _ID42490::_ID34528();
        _ID42495::_ID34687();
        _ID42491::_ID34531();
        _unknown_005F();
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

    if ( _func_02F( var_2 ) )
        childthread _unknown_00CC( "snd_music_handler", var_0, var_1, var_2 );
    else if ( _func_02F( var_1 ) )
        childthread _unknown_00DC( "snd_music_handler", var_0, var_1 );
    else
        childthread _unknown_00E6( "snd_music_handler", var_0 );
}

_ID34575( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( level._ID1632._ID23484[var_0] ) )
    {
        if ( _func_02F( var_3 ) )
            thread [[ level._ID1632._ID23484[var_0] ]]( var_1, var_2, var_3 );
        else if ( _func_02F( var_2 ) )
            thread [[ level._ID1632._ID23484[var_0] ]]( var_1, var_2 );
        else if ( _func_02F( var_1 ) )
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

    if ( _func_0D3( var_1 ) )
        var_2 = var_1[var_0];

    return var_2;
}

_ID34542()
{
    return _func_03D() * 0.001;
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
    var_0 = _func_1AF();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "white", 640, 480 );
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 1;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 1.0;
    var_0._ID408 = 1;
    wait 0.05;
    var_0 _meth_808F();
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
        thread _unknown_023E();
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
    var_1 = _func_1A5();
    var_1._ID680 = "throttle_waiter";
    var_1._ID216 = 0;
    var_1._ID29754 = 0;
    var_2 = 10;

    if ( _func_02F( var_0 ) )
        var_2 = _func_0E6( var_0, 1 );

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
        var_5 = _func_1C2( var_0, var_1, var_4 );
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
        var_14 = _func_2A0( var_7, var_3, var_4 );

        if ( _func_02F( var_14 ) )
        {
            while ( var_10 < 10 && var_8 + var_14[0] < var_14[1] )
            {
                var_15 = _func_1C2( var_7, var_8 + var_14[0], var_11 );

                if ( var_15 != "" )
                {
                    var_10 = 0;

                    if ( !_func_02F( var_9 ) )
                    {
                        var_9 = _unknown_033E( var_7, var_8 + var_14[0], var_2 );
                        var_11 = var_9[var_3];
                    }
                    else
                    {
                        var_16 = 0;

                        if ( !_func_02F( var_12 ) )
                            var_16 = 1;
                        else if ( var_15 != var_13 )
                        {
                            var_5[var_13] = var_12;
                            var_16 = 1;
                        }

                        if ( var_16 )
                        {
                            var_12 = _func_1A5();
                            var_12._ID680 = var_15;
                            var_12._ID32823 = [];
                            var_13 = var_15;
                        }

                        var_17 = [];
                        var_18 = var_9;

                        for ( var_21 = _func_1DA( var_18 ); _func_02F( var_21 ); var_21 = _func_1BF( var_18, var_21 ) )
                        {
                            var_19 = var_18[var_21];
                            var_20 = _func_1C2( var_7, var_8 + var_14[0], var_19 );

                            if ( var_21 == var_3 )
                            {
                                if ( var_20 != var_13 )
                                    break;

                                continue;
                            }

                            if ( _ID42407::_ID20617( var_20 ) )
                            {
                                var_17[var_21] = _func_0C2( var_20 );
                                continue;
                            }

                            var_17[var_21] = var_20;
                        }

                        var_clear_3
                        var_12._ID32823[var_12._ID32823.size] = var_17;
                    }
                }
                else
                {
                    if ( _func_02F( var_12 ) )
                    {
                        var_5[var_13] = var_12;
                        var_12 = undefined;
                    }

                    var_10++;
                }

                var_8++;
            }

            if ( _func_02F( var_12 ) )
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

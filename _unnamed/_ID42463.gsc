// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID3988( var_0 )
{
    if ( _func_02F( var_0 ) )
        _unknown_0055( var_0 );

    _ID42475::_ID34551();

    if ( !_func_02F( level._ID3674 ) )
        level._ID3674 = _func_1A5();

    if ( !_func_02F( level._ID912 ) )
        level._ID912 = _func_128( _func_039( "mapname" ) );

    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    level._ID1374._ID39979 = 0;
    level._ID1374._ID36700 = [];
    level._ID1374._ID23483 = [];
    level._ID1374._ID28683 = [];
    level._ID1374._ID28678 = [];
    level._ID1374._ID40720 = 0;
    level._ID1374._ID36405 = undefined;
    level._ID1374._ID27690 = _func_1A5();
    level._ID1374._ID27690._ID22516 = "idle";
    level._ID1374._ID27690._ID22517 = "idle";
    level._ID2880 = [];
    level._ID2890 = [];
    level._ID15273 = 1;
    level._ID29941 = "";
    level._ID13116 = 0;
    level._ID13117 = 1;
    level._ID13120[level._ID13116] = "";
    level._ID13120[level._ID13117] = "";
    _ID42470::_ID34390();
    _ID42464::_ID9657();
    _ID42474::_ID4649();
    thread _ID42465::_ID23805();
    _ID42469::_ID30451();
    _ID42473::_ID41745();
    _ID42471::_ID4517();
    _ID42466::_ID24567();
    thread _unknown_0124();
    _unknown_072E();
    _unknown_0894( ::_unknown_0988 );
}

_ID4237( var_0 )
{
    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    level._ID1374._ID22212 = var_0;
}

_ID4028()
{
    if ( !_func_02F( level._ID1374._ID22212 ) )
        level._ID1374._ID22212 = 1.0;

    wait 0.05;

    if ( _ID42237::_ID14396( "chyron_video_done" ) )
        _ID42237::_ID14413( "chyron_video_done" );

    _func_082( 1, level._ID1374._ID22212 );
}

_ID4013()
{
    return _func_02F( level._ID1374._ID35401 );
}

_ID4379()
{
    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    level._ID1374._ID35401 = 1;
}

_ID4241()
{
    thread _unknown_01B2();
}

_ID4268( var_0 )
{
    level notify( var_0 + "_line_emitter_stop" );
}

_ID4087( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 0.1;
    var_7 = 0.1;

    if ( _func_02F( var_4 ) )
    {
        var_6 = _func_0E6( var_4, 0 );
        var_7 = _func_0E6( var_4, 0 );
    }

    if ( _func_02F( var_5 ) )
        var_7 = _func_0E6( var_5, 0 );

    var_8 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_8._ID2521 = var_1;
    var_8._ID20591 = 0;
    var_8._ID28197 = var_2;
    var_8._ID28198 = var_3;
    var_8._ID13791 = var_6;
    var_8._ID578 = var_0;
    var_8 thread _unknown_025B();
    level waittill( var_0 + "_line_emitter_stop" );
    var_8 _meth_8076( 0, var_7 );
    wait(var_7);
    var_8 _ID42494::_ID34683();
    wait 0.05;
    var_8 _meth_80B7();
}

_ID4377()
{
    level endon( self._ID578 + "_line_emitter_stop" );
    var_0 = self._ID28198 - self._ID28197;
    var_1 = _func_119( var_0 );
    var_2 = _func_0F3( self._ID28197, self._ID28198 );
    var_3 = 0.1;

    for (;;)
    {
        var_4 = level._ID794._ID740 - self._ID28197;
        var_5 = _func_0FB( var_4, var_1 );
        var_5 = _func_0EE( var_5, 0, var_2 );
        var_6 = self._ID28197 + var_1 * var_5;

        if ( !self._ID20591 )
        {
            self._ID740 = var_6;
            _ID42494::_ID34625( self._ID2521 );
            self _meth_8076( 0 );
            wait 0.05;
            self _meth_8076( 1.0, self._ID13791 );
            self._ID20591 = 1;
        }
        else
            self _meth_82B8( var_6, var_3 );

        wait(var_3);
    }
}

_ID4090( var_0, var_1, var_2, var_3 )
{
    var_4 = _unknown_06D8( 1.0, var_2 );
    var_5 = _unknown_06E1( 1.0, var_3 );
    var_6 = _func_06A( "script_origin", var_1 );
    _unknown_0A05( var_6, var_0, var_4, var_5, 1 );
    return var_6;
}

_ID4271( var_0, var_1 )
{
    var_2 = _unknown_0703( 1.0, var_1 );
    _unknown_075A( var_0, var_2 );
}

_ID4240( var_0, var_1, var_2 )
{
    var_1 = _func_0EE( var_1, 0, 1.0 );
    var_3 = _unknown_0722( 1.0, var_2 );
    var_0 _meth_8076( var_1, var_3 );
}

_ID4239( var_0, var_1 )
{
    if ( var_0 == 1.0 )
    {
        _ID42465::_ID23807( "music" );
        _ID42465::_ID23801( "music", var_1 );
    }
    else
    {
        _ID42465::_ID23809( "music", var_0, var_1 );
        _ID42465::_ID23806( "music" );
    }

    level._ID1374._ID9427 = var_0;
}

_ID4236( var_0, var_1 )
{
    if ( var_0 == 1.0 )
    {
        _ID42465::_ID23807( "ambi" );
        _ID42465::_ID23801( "ambi", var_1 );
    }
    else
    {
        _ID42465::_ID23809( "ambi", var_0, var_1 );
        _ID42465::_ID23806( "ambi" );
    }

    level._ID1374._ID9422 = var_0;
}

_ID3890()
{
    var_0 = 1.0;

    if ( _func_02F( level._ID1374._ID9427 ) )
        var_0 = level._ID1374._ID9427;

    return var_0;
}

_ID3888()
{
    var_0 = 1.0;

    if ( _func_02F( level._ID1374._ID9422 ) )
        var_0 = level._ID1374._ID9422;

    return var_0;
}

_ID38848( var_0 )
{
    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    if ( !_func_02F( level._ID1374._ID38819 ) )
        level._ID1374._ID38819 = [];

    var_1 = undefined;

    if ( _func_02F( var_0 ) && var_0 )
    {
        if ( _func_02F( self._ID58 ) )
            var_1 = _func_129( self._ID58, " " );
    }
    else if ( _func_02F( self._ID31059 ) )
        var_1 = _func_129( self._ID31059, " " );
    else if ( _func_02F( self._ID4369 ) )
        var_1 = _func_129( self._ID4369, " " );

    if ( _func_02F( var_1 ) && var_1.size == 2 )
    {

    }
    else if ( _func_02F( var_1 ) && var_1.size == 1 )
    {
        for (;;)
        {
            self waittill( "trigger",  var_2  );
            _ID42474::_ID4669( var_1[0], self._ID31159 );
        }
    }

    if ( _func_02F( self._ID31055 ) )
    {
        if ( !_func_02F( level._ID1374._ID28678[self._ID31055] ) )
        {
            _unknown_08AE( "Trying to set a progress_map_function without defining the envelope in the level.aud.envs array." );
            self._ID31055 = undefined;
        }
    }

    if ( !_func_02F( level._ID1374._ID38818 ) )
        level._ID1374._ID38818 = [];

    if ( _func_02F( self._ID31049 ) )
        level._ID1374._ID38818[level._ID1374._ID38818.size] = self._ID31049;

    if ( _func_02F( self._ID31051 ) )
        level._ID1374._ID38818[level._ID1374._ID38818.size] = self._ID31051;

    if ( _func_02F( self._ID31054 ) )
        level._ID1374._ID38818[level._ID1374._ID38818.size] = self._ID31054;

    if ( _func_02F( self._ID31053 ) )
        level._ID1374._ID38818[level._ID1374._ID38818.size] = self._ID31053;

    if ( !_func_02F( self._ID31048 ) )
        self._ID31048 = "blend";

    var_3 = undefined;
    var_4 = undefined;
    var_5 = undefined;

    if ( _func_02F( self._ID1191 ) )
    {
        if ( !_func_02F( _ID42237::_ID16012() ) )
        {
            _unknown_0951( "Audo Zone Trigger at " + self._ID740 + " has defined a target, " + self._ID1191 + ", but that target doesn't exist." );
            return;
        }

        if ( _func_02F( _unknown_0896() ) )
        {
            var_3 = _unknown_08A1();

            if ( !_func_02F( _unknown_08A9() ) )
            {
                _unknown_097E( "Audo Zone Trigger at " + self._ID740 + " has defined a target, " + _unknown_08B6() + ", but that target doesn't exist." );
                return;
            }

            var_4 = _unknown_08CD();
        }
        else
        {
            var_6 = _ID42237::_ID16012();
            var_7 = 2 * self._ID740 - var_6._ID740;
            var_8 = _func_11A( var_7 );
            var_3 = _unknown_08E2();
            var_4 = var_3 + var_7;

            if ( _func_0F0( var_8[0] ) < 45 )
            {
                var_3 = ( var_3[0], var_3[1], 0 );
                var_4 = ( var_4[0], var_4[1], 0 );
            }
        }

        var_5 = _func_0F3( var_3, var_4 );
    }

    var_9 = 0;

    for (;;)
    {
        self waittill( "trigger",  var_2  );

        if ( _unknown_058A() && var_2 != level._ID794 )
            continue;

        if ( _func_02F( var_3 ) && _func_02F( var_4 ) )
        {
            if ( _func_02F( var_1 ) && _func_02F( var_1[0] ) && _func_02F( var_1[1] ) )
            {
                var_10 = _ID42474::_ID4638();

                if ( var_10 == var_1[0] )
                    var_9 = 0;
                else if ( var_10 == var_1[1] )
                    var_9 = 1;
                else if ( var_10 != "" )
                {
                    var_11 = _unknown_0918( var_3, var_4, var_5, var_2._ID740 );

                    if ( var_11 < 0.5 )
                    {
                        _ID42474::_ID4669( var_1[0] );
                        var_9 = 0;
                    }
                    else
                    {
                        _ID42474::_ID4669( var_1[1] );
                        var_9 = 1;
                    }
                }
                else
                {

                }
            }
            else
            {
                var_11 = _unknown_094D( var_3, var_4, var_5, var_2._ID740 );

                if ( var_11 < 0.5 )
                    var_9 = 0;
                else
                    var_9 = 1;
            }

            if ( !var_9 )
            {
                if ( _func_02F( var_1 ) && _func_02F( var_1[0] ) )
                {
                    if ( _func_02F( level._ID1632 ) && _func_02F( var_1[1] ) )
                    {
                        var_12 = "enter_" + var_1[1];
                        _ID42475::_ID34575( "snd_zone_handler", var_12, var_1[0] );
                    }
                    else if ( _func_02F( self._ID31050 ) )
                        _unknown_0DD5( self._ID31050, var_1[0] );
                }
                else if ( _func_02F( self._ID31050 ) )
                    _unknown_0DEA( self._ID31050, "front" );

                if ( _func_02F( self._ID31049 ) )
                {
                    if ( _func_02F( var_1 ) && _func_02F( var_1[0] ) )
                    {
                        if ( _func_02F( level._ID1374._ID38819[self._ID31049] ) )
                            [[ level._ID1374._ID38819[self._ID31049] ]]( var_1[0] );
                    }
                    else if ( _func_02F( level._ID1374._ID38819[self._ID31049] ) )
                        [[ level._ID1374._ID38819[self._ID31049] ]]( "front" );
                }
            }
            else
            {
                if ( _func_02F( var_1 ) && _func_02F( var_1[1] ) )
                {
                    if ( _func_02F( level._ID1632 ) )
                    {
                        var_12 = "enter_" + var_1[1];
                        _ID42475::_ID34575( "snd_zone_handler", var_12, var_1[1] );
                    }
                    else if ( _func_02F( self._ID31050 ) )
                        _unknown_0E7A( self._ID31050, var_1[1] );
                }
                else if ( _func_02F( self._ID31050 ) )
                    _unknown_0E8F( self._ID31050, "back" );

                if ( _func_02F( self._ID31049 ) )
                {
                    if ( _func_02F( var_1 ) && _func_02F( var_1[1] ) )
                    {
                        if ( _func_02F( level._ID1374._ID38819[self._ID31049] ) )
                            [[ level._ID1374._ID38819[self._ID31049] ]]( var_1[1] );
                    }
                    else if ( _func_02F( level._ID1374._ID38819[self._ID31049] ) )
                        [[ level._ID1374._ID38819[self._ID31049] ]]( "back" );
                }
            }
        }
        else
        {
            if ( _func_02F( self._ID31050 ) )
                _unknown_0EEE( self._ID31050 );

            if ( _func_02F( self._ID31049 ) )
            {
                if ( _func_02F( level._ID1374._ID38819[self._ID31049] ) )
                    [[ level._ID1374._ID38819[self._ID31049] ]]();
            }
        }

        var_13 = undefined;

        if ( _func_02F( _unknown_0B53( var_1, var_9 ) ) && _func_02F( _unknown_0B67( var_1, var_9 ) ) )
        {
            var_13 = _ID42474::_ID4674( _unknown_0B6F( var_1, var_9 ), _unknown_0B73( var_1, var_9 ) );

            if ( _func_02F( var_13 ) )
                var_13._ID23864 = self._ID31048;
        }

        if ( _func_02F( var_13 ) )
        {
            if ( _func_02F( var_13._ID14029 ) || _func_02F( var_13._ID14030 ) )
            {
                if ( !level._ID1374._ID41964._ID26158._ID14024 )
                {
                    _ID42490::_ID34501( 0 );
                    _ID42490::_ID34501( 1 );
                }
            }
        }

        var_14 = -1;
        var_11 = -1;

        while ( var_2 _meth_80B0( self ) )
        {
            if ( _func_02F( self._ID31053 ) )
            {
                var_15 = _unknown_0B75( var_3, var_4, var_2._ID740 );

                if ( _func_02F( level._ID1374._ID38819[self._ID31053] ) )
                    [[ level._ID1374._ID38819[self._ID31053] ]]( var_15 );
            }

            if ( _func_02F( var_3 ) && _func_02F( var_4 ) )
            {
                var_11 = _unknown_0B92( var_3, var_4, var_5, var_2._ID740 );

                if ( _func_02F( self._ID31055 ) )
                    var_11 = _ID38840( var_11, level._ID1374._ID28678[self._ID31055] );

                if ( var_11 != var_14 )
                {
                    if ( _func_02F( _unknown_0C1E( var_1, var_9 ) ) && _func_02F( _unknown_0C33( var_1, var_9 ) ) )
                        _ID42474::_ID4650( _unknown_0C3B( var_1, var_9 ), _unknown_0C3F( var_1, var_9 ), var_11 );

                    if ( _func_02F( self._ID31056 ) )
                        _unknown_100F( self._ID31056, var_11 );

                    if ( _func_02F( self._ID31054 ) )
                    {
                        if ( _func_02F( level._ID1374._ID38819[self._ID31054] ) )
                            [[ level._ID1374._ID38819[self._ID31054] ]]( var_11 );
                    }

                    if ( _func_02F( var_13 ) )
                        _unknown_0C29( var_11, var_13, var_9 );

                    var_14 = var_11;
                    _ID42474::_ID4652( var_11 );
                }
            }

            if ( _func_02F( self._ID31057 ) )
            {
                wait(self._ID31057);
                continue;
            }

            wait 0.1;
        }

        if ( _func_02F( var_3 ) && _func_02F( var_4 ) )
        {
            if ( var_11 > 0.5 )
            {
                if ( _func_02F( var_1 ) && _func_02F( var_1[1] ) )
                    _ID42474::_ID4653( var_1[1] );

                if ( _func_02F( var_1 ) && _func_02F( var_1[1] ) )
                {
                    if ( _func_02F( level._ID1632 ) )
                    {
                        var_16 = "exit_" + var_1[1];
                        _ID42475::_ID34575( "snd_zone_handler", var_16, var_1[1] );
                    }
                    else if ( _func_02F( self._ID31052 ) )
                        _unknown_10BF( self._ID31052, var_1[1] );
                }
                else if ( _func_02F( self._ID31052 ) )
                    _unknown_10D4( self._ID31052, "back" );

                if ( _func_02F( self._ID31051 ) )
                {
                    if ( _func_02F( var_1 ) && _func_02F( var_1[1] ) )
                    {
                        if ( _func_02F( level._ID1374._ID38819[self._ID31051] ) )
                            [[ level._ID1374._ID38819[self._ID31051] ]]( var_1[1] );
                    }
                    else if ( _func_02F( level._ID1374._ID38819[self._ID31051] ) )
                        [[ level._ID1374._ID38819[self._ID31051] ]]( "back" );
                }

                var_11 = 1;
            }
            else
            {
                if ( _func_02F( var_1 ) && _func_02F( var_1[0] ) )
                    _ID42474::_ID4653( var_1[0] );

                if ( _func_02F( var_1 ) && _func_02F( var_1[0] ) )
                {
                    if ( _func_02F( level._ID1632 ) )
                    {
                        var_16 = "exit_" + var_1[1];
                        _ID42475::_ID34575( "snd_zone_handler", var_16, var_1[0] );
                    }
                    else if ( _func_02F( self._ID31052 ) )
                        _unknown_117A( self._ID31052, var_1[0] );
                }
                else if ( _func_02F( self._ID31052 ) )
                    _unknown_118F( self._ID31052, "front" );

                if ( _func_02F( self._ID31051 ) )
                {
                    if ( _func_02F( var_1 ) && _func_02F( var_1[0] ) )
                    {
                        if ( _func_02F( level._ID1374._ID38819[self._ID31051] ) )
                            [[ level._ID1374._ID38819[self._ID31051] ]]( var_1[0] );
                    }
                    else if ( _func_02F( level._ID1374._ID38819[self._ID31051] ) )
                        [[ level._ID1374._ID38819[self._ID31051] ]]( "front" );
                }

                var_11 = 0;
            }

            if ( _func_02F( var_13 ) )
                _unknown_0DD9( var_11, var_13, var_9 );

            continue;
        }

        if ( _func_02F( self._ID31052 ) )
            _unknown_11FA( self._ID31052 );

        if ( _func_02F( self._ID31051 ) )
        {
            if ( _func_02F( level._ID1374._ID38819[self._ID31051] ) )
                [[ level._ID1374._ID38819[self._ID31051] ]]();
        }
    }
}

_ID51023()
{
    var_0 = self._ID49173;

    for (;;)
    {
        self waittill( "trigger",  var_1  );
        level._ID49725 = var_0;
        var_2 = var_1 _ID42237::_ID35164();
        var_1 _meth_8596( var_0 );

        while ( var_2 _meth_80B0( self ) && level._ID49725 == var_0 )
        {
            waittillframeend;
            var_2._ID740 = var_1._ID740;
            var_2._ID65 = var_1._ID65;
        }

        var_2 _meth_80B7();

        if ( level._ID49725 == var_0 )
        {
            var_1 _meth_8596( "" );
            level._ID49725 = "";
        }
    }
}

_ID38845( var_0, var_1, var_2, var_3 )
{
    if ( var_2 == 0 )
        return 0;

    if ( !_func_02F( self._ID31058 ) )
    {
        var_4 = _func_119( var_1 - var_0 );
        var_5 = var_3 - var_0;
        var_6 = _func_0FB( var_5, var_4 );
        var_6 /= var_2;
    }
    else
    {
        var_7 = _func_0F3( var_3, var_0 );
        var_6 = var_7 / var_2;
    }

    return _func_0EE( var_6, 0, 1.0 );
}

_ID38846( var_0, var_1, var_2 )
{
    var_3 = _func_119( var_1 - var_0 );
    var_4 = var_2 - var_0;
    var_5 = _func_0FB( var_4, var_3 );
    return var_3 * var_5 + var_0;
}

_ID38838( var_0, var_1, var_2 )
{
    var_0 = _func_0EE( var_0, 0, 1.0 );

    if ( var_2 )
        var_0 = 1.0 - var_0;

    var_3 = var_1._ID23864;

    if ( var_3 == "blend" )
    {
        var_4 = 1.0 - var_0;
        var_5 = var_0;
        _ID42474::_ID4673( var_4, var_5, var_1 );
    }
    else if ( var_0 < 0.33 )
        _ID42474::_ID4669( var_1._ID41959 );
    else if ( var_0 > 0.66 )
        _ID42474::_ID4669( var_1._ID41969 );
}

_ID38847( var_0 )
{
    if ( !_func_02F( level._ID1374._ID38819 ) )
        level._ID1374._ID38819 = [];

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];
        var_3 = var_2[0];
        var_4 = var_2[1];
        level._ID1374._ID38819[var_3] = var_4;
    }

    if ( _func_02F( level._ID1374._ID38818 ) )
    {
        var_5 = level._ID1374._ID38818;

        for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
            var_3 = var_5[var_6];

        var_clear_1
        var_clear_0
        level._ID1374._ID38818 = undefined;
    }
}

_ID38840()
{
    var_0 = _ID42237::_ID16012();
    return var_0._ID1191;
}

_ID38839()
{
    var_0 = _ID42237::_ID16012();
    return var_0._ID740;
}

_ID38841()
{
    var_0 = _ID42237::_ID16012();
    return var_0 _ID42237::_ID16012();
}

_ID38842()
{
    var_0 = _unknown_0FE7();
    return var_0._ID740;
}

_ID38843( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return undefined;

    if ( var_1 )
        return var_0[1];
    else
        return var_0[0];
}

_ID38844( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return undefined;

    if ( var_1 )
        return var_0[0];
    else
        return var_0[1];
}

_ID4083( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _func_06A( "script_origin", level._ID794._ID740 );
    var_7 = _func_06A( "script_origin", var_0 );

    if ( !_func_02F( var_3 ) )
        var_3 = _func_0F3( var_7._ID740, var_6._ID740 );

    if ( !_func_02F( var_4 ) )
    {
        var_8 = 30;
        var_4 = 36 * var_8;
    }

    var_9 = _unknown_10D4( var_7._ID740, var_6._ID740, var_3, var_4 );
    var_9[0] = ( var_9[0][0], var_9[0][1], var_6._ID740[2] );
    var_9[1] = ( var_9[1][0], var_9[1][1], var_6._ID740[2] );
    var_10 = _func_0F3( var_7._ID740, var_9[0] );

    if ( !_func_02F( var_5 ) )
        var_5 = 1800;

    var_11 = var_10 / var_5;

    if ( _func_02F( var_9 ) && var_9.size == 2 )
    {
        var_12 = _func_06A( "script_origin", var_7._ID740 );
        var_13 = _func_06A( "script_origin", var_7._ID740 );
        var_12 _ID42494::_ID34605( var_1 );
        var_13 _ID42494::_ID34605( var_2 );
        var_12 _meth_82B8( var_9[0], var_11, 0, 0 );
        var_13 _meth_82B8( var_9[1], var_11, 0, 0 );
    }
}

_ID4372( var_0, var_1, var_2, var_3 )
{
    var_4 = var_1 - var_0;
    var_5 = _unknown_11A6( var_4 );
    var_6 = _unknown_11AC( var_4 );
    var_7 = _unknown_11B8( var_5 );
    var_8 = 0.5 * var_2 / var_7;
    var_5 = _unknown_11A8( var_5, var_8 );
    var_6 = _unknown_11AE( var_6, var_8 );
    var_5 = _unknown_11C2( var_5, 90 );
    var_6 = _unknown_11C9( var_6, -90 );
    var_9 = _unknown_11E3( var_4 );
    var_10 = var_3 / var_9;
    var_11 = _unknown_11CF( var_4, var_10 );
    var_11 += var_4;
    var_11 += var_4;
    var_5 += var_11;
    var_6 += var_11;
    var_12 = [];
    var_12[0] = var_5;
    var_12[1] = var_6;
    return var_12;
}

_ID3891( var_0, var_1 )
{
    var_2 = var_0;

    if ( _func_02F( var_1 ) )
        var_2 = var_1;

    return var_2;
}

_ID4214( var_0, var_1 )
{
    return ( var_0[0] * var_1, var_0[1] * var_1, var_0[2] );
}

_ID4213( var_0, var_1 )
{
    return ( var_0[0] * var_1, var_0[1] * var_1, var_0[2] * var_1 );
}

_ID4169( var_0, var_1 )
{
    var_2 = var_0[0] * _func_0BC( var_1 ) - var_0[1] * _func_0BB( var_1 );
    var_3 = var_0[0] * _func_0BB( var_1 ) + var_0[1] * _func_0BC( var_1 );
    return ( var_2, var_3, var_0[2] );
}

_ID3781( var_0 )
{
    var_1 = ( 0, 0, 0 );
    var_1 += var_0;
    return var_1;
}

_ID4311( var_0 )
{
    return _func_0EC( var_0[0] * var_0[0] + var_0[1] * var_0[1] );
}

_ID4143( var_0 )
{
    _unknown_12A3( var_0, "synch_frame" );
}

_ID4139( var_0, var_1 )
{

}

_ID4144( var_0 )
{
    _unknown_12B3( var_0, "warning" );
}

_ID4142( var_0 )
{
    _unknown_12BF( var_0, "error" );
}

_ID4141( var_0 )
{
    _unknown_12C8( var_0 );
}

_ID4145( var_0 )
{
    _unknown_12D4( var_0, "zone" );
}

_ID4146( var_0 )
{
    _unknown_12E0( var_0, "zone_small" );
}

_ID13122( var_0, var_1 )
{
    if ( _func_02F( var_0 ) && _func_02F( var_1 ) )
        return var_0 == var_1;
    else
        return !_func_02F( var_0 ) && !_func_02F( var_1 );
}

_ID20960( var_0 )
{
    return !_func_02F( var_0 );
}

_ID3871( var_0, var_1 )
{
    var_0 _meth_8076( 0.0, var_1 );
    var_0 _ID42237::_ID10192( var_1 + 0.05, ::_meth_80B3 );
    var_0 _ID42237::_ID10192( var_1 + 0.1, ::_meth_80B7 );
}

_ID3868( var_0, var_1 )
{
    var_0 _meth_8076( 0.0, var_1 );
    wait(var_1 + 0.05);
    var_0 _meth_80B2();
    wait 0.05;
    var_0 _meth_80B7();
}

_ID4055( var_0, var_1 )
{
    if ( var_0 <= var_1 )
        return var_0;
    else
        return var_1;
}

_ID4036( var_0, var_1 )
{
    if ( var_0 >= var_1 )
        return var_0;
    else
        return var_1;
}

_ID3772( var_0, var_1, var_2 )
{
    if ( var_0 < var_1 )
        var_0 = var_1;
    else if ( var_0 > var_2 )
        var_0 = var_2;

    return var_0;
}

_ID3889( var_0 )
{
    if ( _func_0D3( var_0 ) )
        return [ var_0[0][0], var_0[var_0.size - 1][0] ];
    else
        return [ var_0._ID13109[0][0], var_0._ID13109[var_0._ID13109.size - 1][0] ];
}

_ID4212( var_0, var_1, var_2 )
{
    var_1 = _unknown_138B( 1, var_1 );
    var_2 = _unknown_1392( 1, var_2 );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_0[var_3][0] *= var_1;
        var_0[var_3][1] *= var_2;
    }

    return var_0;
}

_ID4248( var_0, var_1, var_2 )
{
    return var_0 + var_2 * var_1 - var_0;
}

_ID4012( var_0 )
{
    return var_0 == _func_0C1( var_0 / 2 ) * 2;
}

_ID3867( var_0 )
{
    var_1 = 10.0;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    _ID42465::_ID23797( "mute_music", 0.1 );
    wait 0.05;
    _ID42465::_ID23801( "mute_music", var_1 );
}

_ID3769()
{
    self endon( "cleanup" );

    if ( !_func_02F( self._ID34989 ) )
        self._ID34989 = 0;

    self waittill( "sounddone" );

    if ( _func_02F( self ) )
    {
        self._ID34989 = 1;
        self notify( "cleanup" );
    }
}

_ID3968( var_0 )
{
    return _unknown_146B( _ID42474::_ID4638(), var_0 );
}

_ID3876( var_0 )
{
    if ( _func_02F( level._ID9245 ) )
    {
        var_1 = level._ID9245["" + var_0];

        if ( _func_02F( var_1 ) )
            return var_1[0];
    }
    else
    {
        for ( var_2 = 0; var_2 < level._ID9242.size; var_2++ )
        {
            var_3 = level._ID9242[var_2];

            if ( !_func_02F( var_3 ) )
                continue;

            if ( var_3._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_3._ID40005["exploder"] ) )
                continue;

            if ( _func_0C1( var_3._ID40005["exploder"] ) != var_0 )
                continue;

            return var_3;
        }
    }

    return undefined;
}

_ID3824( var_0, var_1, var_2, var_3 )
{
    thread _unknown_159B( var_0, var_1, var_2, var_3 );
}

_ID4373( var_0, var_1, var_2, var_3 )
{
    var_1 = _func_0EE( var_1, 0, 10 );
    var_4 = 1.0;

    if ( _func_02F( var_2 ) )
        var_4 = var_2;

    var_5 = var_4;

    if ( _func_02F( var_3 ) )
        var_5 = var_3;

    _ID42465::_ID23797( var_0, var_4 );
    wait(var_1);
    _ID42465::_ID23801( var_0, var_5 );
}

_ID4076( var_0 )
{
    return _func_0B9( 1, 100 ) <= var_0;
}

_ID4261( var_0, var_1 )
{
    level endon( "aud_stop_slow_mo_gunshot" );
    var_2 = _func_0DE( "axis" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _unknown_1630( var_1 );
    }

    var_clear_2
    var_clear_0
    var_6 = 0;
    var_7 = level._ID794 _meth_831C();

    for (;;)
    {
        if ( level._ID794 _meth_8348() )
        {
            if ( !var_6 )
            {
                var_6 = 1;
                [[ var_0 ]]( var_7 );
            }
        }
        else
            var_6 = 0;

        wait 0.05;
    }
}

_ID3964( var_0 )
{
    level endon( "aud_stop_slow_mo_gunshot" );
    var_1 = level._ID794 _meth_831C();

    for (;;)
    {
        self waittill( "damage",  var_6, var_5, var_4, var_3, var_2  );

        if ( _func_02F( var_5 ) )
            [[ var_0 ]]( var_1, var_2, var_3, var_5, var_6 );
    }
}

_ID4272()
{
    level notify( "aud_stop_slow_mo_gunshot" );
}

_ID4319( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_2 ) )
    {
        var_4 = 60;

        if ( _func_02F( var_3 ) )
            var_4 = var_3;

        var_5 = _func_0E7( var_0 );
        var_6 = var_0 - var_5 * 100;
        var_0 = var_5 + var_6 * 1 / var_4;
    }

    var_7 = var_0;

    if ( _func_02F( var_1 ) && var_1 )
        _unknown_16FC( var_7 );
    else
        wait(var_7);
}

_ID4247( var_0 )
{
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_1 thread _unknown_1724( var_0 );
    var_1 waittill( "slo_mo_wait_done" );
    var_1 _meth_80B7();
}

_ID4380( var_0 )
{
    var_1 = 0;

    while ( var_1 < var_0 )
    {
        var_2 = _func_03B( "com_timescale" );
        var_1 += 0.05 / var_2;
        wait 0.05;
    }

    self notify( "slo_mo_wait_done" );
}

_ID4140( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( self ) )
    {
        var_5 = ( 1, 1, 1 );
        var_6 = ( 1, 0, 0 );
        var_7 = ( 0, 1, 0 );
        var_8 = ( 0, 1, 1 );
        var_9 = 5;
        var_10 = var_5;

        if ( _func_02F( var_1 ) )
            var_9 = var_1;

        if ( _func_02F( var_2 ) )
        {
            var_10 = var_2;

            switch ( var_10 )
            {

            }
        }

        if ( _func_02F( var_4 ) )
            thread _unknown_1836( var_4 );

        self endon( "death" );
        self endon( "aud_stop_3D_print" );

        while ( _func_02F( self ) )
        {
            var_11 = var_0;

            if ( _func_02F( var_3 ) )
                var_11 += self [[ var_3 ]]();

            wait 0.05;
        }

        return;
        case "blue":
        case "red":
        case "green":
        case "white":
        default:
    }
}

_ID4378( var_0 )
{
    self endon( "death" );
    wait(var_0);

    if ( _func_02F( self ) )
        self notify( "aud_stop_3D_print" );
}

_ID3680( var_0, var_1 )
{
    level._ID1374._ID28678[var_0] = var_1;
}

_ID3893( var_0 )
{
    if ( _func_02F( level._ID1374._ID28678[var_0] ) )
        return level._ID1374._ID28678[var_0];
}

_ID20504()
{
    if ( !_func_02F( level._ID1374._ID9836 ) )
        return 1;
    else
        return level._ID1374._ID9836;
}

_ID3827()
{
    level._ID794._ID10887 = 0;
    level._ID1374._ID9836 = 1;
}

_ID3809()
{
    level._ID794._ID10887 = 1;
    level._ID1374._ID9836 = 0;
}

_ID29851()
{
    if ( _unknown_18E4() && _func_02F( level._ID1374._ID19461 ) )
    {
        level._ID1374._ID19461 = undefined;
        _ID42465::_ID23801( "deaths_door", 2 );
        _ID42476::_ID34512( "deathsdoor" );
        level notify( "kill_deaths_door_audio" );
        level._ID794 _meth_84A2( 0 );
        _ID42474::_ID4655( 0 );
        thread _ID42469::_ID30454( level._ID1374._ID9835._ID29935 );
        _ID42494::_ID34606( "deaths_door_exit" );
    }
}

_ID43428()
{
    level._ID1374._ID9835 = _func_1A5();
    level._ID1374._ID9835._ID29935 = undefined;
}

_ID32266()
{
    level._ID1374._ID19461 = 1;

    if ( !_func_02F( level._ID1374._ID9835 ) )
        level._ID1374._ID9835 = _func_1A5();

    level._ID1374._ID9835._ID29935 = undefined;
    level._ID1374._ID9835._ID29935 = level._ID1374._ID9467;

    if ( _unknown_1975() )
    {
        _ID42474::_ID4655( 1 );
        thread _ID42469::_ID30454( "deathsdoor" );
        _ID42465::_ID23797( "deaths_door" );
        _ID42476::_ID34518( "deathsdoor" );
        _ID42494::_ID34606( "deaths_door_intro" );
        _ID42494::_ID34606( "deaths_door_breaths", "kill_deaths_door_audio", 0, 0.5 );
        _ID42494::_ID34626( "deaths_door_loop", "kill_deaths_door_audio", 0, 0.5 );
        level._ID794 _meth_84A2( 1 );
    }
}

_ID45382()
{
    _ID42490::_ID34527( 2 );
    _ID42474::_ID4655( 0 );
}

_ID50842()
{
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "flashbang", 0.5 );
}

_ID4238( var_0 )
{
    level._ID1374._ID13841 = var_0;
}

_ID4320()
{
    wait 0.05;

    while ( !_ID42237::_ID14396( "missionfailed" ) )
        wait 0.05;

    var_0 = "shg_mission_failed_stinger";
    _ID42237::_ID14413( "missionfailed" );

    if ( _func_02F( level._ID1374._ID13841 ) )
        var_0 = level._ID1374._ID13841;

    if ( _func_1D0( var_0 ) )
        _ID42466::_ID24570( var_0, 2, 4 );
}

_ID4309()
{
    level._ID1374._ID39979 = 1;
    _ID42474::_ID4672();
    _ID42469::_ID30455();
    _ID42464::_ID9674();
    _ID42473::_ID41751();
    _ID42473::_ID41747( "default" );
}

_ID32459( var_0 )
{
    _ID42475::_ID34652( var_0 );
    _unknown_1AE1();
    level._ID1374._ID36700["map"] = var_0;
}

_ID15998()
{
    return _ID42475::_ID34543();
}

_ID32261( var_0 )
{
    level._ID1374._ID36700["damb"] = var_0;
}

_ID15663()
{
    if ( !_func_02F( level._ID1374._ID36700["damb"] ) )
        return "soundtables/" + level._ID912 + ".csv";
    else
        return "soundtables/" + level._ID1374._ID36700["damb"];
}

_ID32259( var_0 )
{
    level._ID1374._ID36700["damb_comp"] = var_0;
}

_ID15661( var_0 )
{
    if ( !_func_02F( level._ID1374._ID36700["damb_comp"] ) )
        return "soundtables/" + level._ID912 + ".csv";
    else
        return "soundtables/" + level._ID1374._ID36700["damb_comp"];
}

_ID32260( var_0 )
{
    level._ID1374._ID36700["damb_loops"] = var_0;
}

_ID15662( var_0 )
{
    if ( !_func_02F( level._ID1374._ID36700["damb_loops"] ) )
        return "soundtables/" + level._ID912 + ".csv";
    else
        return "soundtables/" + level._ID1374._ID36700["damb_loops"];
}

_ID32427( var_0 )
{
    level._ID1374._ID36700["reverb"] = var_0;
}

_ID15958()
{
    if ( !_func_02F( level._ID1374._ID36700["reverb"] ) )
        return "soundtables/" + level._ID912 + ".csv";
    else
        return "soundtables/" + level._ID1374._ID36700["reverb"];
}

_ID32532( var_0 )
{
    level._ID1374._ID36700["zone"] = var_0;
}

_ID16090()
{
    if ( !_func_02F( level._ID1374._ID36700["zone"] ) )
        return "soundtables/" + level._ID912 + ".csv";
    else
        return "soundtables/" + level._ID1374._ID36700["zone"];
}

_ID3892()
{
    return level._ID1374._ID27690._ID22516;
}

_ID3895( var_0, var_1, var_2 )
{
    var_3 = 0;
    var_4 = _unknown_1CEB();

    if ( _func_02F( var_4 ) )
        var_3 = var_4;
    else
    {
        var_5 = 3;
        var_6 = 10;
        var_7 = 100;

        if ( _func_02F( var_0 ) )
            var_5 = var_0;

        if ( _func_02F( var_2 ) )
            var_7 = var_2;

        if ( _func_02F( var_2 ) )
            var_6 = var_1;

        var_8 = 36 * var_7;
        var_9 = 36 * var_6;
        var_10 = _func_0DE( "bad_guys" );
        var_11 = 0;
        var_12 = 0;
        var_13 = var_10;

        for ( var_17 = _func_1DA( var_13 ); _func_02F( var_17 ); var_17 = _func_1BF( var_13, var_17 ) )
        {
            var_14 = var_13[var_17];

            if ( _func_02F( var_14._ID39 ) && var_14._ID39 >= var_5 )
            {
                var_15 = _func_0F3( level._ID794._ID740, var_14._ID740 );

                if ( var_15 < var_8 )
                {
                    var_11++;

                    if ( var_15 < var_9 )
                        var_16 = 1.0;
                    else
                        var_16 = 1.0 - var_15 - var_9 / var_8 - var_9;

                    var_12 += var_16;
                }
            }
        }

        var_clear_2
        var_clear_0

        if ( var_11 > 0 )
            var_3 = var_12 / var_11;
        else
            var_3 = 0;
    }

    return var_3;
}

_ID3894()
{
    return level._ID1374._ID36405;
}

_ID4242( var_0 )
{
    level._ID1374._ID36405 = var_0;
}

_ID3773()
{
    level._ID1374._ID36405 = undefined;
}

_ID4062( var_0 )
{
    var_1 = 0;
    var_2 = 3600;

    if ( _func_02F( var_0 ) )
        var_2 = 36 * var_0;

    var_3 = _func_0DE( "bad_guys" );
    var_4 = var_3;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];

        if ( _func_1A7( var_5 ) )
        {
            var_6 = _func_0F3( level._ID794._ID740, var_5._ID740 );

            if ( var_6 < var_2 )
                var_1++;
        }
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID10394( var_0, var_1, var_2, var_3, var_4 )
{
    var_2 = _unknown_1BA1( var_2, 0.0, 1.0 );
    var_3 = _unknown_1BA6( 0.05, var_3 );
    var_5 = 0;

    if ( _func_02F( var_4 ) )
        var_5 = var_4;

    if ( var_5 )
        var_0 _ID42494::_ID34625( var_1 );
    else
        var_0 _ID42494::_ID34605( var_1 );

    var_0 _meth_8076( 0.0 );
    var_0 _ID42237::_ID10192( 0.05, ::_meth_8076, var_2, var_3 );
}

_ID10398( var_0, var_1 )
{
    return _func_255( var_0, var_1 );
}

_ID10396( var_0, var_1 )
{
    return _func_255( var_0, var_1 );
}

_ID10397( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0 - var_1 / var_2 - var_1;
    var_4 = _func_0EE( var_4, 0.0, 1.0 );
    return _func_255( var_4, var_3 );
}

_ID10404( var_0 )
{
    level._ID1374._ID23483[level._ID1374._ID23483.size] = var_0;
}

_ID10408( var_0, var_1, var_2 )
{
    thread _unknown_1F01( var_0, var_1, var_2 );
}

_ID10405( var_0, var_1, var_2 )
{
    _unknown_1F06( var_0, var_1, var_2 );
}

_ID10409( var_0, var_1, var_2 )
{
    var_3 = 0;
    var_4 = 0;
    var_5 = level._ID1374._ID23483;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_4 = self [[ var_6 ]]( var_0, var_1 );

        if ( !var_3 && _func_02F( var_4 ) && var_4 == 1 )
        {
            var_3 = var_4;
            continue;
        }

        if ( !var_3 && !_func_02F( var_4 ) )
            var_3 = 1;
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_2 ) )
        self notify( var_2 );

    if ( !var_3 )
        _unknown_1C5F( "\tAUDIO MESSAGE NOT HANDLED: " + var_0 );
}

_ID4088( var_0, var_1, var_2 )
{
    var_3 = 0;
    var_4 = 1;
    var_5 = self;

    if ( _func_02F( var_2 ) )
        _unknown_1FDF( var_0, var_1, var_3, var_4 );
    else
        _unknown_1FEE( var_0, var_5, var_1, var_3, var_4 );
}

_ID10413( var_0 )
{
    _ID42494::_ID34605( var_0, "sounddone" );
    self waittill( "sounddone" );
    wait 0.05;
    self _meth_80B7();
}

_ID10390( var_0, var_1, var_2, var_3 )
{
    _unknown_1DAD( var_1, var_2, var_3 );
    var_4 = _func_06A( "script_origin", level._ID794._ID740 );
    var_4 thread _unknown_2007( var_0 );
    return var_4;
}

_ID10399( var_0 )
{
    var_1 = _func_06A( "script_origin", level._ID794._ID740 );
    var_1 thread _unknown_201F( var_0 );
    return var_1;
}

_ID10389( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = thread _unknown_2039( var_0, var_1, var_2, var_3 );
    return var_5;
}

_ID10391( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    thread _unknown_207B( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
}

_ID10392( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    _unknown_1E22( var_2, var_3, var_4, var_5 );
    thread _unknown_20E2( var_0, var_1, var_6, var_7, var_8, var_9 );
}

_ID10411( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_0 == "loop" )
    {
        level endon( var_2 + "internal" );
        _ID42494::_ID34625( var_1 );
        level waittill( var_2 );

        if ( _func_02F( self ) )
        {
            if ( _func_02F( var_4 ) )
            {
                self _meth_8076( 0, var_4 );
                wait(var_4);
            }

            _ID42494::_ID34683();
            wait 0.05;
            self _meth_80B7();
        }
    }
    else if ( var_0 == "oneshot" )
    {
        _ID42494::_ID34605( var_1, "sounddone" );

        if ( _func_02F( var_3 ) )
            self _meth_8076( var_3, 0 );

        self waittill( "sounddone" );

        if ( _func_02F( self ) )
            self _meth_80B7();
    }
}

_ID10410( var_0, var_1, var_2 )
{
    level endon( var_1 );

    while ( _func_02F( self ) )
        wait 0.1;

    level notify( var_1 + "internal" );

    if ( _func_02F( var_0 ) )
    {
        if ( _func_02F( var_2 ) )
        {
            var_0 _meth_8076( 0, var_2 );
            wait(var_2);
        }

        var_0 _ID42494::_ID34683();
        wait 0.05;
        var_0 _meth_80B7();
    }
}

_ID10401( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = "oneshot";

    if ( _func_02F( var_2 ) )
        var_8 = var_2;

    var_9 = var_1._ID740;

    if ( _func_02F( var_6 ) )
        var_9 = var_6;

    var_10 = _func_06A( "script_origin", var_9 );

    if ( _func_02F( var_4 ) )
        var_10 _meth_8053( var_1, "tag_origin", var_4, ( 0, 0, 0 ) );
    else
        var_10 _meth_8053( var_1 );

    if ( var_8 == "loop" )
        var_1 thread _unknown_21D7( var_10, var_3, var_7 );

    var_10 thread _unknown_21BE( var_8, var_0, var_3, var_5, var_7 );
    return var_10;
}

_ID10403( var_0, var_1, var_2 )
{
    _ID42494::_ID34605( var_0, "sounddone" );

    if ( _func_02F( var_2 ) )
    {
        wait(var_2);
        self _meth_80B3();
    }
    else
        self waittill( "sounddone" );

    wait 0.05;
    self _meth_80B7();
}

_ID10402( var_0, var_1, var_2 )
{
    var_3 = _func_06A( "script_origin", var_1 );
    var_3 thread _unknown_225D( var_0, var_1, var_2 );
    return var_3;
}

_ID10407( var_0 )
{
    _ID42490::_ID34650( var_0 );
}

_ID10406( var_0, var_1, var_2, var_3 )
{
    _ID42490::_ID34647( var_0, var_1, var_3 );
}

_ID10393()
{
    self waittill( "sounddone" );
    _unknown_22A3();
}

_ID10412()
{
    _ID42237::_ID10192( 0.05, ::_meth_80B7 );
}

_ID10388( var_0, var_1 )
{
    var_2 = 1;

    switch ( var_0 )
    {

    }

    endswitch( 12 )  case "light_flicker_on" loc_23D0 case "xm25_contact_explode" loc_23CD case "DEPRECATED_aud_play_conversation" loc_23CF case "DEPRECATED_aud_play_sound_at" loc_23B4 case "msg_audio_fx_ambientExp" loc_23B8 case "missile_fired" loc_23BC case "end_player_slide_trigger" loc_23C0 case "start_player_slide_trigger" loc_23C4 case "generic_building_bomb_shake" loc_23C4 case "level_fade_to_black" loc_23C2 case "aud_play_dynamic_explosion" loc_23DE default loc_240E
    return var_2;
    case "xm25_contact_explode":
    case "DEPRECATED_aud_play_conversation":
    case "DEPRECATED_aud_play_sound_at":
    case "missile_fired":
    case "generic_building_bomb_shake":
    case "start_player_slide_trigger":
    case "level_fade_to_black":
    case "aud_play_dynamic_explosion":
    default:
}

_ID10395( var_0 )
{
    var_1 = 0;

    switch ( var_0._ID669 )
    {

    }

    return var_1;
    case "furniture_lamp_table1":
    case "com_cafe_light_part1_off":
    case "furniture_lamp_floor1_off":
    default:
}

_ID10400( var_0, var_1 )
{
    var_2 = var_1;
    var_3 = [];

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        var_3[var_4] = var_2[var_4]._ID13016._ID4912;
        var_2[var_4]._ID13016._ID4912 = 0;
    }

    var_5 = var_2;

    for ( var_8 = _func_1DA( var_5 ); _func_02F( var_8 ); var_8 = _func_1BF( var_5, var_8 ) )
    {
        var_6 = var_5[var_8];

        if ( _func_02F( var_6._ID10179 ) )
            wait(var_6._ID10179);

        var_7 = _func_06A( "script_origin", ( 0, 0, 0 ) );
        var_7 _meth_8053( var_6._ID13016, "", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        var_7 _ID42494::_ID34605( var_6._ID34972, "sounddone" );
        var_7 waittill( "sounddone" );
        wait 0.05;
        var_7 _meth_80B7();
    }

    var_clear_3
    var_clear_0

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
        var_2[var_4]._ID13016._ID4912 = var_3[var_4];
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19838()
{
    var_0 = _func_1A2( "generic_flickering", "targetname" );
    var_1 = _func_1A2( "generic_pulsing", "targetname" );
    var_2 = _func_1A2( "generic_double_strobe", "targetname" );
    var_3 = _func_1A2( "burning_trash_fire", "targetname" );
    var_4 = _func_1A2( "scripted_light", "targetname" );
    var_5 = _ID42237::_ID16640( "h2_generic_flickering", "targetname" );
    _ID42237::_ID3350( var_5, ::_unknown_0293, 1 );
    _unknown_0154( "h2_pulsing_alarm", 0, 1, 0.3, 0.3, 0, 0, 0, 0, 0 );
    _unknown_0190( "h2_pulsing_alarm", _ID42237::_ID16640( "h2_pulsing_alarm", "targetname" ) );
    _unknown_017D( "h2_pulsing_alarm_02", 0, 1, 0.6, 0.6, 0, 0, 0, 0, 0 );
    _unknown_01B9( "h2_pulsing_alarm_02", _ID42237::_ID16640( "h2_pulsing_alarm_02", "targetname" ) );
    _unknown_01AD( "h2_flickering_01", 0.001, 1, 0, 0.3, 0, 1.5, 0, 0.5, 1 );
    _unknown_01E9( "h2_flickering_01", _ID42237::_ID16640( "h2_flickering_01", "targetname" ) );
    _unknown_01DD( "h2_flickering_02", 0.75, 1, 0, 0, 0.2, 1.5, 0, 1.5, 1 );
    _unknown_0219( "h2_flickering_02", _ID42237::_ID16640( "h2_flickering_02", "targetname" ) );
    _unknown_020E( "h2_flickering_03", 0, 1, 0.5, 0.5, 0.15, 1, 0, 0.25, 1 );
    _unknown_024A( "h2_flickering_03", _ID42237::_ID16640( "h2_flickering_03", "targetname" ) );
    _unknown_023E( "h2_flickering_flare", 0.5, 1, 0, 0.25, 0, 0.025, 0, 0.025, 1 );
    _unknown_027A( "h2_flickering_flare", _ID42237::_ID16640( "h2_flickering_flare", "targetname" ) );
    _unknown_0277( "h2_flickering_fire", 0.6, 1, 0.1, 0.5, 0.3, 1.5, 0.2, 1.5, 1 );
    _unknown_02B3( "h2_flickering_fire", _ID42237::_ID16640( "h2_flickering_fire", "targetname" ) );
    _unknown_02B0( "h2_flickering_intense_fire", 0.5, 1, 0.1, 0.4, 0.2, 0.5, 0.2, 0.5, 1 );
    _unknown_02EC( "h2_flickering_intense_fire", _ID42237::_ID16640( "h2_flickering_intense_fire", "targetname" ) );
    _unknown_02E9( "h2_flickering_intense_fire2", 0.5, 1, 0.1, 0.5, 0.2, 0.4, 0.2, 0.7, 1 );
    _unknown_0325( "h2_flickering_intense_fire2", _ID42237::_ID16640( "h2_flickering_intense_fire2", "targetname" ) );
    _unknown_0322( "h2_flickering_intense_fire_dcb", 0.25, 1, 0.3, 0.6, 0.2, 0.5, 0.2, 0.5, 1 );
    _unknown_035E( "h2_flickering_intense_fire_dcb", _ID42237::_ID16640( "h2_flickering_intense_fire_dcb", "targetname" ) );
    _unknown_0358( "h2_flickering_broken_light", 0, 1, 0.1, 0.5, 0.15, 0.5, 0.2, 1.5, 1 );
    _unknown_0394( "h2_flickering_broken_light", _ID42237::_ID16640( "h2_flickering_broken_light", "targetname" ) );
    _unknown_0385( "h2_flickering_intense", 0.001, 1, 0, 0, 0, 1.5, 0, 0.3, 1 );
    _unknown_03C1( "h2_flickering_intense", _ID42237::_ID16640( "h2_flickering_intense", "targetname" ) );
    _ID42237::_ID3350( var_0, ::_unknown_059B );
    _ID42237::_ID3350( var_1, ::_unknown_0481 );
    _ID42237::_ID3350( var_2, ::_unknown_04B8 );
    _ID42237::_ID3350( var_3, ::_unknown_0974 );
    _ID42237::_ID3350( var_4, ::_unknown_0AB6 );
}

_ID52844( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( !_func_02F( level._ID46300 ) )
        level._ID46300 = [];

    if ( !_func_02F( var_0 ) )
        return;

    if ( _func_02F( level._ID46300[var_0] ) )
        return;

    var_10 = _func_1A5();
    var_10._ID53272 = var_1;
    var_10._ID48403 = var_2;
    var_10._ID51712 = var_3;
    var_10._ID48527 = var_4;
    var_10._ID46994 = var_5;
    var_10._ID53594 = var_6;
    var_10._ID49248 = var_7;
    var_10._ID51934 = var_8;
    var_10._ID54303 = var_9;
    level._ID46300[var_0] = var_10;
}

_ID51954( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        return;

    _unknown_0463( var_0, [ var_1 ] );
}

_ID46386( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return;

    if ( !_func_02F( var_1 ) )
        return;

    if ( var_1.size == 0 )
        return;

    var_2 = level._ID46300[var_0];

    if ( !_func_02F( var_2 ) )
        return;

    var_3 = [];
    var_4 = var_1;

    for ( var_10 = _func_1DA( var_4 ); _func_02F( var_10 ); var_10 = _func_1BF( var_4, var_10 ) )
    {
        var_5 = var_4[var_10];

        if ( !_func_02F( var_5._ID1191 ) )
            continue;

        var_5._ID51712 = var_2._ID51712;
        var_5._ID48527 = var_2._ID48527;
        var_5._ID46994 = var_2._ID46994;
        var_5._ID53594 = var_2._ID53594;
        var_5._ID49248 = var_2._ID49248;
        var_5._ID51934 = var_2._ID51934;
        var_5._ID54303 = var_2._ID54303;
        var_6 = _func_1A2( var_5._ID1191, "targetname" );

        if ( var_6.size == 0 )
            continue;

        var_7 = var_6;

        for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
        {
            var_8 = var_7[var_9];

            if ( _func_02F( var_8._ID922 ) )
            {
                if ( var_8._ID922 == "flickering_lights" )
                {
                    var_8._ID53272 = var_2._ID53272 * var_8 _meth_81EA();
                    var_8._ID48403 = var_2._ID48403 * var_8 _meth_81EA();
                }
            }
        }

        var_clear_3
        var_clear_1
        var_3[var_3.size] = var_5;
    }

    var_clear_6
    var_clear_0
    _ID42237::_ID3350( var_3, ::_unknown_0681 );
}

_ID20556( var_0 )
{
    return var_0._ID170 == "light_spot" || var_0._ID170 == "light_omni" || var_0._ID170 == "light";
}

_ID14555( var_0, var_1, var_2, var_3 )
{
    self endon( "kill_flicker" );
    var_4 = var_0;
    var_5 = 0.0;
    _ID42407::_ID13024( "stop_flicker" );

    for (;;)
    {
        if ( _ID42407::_ID13019( "stop_flicker" ) )
        {
            wait 0.05;
            continue;
        }

        var_6 = var_4;
        var_4 = var_0 + var_1 - var_0 * _func_0B8( 1.0 );

        if ( var_2 != var_3 )
            var_5 += _func_0BA( var_2, var_3 );
        else
            var_5 += var_2;

        if ( var_5 == 0 )
            var_5 += 1e-07;

        for ( var_7 = var_6 - var_4 * 1 / var_5; var_5 > 0 && !_ID42407::_ID13019( "stop_flicker" ); var_5 -= 0.05 )
        {
            self _meth_8046( var_4 + var_7 * var_5 );
            wait 0.05;
        }
    }
}

_ID21263( var_0 )
{
    var_1 = _func_1A2( var_0, "script_noteworthy" );
    var_2 = undefined;
    var_3 = 1e+08.0;
    var_4 = var_1;

    for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
    {
        var_5 = var_4[var_7];
        var_6 = _func_0F3( self._ID740, var_5._ID740 );

        if ( var_6 < var_3 )
        {
            var_2 = var_5;
            var_3 = var_6;
        }
    }

    var_clear_3
    var_clear_0

    if ( _func_02F( var_2 ) )
    {
        var_9 waittill( "damage",  var_14, var_14, var_14, var_14, var_14, var_14, var_14  );
        self notify( "kill_flicker" );
        wait 0.05;
        self _meth_8046( ( 0, 0, 0 ) );
    }
}

_ID15524()
{
    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
    {
        self _meth_81EB( 0 );
        return;
    }

    var_0 = self _meth_81EA();
    var_1 = 0.05;
    var_2 = var_0;
    var_3 = 0.3;
    var_4 = 0.6;
    var_5 = var_0 - var_1 / var_3 / 0.05;
    var_6 = var_0 - var_1 / var_4 / 0.05;

    for (;;)
    {
        var_7 = 0;

        while ( var_7 < var_4 )
        {
            var_2 -= var_6;
            var_2 = _func_0EE( var_2, 0, 100 );
            self _meth_81EB( var_2 );
            var_7 += 0.05;
            wait 0.05;
        }

        wait 1;
        var_7 = 0;

        while ( var_7 < var_3 )
        {
            var_2 += var_5;
            var_2 = _func_0EE( var_2, 0, 100 );
            self _meth_81EB( var_2 );
            var_7 += 0.05;
            wait 0.05;
        }

        wait 0.5;
    }
}

_ID15505()
{
    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
    {
        self _meth_81EB( 0 );
        return;
    }

    var_0 = self _meth_81EA();
    var_1 = 0.05;
    var_2 = 0;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = 0;
    var_6 = [];

    if ( _func_02F( self._ID922 ) )
    {
        var_7 = _func_1A2( self._ID922, "targetname" );

        for ( var_8 = 0; var_8 < var_7.size; var_8++ )
        {
            if ( _unknown_07A2( var_7[var_8] ) )
            {
                var_5 = 1;
                var_6[var_6.size] = var_7[var_8];
            }

            if ( var_7[var_8]._ID170 == "script_model" )
            {
                var_3 = var_7[var_8];
                var_4 = _func_1A1( var_3._ID1191, "targetname" );
                var_2 = 1;
            }
        }
    }

    for (;;)
    {
        self _meth_81EB( var_1 );

        if ( var_2 )
        {
            var_3 _meth_805A();
            var_4 _meth_8059();
        }

        wait 0.8;
        self _meth_81EB( var_0 );

        if ( var_2 )
        {
            var_3 _meth_8059();
            var_4 _meth_805A();
        }

        wait 0.1;
        self _meth_81EB( var_1 );

        if ( var_2 )
        {
            var_3 _meth_805A();
            var_4 _meth_8059();
        }

        wait 0.12;
        self _meth_81EB( var_0 );

        if ( var_2 )
        {
            var_3 _meth_8059();
            var_4 _meth_805A();
        }

        wait 0.1;
    }
}

_ID16189( var_0 )
{
    var_1 = _func_1A2( "light_flicker_model", "targetname" );
    var_2 = [];
    var_3 = _ID42237::_ID16182( var_0, var_1 );

    if ( _func_02F( var_3 ) )
        var_2[0] = var_3;

    return var_2;
}

_ID48424( var_0 )
{
    self endon( "stop_dynamic_light_behavior" );
    self endon( "death" );

    if ( !_func_02F( self._ID1191 ) )
        return;

    self._ID47454 = _func_1A2( self._ID1191, "targetname" );
    self._ID43670 = undefined;
    self._ID47812 = undefined;
    self._ID52890 = [];
    var_1 = self._ID47454;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID922 ) )
        {
            if ( var_2._ID922 == "flickering_model_on" )
            {
                self._ID43670 = var_2;
                continue;
            }

            if ( var_2._ID922 == "flickering_model_off" )
            {
                self._ID47812 = var_2;
                continue;
            }

            if ( var_2._ID922 == "flickering_lights" )
                self._ID52890[self._ID52890.size] = var_2;
        }
    }

    var_clear_2
    var_clear_0

    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
    {
        if ( self._ID52890.size > 0 )
        {
            var_4 = self._ID52890;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                var_5 _meth_81EB( 0 );
            }

            var_clear_2
            var_clear_0
        }

        return;
    }

    if ( self._ID52890.size == 0 )
        return;

    if ( _func_02F( var_0 ) && var_0 )
        _unknown_0A62();

    if ( _func_02F( self._ID43670 ) && _func_02F( self._ID43670._ID31220 ) )
    {
        var_7 = _func_129( self._ID43670._ID31220, ", " );
        self._ID43670._ID15244 = "tag_origin";
        self._ID43670._ID15195 = _ID42237::_ID16299( var_7[0] );

        if ( var_7.size > 1 )
            self._ID43670._ID15244 = var_7[1];

        self._ID43670.fx_started = 1;
        _func_157( self._ID43670._ID15195, self._ID43670, self._ID43670._ID15244 );
    }

    if ( _func_02F( self._ID43670 ) && _func_02F( self._ID43670._ID31388 ) && self._ID43670._ID31388 == "delay_flickering" )
        self._ID43670 waittill( "start_flickering" );

    _ID42237::_ID3350( self._ID52890, ::_unknown_0BE8 );
    thread _unknown_0CAC();
}

_ID52563()
{
    if ( _func_02F( self._ID47655 ) )
        self._ID51712 = self._ID47655;

    if ( _func_02F( self._ID51407 ) )
        self._ID48527 = self._ID51407;

    if ( _func_02F( self._ID54068 ) )
        self._ID46994 = self._ID54068;

    if ( _func_02F( self._ID44426 ) )
        self._ID53594 = self._ID44426;

    if ( _func_02F( self._ID44180 ) )
        self._ID49248 = self._ID44180;

    if ( _func_02F( self._ID54726 ) )
        self._ID51934 = self._ID54726;

    if ( _func_02F( self._ID46155 ) )
        self._ID54303 = self._ID46155;

    var_0 = self._ID52890;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1 ) )
            continue;

        if ( _func_02F( self._ID53385 ) )
            var_1._ID53272 = self._ID53385 * var_1 _meth_81EA();

        if ( _func_02F( self._ID44625 ) )
            var_1._ID48403 = self._ID44625 * var_1 _meth_81EA();
    }

    var_clear_2
    var_clear_0
}

_ID15511()
{
    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
    {
        self _meth_81EB( 0 );
        return;
    }

    self endon( "stop_dynamic_light_behavior" );
    self endon( "death" );
    self._ID22415 = 0;
    self._ID22441 = undefined;
    self._ID39484 = undefined;
    self._ID22413 = 0;
    self._ID22412 = [];
    self._ID22417 = undefined;
    self._ID22419 = [];

    if ( _func_02F( self._ID31273 ) )
    {
        self._ID22417 = _ID42237::_ID15808();
        var_0 = self._ID22417;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];

            if ( _func_02F( var_1._ID922 ) && var_1._ID922 == "on" )
            {
                if ( !_func_02F( self._ID22441 ) )
                    self._ID22441[0] = var_1;
                else
                    self._ID22441[self._ID22441.size] = var_1;

                continue;
            }

            if ( _func_02F( var_1._ID922 ) && var_1._ID922 == "off" )
            {
                if ( !_func_02F( self._ID39484 ) )
                    self._ID39484[0] = var_1;
                else
                    self._ID39484[self._ID39484.size] = var_1;

                self._ID39483 = var_1;
                continue;
            }

            if ( _unknown_0AED( var_1 ) )
            {
                self._ID22413 = 1;
                self._ID22412[self._ID22412.size] = var_1;
            }
        }

        var_clear_2
        var_clear_0
        self._ID22415 = 1;
    }

    if ( _func_02F( self._ID922 ) )
        self._ID22419 = _func_1A2( self._ID922, "targetname" );

    if ( !self._ID22419.size && !_func_02F( self._ID22417 ) )
        self._ID22419 = _unknown_0C02( self._ID740 );

    for ( var_3 = 0; var_3 < self._ID22419.size; var_3++ )
    {
        if ( _unknown_0B41( self._ID22419[var_3] ) )
        {
            self._ID22413 = 1;
            self._ID22412[self._ID22412.size] = self._ID22419[var_3];
        }

        if ( self._ID22419[var_3]._ID170 == "script_model" )
        {
            var_4 = self._ID22419[var_3];

            if ( !_func_02F( self._ID22441 ) )
                self._ID22441[0] = var_4;
            else
                self._ID22441[self._ID22441.size] = var_4;

            if ( !_func_02F( self._ID39484 ) )
                self._ID39484[0] = _func_1A1( var_4._ID1191, "targetname" );
            else
                self._ID39484[self._ID39484.size] = _func_1A1( var_4._ID1191, "targetname" );

            self._ID22415 = 1;
        }
    }

    if ( _func_02F( self._ID22441 ) )
    {
        var_5 = self._ID22441;

        for ( var_12 = _func_1DA( var_5 ); _func_02F( var_12 ); var_12 = _func_1BF( var_5, var_12 ) )
        {
            var_4 = var_5[var_12];

            if ( _func_02F( var_4 ) && _func_02F( var_4._ID31220 ) )
            {
                var_4._ID12315 = _ID42237::_ID9265( var_4._ID31220 );
                var_6 = ( 0, 0, 0 );
                var_7 = ( 0, 0, 0 );

                if ( _func_02F( var_4._ID31388 ) )
                {
                    var_8 = _func_129( var_4._ID31388, ", " );

                    if ( var_8.size < 3 )
                    {

                    }
                    else if ( var_8.size == 6 )
                    {
                        var_9 = _func_0C2( var_8[0] );
                        var_10 = _func_0C2( var_8[1] );
                        var_11 = _func_0C2( var_8[2] );
                        var_6 = ( var_9, var_10, var_11 );
                        var_9 = _func_0C2( var_8[3] );
                        var_10 = _func_0C2( var_8[4] );
                        var_11 = _func_0C2( var_8[5] );
                        var_7 = ( var_9, var_10, var_11 );
                    }
                    else
                    {
                        var_9 = _func_0C2( var_8[0] );
                        var_10 = _func_0C2( var_8[1] );
                        var_11 = _func_0C2( var_8[2] );
                        var_6 = ( var_9, var_10, var_11 );
                    }
                }

                var_4._ID12315._ID40005["origin"] = var_4._ID740 + var_6;
                var_4._ID12315._ID40005["angles"] = var_4._ID65 + var_7;
            }
        }

        var_clear_2
        var_clear_0
    }

    thread _unknown_0EF0();
    thread _unknown_112D();
}

_ID15509()
{
    _ID42407::_ID13024( "flicker_on" );

    if ( _func_02F( self._ID31270 ) && self._ID31270 != "nil" )
    {
        for (;;)
        {
            level waittill( self._ID31270 );
            _ID42407::_ID13025( "flicker_on" );

            if ( _func_02F( self._ID31271 ) && self._ID31271 != "nil" )
            {
                level waittill( self._ID31271 );
                _ID42407::_ID13021( "flicker_on" );
            }
        }
    }
    else
        _ID42407::_ID13025( "flicker_on" );
}

_ID15510()
{
    var_0 = self _meth_81EA();

    if ( !_ID42407::_ID13019( "flicker_on" ) )
    {
        if ( self._ID22415 )
        {
            if ( _func_02F( self._ID22441 ) )
            {
                var_1 = self._ID22441;

                for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
                {
                    var_2 = var_1[var_3];
                    var_2 _meth_805A();

                    if ( _func_02F( var_2._ID12315 ) )
                        var_2._ID12315 _ID42237::_ID26402();
                }

                var_clear_2
                var_clear_0
            }

            if ( _func_02F( self._ID39484 ) )
            {
                var_4 = self._ID39484;

                for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
                {
                    var_5 = var_4[var_6];
                    var_5 _meth_8059();
                }

                var_clear_2
                var_clear_0
            }
        }

        self _meth_81EB( 0 );

        if ( self._ID22413 )
        {
            for ( var_7 = 0; var_7 < self._ID22412.size; var_7++ )
                self._ID22412[var_7] _meth_81EB( 0 );
        }

        _ID42407::_ID13027( "flicker_on" );
        self _meth_81EB( var_0 );

        if ( self._ID22413 )
        {
            for ( var_7 = 0; var_7 < self._ID22412.size; var_7++ )
                self._ID22412[var_7] _meth_81EB( var_0 );
        }

        if ( self._ID22415 )
        {
            if ( _func_02F( self._ID22441 ) )
            {
                var_8 = self._ID22441;

                for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
                {
                    var_2 = var_8[var_9];
                    var_2 _meth_8059();

                    if ( _func_02F( var_2._ID12315 ) )
                        var_2._ID12315 _ID42407::_ID29840();
                }

                var_clear_2
                var_clear_0
            }

            if ( _func_02F( self._ID39484 ) )
            {
                var_10 = self._ID39484;

                for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
                {
                    var_5 = var_10[var_11];
                    var_5 _meth_805A();
                }

                var_clear_2
                var_clear_0
            }
        }
    }
}

_ID51113()
{
    if ( !_func_02F( self._ID52890[0] ) )
        return;

    if ( !self._ID52890[0] _ID42407::_ID13019( "flicker_on" ) )
    {
        if ( _func_02F( self._ID43670 ) )
        {
            self._ID43670 _meth_805A();

            if ( _func_02F( self._ID43670._ID12315 ) )
                self._ID43670._ID12315 _ID42237::_ID26402();
        }

        if ( _func_02F( self._ID47812 ) )
            self._ID47812 _meth_8059();

        var_0 = self._ID52890;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1 _meth_81EB( 0 );
        }

        var_clear_2
        var_clear_0
        self._ID52890[0] _ID42407::_ID13027( "flicker_on" );
        var_3 = self._ID52890;

        for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
        {
            var_1 = var_3[var_4];
            var_1 _meth_81EB( var_1._ID46351 );
        }

        var_clear_1
        var_clear_0

        if ( _func_02F( self._ID43670 ) )
        {
            self._ID43670 _meth_8059();

            if ( _func_02F( self._ID43670._ID12315 ) )
                self._ID43670._ID12315 _ID42407::_ID29840();
        }

        if ( _func_02F( self._ID47812 ) )
            self._ID47812 _meth_805A();
    }
}

_ID43288()
{
    self endon( "stop_dynamic_light_behavior" );
    self endon( "death" );

    if ( _func_02F( self._ID31523 ) )
        wait(self._ID31523);

    switch ( self._ID1193 )
    {

    }

    if ( !_func_02F( self._ID51712 ) )
        self._ID51712 = 0;

    if ( !_func_02F( self._ID48527 ) )
        self._ID48527 = 0;

    if ( self._ID51712 > self._ID48527 )
        return;

    if ( !_func_02F( self._ID46994 ) )
        self._ID46994 = 0.2;

    if ( !_func_02F( self._ID53594 ) )
        self._ID53594 = 1.5;

    if ( !_func_02F( self._ID49248 ) )
        self._ID49248 = 0.2;

    if ( !_func_02F( self._ID51934 ) )
        self._ID51934 = 1.5;

    if ( !_func_02F( self._ID54303 ) )
        self._ID54303 = 1;

    var_1 = _func_0E6( 0.05, self._ID51712 );
    var_2 = _func_0E6( 0.05, self._ID48527 );
    var_3 = self._ID46994;
    var_4 = self._ID53594;

    if ( var_3 > var_4 )
        return;

    var_5 = self._ID49248;
    var_6 = self._ID51934;

    if ( var_5 > var_6 )
        return;

    var_7 = self._ID54303;
    var_8 = self._ID52890;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( !_func_02F( var_9 ) )
            continue;

        if ( !_func_02F( var_9._ID53272 ) )
            var_9._ID53272 = 0;

        if ( !_func_02F( var_9._ID48403 ) )
            var_9._ID48403 = var_9 _meth_81EA();

        var_9._ID47081 = var_9._ID53272;
        var_9._ID46351 = var_9._ID48403;
        var_9._ID9421 = var_9._ID46351;
        var_9._ID54595 = var_9._ID46351 - var_9._ID47081 / var_2 / 0.05;
        var_9._ID50571 = var_9._ID46351 - var_9._ID47081 / var_1 / 0.05;

        if ( var_7 && var_9._ID54595 != var_9._ID50571 )
        {
            var_9._ID44472 = _func_0BA( var_9._ID54595, var_9._ID50571 );
            continue;
        }

        var_9._ID44472 = var_9._ID50571;
    }

    var_clear_2
    var_clear_0
    var_11 = 0;

    for ( var_12 = 0; _func_02F( self ); var_12 = var_11 )
    {
        _unknown_1358();
        var_13 = _ID42237::_ID37527( var_7, _func_0B9( 1, 10 ), 1 );

        while ( var_13 )
        {
            _unknown_136D();
            waittillframeend;

            if ( var_7 )
            {
                var_14 = _func_0BA( 0.0, 0.3 );

                if ( !var_11 && var_14 < 0.1 )
                    var_11 = 1;
                else if ( var_11 && var_14 < 0.1 )
                    var_11 = 0;
            }

            if ( !var_11 )
            {
                var_15 = self._ID52890;

                for ( var_16 = _func_1DA( var_15 ); _func_02F( var_16 ); var_16 = _func_1BF( var_15, var_16 ) )
                {
                    var_9 = var_15[var_16];

                    if ( !_func_02F( var_9 ) )
                        continue;

                    var_9._ID9421 = var_9._ID9421 - var_9._ID44472;

                    if ( var_9._ID9421 <= var_9._ID47081 )
                    {
                        var_11 = 1;

                        if ( var_9._ID54595 != var_9._ID50571 )
                        {
                            var_9._ID44472 = _func_0BA( var_9._ID54595, var_9._ID50571 );
                            continue;
                        }

                        var_9._ID44472 = var_9._ID54595;
                    }
                }

                var_clear_1
                var_clear_0
            }
            else
            {
                var_17 = self._ID52890;

                for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
                {
                    var_9 = var_17[var_18];

                    if ( !_func_02F( var_9 ) )
                        continue;

                    var_9._ID9421 = var_9._ID9421 + var_9._ID44472;

                    if ( var_9._ID9421 >= var_9._ID46351 )
                    {
                        var_11 = 0;

                        if ( var_9._ID54595 != var_9._ID50571 )
                        {
                            var_9._ID44472 = _func_0BA( var_9._ID54595, var_9._ID50571 );
                            continue;
                        }

                        var_9._ID44472 = var_9._ID54595;
                    }
                }

                var_clear_1
                var_clear_0
            }

            var_19 = self._ID52890;

            for ( var_20 = _func_1DA( var_19 ); _func_02F( var_20 ); var_20 = _func_1BF( var_19, var_20 ) )
            {
                var_9 = var_19[var_20];

                if ( !_func_02F( var_9 ) )
                    continue;

                var_9._ID9421 = _func_0C4( var_9._ID46351, _func_0E6( var_9._ID47081, var_9._ID9421 ) );
                var_9 _meth_81EB( var_9._ID9421 );
            }

            var_clear_4
            var_clear_3
            var_21 = self._ID52890[0];

            if ( !_func_02F( var_21 ) )
            {
                var_13--;
                continue;
            }

            if ( var_21._ID9421 < 0.3 * var_21._ID46351 - var_21._ID47081 )
            {
                if ( _func_02F( self._ID43670 ) )
                {
                    self._ID43670 _meth_805A();

                    if ( _func_02F( self._ID43670._ID12315 ) )
                        self._ID43670._ID12315 _ID42237::_ID26402();
                }

                if ( _func_02F( self._ID47812 ) )
                    self._ID47812 _meth_8059();

                if ( _func_02F( self._ID34523 ) )
                    self._ID34523 _meth_8076( 0, 0 );

                if ( _func_02F( self._ID43670 ) && _func_02F( self._ID43670._ID15195 ) && self._ID43670.fx_started )
                {
                    self._ID43670.fx_started = 0;
                    _func_159( self._ID43670._ID15195, self._ID43670, self._ID43670._ID15244 );
                }
            }
            else
            {
                if ( _func_02F( self._ID43670 ) )
                {
                    self._ID43670 _meth_8059();

                    if ( _func_02F( self._ID43670._ID12315 ) )
                        self._ID43670._ID12315 _ID42407::_ID29840();
                }

                if ( _func_02F( self._ID47812 ) )
                    self._ID47812 _meth_805A();

                if ( _func_02F( self._ID34523 ) )
                    self._ID34523 _meth_8076( 1, 0 );

                if ( _func_02F( self._ID43670 ) && _func_02F( self._ID43670._ID15195 ) && !self._ID43670.fx_started )
                {
                    self._ID43670.fx_started = 1;
                    _func_157( self._ID43670._ID15195, self._ID43670, self._ID43670._ID15244 );
                }
            }

            var_13--;
        }

        _unknown_15B7();

        if ( var_3 == var_4 )
            var_22 = var_4;
        else
            var_22 = _func_0BA( var_3, var_4 );

        if ( !var_11 && var_11 != var_12 && var_22 != 0 )
            wait(var_22);

        if ( var_5 == var_6 )
            var_23 = var_6;
        else
            var_23 = _func_0BA( var_5, var_6 );

        if ( var_11 && var_11 != var_12 && var_23 != 0 )
            wait(var_23);
    }

    case "h2_flickering_intense_fire":
    case "h2_flickering_fire":
    case "h2_flickering_flare":
    default:
}

_ID54364()
{
    self waittill( "death" );
    self._ID34523 _meth_80B2();
    wait 0.1;
    self._ID34523 _meth_80B7();
}

_ID15508()
{
    self endon( "stop_dynamic_light_behavior" );
    self endon( "death" );
    var_0 = 0.2;
    var_1 = 1.5;
    var_2 = self _meth_81EA();
    var_3 = 0;
    var_4 = var_2;
    var_5 = 0;

    while ( _func_02F( self ) )
    {
        _unknown_15E6();

        for ( var_5 = _func_0B9( 1, 10 ); var_5; var_5-- )
        {
            _unknown_15F3();
            wait(_func_0BA( 0.05, 0.1 ));

            if ( var_4 > 0.2 )
            {
                var_4 = _func_0BA( 0, 0.3 );

                if ( self._ID22415 )
                {
                    var_6 = self._ID22441;

                    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
                    {
                        var_7 = var_6[var_8];
                        var_7 _meth_805A();

                        if ( _func_02F( var_7._ID12315 ) )
                            var_7._ID12315 _ID42237::_ID26402();
                    }

                    var_clear_2
                    var_clear_0
                }

                if ( _func_02F( self._ID39484 ) )
                {
                    var_9 = self._ID39484;

                    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
                    {
                        var_10 = var_9[var_11];
                        var_10 _meth_8059();
                    }

                    var_clear_2
                    var_clear_0
                }
            }
            else
            {
                var_4 = var_2;

                if ( self._ID22415 )
                {
                    if ( _func_02F( self._ID22441 ) )
                    {
                        var_12 = self._ID22441;

                        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
                        {
                            var_7 = var_12[var_13];
                            var_7 _meth_8059();

                            if ( _func_02F( var_7._ID12315 ) )
                                var_7._ID12315 _ID42407::_ID29840();
                        }

                        var_clear_2
                        var_clear_0
                    }

                    if ( _func_02F( self._ID39484 ) )
                    {
                        var_14 = self._ID39484;

                        for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
                        {
                            var_10 = var_14[var_15];
                            var_10 _meth_805A();
                            _ID42463::_ID10405( "light_flicker_on", var_10 );
                        }

                        var_clear_2
                        var_clear_0
                    }
                }
            }

            self _meth_81EB( var_4 );

            if ( self._ID22413 )
            {
                for ( var_16 = 0; var_16 < self._ID22412.size; var_16++ )
                    self._ID22412[var_16] _meth_81EB( var_4 );
            }
        }

        _unknown_1706();
        self _meth_81EB( var_2 );

        if ( self._ID22413 )
        {
            for ( var_16 = 0; var_16 < self._ID22412.size; var_16++ )
                self._ID22412[var_16] _meth_81EB( var_2 );
        }

        if ( self._ID22415 )
        {
            if ( _func_02F( self._ID22441 ) )
            {
                var_17 = self._ID22441;

                for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
                {
                    var_7 = var_17[var_18];
                    var_7 _meth_8059();

                    if ( _func_02F( var_7._ID12315 ) )
                        var_7._ID12315 _ID42407::_ID29840();
                }

                var_clear_2
                var_clear_0
            }

            if ( _func_02F( self._ID39484 ) )
            {
                var_19 = self._ID39484;

                for ( var_20 = _func_1DA( var_19 ); _func_02F( var_20 ); var_20 = _func_1BF( var_19, var_20 ) )
                {
                    var_10 = var_19[var_20];
                    var_10 _meth_805A();
                }

                var_clear_2
                var_clear_0
            }
        }

        wait(_func_0BA( var_0, var_1 ));
    }
}

_ID15526()
{
    for (;;)
        waittillframeend;
}

_ID14556( var_0, var_1 )
{
    var_2 = self _meth_81EA();
    var_3 = 0;
    var_4 = var_2;
    var_5 = 0;

    for (;;)
    {
        for ( var_5 = _func_0B9( 1, 10 ); var_5; var_5-- )
        {
            wait(_func_0BA( 0.05, 0.1 ));

            if ( var_4 > 0.2 )
                var_4 = _func_0BA( 0, 0.3 );
            else
                var_4 = var_2;

            self _meth_81EB( var_4 );
        }

        self _meth_81EB( var_2 );
        wait(_func_0BA( var_0, var_1 ));
    }
}

_ID6443()
{
    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
    {
        self _meth_81EB( 0 );
        return;
    }

    var_0 = self _meth_81EA();
    var_1 = var_0;

    for (;;)
    {
        var_2 = _func_0BA( var_0 * 0.7, var_0 * 1.2 );
        var_3 = _func_0BA( 0.3, 0.6 );
        var_3 *= 20;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            var_5 = var_2 * var_4 / var_3 + var_1 * var_3 - var_4 / var_3;
            self _meth_81EB( var_5 );
            wait 0.05;
        }

        var_1 = var_2;
    }
}

_ID36706( var_0, var_1, var_2, var_3 )
{
    var_4 = 360 / var_2;
    var_5 = 0;

    for (;;)
    {
        var_6 = _func_0BB( var_5 * var_4 ) * 0.5 + 0.5;
        self _meth_81EB( var_0 + var_1 - var_0 * var_6 );
        wait 0.05;
        var_5 += 0.05;

        if ( var_5 > var_2 )
            var_5 -= var_2;

        if ( _func_02F( var_3 ) )
        {
            if ( _ID42237::_ID14385( var_3 ) )
                return;
        }
    }
}

_ID7299( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    thread _unknown_1BC7( var_0, var_1, var_2, var_3 );
}

_ID7300( var_0, var_1, var_2, var_3 )
{
    var_4 = self _meth_8045();
    var_5 = 1 / var_1 * 2 - var_2 + var_3;
    var_6 = 0;

    if ( var_6 < var_2 )
    {
        for ( var_7 = var_5 / var_2; var_6 < var_2; var_6 += 0.05 )
        {
            var_8 = var_7 * var_6 * var_6;
            self _meth_8046( _func_11C( var_4, var_0, var_8 ) );
            wait 0.05;
        }
    }

    while ( var_6 < var_1 - var_3 )
    {
        var_8 = var_5 * 2 * var_6 - var_2;
        self _meth_8046( _func_11C( var_4, var_0, var_8 ) );
        wait 0.05;
        var_6 += 0.05;
    }

    var_6 = var_1 - var_6;

    if ( var_6 > 0 )
    {
        for ( var_7 = var_5 / var_3; var_6 > 0; var_6 -= 0.05 )
        {
            var_8 = 1 - var_7 * var_6 * var_6;
            self _meth_8046( _func_11C( var_4, var_0, var_8 ) );
            wait 0.05;
        }
    }

    self _meth_8046( var_0 );
}

_ID37475()
{
    thread _unknown_1CA5();
    thread _unknown_1CC6();
}

_ID39377()
{
    self endon( "light_off" );
    var_0 = self _meth_81EA();
    var_1 = var_0;

    for (;;)
    {
        var_2 = _func_0BA( var_0 * 0.7, var_0 * 1.2 );
        var_3 = _func_0BA( 0.3, 1.2 );
        var_3 *= 20;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            var_5 = var_2 * var_4 / var_3 + var_1 * var_3 - var_4 / var_3;
            self _meth_81EB( var_5 );
            wait 0.05;
        }

        var_1 = var_2;
    }
}

_ID39376()
{
    self endon( "light_off" );
    var_0 = 0.5;
    var_1 = 0.5;
    var_2 = [];
    var_3 = [];

    for ( var_4 = 0; var_4 < 3; var_4++ )
    {
        var_2[var_4] = 0;
        var_3[var_4] = 0;
    }

    for (;;)
    {
        for ( var_4 = 0; var_4 < var_2.size; var_4++ )
        {
            var_3[var_4] = var_2[var_4];
            var_2[var_4] = _func_0B8( var_0 ) + var_1;
        }

        var_5 = _func_0BA( 0.3, 1.2 );
        var_5 *= 20;

        for ( var_4 = 0; var_4 < var_5; var_4++ )
        {
            var_6 = [];

            for ( var_7 = 0; var_7 < var_2.size; var_7++ )
                var_6[var_7] = var_2[var_7] * var_4 / var_5 + var_3[var_7] * var_5 - var_4 / var_5;

            self _meth_8046( ( var_6[0], var_6[1], var_6[2] ) );
            wait 0.05;
        }
    }
}

_ID36799( var_0 )
{
    var_1 = 1;

    if ( _func_02F( var_0._ID31159 ) )
        var_1 = var_0._ID31159;

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );
        var_0 _unknown_1E15( var_1 );

        while ( var_2 _meth_80B0( var_0 ) )
            wait 0.25;
    }
}

_ID32462( var_0 )
{
    var_1 = _func_03A( "sm_sunenable", 1 );
    var_2 = _func_03B( "sm_sunshadowscale", 1.0 );
    var_3 = _func_03A( "sm_spotlimit", 4 );
    var_4 = _func_03B( "sm_sunsamplesizenear", 0.25 );
    var_5 = _func_03B( "sm_qualityspotshadow", 1.0 );

    if ( _func_02F( self._ID31466 ) )
        var_1 = self._ID31466;

    if ( _func_02F( self._ID31468 ) )
        var_2 = self._ID31468;

    if ( _func_02F( self._ID31448 ) )
        var_3 = self._ID31448;

    if ( _func_02F( self._ID31467 ) )
        var_4 = self._ID31467;

    var_4 = _func_0C4( _func_0E6( 0.016, var_4 ), 32 );

    if ( _func_02F( self._ID31412 ) )
        var_5 = self._ID31412;

    var_6 = _func_03A( "sm_sunenable", 1 );
    var_7 = _func_03B( "sm_sunshadowscale", 1.0 );
    var_8 = _func_03A( "sm_spotlimit", 4 );
    var_9 = _func_03A( "sm_qualityspotshadow", 1.0 );
    _func_0DB( "sm_sunenable", var_1 );
    _func_0DB( "sm_sunshadowscale", var_2 );
    _func_0DB( "sm_spotlimit", var_3 );
    _func_0DB( "sm_qualityspotshadow", var_5 );
    _unknown_1F2C( var_4, var_0 );
}

_ID22186( var_0, var_1 )
{
    level notify( "changing_sunsamplesizenear" );
    level endon( "changing_sunsamplesizenear" );
    var_2 = _func_03B( "sm_sunSampleSizeNear", 0.25 );

    if ( var_0 == var_2 )
        return;

    var_3 = var_0 - var_2;
    var_4 = var_1 / 0.05;

    if ( var_4 > 0 )
    {
        var_5 = var_3 / var_4;
        var_6 = var_2;

        for ( var_7 = 0; var_7 < var_4; var_7++ )
        {
            var_6 += var_5;
            _func_0DB( "sm_sunSampleSizeNear", var_6 );
            wait 0.05;
        }
    }

    _func_0DB( "sm_sunSampleSizeNear", var_0 );
}

_ID19800()
{
    _unknown_1FAB();
    _unknown_20C5();
}

_ID19726()
{
    self._ID22441 = [];
    self._ID39484 = [];
    self._ID22413 = [];

    if ( _func_02F( self._ID1191 ) )
    {
        var_0 = _func_1A2( self._ID1191, "targetname" );

        if ( var_0.size == 0 )
            return;

        var_1 = var_0;

        for ( var_8 = _func_1DA( var_1 ); _func_02F( var_8 ); var_8 = _func_1BF( var_1, var_8 ) )
        {
            var_2 = var_1[var_8];

            if ( _unknown_1964( var_2 ) )
            {
                self._ID22413[self._ID22413.size] = var_2;
                var_2 _unknown_1FF5();
                continue;
            }

            var_3 = 1;

            if ( _func_02F( var_2._ID922 ) )
            {
                if ( var_2._ID922 == "on" )
                {
                    var_3 = 0;
                    _unknown_206B( var_2 );
                }
                else if ( var_2._ID922 == "off" )
                {
                    var_3 = 0;
                    self._ID39484[self._ID39484.size] = var_2;
                }
            }

            if ( var_3 )
            {
                _unknown_208B( var_2 );
                var_4 = _func_1A2( var_2._ID1191, "targetname" );
                var_5 = var_4;

                for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
                {
                    var_6 = var_5[var_7];
                    self._ID39484[self._ID39484.size] = var_6;
                }

                var_clear_2
                var_clear_0
            }
        }

        var_clear_2
        var_clear_0
        var_9 = self._ID22441;

        for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
        {
            var_2 = var_9[var_10];
            var_2._ID40541 = 1;
        }

        var_clear_1
        var_clear_0
        var_11 = self._ID39484;

        for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
        {
            var_2 = var_11[var_12];
            var_2._ID40541 = 0;
            var_2 _meth_805A();
        }

        var_clear_1
        var_clear_0
    }
}

_ID19727( var_0 )
{
    self._ID22441[self._ID22441.size] = var_0;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;

    if ( _func_02F( var_0._ID31220 ) )
    {
        var_1 = self._ID31220;
        var_2 = var_0._ID740;
        var_3 = var_0._ID65;
    }
    else if ( _func_02F( var_0._ID1191 ) )
    {
        var_4 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        if ( _func_02F( var_4 ) && _func_02F( var_4._ID31220 ) )
        {
            var_1 = var_4._ID31220;
            var_2 = var_4._ID740;
            var_3 = ( 0, 0, 0 );

            if ( _func_02F( var_4._ID65 ) )
                var_3 = var_4._ID65;
        }
    }

    if ( _func_02F( var_1 ) )
    {
        var_0._ID12315 = _ID42237::_ID9265( var_1 );
        var_0._ID12315._ID40005["origin"] = var_2;
        var_0._ID12315._ID40005["angles"] = var_3;
    }
}

_ID28756()
{
    self endon( "stop_scripted_light" );
    self endon( "death" );

    for (;;)
    {
        _ID42407::_ID31523();
        var_0 = self._ID31261;
        var_1 = self._ID31261 + self._ID31260 - self._ID31261 * 0.4;
        var_2 = self._ID31260 - self._ID31260 - self._ID31261 * 0.4;
        var_3 = self._ID31260;
        var_4 = _func_0B9( self._ID31105, self._ID31104 );

        for ( var_5 = 0; var_5 < var_4; var_5++ )
        {
            var_6 = _func_0BA( var_0, var_1 );
            _unknown_225B( var_6, _unknown_22B7() );
            _ID42407::_ID916();
            var_6 = _func_0BA( var_2, var_3 );
            _unknown_226C( var_6, _unknown_22C8() );
        }

        _unknown_227B( self._ID31260, _unknown_22D5() );
    }
}

_ID22160( var_0, var_1 )
{
    var_2 = _func_0C1( var_1 * 20 );
    var_3 = self _meth_81EA();
    var_4 = var_0 - var_3 / var_2;

    for ( var_5 = 0; var_5 < var_2; var_5++ )
    {
        thread _unknown_22C0( var_0 );
        self _meth_81EB( var_3 + var_5 * var_4 );
        wait 0.05;
    }

    var_6[0] = self;

    if ( _func_02F( self._ID22413 ) )
        var_6 = _ID42237::_ID3296( var_6, self._ID22413 );

    var_7 = var_6;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8 thread _unknown_22FB( var_0 );
        var_8 _meth_81EB( var_0 );
    }

    var_clear_2
    var_clear_0
}

_ID17847( var_0 )
{
    var_1 = var_0 > self._ID31479;
    var_2 = self._ID22441;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_1 && !var_3._ID40541 )
        {
            var_3._ID40541 = var_1;
            var_3 _meth_8059();

            if ( _func_02F( var_3._ID12315 ) )
                var_3._ID12315 thread _ID42407::_ID29840();

            continue;
        }

        if ( !var_1 && var_3._ID40541 )
        {
            var_3._ID40541 = var_1;
            var_3 _meth_805A();

            if ( _func_02F( var_3._ID12315 ) )
                var_3._ID12315 thread _ID42237::_ID26402();
        }
    }

    var_clear_2
    var_clear_0
    var_5 = self._ID39484;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];

        if ( !var_1 && !var_3._ID40541 )
        {
            var_3._ID40541 = 1;
            var_3 _meth_8059();
            continue;
        }

        if ( var_1 && var_3._ID40541 )
        {
            var_3._ID40541 = 0;
            var_3 _meth_805A();
        }
    }

    var_clear_1
    var_clear_0
}

_ID15667()
{
    return _func_0BA( self._ID31121, self._ID31120 );
}

_ID19723()
{
    var_0["pulse"] = ::_unknown_2418;
    var_0["neon"] = ::_unknown_2434;
    var_0["fire"] = ::_unknown_244F;
    [[ var_0[self._ID31269] ]]();
}

_ID10102()
{
    _unknown_248E( 0.1, 0.2 );
    _unknown_249D( 1, 4 );
    _unknown_24AD( 3, 6 );
    _unknown_2492( 0.5 );
    var_0 = self _meth_81EA();
    _unknown_24CD( var_0 * 0.25, var_0 );
    thread _unknown_23D4();
}

_ID10097()
{
    _unknown_24C6( 0.05, 0.1 );
    _unknown_24D6( 2, 5 );
    _unknown_24E5( 1, 3 );
    _unknown_24CB( 0.5 );
    var_0 = self _meth_81EA();
    _unknown_2505( var_0 * 0.1, var_0 );
    thread _ID19723();
}

_ID10094()
{
    _unknown_24FE( 0.05, 0.1 );
    _unknown_2512( 0.05, 0.1 );
    _unknown_2522( 1, 2 );
    _unknown_2507( 0.5 );
    var_0 = self _meth_81EA();
    _unknown_2542( var_0 * 0.75, var_0 );
    thread _unknown_2449();
}

_ID32476( var_0 )
{
    if ( !_func_02F( self._ID31479 ) )
        self._ID31479 = var_0;

    var_1 = self._ID22413;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2._ID31479 ) )
            var_2._ID31479 = self._ID31479;
    }

    var_clear_2
    var_clear_0
}

_ID32273( var_0, var_1 )
{
    if ( !_func_02F( self._ID31121 ) )
        self._ID31121 = var_0;

    if ( !_func_02F( self._ID31120 ) )
        self._ID31120 = var_1;
}

_ID32519( var_0, var_1 )
{
    if ( !_func_02F( self._ID31526 ) )
        self._ID31526 = var_0;

    if ( !_func_02F( self._ID31525 ) )
        self._ID31525 = var_1;
}

_ID32252( var_0, var_1 )
{
    if ( !_func_02F( self._ID31105 ) )
        self._ID31105 = var_0;

    if ( !_func_02F( self._ID31104 ) )
        self._ID31104 = var_1;
}

_ID32357( var_0, var_1 )
{
    if ( !_func_02F( self._ID31261 ) )
        self._ID31261 = var_0;

    if ( !_func_02F( self._ID31260 ) )
        self._ID31260 = var_1;
}

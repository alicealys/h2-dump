// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19838()
{
    var_0 = getentarray( "generic_flickering", "targetname" );
    var_1 = getentarray( "generic_pulsing", "targetname" );
    var_2 = getentarray( "generic_double_strobe", "targetname" );
    var_3 = getentarray( "burning_trash_fire", "targetname" );
    var_4 = getentarray( "scripted_light", "targetname" );
    var_5 = _ID42237::_ID16640( "h2_generic_flickering", "targetname" );
    _ID42237::_ID3350( var_5, ::_ID48424, 1 );
    _ID52844( "h2_pulsing_alarm", 0, 1, 0.3, 0.3, 0, 0, 0, 0, 0 );
    _ID46386( "h2_pulsing_alarm", _ID42237::_ID16640( "h2_pulsing_alarm", "targetname" ) );
    _ID52844( "h2_pulsing_alarm_02", 0, 1, 0.6, 0.6, 0, 0, 0, 0, 0 );
    _ID46386( "h2_pulsing_alarm_02", _ID42237::_ID16640( "h2_pulsing_alarm_02", "targetname" ) );
    _ID52844( "h2_flickering_01", 0.001, 1, 0, 0.3, 0, 1.5, 0, 0.5, 1 );
    _ID46386( "h2_flickering_01", _ID42237::_ID16640( "h2_flickering_01", "targetname" ) );
    _ID52844( "h2_flickering_02", 0.75, 1, 0, 0, 0.2, 1.5, 0, 1.5, 1 );
    _ID46386( "h2_flickering_02", _ID42237::_ID16640( "h2_flickering_02", "targetname" ) );
    _ID52844( "h2_flickering_03", 0, 1, 0.5, 0.5, 0.15, 1, 0, 0.25, 1 );
    _ID46386( "h2_flickering_03", _ID42237::_ID16640( "h2_flickering_03", "targetname" ) );
    _ID52844( "h2_flickering_flare", 0.5, 1, 0, 0.25, 0, 0.025, 0, 0.025, 1 );
    _ID46386( "h2_flickering_flare", _ID42237::_ID16640( "h2_flickering_flare", "targetname" ) );
    _ID52844( "h2_flickering_fire", 0.6, 1, 0.1, 0.5, 0.3, 1.5, 0.2, 1.5, 1 );
    _ID46386( "h2_flickering_fire", _ID42237::_ID16640( "h2_flickering_fire", "targetname" ) );
    _ID52844( "h2_flickering_intense_fire", 0.5, 1, 0.1, 0.4, 0.2, 0.5, 0.2, 0.5, 1 );
    _ID46386( "h2_flickering_intense_fire", _ID42237::_ID16640( "h2_flickering_intense_fire", "targetname" ) );
    _ID52844( "h2_flickering_intense_fire2", 0.5, 1, 0.1, 0.5, 0.2, 0.4, 0.2, 0.7, 1 );
    _ID46386( "h2_flickering_intense_fire2", _ID42237::_ID16640( "h2_flickering_intense_fire2", "targetname" ) );
    _ID52844( "h2_flickering_intense_fire_dcb", 0.25, 1, 0.3, 0.6, 0.2, 0.5, 0.2, 0.5, 1 );
    _ID46386( "h2_flickering_intense_fire_dcb", _ID42237::_ID16640( "h2_flickering_intense_fire_dcb", "targetname" ) );
    _ID52844( "h2_flickering_broken_light", 0, 1, 0.1, 0.5, 0.15, 0.5, 0.2, 1.5, 1 );
    _ID46386( "h2_flickering_broken_light", _ID42237::_ID16640( "h2_flickering_broken_light", "targetname" ) );
    _ID52844( "h2_flickering_intense", 0.001, 1, 0, 0, 0, 1.5, 0, 0.3, 1 );
    _ID46386( "h2_flickering_intense", _ID42237::_ID16640( "h2_flickering_intense", "targetname" ) );
    _ID42237::_ID3350( var_0, ::_ID15511 );
    _ID42237::_ID3350( var_1, ::_ID15524 );
    _ID42237::_ID3350( var_2, ::_ID15505 );
    _ID42237::_ID3350( var_3, ::_ID6443 );
    _ID42237::_ID3350( var_4, ::_ID19800 );
}

_ID52844( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( !isdefined( level._ID46300 ) )
        level._ID46300 = [];

    if ( !isdefined( var_0 ) )
        return;

    if ( isdefined( level._ID46300[var_0] ) )
        return;

    var_10 = spawnstruct();
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
    if ( !isdefined( var_1 ) )
        return;

    _ID46386( var_0, [ var_1 ] );
}

_ID46386( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( !isdefined( var_1 ) )
        return;

    if ( var_1.size == 0 )
        return;

    var_2 = level._ID46300[var_0];

    if ( !isdefined( var_2 ) )
        return;

    var_3 = [];

    foreach ( var_5 in var_1 )
    {
        if ( !isdefined( var_5.target ) )
            continue;

        var_5._ID51712 = var_2._ID51712;
        var_5._ID48527 = var_2._ID48527;
        var_5._ID46994 = var_2._ID46994;
        var_5._ID53594 = var_2._ID53594;
        var_5._ID49248 = var_2._ID49248;
        var_5._ID51934 = var_2._ID51934;
        var_5._ID54303 = var_2._ID54303;
        var_6 = getentarray( var_5.target, "targetname" );

        if ( var_6.size == 0 )
            continue;

        foreach ( var_8 in var_6 )
        {
            if ( isdefined( var_8.script_noteworthy ) )
            {
                if ( var_8.script_noteworthy == "flickering_lights" )
                {
                    var_8._ID53272 = var_2._ID53272 * var_8 getlightintensity();
                    var_8._ID48403 = var_2._ID48403 * var_8 getlightintensity();
                }
            }
        }

        var_3[var_3.size] = var_5;
    }

    _ID42237::_ID3350( var_3, ::_ID48424 );
}

_ID20556( var_0 )
{
    return var_0.classname == "light_spot" || var_0.classname == "light_omni" || var_0.classname == "light";
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
        var_4 = var_0 + ( var_1 - var_0 ) * randomfloat( 1.0 );

        if ( var_2 != var_3 )
            var_5 += randomfloatrange( var_2, var_3 );
        else
            var_5 += var_2;

        if ( var_5 == 0 )
            var_5 += 1e-07;

        for ( var_7 = ( var_6 - var_4 ) * 1 / var_5; var_5 > 0 && !_ID42407::_ID13019( "stop_flicker" ); var_5 -= 0.05 )
        {
            self setlightcolor( var_4 + var_7 * var_5 );
            wait 0.05;
        }
    }
}

_ID21263( var_0 )
{
    var_1 = getentarray( var_0, "script_noteworthy" );
    var_2 = undefined;
    var_3 = 1e+08.0;

    foreach ( var_5 in var_1 )
    {
        var_6 = distance( self.origin, var_5.origin );

        if ( var_6 < var_3 )
        {
            var_2 = var_5;
            var_3 = var_6;
        }
    }

    if ( isdefined( var_2 ) )
    {
        var_2 waittill( "damage",  var_8, var_9, var_10, var_11, var_12, var_13, var_14  );
        self notify( "kill_flicker" );
        wait 0.05;
        self setlightcolor( ( 0, 0, 0 ) );
    }
}

_ID15524()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
    {
        self setlightintensity( 0 );
        return;
    }

    var_0 = self getlightintensity();
    var_1 = 0.05;
    var_2 = var_0;
    var_3 = 0.3;
    var_4 = 0.6;
    var_5 = ( var_0 - var_1 ) / ( var_3 / 0.05 );
    var_6 = ( var_0 - var_1 ) / ( var_4 / 0.05 );

    for (;;)
    {
        var_7 = 0;

        while ( var_7 < var_4 )
        {
            var_2 -= var_6;
            var_2 = clamp( var_2, 0, 100 );
            self setlightintensity( var_2 );
            var_7 += 0.05;
            wait 0.05;
        }

        wait 1;
        var_7 = 0;

        while ( var_7 < var_3 )
        {
            var_2 += var_5;
            var_2 = clamp( var_2, 0, 100 );
            self setlightintensity( var_2 );
            var_7 += 0.05;
            wait 0.05;
        }

        wait 0.5;
    }
}

_ID15505()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
    {
        self setlightintensity( 0 );
        return;
    }

    var_0 = self getlightintensity();
    var_1 = 0.05;
    var_2 = 0;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = 0;
    var_6 = [];

    if ( isdefined( self.script_noteworthy ) )
    {
        var_7 = getentarray( self.script_noteworthy, "targetname" );

        for ( var_8 = 0; var_8 < var_7.size; var_8++ )
        {
            if ( _ID20556( var_7[var_8] ) )
            {
                var_5 = 1;
                var_6[var_6.size] = var_7[var_8];
            }

            if ( var_7[var_8].classname == "script_model" )
            {
                var_3 = var_7[var_8];
                var_4 = getent( var_3.target, "targetname" );
                var_2 = 1;
            }
        }
    }

    for (;;)
    {
        self setlightintensity( var_1 );

        if ( var_2 )
        {
            var_3 hide();
            var_4 show();
        }

        wait 0.8;
        self setlightintensity( var_0 );

        if ( var_2 )
        {
            var_3 show();
            var_4 hide();
        }

        wait 0.1;
        self setlightintensity( var_1 );

        if ( var_2 )
        {
            var_3 hide();
            var_4 show();
        }

        wait 0.12;
        self setlightintensity( var_0 );

        if ( var_2 )
        {
            var_3 show();
            var_4 hide();
        }

        wait 0.1;
    }
}

_ID16189( var_0 )
{
    var_1 = getentarray( "light_flicker_model", "targetname" );
    var_2 = [];
    var_3 = _ID42237::_ID16182( var_0, var_1 );

    if ( isdefined( var_3 ) )
        var_2[0] = var_3;

    return var_2;
}

_ID48424( var_0 )
{
    self endon( "stop_dynamic_light_behavior" );
    self endon( "death" );

    if ( !isdefined( self.target ) )
        return;

    self._ID47454 = getentarray( self.target, "targetname" );
    self._ID43670 = undefined;
    self._ID47812 = undefined;
    self._ID52890 = [];

    foreach ( var_2 in self._ID47454 )
    {
        if ( isdefined( var_2.script_noteworthy ) )
        {
            if ( var_2.script_noteworthy == "flickering_model_on" )
            {
                self._ID43670 = var_2;
                continue;
            }

            if ( var_2.script_noteworthy == "flickering_model_off" )
            {
                self._ID47812 = var_2;
                continue;
            }

            if ( var_2.script_noteworthy == "flickering_lights" )
                self._ID52890[self._ID52890.size] = var_2;
        }
    }

    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
    {
        if ( self._ID52890.size > 0 )
        {
            foreach ( var_5 in self._ID52890 )
                var_5 setlightintensity( 0 );
        }

        return;
    }

    if ( self._ID52890.size == 0 )
        return;

    if ( isdefined( var_0 ) && var_0 )
        _ID52563();

    if ( isdefined( self._ID43670 ) && isdefined( self._ID43670._ID31220 ) )
    {
        var_7 = strtok( self._ID43670._ID31220, ", " );
        self._ID43670._ID15244 = "tag_origin";
        self._ID43670._ID15195 = _ID42237::_ID16299( var_7[0] );

        if ( var_7.size > 1 )
            self._ID43670._ID15244 = var_7[1];

        self._ID43670.fx_started = 1;
        playfxontag( self._ID43670._ID15195, self._ID43670, self._ID43670._ID15244 );
    }

    if ( isdefined( self._ID43670 ) && isdefined( self._ID43670._ID31388 ) && self._ID43670._ID31388 == "delay_flickering" )
        self._ID43670 waittill( "start_flickering" );

    _ID42237::_ID3350( self._ID52890, ::_ID15509 );
    thread _ID43288();
}

_ID52563()
{
    if ( isdefined( self._ID47655 ) )
        self._ID51712 = self._ID47655;

    if ( isdefined( self._ID51407 ) )
        self._ID48527 = self._ID51407;

    if ( isdefined( self._ID54068 ) )
        self._ID46994 = self._ID54068;

    if ( isdefined( self._ID44426 ) )
        self._ID53594 = self._ID44426;

    if ( isdefined( self._ID44180 ) )
        self._ID49248 = self._ID44180;

    if ( isdefined( self._ID54726 ) )
        self._ID51934 = self._ID54726;

    if ( isdefined( self._ID46155 ) )
        self._ID54303 = self._ID46155;

    foreach ( var_1 in self._ID52890 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        if ( isdefined( self._ID53385 ) )
            var_1._ID53272 = self._ID53385 * var_1 getlightintensity();

        if ( isdefined( self._ID44625 ) )
            var_1._ID48403 = self._ID44625 * var_1 getlightintensity();
    }
}

_ID15511()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
    {
        self setlightintensity( 0 );
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

    if ( isdefined( self._ID31273 ) )
    {
        self._ID22417 = _ID42237::_ID15808();

        foreach ( var_1 in self._ID22417 )
        {
            if ( isdefined( var_1.script_noteworthy ) && var_1.script_noteworthy == "on" )
            {
                if ( !isdefined( self._ID22441 ) )
                    self._ID22441[0] = var_1;
                else
                    self._ID22441[self._ID22441.size] = var_1;

                continue;
            }

            if ( isdefined( var_1.script_noteworthy ) && var_1.script_noteworthy == "off" )
            {
                if ( !isdefined( self._ID39484 ) )
                    self._ID39484[0] = var_1;
                else
                    self._ID39484[self._ID39484.size] = var_1;

                self._ID39483 = var_1;
                continue;
            }

            if ( _ID20556( var_1 ) )
            {
                self._ID22413 = 1;
                self._ID22412[self._ID22412.size] = var_1;
            }
        }

        self._ID22415 = 1;
    }

    if ( isdefined( self.script_noteworthy ) )
        self._ID22419 = getentarray( self.script_noteworthy, "targetname" );

    if ( !self._ID22419.size && !isdefined( self._ID22417 ) )
        self._ID22419 = _ID16189( self.origin );

    for ( var_3 = 0; var_3 < self._ID22419.size; var_3++ )
    {
        if ( _ID20556( self._ID22419[var_3] ) )
        {
            self._ID22413 = 1;
            self._ID22412[self._ID22412.size] = self._ID22419[var_3];
        }

        if ( self._ID22419[var_3].classname == "script_model" )
        {
            var_4 = self._ID22419[var_3];

            if ( !isdefined( self._ID22441 ) )
                self._ID22441[0] = var_4;
            else
                self._ID22441[self._ID22441.size] = var_4;

            if ( !isdefined( self._ID39484 ) )
                self._ID39484[0] = getent( var_4.target, "targetname" );
            else
                self._ID39484[self._ID39484.size] = getent( var_4.target, "targetname" );

            self._ID22415 = 1;
        }
    }

    if ( isdefined( self._ID22441 ) )
    {
        foreach ( var_4 in self._ID22441 )
        {
            if ( isdefined( var_4 ) && isdefined( var_4._ID31220 ) )
            {
                var_4._ID12315 = _ID42237::_ID9265( var_4._ID31220 );
                var_6 = ( 0, 0, 0 );
                var_7 = ( 0, 0, 0 );

                if ( isdefined( var_4._ID31388 ) )
                {
                    var_8 = strtok( var_4._ID31388, ", " );

                    if ( var_8.size < 3 )
                    {

                    }
                    else if ( var_8.size == 6 )
                    {
                        var_9 = float( var_8[0] );
                        var_10 = float( var_8[1] );
                        var_11 = float( var_8[2] );
                        var_6 = ( var_9, var_10, var_11 );
                        var_9 = float( var_8[3] );
                        var_10 = float( var_8[4] );
                        var_11 = float( var_8[5] );
                        var_7 = ( var_9, var_10, var_11 );
                    }
                    else
                    {
                        var_9 = float( var_8[0] );
                        var_10 = float( var_8[1] );
                        var_11 = float( var_8[2] );
                        var_6 = ( var_9, var_10, var_11 );
                    }
                }

                var_4._ID12315._ID40005["origin"] = var_4.origin + var_6;
                var_4._ID12315._ID40005["angles"] = var_4.angles + var_7;
            }
        }
    }

    thread _ID15509();
    thread _ID15508();
}

_ID15509()
{
    _ID42407::_ID13024( "flicker_on" );

    if ( isdefined( self._ID31270 ) && self._ID31270 != "nil" )
    {
        for (;;)
        {
            level waittill( self._ID31270 );
            _ID42407::_ID13025( "flicker_on" );

            if ( isdefined( self._ID31271 ) && self._ID31271 != "nil" )
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
    var_0 = self getlightintensity();

    if ( !_ID42407::_ID13019( "flicker_on" ) )
    {
        if ( self._ID22415 )
        {
            if ( isdefined( self._ID22441 ) )
            {
                foreach ( var_2 in self._ID22441 )
                {
                    var_2 hide();

                    if ( isdefined( var_2._ID12315 ) )
                        var_2._ID12315 _ID42237::_ID26402();
                }
            }

            if ( isdefined( self._ID39484 ) )
            {
                foreach ( var_5 in self._ID39484 )
                    var_5 show();
            }
        }

        self setlightintensity( 0 );

        if ( self._ID22413 )
        {
            for ( var_7 = 0; var_7 < self._ID22412.size; var_7++ )
                self._ID22412[var_7] setlightintensity( 0 );
        }

        _ID42407::_ID13027( "flicker_on" );
        self setlightintensity( var_0 );

        if ( self._ID22413 )
        {
            for ( var_7 = 0; var_7 < self._ID22412.size; var_7++ )
                self._ID22412[var_7] setlightintensity( var_0 );
        }

        if ( self._ID22415 )
        {
            if ( isdefined( self._ID22441 ) )
            {
                foreach ( var_2 in self._ID22441 )
                {
                    var_2 show();

                    if ( isdefined( var_2._ID12315 ) )
                        var_2._ID12315 _ID42407::_ID29840();
                }
            }

            if ( isdefined( self._ID39484 ) )
            {
                foreach ( var_5 in self._ID39484 )
                    var_5 hide();
            }
        }
    }
}

_ID51113()
{
    if ( !isdefined( self._ID52890[0] ) )
        return;

    if ( !self._ID52890[0] _ID42407::_ID13019( "flicker_on" ) )
    {
        if ( isdefined( self._ID43670 ) )
        {
            self._ID43670 hide();

            if ( isdefined( self._ID43670._ID12315 ) )
                self._ID43670._ID12315 _ID42237::_ID26402();
        }

        if ( isdefined( self._ID47812 ) )
            self._ID47812 show();

        foreach ( var_1 in self._ID52890 )
            var_1 setlightintensity( 0 );

        self._ID52890[0] _ID42407::_ID13027( "flicker_on" );

        foreach ( var_1 in self._ID52890 )
            var_1 setlightintensity( var_1._ID46351 );

        if ( isdefined( self._ID43670 ) )
        {
            self._ID43670 show();

            if ( isdefined( self._ID43670._ID12315 ) )
                self._ID43670._ID12315 _ID42407::_ID29840();
        }

        if ( isdefined( self._ID47812 ) )
            self._ID47812 hide();
    }
}

_ID43288()
{
    self endon( "stop_dynamic_light_behavior" );
    self endon( "death" );

    if ( isdefined( self._ID31523 ) )
        wait(self._ID31523);

    switch ( self.targetname )
    {
        case "h2_flickering_flare":
        case "h2_flickering_fire":
        case "h2_flickering_intense_fire":
            break;
        default:
            var_0 = "emt_light_flourescent_hum";

            if ( isdefined( self._ID43356 ) )
            {
                if ( self._ID43356 != "none" )
                    var_0 = self._ID43356;
                else
                    break;
            }

            self._ID34523 = spawn( "script_origin", self.origin );
            self._ID34523 playloopsound( var_0 );
            thread _ID54364();
    }

    if ( !isdefined( self._ID51712 ) )
        self._ID51712 = 0;

    if ( !isdefined( self._ID48527 ) )
        self._ID48527 = 0;

    if ( self._ID51712 > self._ID48527 )
        return;

    if ( !isdefined( self._ID46994 ) )
        self._ID46994 = 0.2;

    if ( !isdefined( self._ID53594 ) )
        self._ID53594 = 1.5;

    if ( !isdefined( self._ID49248 ) )
        self._ID49248 = 0.2;

    if ( !isdefined( self._ID51934 ) )
        self._ID51934 = 1.5;

    if ( !isdefined( self._ID54303 ) )
        self._ID54303 = 1;

    var_1 = max( 0.05, self._ID51712 );
    var_2 = max( 0.05, self._ID48527 );
    var_3 = self._ID46994;
    var_4 = self._ID53594;

    if ( var_3 > var_4 )
        return;

    var_5 = self._ID49248;
    var_6 = self._ID51934;

    if ( var_5 > var_6 )
        return;

    var_7 = self._ID54303;

    foreach ( var_9 in self._ID52890 )
    {
        if ( !isdefined( var_9 ) )
            continue;

        if ( !isdefined( var_9._ID53272 ) )
            var_9._ID53272 = 0;

        if ( !isdefined( var_9._ID48403 ) )
            var_9._ID48403 = var_9 getlightintensity();

        var_9._ID47081 = var_9._ID53272;
        var_9._ID46351 = var_9._ID48403;
        var_9._ID9421 = var_9._ID46351;
        var_9._ID54595 = ( var_9._ID46351 - var_9._ID47081 ) / ( var_2 / 0.05 );
        var_9._ID50571 = ( var_9._ID46351 - var_9._ID47081 ) / ( var_1 / 0.05 );

        if ( var_7 && var_9._ID54595 != var_9._ID50571 )
        {
            var_9._ID44472 = randomfloatrange( var_9._ID54595, var_9._ID50571 );
            continue;
        }

        var_9._ID44472 = var_9._ID50571;
    }

    var_11 = 0;

    for ( var_12 = 0; isdefined( self ); var_12 = var_11 )
    {
        _ID51113();
        var_13 = _ID42237::_ID37527( var_7, randomintrange( 1, 10 ), 1 );

        while ( var_13 )
        {
            _ID51113();
            waittillframeend;

            if ( var_7 )
            {
                var_14 = randomfloatrange( 0.0, 0.3 );

                if ( !var_11 && var_14 < 0.1 )
                    var_11 = 1;
                else if ( var_11 && var_14 < 0.1 )
                    var_11 = 0;
            }

            if ( !var_11 )
            {
                foreach ( var_9 in self._ID52890 )
                {
                    if ( !isdefined( var_9 ) )
                        continue;

                    var_9._ID9421 = var_9._ID9421 - var_9._ID44472;

                    if ( var_9._ID9421 <= var_9._ID47081 )
                    {
                        var_11 = 1;

                        if ( var_9._ID54595 != var_9._ID50571 )
                        {
                            var_9._ID44472 = randomfloatrange( var_9._ID54595, var_9._ID50571 );
                            continue;
                        }

                        var_9._ID44472 = var_9._ID54595;
                    }
                }
            }
            else
            {
                foreach ( var_9 in self._ID52890 )
                {
                    if ( !isdefined( var_9 ) )
                        continue;

                    var_9._ID9421 = var_9._ID9421 + var_9._ID44472;

                    if ( var_9._ID9421 >= var_9._ID46351 )
                    {
                        var_11 = 0;

                        if ( var_9._ID54595 != var_9._ID50571 )
                        {
                            var_9._ID44472 = randomfloatrange( var_9._ID54595, var_9._ID50571 );
                            continue;
                        }

                        var_9._ID44472 = var_9._ID54595;
                    }
                }
            }

            foreach ( var_9 in self._ID52890 )
            {
                if ( !isdefined( var_9 ) )
                    continue;

                var_9._ID9421 = min( var_9._ID46351, max( var_9._ID47081, var_9._ID9421 ) );
                var_9 setlightintensity( var_9._ID9421 );
            }

            var_21 = self._ID52890[0];

            if ( !isdefined( var_21 ) )
            {
                var_13--;
                continue;
            }

            if ( var_21._ID9421 < 0.3 * ( var_21._ID46351 - var_21._ID47081 ) )
            {
                if ( isdefined( self._ID43670 ) )
                {
                    self._ID43670 hide();

                    if ( isdefined( self._ID43670._ID12315 ) )
                        self._ID43670._ID12315 _ID42237::_ID26402();
                }

                if ( isdefined( self._ID47812 ) )
                    self._ID47812 show();

                if ( isdefined( self._ID34523 ) )
                    self._ID34523 setvolume( 0, 0 );

                if ( isdefined( self._ID43670 ) && isdefined( self._ID43670._ID15195 ) && self._ID43670.fx_started )
                {
                    self._ID43670.fx_started = 0;
                    killfxontag( self._ID43670._ID15195, self._ID43670, self._ID43670._ID15244 );
                }
            }
            else
            {
                if ( isdefined( self._ID43670 ) )
                {
                    self._ID43670 show();

                    if ( isdefined( self._ID43670._ID12315 ) )
                        self._ID43670._ID12315 _ID42407::_ID29840();
                }

                if ( isdefined( self._ID47812 ) )
                    self._ID47812 hide();

                if ( isdefined( self._ID34523 ) )
                    self._ID34523 setvolume( 1, 0 );

                if ( isdefined( self._ID43670 ) && isdefined( self._ID43670._ID15195 ) && !self._ID43670.fx_started )
                {
                    self._ID43670.fx_started = 1;
                    playfxontag( self._ID43670._ID15195, self._ID43670, self._ID43670._ID15244 );
                }
            }

            var_13--;
        }

        _ID51113();

        if ( var_3 == var_4 )
            var_22 = var_4;
        else
            var_22 = randomfloatrange( var_3, var_4 );

        if ( !var_11 && var_11 != var_12 && var_22 != 0 )
            wait(var_22);

        if ( var_5 == var_6 )
            var_23 = var_6;
        else
            var_23 = randomfloatrange( var_5, var_6 );

        if ( var_11 && var_11 != var_12 && var_23 != 0 )
            wait(var_23);
    }
}

_ID54364()
{
    self waittill( "death" );
    self._ID34523 stopsounds();
    wait 0.1;
    self._ID34523 delete();
}

_ID15508()
{
    self endon( "stop_dynamic_light_behavior" );
    self endon( "death" );
    var_0 = 0.2;
    var_1 = 1.5;
    var_2 = self getlightintensity();
    var_3 = 0;
    var_4 = var_2;
    var_5 = 0;

    while ( isdefined( self ) )
    {
        _ID15510();

        for ( var_5 = randomintrange( 1, 10 ); var_5; var_5-- )
        {
            _ID15510();
            wait(randomfloatrange( 0.05, 0.1 ));

            if ( var_4 > 0.2 )
            {
                var_4 = randomfloatrange( 0, 0.3 );

                if ( self._ID22415 )
                {
                    foreach ( var_7 in self._ID22441 )
                    {
                        var_7 hide();

                        if ( isdefined( var_7._ID12315 ) )
                            var_7._ID12315 _ID42237::_ID26402();
                    }
                }

                if ( isdefined( self._ID39484 ) )
                {
                    foreach ( var_10 in self._ID39484 )
                        var_10 show();
                }
            }
            else
            {
                var_4 = var_2;

                if ( self._ID22415 )
                {
                    if ( isdefined( self._ID22441 ) )
                    {
                        foreach ( var_7 in self._ID22441 )
                        {
                            var_7 show();

                            if ( isdefined( var_7._ID12315 ) )
                                var_7._ID12315 _ID42407::_ID29840();
                        }
                    }

                    if ( isdefined( self._ID39484 ) )
                    {
                        foreach ( var_10 in self._ID39484 )
                        {
                            var_10 hide();
                            _ID42463::_ID10405( "light_flicker_on", var_10 );
                        }
                    }
                }
            }

            self setlightintensity( var_4 );

            if ( self._ID22413 )
            {
                for ( var_16 = 0; var_16 < self._ID22412.size; var_16++ )
                    self._ID22412[var_16] setlightintensity( var_4 );
            }
        }

        _ID15510();
        self setlightintensity( var_2 );

        if ( self._ID22413 )
        {
            for ( var_16 = 0; var_16 < self._ID22412.size; var_16++ )
                self._ID22412[var_16] setlightintensity( var_2 );
        }

        if ( self._ID22415 )
        {
            if ( isdefined( self._ID22441 ) )
            {
                foreach ( var_7 in self._ID22441 )
                {
                    var_7 show();

                    if ( isdefined( var_7._ID12315 ) )
                        var_7._ID12315 _ID42407::_ID29840();
                }
            }

            if ( isdefined( self._ID39484 ) )
            {
                foreach ( var_10 in self._ID39484 )
                    var_10 hide();
            }
        }

        wait(randomfloatrange( var_0, var_1 ));
    }
}

_ID15526()
{
    for (;;)
        waittillframeend;
}

_ID14556( var_0, var_1 )
{
    var_2 = self getlightintensity();
    var_3 = 0;
    var_4 = var_2;
    var_5 = 0;

    for (;;)
    {
        for ( var_5 = randomintrange( 1, 10 ); var_5; var_5-- )
        {
            wait(randomfloatrange( 0.05, 0.1 ));

            if ( var_4 > 0.2 )
                var_4 = randomfloatrange( 0, 0.3 );
            else
                var_4 = var_2;

            self setlightintensity( var_4 );
        }

        self setlightintensity( var_2 );
        wait(randomfloatrange( var_0, var_1 ));
    }
}

_ID6443()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
    {
        self setlightintensity( 0 );
        return;
    }

    var_0 = self getlightintensity();
    var_1 = var_0;

    for (;;)
    {
        var_2 = randomfloatrange( var_0 * 0.7, var_0 * 1.2 );
        var_3 = randomfloatrange( 0.3, 0.6 );
        var_3 *= 20;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            var_5 = var_2 * var_4 / var_3 + var_1 * ( var_3 - var_4 ) / var_3;
            self setlightintensity( var_5 );
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
        var_6 = sin( var_5 * var_4 ) * 0.5 + 0.5;
        self setlightintensity( var_0 + ( var_1 - var_0 ) * var_6 );
        wait 0.05;
        var_5 += 0.05;

        if ( var_5 > var_2 )
            var_5 -= var_2;

        if ( isdefined( var_3 ) )
        {
            if ( _ID42237::_ID14385( var_3 ) )
                return;
        }
    }
}

_ID7299( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    thread _ID7300( var_0, var_1, var_2, var_3 );
}

_ID7300( var_0, var_1, var_2, var_3 )
{
    var_4 = self getlightcolor();
    var_5 = 1 / ( var_1 * 2 - var_2 + var_3 );
    var_6 = 0;

    if ( var_6 < var_2 )
    {
        for ( var_7 = var_5 / var_2; var_6 < var_2; var_6 += 0.05 )
        {
            var_8 = var_7 * var_6 * var_6;
            self setlightcolor( vectorlerp( var_4, var_0, var_8 ) );
            wait 0.05;
        }
    }

    while ( var_6 < var_1 - var_3 )
    {
        var_8 = var_5 * ( 2 * var_6 - var_2 );
        self setlightcolor( vectorlerp( var_4, var_0, var_8 ) );
        wait 0.05;
        var_6 += 0.05;
    }

    var_6 = var_1 - var_6;

    if ( var_6 > 0 )
    {
        for ( var_7 = var_5 / var_3; var_6 > 0; var_6 -= 0.05 )
        {
            var_8 = 1 - var_7 * var_6 * var_6;
            self setlightcolor( vectorlerp( var_4, var_0, var_8 ) );
            wait 0.05;
        }
    }

    self setlightcolor( var_0 );
}

_ID37475()
{
    thread _ID39377();
    thread _ID39376();
}

_ID39377()
{
    self endon( "light_off" );
    var_0 = self getlightintensity();
    var_1 = var_0;

    for (;;)
    {
        var_2 = randomfloatrange( var_0 * 0.7, var_0 * 1.2 );
        var_3 = randomfloatrange( 0.3, 1.2 );
        var_3 *= 20;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            var_5 = var_2 * var_4 / var_3 + var_1 * ( var_3 - var_4 ) / var_3;
            self setlightintensity( var_5 );
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
            var_2[var_4] = randomfloat( var_0 ) + var_1;
        }

        var_5 = randomfloatrange( 0.3, 1.2 );
        var_5 *= 20;

        for ( var_4 = 0; var_4 < var_5; var_4++ )
        {
            var_6 = [];

            for ( var_7 = 0; var_7 < var_2.size; var_7++ )
                var_6[var_7] = var_2[var_7] * var_4 / var_5 + var_3[var_7] * ( var_5 - var_4 ) / var_5;

            self setlightcolor( ( var_6[0], var_6[1], var_6[2] ) );
            wait 0.05;
        }
    }
}

_ID36799( var_0 )
{
    var_1 = 1;

    if ( isdefined( var_0._ID31159 ) )
        var_1 = var_0._ID31159;

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );
        var_0 _ID32462( var_1 );

        while ( var_2 istouching( var_0 ) )
            wait 0.25;
    }
}

_ID32462( var_0 )
{
    var_1 = getdvarint( "sm_sunenable", 1 );
    var_2 = getdvarfloat( "sm_sunshadowscale", 1.0 );
    var_3 = getdvarint( "sm_spotlimit", 4 );
    var_4 = getdvarfloat( "sm_sunsamplesizenear", 0.25 );
    var_5 = getdvarfloat( "sm_qualityspotshadow", 1.0 );

    if ( isdefined( self._ID31466 ) )
        var_1 = self._ID31466;

    if ( isdefined( self._ID31468 ) )
        var_2 = self._ID31468;

    if ( isdefined( self._ID31448 ) )
        var_3 = self._ID31448;

    if ( isdefined( self._ID31467 ) )
        var_4 = self._ID31467;

    var_4 = min( max( 0.016, var_4 ), 32 );

    if ( isdefined( self._ID31412 ) )
        var_5 = self._ID31412;

    var_6 = getdvarint( "sm_sunenable", 1 );
    var_7 = getdvarfloat( "sm_sunshadowscale", 1.0 );
    var_8 = getdvarint( "sm_spotlimit", 4 );
    var_9 = getdvarint( "sm_qualityspotshadow", 1.0 );
    setsaveddvar( "sm_sunenable", var_1 );
    setsaveddvar( "sm_sunshadowscale", var_2 );
    setsaveddvar( "sm_spotlimit", var_3 );
    setsaveddvar( "sm_qualityspotshadow", var_5 );
    _ID22186( var_4, var_0 );
}

_ID22186( var_0, var_1 )
{
    level notify( "changing_sunsamplesizenear" );
    level endon( "changing_sunsamplesizenear" );
    var_2 = getdvarfloat( "sm_sunSampleSizeNear", 0.25 );

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
            setsaveddvar( "sm_sunSampleSizeNear", var_6 );
            wait 0.05;
        }
    }

    setsaveddvar( "sm_sunSampleSizeNear", var_0 );
}

_ID19800()
{
    _ID19726();
    _ID19723();
}

_ID19726()
{
    self._ID22441 = [];
    self._ID39484 = [];
    self._ID22413 = [];

    if ( isdefined( self.target ) )
    {
        var_0 = getentarray( self.target, "targetname" );

        if ( var_0.size == 0 )
            return;

        foreach ( var_2 in var_0 )
        {
            if ( _ID20556( var_2 ) )
            {
                self._ID22413[self._ID22413.size] = var_2;
                var_2 _ID19726();
                continue;
            }

            var_3 = 1;

            if ( isdefined( var_2.script_noteworthy ) )
            {
                if ( var_2.script_noteworthy == "on" )
                {
                    var_3 = 0;
                    _ID19727( var_2 );
                }
                else if ( var_2.script_noteworthy == "off" )
                {
                    var_3 = 0;
                    self._ID39484[self._ID39484.size] = var_2;
                }
            }

            if ( var_3 )
            {
                _ID19727( var_2 );
                var_4 = getentarray( var_2.target, "targetname" );

                foreach ( var_6 in var_4 )
                    self._ID39484[self._ID39484.size] = var_6;
            }
        }

        foreach ( var_2 in self._ID22441 )
            var_2._ID40541 = 1;

        foreach ( var_2 in self._ID39484 )
        {
            var_2._ID40541 = 0;
            var_2 hide();
        }
    }
}

_ID19727( var_0 )
{
    self._ID22441[self._ID22441.size] = var_0;
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;

    if ( isdefined( var_0._ID31220 ) )
    {
        var_1 = self._ID31220;
        var_2 = var_0.origin;
        var_3 = var_0.angles;
    }
    else if ( isdefined( var_0.target ) )
    {
        var_4 = _ID42237::_ID16638( var_0.target, "targetname" );

        if ( isdefined( var_4 ) && isdefined( var_4._ID31220 ) )
        {
            var_1 = var_4._ID31220;
            var_2 = var_4.origin;
            var_3 = ( 0, 0, 0 );

            if ( isdefined( var_4.angles ) )
                var_3 = var_4.angles;
        }
    }

    if ( isdefined( var_1 ) )
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
        var_1 = self._ID31261 + ( self._ID31260 - self._ID31261 ) * 0.4;
        var_2 = self._ID31260 - ( self._ID31260 - self._ID31261 ) * 0.4;
        var_3 = self._ID31260;
        var_4 = randomintrange( self._ID31105, self._ID31104 );

        for ( var_5 = 0; var_5 < var_4; var_5++ )
        {
            var_6 = randomfloatrange( var_0, var_1 );
            _ID22160( var_6, _ID15667() );
            _ID42407::_ID916();
            var_6 = randomfloatrange( var_2, var_3 );
            _ID22160( var_6, _ID15667() );
        }

        _ID22160( self._ID31260, _ID15667() );
    }
}

_ID22160( var_0, var_1 )
{
    var_2 = int( var_1 * 20 );
    var_3 = self getlightintensity();
    var_4 = ( var_0 - var_3 ) / var_2;

    for ( var_5 = 0; var_5 < var_2; var_5++ )
    {
        thread _ID17847( var_0 );
        self setlightintensity( var_3 + var_5 * var_4 );
        wait 0.05;
    }

    var_6[0] = self;

    if ( isdefined( self._ID22413 ) )
        var_6 = _ID42237::_ID3296( var_6, self._ID22413 );

    foreach ( var_8 in var_6 )
    {
        var_8 thread _ID17847( var_0 );
        var_8 setlightintensity( var_0 );
    }
}

_ID17847( var_0 )
{
    var_1 = var_0 > self._ID31479;

    foreach ( var_3 in self._ID22441 )
    {
        if ( var_1 && !var_3._ID40541 )
        {
            var_3._ID40541 = var_1;
            var_3 show();

            if ( isdefined( var_3._ID12315 ) )
                var_3._ID12315 thread _ID42407::_ID29840();

            continue;
        }

        if ( !var_1 && var_3._ID40541 )
        {
            var_3._ID40541 = var_1;
            var_3 hide();

            if ( isdefined( var_3._ID12315 ) )
                var_3._ID12315 thread _ID42237::_ID26402();
        }
    }

    foreach ( var_3 in self._ID39484 )
    {
        if ( !var_1 && !var_3._ID40541 )
        {
            var_3._ID40541 = 1;
            var_3 show();
            continue;
        }

        if ( var_1 && var_3._ID40541 )
        {
            var_3._ID40541 = 0;
            var_3 hide();
        }
    }
}

_ID15667()
{
    return randomfloatrange( self._ID31121, self._ID31120 );
}

_ID19723()
{
    var_0["pulse"] = ::_ID10102;
    var_0["neon"] = ::_ID10097;
    var_0["fire"] = ::_ID10094;
    [[ var_0[self._ID31269] ]]();
}

_ID10102()
{
    _ID32273( 0.1, 0.2 );
    _ID32519( 1, 4 );
    _ID32252( 3, 6 );
    _ID32476( 0.5 );
    var_0 = self getlightintensity();
    _ID32357( var_0 * 0.25, var_0 );
    thread _ID28756();
}

_ID10097()
{
    _ID32273( 0.05, 0.1 );
    _ID32519( 2, 5 );
    _ID32252( 1, 3 );
    _ID32476( 0.5 );
    var_0 = self getlightintensity();
    _ID32357( var_0 * 0.1, var_0 );
    thread _ID28756();
}

_ID10094()
{
    _ID32273( 0.05, 0.1 );
    _ID32519( 0.05, 0.1 );
    _ID32252( 1, 2 );
    _ID32476( 0.5 );
    var_0 = self getlightintensity();
    _ID32357( var_0 * 0.75, var_0 );
    thread _ID28756();
}

_ID32476( var_0 )
{
    if ( !isdefined( self._ID31479 ) )
        self._ID31479 = var_0;

    foreach ( var_2 in self._ID22413 )
    {
        if ( !isdefined( var_2._ID31479 ) )
            var_2._ID31479 = self._ID31479;
    }
}

_ID32273( var_0, var_1 )
{
    if ( !isdefined( self._ID31121 ) )
        self._ID31121 = var_0;

    if ( !isdefined( self._ID31120 ) )
        self._ID31120 = var_1;
}

_ID32519( var_0, var_1 )
{
    if ( !isdefined( self._ID31526 ) )
        self._ID31526 = var_0;

    if ( !isdefined( self._ID31525 ) )
        self._ID31525 = var_1;
}

_ID32252( var_0, var_1 )
{
    if ( !isdefined( self._ID31105 ) )
        self._ID31105 = var_0;

    if ( !isdefined( self._ID31104 ) )
        self._ID31104 = var_1;
}

_ID32357( var_0, var_1 )
{
    if ( !isdefined( self._ID31261 ) )
        self._ID31261 = var_0;

    if ( !isdefined( self._ID31260 ) )
        self._ID31260 = var_1;
}

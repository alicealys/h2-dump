// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19906()
{
    if ( !isdefined( level._ID15079 ) )
        level._ID15079 = [];

    if ( !isdefined( level._ID15079["create_triggerfx"] ) )
        level._ID15079["create_triggerfx"] = ::_ID9184;

    if ( !isdefined( level._ID1461 ) )
        level._ID1461 = spawnstruct();

    _ID42237::_ID9163( "createfx_looper", 20 );
    level._ID15273 = 1;
    level._ID1461._ID13628 = _ID42234::_ID13613;
    waitframe;
    waitframe;
    level._ID1461._ID13628 = _ID42234::_ID13612;
    level._ID1461._ID32161 = 0;

    if ( getdvarint( "serverCulledSounds" ) == 1 )
        level._ID1461._ID32161 = 1;

    if ( level._ID9228 )
        level._ID1461._ID32161 = 0;

    if ( level._ID9228 )
    {
        level waittill( "createfx_common_done" );
        waitframe;
    }

    _ID51666();
    var_0 = _ID54586();

    for ( var_1 = 0; var_1 < level._ID9242.size; var_1++ )
    {
        var_2 = level._ID9242[var_1];
        var_2 _ID42229::_ID32323();
        var_2 _ID42229::_ID49930();

        switch ( var_2._ID40005["type"] )
        {
            case "loopfx":
                var_2 thread _ID22662();
                break;
            case "oneshotfx":
                var_2 thread _ID25763();
                break;
            case "soundfx":
                var_2 thread _ID9165();
                break;
            case "soundfx_interval":
                var_2 thread _ID9158();
                break;
            case "reactive_fx":
                var_2 _ID1933();
                break;
            case "soundfx_dynamic":
                var_2 thread _ID9138();
                break;
        }

        if ( isdefined( var_2._ID40005["stop_on_exploder"] ) )
            var_2 thread _ID42229::_ID43432();

        var_2 _ID52689( var_0 );
    }

    _ID7351( var_0 );
}

_ID29513()
{

}

_ID7351( var_0 )
{

}

_ID7380( var_0, var_1 )
{

}

_ID54586()
{

}

_ID52689( var_0 )
{

}

_ID28572( var_0, var_1, var_2, var_3 )
{
    if ( getdvar( "debug" ) == "1" )
        return;
}

_ID26770()
{
    if ( isdefined( self._ID40005["platform"] ) && isdefined( level._ID227 ) )
    {
        var_0 = self._ID40005["platform"];

        if ( var_0 == "cg" && !level._ID227 || var_0 == "ng" && !level._ID688 || var_0 == "xenon" && !level._ID1333 || var_0 == "ps3" && !level._ID843 || var_0 == "pc" && !level._ID765 || var_0 == "xb3" && !level._ID1332 || var_0 == "ps4" && !level._ID844 || var_0 == "pccg" && !level._ID766 || var_0 == "!cg" && level._ID227 || var_0 == "!ng" && level._ID688 || var_0 == "!xenon" && level._ID1333 || var_0 == "!ps3" && level._ID843 || var_0 == "!pc" && level._ID765 || var_0 == "!xb3" && level._ID1332 || var_0 == "!ps4" && level._ID844 || var_0 == "!pccg" && level._ID766 )
            return 0;
    }

    return 1;
}

_ID25762( var_0, var_1, var_2, var_3 )
{

}

_ID13629( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13, var_14, var_15, var_16, var_17 )
{
    if ( 1 )
    {
        var_18 = _ID42237::_ID9217( var_1 );
        var_18._ID40005["origin"] = var_2;
        var_18._ID40005["angles"] = ( 0, 0, 0 );

        if ( isdefined( var_4 ) )
            var_18._ID40005["angles"] = vectortoangles( var_4 - var_2 );

        var_18._ID40005["delay"] = var_3;
        var_18._ID40005["exploder"] = var_0;

        if ( isdefined( level._ID9245 ) )
        {
            var_19 = level._ID9245[var_18._ID40005["exploder"]];

            if ( !isdefined( var_19 ) )
                var_19 = [];

            var_19[var_19.size] = var_18;
            level._ID9245[var_18._ID40005["exploder"]] = var_19;
        }

        return;
    }

    var_20 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_20._ID740 = var_2;
    var_20._ID65 = vectortoangles( var_4 - var_2 );
    var_20._ID31170 = var_0;
    var_20._ID31220 = var_1;
    var_20._ID916 = var_3;
    var_20._ID31182 = var_5;
    var_20._ID31183 = var_6;
    var_20._ID31184 = var_7;
    var_20._ID31437 = var_8;
    var_20._ID31160 = var_9;
    var_20._ID31108 = var_10;
    var_20._ID31413 = var_15;
    var_20._ID31438 = var_11;
    var_20._ID31185 = var_16;
    var_20._ID31417 = var_12;
    var_20._ID31121 = var_13;
    var_20._ID31120 = var_14;
    var_20._ID31172 = var_17;
    var_21 = anglestoforward( var_20._ID65 );
    var_21 *= 150;
    var_20._ID37339 = var_2 + var_21;

    if ( !isdefined( level._ID1585 ) )
        level._ID1585 = [];

    level._ID1585[level._ID1585.size] = var_20;
}

_ID22655( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = _ID42237::_ID9259( var_0 );
    var_7._ID40005["origin"] = var_1;
    var_7._ID40005["angles"] = ( 0, 0, 0 );

    if ( isdefined( var_3 ) )
        var_7._ID40005["angles"] = vectortoangles( var_3 - var_1 );

    var_7._ID40005["delay"] = var_2;
}

_ID9164()
{
    self._ID22654 = playloopedfx( level._ID1426[self._ID40005["fxid"]], self._ID40005["delay"], self._ID40005["origin"], 0, self._ID40005["forward"], self._ID40005["up"] );
    _ID9165();
}

_ID9165()
{
    if ( !_ID26770() )
        return;

    self notify( "stop_loop" );

    if ( !isdefined( self._ID40005["soundalias"] ) )
        return;

    if ( self._ID40005["soundalias"] == "nil" )
        return;

    var_0 = 0;
    var_1 = undefined;

    if ( isdefined( self._ID40005["stopable"] ) && self._ID40005["stopable"] )
        var_1 = "stop_loop";
    else if ( level._ID1461._ID32161 && isdefined( self._ID40005["server_culled"] ) )
        var_0 = self._ID40005["server_culled"];

    var_2 = self;
    var_3 = undefined;

    if ( level._ID9228 )
        var_3 = self;

    var_2 _ID42237::_ID22647( self._ID40005["soundalias"], self._ID40005["origin"], self._ID40005["angles"], var_0, var_1, var_3 );
}

_ID9158()
{
    if ( !_ID26770() )
        return;

    self notify( "stop_loop" );

    if ( !isdefined( self._ID40005["soundalias"] ) )
        return;

    if ( self._ID40005["soundalias"] == "nil" )
        return;

    var_0 = undefined;
    var_1 = self;

    if ( isdefined( self._ID40005["stopable"] ) && self._ID40005["stopable"] || level._ID9228 )
    {
        if ( isdefined( self._ID22654 ) )
        {
            var_1 = self._ID22654;
            var_0 = "death";
        }
        else
            var_0 = "stop_loop";
    }

    var_1 thread _ID42237::_ID22646( self._ID40005["soundalias"], self._ID40005["origin"], self._ID40005["angles"], var_0, undefined, self._ID40005["delay_min"], self._ID40005["delay_max"] );
}

_ID9138()
{
    if ( !_ID26770() )
        return;

    if ( !isdefined( self._ID40005["ambiencename"] ) )
        return;

    if ( self._ID40005["ambiencename"] == "nil" )
        return;

    if ( _ID42237::_ID20913() )
        return;

    if ( getdvar( "createfx" ) == "on" )
        _ID42237::_ID14413( "createfx_started" );

    if ( isdefined( self._ID9679 ) )
        level._ID794 _meth_848d( self._ID9679._ID39468 );

    self._ID9679 = spawnstruct();
    self._ID9679 _ID42237::_ID3442();
    level._ID794 _meth_848c( self._ID40005["ambiencename"], self._ID40005["origin"], self._ID40005["dynamic_distance"], self._ID9679._ID39468 );
    return;
}

_ID22662()
{
    waittillframeend;

    if ( isdefined( self._ID15292 ) )
        level waittill( "start fx" + self._ID15292 );

    for (;;)
    {
        _ID9164();

        if ( isdefined( self._ID37742 ) )
            thread _ID22661( self._ID37742 );

        if ( isdefined( self._ID15293 ) )
            level waittill( "stop fx" + self._ID15293 );
        else
            return;

        if ( isdefined( self._ID22654 ) )
            self._ID22654 delete();

        if ( isdefined( self._ID15292 ) )
        {
            level waittill( "start fx" + self._ID15292 );
            continue;
        }

        return;
    }
}

_ID22658( var_0 )
{
    self endon( "death" );
    var_0 waittill( "effect id changed",  var_1  );
}

_ID22659( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        var_0 waittill( "effect org changed",  var_1  );
        self._ID740 = var_1;
    }
}

_ID22657( var_0 )
{
    self endon( "death" );
    var_0 waittill( "effect delay changed",  var_1  );
}

_ID22660( var_0 )
{
    self endon( "death" );
    var_0 waittill( "effect deleted" );
    self delete();
}

_ID22661( var_0 )
{
    self endon( "death" );
    wait(var_0);
    self._ID22654 delete();
}

_ID22675( var_0, var_1, var_2 )
{
    level thread _ID22677( var_0, var_1, var_2 );
}

_ID22677( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", var_1 );
    var_3._ID740 = var_1;
    var_3 playloopsound( var_0 );
}

_ID17517( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    thread _ID17518( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID17518( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    level endon( "stop all gunfireloopfx" );
    waittillframeend;

    if ( var_7 < var_6 )
    {
        var_8 = var_7;
        var_7 = var_6;
        var_6 = var_8;
    }

    var_9 = var_6;
    var_10 = var_7 - var_6;

    if ( var_5 < var_4 )
    {
        var_8 = var_5;
        var_5 = var_4;
        var_4 = var_8;
    }

    var_11 = var_4;
    var_12 = var_5 - var_4;

    if ( var_3 < var_2 )
    {
        var_8 = var_3;
        var_3 = var_2;
        var_2 = var_8;
    }

    var_13 = var_2;
    var_14 = var_3 - var_2;
    var_15 = spawnfx( level._ID1426[var_0], var_1 );

    if ( !level._ID9228 )
        var_15 willneverchange();

    for (;;)
    {
        var_16 = var_13 + randomint( var_14 );

        for ( var_17 = 0; var_17 < var_16; var_17++ )
        {
            triggerfx( var_15 );
            wait(var_11 + randomfloat( var_12 ));
        }

        wait(var_9 + randomfloat( var_10 ));
    }
}

_ID17519( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    thread _ID17520( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 );
}

_ID17520( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    level endon( "stop all gunfireloopfx" );
    waittillframeend;

    if ( var_8 < var_7 )
    {
        var_9 = var_8;
        var_8 = var_7;
        var_7 = var_9;
    }

    var_10 = var_7;
    var_11 = var_8 - var_7;

    if ( var_6 < var_5 )
    {
        var_9 = var_6;
        var_6 = var_5;
        var_5 = var_9;
    }

    var_12 = var_5;
    var_13 = var_6 - var_5;

    if ( var_4 < var_3 )
    {
        var_9 = var_4;
        var_4 = var_3;
        var_3 = var_9;
    }

    var_14 = var_3;
    var_15 = var_4 - var_3;
    var_2 = vectornormalize( var_2 - var_1 );
    var_16 = spawnfx( level._ID1426[var_0], var_1, var_2 );

    if ( !level._ID9228 )
        var_16 willneverchange();

    for (;;)
    {
        var_17 = var_14 + randomint( var_15 );

        for ( var_18 = 0; var_18 < int( var_17 / level._ID15273 ); var_18++ )
        {
            triggerfx( var_16 );
            var_19 = ( var_12 + randomfloat( var_13 ) ) * level._ID15273;

            if ( var_19 < 0.05 )
                var_19 = 0.05;

            wait(var_19);
        }

        wait(var_12 + randomfloat( var_13 ));
        wait(var_10 + randomfloat( var_11 ));
    }
}

_ID32625( var_0 )
{
    level._ID15273 = 1 / var_0;
}

_ID33057()
{
    if ( !isdefined( self._ID31220 ) || !isdefined( self._ID31219 ) || !isdefined( self._ID916 ) )
        return;

    if ( isdefined( self._ID669 ) )
    {
        if ( self._ID669 == "toilet" )
        {
            thread _ID6444();
            return;
        }
    }

    var_0 = undefined;

    if ( isdefined( self._ID1191 ) )
    {
        var_1 = getent( self._ID1191, "targetname" );

        if ( isdefined( var_1 ) )
            var_0 = var_1._ID740;
    }

    var_2 = undefined;

    if ( isdefined( self._ID31221 ) )
        var_2 = self._ID31221;

    var_3 = undefined;

    if ( isdefined( self._ID31222 ) )
        var_3 = self._ID31222;

    if ( self._ID31219 == "OneShotfx" )
        _ID25762( self._ID31220, self._ID740, self._ID916, var_0 );

    if ( self._ID31219 == "loopfx" )
        _ID22655( self._ID31220, self._ID740, self._ID916, var_0, var_2, var_3 );

    if ( self._ID31219 == "loopsound" )
        _ID22675( self._ID31220, self._ID740, self._ID916 );

    self delete();
}

_ID6444()
{
    var_0 = ( 0, 0, self._ID65[1] );
    var_1 = level._ID1426[self._ID31220];
    var_2 = self._ID740;
    wait 1;
    level thread _ID6445( var_0, var_2, var_1 );
    self delete();
}

_ID6445( var_0, var_1, var_2 )
{
    for (;;)
    {
        playfx( var_2, var_1 );
        wait(30 + randomfloat( 40 ));
    }
}

_ID9184()
{
    if ( !_ID40330( self._ID40005["fxid"] ) )
        return;

    if ( isdefined( self._ID40005["tintcolor"] ) || isdefined( self._ID40005["tintalpha"] ) || isdefined( self._ID40005["emissive"] ) || isdefined( self._ID40005["sizescale"] ) )
    {
        var_0 = self._ID40005["tintcolor"];

        if ( !isdefined( var_0 ) )
            var_0 = ( 1, 1, 1 );

        var_1 = self._ID40005["tintalpha"];

        if ( !isdefined( var_1 ) )
            var_1 = 1;

        var_2 = self._ID40005["emissive"];

        if ( !isdefined( var_2 ) )
            var_2 = 1;

        var_3 = self._ID40005["sizescale"];

        if ( !isdefined( var_3 ) )
            var_3 = 1;

        self._ID22654 = spawnfx( level._ID1426[self._ID40005["fxid"]], self._ID40005["origin"], self._ID40005["forward"], self._ID40005["up"], var_0, var_1, var_2, var_3 );
    }
    else
        self._ID22654 = spawnfx( level._ID1426[self._ID40005["fxid"]], self._ID40005["origin"], self._ID40005["forward"], self._ID40005["up"] );

    triggerfx( self._ID22654, self._ID40005["delay"] );
    var_4 = isdefined( self._ID40005["kill_on_delete"] ) && self._ID40005["kill_on_delete"] || level._ID9228;

    if ( var_4 )
        _func_15e( self._ID22654, 1 );

    if ( !level._ID9228 )
        self._ID22654 willneverchange();

    _ID9165();
}

_ID40330( var_0 )
{
    if ( isdefined( level._ID1426[var_0] ) )
        return 1;

    if ( !isdefined( level._ID1526 ) )
        level._ID1526 = [];

    level._ID1526[self._ID40005["fxid"]] = var_0;
    _ID40331( var_0 );
    return 0;
}

_ID40331( var_0 )
{
    level notify( "verify_effects_assignment_print" );
    level endon( "verify_effects_assignment_print" );
    wait 0.05;
    var_1 = getarraykeys( level._ID1526 );

    foreach ( var_3 in var_1 )
    {

    }
}

_ID25763()
{
    wait 0.05;

    if ( !_ID26770() )
        return;

    if ( !_ID50157() )
        return;

    if ( self._ID40005["delay"] > 0 )
        wait(self._ID40005["delay"]);

    [[ level._ID15079["create_triggerfx"] ]]();
}

_ID1933()
{
    if ( !_ID26770() )
        return;

    if ( !_ID42237::_ID20913() && getdvar( "createfx" ) == "" )
        return;

    if ( !isdefined( level._ID1461._ID29075 ) )
    {
        level._ID1461._ID29075 = 1;
        level thread _ID29073();
    }

    if ( !isdefined( level._ID1461._ID29072 ) )
        level._ID1461._ID29072 = [];

    level._ID1461._ID29072[level._ID1461._ID29072.size] = self;
    self._ID24771 = 3000;
}

_ID29073()
{
    if ( !_ID42237::_ID20913() )
    {
        if ( getdvar( "createfx" ) == "on" )
            _ID42237::_ID14413( "createfx_started" );
    }

    level._ID1461._ID29074 = [];
    var_0 = 256;

    for (;;)
    {
        level waittill( "code_damageradius",  var_1, var_0, var_2, var_3  );
        var_4 = _ID34965( var_2, var_0 );

        foreach ( var_7, var_6 in var_4 )
            var_6 thread _ID27035( var_7 );
    }
}

_ID40052( var_0 )
{
    return ( var_0[0], var_0[1], 0 );
}

_ID34965( var_0, var_1 )
{
    var_2 = [];
    var_3 = gettime();

    foreach ( var_5 in level._ID1461._ID29072 )
    {
        if ( var_5._ID24771 > var_3 )
            continue;

        var_6 = var_5._ID40005["reactive_radius"] + var_1;
        var_6 *= var_6;

        if ( distancesquared( var_0, var_5._ID40005["origin"] ) < var_6 )
            var_2[var_2.size] = var_5;
    }

    foreach ( var_5 in var_2 )
    {
        var_9 = _ID40052( var_5._ID40005["origin"] - level._ID794._ID740 );
        var_10 = _ID40052( var_0 - level._ID794._ID740 );
        var_11 = vectornormalize( var_9 );
        var_12 = vectornormalize( var_10 );
        var_5._ID11651 = vectordot( var_11, var_12 );
    }

    for ( var_14 = 0; var_14 < var_2.size - 1; var_14++ )
    {
        for ( var_15 = var_14 + 1; var_15 < var_2.size; var_15++ )
        {
            if ( var_2[var_14]._ID11651 > var_2[var_15]._ID11651 )
            {
                var_16 = var_2[var_14];
                var_2[var_14] = var_2[var_15];
                var_2[var_15] = var_16;
            }
        }
    }

    foreach ( var_5 in var_2 )
    {
        var_5._ID740 = undefined;
        var_5._ID11651 = undefined;
    }

    for ( var_14 = 4; var_14 < var_2.size; var_14++ )
        var_2[var_14] = undefined;

    return var_2;
}

_ID27035( var_0 )
{
    var_1 = _ID15952();

    if ( !isdefined( var_1 ) )
        return;

    self._ID24771 = gettime() + 3000;
    var_1._ID740 = self._ID40005["origin"];
    var_1._ID20591 = 1;
    wait(var_0 * randomfloatrange( 0.05, 0.1 ));

    if ( _ID42237::_ID20913() )
    {
        var_1 playsound( self._ID40005["soundalias"], "sounddone" );
        var_1 waittill( "sounddone" );
    }
    else
    {
        var_1 playsound( self._ID40005["soundalias"] );
        wait 2;
    }

    wait 0.1;
    var_1._ID20591 = 0;
}

_ID15952()
{
    foreach ( var_1 in level._ID1461._ID29074 )
    {
        if ( !var_1._ID20591 )
            return var_1;
    }

    if ( level._ID1461._ID29074.size < 4 )
    {
        var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_1._ID20591 = 0;
        level._ID1461._ID29074[level._ID1461._ID29074.size] = var_1;
        return var_1;
    }

    return undefined;
}

_ID48953( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 1;

    if ( var_2 && isdefined( var_1._ID49814 ) )
        var_0[var_1._ID49814] = 1;

    if ( var_3 && isdefined( var_1._ID49523 ) )
        var_0[var_1._ID49523] = 1;

    return var_0;
}

_ID51293( var_0, var_1, var_2 )
{
    var_3 = [];

    if ( isarray( var_0 ) )
    {
        foreach ( var_5 in var_0 )
            var_3 = _ID48953( var_3, var_5, var_1, var_2 );
    }
    else
        var_3 = _ID48953( var_3, var_0, var_1, var_2 );

    return var_3;
}

_ID51666()
{
    if ( !isdefined( level._ID49529 ) )
        return;

    var_3 = level._ID49529;

    if ( isdefined( level._ID43431 ) )
        var_3[var_3.size] = level._ID43431;

    var_4 = _ID51293( var_3 );

    foreach ( var_7, var_6 in var_4 )
        thread _ID49643( var_7 );
}

_ID49643( var_0 )
{
    waittillframeend;

    for (;;)
    {
        var_1 = _ID42237::_ID14385( var_0 );
        level waittill( var_0 );
        var_2 = _ID42237::_ID14385( var_0 );

        if ( var_2 == var_1 )
            continue;

        level thread _ID50726();
    }
}

fx_volume_group_throttle_update( var_0, var_1 )
{
    var_0 = ( var_0 + 1 ) % var_1;

    if ( var_0 == 0 )
        waittillframeend;

    return var_0;
}

_ID50726()
{
    if ( isdefined( level._ID46048 ) )
    {
        if ( level._ID46048 == gettime() )
            return;

        level notify( "fx_volume_group_update_restart" );
    }

    level endon( "fx_volume_group_update_restart" );
    level._ID46048 = gettime();
    waitframe;
    var_0 = 0;
    var_1 = 50;

    if ( isdefined( level._ID45157 ) )
        var_1 = level._ID45157;

    var_2 = [];
    var_3 = [];
    var_4 = [];

    foreach ( var_6 in level._ID9242 )
    {
        if ( !isdefined( var_6 ) || !isdefined( var_6._ID40005["fx_volume_groups"] ) )
            continue;

        var_7 = var_6 _ID50157();
        var_8 = isdefined( var_6._ID22654 );

        if ( var_7 != var_8 )
        {
            if ( var_7 )
                var_3[var_3.size] = var_6;
            else
                var_2[var_2.size] = var_6;
        }

        var_0 = fx_volume_group_throttle_update( var_0, var_1 );
    }

    foreach ( var_6 in var_2 )
    {
        var_6 _ID42229::_ID36497();
        var_0 = fx_volume_group_throttle_update( var_0, var_1 );
    }

    if ( var_2.size != 0 && var_0 != 0 )
    {
        waittillframeend;
        var_0 = 0;
    }

    foreach ( var_6 in var_3 )
    {
        var_6 _ID42229::_ID29837();

        if ( isdefined( var_6._ID22654 ) && ( !isdefined( var_6._ID40005["kill_on_delete"] ) || isdefined( var_6._ID40005["kill_on_delete"] ) && !var_6._ID40005["kill_on_delete"] ) )
        {
            var_4[var_4.size] = var_6._ID22654;
            _func_15e( var_6._ID22654, 1 );
        }

        var_0 = fx_volume_group_throttle_update( var_0, var_1 );
    }

    foreach ( var_15 in var_4 )
    {
        if ( isdefined( var_15 ) )
            _func_15e( var_15, 0 );
    }

    level._ID46048 = undefined;
}

_ID50157()
{
    if ( !isdefined( level._ID49529 ) )
        return 1;

    if ( !isdefined( self._ID40005["fx_volume_groups"] ) )
        return 1;

    var_0 = [];
    var_1 = [];

    if ( self._ID40005["fx_volume_groups"].size != 0 )
    {
        var_2 = [];

        foreach ( var_4 in self._ID40005["fx_volume_groups"] )
        {
            var_5 = level._ID49529[var_4];

            if ( isdefined( var_5 ) )
                var_2[var_2.size] = var_5;
        }

        var_0 = _ID51293( var_2, 1, 0 );
        var_1 = _ID51293( var_2, 0, 1 );
    }
    else if ( isdefined( level._ID43431 ) )
    {
        var_0 = _ID48953( var_0, level._ID43431, 1, 0 );
        var_1 = _ID48953( var_1, level._ID43431, 0, 1 );
    }

    var_7 = 1;

    if ( var_0.size != 0 )
    {
        var_7 = 0;

        foreach ( var_10, var_9 in var_0 )
        {
            if ( _ID42237::_ID14385( var_10 ) )
            {
                var_7 = 1;
                break;
            }
        }
    }

    var_11 = 1;

    if ( var_1.size != 0 )
    {
        foreach ( var_10, var_9 in var_1 )
        {
            if ( _ID42237::_ID14385( var_10 ) )
            {
                var_11 = 0;
                break;
            }
        }
    }

    return var_7 && var_11;
}

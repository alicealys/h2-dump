// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{
    level._ID53397 = [];
    _ID51979( "ac130" );
    _ID51979( "alley" );
    _ID51979( "bunker" );
    _ID51979( "city" );
    _ID51979( "container" );
    _ID51979( "exterior" );
    _ID51979( "exterior1" );
    _ID51979( "exterior2" );
    _ID51979( "exterior3" );
    _ID51979( "exterior4" );
    _ID51979( "exterior5" );
    _ID51979( "forrest" );
    _ID51979( "hangar" );
    _ID51979( "interior" );
    _ID51979( "interior_metal" );
    _ID51979( "interior_stone" );
    _ID51979( "interior_vehicle" );
    _ID51979( "interior_wood" );
    _ID51979( "mountains" );
    _ID51979( "pipe" );
    _ID51979( "shanty" );
    _ID51979( "tunnel" );
    _ID51979( "underpass" );

    if ( !isdefined( level._ID2880 ) )
        level._ID2880 = [];

    if ( !isdefined( level._ID2854 ) )
        level._ID2854 = [];

    if ( !isdefined( level._ID15273 ) )
        level._ID15273 = 1;

    level._ID13116 = 0;
    level._ID13117 = 1;
    level._ID13120[level._ID13116] = "";
    level._ID13120[level._ID13117] = "";
    level._ID2877["interior"] = "";
    level._ID2877["exterior"] = "";
    level._ID2877["rain"] = "";
    _ID49457::_ID53937();
}

_ID45732( var_0 )
{
    level._ID58 = var_0;

    if ( level._ID58 == "exterior" )
        var_0 += level._ID2877["exterior"];

    if ( level._ID58 == "interior" )
        var_0 += level._ID2877["interior"];

    ambientplay( level._ID2890[var_0 + level._ID2877["rain"]], 1 );
    thread _ID2900( var_0 + level._ID2877["rain"] );
}

_ID45423()
{
    for (;;)
    {
        self waittill( "trigger" );
        _ID45732( "interior" );

        while ( level.player istouching( self ) )
            wait 0.1;

        _ID45732( "exterior" );
    }
}

_ID2898( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID43456 ) )
        level._ID43456[var_0] = spawnstruct();
    else if ( !isdefined( level._ID43456[var_0] ) )
        level._ID43456[var_0] = spawnstruct();

    level._ID43456[var_0]._ID23586 = var_1;
    level._ID43456[var_0]._ID28980 = var_2 - var_1;
}

_ID2899( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID43456[var_0]._ID52096 ) )
        var_3 = 0;
    else
        var_3 = level._ID43456[var_0]._ID52096.size;

    level._ID43456[var_0]._ID52096[var_3] = var_1;
    level._ID43456[var_0]._ID48302[var_3] = var_2;
}

_ID48801( var_0 )
{
    level.player setreverb( level._ID2880[var_0]["priority"], level._ID2880[var_0]["roomtype"], level._ID2880[var_0]["drylevel"], level._ID2880[var_0]["wetlevel"], level._ID2880[var_0]["fadetime"] );
    level waittill( "new ambient event track" );
    level.player deactivatereverb( level._ID2880[var_0]["priority"], 2 );
}

_ID49391( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID2854[var_0] ) )
        level._ID2854[var_0] = [];

    level._ID2854[var_0][var_1] = var_2;
}

_ID46017( var_0, var_1 )
{
    level._ID13120[var_1] = "exterior";

    if ( !isdefined( level._ID2854 ) || !isdefined( level._ID2854[var_0] ) )
    {
        _ID9777( var_1 );
        return;
    }

    level._ID13120[var_1] = var_0;
    var_2 = getarraykeys( level._ID2854[var_0] );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        var_5 = _ID49457::_ID51978( level._ID2854[var_0][var_4] );

        if ( !isdefined( var_5 ) )
            continue;

        for ( var_6 = 0; var_6 < 3; var_6++ )
        {
            if ( isdefined( var_5["type"][var_6] ) )
            {
                level.player seteq( var_4, var_1, var_6, var_5["type"][var_6], var_5["gain"][var_6], var_5["vol"][var_6], var_5["freq"][var_6], var_5["q"][var_6] );
                continue;
            }

            level.player deactivateeq( var_1, var_4, var_6 );
        }
    }
}

_ID9777( var_0 )
{
    level.player deactivateeq( var_0 );
}

_ID2900( var_0 )
{
    _ID46502( var_0 );
}

_ID35631( var_0 )
{
    level notify( "new ambient event track" );
    level endon( "new ambient event track" );

    if ( !isdefined( level.player._ID53762 ) )
    {
        level.player._ID53762 = spawn( "script_origin", ( 0, 0, 0 ) );
        level.player._ID53762._ID49540 = 0;
    }
    else if ( level.player._ID53762._ID49540 )
        level.player._ID53762 waittill( "sounddone" );

    var_1 = level.player._ID53762;
    var_2 = level._ID43456[var_0]._ID23586;
    var_3 = level._ID43456[var_0]._ID28980;
    var_4 = 0;
    var_5 = 0;

    if ( isdefined( level._ID2880[var_0] ) )
        thread _ID48801( var_0 );

    for (;;)
    {
        wait(var_2 + randomfloat( var_3 ));

        while ( var_5 == var_4 )
            var_5 = _ID43840( var_0 );

        var_4 = var_5;
        var_1.origin = level.player.origin;
        var_1 linkto( level.player );
        var_1 playsound( level._ID43456[var_0]._ID52096[var_5], "sounddone" );
        var_1._ID49540 = 1;
        var_1 waittill( "sounddone" );
        var_1._ID49540 = 0;
    }
}

_ID43840( var_0 )
{
    var_1 = level._ID43456[var_0]._ID52096.size;
    var_2 = randomint( var_1 );

    if ( var_1 > 1 )
    {
        var_3 = 0;
        var_4 = 0;

        for ( var_5 = 0; var_5 < var_1; var_5++ )
        {
            var_3++;
            var_4 += level._ID43456[var_0]._ID48302[var_5];
        }

        if ( var_3 == var_1 )
        {
            var_6 = randomfloat( var_4 );
            var_4 = 0;

            for ( var_5 = 0; var_5 < var_1; var_5++ )
            {
                var_4 += level._ID43456[var_0]._ID48302[var_5];

                if ( var_6 < var_4 )
                {
                    var_2 = var_5;
                    break;
                }
            }
        }
    }

    return var_2;
}

_ID51979( var_0 )
{
    level._ID53397[var_0] = 1;
}

_ID43195( var_0 )
{

}

_ID44663()
{
    var_0 = strtok( self._ID58, " " );

    if ( var_0.size == 1 )
    {
        var_1 = var_0[0];

        for (;;)
        {
            self waittill( "trigger",  var_2  );
            _ID46502( var_1 );
        }
    }

    var_3 = getent( self.target, "targetname" );
    var_4 = var_3.origin;
    var_5 = undefined;

    if ( isdefined( var_3.target ) )
    {
        var_6 = getent( var_3.target, "targetname" );
        var_5 = var_6.origin;
    }
    else
        var_5 = var_4;

    var_7 = distance( var_4, var_5 );
    var_8 = var_0[0];
    var_9 = var_0[1];
    var_10 = 0.5;

    if ( isdefined( self.targetname ) && self.targetname == "ambient_exit" )
        var_10 = 0;

    for (;;)
    {
        self waittill( "trigger",  var_2  );
        var_11 = undefined;

        while ( level.player istouching( self ) )
        {
            var_11 = _ID42407::_ID15936( var_4, var_5, level.player.origin, var_7 );

            if ( var_11 < 0 )
                var_11 = 0;

            if ( var_11 > 1 )
                var_11 = 1;

            _ID49716( var_11, var_8, var_9 );
            wait 0.05;
        }

        if ( var_11 > var_10 )
            var_11 = 1;
        else
            var_11 = 0;

        _ID49716( var_11, var_8, var_9 );
    }
}

_ID47931( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger",  var_5  );
        _ID44907( var_0, var_1, var_2, var_3, var_4 );
    }
}

_ID44907( var_0, var_1, var_2, var_3, var_4 )
{
    level notify( "trigger_ambience_touched" );
    level endon( "trigger_ambience_touched" );

    for (;;)
    {
        var_5 = _ID42407::_ID15936( var_0, var_1, level.player.origin, var_2 );

        if ( var_5 < 0 )
        {
            var_5 = 0;
            _ID46502( var_3 );
            break;
        }

        if ( var_5 >= 1 )
        {
            _ID46502( var_4 );
            break;
        }

        _ID49716( var_5, var_3, var_4 );
        wait 0.05;
    }
}

_ID49716( var_0, var_1, var_2 )
{
    if ( level._ID13120[level._ID13116] != var_2 )
        _ID46017( var_2, level._ID13116 );

    if ( level._ID13120[level._ID13117] != var_1 )
        _ID46017( var_1, level._ID13117 );

    level.player seteqlerp( var_0, level._ID13116 );

    if ( var_0 == 1 || var_0 == 0 )
        level._ID49942 = 0;

    if ( !isdefined( level._ID49942 ) )
        level._ID49942 = 0;

    if ( gettime() < level._ID49942 )
        return;

    level._ID49942 = gettime() + 200;
}

_ID46502( var_0 )
{
    if ( isdefined( level._ID43456[var_0] ) )
        thread _ID35631( var_0 );

    if ( level._ID13120[level._ID13116] != var_0 )
        _ID46017( var_0, level._ID13116 );

    level.player seteqlerp( 1, level._ID13116 );
}

_ID54475( var_0, var_1, var_2 )
{
    if ( getdvar( "loc_warnings" ) == "1" )
        return;

    if ( getdvar( "debug_hud" ) != "" )
        return;

    if ( !isdefined( level._ID51278 ) )
    {
        var_3 = -40;
        var_4 = 460;
        level._ID51278 = [];
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3 + 22;
        var_5.y = var_4 + 10;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._ID51278["inner"] = var_5;
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3;
        var_5.y = var_4 + 10;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._ID51278["frac_inner"] = var_5;
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3 + 22;
        var_5.y = var_4;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._ID51278["outer"] = var_5;
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3;
        var_5.y = var_4;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._ID51278["frac_outer"] = var_5;
    }

    if ( isdefined( var_2 ) )
    {
        level._ID51278["frac_outer"].label = int( 100 * ( 1 - var_0 ) );
        level._ID51278["frac_outer"].alpha = 1;
        level._ID51278["outer"].label = var_2;
        level._ID51278["outer"].alpha = 1;
    }
    else
    {
        level._ID51278["outer"].alpha = 0;
        level._ID51278["frac_outer"].alpha = 0;
    }

    level._ID51278["outer"] fadeovertime( 0.5 );
    level._ID51278["frac_outer"] fadeovertime( 0.5 );
    level._ID51278["frac_inner"].label = int( 100 * var_0 );
    level._ID51278["frac_inner"].alpha = 1;
    level._ID51278["frac_inner"] fadeovertime( 0.5 );
    level._ID51278["inner"] settext( var_1 );
    level._ID51278["inner"].alpha = 1;
    level._ID51278["inner"] fadeovertime( 0.5 );
}

_ID46495( var_0, var_1, var_2 )
{
    if ( var_0 == 0 )
    {
        _ID49716( 1, var_1, var_2 );
        return;
    }

    var_3 = 0;
    var_4 = 0.05;
    var_5 = 1 / ( var_0 / var_4 );

    for (;;)
    {
        var_3 += var_5;

        if ( var_3 >= 1 )
        {
            _ID46502( var_2 );
            break;
        }

        _ID49716( var_3, var_1, var_2 );
        wait(var_4);
    }
}

_ID39899( var_0, var_1 )
{
    if ( level.player _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    foreach ( var_6, var_3 in level._ID2854[var_0] )
    {
        var_4 = _ID49457::_ID51978( var_0 );

        if ( !isdefined( var_4 ) )
            continue;

        if ( isdefined( var_4["type"][0] ) && isdefined( var_4["type"][1] ) && isdefined( var_4["type"][2] ) )
        {
            level.player seteqbands( var_6, var_1, var_4["type"][0], var_4["gain"][0], var_4["vol"][0], var_4["freq"][0], var_4["q"][0], var_4["type"][1], var_4["gain"][1], var_4["vol"][1], var_4["freq"][1], var_4["q"][1], var_4["type"][2], var_4["gain"][2], var_4["vol"][2], var_4["freq"][2], var_4["q"][2] );
            continue;
        }

        if ( isdefined( var_4["type"][0] ) && isdefined( var_4["type"][1] ) && !isdefined( var_4["type"][2] ) )
        {
            level.player seteqbands( var_6, var_1, var_4["type"][0], var_4["gain"][0], var_4["vol"][0], var_4["freq"][0], var_4["q"][0], var_4["type"][1], var_4["gain"][1], var_4["vol"][1], var_4["freq"][1], var_4["q"][1] );
            continue;
        }

        if ( isdefined( var_4["type"][0] ) && !isdefined( var_4["type"][1] ) && !isdefined( var_4["type"][2] ) )
        {
            level.player seteqbands( var_6, var_1, var_4["type"][0], var_4["gain"][0], var_4["vol"][0], var_4["freq"][0], var_4["q"][0] );
            continue;
        }

        if ( isdefined( var_4["type"][0] ) && !isdefined( var_4["type"][1] ) && !isdefined( var_4["type"][2] ) )
        {
            level.player deactivateeq( var_1, var_6 );
            continue;
        }

        for ( var_5 = 0; var_5 < 3; var_5++ )
        {
            if ( isdefined( var_4["type"][var_5] ) )
            {
                level.player seteq( var_6, var_1, var_5, var_4["type"][var_5], var_4["gain"][var_5], var_4["vol"][var_5], var_4["freq"][var_5], var_4["q"][var_5] );
                continue;
            }

            level.player deactivateeq( var_1, var_6, var_5 );
        }
    }
}

_ID44649( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3._ID23586 = var_1;
    var_3._ID28980 = var_2 - var_1;
    var_3._ID52096 = [];
    var_3._ID49078 = [];
    var_3._ID38049 = var_0;
    level._ID43456[var_0] = var_3;
    return var_3;
}

_ID49344()
{
    waitframe;
}

_ID45174( var_0, var_1 )
{
    self._ID52096[var_0] = var_1;
}

_ID46146( var_0, var_1 )
{
    self._ID49078[var_0] = var_1;
}

_ID45966( var_0 )
{
    level._ID49300[self._ID38049] = level._ID49300[var_0];
    level._ID2854[self._ID38049] = level._ID2854[var_0];
    level._ID2880[self._ID38049] = level._ID2880[var_0];
}

_ID49513( var_0 )
{
    if ( var_0 == "exterior" && isdefined( level._ID49586 ) )
        return level._ID49586;

    return var_0;
}

_ID9778()
{
    level._ID29941 = "";
    level.player deactivatereverb( "snd_enveffectsprio_level", 2 );
    _ID44479( "reverb" );
}

_ID39913( var_0 )
{
    if ( level.player _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
        return;

    var_1 = level._ID2880[var_0];
    level.player setreverb( var_1["priority"], var_1["roomtype"], var_1["drylevel"], var_1["wetlevel"], var_1["fadetime"] );
}

_ID53341( var_0 )
{
    level._ID49586 = var_0;
}

_ID45842( var_0, var_1 )
{
    level._ID43456[var_0] _ID45966( var_1 );
}

_ID33350( var_0, var_1 )
{
    var_0 = _ID49513( var_0 );

    if ( !isdefined( var_0 ) || !isdefined( level._ID2854[var_0] ) )
    {
        _ID9777( var_1 );
        return 0;
    }

    if ( level._ID13120[var_1] == var_0 )
        return 0;

    level._ID13120[var_1] = var_0;
    _ID39899( var_0, var_1 );
    return 1;
}

_ID51713( var_0, var_1 )
{
    var_2 = 0.05;
    var_3 = var_1 / var_2;
    var_4 = 1 / var_3;

    for ( var_5 = 0; var_5 <= 1; var_5 += var_4 )
    {
        level.player seteqlerp( var_5, var_0 );
        wait(var_2);
    }

    level.player seteqlerp( 1, var_0 );
}

_ID53282( var_0 )
{
    var_1 = 0;

    foreach ( var_4, var_3 in var_0 )
        var_1 += var_3;

    return var_1;
}

_ID43677( var_0 )
{
    if ( !isdefined( level._ID2890 ) )
        return;

    if ( !isdefined( level._ID2890[var_0] ) )
        return;

    if ( !isdefined( level._ID52044 ) )
        level._ID52044 = 1;

    ambientplay( level._ID2890[var_0], 1, level._ID52044 );
}

_ID47462()
{
    level._ID51278 = [];

    if ( _ID54667() )
        return;

    var_0 = 20;
    var_1 = 460;
    var_2 = 22;
    var_3 = -70;
    var_4 = ( 0.4, 0.9, 0.6 );
    var_5 = [];
    var_6 = "ambient";
    var_5[var_6] = [];
    var_7 = newhudelem();
    var_7.x = var_0 + var_3;
    var_7.y = var_1;
    var_7 settext( "Ambient track: " );
    var_5[var_6]["label"] = var_7;
    var_7 = newhudelem();
    var_7.x = var_0;
    var_7.y = var_1;
    var_5[var_6]["track"] = var_7;
    var_1 -= 10;
    var_6 = "event_system";
    var_5[var_6] = [];
    var_7 = newhudelem();
    var_7.x = var_0 + var_3;
    var_7.y = var_1;
    var_7 settext( "Event system: " );
    var_5[var_6]["label"] = var_7;
    var_7 = newhudelem();
    var_7.x = var_0;
    var_7.y = var_1;
    var_5[var_6]["track"] = var_7;
    var_1 -= 10;
    var_6 = "eq_0";
    var_5[var_6] = [];
    var_7 = newhudelem();
    var_7.x = var_0 + var_3;
    var_7.y = var_1;
    var_7 settext( "EQ main: " );
    var_5[var_6]["label"] = var_7;
    var_7 = newhudelem();
    var_7.x = var_0 + var_2;
    var_7.y = var_1;
    var_5[var_6]["track"] = var_7;
    var_7 = newhudelem();
    var_7.x = var_0;
    var_7.y = var_1;
    var_5[var_6]["fraction"] = var_7;
    var_1 -= 10;
    var_6 = "eq_1";
    var_5[var_6] = [];
    var_7 = newhudelem();
    var_7.x = var_0 + var_3;
    var_7.y = var_1;
    var_7 settext( "EQ mix: " );
    var_5[var_6]["label"] = var_7;
    var_7 = newhudelem();
    var_7.x = var_0 + var_2;
    var_7.y = var_1;
    var_5[var_6]["track"] = var_7;
    var_7 = newhudelem();
    var_7.x = var_0;
    var_7.y = var_1;
    var_5[var_6]["fraction"] = var_7;
    var_1 -= 10;
    var_6 = "reverb";
    var_5[var_6] = [];
    var_7 = newhudelem();
    var_7.x = var_0 + var_3;
    var_7.y = var_1;
    var_7 settext( "Reverb: " );
    var_5[var_6]["label"] = var_7;
    var_7 = newhudelem();
    var_7.x = var_0;
    var_7.y = var_1;
    var_5[var_6]["track"] = var_7;
    var_1 -= 10;

    foreach ( var_12, var_9 in var_5 )
    {
        foreach ( var_7 in var_9 )
        {
            var_7.alignx = "left";
            var_7.aligny = "bottom";
            var_7.color = var_4;
            var_7.alpha = 0;
        }

        var_5[var_12]["track"]._ID12560 = 0;
    }

    level._ID51278 = var_5;
}

_ID54734( var_0, var_1 )
{
    if ( _ID54667() )
        return;

    if ( !isdefined( level._ID51278[var_0] ) )
        return;

    level._ID51278[var_0]["track"]._ID12560 = 1;

    foreach ( var_3 in level._ID51278[var_0] )
        var_3.alpha = 1;

    level._ID51278[var_0]["track"] settext( var_1 );
}

_ID43966( var_0, var_1 )
{
    if ( !level._ID51278[var_0]["track"]._ID12560 )
    {
        _ID44479( var_0 );
        return;
    }

    level._ID51278[var_0]["fraction"] settext( int( var_1 * 100 ) );

    foreach ( var_3 in level._ID51278[var_0] )
        var_3.alpha = 1;
}

_ID44479( var_0 )
{

}

_ID54667()
{
    if ( getdvar( "loc_warnings", 0 ) == "1" )
        return 1;

    if ( getdvarint( "debug_hud" ) )
        return 1;

    return !isdefined( level._ID51278 );
}

_ID54260()
{

}

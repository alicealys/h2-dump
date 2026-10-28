// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init()
{
    level._id_D095 = [];
    _id_CB0B( "ac130" );
    _id_CB0B( "alley" );
    _id_CB0B( "bunker" );
    _id_CB0B( "city" );
    _id_CB0B( "container" );
    _id_CB0B( "exterior" );
    _id_CB0B( "exterior1" );
    _id_CB0B( "exterior2" );
    _id_CB0B( "exterior3" );
    _id_CB0B( "exterior4" );
    _id_CB0B( "exterior5" );
    _id_CB0B( "forrest" );
    _id_CB0B( "hangar" );
    _id_CB0B( "interior" );
    _id_CB0B( "interior_metal" );
    _id_CB0B( "interior_stone" );
    _id_CB0B( "interior_vehicle" );
    _id_CB0B( "interior_wood" );
    _id_CB0B( "mountains" );
    _id_CB0B( "pipe" );
    _id_CB0B( "shanty" );
    _id_CB0B( "tunnel" );
    _id_CB0B( "underpass" );

    if ( !isdefined( level.ambient_reverb ) )
        level.ambient_reverb = [];

    if ( !isdefined( level.ambient_eq ) )
        level.ambient_eq = [];

    if ( !isdefined( level.fxfireloopmod ) )
        level.fxfireloopmod = 1;

    level.eq_main_track = 0;
    level.eq_mix_track = 1;
    level.eq_track[level.eq_main_track] = "";
    level.eq_track[level.eq_mix_track] = "";
    level.ambient_modifier["interior"] = "";
    level.ambient_modifier["exterior"] = "";
    level.ambient_modifier["rain"] = "";
    _id_C131::_id_D2B1();
}

_id_B2A4( var_0 )
{
    level.ambient = var_0;

    if ( level.ambient == "exterior" )
        var_0 += level.ambient_modifier["exterior"];

    if ( level.ambient == "interior" )
        var_0 += level.ambient_modifier["interior"];

    ambientplay( level.ambient_track[var_0 + level.ambient_modifier["rain"]], 1 );
    thread ambienteventstart( var_0 + level.ambient_modifier["rain"] );
}

_id_B16F()
{
    for (;;)
    {
        self waittill( "trigger" );
        _id_B2A4( "interior" );

        while ( level.player istouching( self ) )
            wait 0.1;

        _id_B2A4( "exterior" );
    }
}

ambientdelay( var_0, var_1, var_2 )
{
    if ( !isdefined( level._id_A9C0 ) )
        level._id_A9C0[var_0] = spawnstruct();
    else if ( !isdefined( level._id_A9C0[var_0] ) )
        level._id_A9C0[var_0] = spawnstruct();

    level._id_A9C0[var_0].min = var_1;
    level._id_A9C0[var_0].range = var_2 - var_1;
}

ambientevent( var_0, var_1, var_2 )
{
    if ( !isdefined( level._id_A9C0[var_0]._id_CB80 ) )
        var_3 = 0;
    else
        var_3 = level._id_A9C0[var_0]._id_CB80.size;

    level._id_A9C0[var_0]._id_CB80[var_3] = var_1;
    level._id_A9C0[var_0]._id_BCAE[var_3] = var_2;
}

_id_BEA1( var_0 )
{
    level.player setreverb( level.ambient_reverb[var_0]["priority"], level.ambient_reverb[var_0]["roomtype"], level.ambient_reverb[var_0]["drylevel"], level.ambient_reverb[var_0]["wetlevel"], level.ambient_reverb[var_0]["fadetime"] );
    level waittill( "new ambient event track" );
    level.player deactivatereverb( level.ambient_reverb[var_0]["priority"], 2 );
}

_id_C0EF( var_0, var_1, var_2 )
{
    if ( !isdefined( level.ambient_eq[var_0] ) )
        level.ambient_eq[var_0] = [];

    level.ambient_eq[var_0][var_1] = var_2;
}

_id_B3C1( var_0, var_1 )
{
    level.eq_track[var_1] = "exterior";

    if ( !isdefined( level.ambient_eq ) || !isdefined( level.ambient_eq[var_0] ) )
    {
        deactivate_index( var_1 );
        return;
    }

    level.eq_track[var_1] = var_0;
    var_2 = getarraykeys( level.ambient_eq[var_0] );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        var_5 = _id_C131::_id_CB0A( level.ambient_eq[var_0][var_4] );

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

deactivate_index( var_0 )
{
    level.player deactivateeq( var_0 );
}

ambienteventstart( var_0 )
{
    _id_B5A6( var_0 );
}

start_ambient_event( var_0 )
{
    level notify( "new ambient event track" );
    level endon( "new ambient event track" );

    if ( !isdefined( level.player._id_D202 ) )
    {
        level.player._id_D202 = spawn( "script_origin", ( 0, 0, 0 ) );
        level.player._id_D202._id_C184 = 0;
    }
    else if ( level.player._id_D202._id_C184 )
        level.player._id_D202 waittill( "sounddone" );

    var_1 = level.player._id_D202;
    var_2 = level._id_A9C0[var_0].min;
    var_3 = level._id_A9C0[var_0].range;
    var_4 = 0;
    var_5 = 0;

    if ( isdefined( level.ambient_reverb[var_0] ) )
        thread _id_BEA1( var_0 );

    for (;;)
    {
        wait( var_2 + randomfloat( var_3 ) );

        while ( var_5 == var_4 )
            var_5 = _id_AB40( var_0 );

        var_4 = var_5;
        var_1.origin = level.player.origin;
        var_1 linkto( level.player );
        var_1 playsound( level._id_A9C0[var_0]._id_CB80[var_5], "sounddone" );
        var_1._id_C184 = 1;
        var_1 waittill( "sounddone" );
        var_1._id_C184 = 0;
    }
}

_id_AB40( var_0 )
{
    var_1 = level._id_A9C0[var_0]._id_CB80.size;
    var_2 = randomint( var_1 );

    if ( var_1 > 1 )
    {
        var_3 = 0;
        var_4 = 0;

        for ( var_5 = 0; var_5 < var_1; var_5++ )
        {
            var_3++;
            var_4 += level._id_A9C0[var_0]._id_BCAE[var_5];
        }

        if ( var_3 == var_1 )
        {
            var_6 = randomfloat( var_4 );
            var_4 = 0;

            for ( var_5 = 0; var_5 < var_1; var_5++ )
            {
                var_4 += level._id_A9C0[var_0]._id_BCAE[var_5];

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

_id_CB0B( var_0 )
{
    level._id_D095[var_0] = 1;
}

_id_A8BB( var_0 )
{

}

_id_AE77()
{
    var_0 = strtok( self.ambient, " " );

    if ( var_0.size == 1 )
    {
        var_1 = var_0[0];

        for (;;)
        {
            self waittill( "trigger", var_2 );
            _id_B5A6( var_1 );
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
        self waittill( "trigger", var_2 );
        var_11 = undefined;

        while ( level.player istouching( self ) )
        {
            var_11 = maps\_utility::get_progress( var_4, var_5, level.player.origin, var_7 );

            if ( var_11 < 0 )
                var_11 = 0;

            if ( var_11 > 1 )
                var_11 = 1;

            _id_C234( var_11, var_8, var_9 );
            wait 0.05;
        }

        if ( var_11 > var_10 )
            var_11 = 1;
        else
            var_11 = 0;

        _id_C234( var_11, var_8, var_9 );
    }
}

_id_BB3B( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "trigger", var_5 );
        _id_AF6B( var_0, var_1, var_2, var_3, var_4 );
    }
}

_id_AF6B( var_0, var_1, var_2, var_3, var_4 )
{
    level notify( "trigger_ambience_touched" );
    level endon( "trigger_ambience_touched" );

    for (;;)
    {
        var_5 = maps\_utility::get_progress( var_0, var_1, level.player.origin, var_2 );

        if ( var_5 < 0 )
        {
            var_5 = 0;
            _id_B5A6( var_3 );
            break;
        }

        if ( var_5 >= 1 )
        {
            _id_B5A6( var_4 );
            break;
        }

        _id_C234( var_5, var_3, var_4 );
        wait 0.05;
    }
}

_id_C234( var_0, var_1, var_2 )
{
    if ( level.eq_track[level.eq_main_track] != var_2 )
        _id_B3C1( var_2, level.eq_main_track );

    if ( level.eq_track[level.eq_mix_track] != var_1 )
        _id_B3C1( var_1, level.eq_mix_track );

    level.player seteqlerp( var_0, level.eq_main_track );

    if ( var_0 == 1 || var_0 == 0 )
        level._id_C316 = 0;

    if ( !isdefined( level._id_C316 ) )
        level._id_C316 = 0;

    if ( gettime() < level._id_C316 )
        return;

    level._id_C316 = gettime() + 200;
}

_id_B5A6( var_0 )
{
    if ( isdefined( level._id_A9C0[var_0] ) )
        thread start_ambient_event( var_0 );

    if ( level.eq_track[level.eq_main_track] != var_0 )
        _id_B3C1( var_0, level.eq_main_track );

    level.player seteqlerp( 1, level.eq_main_track );
}

_id_D4CB( var_0, var_1, var_2 )
{
    if ( getdvar( "loc_warnings" ) == "1" )
        return;

    if ( getdvar( "debug_hud" ) != "" )
        return;

    if ( !isdefined( level._id_C84E ) )
    {
        var_3 = -40;
        var_4 = 460;
        level._id_C84E = [];
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3 + 22;
        var_5.y = var_4 + 10;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._id_C84E["inner"] = var_5;
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3;
        var_5.y = var_4 + 10;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._id_C84E["frac_inner"] = var_5;
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3 + 22;
        var_5.y = var_4;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._id_C84E["outer"] = var_5;
        var_5 = newhudelem();
        var_5.alignx = "left";
        var_5.aligny = "bottom";
        var_5.x = var_3;
        var_5.y = var_4;
        var_5.color = ( 0.4, 0.9, 0.6 );
        level._id_C84E["frac_outer"] = var_5;
    }

    if ( isdefined( var_2 ) )
    {
        level._id_C84E["frac_outer"].label = int( 100 * ( 1 - var_0 ) );
        level._id_C84E["frac_outer"].alpha = 1;
        level._id_C84E["outer"].label = var_2;
        level._id_C84E["outer"].alpha = 1;
    }
    else
    {
        level._id_C84E["outer"].alpha = 0;
        level._id_C84E["frac_outer"].alpha = 0;
    }

    level._id_C84E["outer"] fadeovertime( 0.5 );
    level._id_C84E["frac_outer"] fadeovertime( 0.5 );
    level._id_C84E["frac_inner"].label = int( 100 * var_0 );
    level._id_C84E["frac_inner"].alpha = 1;
    level._id_C84E["frac_inner"] fadeovertime( 0.5 );
    level._id_C84E["inner"] settext( var_1 );
    level._id_C84E["inner"].alpha = 1;
    level._id_C84E["inner"] fadeovertime( 0.5 );
}

_id_B59F( var_0, var_1, var_2 )
{
    if ( var_0 == 0 )
    {
        _id_C234( 1, var_1, var_2 );
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
            _id_B5A6( var_2 );
            break;
        }

        _id_C234( var_3, var_1, var_2 );
        wait( var_4 );
    }
}

use_eq_settings( var_0, var_1 )
{
    if ( level.player maps\_utility::ent_flag( "player_has_red_flashing_overlay" ) )
        return;

    foreach ( var_6, var_3 in level.ambient_eq[var_0] )
    {
        var_4 = _id_C131::_id_CB0A( var_0 );

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

_id_AE69( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3.min = var_1;
    var_3.range = var_2 - var_1;
    var_3._id_CB80 = [];
    var_3._id_BFB6 = [];
    var_3.track = var_0;
    level._id_A9C0[var_0] = var_3;
    return var_3;
}

_id_C0C0()
{
    waittillframeend;
}

_id_B076( var_0, var_1 )
{
    self._id_CB80[var_0] = var_1;
}

_id_B442( var_0, var_1 )
{
    self._id_BFB6[var_0] = var_1;
}

_id_B38E( var_0 )
{
    level._id_C094[self.track] = level._id_C094[var_0];
    level.ambient_eq[self.track] = level.ambient_eq[var_0];
    level.ambient_reverb[self.track] = level.ambient_reverb[var_0];
}

_id_C169( var_0 )
{
    if ( var_0 == "exterior" && isdefined( level._id_C1B2 ) )
        return level._id_C1B2;

    return var_0;
}

deactivate_reverb()
{
    level.reverb_track = "";
    level.player deactivatereverb( "snd_enveffectsprio_level", 2 );
    _id_ADBF( "reverb" );
}

use_reverb_settings( var_0 )
{
    if ( level.player maps\_utility::ent_flag( "player_has_red_flashing_overlay" ) )
        return;

    var_1 = level.ambient_reverb[var_0];
    level.player setreverb( var_1["priority"], var_1["roomtype"], var_1["drylevel"], var_1["wetlevel"], var_1["fadetime"] );
}

_id_D05D( var_0 )
{
    level._id_C1B2 = var_0;
}

_id_B312( var_0, var_1 )
{
    level._id_A9C0[var_0] _id_B38E( var_1 );
}

setup_new_eq_settings( var_0, var_1 )
{
    var_0 = _id_C169( var_0 );

    if ( !isdefined( var_0 ) || !isdefined( level.ambient_eq[var_0] ) )
    {
        deactivate_index( var_1 );
        return 0;
    }

    if ( level.eq_track[var_1] == var_0 )
        return 0;

    level.eq_track[var_1] = var_0;
    use_eq_settings( var_0, var_1 );
    return 1;
}

_id_CA01( var_0, var_1 )
{
    var_2 = 0.05;
    var_3 = var_1 / var_2;
    var_4 = 1 / var_3;

    for ( var_5 = 0; var_5 <= 1; var_5 += var_4 )
    {
        level.player seteqlerp( var_5, var_0 );
        wait( var_2 );
    }

    level.player seteqlerp( 1, var_0 );
}

_id_D022( var_0 )
{
    var_1 = 0;

    foreach ( var_4, var_3 in var_0 )
        var_1 += var_3;

    return var_1;
}

_id_AA9D( var_0 )
{
    if ( !isdefined( level.ambient_track ) )
        return;

    if ( !isdefined( level.ambient_track[var_0] ) )
        return;

    if ( !isdefined( level._id_CB4C ) )
        level._id_CB4C = 1;

    ambientplay( level.ambient_track[var_0], 1, level._id_CB4C );
}

_id_B966()
{
    level._id_C84E = [];

    if ( _id_D58B() )
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

        var_5[var_12]["track"].enabled = 0;
    }

    level._id_C84E = var_5;
}

_id_D5CE( var_0, var_1 )
{
    if ( _id_D58B() )
        return;

    if ( !isdefined( level._id_C84E[var_0] ) )
        return;

    level._id_C84E[var_0]["track"].enabled = 1;

    foreach ( var_3 in level._id_C84E[var_0] )
        var_3.alpha = 1;

    level._id_C84E[var_0]["track"] settext( var_1 );
}

_id_ABBE( var_0, var_1 )
{
    if ( !level._id_C84E[var_0]["track"].enabled )
    {
        _id_ADBF( var_0 );
        return;
    }

    level._id_C84E[var_0]["fraction"] settext( int( var_1 * 100 ) );

    foreach ( var_3 in level._id_C84E[var_0] )
        var_3.alpha = 1;
}

_id_ADBF( var_0 )
{

}

_id_D58B()
{
    if ( getdvar( "loc_warnings", 0 ) == "1" )
        return 1;

    if ( getdvarint( "debug_hud" ) )
        return 1;

    return !isdefined( level._id_C84E );
}

_id_D3F4()
{

}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{
    _ID42237::_ID3350( getentarray( "com_wall_fan_blade_rotate", "targetname" ), ::_ID13933, "slow" );
    _ID42237::_ID3350( getentarray( "com_wall_fan_blade_rotate_fast", "targetname" ), ::_ID13933, "fast" );
    var_0 = [];
    var_0["trigger_multiple_dyn_metal_detector"] = ::_ID23485;
    var_0["trigger_multiple_dyn_creaky_board"] = ::_ID9112;
    var_0["trigger_multiple_dyn_photo_copier"] = ::_ID26610;
    var_0["trigger_multiple_dyn_copier_no_light"] = ::_ID26614;
    var_0["trigger_radius_motion_light"] = ::_ID24308;
    var_0["trigger_radius_dyn_motion_dlight"] = ::_ID26042;
    var_0["trigger_multiple_dog_bark"] = ::_ID11412;
    var_0["trigger_radius_bird_startle"] = ::_ID5250;
    var_0["trigger_multiple_dyn_motion_light"] = ::_ID24308;
    var_0["trigger_multiple_dyn_door"] = ::_ID38770;
    _ID27484();

    foreach ( var_4, var_2 in var_0 )
    {
        var_3 = getentarray( var_4, "classname" );
        _ID42237::_ID3350( var_3, ::_ID38943 );
        _ID42237::_ID3350( var_3, var_2 );
    }

    _ID42237::_ID3350( getentarray( "vending_machine", "targetname" ), ::_ID40327 );
    _ID42237::_ID3350( getentarray( "toggle", "targetname" ), ::_ID39917 );
    level thread _ID25803();
    var_5 = getent( "civilian_jet_origin", "targetname" );

    if ( isdefined( var_5 ) )
        var_5 thread _ID7636();
}

_ID25803()
{
    for (;;)
    {
        level waittill( "connecting",  var_0  );
        var_0 thread _ID24418();
    }
}

_ID27484()
{
    if ( _ID42237::_ID20913() )
    {
        foreach ( var_1 in level._ID805 )
        {
            var_1._ID37906 = [];
            var_1 thread _ID24418();
        }
    }
}

_ID2288()
{
    self._ID37906 = [];
    thread _ID24418();
}

_ID7636()
{
    level endon( "game_ended" );
    _ID21050();
    level waittill( "prematch_over" );

    for (;;)
    {
        thread _ID21061();
        self waittill( "start_flyby" );
        thread _ID21048();
        self waittill( "flyby_done" );
        _ID21055();
    }
}

_ID21050()
{
    self._ID21053 = getentarray( self.target, "targetname" );
    self._ID21049 = getent( "civilian_jet_flyto", "targetname" );
    self._ID13013 = getentarray( "engine_fx", "targetname" );
    self._ID14498 = getentarray( "flash_fx", "targetname" );
    self._ID21041 = loadfx( "fx/fire/jet_afterburner" );
    self._ID21045 = loadfx( "fx/misc/aircraft_light_wingtip_red" );
    self._ID21044 = loadfx( "fx/misc/aircraft_light_wingtip_green" );
    self._ID21043 = loadfx( "fx/misc/aircraft_light_red_blink" );
    level._ID7699 = undefined;
    var_0 = _ID42407::_ID49965( vectornormalize( self.origin - self._ID21049.origin ), 20000 );
    self._ID21049.origin = self._ID21049.origin - var_0;
    self.origin = self.origin + var_0;

    foreach ( var_2 in self._ID21053 )
    {
        var_2.origin = var_2.origin + var_0;
        var_2._ID25524 = var_2.origin;
        var_2 hide();
    }

    foreach ( var_5 in self._ID13013 )
        var_5.origin = var_5.origin + var_0;

    foreach ( var_8 in self._ID14498 )
        var_8.origin = var_8.origin + var_0;

    var_10 = self.origin;
    var_11 = self._ID21049.origin;
    self._ID21047 = var_11 - var_10;
    var_12 = 2000;
    var_13 = abs( distance( var_10, var_11 ) );
    self._ID21046 = var_13 / var_12;
}

_ID21055()
{
    foreach ( var_1 in self._ID21053 )
    {
        var_1.origin = var_1._ID25524;
        var_1 hide();
    }
}

_ID21061()
{
    level endon( "game_ended" );
    var_0 = _ID16685();
    var_1 = max( 10, var_0 );
    var_1 = min( var_1, 100 );

    if ( getdvar( "jet_flyby_timer" ) != "" )
        level._ID7700 = 5 + getdvarint( "jet_flyby_timer" );
    else
        level._ID7700 = ( 0.25 + randomfloatrange( 0.3, 0.7 ) ) * 60 * var_1;

    wait(level._ID7700);

    while ( isdefined( level._ID2463 ) || isdefined( level._ID1748 ) || isdefined( level._ID7499 ) || isdefined( level._ID29483 ) )
        wait 0.05;

    self notify( "start_flyby" );
    level._ID7699 = 1;
    self waittill( "flyby_done" );
    level._ID7699 = undefined;
}

_ID16685()
{
    if ( _ID42237::_ID20913() )
        return 10.0;

    if ( isdefined( game["status"] ) && game["status"] == "overtime" )
        return 1.0;
    else
        return _ID16737( "timelimit" );
}

_ID16737( var_0 )
{
    var_0 = "scr_" + level._ID435 + "_" + var_0;
    return level._ID41495[var_0]._ID40022;
}

_ID21048()
{
    foreach ( var_1 in self._ID21053 )
        var_1 show();

    var_3 = [];
    var_4 = [];

    foreach ( var_6 in self._ID13013 )
    {
        var_7 = spawn( "script_model", var_6.origin );
        var_7 setmodel( "tag_origin" );
        var_7.angles = var_6.angles;
        var_3[var_3.size] = var_7;
    }

    foreach ( var_10 in self._ID14498 )
    {
        var_11 = spawn( "script_model", var_10.origin );
        var_11 setmodel( "tag_origin" );
        var_11.color = var_10.script_noteworthy;
        var_11.angles = var_10.angles;
        var_4[var_4.size] = var_11;
    }

    thread _ID21054( self._ID21053[0], level._ID22921 );
    wait 0.05;

    foreach ( var_7 in var_3 )
        playfxontag( self._ID21041, var_7, "tag_origin" );

    foreach ( var_11 in var_4 )
    {
        if ( isdefined( var_11.color ) && var_11.color == "blink" )
        {
            playfxontag( self._ID21043, var_11, "tag_origin" );
            continue;
        }

        if ( isdefined( var_11.color ) && var_11.color == "red" )
        {
            playfxontag( self._ID21045, var_11, "tag_origin" );
            continue;
        }

        playfxontag( self._ID21044, var_11, "tag_origin" );
    }

    foreach ( var_1 in self._ID21053 )
        var_1 moveto( var_1.origin + self._ID21047, self._ID21046 );

    foreach ( var_7 in var_3 )
        var_7 moveto( var_7.origin + self._ID21047, self._ID21046 );

    foreach ( var_11 in var_4 )
        var_11 moveto( var_11.origin + self._ID21047, self._ID21046 );

    wait(self._ID21046 + 1);

    foreach ( var_7 in var_3 )
        var_7 delete();

    foreach ( var_11 in var_4 )
        var_11 delete();

    self notify( "flyby_done" );
}

_ID21054( var_0, var_1 )
{
    var_0 thread _ID28124( "veh_mig29_dist_loop" );

    while ( !_ID37332( var_0, var_1 ) )
        wait 0.05;

    var_0 thread _ID28124( "veh_mig29_close_loop" );

    while ( _ID37333( var_0, var_1 ) )
        wait 0.05;

    wait 0.5;
    var_0 thread _ID28123( "veh_mig29_sonic_boom" );

    while ( _ID37332( var_0, var_1 ) )
        wait 0.05;

    var_0 notify( "stop soundveh_mig29_close_loop" );
    self waittill( "flyby_done" );
    var_0 notify( "stop soundveh_mig29_dist_loop" );
}

_ID28123( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", ( 0, 0, 1 ) );
    var_3 hide();

    if ( !isdefined( var_1 ) )
        var_1 = self.origin;

    var_3.origin = var_1;

    if ( isdefined( var_2 ) && var_2 )
        var_3 playsoundasmaster( var_0 );
    else
        var_3 playsound( var_0 );

    wait 10.0;
    var_3 delete();
}

_ID28124( var_0, var_1 )
{
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2 hide();
    var_2 endon( "death" );
    thread _ID42237::_ID10280( var_2 );

    if ( isdefined( var_1 ) )
    {
        var_2.origin = self.origin + var_1;
        var_2.angles = self.angles;
        var_2 linkto( self );
    }
    else
    {
        var_2.origin = self.origin;
        var_2.angles = self.angles;
        var_2 linkto( self );
    }

    var_2 playloopsound( var_0 );
    self waittill( "stop sound" + var_0 );
    var_2 stopsounds( var_0 );
    var_2 delete();
}

_ID37333( var_0, var_1 )
{
    var_2 = anglestoforward( _ID42237::_ID14539( var_0.angles ) );
    var_3 = vectornormalize( _ID42237::_ID14540( var_1 ) - var_0.origin );
    var_4 = vectordot( var_2, var_3 );

    if ( var_4 > 0 )
        return 1;
    else
        return 0;
}

_ID37332( var_0, var_1 )
{
    var_2 = _ID37333( var_0, var_1 );

    if ( var_2 )
        var_3 = 1;
    else
        var_3 = -1;

    var_4 = _ID42237::_ID14540( var_0.origin );
    var_5 = var_4 + _ID42407::_ID49965( anglestoforward( _ID42237::_ID14539( var_0.angles ) ), var_3 * 100000 );
    var_6 = pointonsegmentnearesttopoint( var_4, var_5, var_1 );
    var_7 = distance( var_4, var_6 );

    if ( var_7 < 3000 )
        return 1;
    else
        return 0;
}

_ID40327()
{
    level endon( "game_ended" );
    self endon( "death" );
    self setcursorhint( "HINT_ACTIVATE" );
    self._ID40650 = getent( self.target, "targetname" );
    var_0 = getent( self._ID40650.target, "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    self._ID40647 = getent( var_1.target, "targetname" );
    self._ID40648 = getent( self._ID40647.target, "targetname" );

    if ( isdefined( self._ID40648.target ) )
        self._ID40641 = getent( self._ID40648.target, "targetname" );

    self._ID40650 setcandamage( 1 );
    self._ID40651 = self._ID40650.model;
    self._ID40638 = self._ID40650.script_noteworthy;
    self._ID40657 = var_0.model;
    self._ID40659 = var_0.origin;
    self._ID40658 = var_0.angles;
    self._ID40661 = var_1.origin;
    self._ID40660 = var_1.angles;
    precachemodel( self._ID40638 );
    var_0 delete();
    var_1 delete();
    self._ID34908 = [];
    self._ID34911 = 12;
    self._ID34912 = undefined;
    self._ID19111 = 400;
    thread _ID40328( self._ID40650 );
    self playloopsound( "vending_machine_hum" );

    for (;;)
    {
        self waittill( "trigger",  var_2  );
        self playsound( "vending_machine_button_press" );

        if ( !self._ID34911 )
            continue;

        if ( isdefined( self._ID34912 ) )
            _ID34910();

        _ID34909( _ID35159() );
        wait 0.05;
    }
}

_ID40328( var_0 )
{
    level endon( "game_ended" );
    var_1 = "mod_grenade mod_projectile mod_explosive mod_grenade_splash mod_projectile_splash splash";
    var_2 = loadfx( "fx/explosions/tv_explosion" );

    for (;;)
    {
        var_0 waittill( "damage",  var_3, var_4, var_5, var_6, var_7  );

        if ( isdefined( var_7 ) )
        {
            if ( issubstr( var_1, tolower( var_7 ) ) )
                var_3 *= 3;

            self._ID19111 = self._ID19111 - var_3;

            if ( self._ID19111 > 0 )
                continue;

            thread _ID42237::_ID27077( "h2_explosion_vending_machine_sparks", self.origin );
            self notify( "death" );
            self.origin = self.origin + ( 0, 0, 10000 );

            if ( !isdefined( self._ID40641 ) )
                var_8 = self._ID40650.origin + ( 37, -31, 52 );
            else
                var_8 = self._ID40641.origin;

            playfx( var_2, var_8 );
            self._ID40650 setmodel( self._ID40638 );

            while ( self._ID34911 > 0 )
            {
                if ( isdefined( self._ID34912 ) )
                    _ID34910();

                _ID34909( _ID35159() );
                wait 0.05;
            }

            self stopsounds( "vending_machine_hum" );
            return;
        }
    }
}

_ID35159()
{
    var_0 = spawn( "script_model", self._ID40659 );
    var_0 setmodel( self._ID40657 );
    var_0.origin = self._ID40659;
    var_0.angles = self._ID40658;
    return var_0;
}

_ID34909( var_0 )
{
    var_0 moveto( self._ID40661, 0.1 );
    var_0 playsound( "vending_machine_soda_drop" );
    wait 0.1;
    self._ID34912 = var_0;
    self._ID34911--;
}

_ID34910()
{
    self endon( "death" );

    if ( isdefined( self._ID34912._ID12325 ) && self._ID34912._ID12325 == 1 )
        return;

    var_0 = 1150.0;
    var_1 = var_0 * 0.75 * 1.15;
    var_2 = vectornormalize( self._ID40648.origin - self._ID40647.origin );
    var_3 = _ID42407::_ID49965( var_2, randomfloatrange( var_1, var_0 ) );
    var_4 = ( var_3[0] * randomfloatrange( 1, 1.15 ), var_3[1] * randomfloatrange( 1, 1.15 ), var_3[2] * randomfloatrange( 1, 1.15 ) );
    self._ID34912 physicslaunchclient( self._ID40647.origin, var_4 );
    self._ID34912._ID12325 = 1;
}

_ID14890()
{
    level endon( "game_ended" );
    var_0 = "briefcase_bomb_mp";
    precacheitem( var_0 );

    for (;;)
    {
        self waittill( "trigger_enter",  var_1  );

        if ( !var_1 hasweapon( var_0 ) )
        {
            var_1 playsound( "freefall_death" );
            var_1 giveweapon( var_0 );
            var_1 setweaponammostock( var_0, 0 );
            var_1 setweaponammoclip( var_0, 0 );
            var_1 switchtoweapon( var_0 );
        }
    }
}

_ID23485()
{
    level endon( "game_ended" );
    var_0 = getent( self.target, "targetname" );
    var_0 enablegrenadetouchdamage();
    var_1 = getent( var_0.target, "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    var_3 = getent( var_2.target, "targetname" );
    var_4 = getent( var_3.target, "targetname" );
    var_5 = [];
    var_6 = min( var_1.origin[0], var_2.origin[0] );
    var_5[0] = var_6;
    var_7 = max( var_1.origin[0], var_2.origin[0] );
    var_5[1] = var_7;
    var_8 = min( var_1.origin[1], var_2.origin[1] );
    var_5[2] = var_8;
    var_9 = max( var_1.origin[1], var_2.origin[1] );
    var_5[3] = var_9;
    var_10 = min( var_1.origin[2], var_2.origin[2] );
    var_5[4] = var_10;
    var_11 = max( var_1.origin[2], var_2.origin[2] );
    var_5[5] = var_11;
    var_1 delete();
    var_2 delete();

    if ( !_ID42237::_ID20913() )
        self._ID2486 = 7;
    else
        self._ID2486 = 2;

    self._ID2490 = 0;
    self._ID2482 = 0;
    self._ID37859 = 0;
    thread _ID23486( var_0 );
    thread _ID23487();
    thread _ID23488( var_5, "weapon_claymore", "weapon_c4" );
    var_12 = [];

    if ( isdefined( var_4.target ) )
    {
        var_12 = _ID42237::_ID16640( var_4.target, "targetname" );

        foreach ( var_14 in var_12 )
            var_14._ID50045 = loadfx( var_14._ID31220 );
    }
    else
    {
        var_16 = loadfx( "fx/props/metal_detector_light" );
        var_17 = spawnstruct();
        var_17.origin = ( var_3.origin[0], var_3.origin[1], var_11 );
        var_17._ID50045 = var_16;
        var_18 = spawnstruct();
        var_18.origin = ( var_4.origin[0], var_4.origin[1], var_11 );
        var_18._ID50045 = var_16;
        var_12[0] = var_17;
        var_12[1] = var_18;
    }

    if ( !isdefined( level.alarm_to_play_index ) )
        level.alarm_to_play_index = 0;

    level.alarm_to_play_index = 1 + level.alarm_to_play_index % 3;
    var_19 = "alarm_metal_detector_" + level.alarm_to_play_index;

    for (;;)
    {
        _ID42237::_ID41068( "dmg_triggered", "touch_triggered", "weapon_triggered" );
        thread _ID51854( var_19, var_12 );
    }
}

_ID51854( var_0, var_1 )
{
    level endon( "game_ended" );

    if ( !self._ID2490 )
    {
        self._ID2490 = 1;
        thread _ID3221();

        if ( !self._ID2482 )
            self playsound( var_0 );

        foreach ( var_3 in var_1 )
        {
            if ( isdefined( var_3.angles ) )
            {
                var_4 = anglestoaxis( var_3.angles );
                playfx( var_3._ID50045, var_3.origin, var_4["forward"], var_4["up"] );
                continue;
            }

            playfx( var_3._ID50045, var_3.origin );
        }

        wait(self._ID2486);
        self._ID2490 = 0;
    }
}

_ID3221()
{
    level endon( "game_ended" );

    if ( !self._ID37859 )
        return;

    var_0 = self._ID2486 + 0.15;

    if ( self._ID37859 )
        self._ID37859--;
    else
        self._ID2482 = 1;

    var_1 = gettime();
    var_2 = 7;

    if ( _ID42237::_ID20913() )
        var_2 = 2;

    _ID41074( "dmg_triggered", "touch_triggered", "weapon_triggered", var_2 + 2 );
    var_3 = gettime() - var_1;

    if ( var_3 > var_2 * 1000 + 1150 )
    {
        self._ID2482 = 0;
        self._ID37859 = 0;
    }
}

_ID41074( var_0, var_1, var_2, var_3 )
{
    level endon( "game_ended" );
    self endon( var_0 );
    self endon( var_1 );
    self endon( var_2 );
    wait(var_3);
}

_ID23488( var_0, var_1, var_2 )
{
    level endon( "game_ended" );

    for (;;)
    {
        _ID41165();
        var_3 = getentarray( "grenade", "classname" );

        foreach ( var_5 in var_3 )
        {
            if ( isdefined( var_5.model ) && ( var_5.model == var_1 || var_5.model == var_2 ) )
            {
                if ( _ID20772( var_5, var_0 ) )
                    thread _ID41675( var_5, var_0 );
            }
        }
    }
}

_ID41165()
{
    level endon( "game_ended" );
    self endon( "dmg_triggered" );
    self waittill( "touch_triggered" );
}

_ID41675( var_0, var_1 )
{
    var_0 endon( "death" );

    while ( _ID20772( var_0, var_1 ) )
    {
        self notify( "weapon_triggered" );
        wait(self._ID2486);
    }
}

_ID20772( var_0, var_1 )
{
    var_2 = var_1[0];
    var_3 = var_1[1];
    var_4 = var_1[2];
    var_5 = var_1[3];
    var_6 = var_1[4];
    var_7 = var_1[5];
    var_8 = var_0.origin[0];
    var_9 = var_0.origin[1];
    var_10 = var_0.origin[2];

    if ( _ID20773( var_8, var_2, var_3 ) )
    {
        if ( _ID20773( var_9, var_4, var_5 ) )
        {
            if ( _ID20773( var_10, var_6, var_7 ) )
                return 1;
        }
    }

    return 0;
}

_ID20773( var_0, var_1, var_2 )
{
    if ( var_0 > var_1 && var_0 < var_2 )
        return 1;

    return 0;
}

_ID23486( var_0 )
{
    level endon( "game_ended" );

    for (;;)
    {
        var_0 waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( isdefined( var_5 ) && _ID2496( var_5 ) )
            self notify( "dmg_triggered" );
    }
}

_ID23487()
{
    level endon( "game_ended" );

    for (;;)
    {
        self waittill( "trigger_enter" );

        while ( _ID3230( self ) )
        {
            self notify( "touch_triggered" );
            wait(self._ID2486);
        }
    }
}

_ID2496( var_0 )
{
    var_1 = "mod_melee melee mod_grenade mod_projectile mod_explosive mod_impact";
    var_2 = strtok( var_1, " " );

    foreach ( var_4 in var_2 )
    {
        if ( tolower( var_4 ) == tolower( var_0 ) )
            return 1;
    }

    return 0;
}

_ID9112()
{
    level endon( "game_ended" );

    for (;;)
    {
        self waittill( "trigger_enter",  var_0  );
        var_0 thread _ID11197( self );
    }
}

_ID11197( var_0 )
{
    self endon( "disconnect" );
    self endon( "death" );
    self playsound( "step_walk_plr_woodcreak_on" );

    for (;;)
    {
        self waittill( "trigger_leave",  var_1  );

        if ( var_0 != var_1 )
            continue;

        self playsound( "step_walk_plr_woodcreak_off" );
        return;
    }
}

_ID24308()
{
    level endon( "game_ended" );
    self._ID24472 = 1;
    self._ID22369 = 0;
    var_0 = getentarray( self.target, "targetname" );
    precachemodel( "com_two_light_fixture_off" );
    precachemodel( "com_two_light_fixture_on" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID22342 = [];
        var_3 = getent( var_2.target, "targetname" );

        if ( !isdefined( var_3.target ) )
            continue;

        var_2._ID22342 = getentarray( var_3.target, "targetname" );
    }

    for (;;)
    {
        self waittill( "trigger_enter" );

        while ( _ID3230( self ) )
        {
            var_5 = 0;

            foreach ( var_7 in self._ID37904 )
            {
                if ( isdefined( var_7._ID11138 ) && var_7._ID11138 > 5.0 )
                    var_5 = 1;
            }

            if ( var_5 )
            {
                if ( !self._ID22369 )
                {
                    self._ID22369 = 1;
                    var_0[0] playsound( "switch_auto_lights_on" );

                    foreach ( var_2 in var_0 )
                    {
                        var_2 setlightintensity( 1.0 );

                        if ( isdefined( var_2._ID22342 ) )
                        {
                            foreach ( var_11 in var_2._ID22342 )
                                var_11 setmodel( "com_two_light_fixture_on" );
                        }
                    }
                }

                thread _ID24309( var_0, 10.0 );
            }

            wait 0.05;
        }
    }
}

_ID24309( var_0, var_1 )
{
    self notify( "motion_light_timeout" );
    self endon( "motion_light_timeout" );
    wait(var_1);

    foreach ( var_3 in var_0 )
    {
        var_3 setlightintensity( 0 );

        if ( isdefined( var_3._ID22342 ) )
        {
            foreach ( var_5 in var_3._ID22342 )
                var_5 setmodel( "com_two_light_fixture_off" );
        }
    }

    var_0[0] playsound( "switch_auto_lights_off" );
    self._ID22369 = 0;
}

_ID26042()
{
    if ( !isdefined( level._ID26044 ) )
        level._ID26044 = loadfx( "fx/misc/outdoor_motion_light" );

    level endon( "game_ended" );
    self._ID24472 = 1;
    self._ID22369 = 0;
    var_0 = getent( self.target, "targetname" );
    var_1 = getentarray( var_0.target, "targetname" );
    precachemodel( "com_two_light_fixture_off" );
    precachemodel( "com_two_light_fixture_on" );

    for (;;)
    {
        self waittill( "trigger_enter" );

        while ( _ID3230( self ) )
        {
            var_2 = 0;

            foreach ( var_4 in self._ID37904 )
            {
                if ( isdefined( var_4._ID11138 ) && var_4._ID11138 > 5.0 )
                    var_2 = 1;
            }

            if ( var_2 )
            {
                if ( !self._ID22369 )
                {
                    self._ID22369 = 1;
                    var_0 playsound( "switch_auto_lights_on" );
                    var_0 setmodel( "com_two_light_fixture_on" );

                    foreach ( var_7 in var_1 )
                    {
                        var_7._ID22297 = spawn( "script_model", var_7.origin );
                        var_7._ID22297 setmodel( "tag_origin" );
                        playfxontag( level._ID26044, var_7._ID22297, "tag_origin" );
                    }
                }

                thread _ID26043( var_0, var_1, 10.0 );
            }

            wait 0.05;
        }
    }
}

_ID26043( var_0, var_1, var_2 )
{
    self notify( "motion_light_timeout" );
    self endon( "motion_light_timeout" );
    wait(var_2);

    foreach ( var_4 in var_1 )
        var_4._ID22297 delete();

    var_0 playsound( "switch_auto_lights_off" );
    var_0 setmodel( "com_two_light_fixture_off" );
    self._ID22369 = 0;
}

_ID11412()
{
    level endon( "game_ended" );
    self._ID24472 = 1;
    var_0 = getent( self.target, "targetname" );

    for (;;)
    {
        self waittill( "trigger_enter",  var_1  );

        while ( _ID3230( self ) )
        {
            var_2 = 0;

            foreach ( var_4 in self._ID37904 )
            {
                if ( isdefined( var_4._ID11138 ) && var_4._ID11138 > var_2 )
                    var_2 = var_4._ID11138;
            }

            if ( var_2 > 6.0 )
            {
                var_0 playsound( "dyn_anml_dog_bark" );
                wait(randomfloatrange( 16 / var_2, 16 / var_2 + randomfloat( 1.0 ) ));
                continue;
            }

            wait 0.05;
        }
    }
}

_ID38770()
{
    var_0 = getent( self.target, "targetname" );
    self._ID11617 = var_0;
    self._ID11615 = _ID16725( vectornormalize( self getorigin() - var_0 getorigin() ) );
    var_0._ID4893 = var_0.angles[1];
    var_1 = 1.0;

    for (;;)
    {
        self waittill( "trigger_enter",  var_2  );
        var_0 thread _ID11627( var_1, _ID16239( var_2 ) );

        if ( _ID3230( self ) )
            self waittill( "trigger_empty" );

        wait 3.0;

        if ( _ID3230( self ) )
            self waittill( "trigger_empty" );

        var_0 thread _ID11616( var_1 );
    }
}

_ID11627( var_0, var_1 )
{
    if ( var_1 )
        self rotateto( ( 0, self._ID4893 + 90, 1 ), var_0, 0.1, 0.75 );
    else
        self rotateto( ( 0, self._ID4893 - 90, 1 ), var_0, 0.1, 0.75 );

    self playsound( "door_generic_house_open" );
    wait(var_0 + 0.05);
}

_ID11616( var_0 )
{
    self rotateto( ( 0, self._ID4893, 1 ), var_0 );
    self playsound( "door_generic_house_close" );
    wait(var_0 + 0.05);
}

_ID16239( var_0 )
{
    return vectordot( self._ID11615, vectornormalize( var_0.origin - self._ID11617 getorigin() ) ) > 0;
}

_ID16725( var_0 )
{
    return ( var_0[1], 0 - var_0[0], var_0[2] );
}

_ID39917()
{
    if ( self.classname != "trigger_use_touch" )
        return;

    var_0 = getentarray( self.target, "targetname" );
    self._ID22369 = 1;

    foreach ( var_2 in var_0 )
        var_2 setlightintensity( 1.5 * self._ID22369 );

    for (;;)
    {
        self waittill( "trigger" );
        self._ID22369 = !self._ID22369;

        if ( self._ID22369 )
        {
            foreach ( var_2 in var_0 )
                var_2 setlightintensity( 1.5 );

            self playsound( "switch_auto_lights_on" );
            continue;
        }

        foreach ( var_2 in var_0 )
            var_2 setlightintensity( 0 );

        self playsound( "switch_auto_lights_off" );
    }
}

_ID5250()
{

}

_ID26612( var_0 )
{
    self._ID8657 = _ID15904( var_0 );

    if ( !isdefined( self._ID8657.target ) )
    {
        self._ID8657 = undefined;
        return;
    }

    _ID48125();
    self._ID8657._ID3189 = "photocopier";
    self._ID8657 _ID42259::_ID32556();
    var_1 = getent( self._ID8657.target, "targetname" );
    var_2 = getent( var_1.target, "targetname" );
    var_2._ID20129 = var_2 getlightintensity();
    var_2 setlightintensity( 0 );
    var_0._ID8663 = var_1;
    var_0._ID35908 = var_1.origin;
    var_0._ID594 = var_2;
    var_3 = self._ID8657.angles + ( 0, 90, 0 );
    var_4 = anglestoforward( var_3 );
    var_0._ID12609 = var_0._ID35908 + _ID42407::_ID49965( var_4, 30 );
}

_ID15904( var_0 )
{
    if ( !isdefined( var_0.target ) )
    {
        var_1 = getentarray( "destructible_toy", "targetname" );
        var_2 = var_1[0];

        foreach ( var_4 in var_1 )
        {
            if ( isdefined( var_4._ID279 ) && var_4._ID279 == "toy_copier" )
            {
                if ( distance( var_0.origin, var_2.origin ) > distance( var_0.origin, var_4.origin ) )
                    var_2 = var_4;
            }
        }
    }
    else
    {
        var_2 = getent( var_0.target, "targetname" );
        var_2 setcandamage( 1 );
    }

    return var_2;
}

_ID41085()
{
    self._ID8657 endon( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    self waittill( "trigger_enter" );
}

_ID26610()
{
    level endon( "game_ended" );
    _ID26612( self );

    if ( !isdefined( self._ID8657 ) )
        return;

    self._ID8657 endon( "FX_State_Change0" );
    thread _ID26615();

    for (;;)
    {
        _ID41085();
        self._ID8657 thread _ID42259::_ID3111( self._ID8657, "photocopier_copying" );
        self playsound( "mach_copier_run" );

        if ( isdefined( self._ID8663 ) )
        {
            _ID29738( self );
            thread _ID26611();
            thread _ID26613();
        }

        wait 6;
    }
}

_ID26614()
{
    level endon( "game_ended" );
    self._ID8657 = _ID15904( self );
    self._ID8657 endon( "FX_State_Change0" );

    for (;;)
    {
        _ID41085();
        self playsound( "mach_copier_run" );
        wait 3;
    }
}

_ID29738( var_0 )
{
    var_0._ID8663 moveto( var_0._ID35908, 0.2 );
    var_0._ID594 setlightintensity( 0 );
}

_ID26611()
{
    self._ID8657 notify( "bar_goes" );
    self._ID8657 endon( "bar_goes" );
    self._ID8657 endon( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    var_0 = self._ID8663;
    wait 2.0;
    var_0 moveto( self._ID12609, 1.6 );
    wait 1.8;
    var_0 moveto( self._ID35908, 1.6 );
    wait 1.6;
    var_1 = self._ID594;
    var_2 = 0.2;
    var_3 = var_2 / 0.05;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        var_5 = var_4 * 0.05;
        var_5 /= var_2;
        var_5 = 1 - var_5 * var_1._ID20129;

        if ( var_5 > 0 )
            var_1 setlightintensity( var_5 );

        wait 0.05;
    }

    var_1 setlightintensity( 0 );
}

_ID26613()
{
    self._ID8657 notify( "light_on" );
    self._ID8657 endon( "light_on" );
    self._ID8657 endon( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    var_0 = self._ID594;
    var_1 = 0.2;
    var_2 = var_1 / 0.05;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        var_4 = var_3 * 750;
        var_4 /= var_1;
        var_0 setlightintensity( var_4 * var_0._ID20129 );
        wait 0.05;
    }

    _ID26616( var_0 );
}

_ID26615()
{
    self._ID8657 waittill( "FX_State_Change0" );
    self._ID8657 endon( "death" );
    _ID29738( self );
}

_ID26616( var_0 )
{
    var_0 setlightintensity( 3000 );
    wait 0.05;
    var_0 setlightintensity( 0 );
    wait 0.1;
    var_0 setlightintensity( 3000 );
    wait 0.05;
    var_0 setlightintensity( 0 );
    wait 0.1;
    var_0 setlightintensity( 3000 );
}

_ID13933( var_0 )
{
    var_1 = 0;
    var_2 = 20000;
    var_3 = 1.0;

    if ( isdefined( self.speed ) )
        var_3 = self.speed;

    if ( var_0 == "slow" )
        var_1 = randomfloatrange( 100 * var_3, 360 * var_3 );
    else if ( var_0 == "fast" )
        var_1 = randomfloatrange( 720 * var_3, 1000 * var_3 );
    else
    {

    }

    wait(randomfloatrange( 0, 1 ));
    var_4 = self.angles;
    var_5 = _ID42407::_ID49965( anglestoright( self.angles ), 100 );
    var_5 = vectornormalize( var_5 );

    for (;;)
    {
        var_6 = abs( vectordot( var_5, ( 1, 0, 0 ) ) );
        var_7 = abs( vectordot( var_5, ( 0, 1, 0 ) ) );
        var_8 = abs( vectordot( var_5, ( 0, 0, 1 ) ) );

        if ( var_6 > 0.9 )
            self rotatevelocity( ( var_1, 0, 0 ), var_2 );
        else if ( var_7 > 0.9 )
            self rotatevelocity( ( var_1, 0, 0 ), var_2 );
        else if ( var_8 > 0.9 )
            self rotatevelocity( ( 0, var_1, 0 ), var_2 );
        else
            self rotatevelocity( ( 0, var_1, 0 ), var_2 );

        wait(var_2);
    }
}

_ID38943( var_0, var_1 )
{
    level endon( "game_ended" );
    self._ID13087 = self getentitynumber();

    for (;;)
    {
        self waittill( "trigger",  var_2  );

        if ( !isplayernumber( var_2 ) && !isdefined( var_2._ID14234 ) )
            continue;

        if ( !isalive( var_2 ) )
            continue;

        if ( !isdefined( var_2._ID37906[self._ID13087] ) )
            var_2 thread _ID28020( self, var_0, var_1 );
    }
}

_ID28020( var_0, var_1, var_2 )
{
    if ( !isplayernumber( self ) )
        self endon( "death" );

    if ( !_ID42237::_ID20913() )
        var_3 = self._ID17491;
    else
        var_3 = "player" + gettime();

    var_0._ID37904[var_3] = self;

    if ( isdefined( var_0._ID24472 ) )
        self._ID24473++;

    var_0 notify( "trigger_enter",  self  );
    self notify( "trigger_enter",  var_0  );

    if ( isdefined( var_1 ) )
        self thread [[ var_1 ]]( var_0 );

    self._ID37906[var_0._ID13087] = var_0;

    while ( isalive( self ) && self istouching( var_0 ) && ( _ID42237::_ID20913() || !level._ID15325 ) )
        wait 0.05;

    if ( isdefined( self ) )
    {
        self._ID37906[var_0._ID13087] = undefined;

        if ( isdefined( var_0._ID24472 ) )
            self._ID24473--;

        self notify( "trigger_leave",  var_0  );

        if ( isdefined( var_2 ) )
            self thread [[ var_2 ]]( var_0 );
    }

    if ( !_ID42237::_ID20913() && level._ID15325 )
        return;

    var_0._ID37904[var_3] = undefined;
    var_0 notify( "trigger_leave",  self  );

    if ( !_ID3230( var_0 ) )
        var_0 notify( "trigger_empty" );
}

_ID24418()
{
    self endon( "disconnect" );

    if ( !isplayernumber( self ) )
        self endon( "death" );

    self._ID24473 = 0;
    self._ID11138 = 0;

    for (;;)
    {
        self waittill( "trigger_enter" );
        var_0 = self.origin;

        while ( self._ID24473 )
        {
            self._ID11138 = distance( var_0, self.origin );
            var_0 = self.origin;
            wait 0.05;
        }

        self._ID11138 = 0;
    }
}

_ID3230( var_0 )
{
    return var_0._ID37904.size;
}

_ID28019( var_0, var_1 )
{
    return isdefined( var_0._ID37906[var_1._ID13087] );
}
#using_animtree("script_model");

_ID48125()
{
    level._ID30900["photocopier"] = #animtree;
    level._ID30895["photocopier"]["photocopier_copying"] = %h2_com_photocopier_animated;
}

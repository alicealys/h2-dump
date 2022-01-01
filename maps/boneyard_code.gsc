// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID47015()
{
    _ID42237::_ID14413( "wait_for_player" );
    var_0 = spawn( "trigger_radius", self gettagorigin( "tag_passenger" ), 0, 72, 64 );
    var_0 enablelinkto();
    var_0 linkto( self, "tag_passenger", ( 0, -48, -48 ), ( 0, 0, 0 ) );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "uaz_mounted" );
    var_0 delete();
}

_ID52997()
{
    level._ID794 endon( "death" );
    level endon( "c130_takeoff_missed" );
    level endon( "uaz_park_crash" );
    _ID42237::_ID14413( "uaz_mounted" );
    level._ID794 enableinvulnerability();
    level._ID794 allowprone( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowstand( 1 );
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 = _ID42407::_ID35028( "player_rig" );
    level._ID794._ID29975 hide();
    level._ID794._ID29975 linkto( self, "tag_body" );
    thread _ID42259::_ID3111( level._ID794._ID29975, "boneyard_uaz_mount", "tag_body" );
    thread _ID53058();
    level._ID794 playerlinktoblend( level._ID794._ID29975, "tag_player", 0.5 );
    wait 0.5;
    level._ID794._ID29975 show();
    level._ID794 playerlinktodelta( level._ID794._ID29975, "tag_player", 1, 10, 10, 35, 20, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    self waittill( "boneyard_uaz_mount" );
    level._ID794 playerlinktodelta( level._ID794._ID29975, "tag_player", 0.75, 180, 180, 75, 25, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    level._ID794 disableinvulnerability();
    thread _ID44722();
    level._ID794._ID29975 hide();
    _ID42407::_ID12569( 1 );
    childthread _ID52667();
    level._ID794 lerpviewangleclamp( 0.5, 0.5, 0, 180, 180, 75, 35 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    _ID42237::_ID14413( "uaz_player_control" );
    _ID42237::_ID14402( "uaz_player_in_control" );
    level._ID28543 _ID42407::_ID36519();
    level._ID794 lerpviewangleclamp( 0.5, 0.5, 0, 15, 15, 75, 5 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    level._ID794._ID29975 setmodel( "h2_viewbody_sniper_uaz" );
    wait 0.5;
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 _ID42237::_ID10192( 0.2, ::show );
    _ID42259::_ID3111( level._ID794._ID29975, "grab_wheel", "tag_body" );
    _ID42237::_ID14402( "lighting_do_uaz_control_dof" );
    thread _ID48688();
    _ID42237::_ID14413( "uaz_park" );
    wait 0.25;
    self playsound( "scn_bone_uaz_hits_ramp" );
    earthquake( 0.5, 2, level._ID794._ID740, 1024 );
    thread _ID54584();
}

_ID44722()
{
    level endon( "uaz_player_control" );
    var_0 = 0;

    for (;;)
    {
        var_1 = anglestoforward( level._ID794._ID65 );
        var_2 = anglestoforward( self._ID65 );
        var_3 = anglestoright( self._ID65 );
        var_4 = vectordot( var_1, var_2 );
        var_5 = vectordot( var_1, var_3 );
        var_6 = _ID42237::_ID37527( var_5 >= 0, -0.4, 0.65 );

        if ( var_4 < var_6 )
        {
            if ( !var_0 )
            {
                _ID42259::_ID3111( level._ID794._ID29975, "boneyard_uaz_stand", "tag_body" );
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID42259::_ID3111( level._ID794._ID29975, "boneyard_uaz_sit", "tag_body" );
            var_0 = 0;
        }

        if ( var_4 < 0 )
            level._ID794 _meth_85a8( "h2_boneyard_player_death_back", 1 );
        else
            level._ID794 _meth_85a8( "h2_boneyard_player_death_front", 1 );

        wait 0.05;
    }
}

_ID48688()
{
    level endon( "uaz_stop_player_control" );
    level endon( "uaz_park" );
    level endon( "uaz_park_crash" );
    self notify( "newpath" );
    level._ID794 setstance( "stand" );
    level._ID794 allowprone( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowstand( 1 );
    _ID42407::_ID12569( 0 );
    thread _ID50222();
    var_0 = 200;
    var_1 = vectortoangles( level._ID44077._ID740 - self._ID740 )[1];
    var_2 = self._ID65[1];
    var_3 = var_1 - var_2;
    var_4 = tan( var_3 ) * var_0;
    thread _ID43217();
    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_4 = 0;
    var_6 = 5;
    var_7 = 3;
    var_8 = 544;
    var_9 = gettime();
    var_10 = 1.5;
    var_10 *= 1000;
    var_11 = 2.0;
    var_11 *= 1000;
    var_12 = 0.78;
    var_13 = 0.78;
    var_14 = 50;
    var_15 = 95;
    var_16 = 8.0;
    var_17 = ( var_15 - var_14 ) / var_16 * 20;
    var_18 = var_17 * 0.5;
    var_17 *= 4;
    var_19 = var_18;

    for (;;)
    {
        var_20 = level._ID794 getnormalizedmovement()[1];
        var_20 *= -1;
        var_4 += var_20 * var_6;
        var_4 = clamp( var_4, var_7 * -1, var_7 );
        var_21 = vectortoangles( ( 0, 100, 0 ) );
        var_22 = anglestoforward( var_21 );
        var_23 = anglestoforward( self._ID65 );
        var_24 = vectordot( var_23, var_22 );
        var_25 = anglestoright( self._ID65 );

        if ( vectordot( var_25, var_22 ) > 0 )
        {
            if ( var_24 < var_12 )
                var_4 = var_7 * -1;
        }
        else if ( var_24 < var_13 )
            var_4 = var_7;

        var_5._ID65 = ( 0, self._ID65[1], 0 );
        var_5 addyaw( var_4 );
        var_26 = anglestoforward( var_5._ID65 );
        var_27 = self._ID740 + var_26 * var_0;

        if ( self._ID740[0] < level._ID44077._ID740[0] - 360 )
            var_27 = level._ID44077._ID46195._ID740;

        if ( _ID42237::_ID14385( "player_loses_control_of_uaz" ) )
        {
            var_28 = gettime() - level._ID46591;
            var_28 /= var_11;
            var_28 = clamp( var_28, 0, 1 );
            var_27 = level._ID44077._ID46195._ID740 * var_28 + var_27 * ( 1 - var_28 );
        }
        else
        {
            var_29 = vectortoangles( level._ID44077._ID740 + ( var_8, 0, 0 ) - self._ID740 );
            var_30 = anglestoforward( var_29 );
            var_31 = self._ID740 + var_30 * var_0;
            var_28 = gettime() - var_9;
            var_28 /= var_10;
            var_28 = clamp( var_28, 0, 1 );
            var_27 = var_27 * var_28 + var_31 * ( 1 - var_28 );
        }

        if ( var_14 >= 60 )
            var_19 = var_17;

        var_14 += var_19;
        var_14 = clamp( var_14, 0, var_15 );
        self vehicledriveto( var_27, var_14 );
        wait 0.05;
    }
}

_ID43217()
{
    self endon( "death" );
    self endon( "dying" );
    self vehphys_enablecrashing();
    wait 2;
    self vehphys_disablecrashing();

    for (;;)
    {
        if ( abs( level._ID48653._ID740[0] - level._ID44077._ID740[0] ) > 450 )
            self vehphys_enablecrashing();
        else
            self vehphys_disablecrashing();

        wait 0.05;
    }
}

_ID50222()
{
    level endon( "uaz_park" );
    level endon( "uaz_park_crash" );
    var_0 = 0;

    for (;;)
    {
        var_1 = level._ID794 getnormalizedmovement()[1] * -1;
        var_1 += self vehicle_getsteering() * 0.25;
        var_1 = clamp( var_1, -1, 1 );
        var_0 += var_1 * 0.1;

        if ( abs( var_0 ) > abs( var_1 ) )
            var_0 = var_1;

        var_2 = abs( var_0 );
        level._ID794._ID29975 setanim( level._ID30895["player_rig"]["steer_straight"], 1 - var_2, 0.1, 1 );
        level._ID48653 setanim( level._ID30895["generic"]["steer_straight"], 1 - var_2 / 2, 0.1, 1 );
        level._ID48653 clearanim( level._ID30895["generic"]["old_steering"], 0 );

        if ( var_0 < 0 )
        {
            level._ID794._ID29975 setanim( level._ID30895["player_rig"]["steer_right"], var_2, 0.1, 1 );
            level._ID794._ID29975 setanim( level._ID30895["player_rig"]["steer_left"], 0, 0.1, 1 );
            level._ID48653 setanim( level._ID30895["generic"]["steer_right"], var_2 / 2, 0.1, 1 );
            level._ID48653 setanim( level._ID30895["generic"]["steer_left"], 0, 0.1, 1 );
        }
        else
        {
            level._ID794._ID29975 setanim( level._ID30895["player_rig"]["steer_right"], 0, 0.1, 1 );
            level._ID794._ID29975 setanim( level._ID30895["player_rig"]["steer_left"], var_2, 0.1, 1 );
            level._ID48653 setanim( level._ID30895["generic"]["steer_right"], 0, 0.1, 1 );
            level._ID48653 setanim( level._ID30895["generic"]["steer_left"], var_2 / 2, 0.1, 1 );
        }

        wait 0.05;
    }
}

_ID47050()
{
    self endon( "death" );

    for (;;)
    {
        var_0 = getaiarray( "axis" );

        if ( var_0.size == 0 )
            break;

        var_0 = _ID42237::_ID3320( var_0 );
        var_1 = randomintrange( 5, 15 );
        var_2 = var_0[0] geteye();

        for ( var_3 = 0; var_3 < var_1; var_3++ )
        {
            if ( isalive( var_0[0] ) )
                var_2 = var_0[0] geteye();

            magicbullet( self._ID1302, level._ID28543 geteye() + ( 0, 0, 16 ), var_2 );
            wait 0.1;
        }

        wait(randomfloatrange( 1.5, 3 ));
    }
}
#using_animtree("vehicles");

ride_uaz_vehicle()
{
    var_0 = _ID42412::_ID16125();
    var_1 = level._ID30895["generic"]["jeep_ride_vehicle"];
    var_0 setanim( var_1, 0.01, 0.0, 1.0 );
    var_0 waittillmatch( "uaz_door_anim",  "end"  );
    var_0 setanim( var_1, 1.0, 0.2, 1.0 );
    var_0 clearanim( %uaz_driver, 0 );
}

hide_uaz_windshield()
{
    self hidepart( "tag_glass_attach" );
    self hidepart( "tag_glass_animate_01" );
}

_ID53058()
{
    var_0 = _ID42412::_ID16125();
    var_0 setflaggedanim( "uaz_door_anim", level._ID30895["generic"]["boneyard_UAZ_door"], 1, 0.2, 1 );
    var_0 waittillmatch( "uaz_door_anim",  "end"  );
    var_0 setanim( level._ID30895["generic"]["boneyard_UAZ_door"], 0.0, 0.2, 1.0 );
    var_0 hide_uaz_windshield();
}

_ID54584()
{
    var_0 = getent( "uaz_park", "script_noteworthy" );
    var_0 setmodel( "tag_origin" );
    var_1 = var_0 _ID42237::_ID35164();
    var_1 linkto( var_0, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_2 = anglestoforward( var_0._ID65 );
    var_3 = self._ID740 + var_2 * 500;
    self vehicledriveto( var_3, 60 );
    self._ID29965 = _ID42237::_ID3293( self._ID29965, level._ID44469 );
    var_4 = _ID42411::_ID40283();
    var_4 hidepart( "tag_glass_front_d" );
    var_4 hidepart( "tag_mirror_left" );
    var_4 hidepart( "tag_mirror_right" );
    var_4 hide_uaz_windshield();
    self._ID43785 = var_4;
    level._ID794._ID29975 linkto( var_4, "tag_body" );
    var_4 dontinterpolate();
    level._ID794 dontinterpolate();
    level._ID794._ID29975 dontinterpolate();
    var_4 linkto( var_1, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_4 animscripted( "uaz_parked", var_1._ID740, var_1._ID65, level._ID30895["generic"]["boneyard_jeep_evac"] );
    thread _ID44174();
    _ID42475::_ID34575( "aud_start_evac_sequence" );
    level._ID794._ID29975 setanimknob( level._ID30895["player_rig"]["jeep_evac"] );
    var_4 setanim( level._ID30895["generic"]["jeep_evac_vehicle"] );
    var_4 thread _ID42259::_ID3111( level._ID48653._ID11783, "jeep_evac_driver", "tag_driver" );
}

_ID44174()
{
    level._ID794 playrumblelooponentity( "artillery_rumble" );
    wait 0.5;
    level._ID794 playrumblelooponentity( "damage_heavy" );
    wait 0.2;
    level._ID794 playrumblelooponentity( "damage_light" );
    wait 0.2;
    level._ID794 playrumblelooponentity( "damage_light" );
    wait 0.2;
    level._ID794 playrumblelooponentity( "damage_light" );
}

ride_global_shake()
{
    self endon( "death" );
    var_0 = 0.0;

    for ( var_1 = 0.05; var_0 < 5.0; var_0 += var_1 )
    {
        if ( _ID42237::_ID14385( "uaz_mounted" ) )
            break;

        wait(var_1);
    }

    _ID42237::_ID14413( "uaz_mounted" );
    var_2 = _ID54167::_ID43386( "roadkill_ride" );
    var_3 = 0.8;
    var_4 = 10000;
    var_5 = level._ID794;
    var_6 = 66.5 - var_0;

    for ( var_7 = 0.0; var_7 <= var_6; var_7 += 0.35 )
    {
        if ( var_7 > 6.85 - var_0 && var_7 <= 8.5 - var_0 )
            var_8 = 0.14;
        else if ( var_7 > 8.5 - var_0 && var_7 <= 9.15 - var_0 )
            var_8 = 0.06;
        else if ( var_7 > 43.8 - var_0 && var_7 <= 44.35 - var_0 )
            var_8 = 0.22;
        else if ( var_7 > 45.5 - var_0 && var_7 <= 46.35 - var_0 )
            var_8 = 0.18;
        else if ( var_7 > 46.35 - var_0 && var_7 <= 47.35 - var_0 )
            var_8 = 0.06;
        else if ( var_7 > 47.35 - var_0 && var_7 <= 49.5 - var_0 )
            var_8 = 0.14;
        else
            var_8 = 0.1;

        var_2 _ID54167::_ID48800( var_7 ) _ID54167::_ID47198( var_8, var_3, var_5, var_4 );
    }

    var_2 _ID54167::_ID48166();
}

_ID49446()
{
    self endon( "death" );
    _ID42237::_ID3350( getvehiclenodearray( "jolt_node", "script_noteworthy" ), ::_ID53072 );
    self._ID50809 = 0.1;
    var_0 = 80;
    var_1 = [];
    var_1[0] = ( 23, 33, 64 );
    var_1[1] = ( -23, -33, 64 );

    for (;;)
    {
        var_2 = min( self._ID1276, var_0 );
        var_3 = self._ID50809 / var_0;

        if ( var_2 > 0 && self._ID50809 > 0 )
        {
            var_4 = var_2 * var_3;
            self joltbody( self._ID740 + var_1[randomint( 2 )], var_4 );
        }

        var_5 = ( var_0 - var_2 ) / 100 + 0.1;
        wait(0.2 + randomfloat( var_5 ));
    }
}

_ID53072()
{
    self waittill( "trigger",  var_0  );
    var_0._ID50809 = self._ID31396 / 1000;
}

_ID48948()
{
    var_0 = getentarray( "rumble_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID48684 );
}

_ID48684()
{
    self waittill( "trigger" );
    var_0 = "grenade_rumble";

    if ( isdefined( self._ID31422 ) )
        var_0 = self._ID31422;

    level._ID794 playrumblelooponentity( var_0 );
}

_ID50138()
{
    var_0 = getvehiclenodearray( "vehicle_event", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_ID51007 );
}

_ID51198()
{
    self waittill( "trigger" );

    if ( _ID42237::_ID14385( "ride_minigun_gunner_dead" ) && self._ID31438 == "byard_pri_thedrivers" )
        return;

    level._ID28543 _ID42407::_ID10805( self._ID31438 );
}

_ID51007()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        var_0 notify( "event",  self._ID31388  );

        if ( isdefined( self._ID31508 ) )
            var_0 _ID42411::_ID40066( self._ID31508 );
    }
}

_ID44514()
{
    self endon( "death" );
    var_0 = self;

    for (;;)
    {
        self waittill( "event",  var_1  );

        if ( !isdefined( var_1 ) )
            continue;

        switch ( var_1 )
        {
            case "enable_crashing":
                var_0 vehphys_enablecrashing();
                continue;
            case "disable_crashing":
                var_0 vehphys_disablecrashing();
                continue;
            case "allow_frontal":
                var_0 vehphys_enablecrashing();
                var_0 thread _ID53158();
                continue;
            case "end_induced_death":
                var_0 notify( "end_induced_death" );
                continue;
            case "start_induced_death":
                var_0 thread _ID46865();
                continue;
            case "frontal":
                var_0 notify( "dying" );
                var_0._ID11584 = 1;
                _ID42237::_ID3350( var_0._ID29965, ::_ID47592, var_0 );
                var_2 = _ID52365( ( 0, 0, 50 ), var_0._ID65 );
                var_0 vehphys_launch( var_2, 0 );
                wait(randomfloatrange( 0, 0.2 ));
                var_0 _ID42411::_ID16987();
                var_0 _ID42411::_ID14749();
                continue;
            case "crash":
                var_0 notify( "dying" );
                var_0._ID11584 = 1;

                if ( issubstr( var_0._ID170, "pickup" ) )
                {
                    _ID42237::_ID3350( var_0._ID29965, ::_ID46410, var_0 );
                    var_0 thread _ID51325();
                    var_0 thread _ID42407::_ID27079( "scn_boneyard_pickup_crashing" );
                }
                else
                    var_0 _ID42411::_ID40066( "idle" );

                var_0 vehphys_enablecrashing();
                var_2 = _ID52365( ( 64, -256, 0 ), var_0._ID65 );
                var_0 vehphys_launch( var_2, 0 );
                var_0 _ID47593( 4, 200 );
                var_0 _ID42411::_ID16987();
                var_0 _ID42411::_ID14749();
                continue;
        }
    }
}

_ID46410( var_0 )
{
    if ( self._ID40222 == 0 )
        return;

    self._ID9813 = undefined;
    self._ID24924 = undefined;
    var_0._ID29965 = _ID42237::_ID3321( var_0._ID29965, self );
    self._ID28895 = 1;
    self kill();
}

_ID51325()
{
    wait 0.1;
    var_0 = self gettagorigin( "tag_guy1" );
    physicsexplosioncylinder( var_0, 300, 300, 2 );
}

_ID47592( var_0 )
{
    if ( self._ID40222 == 0 )
        return;

    self._ID9813 = undefined;
    self._ID24924 = undefined;
    var_0._ID29965 = _ID42237::_ID3321( var_0._ID29965, self );
    var_0 waittill( "death" );
    wait 0.05;
    self unlink();

    if ( isalive( self ) )
        self kill( level._ID794._ID740, level._ID794 );
}

_ID46865()
{
    self endon( "death" );
    self endon( "dying" );
    self endon( "end_induced_death" );
    var_0 = [];
    var_0[0] = 2500;
    var_0[1] = 2500;
    var_0[2] = 3000;
    var_0[3] = 3500;
    var_1 = level._ID15361;
    var_2 = var_0[var_1];
    var_3 = 0;

    while ( var_3 < var_2 )
    {
        self waittill( "damage",  var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12  );

        if ( var_5 != level._ID794 )
            continue;

        if ( var_8 == "MOD_PROJECTILE" )
            break;

        var_3 += var_4;
    }

    thread _ID44766();
}

_ID53158()
{
    self endon( "death" );
    self endon( "dying" );
    var_0 = 5000;

    for (;;)
    {
        self waittill( "veh_jolt",  var_1  );
        var_2 = abs( var_1[0] ) + abs( var_1[1] ) + abs( var_1[2] );

        if ( var_2 > var_0 )
            self notify( "event",  "frontal"  );
    }
}

_ID44766( var_0, var_1 )
{
    var_2 = ( 64, -256, 16 );
    var_3 = ( 64, 256, 0 );

    if ( isdefined( var_0 ) )
    {
        var_2 = ( 64, 256, 16 );
        var_3 = ( 64, -256, 0 );
    }

    var_2 = _ID52365( var_2, self._ID65 );
    var_4 = self._ID740 + var_2;
    self notify( "newpath" );
    self notify( "dying" );
    self._ID11584 = 1;

    if ( issubstr( self._ID170, "pickup" ) )
    {
        _ID42237::_ID3350( self._ID29965, ::_ID46410, self );
        thread _ID51325();
    }
    else
        _ID42411::_ID40066( "idle" );

    self vehphys_enablecrashing();
    self vehicledriveto( var_4, self._ID1276 );

    while ( abs( self vehicle_getsteering() ) < 1 )
        wait 0.05;

    var_3 = _ID52365( var_3, self._ID65 );
    self vehphys_launch( var_3, 0 );

    if ( !isdefined( var_1 ) )
        var_1 = 4;

    _ID47593( var_1, 200 );
    _ID42411::_ID16987();
    _ID42411::_ID14749();
}

_ID47593( var_0, var_1 )
{
    _ID44790( var_0 ) endon( "timeout" );

    if ( !isdefined( var_1 ) )
        var_1 = 50;

    var_2 = self vehicle_getvelocity();
    var_2 = abs( var_2[0] ) + abs( var_2[1] ) + abs( var_2[2] );

    while ( var_2 > var_1 )
    {
        var_2 = self vehicle_getvelocity();
        var_2 = abs( var_2[0] ) + abs( var_2[1] ) + abs( var_2[2] );
        wait 0.05;
    }
}

_ID45448()
{
    _ID42237::_ID3350( getentarray( "launch_object", "targetname" ), ::_ID49023 );
}

_ID49023()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    self waittill( "trigger",  var_1  );
    var_2 = [];
    var_2["com_trafficcone01"] = 2;
    var_2["bc_military_tire04"] = 25;
    var_2["bc_military_tire05"] = 25;
    var_2["com_junktire"] = 25;
    var_2["road_barrier_post"] = 4;

    foreach ( var_4 in var_0 )
    {
        if ( var_1 == level._ID48653 )
            level._ID794 playrumblelooponentity( "damage_light" );

        var_5 = var_1 vehicle_getvelocity();
        var_6 = vectortoangles( var_4._ID740 + ( 0, 0, 6 ) - var_1._ID740 );
        var_7 = vectortoangles( var_5 );

        if ( var_0.size > 2 )
        {
            var_8 = ( 0, randomint( 30 ) - 15, 0 );
            var_6 += var_8;
        }

        var_9 = var_6 - var_7;
        var_5 = _ID52365( var_5, var_9 );
        var_10 = 2;

        if ( isdefined( var_2[var_4._ID669] ) )
            var_10 = var_2[var_4._ID669];

        if ( isdefined( var_4._ID31020 ) )
            var_10 *= var_4._ID31020;

        if ( isdefined( var_4._ID31438 ) )
            level thread _ID42237::_ID27077( var_4._ID31438, var_4._ID740 );

        var_5 *= var_10;
        var_11 = vectornormalize( var_5 * -1 );
        var_12 = var_4._ID740 + var_11 * 16;
        var_4 physicslaunchclient( var_12, var_5 );
        var_13 = vectornormalize( var_5 );
    }
}

_ID44790( var_0 )
{
    var_1 = spawnstruct();
    var_1 _ID42407::_ID10226( var_0, _ID42407::_ID31877, "timeout" );
    return var_1;
}

_ID47315()
{
    _ID42237::_ID14413( "wing_fall" );
    _ID42234::_ID13611( "wing_fall" );
    var_0 = getent( "wing", "targetname" );
    var_1 = getent( "pivot_1", "targetname" );
    var_2 = getent( "pivot_2", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_boneyard_wing_explosion" );
    var_1._ID65 = vectortoangles( var_2._ID740 - var_1._ID740 );
    var_2._ID65 = vectortoangles( var_1._ID740 - var_2._ID740 );
    var_0 linkto( var_1 );
    var_2 linkto( var_1 );
    var_3 = physicstrace( var_2._ID740 + ( 0, 0, -64 ), var_2._ID740 + ( 0, 0, -256 ) );
    var_4 = physicstrace( var_1._ID740 + ( 0, 0, -65 ), var_1._ID740 + ( 0, 0, -256 ) );
    var_5 = vectortoangles( var_3 - var_1._ID740 );
    var_1 rotateto( var_5, 0.4, 0.3, 0 );
    var_1 waittill( "rotatedone" );
    var_5 = vectortoangles( var_3 + ( 0, 0, 40 ) - var_1._ID740 );
    var_1 rotateto( var_5, 0.25, 0, 0.25 );
    var_1 waittill( "rotatedone" );
    var_5 = vectortoangles( var_3 - var_1._ID740 );
    var_1 rotateto( var_5, 0.25, 0.25, 0 );
    var_1 waittill( "rotatedone" );
    var_5 = vectortoangles( var_3 + ( 0, 0, 10 ) - var_1._ID740 );
    var_1 rotateto( var_5, 0.1, 0, 0.1 );
    var_1 waittill( "rotatedone" );
    var_5 = vectortoangles( var_3 - var_1._ID740 );
    var_1 rotateto( var_5, 0.1, 0.1, 0 );
    var_1 waittill( "rotatedone" );
    var_0 unlink();
    var_2 unlink();
    var_0 linkto( var_2 );
    var_5 = vectortoangles( var_4 - var_2._ID740 );
    var_2 rotateto( var_5, 0.3, 0.2, 0 );
    var_2 waittill( "rotatedone" );
    var_5 = vectortoangles( var_4 + ( 0, 0, 20 ) - var_2._ID740 );
    var_2 rotateto( var_5, 0.2, 0, 0.2 );
    var_2 waittill( "rotatedone" );
    var_5 = vectortoangles( var_4 - var_2._ID740 );
    var_2 rotateto( var_5, 0.2, 0.2, 0 );
    var_2 waittill( "rotatedone" );
    var_5 = vectortoangles( var_4 + ( 0, 0, 5 ) - var_2._ID740 );
    var_2 rotateto( var_5, 0.1, 0, 0.1 );
    var_2 waittill( "rotatedone" );
    var_5 = vectortoangles( var_4 - var_2._ID740 );
    var_2 rotateto( var_5, 0.1, 0.1, 0 );
    var_2 waittill( "rotatedone" );
}

_ID47754()
{
    var_0 = getent( "c130_flight", "targetname" );
    var_1 = getent( "lower_hatch", "targetname" );
    var_2 = getent( "upper_hatch", "targetname" );
    var_3 = getentarray( "hinge", "targetname" );
    var_4 = getent( "lower_hatch_origin", "targetname" );
    var_5 = getent( "upper_hatch_origin", "targetname" );
    var_6 = getentarray( "hinge_origin", "targetname" );
    var_7 = getent( "c130_nikolai", "targetname" );
    var_8 = getent( "nikolai_origin", "script_noteworthy" );
    var_9 = var_7 spawndrone();
    var_9 linkto( var_0 );
    var_9._ID740 = var_8._ID740;
    var_9 _ID42407::_ID3428( "nikolai" );
    var_8 thread _ID42259::_ID3044( var_9, "nikolai_idle" );
    _ID42237::_ID3294( getentarray( var_0._ID1191, "targetname" ), ::linkto, var_0 );
    _ID42237::_ID3294( getentarray( var_1._ID1191, "targetname" ), ::linkto, var_1 );
    _ID42237::_ID3294( getentarray( var_2._ID1191, "targetname" ), ::linkto, var_2 );
    _ID42237::_ID3294( getentarray( var_3[0]._ID1191, "targetname" ), ::linkto, var_3[0] );
    _ID42237::_ID3294( getentarray( var_3[1]._ID1191, "targetname" ), ::linkto, var_3[1] );
    var_0 thread _ID47302();
    var_3[0]._ID65 = ( 175, 90, 0 );
    var_3[1]._ID65 = ( 170, 90, 0 );
    var_1 thread _ID54486( var_3[0], var_6[0]._ID740, 0.25, 1.85, 12.1 );
    var_1 thread _ID54486( var_3[1], var_6[1]._ID740, 0.3, 1.5, 11.5 );
    var_10 = 4.9;
    var_0 thread _ID54486( var_1, var_4._ID740, 0.015, 5.9, 3 );
    var_0 thread _ID54486( var_2, var_5._ID740, 0.01, var_10 );
    var_0._ID46195 = getent( "ramp_trigger", "targetname" );
    var_0._ID46195 enablelinkto();
    var_0._ID46195 linkto( var_0 );
    _ID42237::_ID3350( getentarray( "ramp_death_trigger", "targetname" ), ::_ID54220, var_0 );
    _ID42237::_ID3350( getentarray( "c130_propeller", "script_noteworthy" ), ::_ID43814 );
    return var_0;
}

_ID50237( var_0 )
{
    for (;;)
    {
        level waittill( "hinge_stopped",  var_1  );

        if ( var_1 == var_0 )
            break;
    }

    var_2 = getentarray( "hinge", "targetname" );
    var_2[0] playloopsound( "veh_c130_ramp_scrape_loop" );
    var_3 = level._ID44077._ID740[2];

    for (;;)
    {
        if ( level._ID44077._ID740[2] > var_3 + 50 )
        {
            var_2[0] stopsounds();
            return;
        }

        var_4 = randomintrange( 0, 2 );

        for ( var_5 = 0; var_5 < var_4; var_5++ )
            thread _ID43370( var_2 );

        wait 0.05;
    }
}

_ID43370( var_0 )
{
    var_1 = _ID42237::_ID35164();
    var_2 = randomfloat( 1.3 );
    var_1._ID740 = var_0[0]._ID740 * var_2 + var_0[1]._ID740 * ( 1 - var_2 );
    var_1._ID740 = var_1._ID740 + ( 0, -10, -14 );
    var_1._ID65 = ( 308, 270, 0 );
    var_1 linkto( var_0[0] );
    var_3 = _ID42237::_ID16299( "scrape_sparks" );
    playfxontag( var_3, var_1, "tag_origin" );
    var_4 = 4;
    var_4 *= 20;

    for ( var_5 = 0; var_5 < var_4; var_5++ )
        wait 0.05;

    wait 4;
    var_1 delete();
}

_ID54220( var_0 )
{
    level endon( "uaz_park" );
    self enablelinkto();
    self linkto( var_0 );
    _ID42237::_ID14413( "uaz_player_in_control" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( var_1 == level._ID48653 )
            break;
    }

    level notify( "uaz_park_crash" );
    level._ID48653 _ID44766( self._ID31388, 1.5 );
    level._ID794 kill();
}

_ID51453()
{
    var_0 = ( -300, 600, 500 );
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 unlink();
    level._ID794._ID29975 rotatevelocity( ( 300, 300, 300 ), 10 );
    level._ID794._ID29975 movegravity( var_0, 1 );
    level._ID794._ID29975 hide();
}

ride_uaz_crash_player_death()
{
    level._ID794 _meth_85a8( "h2_boneyard_player_death_front", 1 );
    level._ID794 enabledeathshield( 1 );
    level._ID794._ID29975 hide();
    _ID42407::_ID12569( 1 );
    wait 0.1;
    level._ID794 enabledeathshield( 0 );
    level._ID794 kill();
}

_ID54486( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 5;
    var_6 = spawn( "script_model", var_1 );
    var_6._ID65 = ( 0, 0, 0 );
    var_6 setmodel( "tag_origin" );
    var_6 linkto( self );
    var_0._ID740 = var_1;
    var_0 linkto( var_6 );
    _ID42237::_ID14413( "c130_hatch_open" );
    wait(var_5);

    if ( isdefined( var_4 ) )
        wait(var_4);

    var_6._ID3189 = "c130_propeller";
    var_6 _ID42407::_ID3428();
    var_7 = level._ID30895["c130_propeller"]["rotate"][0];
    var_6 animscripted( "rotate_hatch", var_6._ID740, var_6._ID65, var_7 );
    var_6 setflaggedanim( "rotate_hatch", var_7, 1, 0, var_2 );
    wait(var_3);
    var_6 setflaggedanim( "rotate_hatch", var_7, 1, 0, 0 );
    level notify( "hinge_stopped",  var_0  );
}

_ID43814()
{
    wait(randomfloat( 2 ));
    self._ID3189 = "c130_propeller";
    _ID42407::_ID3428();
    _ID42259::_ID3044( self, "rotate" );
}

_ID47302()
{
    _ID42237::_ID14413( "c130_hatch_open" );
    var_0 = _ID42237::_ID35164();
    var_0._ID740 = self._ID740;
    var_0._ID65 = self._ID65;
    var_0 linkto( self );
    _ID42237::_ID49667( _ID42237::_ID16299( "h2_c130_interior_light" ), var_0, "tag_origin", ( 575, 0, 165 ), ( 0, 0, 0 ) );
    _ID42237::_ID49667( _ID42237::_ID16299( "c138_takeoff_dust" ), var_0, "tag_origin", ( -340, 0, 6 ), ( 0, 180, 90 ) );
    wait 13.85;
    _ID42237::_ID49667( _ID42237::_ID16299( "scrape_sparks" ), var_0, "tag_origin", ( -340, 0, 6 ), ( 0, 180, 90 ) );
    self playloopsound( "veh_c130_ramp_scrape_loop" );
    wait 4.15;
    _ID42237::_ID49667( _ID42237::_ID16299( "scrape_sparks_right" ), var_0, "tag_origin", ( -411, -37.5, 2 ), ( 0, 180, 90 ) );
    wait 0.9;
    _ID42237::_ID49667( _ID42237::_ID16299( "scrape_sparks_left" ), var_0, "tag_origin", ( -411, 35, 2 ), ( 0, 180, 90 ) );
}

_ID54203( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_4 = var_1 * 10;
    var_5 = var_2 * 10;

    if ( var_5 > 0 )
        var_6 = var_0 / var_5;
    else
        var_6 = var_0;

    var_7 = var_3 * 10;
    var_8 = var_4 - var_7;

    if ( var_7 > 0 )
        var_9 = var_0 / var_7;
    else
        var_9 = var_0;

    var_10 = 0.1;
    var_0 = 0;

    for ( var_11 = 0; var_11 < var_4; var_11++ )
    {
        if ( var_11 <= var_5 )
            var_0 += var_6;

        if ( var_11 > var_8 )
            var_0 -= var_9;

        earthquake( var_0, var_10, level._ID794._ID740, 500 );
        wait(var_10);
    }
}

_ID53343( var_0 )
{
    playfxontag( _ID42237::_ID16299( "angel_flare_swirl" ), self, "tag_flash_flares" );
    self playsound( "ac130_flare_burst" );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        thread _ID49047();
        wait(randomfloatrange( 0.1, 0.25 ));
    }
}

_ID49047()
{
    if ( !isdefined( level._ID54079 ) )
        level._ID54079 = 0;

    var_0 = _ID42407::_ID35028( "angel_flare_rig" );
    var_0._ID740 = self gettagorigin( "tag_flash_flares" );
    var_0._ID65 = self gettagangles( "tag_flash_flares" );
    var_1 = level._ID1426["angel_flare_geotrail"];
    var_2 = level._ID30895["angel_flare_rig"]["ac130_angel_flares"].size;
    var_3 = level._ID30895["angel_flare_rig"]["ac130_angel_flares"][level._ID54079 % var_2];
    level._ID54079++;
    var_0 setflaggedanim( "flare_anim", var_3, 1, 0, 1 );
    wait 0.1;
    playfxontag( var_1, var_0, "flare_left_top" );
    playfxontag( var_1, var_0, "flare_right_top" );
    wait 0.05;
    playfxontag( var_1, var_0, "flare_left_bot" );
    playfxontag( var_1, var_0, "flare_right_bot" );
    var_0 waittillmatch( "flare_anim",  "end"  );
    stopfxontag( var_1, var_0, "flare_left_top" );
    stopfxontag( var_1, var_0, "flare_right_top" );
    stopfxontag( var_1, var_0, "flare_left_bot" );
    stopfxontag( var_1, var_0, "flare_right_bot" );
}

_ID43004()
{
    _ID42407::_ID1892( "axis", ::_ID49569 );
    _ID42407::_ID1892( "team3", ::_ID49569 );
    level._ID46456["axis"] = 15;
    level._ID46456["team3"] = 15;
    level._ID46456["axis_alive"] = 0;
    level._ID46456["team3_alive"] = 0;
    level thread _ID51156();
}

_ID49569()
{
    if ( !isai( self ) )
        return;

    var_0 = "default";

    if ( isdefined( self._ID922 ) )
        var_0 = self._ID922;

    var_1 = level._ID15361;

    if ( var_1 == 0 )
        var_1 = 1;

    waitframe;

    switch ( var_0 )
    {
        case "scripted_guy":
            break;
        case "enemy_dog":
            thread _ID51037();
            break;
        case "struggle_guy":
            thread _ID49115();
            break;
        case "rpg_guy":
            thread _ID44962();
            break;
        case "spray_guy":
            thread _ID50022();
            break;
        case "minigun_guy":
            self._ID486 = self._ID486 * var_1;

            if ( level._ID15361 >= 2 )
                self setthreatbiasgroup( "aware_of_player" );
        default:
            if ( level._ID46456[self._ID1194] < level._ID46456[self._ID1194 + "_alive"] && !isdefined( self._ID29969 ) )
            {
                self waittill( "finished spawning" );
                self delete();
                return;
            }

            thread _ID53074();
            _ID44401();
            return;
    }
}

_ID44401()
{
    _ID43287();
    thread _ID52426();
    thread _ID50650();
    thread _ID47129();

    if ( self._ID1194 == "team3" && randomint( 4 ) == 0 )
        _ID42407::_ID12492( 1 );
}

_ID53074()
{
    var_0 = self._ID1194;
    level._ID46456[var_0 + "_alive"]++;
    _ID42237::_ID41068( "death", "tobedeleted", "long_death" );
    level._ID46456[var_0 + "_alive"]--;
}

_ID51037()
{

}

_ID47129()
{
    self endon( "death" );
    self endon( "tobedeleted" );

    if ( isdefined( self._ID922 ) && self._ID922 == "delay_awareness" )
    {
        if ( isdefined( self._ID29969 ) )
        {
            self setthreatbiasgroup( "ignore_player" );
            self waittill( "jumpedout" );
            wait 2;
            self setthreatbiasgroup( self._ID1194 );
        }
        else
        {
            self setthreatbiasgroup( "ignore_player" );
            _ID42237::_ID41078( 3, "damage", "goal" );
            self setthreatbiasgroup( self._ID1194 );
        }
    }
}

_ID52426()
{
    self endon( "death" );
    self endon( "tobedeleted" );

    for (;;)
    {
        _ID45796( "bulletwhizby" );
        _ID45796( "damage" );
        self waittill( "waittill_stack",  var_0  );

        if ( var_0 == "bulletwhizby" && self._ID44719._ID7 == level._ID794 || var_0 == "damage" && self._ID44719._ID97 == level._ID794 )
            break;
    }

    _ID50758();
    self setthreatbiasgroup( "aware_of_player" );
}

_ID50650()
{
    level._ID2184 = 120000;
    var_0 = self._ID332;
    var_1 = self._ID333;
    self endon( "death" );
    self endon( "tobedeleted" );

    for (;;)
    {
        self waittill( "enemy" );

        if ( isplayernumber( self._ID322 ) )
        {
            self setengagementmaxdist( var_0, var_1 );
            continue;
        }

        self setengagementmaxdist( var_0 * 2, var_1 * 2 );
    }
}

_ID43287()
{
    self endon( "death" );
    self._ID86 = 0.1;
}

_ID49115()
{
    self endon( "death" );
    var_0 = self._ID628;
    self._ID628 = 9216;
    self._ID11575 = 1;
    wait 1;
    self._ID628 = var_0;
    self._ID11575 = undefined;
    _ID44401();
}

_ID47068( var_0, var_1 )
{
    var_1 thread _ID52888();
    var_2 = var_0 getturretowner();
    var_2 endon( "death" );
    var_1 endon( "death" );
    self endon( "death" );

    for (;;)
    {
        var_3 = _ID42237::_ID28945( var_1._ID52888 );
        var_0 animscripts\laatpv_turret\common::_ID32371( var_3, 3, 5 );
        var_2._ID507 = 1;
        var_0 animscripts\laatpv_turret\common::_ID32371( var_3, 1, 3 );
        var_2._ID507 = 0;
    }
}

_ID52888()
{
    self._ID52888 = [];
    var_0 = anglestoright( self._ID65 );
    var_1 = var_0 * 320;
    self._ID52888[0] = spawn( "script_origin", self._ID740 + var_1 );
    self._ID52888[0] linkto( self );
    var_1 = var_0 * -320;
    self._ID52888[1] = spawn( "script_origin", self._ID740 + var_1 );
    self._ID52888[1] linkto( self );
    self waittill( "death" );
    self._ID52888[0] delete();
    self._ID52888[1] delete();
}

_ID52547( var_0 )
{
    self endon( "death" );
    self endon( "reaction_end" );
    var_1 = getentarray( var_0, "script_noteworthy" );
    var_2 = 0;
    var_3 = 0;

    for (;;)
    {
        _ID42237::_ID14413( "littlebird_react" );
        _ID45796( "damage" );
        _ID45796( "reached_dynamic_path_end" );
        _ID45796( "react" );
        self waittill( "waittill_stack",  var_4  );

        if ( var_4 == "damage" )
        {
            var_5 = self._ID44719._ID7;
            var_6 = self._ID44719._ID97;

            if ( !_ID42237::_ID14385( "littlebird_react" ) )
                continue;

            var_2 += var_5;

            if ( var_2 < 400 )
                continue;
        }

        var_2 = 0;
        var_7 = var_1[var_3];
        var_3++;

        if ( var_3 > var_1.size )
        {
            var_1 = _ID42237::_ID3320( var_1 );
            var_3 = 0;
        }

        self setmaxpitchroll( 25, 25 );
        _ID42411::_ID45813( "fast" );
        self vehicle_setspeed( 65, 25, 25 );
        thread _ID42411::_ID40218( var_7 );
        _ID42237::_ID41098( "goal", "near_goal" );
        wait 2;
        thread _ID45255();
    }
}

_ID45255()
{
    self endon( "reaction_end" );
    self endon( "react" );
    self endon( "death" );
    wait 3;
    var_0 = 5000;
    var_1 = gettime();

    for (;;)
    {
        wait 0.05;

        if ( isdefined( self._ID23512[0] getturrettarget( 0 ) ) || isdefined( self._ID23512[1] getturrettarget( 0 ) ) )
        {
            var_1 = gettime();
            continue;
        }

        if ( var_1 + var_0 < gettime() )
            break;
    }

    self notify( "react" );
}

_ID45188()
{
    self endon( "death" );
    self waittill( "rpg_guy_done" );
    self._ID511 = 0;
    self._ID486 = 25;
    thread _ID45331();
}

_ID44962()
{
    self endon( "death" );
    _ID42407::_ID10871();
    _ID42407::_ID32353( 1 );
    self._ID199 = "no_cover";
    self._ID44962 = 1;
    var_0 = getnode( self._ID1191, "targetname" );

    if ( isdefined( var_0 ) )
        self setgoalnode( var_0 );
    else
    {
        var_0 = getent( self._ID1191, "targetname" );
        self setgoalpos( var_0._ID740 );
    }

    if ( isdefined( var_0._ID851 ) )
        self._ID452 = var_0._ID851;
    else
        self._ID452 = 32;

    var_1 = 10;

    if ( !isdefined( var_0._ID31429 ) || var_0._ID31429 == 0 )
        var_0._ID31429 = 1;

    self._ID7._ID30103 = var_0._ID31429;

    for ( var_2 = 0; var_2 < var_0._ID31429; var_2++ )
    {
        if ( isdefined( var_0._ID1191 ) )
        {
            var_3 = getentarray( var_0._ID1191, "targetname" );
            var_4 = _ID42237::_ID28945( var_3 );
        }
        else if ( isdefined( self._ID43929 ) )
        {
            var_4 = self._ID43929;
            var_1 = 30;
        }
        else
            return;

        if ( isdefined( var_4._ID31388 ) && var_4._ID31388 == "straight" )
            self setstablemissile( 1 );

        if ( issentient( var_4 ) )
        {
            var_5 = spawn( "script_origin", var_4._ID740 );
            var_5 linkto( var_4 );
            self setentitytarget( var_5, 1 );
        }
        else
            self setentitytarget( var_4, 1 );

        _ID42237::_ID41123( "missile_fire", var_1 );
        var_4 notify( "rpg_fired" );
    }

    wait 2;
    self clearentitytarget();
    _ID42407::_ID12445();
    _ID42407::_ID32353( 0 );
    self._ID199 = "cover";
    self._ID44962 = undefined;
    _ID44401();
    self notify( "rpg_guy_done" );
}

_ID50022()
{
    self endon( "death" );
    _ID42407::_ID10871();
    self._ID50022 = 1;
    var_0 = getnode( self._ID1191, "targetname" );

    if ( isdefined( var_0._ID851 ) )
        self._ID452 = var_0._ID851;
    else
        self._ID452 = 32;

    self setgoalnode( var_0 );
    self._ID24844 = 1;
    self._ID513 = 1;
    self._ID24935 = 1;
    self._ID11002 = 1;
    self._ID199 = "no_cover";
    self setthreatbiasgroup( "lowthreat" );
    var_1 = getentarray( var_0._ID1191, "targetname" );
    var_1 = _ID42237::_ID3320( var_1 );
    self setentitytarget( var_1[0], 1 );

    if ( isdefined( self._ID31523 ) )
        var_2 = self._ID31523;
    else
        var_2 = randomfloatrange( 1, 2.5 );

    _ID42237::_ID41123( "goal", 5 );
    var_1[0] moveto( var_1[1]._ID740, var_2, var_2 / 2, var_2 / 4 );
    wait(var_2);
    self clearentitytarget();
    _ID42407::_ID12445();
    self._ID24844 = undefined;
    self._ID513 = 0;
    self._ID24935 = undefined;
    self._ID11002 = undefined;
    self._ID199 = "cover";
    self setthreatbiasgroup( self._ID1194 );
    self._ID50022 = undefined;
    _ID44401();
}

_ID977()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    var_1 = _ID42237::_ID28945( var_0 );
    var_2 = var_1._ID740 - self._ID740 + ( 0, 0, 200 );
    magicgrenademanual( "smoke_grenade_american", self._ID740 + ( 0, 0, 80 ), var_2, 1.5 );
}

_ID50515()
{
    _ID42237::_ID3350( getentarray( "delete_excess", "targetname" ), ::_ID44948 );
    level thread _ID43725();
}

_ID44948()
{
    self waittill( "trigger" );
    level._ID46201 = undefined;

    if ( isdefined( self._ID1191 ) )
        level._ID46201 = getent( self._ID1191, "targetname" );

    _ID42237::_ID14402( "delete_excess" );
    waitframe;
    _ID42237::_ID14388( "delete_excess" );
}

_ID50106( var_0 )
{
    if ( isdefined( var_0._ID29969 ) )
        return 1;

    if ( isdefined( var_0._ID50022 ) )
        return 1;

    if ( isdefined( var_0._ID44962 ) )
        return 1;

    return 0;
}

_ID43725()
{
    for (;;)
    {
        _ID42237::_ID14413( "delete_excess" );
        var_0 = level._ID46201;
        var_1 = getaiarray( "axis", "team3" );
        var_2 = 2560000;

        foreach ( var_4 in var_1 )
        {
            if ( _ID50106( var_4 ) )
                continue;

            if ( isdefined( var_0 ) && var_4 istouching( var_0 ) )
                continue;
            else if ( !isdefined( var_0 ) && distancesquared( var_4._ID740, level._ID794._ID740 ) < var_2 )
                continue;

            var_4 thread _ID45331( 1 );
        }

        _ID42237::_ID14426( "delete_excess" );
    }
}

_ID53846( var_0 )
{
    self endon( "stop_hunt" );
    self endon( "death" );
    level._ID44132 endon( "death" );
    self setlookatent( level._ID44132 );
    var_1 = getentarray( var_0, "targetname" );
    var_2 = undefined;

    for (;;)
    {
        var_3 = vectornormalize( level._ID44132._ID740 - level._ID794._ID740 );
        var_4 = undefined;
        var_5 = -1;

        foreach ( var_7 in var_1 )
        {
            var_8 = vectornormalize( var_7._ID740 - level._ID794._ID740 );
            var_9 = vectordot( var_3, var_8 );

            if ( var_9 > var_5 )
            {
                var_5 = var_9;
                var_4 = var_7;
            }
        }

        if ( !isdefined( var_2 ) || var_4 != var_2 )
        {
            self vehicle_setspeed( 50, 20, 20 );
            self setmaxpitchroll( 25, 25 );
            var_2 = var_4;
            _ID42237::_ID14388( "littlebird_at_goal" );
            thread _ID42411::_ID40218( var_4 );
            thread _ID45263();
        }

        wait 0.1;
    }
}

_ID45263()
{
    level endon( "littlebird_at_goal" );

    while ( self._ID1276 > 15 )
        _ID42237::_ID41098( "goal", "near_goal" );

    _ID42237::_ID14402( "littlebird_at_goal" );
}

_ID50325( var_0 )
{
    self endon( "death" );

    if ( isdefined( var_0 ) )
        level endon( var_0 );

    for (;;)
    {
        _ID42237::_ID14413( "littlebird_at_goal" );
        var_1 = level._ID44132._ID740 + ( 0, 0, 128 );
        var_2 = self._ID740 + ( 0, 0, -56 );

        if ( _ID42407::_ID27540( var_2, 0.85, 1, self ) && _ID42407::_ID27540( var_1, 0.7, 1, level._ID44132 ) )
            break;

        wait 0.5;

        if ( _ID42237::_ID14385( "no_align" ) )
            break;
    }
}

_ID49603()
{
    self endon( "death" );
    var_0 = getent( "btr80_miss_target", "targetname" );
    var_1 = getentarray( var_0._ID1191, "targetname" );
    var_1 = _ID42407::_ID3311( var_1 );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_4 = spawn( "script_origin", var_1[var_3]._ID740 );
        var_2[var_3] = var_4;
    }

    var_5 = vectortoangles( self._ID740 - level._ID44132._ID740 );
    var_6 = level._ID44132._ID740 - var_0._ID740;

    foreach ( var_4 in var_2 )
        var_4 _ID48819( var_5, var_0._ID740, var_6 );

    _ID14269( var_2, 3 );
    _ID42407::_ID10226( 2, _ID42237::_ID3294, var_2, ::delete );
}

_ID53245()
{
    var_0 = [];
    var_0["driver"] = [];
    var_0["all"] = [];
    var_1 = "driver";
    var_0[var_1][var_0[var_1].size] = 0;
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0["default"] = var_0["all"];
    return var_0;
}

_ID45786()
{
    level._ID40070["hide_attack_forward"] = ::_ID51209;
    level._ID40068["hide_attack_forward"] = ::_ID52091;
    level._ID40070["idle"] = ::guy_attack_forward_2_hide;
    level._ID40070["hidetoback_attack"] = ::_ID50719;
    level._ID40068["hidetoback_attack"] = ::_ID43754;
    level._ID40070["back_attack"] = ::_ID54457;
    level._ID40068["back_attack"] = ::_ID43754;
    level._ID40070["hide_attack_left"] = ::_ID43133;
    level._ID40068["hide_attack_left"] = ::_ID45213;
    level._ID40070["hide_attack_left_standing"] = ::_ID46853;
    level._ID40068["hide_attack_left_standing"] = ::_ID43754;
    level._ID40070["hide_attack_back"] = ::_ID53314;
    level._ID40068["hide_attack_back"] = ::_ID43678;
    level._ID40070["hide_starting_back"] = ::_ID51142;
    level._ID40068["hide_starting_back"] = ::_ID43754;
    level._ID40070["hide_starting_left"] = ::_ID53954;
    level._ID40068["hide_starting_left"] = ::_ID48246;
    level._ID40070["backtohide"] = ::_ID52557;
    level._ID40068["backtohide"] = ::_ID48246;
    level._ID40070["react"] = ::_ID44524;
    level._ID40068["react"] = ::_ID46955;
    level._ID40070["free_attack"] = ::_ID54367;
    level._ID40068["free_attack"] = ::_ID47832;
    level._ID40070["hide_attack_right"] = ::_ID52216;
    level._ID40068["hide_attack_right"] = ::_ID53401;
}
#using_animtree("generic_human");

_ID54367( var_0, var_1 )
{
    var_0 endon( "newanim" );
    var_0 endon( "death" );
    var_0 notify( "animontag_thread" );
    var_0 stopanimscripted();
    var_0._ID24924 = 1;
    thread _ID50861( var_0 );
    var_0._ID9813 = %boneyard_crouch_exposed_death_twist;
    var_2 = getanimlength( var_0._ID9813 );
    var_0 thread _ID54673( var_2 );
    var_3 = "";
    var_4 = level._ID8760["20"];

    for (;;)
    {
        if ( _ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740, var_4 ) )
            var_5 = "stand";
        else
            var_5 = "crouch";

        if ( var_5 != var_3 )
        {
            var_3 = var_5;
            var_0 allowedstances( var_5 );
        }

        wait 1;
    }
}

_ID54673( var_0 )
{
    self endon( "newanim" );
    self waittill( "death" );
    wait(var_0 * 0.6);
    self delete();
}

_ID50861( var_0 )
{
    var_0 endon( "death" );
    var_0 waittill( "animontag_thread" );
    var_0 allowedstances( "stand", "crouch", "prone" );
}

_ID47832( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return self._ID1282 == "truck_physics" && var_1 >= 1;
}

_ID43754( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return isdefined( _ID42412::_ID3052( self, var_1 )._ID54231 );
}

_ID50719( var_0, var_1 )
{
    var_2 = _ID42412::_ID3052( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID54231 );
    thread _ID54457( var_0, var_1 );
}

_ID54457( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    for (;;)
        _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID49218 );
}

_ID48246( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return isdefined( _ID42412::_ID3052( self, var_1 )._ID53738 );
}

_ID51142( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );
    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53738 );
    thread _ID53314( var_0, var_1 );
}

_ID53954( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    if ( !isdefined( var_2._ID53738 ) )
        return _ID42412::_ID17566( var_0, var_1 );

    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53738 );
    thread _ID43133( var_0, var_1 );
}

_ID52557( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );
    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53738 );
    thread _ID42412::_ID17566( var_0, var_1 );
}

_ID44524( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );
    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID43178 );
    thread _ID42412::_ID17566( var_0, var_1 );
}

_ID46955( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return isdefined( _ID42412::_ID3052( self, var_1 )._ID43178 );
}

_ID43678( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return isdefined( _ID42412::_ID3052( self, var_1 )._ID45775 );
}

_ID53314( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    for (;;)
    {
        if ( isdefined( var_2._ID48666 ) )
        {
            var_3 = _ID42412::_ID28973( var_0, var_2._ID48666 );
            _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID45775[var_3] );
            continue;
        }

        _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID45775 );
    }
}

_ID52091( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return isdefined( _ID42412::_ID3052( self, var_1 )._ID47438 );
}

_ID51209( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    for (;;)
        _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID47438 );
}

_ID45213( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return isdefined( _ID42412::_ID3052( self, var_1 )._ID53367 );
}

guy_attack_forward_2_hide( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return;

    var_2 = _ID42412::_ID3052( self, var_1 );

    if ( var_1 == 2 && isdefined( var_2._ID47438 ) )
    {
        var_3 = var_0 getanimtime( var_2._ID47438 );

        if ( var_3 > 0 )
        {
            var_4 = getanimlength( var_2._ID47438 );
            wait(var_4 * ( 1 - var_3 ));
        }
    }

    _ID42412::_ID17566( var_0, var_1 );
}

_ID43133( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    for (;;)
    {
        if ( isdefined( var_2._ID43992 ) )
        {
            var_3 = _ID42412::_ID28973( var_0, var_2._ID43992 );
            _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53367[var_3] );
            continue;
        }

        _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53367 );
    }
}

_ID46853( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    for (;;)
    {
        if ( isdefined( var_2._ID45828 ) )
        {
            var_3 = _ID42412::_ID28973( var_0, var_2._ID45828 );
            _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID51378[var_3] );
            continue;
        }

        _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID51378 );
    }
}

_ID53401( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && isdefined( var_0._ID24817 ) )
        return 0;

    return isdefined( _ID42412::_ID3052( self, var_1 )._ID53367 );
}

_ID52216( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    for (;;)
        _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53367 );
}

_ID46335()
{
    _ID42237::_ID3350( getentarray( "player_stray_trigger", "targetname" ), ::_ID48091 );
}

_ID48091()
{
    level._ID794 endon( "death" );
    var_0 = getentarray( self._ID1191, "targetname" );
    var_1 = 0;

    for (;;)
    {
        self waittill( "trigger" );

        if ( var_1 > 8 )
            break;

        var_1++;
        wait 1;
    }

    var_2 = var_0[0];
    var_3 = var_0[1];
    var_4 = level._ID8760["60"];

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_2._ID740, var_4 ) )
    {
        var_2 = var_0[1];
        var_3 = var_0[0];
    }

    var_5 = getent( "killer_bird", "targetname" );
    var_5._ID740 = var_2._ID740;
    var_5._ID65 = var_2._ID65;
    var_6 = var_5 _ID42407::_ID35192();
    var_6 setvehgoalpos( var_3._ID740, 1 );
    var_6 vehicle_setspeedimmediate( 100, 40, 30 );
    var_6 neargoalnotifydist( 4000 );
    var_6 thread _ID43707( var_3._ID740 );
    var_6 _ID42237::_ID41098( "goal", "near_goal" );
    var_6 setlookatent( level._ID794 );
    var_6 waittill( "goal" );
    var_4 = level._ID8760["20"];

    while ( !_ID42237::_ID41802( var_6._ID740, var_6._ID65, level._ID794._ID740, var_4 ) )
        wait 0.05;

    var_6 notify( "killing_player" );
    var_7 = [];
    var_7[0] = level._ID794;
    var_6 thread _ID14269( var_7, 5 );
    wait 2;
    level._ID794 kill();
}

_ID43707( var_0 )
{
    self endon( "killing_player" );
    var_1 = distance2d( level._ID794._ID740, var_0 );
    var_2 = var_0[2];

    for (;;)
    {
        var_3 = anglestoforward( level._ID794._ID65 );
        var_4 = level._ID794._ID740 + var_1 * var_3 + ( 0, 0, var_2 );
        var_3 = vectornormalize( var_4 - level._ID794._ID740 );

        if ( sighttracepassed( level._ID794 geteye(), var_4, 0, self ) )
            self setvehgoalpos( var_4, 1 );

        wait 2;
    }
}

_ID54663( var_0 )
{
    self makeentitysentient( var_0 );
    self waittill( "death" );

    if ( isdefined( self ) )
        self freeentitysentient();
}

_ID46158( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) )
        _ID44790( var_3 ) endon( "timeout" );

    if ( isstring( var_0 ) )
    {
        var_4 = [];
        var_4[tolower( var_0 )] = 1;
        var_0 = var_4;
    }

    if ( isdefined( var_2 ) && var_2 )
        self endon( "death" );

    var_5 = 0;

    while ( !var_5 )
    {
        self waittill( "damage",  var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13, var_14  );

        if ( isdefined( var_0 ) )
            var_5 = isdefined( var_0[tolower( var_10 )] );

        if ( var_5 && isdefined( var_1 ) )
            var_5 = var_1 == var_7;
    }
}

_ID13799( var_0 )
{
    _ID42475::_ID34575( "aud_start_level_fadeout" );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "hud_showStance", 0 );
    var_1 = newhudelem();
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 setshader( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID55 = 0;
    var_1 fadeovertime( var_0 );
    var_1._ID55 = 1;
    wait(var_0);
    level._ID794 freezecontrols( 1 );
    _ID42407::_ID12569( 0 );
}

_ID50402( var_0, var_1 )
{
    level endon( "release_objective" );

    for (;;)
    {
        objective_current( var_0, var_1._ID740 );
        wait 0.05;
    }
}

_ID53585( var_0, var_1 )
{
    self waittill( var_1 );
    _ID42237::_ID14402( var_0 );
}

_ID48819( var_0, var_1, var_2 )
{
    var_3 = transformmove( level._ID44132._ID740, level._ID44132._ID65, var_1, ( 0, 0, 0 ), self._ID740, ( 0, 0, 0 ) );
    var_4 = self._ID740 - var_1;
    var_5 = anglestoright( var_0 ) * -1;
    var_6 = anglestoforward( var_0 );
    var_7 = anglestoup( var_0 );
    var_8 = var_6 * var_4[0] + var_5 * var_4[1] + var_7 * var_4[2];
    self._ID740 = var_1 + var_8 + var_2;
}

_ID52365( var_0, var_1 )
{
    var_2 = anglestoright( var_1 ) * -1;
    var_3 = anglestoforward( var_1 );
    var_4 = anglestoup( var_1 );
    var_5 = var_3 * var_0[0] + var_2 * var_0[1] + var_4 * var_0[2];
    return var_5;
}

_ID44950( var_0, var_1 )
{
    level endon( var_0 );
    self waittill( var_1 );
    _ID42237::_ID14402( var_0 );
}

_ID48567()
{
    _ID42407::_ID13024( "hold_fire" );
    _ID42407::_ID13024( "have_target" );
    _ID42407::_ID13024( "allow_stop" );
    _ID42407::_ID13025( "allow_stop" );
    self._ID43064 = [];
    self._ID49504 = 0;
}

_ID54385( var_0 )
{
    self endon( "death" );
    var_1 = undefined;

    for (;;)
    {
        var_2 = self._ID43064;
        var_2 = _ID42237::_ID3296( var_2, _ID46027() );
        var_3 = undefined;

        foreach ( var_5 in var_2 )
        {
            if ( issentient( var_5 ) && !isalive( var_5 ) )
                continue;

            if ( isdefined( var_5._ID29969 ) )
                continue;

            if ( self vehicle_canturrettargetpoint( var_5._ID740 + ( 0, 0, 20 ), 1, var_5 ) )
            {
                if ( isplayernumber( var_5 ) || isai( var_5 ) && !self._ID49504 )
                {
                    _ID42407::_ID13025( "hold_fire" );
                    _ID42411::_ID23510();
                }
                else
                {
                    _ID42407::_ID13021( "hold_fire" );
                    _ID42411::_ID23509();
                }

                var_3 = var_5;
                break;
            }
        }

        if ( !isdefined( var_3 ) )
        {
            wait 0.5;
            continue;
        }

        var_1 = var_3;
        _ID42407::_ID13025( "have_target" );
        _ID45510( var_3, ( 0, 0, 20 ), 0, 5 );
        _ID42407::_ID13021( "have_target" );
    }
}

_ID45510( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self notify( "clear_turret_target" );
    self endon( "clear_turret_target" );

    if ( isalive( var_0 ) )
        thread _ID43446( var_0 );

    if ( !isdefined( var_0._ID52888 ) )
        self setturrettargetent( var_0, var_1 );
    else
        self setturrettargetent( var_0._ID52888, var_1 );

    self waittill( "turret_on_target" );

    if ( isdefined( var_3 ) )
        _ID44790( var_3 ) endon( "timeout" );

    if ( !isdefined( var_2 ) )
        thread _ID46253( var_0, var_1 );

    var_4 = gettime();

    for (;;)
    {
        _ID42407::_ID13031( "hold_fire" );
        self fireweapon();
        wait 0.2;
    }
}

_ID43446( var_0 )
{
    self endon( "clear_turret_target" );

    if ( isdefined( var_0._ID52888 ) )
        var_0._ID52888 _ID42407::_ID1985( _ID42407::_ID41116, "death" );

    var_0 _ID42407::_ID1985( _ID42237::_ID41098, "death", "pain_death" );
    _ID42407::_ID11232();
    wait(randomfloat( 1 ));

    if ( _ID42407::_ID20542( self._ID43064, var_0 ) && !isalive( var_0 ) )
        self._ID43064 = _ID42237::_ID3321( self._ID43064, var_0 );

    self notify( "clear_turret_target" );
}

_ID46253( var_0, var_1 )
{
    self endon( "death" );
    self endon( "clear_turret_target" );
    var_2 = randomfloatrange( 1000, 2000 );
    var_3 = undefined;

    for (;;)
    {
        var_4 = _ID42237::_ID41075( "turret_no_vis", "turret_on_vistarget" );

        if ( var_4 == "turret_no_vis" )
        {
            if ( self vehicle_canturrettargetpoint( var_0._ID740 + var_1, 1, var_0 ) )
                continue;

            if ( !isdefined( var_3 ) )
                var_3 = gettime();

            if ( var_3 + var_2 < gettime() )
                break;

            continue;
        }

        var_3 = undefined;
    }

    _ID44966();
    self notify( "clear_turret_target" );
}

_ID44966()
{
    self endon( "death" );
    _ID42407::_ID13025( "hold_fire" );
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_0 linkto( self, "tag_origin", ( 500, 0, 100 ), ( 0, 0, 0 ) );
    self setturrettargetent( var_0 );
    _ID42237::_ID41098( "turret_on_target", "death" );

    if ( isalive( self ) )
        self clearturrettargetent();

    var_0 delete();
    _ID42407::_ID13021( "hold_fire" );
}

_ID46752( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        _ID42407::_ID13027( "have_target" );
        _ID42407::_ID13027( "allow_stop" );
        var_2 = randomintrange( var_0, var_1 );
        self vehicle_setspeed( var_2, 10 );
        _ID42407::_ID13032( "have_target", "allow_stop" );
        self resumespeed( 10 );
    }
}

_ID46027()
{
    var_0 = [];
    var_1 = "";

    if ( isdefined( self._ID1194 ) )
        var_1 = self._ID1194;
    else if ( isdefined( self._ID31474 ) )
        var_1 = self._ID31474;
    else
    {

    }

    switch ( var_1 )
    {
        case "axis":
            var_0 = sortbydistance( getaiarray( "allies", "team3" ), self._ID740 );
        case "team3":
            var_0 = sortbydistance( getaiarray( "allies", "axis" ), self._ID740 );
            break;
        case "allies":
            var_0 = sortbydistance( getaiarray( "team3", "axis" ), self._ID740 );
            break;
    }

    if ( var_1 != "allies" )
    {
        if ( var_0.size > 0 )
            var_0 = _ID42237::_ID3312( var_0, level._ID794, 0 );
        else
            var_0[0] = level._ID794;
    }

    return var_0;
}

_ID40247( var_0 )
{
    self._ID486 = var_0 + self._ID18313;
    self._ID9497 = self._ID486;
}

_ID50067( var_0 )
{
    _ID42237::_ID14413( "flyby_rockets" );

    while ( !_ID42237::_ID14385( "flyby_c130" ) )
    {
        wait 2;
        _ID49433( var_0, "smoketrail_rpg_sp_boneyard" );
        wait(randomfloatrange( 3, 4 ));
    }
}

_ID49433( var_0, var_1 )
{
    wait(self._ID916);
    var_2 = getent( self._ID1191, "targetname" );
    var_3 = magicbullet( "rpg_distant_stable", self._ID740, var_2._ID740 );

    if ( isdefined( var_1 ) )
    {
        var_3 _meth_850f();
        playfxontag( _ID42237::_ID16299( var_1 ), var_3, "tag_fx" );
    }

    if ( isdefined( var_0 ) )
    {
        wait(var_0);

        if ( isdefined( var_3 ) )
            var_3 delete();
    }
}

_ID53727( var_0 )
{
    level endon( var_0 );
    self endon( "death" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2  );

        if ( isplayernumber( var_2 ) )
            break;
    }

    _ID42237::_ID14402( var_0 );
}

_ID47087( var_0, var_1 )
{
    var_2 = [];
    var_2["team3"] = "axis";
    var_2["axis"] = "team3";
    self endon( "death" );
    wait(randomfloatrange( var_0, var_1 ));
    var_3 = getaiarray( var_2[self._ID1194] );
    var_3 = sortbydistance( var_3, self._ID740 );
    var_4 = var_3[0];

    if ( isdefined( var_4 ) )
        self kill( var_4 geteye(), var_4 );
    else
        self kill( self geteye() );
}

_ID45331( var_0 )
{
    self endon( "death" );
    self notify( "tobedeleted" );
    _ID42407::_ID10871();
    _ID47087( 3, 7 );
}

_ID51812( var_0 )
{
    var_1 = anglestoforward( ( 0, 0, 0 ) );
    var_2 = vectornormalize( var_0 - self._ID740 );
    var_3 = vectordot( var_1, var_2 );
    return var_3 < -0.2;
}

_ID51156()
{
    for (;;)
    {
        _ID42237::_ID14413( "switch_color" );
        var_0 = getaiarray( "axis", "team3" );

        foreach ( var_2 in var_0 )
        {
            var_3 = var_2._ID31209;
            var_4 = strtok( level._ID46670[var_2._ID1194], " " );

            if ( isdefined( var_3 ) )
            {
                if ( isdefined( var_3 ) && !_ID42407::_ID20542( var_4, var_3 ) || isdefined( var_2._ID25508 ) )
                    var_2 _ID42407::_ID32315( var_4[0] );

                continue;
            }

            if ( isdefined( var_2._ID25508 ) )
                var_2._ID25508 = var_4[0];
        }

        _ID42237::_ID14388( "switch_color" );
    }
}

_ID45796( var_0, var_1 )
{
    if ( !isdefined( self._ID44719 ) )
        self._ID44719 = spawnstruct();

    thread _ID47007( var_0, var_1 );
}

_ID50758()
{
    self notify( "waittill_stack" );
    self._ID44719 = undefined;
}

_ID47007( var_0, var_1 )
{
    self endon( "waittill_stack" );
    self endon( "death" );

    if ( !isdefined( var_1 ) )
        var_1 = self;

    var_1 waittill( var_0,  var_2, var_3, var_4, var_5, var_6, var_7  );

    if ( isdefined( var_2 ) )
        self._ID44719._ID7 = var_2;

    if ( isdefined( var_3 ) )
        self._ID44719._ID97 = var_3;

    if ( isdefined( var_4 ) )
        self._ID44719._ID146 = var_4;

    if ( isdefined( var_5 ) )
        self._ID44719._ID248 = var_5;

    if ( isdefined( var_6 ) )
        self._ID44719._ID12279 = var_6;

    if ( isdefined( var_7 ) )
        self._ID44719._ID46029 = var_7;

    self notify( "waittill_stack",  var_0, var_1  );
}

_ID43185()
{
    _ID42237::_ID30396( "fire_missile", _ID42508::_ID5478 );
}

_ID14269( var_0, var_1 )
{
    var_2 = [];
    var_2[0] = "tag_missile_right";
    var_2[1] = "tag_missile_left";
    self setvehweapon( "littlebird_FFAR" );

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        var_4 = var_0[var_3 % var_0.size];
        self setturrettargetent( var_4 );
        var_5 = self fireweapon( var_2[var_3 % var_2.size], var_4 );
        var_5 _ID42237::_ID10192( 1, ::missile_cleartarget );

        if ( isdefined( var_4._ID916 ) )
        {
            wait(var_4._ID916);
            continue;
        }

        wait(randomfloatrange( 0.2, 0.3 ));
    }
}

_ID51568( var_0 )
{
    self._ID740 = var_0._ID740;

    if ( isdefined( var_0._ID65 ) )
        self._ID65 = var_0._ID65;

    var_1 = getentarray( self._ID1191, "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( isspawner( var_3 ) )
            var_3._ID1193 = var_0._ID1193;
    }

    self._ID1191 = var_0._ID1193;
    var_5 = thread _ID42411::_ID35194();
    return var_5;
}

_ID47263( var_0 )
{
    if ( !_ID42411::_ID20763() )
        self startpath( var_0 );

    thread _ID42411::_ID40218( var_0 );
}

_ID49325( var_0 )
{
    var_0 endon( "death" );

    for (;;)
    {
        var_0._ID507 = !_ID42237::_ID14385( "minigun_fire" );

        if ( _ID42237::_ID14385( "minigun_fire" ) )
        {
            _ID42237::_ID14426( "minigun_fire" );
            continue;
        }

        _ID42237::_ID14413( "minigun_fire" );
    }
}

_ID47872( var_0 )
{
    if ( self == level._ID794 )
    {
        self setorigin( var_0._ID740 );
        self setplayerangles( var_0._ID65 );
    }
    else
    {
        self._ID740 = var_0._ID740;
        self._ID65 = var_0._ID65;
    }
}

_ID44678()
{
    _ID42237::_ID3350( getentarray( "delete_not_touching", "targetname" ), ::_ID45677 );
}

_ID45677()
{
    self waittill( "trigger" );

    while ( level._ID794 istouching( self ) )
        wait 0.5;

    _ID42237::_ID38863();
}

_ID51569()
{
    self endon( "death" );

    for (;;)
    {
        if ( self vehicle_getspeed() < 5 )
        {
            wait 0.1;
            continue;
        }

        var_0 = self._ID740;
        wait 0.1;
        var_1 = anglestoforward( self._ID65 );
        var_2 = self._ID740 + var_1 * 100;
        var_1 = anglestoright( self._ID65 );
        var_3 = self._ID740 - var_1 * 30;
        var_4 = self._ID740 + var_1 * 30;
        _ID51680( var_2, var_3, var_4 );
    }
}

_ID47606( var_0 )
{

}

_ID51680( var_0, var_1, var_2 )
{

}

_ID11694( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        return;

    return;
}

_ID47927( var_0 )
{
    if ( !isdefined( level._ID47927 ) )
    {
        level._ID47927 = spawnstruct();
        level._ID47927._ID22377 = 0;
    }

    var_1 = newhudelem();
    var_1._ID1331 = 0;
    var_1._ID1339 = -80 + level._ID47927._ID22377 * 14;
    var_1 settext( var_0 );
    var_1._ID393 = 1.46;
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center";
    var_1._ID1284 = "bottom";
    var_1._ID983 = 1;
    var_1._ID45400 = var_0;
    var_2 = level._ID47927._ID22377;
    var_1 thread _ID45851( var_2 );
    level._ID47927._ID22377++;
    var_3 = ( var_0.size + 1 ) / 50 + 1;
    wait(var_3);
    var_1 fadeovertime( 0.5 );
    var_1._ID55 = 0;
    level._ID47927._ID22377--;
    wait 0.5;
    level._ID47927 notify( "move",  var_2  );
    var_1 notify( "destoyed" );
    var_1 destroy();
}

_ID45851( var_0 )
{
    self endon( "destoyed" );

    for (;;)
    {
        level._ID47927 waittill( "move",  var_1  );

        if ( var_1 > var_0 || var_0 == 0 )
            continue;

        self moveovertime( 0.5 );
        self._ID1339 = self._ID1339 - 14;
        var_0--;
    }
}

_ID50429()
{
    var_0 = getallvehiclenodes();
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3._ID989 ) && var_3._ID989 & 1 )
            var_1[var_1.size] = var_3;
    }

    foreach ( var_3 in var_1 )
        level _ID51141( var_3 );
}

_ID51141( var_0 )
{
    for ( var_1 = ( randomfloatrange( 0, 1 ), randomfloatrange( 0, 1 ), randomfloatrange( 0, 1 ) ); isdefined( var_0._ID1191 ); var_3 = var_0._ID740 )
    {
        var_2 = var_0._ID740;
        var_0 = getvehiclenode( var_0._ID1191, "targetname" );
    }
}

_ID53725( var_0 )
{
    self notify( "new_debug" );
    self endon( "new_debug" );
    self endon( "death" );

    for (;;)
    {
        wait 0.05;

        if ( getdvarint( "debug_stance", 0 ) )
        {
            if ( var_0 == "stand" )
                continue;
        }
    }
}

_ID52798()
{
    level._ID10851["threatbias"]["easy"] = 0;
    level._ID10851["threatbias"]["normal"] = 0;
    level._ID10851["threatbias"]["hardened"] = 0;
    level._ID10851["threatbias"]["veteran"] = 0;
    level._ID10851["base_enemy_accuracy"]["easy"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["normal"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["hardened"] = 1.0;
    level._ID10851["base_enemy_accuracy"]["veteran"] = 1.0;
    level._ID10851["accuracyDistScale"]["easy"] = 1.0;
    level._ID10851["accuracyDistScale"]["normal"] = 1.0;
    level._ID10851["accuracyDistScale"]["hardened"] = 1.0;
    level._ID10851["accuracyDistScale"]["veteran"] = 1.0;
    level._ID10851["pain_test"]["easy"] = _ID42298::_ID2826;
    level._ID10851["pain_test"]["normal"] = _ID42298::_ID2826;
    level._ID10851["pain_test"]["hardened"] = _ID42298::_ID2826;
    level._ID10851["pain_test"]["veteran"] = _ID42298::_ID2826;
    level._ID10851["player_deathInvulnerableTime"]["easy"] = 800;
    level._ID10851["player_deathInvulnerableTime"]["normal"] = 600;
    level._ID10851["player_deathInvulnerableTime"]["hardened"] = 400;
    level._ID10851["player_deathInvulnerableTime"]["veteran"] = 200;
    level._ID10851["invulTime_preShield"]["easy"] = 0.0;
    level._ID10851["invulTime_preShield"]["normal"] = 0.0;
    level._ID10851["invulTime_preShield"]["hardened"] = 0.0;
    level._ID10851["invulTime_preShield"]["veteran"] = 0.0;
    level._ID10851["invulTime_onShield"]["easy"] = 0.5;
    level._ID10851["invulTime_onShield"]["normal"] = 0.5;
    level._ID10851["invulTime_onShield"]["hardened"] = 0.5;
    level._ID10851["invulTime_onShield"]["veteran"] = 0.5;
    level._ID10851["invulTime_postShield"]["easy"] = 0.3;
    level._ID10851["invulTime_postShield"]["normal"] = 0.3;
    level._ID10851["invulTime_postShield"]["hardened"] = 0.3;
    level._ID10851["invulTime_postShield"]["veteran"] = 0.3;
    level._ID10851["playerHealth_RegularRegenDelay"]["easy"] = 500;
    level._ID10851["playerHealth_RegularRegenDelay"]["normal"] = 500;
    level._ID10851["playerHealth_RegularRegenDelay"]["hardened"] = 500;
    level._ID10851["playerHealth_RegularRegenDelay"]["veteran"] = 500;
    level._ID10851["worthyDamageRatio"]["easy"] = 0.2;
    level._ID10851["worthyDamageRatio"]["normal"] = 0.2;
    level._ID10851["worthyDamageRatio"]["hardened"] = 0.2;
    level._ID10851["worthyDamageRatio"]["veteran"] = 0.2;
    level._ID10851["health_regenRate"]["easy"] = 0.01;
    level._ID10851["health_regenRate"]["normal"] = 0.008;
    level._ID10851["health_regenRate"]["hardened"] = 0.008;
    level._ID10851["health_regenRate"]["veteran"] = 0.008;
    level._ID10851["playerDifficultyHealth"]["easy"] = 1000;
    level._ID10851["playerDifficultyHealth"]["normal"] = 800;
    level._ID10851["playerDifficultyHealth"]["hardened"] = 600;
    level._ID10851["playerDifficultyHealth"]["veteran"] = 500;
    level._ID10851["longRegenTime"]["easy"] = 1000;
    level._ID10851["longRegenTime"]["normal"] = 1000;
    level._ID10851["longRegenTime"]["hardened"] = 1000;
    level._ID10851["longRegenTime"]["veteran"] = 1000;
    level._ID10851["healthOverlayCutoff"]["easy"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["normal"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["hardened"] = 0.02;
    level._ID10851["healthOverlayCutoff"]["veteran"] = 0.02;
}
#using_animtree("player");

_ID52667()
{
    var_0 = 0.1;
    var_1 = 20;
    var_2 = 80;
    level._ID794._ID29975 setanimlimited( %h2_boneyard_player_turn_reaction_left_add, 1, var_0 );
    level._ID794._ID29975 setanimlimited( %h2_boneyard_player_turn_reaction_right_add, 1, var_0 );
    level._ID794._ID29975 setanimlimited( %player_uaz_additive_turn_left, 0.0, var_0 );
    level._ID794._ID29975 setanimlimited( %player_uaz_additive_turn_right, 0.0, var_0 );

    for (;;)
    {
        var_3 = level._ID48653 vehicle_getbodyvelocity();
        var_4 = 0;
        var_5 = 0;

        if ( abs( var_3[1] ) > var_1 )
        {
            var_6 = clamp( ( abs( var_3[1] ) - var_1 ) / ( var_2 - var_1 ), 0, 1 );

            if ( var_3[1] > var_1 )
                var_5 = var_6;
            else
                var_4 = var_6;
        }

        level._ID794._ID29975 setanimlimited( %player_uaz_additive_turn_right, var_5, var_0 );
        level._ID794._ID29975 setanimlimited( %player_uaz_additive_turn_left, var_4, var_0 );
        waittillframeend;
    }
}

portal_groups_init()
{
    var_0 = getentarray( "portal_group", "classname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( issubstr( var_3._ID1193, "portal_group_" ) )
            var_1[var_1.size] = var_3;
    }

    foreach ( var_3 in var_1 )
    {
        _ID42237::_ID14400( var_3._ID1193 );

        if ( !isdefined( var_3._ID922 ) || issubstr( var_3._ID922, level._ID35897 + "," ) || _ID42407::_ID20569() )
            _ID42237::_ID14402( var_3._ID1193 );
    }

    _ID42237::_ID3350( var_1, ::portal_group );
}

portal_group()
{
    for (;;)
    {
        if ( _ID42237::_ID14385( self._ID1193 ) )
        {
            enablepg( self._ID1193, 1 );
            _ID42237::_ID14426( self._ID1193 );
        }
        else
        {
            enablepg( self._ID1193, 0 );
            _ID42237::_ID14413( self._ID1193 );
        }

        wait 0.05;
    }
}

viewhands_wibble_modifier()
{
    var_0 = 0.5;
    var_1 = 0.5;
    var_2 = 1;
    var_3 = 2;
    _func_2f1( 0, "xy", var_0, var_1 );
    _ID42237::_ID14413( "uaz_mount_end" );
    _func_2f1( 0, "xy", var_2, var_3 );
}

bya_smodel_groups_init()
{
    if ( _ID42407::_ID20569() )
        return;

    var_0 = [ 1, 2, 3, 4, 5, 6, 7 ];

    foreach ( var_2 in var_0 )
        _ID42237::_ID14400( "smodelgroup_" + var_2 );

    switch ( level._ID35897 )
    {
        case "intro":
            break;
        case "road":
            _ID42237::_ID14402( "smodelgroup_2" );
            _ID42237::_ID14402( "smodelgroup_3" );
            break;
        case "flyby":
            _ID42237::_ID14402( "smodelgroup_2" );
            _ID42237::_ID14402( "smodelgroup_3" );
            break;
        case "higround":
            _ID42237::_ID14402( "smodelgroup_2" );
            _ID42237::_ID14402( "smodelgroup_3" );
            _ID42237::_ID14402( "smodelgroup_4" );
            _ID42237::_ID14402( "smodelgroup_6" );
            _ID42237::_ID14402( "smodelgroup_7" );
            break;
        case "ride":
            _ID42237::_ID14402( "smodelgroup_1" );
            _ID42237::_ID14402( "smodelgroup_2" );
            _ID42237::_ID14402( "smodelgroup_3" );
            _ID42237::_ID14402( "smodelgroup_4" );
            _ID42237::_ID14402( "smodelgroup_5" );
            _ID42237::_ID14402( "smodelgroup_6" );
            _ID42237::_ID14402( "smodelgroup_7" );
            break;
        case "ride_end":
            _ID42237::_ID14402( "smodelgroup_1" );
            _ID42237::_ID14402( "smodelgroup_2" );
            _ID42237::_ID14402( "smodelgroup_3" );
            _ID42237::_ID14402( "smodelgroup_7" );
            break;
        default:
            break;
    }

    foreach ( var_2 in var_0 )
        thread smodel_group( var_2 );
}

smodel_group( var_0 )
{
    for (;;)
    {
        if ( _ID42237::_ID14385( "smodelgroup_" + var_0 ) )
            _func_31b( var_0 );
        else
            _func_31c( var_0 );

        level waittill( "smodelgroup_" + var_0 );
    }
}

animatevariousmodel( var_0, var_1, var_2 )
{
    self._ID3189 = var_0;
    _ID42259::_ID32556();

    if ( isdefined( var_1 ) )
        _ID42237::_ID14413( var_1 );

    var_3 = _ID42407::_ID16120( "idle" );
    self setanim( var_3 );
    var_4 = randomfloat( 1 );
    self setanimtime( var_3, var_4 );

    if ( isdefined( var_2 ) )
    {
        _ID42237::_ID14413( var_2 );
        self delete();
    }
}

resetangle()
{
    self._ID65 = ( 0, 0, 0 );
}

init_scope_fov_setup()
{
    setsaveddvar( "r_lodFOVScaleOverride", 1 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMaxAngle", 65 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMinAngle", 55 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMaxAngle", 15 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMinAngle", 0 );
    setsaveddvar( "r_lodFOVScaleOverrideAmount", 0.75 );
}

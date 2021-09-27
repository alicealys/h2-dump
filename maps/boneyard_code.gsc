// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID47015()
{
    _ID42237::_ID14413( "wait_for_player" );
    var_0 = _func_06A( "trigger_radius", self _meth_818C( "tag_passenger" ), 0, 72, 64 );
    var_0 _meth_8070();
    var_0 _meth_8053( self, "tag_passenger", ( 0, -48, -48 ), ( 0, 0, 0 ) );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "uaz_mounted" );
    var_0 _meth_80B7();
}

_ID52997()
{
    level._ID794 endon( "death" );
    level endon( "c130_takeoff_missed" );
    level endon( "uaz_park_crash" );
    _ID42237::_ID14413( "uaz_mounted" );
    level._ID794 _meth_80F6();
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8121( 1 );
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 = _ID42407::_ID35028( "player_rig" );
    level._ID794._ID29975 _meth_805A();
    level._ID794._ID29975 _meth_8053( self, "tag_body" );
    thread _ID42259::_ID3111( level._ID794._ID29975, "boneyard_uaz_mount", "tag_body" );
    thread _unknown_030E();
    level._ID794 _meth_8087( level._ID794._ID29975, "tag_player", 0.5 );
    wait 0.5;
    level._ID794._ID29975 _meth_8059();
    level._ID794 _meth_8084( level._ID794._ID29975, "tag_player", 1, 10, 10, 35, 20, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    self waittill( "boneyard_uaz_mount" );
    level._ID794 _meth_8084( level._ID794._ID29975, "tag_player", 0.75, 180, 180, 75, 25, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    level._ID794 _meth_80F7();
    thread _unknown_01DF();
    level._ID794._ID29975 _meth_805A();
    _ID42407::_ID12569( 1 );
    childthread _unknown_1334();
    level._ID794 _meth_80A9( 0.5, 0.5, 0, 180, 180, 75, 35 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _ID42237::_ID14413( "uaz_player_control" );
    _ID42237::_ID14402( "uaz_player_in_control" );
    level._ID28543 _ID42407::_ID36519();
    level._ID794 _meth_80A9( 0.5, 0.5, 0, 15, 15, 75, 5 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    level._ID794._ID29975 _meth_80B8( "h2_viewbody_sniper_uaz" );
    wait 0.5;
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 _ID42237::_ID10192( 0.2, ::_meth_8059 );
    _ID42259::_ID3111( level._ID794._ID29975, "grab_wheel", "tag_body" );
    _ID42237::_ID14402( "lighting_do_uaz_control_dof" );
    thread _unknown_02BF();
    _ID42237::_ID14413( "uaz_park" );
    wait 0.25;
    self _meth_80A1( "scn_bone_uaz_hits_ramp" );
    _func_192( 0.5, 2, level._ID794._ID740, 1024 );
    thread _unknown_0473();
}

_ID44722()
{
    level endon( "uaz_player_control" );
    var_0 = 0;

    for (;;)
    {
        var_1 = _func_11F( level._ID794._ID65 );
        var_2 = _func_11F( self._ID65 );
        var_3 = _func_11E( self._ID65 );
        var_4 = _func_0FB( var_1, var_2 );
        var_5 = _func_0FB( var_1, var_3 );
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
            level._ID794 _meth_85A8( "h2_boneyard_player_death_back", 1 );
        else
            level._ID794 _meth_85A8( "h2_boneyard_player_death_front", 1 );

        wait 0.05;
    }
}

_ID48688()
{
    level endon( "uaz_stop_player_control" );
    level endon( "uaz_park" );
    level endon( "uaz_park_crash" );
    self notify( "newpath" );
    level._ID794 _meth_8189( "stand" );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8121( 1 );
    _ID42407::_ID12569( 0 );
    thread _unknown_047B();
    var_0 = 200;
    var_1 = _func_11A( level._ID44077._ID740 - self._ID740 )[1];
    var_2 = self._ID65[1];
    var_3 = var_1 - var_2;
    var_4 = _func_0BD( var_3 ) * var_0;
    thread _unknown_048C();
    var_5 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_4 = 0;
    var_6 = 5;
    var_7 = 3;
    var_8 = 544;
    var_9 = _func_03D();
    var_10 = 1.5;
    var_10 *= 1000;
    var_11 = 2.0;
    var_11 *= 1000;
    var_12 = 0.78;
    var_13 = 0.78;
    var_14 = 50;
    var_15 = 95;
    var_16 = 8.0;
    var_17 = var_15 - var_14 / var_16 * 20;
    var_18 = var_17 * 0.5;
    var_17 *= 4;
    var_19 = var_18;

    for (;;)
    {
        var_20 = level._ID794 _meth_82FE()[1];
        var_20 *= -1;
        var_4 += var_20 * var_6;
        var_4 = _func_0EE( var_4, var_7 * -1, var_7 );
        var_21 = _func_11A( ( 0, 100, 0 ) );
        var_22 = _func_11F( var_21 );
        var_23 = _func_11F( self._ID65 );
        var_24 = _func_0FB( var_23, var_22 );
        var_25 = _func_11E( self._ID65 );

        if ( _func_0FB( var_25, var_22 ) > 0 )
        {
            if ( var_24 < var_12 )
                var_4 = var_7 * -1;
        }
        else if ( var_24 < var_13 )
            var_4 = var_7;

        var_5._ID65 = ( 0, self._ID65[1], 0 );
        var_5 _meth_82C4( var_4 );
        var_26 = _func_11F( var_5._ID65 );
        var_27 = self._ID740 + var_26 * var_0;

        if ( self._ID740[0] < level._ID44077._ID740[0] - 360 )
            var_27 = level._ID44077._ID46195._ID740;

        if ( _ID42237::_ID14385( "player_loses_control_of_uaz" ) )
        {
            var_28 = _func_03D() - level._ID46591;
            var_28 /= var_11;
            var_28 = _func_0EE( var_28, 0, 1 );
            var_27 = level._ID44077._ID46195._ID740 * var_28 + var_27 * 1 - var_28;
        }
        else
        {
            var_29 = _func_11A( level._ID44077._ID740 + ( var_8, 0, 0 ) - self._ID740 );
            var_30 = _func_11F( var_29 );
            var_31 = self._ID740 + var_30 * var_0;
            var_28 = _func_03D() - var_9;
            var_28 /= var_10;
            var_28 = _func_0EE( var_28, 0, 1 );
            var_27 = var_27 * var_28 + var_31 * 1 - var_28;
        }

        if ( var_14 >= 60 )
            var_19 = var_17;

        var_14 += var_19;
        var_14 = _func_0EE( var_14, 0, var_15 );
        self _meth_8236( var_27, var_14 );
        wait 0.05;
    }
}

_ID43217()
{
    self endon( "death" );
    self endon( "dying" );
    self _meth_823D();
    wait 2;
    self _meth_823C();

    for (;;)
    {
        if ( _func_0C3( level._ID48653._ID740[0] - level._ID44077._ID740[0] ) > 450 )
            self _meth_823D();
        else
            self _meth_823C();

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
        var_1 = level._ID794 _meth_82FE()[1] * -1;
        var_1 += self _meth_8293() * 0.25;
        var_1 = _func_0EE( var_1, -1, 1 );
        var_0 += var_1 * 0.1;

        if ( _func_0C3( var_0 ) > _func_0C3( var_1 ) )
            var_0 = var_1;

        var_2 = _func_0C3( var_0 );
        level._ID794._ID29975 _meth_8155( level._ID30895["player_rig"]["steer_straight"], 1 - var_2, 0.1, 1 );
        level._ID48653 _meth_8155( level._ID30895["generic"]["steer_straight"], 1 - var_2 / 2, 0.1, 1 );
        level._ID48653 _meth_814C( level._ID30895["generic"]["old_steering"], 0 );

        if ( var_0 < 0 )
        {
            level._ID794._ID29975 _meth_8155( level._ID30895["player_rig"]["steer_right"], var_2, 0.1, 1 );
            level._ID794._ID29975 _meth_8155( level._ID30895["player_rig"]["steer_left"], 0, 0.1, 1 );
            level._ID48653 _meth_8155( level._ID30895["generic"]["steer_right"], var_2 / 2, 0.1, 1 );
            level._ID48653 _meth_8155( level._ID30895["generic"]["steer_left"], 0, 0.1, 1 );
        }
        else
        {
            level._ID794._ID29975 _meth_8155( level._ID30895["player_rig"]["steer_right"], 0, 0.1, 1 );
            level._ID794._ID29975 _meth_8155( level._ID30895["player_rig"]["steer_left"], var_2, 0.1, 1 );
            level._ID48653 _meth_8155( level._ID30895["generic"]["steer_right"], 0, 0.1, 1 );
            level._ID48653 _meth_8155( level._ID30895["generic"]["steer_left"], var_2 / 2, 0.1, 1 );
        }

        wait 0.05;
    }
}

_ID47050()
{
    self endon( "death" );

    for (;;)
    {
        var_0 = _func_0DE( "axis" );

        if ( var_0.size == 0 )
            break;

        var_0 = _ID42237::_ID3320( var_0 );
        var_1 = _func_0B9( 5, 15 );
        var_2 = var_0[0] _meth_80AF();

        for ( var_3 = 0; var_3 < var_1; var_3++ )
        {
            if ( _func_1A7( var_0[0] ) )
                var_2 = var_0[0] _meth_80AF();

            _func_1C8( self._ID1302, level._ID28543 _meth_80AF() + ( 0, 0, 16 ), var_2 );
            wait 0.1;
        }

        wait(_func_0BA( 1.5, 3 ));
    }
}
#using_animtree("vehicles");

ride_uaz_vehicle()
{
    var_0 = _ID42412::_ID16125();
    var_1 = level._ID30895["generic"]["jeep_ride_vehicle"];
    var_0 _meth_8155( var_1, 0.01, 0.0, 1.0 );
    var_0 waittillmatch( "uaz_door_anim",  "end"  );
    var_0 _meth_8155( var_1, 1.0, 0.2, 1.0 );
    var_0 _meth_814C( %uaz_driver, 0 );
}

hide_uaz_windshield()
{
    self _meth_804E( "tag_glass_attach" );
    self _meth_804E( "tag_glass_animate_01" );
}

_ID53058()
{
    var_0 = _ID42412::_ID16125();
    var_0 _meth_811A( "uaz_door_anim", level._ID30895["generic"]["boneyard_UAZ_door"], 1, 0.2, 1 );
    var_0 waittillmatch( "uaz_door_anim",  "end"  );
    var_0 _meth_8155( level._ID30895["generic"]["boneyard_UAZ_door"], 0.0, 0.2, 1.0 );
    var_0 _unknown_0993();
}

_ID54584()
{
    var_0 = _func_1A1( "uaz_park", "script_noteworthy" );
    var_0 _meth_80B8( "tag_origin" );
    var_1 = var_0 _ID42237::_ID35164();
    var_1 _meth_8053( var_0, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_2 = _func_11F( var_0._ID65 );
    var_3 = self._ID740 + var_2 * 500;
    self _meth_8236( var_3, 60 );
    self._ID29965 = _ID42237::_ID3293( self._ID29965, level._ID44469 );
    var_4 = _ID42411::_ID40283();
    var_4 _meth_804E( "tag_glass_front_d" );
    var_4 _meth_804E( "tag_mirror_left" );
    var_4 _meth_804E( "tag_mirror_right" );
    var_4 _unknown_0A09();
    self._ID43785 = var_4;
    level._ID794._ID29975 _meth_8053( var_4, "tag_body" );
    var_4 _meth_8099();
    level._ID794 _meth_8099();
    level._ID794._ID29975 _meth_8099();
    var_4 _meth_8053( var_1, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_4 _meth_8148( "uaz_parked", var_1._ID740, var_1._ID65, level._ID30895["generic"]["boneyard_jeep_evac"] );
    thread _unknown_0ADC();
    _ID42475::_ID34575( "aud_start_evac_sequence" );
    level._ID794._ID29975 _meth_814D( level._ID30895["player_rig"]["jeep_evac"] );
    var_4 _meth_8155( level._ID30895["generic"]["jeep_evac_vehicle"] );
    var_4 thread _ID42259::_ID3111( level._ID48653._ID11783, "jeep_evac_driver", "tag_driver" );
}

_ID44174()
{
    level._ID794 _meth_80B4( "artillery_rumble" );
    wait 0.5;
    level._ID794 _meth_80B4( "damage_heavy" );
    wait 0.2;
    level._ID794 _meth_80B4( "damage_light" );
    wait 0.2;
    level._ID794 _meth_80B4( "damage_light" );
    wait 0.2;
    level._ID794 _meth_80B4( "damage_light" );
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
    _ID42237::_ID3350( _func_1F3( "jolt_node", "script_noteworthy" ), ::_unknown_0D32 );
    self._ID50809 = 0.1;
    var_0 = 80;
    var_1 = [];
    var_1[0] = ( 23, 33, 64 );
    var_1[1] = ( -23, -33, 64 );

    for (;;)
    {
        var_2 = _func_0C4( self._ID1276, var_0 );
        var_3 = self._ID50809 / var_0;

        if ( var_2 > 0 && self._ID50809 > 0 )
        {
            var_4 = var_2 * var_3;
            self _meth_825E( self._ID740 + var_1[_func_0B7( 2 )], var_4 );
        }

        var_5 = var_0 - var_2 / 100 + 0.1;
        wait(0.2 + _func_0B8( var_5 ));
    }
}

_ID53072()
{
    self waittill( "trigger",  var_0  );
    var_0._ID50809 = self._ID31396 / 1000;
}

_ID48948()
{
    var_0 = _func_1A2( "rumble_trigger", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_0DD8 );
}

_ID48684()
{
    self waittill( "trigger" );
    var_0 = "grenade_rumble";

    if ( _func_02F( self._ID31422 ) )
        var_0 = self._ID31422;

    level._ID794 _meth_80B4( var_0 );
}

_ID50138()
{
    var_0 = _func_1F3( "vehicle_event", "script_noteworthy" );
    _ID42237::_ID3350( var_0, ::_unknown_0E26 );
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

        if ( _func_02F( self._ID31508 ) )
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

        if ( !_func_02F( var_1 ) )
            continue;

        switch ( var_1 )
        {

        }

        case "frontal":
        case "start_induced_death":
        case "end_induced_death":
        case "allow_frontal":
        case "disable_crashing":
        case "enable_crashing":
        case "crash":
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
    self _meth_8058();
}

_ID51325()
{
    wait 0.1;
    var_0 = self _meth_818C( "tag_guy1" );
    _func_185( var_0, 300, 300, 2 );
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
    self _meth_8055();

    if ( _func_1A7( self ) )
        self _meth_8058( level._ID794._ID740, level._ID794 );
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
        self waittill( "damage",  var_12, var_11, var_10, var_9, var_8, var_7, var_6, var_5, var_4  );

        if ( var_5 != level._ID794 )
            continue;

        if ( var_8 == "MOD_PROJECTILE" )
            break;

        var_3 += var_4;
    }

    thread _unknown_116B();
}

_ID53158()
{
    self endon( "death" );
    self endon( "dying" );
    var_0 = 5000;

    for (;;)
    {
        self waittill( "veh_jolt",  var_1  );
        var_2 = _func_0C3( var_1[0] ) + _func_0C3( var_1[1] ) + _func_0C3( var_1[2] );

        if ( var_2 > var_0 )
            self notify( "event",  "frontal"  );
    }
}

_ID44766( var_0, var_1 )
{
    var_2 = ( 64, -256, 16 );
    var_3 = ( 64, 256, 0 );

    if ( _func_02F( var_0 ) )
    {
        var_2 = ( 64, 256, 16 );
        var_3 = ( 64, -256, 0 );
    }

    var_2 = _unknown_1B40( var_2, self._ID65 );
    var_4 = self._ID740 + var_2;
    self notify( "newpath" );
    self notify( "dying" );
    self._ID11584 = 1;

    if ( _func_125( self._ID170, "pickup" ) )
    {
        _ID42237::_ID3350( self._ID29965, ::_unknown_11A6, self );
        thread _unknown_11BB();
    }
    else
        _ID42411::_ID40066( "idle" );

    self _meth_823D();
    self _meth_8236( var_4, self._ID1276 );

    while ( _func_0C3( self _meth_8293() ) < 1 )
        wait 0.05;

    var_3 = _unknown_1B9E( var_3, self._ID65 );
    self _meth_823B( var_3, 0 );

    if ( !_func_02F( var_1 ) )
        var_1 = 4;

    _unknown_1295( var_1, 200 );
    _ID42411::_ID16987();
    _ID42411::_ID14749();
}

_ID47593( var_0, var_1 )
{
    _unknown_1323( var_0 ) endon( "timeout" );

    if ( !_func_02F( var_1 ) )
        var_1 = 50;

    var_2 = self _meth_8291();
    var_2 = _func_0C3( var_2[0] ) + _func_0C3( var_2[1] ) + _func_0C3( var_2[2] );

    while ( var_2 > var_1 )
    {
        var_2 = self _meth_8291();
        var_2 = _func_0C3( var_2[0] ) + _func_0C3( var_2[1] ) + _func_0C3( var_2[2] );
        wait 0.05;
    }
}

_ID45448()
{
    _ID42237::_ID3350( _func_1A2( "launch_object", "targetname" ), ::_unknown_130D );
}

_ID49023()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    self waittill( "trigger",  var_1  );
    var_2 = [];
    var_2["com_trafficcone01"] = 2;
    var_2["bc_military_tire04"] = 25;
    var_2["bc_military_tire05"] = 25;
    var_2["com_junktire"] = 25;
    var_2["road_barrier_post"] = 4;
    var_3 = var_0;

    for ( var_14 = _func_1DA( var_3 ); _func_02F( var_14 ); var_14 = _func_1BF( var_3, var_14 ) )
    {
        var_4 = var_3[var_14];

        if ( var_1 == level._ID48653 )
            level._ID794 _meth_80B4( "damage_light" );

        var_5 = var_1 _meth_8291();
        var_6 = _func_11A( var_4._ID740 + ( 0, 0, 6 ) - var_1._ID740 );
        var_7 = _func_11A( var_5 );

        if ( var_0.size > 2 )
        {
            var_8 = ( 0, _func_0B7( 30 ) - 15, 0 );
            var_6 += var_8;
        }

        var_9 = var_6 - var_7;
        var_5 = _unknown_1CC1( var_5, var_9 );
        var_10 = 2;

        if ( _func_02F( var_2[var_4._ID669] ) )
            var_10 = var_2[var_4._ID669];

        if ( _func_02F( var_4._ID31020 ) )
            var_10 *= var_4._ID31020;

        if ( _func_02F( var_4._ID31438 ) )
            level thread _ID42237::_ID27077( var_4._ID31438, var_4._ID740 );

        var_5 *= var_10;
        var_11 = _func_119( var_5 * -1 );
        var_12 = var_4._ID740 + var_11 * 16;
        var_4 _meth_82CC( var_12, var_5 );
        var_13 = _func_119( var_5 );
    }

    var_clear_10
    var_clear_0
}

_ID44790( var_0 )
{
    var_1 = _func_1A5();
    var_1 _ID42407::_ID10226( var_0, _ID42407::_ID31877, "timeout" );
    return var_1;
}

_ID47315()
{
    _ID42237::_ID14413( "wing_fall" );
    _ID42234::_ID13611( "wing_fall" );
    var_0 = _func_1A1( "wing", "targetname" );
    var_1 = _func_1A1( "pivot_1", "targetname" );
    var_2 = _func_1A1( "pivot_2", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_boneyard_wing_explosion" );
    var_1._ID65 = _func_11A( var_2._ID740 - var_1._ID740 );
    var_2._ID65 = _func_11A( var_1._ID740 - var_2._ID740 );
    var_0 _meth_8053( var_1 );
    var_2 _meth_8053( var_1 );
    var_3 = _func_091( var_2._ID740 + ( 0, 0, -64 ), var_2._ID740 + ( 0, 0, -256 ) );
    var_4 = _func_091( var_1._ID740 + ( 0, 0, -65 ), var_1._ID740 + ( 0, 0, -256 ) );
    var_5 = _func_11A( var_3 - var_1._ID740 );
    var_1 _meth_82BF( var_5, 0.4, 0.3, 0 );
    var_1 waittill( "rotatedone" );
    var_5 = _func_11A( var_3 + ( 0, 0, 40 ) - var_1._ID740 );
    var_1 _meth_82BF( var_5, 0.25, 0, 0.25 );
    var_1 waittill( "rotatedone" );
    var_5 = _func_11A( var_3 - var_1._ID740 );
    var_1 _meth_82BF( var_5, 0.25, 0.25, 0 );
    var_1 waittill( "rotatedone" );
    var_5 = _func_11A( var_3 + ( 0, 0, 10 ) - var_1._ID740 );
    var_1 _meth_82BF( var_5, 0.1, 0, 0.1 );
    var_1 waittill( "rotatedone" );
    var_5 = _func_11A( var_3 - var_1._ID740 );
    var_1 _meth_82BF( var_5, 0.1, 0.1, 0 );
    var_1 waittill( "rotatedone" );
    var_0 _meth_8055();
    var_2 _meth_8055();
    var_0 _meth_8053( var_2 );
    var_5 = _func_11A( var_4 - var_2._ID740 );
    var_2 _meth_82BF( var_5, 0.3, 0.2, 0 );
    var_2 waittill( "rotatedone" );
    var_5 = _func_11A( var_4 + ( 0, 0, 20 ) - var_2._ID740 );
    var_2 _meth_82BF( var_5, 0.2, 0, 0.2 );
    var_2 waittill( "rotatedone" );
    var_5 = _func_11A( var_4 - var_2._ID740 );
    var_2 _meth_82BF( var_5, 0.2, 0.2, 0 );
    var_2 waittill( "rotatedone" );
    var_5 = _func_11A( var_4 + ( 0, 0, 5 ) - var_2._ID740 );
    var_2 _meth_82BF( var_5, 0.1, 0, 0.1 );
    var_2 waittill( "rotatedone" );
    var_5 = _func_11A( var_4 - var_2._ID740 );
    var_2 _meth_82BF( var_5, 0.1, 0.1, 0 );
    var_2 waittill( "rotatedone" );
}

_ID47754()
{
    var_0 = _func_1A1( "c130_flight", "targetname" );
    var_1 = _func_1A1( "lower_hatch", "targetname" );
    var_2 = _func_1A1( "upper_hatch", "targetname" );
    var_3 = _func_1A2( "hinge", "targetname" );
    var_4 = _func_1A1( "lower_hatch_origin", "targetname" );
    var_5 = _func_1A1( "upper_hatch_origin", "targetname" );
    var_6 = _func_1A2( "hinge_origin", "targetname" );
    var_7 = _func_1A1( "c130_nikolai", "targetname" );
    var_8 = _func_1A1( "nikolai_origin", "script_noteworthy" );
    var_9 = var_7 _meth_803F();
    var_9 _meth_8053( var_0 );
    var_9._ID740 = var_8._ID740;
    var_9 _ID42407::_ID3428( "nikolai" );
    var_8 thread _ID42259::_ID3044( var_9, "nikolai_idle" );
    _ID42237::_ID3294( _func_1A2( var_0._ID1191, "targetname" ), ::_meth_8053, var_0 );
    _ID42237::_ID3294( _func_1A2( var_1._ID1191, "targetname" ), ::_meth_8053, var_1 );
    _ID42237::_ID3294( _func_1A2( var_2._ID1191, "targetname" ), ::_meth_8053, var_2 );
    _ID42237::_ID3294( _func_1A2( var_3[0]._ID1191, "targetname" ), ::_meth_8053, var_3[0] );
    _ID42237::_ID3294( _func_1A2( var_3[1]._ID1191, "targetname" ), ::_meth_8053, var_3[1] );
    var_0 thread _unknown_196A();
    var_3[0]._ID65 = ( 175, 90, 0 );
    var_3[1]._ID65 = ( 170, 90, 0 );
    var_1 thread _unknown_1969( var_3[0], var_6[0]._ID740, 0.25, 1.85, 12.1 );
    var_1 thread _unknown_1983( var_3[1], var_6[1]._ID740, 0.3, 1.5, 11.5 );
    var_10 = 4.9;
    var_0 thread _unknown_199D( var_1, var_4._ID740, 0.015, 5.9, 3 );
    var_0 thread _unknown_19AC( var_2, var_5._ID740, 0.01, var_10 );
    var_0._ID46195 = _func_1A1( "ramp_trigger", "targetname" );
    var_0._ID46195 _meth_8070();
    var_0._ID46195 _meth_8053( var_0 );
    _ID42237::_ID3350( _func_1A2( "ramp_death_trigger", "targetname" ), ::_unknown_1993, var_0 );
    _ID42237::_ID3350( _func_1A2( "c130_propeller", "script_noteworthy" ), ::_unknown_1A13 );
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

    var_2 = _func_1A2( "hinge", "targetname" );
    var_2[0] _meth_807C( "veh_c130_ramp_scrape_loop" );
    var_3 = level._ID44077._ID740[2];

    for (;;)
    {
        if ( level._ID44077._ID740[2] > var_3 + 50 )
        {
            var_2[0] _meth_80B2();
            return;
        }

        var_4 = _func_0B9( 0, 2 );

        for ( var_5 = 0; var_5 < var_4; var_5++ )
            thread _unknown_19E6( var_2 );

        wait 0.05;
    }
}

_ID43370( var_0 )
{
    var_1 = _ID42237::_ID35164();
    var_2 = _func_0B8( 1.3 );
    var_1._ID740 = var_0[0]._ID740 * var_2 + var_0[1]._ID740 * 1 - var_2;
    var_1._ID740 = var_1._ID740 + ( 0, -10, -14 );
    var_1._ID65 = ( 308, 270, 0 );
    var_1 _meth_8053( var_0[0] );
    var_3 = _ID42237::_ID16299( "scrape_sparks" );
    _func_157( var_3, var_1, "tag_origin" );
    var_4 = 4;
    var_4 *= 20;

    for ( var_5 = 0; var_5 < var_4; var_5++ )
        wait 0.05;

    wait 4;
    var_1 _meth_80B7();
}

_ID54220( var_0 )
{
    level endon( "uaz_park" );
    self _meth_8070();
    self _meth_8053( var_0 );
    _ID42237::_ID14413( "uaz_player_in_control" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( var_1 == level._ID48653 )
            break;
    }

    level notify( "uaz_park_crash" );
    level._ID48653 _unknown_1899( self._ID31388, 1.5 );
    level._ID794 _meth_8058();
}

_ID51453()
{
    var_0 = ( -300, 600, 500 );
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 _meth_8055();
    level._ID794._ID29975 _meth_82C7( ( 300, 300, 300 ), 10 );
    level._ID794._ID29975 _meth_82BC( var_0, 1 );
    level._ID794._ID29975 _meth_805A();
}

ride_uaz_crash_player_death()
{
    level._ID794 _meth_85A8( "h2_boneyard_player_death_front", 1 );
    level._ID794 _meth_80F3( 1 );
    level._ID794._ID29975 _meth_805A();
    _ID42407::_ID12569( 1 );
    wait 0.1;
    level._ID794 _meth_80F3( 0 );
    level._ID794 _meth_8058();
}

_ID54486( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 5;
    var_6 = _func_06A( "script_model", var_1 );
    var_6._ID65 = ( 0, 0, 0 );
    var_6 _meth_80B8( "tag_origin" );
    var_6 _meth_8053( self );
    var_0._ID740 = var_1;
    var_0 _meth_8053( var_6 );
    _ID42237::_ID14413( "c130_hatch_open" );
    wait(var_5);

    if ( _func_02F( var_4 ) )
        wait(var_4);

    var_6._ID3189 = "c130_propeller";
    var_6 _ID42407::_ID3428();
    var_7 = level._ID30895["c130_propeller"]["rotate"][0];
    var_6 _meth_8148( "rotate_hatch", var_6._ID740, var_6._ID65, var_7 );
    var_6 _meth_811A( "rotate_hatch", var_7, 1, 0, var_2 );
    wait(var_3);
    var_6 _meth_811A( "rotate_hatch", var_7, 1, 0, 0 );
    level notify( "hinge_stopped",  var_0  );
}

_ID43814()
{
    wait(_func_0B8( 2 ));
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
    var_0 _meth_8053( self );
    _ID42237::_ID49667( _ID42237::_ID16299( "h2_c130_interior_light" ), var_0, "tag_origin", ( 575, 0, 165 ), ( 0, 0, 0 ) );
    _ID42237::_ID49667( _ID42237::_ID16299( "c138_takeoff_dust" ), var_0, "tag_origin", ( -340, 0, 6 ), ( 0, 180, 90 ) );
    wait 13.85;
    _ID42237::_ID49667( _ID42237::_ID16299( "scrape_sparks" ), var_0, "tag_origin", ( -340, 0, 6 ), ( 0, 180, 90 ) );
    self _meth_807C( "veh_c130_ramp_scrape_loop" );
    wait 4.15;
    _ID42237::_ID49667( _ID42237::_ID16299( "scrape_sparks_right" ), var_0, "tag_origin", ( -411, -37.5, 2 ), ( 0, 180, 90 ) );
    wait 0.9;
    _ID42237::_ID49667( _ID42237::_ID16299( "scrape_sparks_left" ), var_0, "tag_origin", ( -411, 35, 2 ), ( 0, 180, 90 ) );
}

_ID54203( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
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

        _func_192( var_0, var_10, level._ID794._ID740, 500 );
        wait(var_10);
    }
}

_ID53343( var_0 )
{
    _func_157( _ID42237::_ID16299( "angel_flare_swirl" ), self, "tag_flash_flares" );
    self _meth_80A1( "ac130_flare_burst" );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        thread _unknown_1E7D();
        wait(_func_0BA( 0.1, 0.25 ));
    }
}

_ID49047()
{
    if ( !_func_02F( level._ID54079 ) )
        level._ID54079 = 0;

    var_0 = _ID42407::_ID35028( "angel_flare_rig" );
    var_0._ID740 = self _meth_818C( "tag_flash_flares" );
    var_0._ID65 = self _meth_818D( "tag_flash_flares" );
    var_1 = level._ID1426["angel_flare_geotrail"];
    var_2 = level._ID30895["angel_flare_rig"]["ac130_angel_flares"].size;
    var_3 = level._ID30895["angel_flare_rig"]["ac130_angel_flares"][level._ID54079 % var_2];
    level._ID54079++;
    var_0 _meth_811A( "flare_anim", var_3, 1, 0, 1 );
    wait 0.1;
    _func_157( var_1, var_0, "flare_left_top" );
    _func_157( var_1, var_0, "flare_right_top" );
    wait 0.05;
    _func_157( var_1, var_0, "flare_left_bot" );
    _func_157( var_1, var_0, "flare_right_bot" );
    var_0 waittillmatch( "flare_anim",  "end"  );
    _func_158( var_1, var_0, "flare_left_top" );
    _func_158( var_1, var_0, "flare_right_top" );
    _func_158( var_1, var_0, "flare_left_bot" );
    _func_158( var_1, var_0, "flare_right_bot" );
}

_ID43004()
{
    _ID42407::_ID1892( "axis", ::_unknown_1F9D );
    _ID42407::_ID1892( "team3", ::_unknown_1FA8 );
    level._ID46456["axis"] = 15;
    level._ID46456["team3"] = 15;
    level._ID46456["axis_alive"] = 0;
    level._ID46456["team3_alive"] = 0;
    level thread _unknown_2735();
}

_ID49569()
{
    if ( !_func_0D4( self ) )
        return;

    var_0 = "default";

    if ( _func_02F( self._ID922 ) )
        var_0 = self._ID922;

    var_1 = level._ID15361;

    if ( var_1 == 0 )
        var_1 = 1;

    waitframe;

    switch ( var_0 )
    {

    }

    case "minigun_guy":
    case "spray_guy":
    case "struggle_guy":
    case "scripted_guy":
    case "enemy_dog":
    default:
}

_ID44401()
{
    _unknown_2138();
    thread _unknown_2109();
    thread _unknown_212C();
    thread _unknown_20F5();

    if ( self._ID1194 == "team3" && _func_0B7( 4 ) == 0 )
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

    if ( _func_02F( self._ID922 ) && self._ID922 == "delay_awareness" )
    {
        if ( _func_02F( self._ID29969 ) )
        {
            self _meth_8183( "ignore_player" );
            self waittill( "jumpedout" );
            wait 2;
            self _meth_8183( self._ID1194 );
        }
        else
        {
            self _meth_8183( "ignore_player" );
            _ID42237::_ID41078( 3, "damage", "goal" );
            self _meth_8183( self._ID1194 );
        }
    }
}

_ID52426()
{
    self endon( "death" );
    self endon( "tobedeleted" );

    for (;;)
    {
        _unknown_28D9( "bulletwhizby" );
        _unknown_28E1( "damage" );
        self waittill( "waittill_stack",  var_0  );

        if ( var_0 == "bulletwhizby" && self._ID44719._ID7 == level._ID794 || var_0 == "damage" && self._ID44719._ID97 == level._ID794 )
            break;
    }

    _unknown_2920();
    self _meth_8183( "aware_of_player" );
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

        if ( _func_1B3( self._ID322 ) )
        {
            self _meth_8179( var_0, var_1 );
            continue;
        }

        self _meth_8179( var_0 * 2, var_1 * 2 );
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
    _unknown_2236();
}

_ID47068( var_0, var_1 )
{
    var_1 thread _unknown_22D1();
    var_2 = var_0 _meth_80F2();
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
    var_0 = _func_11E( self._ID65 );
    var_1 = var_0 * 320;
    self._ID52888[0] = _func_06A( "script_origin", self._ID740 + var_1 );
    self._ID52888[0] _meth_8053( self );
    var_1 = var_0 * -320;
    self._ID52888[1] = _func_06A( "script_origin", self._ID740 + var_1 );
    self._ID52888[1] _meth_8053( self );
    self waittill( "death" );
    self._ID52888[0] _meth_80B7();
    self._ID52888[1] _meth_80B7();
}

_ID52547( var_0 )
{
    self endon( "death" );
    self endon( "reaction_end" );
    var_1 = _func_1A2( var_0, "script_noteworthy" );
    var_2 = 0;
    var_3 = 0;

    for (;;)
    {
        _ID42237::_ID14413( "littlebird_react" );
        _unknown_2A54( "damage" );
        _unknown_2A5D( "reached_dynamic_path_end" );
        _unknown_2A65( "react" );
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

        self _meth_829E( 25, 25 );
        _ID42411::_ID45813( "fast" );
        self _meth_828D( 65, 25, 25 );
        thread _ID42411::_ID40218( var_7 );
        _ID42237::_ID41098( "goal", "near_goal" );
        wait 2;
        thread _unknown_2480();
    }
}

_ID45255()
{
    self endon( "reaction_end" );
    self endon( "react" );
    self endon( "death" );
    wait 3;
    var_0 = 5000;
    var_1 = _func_03D();

    for (;;)
    {
        wait 0.05;

        if ( _func_02F( self._ID23512[0] _meth_8112( 0 ) ) || _func_02F( self._ID23512[1] _meth_8112( 0 ) ) )
        {
            var_1 = _func_03D();
            continue;
        }

        if ( var_1 + var_0 < _func_03D() )
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
    thread _unknown_2B0C();
}

_ID44962()
{
    self endon( "death" );
    _ID42407::_ID10871();
    _ID42407::_ID32353( 1 );
    self._ID199 = "no_cover";
    self._ID44962 = 1;
    var_0 = _func_0C8( self._ID1191, "targetname" );

    if ( _func_02F( var_0 ) )
        self _meth_81B1( var_0 );
    else
    {
        var_0 = _func_1A1( self._ID1191, "targetname" );
        self _meth_81B2( var_0._ID740 );
    }

    if ( _func_02F( var_0._ID851 ) )
        self._ID452 = var_0._ID851;
    else
        self._ID452 = 32;

    var_1 = 10;

    if ( !_func_02F( var_0._ID31429 ) || var_0._ID31429 == 0 )
        var_0._ID31429 = 1;

    self._ID7._ID30103 = var_0._ID31429;

    for ( var_2 = 0; var_2 < var_0._ID31429; var_2++ )
    {
        if ( _func_02F( var_0._ID1191 ) )
        {
            var_3 = _func_1A2( var_0._ID1191, "targetname" );
            var_4 = _ID42237::_ID28945( var_3 );
        }
        else if ( _func_02F( self._ID43929 ) )
        {
            var_4 = self._ID43929;
            var_1 = 30;
        }
        else
            return;

        if ( _func_02F( var_4._ID31388 ) && var_4._ID31388 == "straight" )
            self _meth_8097( 1 );

        if ( _func_0D6( var_4 ) )
        {
            var_5 = _func_06A( "script_origin", var_4._ID740 );
            var_5 _meth_8053( var_4 );
            self _meth_8173( var_5, 1 );
        }
        else
            self _meth_8173( var_4, 1 );

        _ID42237::_ID41123( "missile_fire", var_1 );
        var_4 notify( "rpg_fired" );
    }

    wait 2;
    self _meth_8174();
    _ID42407::_ID12445();
    _ID42407::_ID32353( 0 );
    self._ID199 = "cover";
    self._ID44962 = undefined;
    _unknown_2524();
    self notify( "rpg_guy_done" );
}

_ID50022()
{
    self endon( "death" );
    _ID42407::_ID10871();
    self._ID50022 = 1;
    var_0 = _func_0C8( self._ID1191, "targetname" );

    if ( _func_02F( var_0._ID851 ) )
        self._ID452 = var_0._ID851;
    else
        self._ID452 = 32;

    self _meth_81B1( var_0 );
    self._ID24844 = 1;
    self._ID513 = 1;
    self._ID24935 = 1;
    self._ID11002 = 1;
    self._ID199 = "no_cover";
    self _meth_8183( "lowthreat" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    var_1 = _ID42237::_ID3320( var_1 );
    self _meth_8173( var_1[0], 1 );

    if ( _func_02F( self._ID31523 ) )
        var_2 = self._ID31523;
    else
        var_2 = _func_0BA( 1, 2.5 );

    _ID42237::_ID41123( "goal", 5 );
    var_1[0] _meth_82B8( var_1[1]._ID740, var_2, var_2 / 2, var_2 / 4 );
    wait(var_2);
    self _meth_8174();
    _ID42407::_ID12445();
    self._ID24844 = undefined;
    self._ID513 = 0;
    self._ID24935 = undefined;
    self._ID11002 = undefined;
    self._ID199 = "cover";
    self _meth_8183( self._ID1194 );
    self._ID50022 = undefined;
    _unknown_25EB();
}

_ID977()
{
    var_0 = _func_1A2( self._ID1191, "targetname" );
    var_1 = _ID42237::_ID28945( var_0 );
    var_2 = var_1._ID740 - self._ID740 + ( 0, 0, 200 );
    _func_075( "smoke_grenade_american", self._ID740 + ( 0, 0, 80 ), var_2, 1.5 );
}

_ID50515()
{
    _ID42237::_ID3350( _func_1A2( "delete_excess", "targetname" ), ::_unknown_2800 );
    level thread _unknown_282C();
}

_ID44948()
{
    self waittill( "trigger" );
    level._ID46201 = undefined;

    if ( _func_02F( self._ID1191 ) )
        level._ID46201 = _func_1A1( self._ID1191, "targetname" );

    _ID42237::_ID14402( "delete_excess" );
    waitframe;
    _ID42237::_ID14388( "delete_excess" );
}

_ID50106( var_0 )
{
    if ( _func_02F( var_0._ID29969 ) )
        return 1;

    if ( _func_02F( var_0._ID50022 ) )
        return 1;

    if ( _func_02F( var_0._ID44962 ) )
        return 1;

    return 0;
}

_ID43725()
{
    for (;;)
    {
        _ID42237::_ID14413( "delete_excess" );
        var_0 = level._ID46201;
        var_1 = _func_0DE( "axis", "team3" );
        var_2 = 2560000;
        var_3 = var_1;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( _unknown_28AD( var_4 ) )
                continue;

            if ( _func_02F( var_0 ) && var_4 _meth_80B0( var_0 ) )
                continue;
            else if ( !_func_02F( var_0 ) && _func_0F5( var_4._ID740, level._ID794._ID740 ) < var_2 )
                continue;

            var_4 thread _unknown_2E12( 1 );
        }

        var_clear_2
        var_clear_0
        _ID42237::_ID14426( "delete_excess" );
    }
}

_ID53846( var_0 )
{
    self endon( "stop_hunt" );
    self endon( "death" );
    level._ID44132 endon( "death" );
    self _meth_826F( level._ID44132 );
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = undefined;

    for (;;)
    {
        var_3 = _func_119( level._ID44132._ID740 - level._ID794._ID740 );
        var_4 = undefined;
        var_5 = -1;
        var_6 = var_1;

        for ( var_10 = _func_1DA( var_6 ); _func_02F( var_10 ); var_10 = _func_1BF( var_6, var_10 ) )
        {
            var_7 = var_6[var_10];
            var_8 = _func_119( var_7._ID740 - level._ID794._ID740 );
            var_9 = _func_0FB( var_3, var_8 );

            if ( var_9 > var_5 )
            {
                var_5 = var_9;
                var_4 = var_7;
            }
        }

        var_clear_4
        var_clear_0

        if ( !_func_02F( var_2 ) || var_4 != var_2 )
        {
            self _meth_828D( 50, 20, 20 );
            self _meth_829E( 25, 25 );
            var_2 = var_4;
            _ID42237::_ID14388( "littlebird_at_goal" );
            thread _ID42411::_ID40218( var_4 );
            thread _unknown_2A1A();
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

    if ( _func_02F( var_0 ) )
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
    var_0 = _func_1A1( "btr80_miss_target", "targetname" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    var_1 = _ID42407::_ID3311( var_1 );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_4 = _func_06A( "script_origin", var_1[var_3]._ID740 );
        var_2[var_3] = var_4;
    }

    var_5 = _func_11A( self._ID740 - level._ID44132._ID740 );
    var_6 = level._ID44132._ID740 - var_0._ID740;
    var_7 = var_2;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_4 = var_7[var_8];
        var_4 _unknown_2E46( var_5, var_0._ID740, var_6 );
    }

    var_clear_1
    var_clear_0
    _unknown_306B( var_2, 3 );
    _ID42407::_ID10226( 2, _ID42237::_ID3294, var_2, ::_meth_80B7 );
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
    level._ID40070["hide_attack_forward"] = ::_unknown_2D55;
    level._ID40068["hide_attack_forward"] = ::_unknown_2D55;
    level._ID40070["idle"] = ::_unknown_2D83;
    level._ID40070["hidetoback_attack"] = ::_unknown_2CD0;
    level._ID40068["hidetoback_attack"] = ::_unknown_2CD0;
    level._ID40070["back_attack"] = ::_unknown_2CF4;
    level._ID40068["back_attack"] = ::_unknown_2CE5;
    level._ID40070["hide_attack_left"] = ::_unknown_2DD6;
    level._ID40068["hide_attack_left"] = ::_unknown_2DB7;
    level._ID40070["hide_attack_left_standing"] = ::_unknown_2E05;
    level._ID40068["hide_attack_left_standing"] = ::_unknown_2D0F;
    level._ID40070["hide_attack_back"] = ::_unknown_2DA3;
    level._ID40068["hide_attack_back"] = ::_unknown_2DA3;
    level._ID40070["hide_starting_back"] = ::_unknown_2D61;
    level._ID40068["hide_starting_back"] = ::_unknown_2D39;
    level._ID40070["hide_starting_left"] = ::_unknown_2D85;
    level._ID40068["hide_starting_left"] = ::_unknown_2D76;
    level._ID40070["backtohide"] = ::_unknown_2DAE;
    level._ID40068["backtohide"] = ::_unknown_2D8B;
    level._ID40070["react"] = ::_unknown_2DD2;
    level._ID40068["react"] = ::_unknown_2DEC;
    level._ID40070["free_attack"] = ::_unknown_2D3D;
    level._ID40068["free_attack"] = ::_unknown_2D81;
    level._ID40070["hide_attack_right"] = ::_unknown_2EBD;
    level._ID40068["hide_attack_right"] = ::_unknown_2EBD;
}
#using_animtree("generic_human");

_ID54367( var_0, var_1 )
{
    var_0 endon( "newanim" );
    var_0 endon( "death" );
    var_0 notify( "animontag_thread" );
    var_0 _meth_814B();
    var_0._ID24924 = 1;
    thread _unknown_2DB6( var_0 );
    var_0._ID9813 = %boneyard_crouch_exposed_death_twist;
    var_2 = _func_067( var_0._ID9813 );
    var_0 thread _unknown_2DC7( var_2 );
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
            var_0 _meth_81D6( var_5 );
        }

        wait 1;
    }
}

_ID54673( var_0 )
{
    self endon( "newanim" );
    self waittill( "death" );
    wait(var_0 * 0.6);
    self _meth_80B7();
}

_ID50861( var_0 )
{
    var_0 endon( "death" );
    var_0 waittill( "animontag_thread" );
    var_0 _meth_81D6( "stand", "crouch", "prone" );
}

_ID47832( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return self._ID1282 == "truck_physics" && var_1 >= 1;
}

_ID43754( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return _func_02F( _ID42412::_ID3052( self, var_1 )._ID54231 );
}

_ID50719( var_0, var_1 )
{
    var_2 = _ID42412::_ID3052( self, var_1 );
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID54231 );
    thread _unknown_2EE0( var_0, var_1 );
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
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return _func_02F( _ID42412::_ID3052( self, var_1 )._ID53738 );
}

_ID51142( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );
    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53738 );
    thread _unknown_2FC8( var_0, var_1 );
}

_ID53954( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    if ( !_func_02F( var_2._ID53738 ) )
        return _ID42412::_ID17566( var_0, var_1 );

    _ID42412::_ID3191( var_0, var_2._ID34225, var_2._ID53738 );
    thread _unknown_3061( var_0, var_1 );
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
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return _func_02F( _ID42412::_ID3052( self, var_1 )._ID43178 );
}

_ID43678( var_0, var_1 )
{
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return _func_02F( _ID42412::_ID3052( self, var_1 )._ID45775 );
}

_ID53314( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );
    var_2 = _ID42412::_ID3052( self, var_1 );

    for (;;)
    {
        if ( _func_02F( var_2._ID48666 ) )
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
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return _func_02F( _ID42412::_ID3052( self, var_1 )._ID47438 );
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
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return _func_02F( _ID42412::_ID3052( self, var_1 )._ID53367 );
}

guy_attack_forward_2_hide( var_0, var_1 )
{
    var_0 endon( "newanim" );
    self endon( "death" );
    var_0 endon( "death" );

    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return;

    var_2 = _ID42412::_ID3052( self, var_1 );

    if ( var_1 == 2 && _func_02F( var_2._ID47438 ) )
    {
        var_3 = var_0 _meth_8159( var_2._ID47438 );

        if ( var_3 > 0 )
        {
            var_4 = _func_067( var_2._ID47438 );
            wait(var_4 * 1 - var_3);
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
        if ( _func_02F( var_2._ID43992 ) )
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
        if ( _func_02F( var_2._ID45828 ) )
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
    if ( var_0 == level._ID28543 && _func_02F( var_0._ID24817 ) )
        return 0;

    return _func_02F( _ID42412::_ID3052( self, var_1 )._ID53367 );
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
    _ID42237::_ID3350( _func_1A2( "player_stray_trigger", "targetname" ), ::_unknown_3356 );
}

_ID48091()
{
    level._ID794 endon( "death" );
    var_0 = _func_1A2( self._ID1191, "targetname" );
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

    var_5 = _func_1A1( "killer_bird", "targetname" );
    var_5._ID740 = var_2._ID740;
    var_5._ID65 = var_2._ID65;
    var_6 = var_5 _ID42407::_ID35192();
    var_6 _meth_8265( var_3._ID740, 1 );
    var_6 _meth_828E( 100, 40, 30 );
    var_6 _meth_8264( 4000 );
    var_6 thread _unknown_344C( var_3._ID740 );
    var_6 _ID42237::_ID41098( "goal", "near_goal" );
    var_6 _meth_826F( level._ID794 );
    var_6 waittill( "goal" );
    var_4 = level._ID8760["20"];

    while ( !_ID42237::_ID41802( var_6._ID740, var_6._ID65, level._ID794._ID740, var_4 ) )
        wait 0.05;

    var_6 notify( "killing_player" );
    var_7 = [];
    var_7[0] = level._ID794;
    var_6 thread _unknown_372E( var_7, 5 );
    wait 2;
    level._ID794 _meth_8058();
}

_ID43707( var_0 )
{
    self endon( "killing_player" );
    var_1 = _func_0F4( level._ID794._ID740, var_0 );
    var_2 = var_0[2];

    for (;;)
    {
        var_3 = _func_11F( level._ID794._ID65 );
        var_4 = level._ID794._ID740 + var_1 * var_3 + ( 0, 0, var_2 );
        var_3 = _func_119( var_4 - level._ID794._ID740 );

        if ( _func_090( level._ID794 _meth_80AF(), var_4, 0, self ) )
            self _meth_8265( var_4, 1 );

        wait 2;
    }
}

_ID54663( var_0 )
{
    self _meth_8143( var_0 );
    self waittill( "death" );

    if ( _func_02F( self ) )
        self _meth_8144();
}

_ID46158( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_3 ) )
        _unknown_2D17( var_3 ) endon( "timeout" );

    if ( _func_031( var_0 ) )
    {
        var_4 = [];
        var_4[_func_128( var_0 )] = 1;
        var_0 = var_4;
    }

    if ( _func_02F( var_2 ) && var_2 )
        self endon( "death" );

    var_5 = 0;

    while ( !var_5 )
    {
        self waittill( "damage",  var_14, var_13, var_12, var_11, var_10, var_9, var_8, var_7, var_6  );

        if ( _func_02F( var_0 ) )
            var_5 = _func_02F( var_0[_func_128( var_10 )] );

        if ( var_5 && _func_02F( var_1 ) )
            var_5 = var_1 == var_7;
    }
}

_ID13799( var_0 )
{
    _ID42475::_ID34575( "aud_start_level_fadeout" );
    _func_0DB( "compass", 0 );
    _func_0DB( "hud_showStance", 0 );
    var_1 = _func_1AF();
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 _meth_80D3( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID55 = 0;
    var_1 _meth_808B( var_0 );
    var_1._ID55 = 1;
    wait(var_0);
    level._ID794 _meth_8334( 1 );
    _ID42407::_ID12569( 0 );
}

_ID50402( var_0, var_1 )
{
    level endon( "release_objective" );

    for (;;)
    {
        _func_1E8( var_0, var_1._ID740 );
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
    var_3 = _func_122( level._ID44132._ID740, level._ID44132._ID65, var_1, ( 0, 0, 0 ), self._ID740, ( 0, 0, 0 ) );
    var_4 = self._ID740 - var_1;
    var_5 = _func_11E( var_0 ) * -1;
    var_6 = _func_11F( var_0 );
    var_7 = _func_11D( var_0 );
    var_8 = var_6 * var_4[0] + var_5 * var_4[1] + var_7 * var_4[2];
    self._ID740 = var_1 + var_8 + var_2;
}

_ID52365( var_0, var_1 )
{
    var_2 = _func_11E( var_1 ) * -1;
    var_3 = _func_11F( var_1 );
    var_4 = _func_11D( var_1 );
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
        var_2 = _ID42237::_ID3296( var_2, _unknown_3887() );
        var_3 = undefined;
        var_4 = var_2;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( _func_0D6( var_5 ) && !_func_1A7( var_5 ) )
                continue;

            if ( _func_02F( var_5._ID29969 ) )
                continue;

            if ( self _meth_826E( var_5._ID740 + ( 0, 0, 20 ), 1, var_5 ) )
            {
                if ( _func_1B3( var_5 ) || _func_0D4( var_5 ) && !self._ID49504 )
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

        var_clear_2
        var_clear_0

        if ( !_func_02F( var_3 ) )
        {
            wait 0.5;
            continue;
        }

        var_1 = var_3;
        _ID42407::_ID13025( "have_target" );
        _unknown_389B( var_3, ( 0, 0, 20 ), 0, 5 );
        _ID42407::_ID13021( "have_target" );
    }
}

_ID45510( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self notify( "clear_turret_target" );
    self endon( "clear_turret_target" );

    if ( _func_1A7( var_0 ) )
        thread _unknown_38EE( var_0 );

    if ( !_func_02F( var_0._ID52888 ) )
        self _meth_826C( var_0, var_1 );
    else
        self _meth_826C( var_0._ID52888, var_1 );

    self waittill( "turret_on_target" );

    if ( _func_02F( var_3 ) )
        _unknown_2FEC( var_3 ) endon( "timeout" );

    if ( !_func_02F( var_2 ) )
        thread _unknown_3943( var_0, var_1 );

    var_4 = _func_03D();

    for (;;)
    {
        _ID42407::_ID13031( "hold_fire" );
        self _meth_8272();
        wait 0.2;
    }
}

_ID43446( var_0 )
{
    self endon( "clear_turret_target" );

    if ( _func_02F( var_0._ID52888 ) )
        var_0._ID52888 _ID42407::_ID1985( _ID42407::_ID41116, "death" );

    var_0 _ID42407::_ID1985( _ID42237::_ID41098, "death", "pain_death" );
    _ID42407::_ID11232();
    wait(_func_0B8( 1 ));

    if ( _ID42407::_ID20542( self._ID43064, var_0 ) && !_func_1A7( var_0 ) )
        self._ID43064 = _ID42237::_ID3321( self._ID43064, var_0 );

    self notify( "clear_turret_target" );
}

_ID46253( var_0, var_1 )
{
    self endon( "death" );
    self endon( "clear_turret_target" );
    var_2 = _func_0BA( 1000, 2000 );
    var_3 = undefined;

    for (;;)
    {
        var_4 = _ID42237::_ID41075( "turret_no_vis", "turret_on_vistarget" );

        if ( var_4 == "turret_no_vis" )
        {
            if ( self _meth_826E( var_0._ID740 + var_1, 1, var_0 ) )
                continue;

            if ( !_func_02F( var_3 ) )
                var_3 = _func_03D();

            if ( var_3 + var_2 < _func_03D() )
                break;

            continue;
        }

        var_3 = undefined;
    }

    _unknown_3A32();
    self notify( "clear_turret_target" );
}

_ID44966()
{
    self endon( "death" );
    _ID42407::_ID13025( "hold_fire" );
    var_0 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_0 _meth_8053( self, "tag_origin", ( 500, 0, 100 ), ( 0, 0, 0 ) );
    self _meth_826C( var_0 );
    _ID42237::_ID41098( "turret_on_target", "death" );

    if ( _func_1A7( self ) )
        self _meth_826D();

    var_0 _meth_80B7();
    _ID42407::_ID13021( "hold_fire" );
}

_ID46752( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        _ID42407::_ID13027( "have_target" );
        _ID42407::_ID13027( "allow_stop" );
        var_2 = _func_0B9( var_0, var_1 );
        self _meth_828D( var_2, 10 );
        _ID42407::_ID13032( "have_target", "allow_stop" );
        self _meth_829B( 10 );
    }
}

_ID46027()
{
    var_0 = [];
    var_1 = "";

    if ( _func_02F( self._ID1194 ) )
        var_1 = self._ID1194;
    else if ( _func_02F( self._ID31474 ) )
        var_1 = self._ID31474;
    else
    {

    }

    switch ( var_1 )
    {

    }

    if ( var_1 != "allies" )
    {
        if ( var_0.size > 0 )
            var_0 = _ID42237::_ID3312( var_0, level._ID794, 0 );
        else
            var_0[0] = level._ID794;
    }

    return var_0;
    case "allies":
    case "axis":
    case "team3":
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
        _unknown_3C09( var_0, "smoketrail_rpg_sp_boneyard" );
        wait(_func_0BA( 3, 4 ));
    }
}

_ID49433( var_0, var_1 )
{
    wait(self._ID916);
    var_2 = _func_1A1( self._ID1191, "targetname" );
    var_3 = _func_1C8( "rpg_distant_stable", self._ID740, var_2._ID740 );

    if ( _func_02F( var_1 ) )
    {
        var_3 _meth_850F();
        _func_157( _ID42237::_ID16299( var_1 ), var_3, "tag_fx" );
    }

    if ( _func_02F( var_0 ) )
    {
        wait(var_0);

        if ( _func_02F( var_3 ) )
            var_3 _meth_80B7();
    }
}

_ID53727( var_0 )
{
    level endon( var_0 );
    self endon( "death" );

    for (;;)
    {
        self waittill( "damage",  var_2, var_1  );

        if ( _func_1B3( var_2 ) )
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
    wait(_func_0BA( var_0, var_1 ));
    var_3 = _func_0DE( var_2[self._ID1194] );
    var_3 = _func_1C0( var_3, self._ID740 );
    var_4 = var_3[0];

    if ( _func_02F( var_4 ) )
        self _meth_8058( var_4 _meth_80AF(), var_4 );
    else
        self _meth_8058( self _meth_80AF() );
}

_ID45331( var_0 )
{
    self endon( "death" );
    self notify( "tobedeleted" );
    _ID42407::_ID10871();
    _unknown_3D03( 3, 7 );
}

_ID51812( var_0 )
{
    var_1 = _func_11F( ( 0, 0, 0 ) );
    var_2 = _func_119( var_0 - self._ID740 );
    var_3 = _func_0FB( var_1, var_2 );
    return var_3 < -0.2;
}

_ID51156()
{
    for (;;)
    {
        _ID42237::_ID14413( "switch_color" );
        var_0 = _func_0DE( "axis", "team3" );
        var_1 = var_0;

        for ( var_5 = _func_1DA( var_1 ); _func_02F( var_5 ); var_5 = _func_1BF( var_1, var_5 ) )
        {
            var_2 = var_1[var_5];
            var_3 = var_2._ID31209;
            var_4 = _func_129( level._ID46670[var_2._ID1194], " " );

            if ( _func_02F( var_3 ) )
            {
                if ( _func_02F( var_3 ) && !_ID42407::_ID20542( var_4, var_3 ) || _func_02F( var_2._ID25508 ) )
                    var_2 _ID42407::_ID32315( var_4[0] );

                continue;
            }

            if ( _func_02F( var_2._ID25508 ) )
                var_2._ID25508 = var_4[0];
        }

        var_clear_4
        var_clear_0
        _ID42237::_ID14388( "switch_color" );
    }
}

_ID45796( var_0, var_1 )
{
    if ( !_func_02F( self._ID44719 ) )
        self._ID44719 = _func_1A5();

    thread _unknown_3E2C( var_0, var_1 );
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

    if ( !_func_02F( var_1 ) )
        var_1 = self;

    var_1 waittill( var_0,  var_1, var_1, var_1, var_1, var_1, var_1  );

    if ( _func_02F( var_access_5 ) )
        self._ID44719._ID7 = var_access_5;

    if ( _func_02F( var_access_4 ) )
        self._ID44719._ID97 = var_access_4;

    if ( _func_02F( var_access_3 ) )
        self._ID44719._ID146 = var_access_3;

    if ( _func_02F( var_access_2 ) )
        self._ID44719._ID248 = var_access_2;

    if ( _func_02F( var_0 ) )
        self._ID44719._ID12279 = var_0;

    if ( _func_02F( var_1 ) )
        self._ID44719._ID46029 = var_1;

    self notify( "waittill_stack",  var_access_7, var_access_6  );
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
    self _meth_8271( "littlebird_FFAR" );

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        var_4 = var_0[var_3 % var_0.size];
        self _meth_826C( var_4 );
        var_5 = self _meth_8272( var_2[var_3 % var_2.size], var_4 );
        var_5 _ID42237::_ID10192( 1, ::_meth_81E7 );

        if ( _func_02F( var_4._ID916 ) )
        {
            wait(var_4._ID916);
            continue;
        }

        wait(_func_0BA( 0.2, 0.3 ));
    }
}

_ID51568( var_0 )
{
    self._ID740 = var_0._ID740;

    if ( _func_02F( var_0._ID65 ) )
        self._ID65 = var_0._ID65;

    var_1 = _func_1A2( self._ID1191, "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_1A8( var_3 ) )
            var_3._ID1193 = var_0._ID1193;
    }

    var_clear_2
    var_clear_0
    self._ID1191 = var_0._ID1193;
    var_5 = thread _ID42411::_ID35194();
    return var_5;
}

_ID47263( var_0 )
{
    if ( !_ID42411::_ID20763() )
        self _meth_8289( var_0 );

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
        self _meth_8343( var_0._ID740 );
        self _meth_8345( var_0._ID65 );
    }
    else
    {
        self._ID740 = var_0._ID740;
        self._ID65 = var_0._ID65;
    }
}

_ID44678()
{
    _ID42237::_ID3350( _func_1A2( "delete_not_touching", "targetname" ), ::_unknown_407E );
}

_ID45677()
{
    self waittill( "trigger" );

    while ( level._ID794 _meth_80B0( self ) )
        wait 0.5;

    _ID42237::_ID38863();
}

_ID51569()
{
    self endon( "death" );

    for (;;)
    {
        if ( self _meth_8290() < 5 )
        {
            wait 0.1;
            continue;
        }

        var_0 = self._ID740;
        wait 0.1;
        var_1 = _func_11F( self._ID65 );
        var_2 = self._ID740 + var_1 * 100;
        var_1 = _func_11E( self._ID65 );
        var_3 = self._ID740 - var_1 * 30;
        var_4 = self._ID740 + var_1 * 30;
        _unknown_4118( var_2, var_3, var_4 );
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
    if ( !_func_02F( var_1 ) )
        return;

    return;
}

_ID47927( var_0 )
{
    if ( !_func_02F( level._ID47927 ) )
    {
        level._ID47927 = _func_1A5();
        level._ID47927._ID22377 = 0;
    }

    var_1 = _func_1AF();
    var_1._ID1331 = 0;
    var_1._ID1339 = -80 + level._ID47927._ID22377 * 14;
    var_1 _meth_80D1( var_0 );
    var_1._ID393 = 1.46;
    var_1._ID44 = "center";
    var_1._ID45 = "middle";
    var_1._ID499 = "center";
    var_1._ID1284 = "bottom";
    var_1._ID983 = 1;
    var_1._ID45400 = var_0;
    var_2 = level._ID47927._ID22377;
    var_1 thread _unknown_41DF( var_2 );
    level._ID47927._ID22377++;
    var_3 = var_0.size + 1 / 50 + 1;
    wait(var_3);
    var_1 _meth_808B( 0.5 );
    var_1._ID55 = 0;
    level._ID47927._ID22377--;
    wait 0.5;
    level._ID47927 notify( "move",  var_2  );
    var_1 notify( "destoyed" );
    var_1 _meth_808F();
}

_ID45851( var_0 )
{
    self endon( "destoyed" );

    for (;;)
    {
        level._ID47927 waittill( "move",  var_1  );

        if ( var_1 > var_0 || var_0 == 0 )
            continue;

        self _meth_808D( 0.5 );
        self._ID1339 = self._ID1339 - 14;
        var_0--;
    }
}

_ID50429()
{
    var_0 = _func_1F4();
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID989 ) && var_3._ID989 & 1 )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = var_1;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        level _unknown_42CB( var_3 );
    }

    var_clear_1
    var_clear_0
}

_ID51141( var_0 )
{
    for ( var_1 = ( _func_0BA( 0, 1 ), _func_0BA( 0, 1 ), _func_0BA( 0, 1 ) ); _func_02F( var_0._ID1191 ); var_3 = var_0._ID740 )
    {
        var_2 = var_0._ID740;
        var_0 = _func_1F2( var_0._ID1191, "targetname" );
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

        if ( _func_03A( "debug_stance", 0 ) )
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
    level._ID794._ID29975 _meth_8156( %h2_boneyard_player_turn_reaction_left_add, 1, var_0 );
    level._ID794._ID29975 _meth_8156( %h2_boneyard_player_turn_reaction_right_add, 1, var_0 );
    level._ID794._ID29975 _meth_8156( %player_uaz_additive_turn_left, 0.0, var_0 );
    level._ID794._ID29975 _meth_8156( %player_uaz_additive_turn_right, 0.0, var_0 );

    for (;;)
    {
        var_3 = level._ID48653 _meth_8292();
        var_4 = 0;
        var_5 = 0;

        if ( _func_0C3( var_3[1] ) > var_1 )
        {
            var_6 = _func_0EE( _func_0C3( var_3[1] ) - var_1 / var_2 - var_1, 0, 1 );

            if ( var_3[1] > var_1 )
                var_5 = var_6;
            else
                var_4 = var_6;
        }

        level._ID794._ID29975 _meth_8156( %player_uaz_additive_turn_right, var_5, var_0 );
        level._ID794._ID29975 _meth_8156( %player_uaz_additive_turn_left, var_4, var_0 );
        waittillframeend;
    }
}

portal_groups_init()
{
    var_0 = _func_1A2( "portal_group", "classname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_125( var_3._ID1193, "portal_group_" ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = var_1;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        _ID42237::_ID14400( var_3._ID1193 );

        if ( !_func_02F( var_3._ID922 ) || _func_125( var_3._ID922, level._ID35897 + "," ) || _ID42407::_ID20569() )
            _ID42237::_ID14402( var_3._ID1193 );
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID3350( var_1, ::_unknown_495F );
}

portal_group()
{
    for (;;)
    {
        if ( _ID42237::_ID14385( self._ID1193 ) )
        {
            _func_31A( self._ID1193, 1 );
            _ID42237::_ID14426( self._ID1193 );
        }
        else
        {
            _func_31A( self._ID1193, 0 );
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
    _func_2F1( 0, "xy", var_0, var_1 );
    _ID42237::_ID14413( "uaz_mount_end" );
    _func_2F1( 0, "xy", var_2, var_3 );
}

bya_smodel_groups_init()
{
    if ( _ID42407::_ID20569() )
        return;

    var_0 = [ 1, 2, 3, 4, 5, 6, 7 ];
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID14400( "smodelgroup_" + var_2 );
    }

    var_clear_2
    var_clear_0

    switch ( level._ID35897 )
    {

    }

    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        thread _unknown_4B87( var_2 );
    }

    var_clear_1
    var_clear_0
    case "ride_end":
    case "ride":
    case "higround":
    case "flyby":
    case "road":
    case "intro":
    default:
}

smodel_group( var_0 )
{
    for (;;)
    {
        if ( _ID42237::_ID14385( "smodelgroup_" + var_0 ) )
            _func_31B( var_0 );
        else
            _func_31C( var_0 );

        level waittill( "smodelgroup_" + var_0 );
    }
}

animatevariousmodel( var_0, var_1, var_2 )
{
    self._ID3189 = var_0;
    _ID42259::_ID32556();

    if ( _func_02F( var_1 ) )
        _ID42237::_ID14413( var_1 );

    var_3 = _ID42407::_ID16120( "idle" );
    self _meth_8155( var_3 );
    var_4 = _func_0B8( 1 );
    self _meth_8120( var_3, var_4 );

    if ( _func_02F( var_2 ) )
    {
        _ID42237::_ID14413( var_2 );
        self _meth_80B7();
    }
}

resetangle()
{
    self._ID65 = ( 0, 0, 0 );
}

init_scope_fov_setup()
{
    _func_0DB( "r_lodFOVScaleOverride", 1 );
    _func_0DB( "r_lodFOVScaleOverrideStartMaxAngle", 65 );
    _func_0DB( "r_lodFOVScaleOverrideStartMinAngle", 55 );
    _func_0DB( "r_lodFOVScaleOverrideStopMaxAngle", 15 );
    _func_0DB( "r_lodFOVScaleOverrideStopMinAngle", 0 );
    _func_0DB( "r_lodFOVScaleOverrideAmount", 0.75 );
}

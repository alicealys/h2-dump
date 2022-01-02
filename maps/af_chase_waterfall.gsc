// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    var_0 = getent( "enemy_pickup_heli", "targetname" );
    var_0 _ID42407::_ID1947( ::_ID48004 );
    var_0 _ID42407::_ID1947( ::pavelow_perf );
    var_1 = getent( "pre_rapids_trigger", "targetname" );
    var_1 thread _ID51101();
    var_2 = getent( "trigger_just_before_boatride_end", "targetname" );
    var_2 thread _ID43052();
    var_3 = getent( "trigger_pavelow_pilot_dialogue", "targetname" );
    var_3 thread _ID44298();
    var_4 = getvehiclenode( "over_waterfall_test", "script_noteworthy" );
    var_4 thread _ID53867();
    var_5 = getent( "zodiac_blend_target", "targetname" );
    var_5 hide();
    thread _ID53465();
    var_6 = getent( "weapon_pullout_before_waterfall", "targetname" );
    var_6 thread _ID49707();
    var_7 = getent( "trigger_stop_boat_nagging", "targetname" );
    var_7 thread _ID44084();
    thread _ID52713();
    _ID53732();
}

_ID53732()
{
    _ID42237::_ID14400( "steady_shot" );
    _ID42237::_ID14400( "idle_over_waterfall" );
    _ID42237::_ID14400( "boat_freeze" );
    _ID42237::_ID14400( "player_in_position_for_boarding_sequence" );
    _ID42237::_ID14400( "price_steady1" );
    _ID42237::_ID14400( "price_steady2" );
    _ID42237::_ID14400( "price_steady3" );
    _ID42237::_ID14400( "test_boat_is_on_spline" );
    _ID42237::_ID14400( "rocky_bumps" );
    _ID42237::_ID14400( "release_the_brakes" );
    _ID42237::_ID14400( "pickup_heli_ok_to_delete_now" );
    _ID42237::_ID14400( "price_fired_all_his_shots_at_heli" );
}

_ID46918()
{
    for (;;)
    {
        wait(randomfloatrange( 0.1, 0.4 ));

        if ( !_ID42237::_ID14385( "rocky_bumps" ) )
            continue;

        if ( _ID42237::_ID8201() )
        {
            level.player playrumblelooponentity( "damage_heavy" );
            continue;
        }

        level.player playrumblelooponentity( "damage_light" );
    }
}

_ID44247()
{
    level notify( "clear_rapids_junk" );
    level.player _meth_80b6( "damage_heavy" );
    level.player _meth_80b6( "damage_light" );
    level.player thread _ID42237::_ID36516( "zodiac_waterfall_idle" );
    level.player thread _ID42237::_ID36516( "zodiac_waterfall_sustain" );
    level._ID48793 delete();
}

_ID50940()
{
    var_0 = _ID42237::_ID35164();
    level._ID49992 = var_0;
    var_1 = _ID42407::_ID16268( "full_brake_until_waterfall_end" );
    var_2 = _ID42237::_ID16638( var_1.target, "targetname" );
    var_3 = _ID42237::_ID16638( var_2.target, "targetname" );
    var_4 = distance( var_2.origin, var_3.origin );
    var_5 = 175;
    var_6 = var_4 / var_5;
    var_0.origin = var_2.origin;
    var_0 thread _ID51260::_ID50246();
    _ID42237::_ID14413( "full_brake_until_waterfall_end" );
    var_0 moveto( var_3.origin, var_6, 0, 0 );
}

_ID50528()
{
    self endon( "death" );

    for (;;)
        wait 0.05;
}

_ID49418()
{
    if ( _ID42237::_ID14385( "player_brakes_on_waterfall" ) )
        return;

    level endon( "player_brakes_on_waterfall" );
    wait 15;
    maps\af_chase_code::_ID43792();
}

_ID48103()
{
    var_0 = level._ID46392;
    var_1 = _ID42237::_ID16638( "waterfall_goal", "targetname" );
    _ID42237::_ID14425( "player_on_final_ride", 5 );

    if ( !_ID42237::_ID14385( "player_on_final_ride" ) )
    {
        maps\af_chase_code::_ID43792();
        return;
    }

    if ( !level.player worldpointinreticle_circle( level._ID48502.origin, 65, 1000 ) )
    {
        maps\af_chase_code::_ID43792();
        return;
    }

    thread _ID49418();
    _ID42407::_ID4422( "end_of_boatride" );
    var_2 = getvehiclenode( "players_boat_end_path_test", "targetname" );
    level endon( "clear_rapids_junk" );
    childthread _ID46918();
    var_3 = level.player _ID42407::_ID15963();
    var_3._ID20129 = 0.025;
    level._ID48793 = var_3;
    level._ID46392 endon( "death" );
    level notify( "new_river_current" );
    level._ID51596 = 0;
    var_0 vehphys_setconveyorbelt( 0, 0 );
    var_4 = _ID42237::_ID35164();
    level._ID50860 = 0;
    var_5 = 1500;
    var_6 = 500;
    var_7 = 20;
    _ID42237::_ID14402( "steady_boat_participating" );
    _ID42237::_ID14402( "rocky_bumps" );
    thread _ID50940();
    var_8 = 0;
    var_9 = 40;
    var_10 = -80;
    var_11 = var_8;
    var_12 = -300;
    var_13 = var_9;
    var_14 = 25;
    var_15 = 350;
    var_16 = level.player._ID25468;
    var_17 = 0;
    var_18 = 1;
    var_19 = -60;
    var_20 = var_18;
    var_21 = -70;
    var_22 = var_17;
    var_23 = 2;
    var_23 *= 1000;
    var_24 = 0;
    var_25 = 0;
    var_26 = _ID42407::_ID16121( "zodiac_rapids_price", "generic" );
    var_27 = getanimlength( var_26 );
    var_28 = getnotetracktimes( var_26, "dialog" );
    var_29 = var_27 * var_28[0] + 2;
    var_30 = ( 25221.9, 25839.2, -5296.5 );
    var_31 = 0;
    var_32 = 0;
    var_33 = 0;

    for (;;)
    {
        var_34 = level.player getnormalizedmovement()[1];
        var_16 += var_34 * var_14;
        var_16 = clamp( var_16, var_15 * -1, var_15 );
        var_35 = _ID51260::_ID53431();
        var_36 = _ID51260::_ID53297();
        var_37 = _ID42237::_ID14385( "boat_hits_right_side" ) || _ID42237::_ID14385( "boat_hits_left_side" );

        if ( var_37 )
            var_16 *= 0.85;

        var_38 = var_16;

        if ( abs( var_38 ) < 200 )
        {
            var_39 = sin( gettime() * 0.1 ) * 80;
            var_38 += var_39;
            var_38 = clamp( var_38, -200, 200 );
        }

        if ( var_5 > var_6 )
            var_5 -= var_7;

        var_40 = _ID51260::_ID48037( var_35, var_36 + var_5, var_38 );

        if ( _ID42237::_ID14385( "waterfall_goal_swap" ) )
        {
            if ( var_25 < 1 )
                var_25 += 0.01;

            var_40 = vectorlerp( var_40, var_1.origin, var_25 );
        }

        var_40 = _ID42407::_ID32530( var_40, var_0.origin[2] );
        var_41 = 35;

        if ( _ID42237::_ID14385( "test_boat_is_on_spline" ) )
        {
            var_42 = level._ID45467;

            if ( _ID42237::_ID14385( "full_brake_until_waterfall_end" ) )
                var_42 = level._ID49992;

            var_43 = _ID51260::_ID28677( var_35, var_36, var_42._ID43692, var_42._ID28675 );
            var_41 = _ID42407::_ID17153( var_43, var_10, var_11, var_12, var_13 );
            var_41 = clamp( var_41, var_8, var_9 );

            if ( _ID42237::_ID14385( "full_brake_until_waterfall_end" ) )
            {
                var_44 = _ID42407::_ID17153( var_43, var_19, var_20, var_21, var_22 );
                var_44 = clamp( var_44, var_17, var_18 );
                var_0.veh_brake = var_44;
            }
            else if ( _ID42237::_ID14385( "player_brakes_on_waterfall" ) )
            {
                var_44 = _ID42407::_ID17153( var_43, var_19, var_20, var_21, var_22 );
                var_44 = clamp( var_44, var_17, var_18 );
                var_0.veh_brake = var_44;
            }
        }

        if ( _ID42237::_ID14385( "boat_start_rubber_band" ) )
        {
            var_32 = 1;
            var_41 = var_0 _ID44343( var_30, var_26, var_27, var_29, var_8, var_9 );
        }
        else if ( var_32 )
        {
            var_41 = 0;

            if ( !var_33 )
            {
                var_33 = 1;
                var_31 = _ID53345( var_30 );
            }

            var_0.veh_topspeed = var_31;
        }

        var_0 vehicledriveto( var_40, var_41 );

        if ( !var_24 )
        {
            var_24 = 1;
            var_0.veh_brake = 0;
        }

        wait 0.05;
    }

    if ( 1 )
        return;

    level._ID46392 thread _ID42411::_ID40218( var_2 );
    level._ID46392 startpath( var_2 );
    level._ID46392 _ID42237::_ID10192( 0.2, ::vehicle_setspeed, 35, 15, 15 );
    level._ID46392 vehicle_turnengineoff();
    var_45 = 0.3;
    var_46 = 0;
    childthread _ID46918();
    _ID42237::_ID14402( "rocky_bumps" );
    var_3 = level.player _ID42407::_ID15963();
    var_3._ID20129 = 0.025;
    level._ID48793 = var_3;

    for (;;)
    {
        if ( maps\af_chase_code::_ID48435() )
        {
            _ID42237::_ID14402( "steady_boat_participating" );
            level.player thread _ID42237::_ID36516( "zodiac_waterfall_idle" );
            level.player thread _ID42237::_ID27000( "zodiac_waterfall_sustain" );
            level._ID46392._ID45403 = 1;
            _ID42237::_ID14388( "rocky_bumps" );
            var_3._ID20129 = 0.225;

            while ( maps\af_chase_code::_ID48435() )
                wait 0.05;

            var_3._ID20129 = 0.0001;
            _ID42237::_ID14402( "rocky_bumps" );
            level.player thread _ID42237::_ID36516( "zodiac_waterfall_sustain" );
            level.player thread _ID42237::_ID27000( "zodiac_waterfall_idle" );
            var_46 = 0;
        }
        else
        {
            level._ID46392._ID45403 = -1;
            _ID42237::_ID14388( "steady_boat_participating" );
            var_46 += 0.05;
        }

        if ( var_46 > var_45 )
        {
            var_46 = 0;
            level._ID46392 joltbody( level._ID46392.origin + ( 0, 0, 64 ) + _ID42237::_ID28976( 32 ), 0.1 );
        }

        wait 0.05;
    }
}

_ID44343( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_0[1] - level.player.origin[1];
    var_7 = level._ID28543 getanimtime( var_1 ) * var_2;
    var_8 = var_3 - var_7;
    var_9 = var_6 / var_8 / 17.6;

    if ( level.player.origin[1] > var_0[1] )
        var_9 = 0;
    else if ( var_8 > 0.4 )
        self.veh_topspeed = var_9;
    else
        self.veh_topspeed = 10;

    var_10 = clamp( var_9, var_4, var_5 );
    return var_10;
}

_ID53345( var_0 )
{
    var_1 = 80;
    var_2 = 200;
    var_3 = var_0[1] - level.player.origin[1];
    var_3 = clamp( var_3, var_1, var_2 );
    var_4 = ( var_3 - var_1 ) / ( var_2 - var_1 );
    var_5 = 3 + var_4 * 8;
    return var_5;
}

_ID44783()
{
    wait 0.6;
    playfxontag( _ID42237::_ID16299( "heli_water_drips" ), self, "TAG_DOOR_REAR" );
}

_ID48516()
{
    level._ID28543 endon( "death" );
    level._ID28543 notify( "waterfall_sequence" );
    level._ID28543._ID54140 = 1;
    level._ID28543 _ID42407::_ID28876();
    level.player _ID42407::_ID13025( "zodiac_aim_helicopter" );
    level._ID28543 _meth_859d( 0 );
    level._ID46392 childthread _ID46380( level._ID28543 );
    childthread _ID54285();
    level._ID46392 setanim( level._ID46392 _ID42407::_ID16120( "player_view_fall_anim" ) );
    level._ID46392 setanimlimited( level._ID46392 _ID42407::_ID16120( "player_view_fall" ), 1 );
    _ID42237::_ID14413( "price_shoot" );
    thread _ID45440();
    thread _ID48703();
    var_0 = level._ID52084;
    var_1 = level._ID28543 gettagorigin( "tag_flash" );
    var_2 = var_0 gettagorigin( "tag_guy0" ) + ( 0, 0, 875 );
    magicbullet( "m203", var_1, var_2 );
    playfxontag( level._ID1426["fx/muzzleflashes/m203_flshview"], level._ID28543, "tag_flash" );
    wait 0.7;
    level.player _ID42407::_ID13025( "disable_shooting" );
    level._ID47133 _ID42407::_ID10226( 0.05, ::_ID43513 );
    var_3 = _ID42237::_ID16299( "fx/explosions/large_vehicle_explosion" );
    playfxontag( var_3, var_0, "tag_guy0" );
    _ID42475::_ID34575( "aud_start_mix_seaknight_down" );
    _ID42237::_ID14402( "price_fired_all_his_shots_at_heli" );
    level._ID46392 thread _ID42407::_ID27079( "zodiac_player_reverse" );
    _ID42237::_ID14402( "idle_over_waterfall" );
}

_ID45440()
{
    var_0 = _ID54167::_ID43386( "zodiac fall" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 8, 8 ) _ID54167::_ID44518( 0 ) _ID54167::_ID52391( level._ID47133 ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 3.1 ) _ID54167::_ID50321( 4.0, -1, 4, 4 ) _ID54167::_ID44518( 8 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44545( 1 );
    var_0 _ID54167::_ID48800( 4.28 ) _ID54167::_ID50321( 64, 800, 8, 8 ) _ID54167::_ID44545( 1 );
    var_0 _ID54167::_ID48800( 6.1 ) _ID54167::_ID50321( 4.0, -1, 16, 16 ) _ID54167::_ID44518( 50 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44545( 1 );
    var_0 _ID54167::_ID48800( 8.12 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.7 ) _ID54167::_ID47198( 0.1, 1.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48800( 8.6 ) _ID54167::_ID48161( "tank_rumble", level.player, 1.3 );
    var_0 _ID54167::_ID48166();
}

_ID54285()
{
    var_0 = 2;

    for (;;)
    {
        if ( _ID42237::_ID14385( "price_fire_zodiac" ) )
        {
            level._ID28543 shoot();
            level._ID28543 thread _ID42407::_ID27080( "price_sniper_fire_at_helicopter", "tag_flash" );
            var_0--;
            _ID42237::_ID14388( "price_fire_zodiac" );
        }

        if ( var_0 == 0 )
            break;

        waittillframeend;
    }
}

_ID47924()
{
    wait 2;
    _ID42407::_ID23778();
}

_ID49707()
{
    self waittill( "trigger" );
    thread _ID48962();
}

_ID45755()
{
    var_0 = getent( "water_fall_edge_trigger", "targetname" );
    level._ID46392 notify( "stop_targetting" );
    level.player allowstand( 1 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    setsaveddvar( "fx_alphathreshold", 40 );
    playfxontag( _ID42237::_ID16299( "splash_over_waterfall" ), level._ID46392, "tag_guy2" );
    level._ID46392 notify( "kill_treadfx" );
    maps\af_chase_code::_ID52556();
    var_1 = getent( var_0.target, "targetname" );
    var_2 = getent( "on_foot_destination", "targetname" );
    level.player disableweapons();
    level notify( "player_over_the_waterfall" );
    setsaveddvar( "compass", 0 );
    var_3 = var_1.origin[2] - 10;
    level.player playerlinktoblend( level._ID46392, "tag_player", 0.15, 0.05, 0.05 );

    while ( level.player.origin[2] > var_3 )
        wait 0.05;

    _ID27345();
    _ID42237::_ID14402( "pickup_heli_ok_to_delete_now" );
    level notify( "stop_music_at_splash" );

    if ( isdefined( level._ID44901 ) )
    {
        level._ID44901 playrumbleonentity();
        level._ID44901 _ID42237::_ID10192( 0.05, ::delete );
    }

    thread _ID54723();
    var_4 = _ID42407::_ID32530( level._ID43587.origin, var_1.origin[2] - 55 );
    level._ID46392 delete();
    var_5 = getentarray( "script_vehicle_zodiac", "classname" );
    var_6 = getentarray( "script_vehicle_zodiac_physics", "classname" );
    _ID42237::_ID3294( var_5, ::delete );
    _ID42237::_ID3294( var_6, ::delete );
    level._ID43587.origin = var_4;
    level.player unlink();
    level.player playerlinktodelta( level._ID43587, "tag_player", 1, 0, 0, 0, 0 );
    _ID42237::_ID14402( "boat_freeze" );
    ambientstop();
    level.player playrumblelooponentity( "damage_heavy" );
    earthquake( 0.3, 3.5, level.player.origin, 1000 );
    level.player setwatersheeting( 3, 3 );

    if ( isdefined( level._ID28543._ID15093 ) )
        level._ID28543 _ID42407::_ID15095();

    level._ID28543 _ID42407::_ID36519();
    level._ID46392 notify( "end_aim" );
    _ID42237::_ID3294( getaiarray(), ::delete );
    level.player thread _ID42407::_ID41628();
    thread _ID52272::_ID47298();
    wait 1;

    if ( !_ID42237::_ID14385( "killed_pickup_heli" ) )
    {
        setdvar( "ui_deadquote", &"AF_CHASE_FAILED_TO_SHOOT_DOWN" );
        _ID42407::_ID23778();
        return;
    }

    var_7 = _ID42313::_ID9125( "black", 0, level.player );
    var_7 fadeovertime( 3 );
    var_7.alpha = 1;
    wait 2;
    setdvar( "ui_char_museum_mode", "credits_1" );
    _ID42407::_ID24793();

    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        setdvar( "lastMissionPassCheatStatus", 1 );

    wait 7;
}

_ID54723()
{
    var_0 = getent( "zodiac_blend_target", "targetname" );
    level._ID46392 makeusable();
    level.player playerlinktoblend( var_0, "tag_player", 0.05, 0, 0 );
    level.player playerlinktoblend( var_0, "tag_player", 0.05, 0, 0 );
    level._ID46392 makeunusable();
    level._ID43587 = var_0;
}

_ID43513()
{
    _ID42237::_ID14402( "killed_pickup_heli" );
    thread _ID42407::_ID27079( "scn_afchase_pavelow_downed" );
    self vehicle_turnengineoff();
    self._ID31107 = "none";
    self._ID9056 = 1;
    _ID42411::_ID16987();
    self notify( "death" );
    _ID42237::_ID14413( "pickup_heli_ok_to_delete_now" );
    _ID42237::_ID14402( "end_heli_crashed" );
    self notify( "stop_crash_loop_sound" );
    self notify( "crash_done" );
    self notify( "nodeath_thread" );
    wait 0.1;
    self delete();
}

_ID51101()
{
    self waittill( "trigger" );
    level._ID28543._ID51079 = undefined;
    level._ID28543._ID49812 = "left";
}

_ID27345()
{
    level._ID46392 vehicle_turnengineoff();
    level.player dismountvehicle();
    level._ID46392 setmodel( "vehicle_zodiac" );
    level.player._ID11803 = undefined;
}

_ID47180()
{
    foreach ( var_1 in self._ID29965 )
        var_1 _ID42407::_ID36519();

    self delete();
}
#using_animtree("vehicles");

_ID51870()
{
    var_0 = _ID42237::_ID16638( "rapids_anim_scene", "targetname" );
    var_0.angles = ( 0, 0, 0 );
    var_1 = self;
    level._ID52084 = self;
    var_1._ID3189 = "pavelow";
    var_2 = level._ID46392;
    var_2 = spawn( "script_model", level._ID46392.origin );
    var_2 setmodel( level._ID46392.model );
    var_2._ID3189 = "zodiac_player";
    var_2 hide();
    var_2 useanimtree( #animtree );
    var_2 notsolid();
    level._ID45467 = var_2;
    var_3 = [];
    var_3["heli"] = var_1;
    var_3["boat"] = var_2;
    var_1 vehicle_turnengineoff();
    var_0 thread _ID42259::_ID3044( var_1, "sniper_waterfall_idle", "stop_loop_solo" );
    var_0 notify( "stop_loop_solo" );
    _ID42237::_ID14413( "enemy_boat_boarded_seaknight" );
    _ID42237::_ID14413( "player_in_position_for_boarding_sequence" );
    _ID42475::_ID34575( "aud_reverse_engine_plr_boat" );
    var_1 thread _ID42407::_ID27079( "scn_afchase_pavelow_takeoff" );
    var_1 thread _ID44783();
    var_2 thread _ID51260::_ID50246();
    level._ID48502 _ID42407::_ID10226( 10, ::_ID47180 );
    var_4 = level._ID48502 _ID42411::_ID40283();
    level._ID48502 vehicle_setspeedimmediate( 500, 500, 500 );
    level._ID48502 vehicledriveto( ( 25648, 26920, -10168 ), 500 );
    var_5 = spawn( "script_origin", var_1.origin );
    var_5 linkto( var_1, "tag_body", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_4 _ID42237::_ID10192( 0.05, ::linkto, var_5 );
    level.player thread _ID42407::_ID27079( "afchase_plp_onboard" );
    level._ID28543 notify( "stop_boatrider_targets" );
    level._ID28543 setentitytarget( var_1 );
    var_6 = var_2 _ID42407::_ID16120( "sniper_waterfall" );
    var_7 = getstartangles( var_0.origin, var_0.angles, var_6 );
    var_8 = getstartorigin( var_0.origin, var_0.angles, var_6 );
    thread _ID46759( var_2 );
    thread _ID48516();
    level.player _ID42407::_ID10226( 4, _ID42407::_ID27079, "afchase_plp_thelongway" );
    _ID42237::_ID14402( "test_boat_is_on_spline" );
    var_0 thread _ID42259::_ID3111( var_1, "sniper_waterfall" );
    var_0 _ID42259::_ID3111( var_2, "sniper_waterfall" );
}

_ID50666( var_0, var_1, var_2 )
{
    thread _ID46530( var_0, var_1, var_2 );
}

_ID46530( var_0, var_1, var_2 )
{
    self notify( "new_move_to_tag" );
    self endon( "new_move_to_tag" );
    var_3 = gettime() + var_2 * 1000;
    var_4 = var_0 gettagorigin( var_1 );
    self unlink();
    self moveto( var_4, var_2 );

    while ( gettime() < var_3 )
    {
        var_5 = var_0 gettagorigin( var_1 );

        if ( var_5 != var_4 )
        {
            var_4 = var_5;
            var_2 = ( var_3 - gettime() ) / 1000;
            self moveto( var_4, var_2 );
        }

        wait 0.05;
    }

    self linktoblendtotag( var_0, var_1 );
}

_ID48004()
{
    level._ID47133 = self;
    thread _ID42411::_ID16988();

    while ( !isdefined( level._ID46392 ) )
        wait 0.05;

    thread _ID51870();
}

_ID48962()
{
    var_0 = level._ID47133;
    var_1 = spawnturret( "misc_turret", var_0.origin, "minigun_littlebird_spinnup" );
    var_1 setmodel( "vehicle_little_bird_minigun_right" );
    var_1 linkto( var_0, "tag_gunner_right", ( 33, 0, 0 ), ( 60, 76, 0 ) );
    var_1._ID26175 = self;
    var_1 setleftarc( 85 );
    var_1 setrightarc( 85 );
    var_1 setbottomarc( 55 );
    var_1 settoparc( 85 );
    var_1._ID31474 = "axis";
    var_1 setmode( "manual" );
    var_1 thread _ID42331::_ID6448();
    var_1 makeunusable();
    var_1 setturretteam( "axis" );
    level thread _ID42331::_ID23499( var_1, _ID42407::_ID16219() );
    var_1 setaispread( 0.4 );
    var_1 setconvergencetime( 1 );
    var_1.accuracy = 0;
    level._ID54525 = var_1;
    var_1 thread _ID53774();
    var_0 waittill( "death" );
    var_1 delete();
}

_ID53774()
{
    var_0 = _ID42237::_ID16638( "minigun_path", "targetname" );
    var_1 = spawn( "script_origin", var_0.origin );
    var_2 = getent( "minigun_splasher", "targetname" );
    var_2 thread _ID48310();
    self endon( "death" );
    self settargetentity( var_1 );
    _ID42237::_ID14413( "price_steady1" );
    self startfiring();

    while ( !_ID42237::_ID14385( "price_fired_all_his_shots_at_heli" ) )
    {
        if ( !isdefined( var_0.target ) )
            return;

        var_0 = _ID42237::_ID16638( var_0.target, "targetname" );

        if ( !isdefined( var_0 ) )
            return;

        var_1 moveto( var_0.origin, 1, 0, 0 );
        var_1 waittill( "movedone" );
    }

    var_1 moveto( level.player.origin, 2.5, 0, 0 );
    self settargetentity( level.player );
    self setaispread( 0.4 );
    self setconvergencetime( 3 );
    self.accuracy = 1;
}

_ID53465()
{
    _ID42237::_ID14413( "player_in_sight_of_boarding" );
    level._ID28543._ID51079 = undefined;
    level._ID28543._ID49812 = "left";
    thread _ID48103();
    level notify( "quit_bread_crumb" );
    _ID42407::_ID29516( "boat_check_trailing" );
    _ID42407::_ID29516( "boat_check_player_speeding_along" );
}

_ID43052()
{
    self waittill( "trigger" );
    level notify( "no_more_reverse_hints" );
    _ID42237::_ID14402( "no_more_physics_effects" );
}

_ID44298()
{
    self waittill( "trigger" );
    level notify( "price_stops_talking_about_helicopters" );
    _ID42407::_ID28864( "afchase_shp_sitrep" );
    _ID42407::_ID28864( "afchase_uav_downriver" );
    _ID42407::_ID28864( "afchase_shp_comininhot" );
    _ID42407::_ID28864( "afchase_plp_above30knots" );
}

_ID52713()
{
    var_0 = getvehiclenode( "slow_enemy_zodiac_for_player", "script_noteworthy" );
    var_0 waittill( "trigger",  var_1  );
    _ID42237::_ID14402( "zodiac_boarding" );
    var_1 vehicle_setspeed( 0, 30, 44 );
    _ID42237::_ID14413( "player_in_sight_of_boarding" );
    var_1 resumespeed( 12 );
}

_ID53867()
{
    _ID42237::_ID14413( "player_jumping_over_waterfall" );
    thread _ID45755();
    var_0 = level._ID46392;
    var_1 = var_0 _ID42237::_ID35164();
    var_2 = "waterfall_over";
    thread _ID44247();
    var_0 notify( "kill_anims" );
    _ID42475::_ID34575( "aud_stop_mix_steady_boat" );
    _ID42475::_ID34575( "start_over_waterfall" );
    var_0 detach( level._ID52555, "tag_player" );
    var_0 attach( level._ID30904["worldbody"], "tag_player" );
    var_0 setanimknob( %h2_afchase_waterfall_player_fall, 1.0, 0 );
    var_1 thread _ID42259::_ID3111( var_0, var_2, undefined, undefined, undefined, undefined, 0 );
    var_3 = spawnstruct();
    var_3.angles = ( 19.7217, 70.7454, -1.66272 );
    var_3.origin = ( 25480, 25950, -5507 );
    var_0 thread _ID42259::_ID46811( "single anim", var_1, var_3, 0.2 );
}

_ID48703()
{
    wait 15;

    if ( !_ID42237::_ID14385( "going_over_waterfall" ) )
        maps\af_chase_code::_ID43792();
}

_ID46759( var_0 )
{
    var_1 = 5;
    var_2 = 6;
    var_3 = level._ID46392;
    var_3 endon( "death" );
    wait 0.1;
    var_4 = var_0 gettagorigin( "tag_body" );
    var_5 = 2;
    var_6 = 45;

    for (;;)
    {
        wait 0.05;
        var_7 = var_0 gettagorigin( "tag_body" );
        var_8 = var_0 gettagangles( "tag_body" );
        var_9 = distance( var_4, var_7 ) * 20 / 17.6;
        level._ID52611 = var_9;
        var_10 = level._ID46392 gettagorigin( "tag_body" );
        var_11 = _ID42407::_ID15689( var_7, var_8, var_10 );
        var_4 = var_7;

        if ( var_11 > 0 )
            var_6 = var_9 - var_2;
        else if ( var_11 < 0 )
        {
            if ( distance( var_7, var_10 ) < 86 )
                var_6 = var_9;
            else
                var_6 = var_9 + var_1;
        }

        var_6 = clamp( var_6, 5, 60 );
        var_3 vehicle_setspeed( var_6, 8, 8 );
    }
}

_ID48310()
{
    var_0 = _ID42237::_ID16299( "pavelow_minigunner_splash_add" );

    for (;;)
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( var_2.code_classname != "misc_turret" )
            continue;

        var_6 = var_2 gettagangles( "tag_flash" );
        var_7 = var_2 getorigin( "tag_flash" );
        var_8 = anglestoforward( var_6 ) * 3000;
        var_9 = bullettrace( var_7, var_7 + var_8, 0, var_2 );

        if ( var_9["fraction"] == 1.0 )
            continue;

        if ( isdefined( var_9["entity"] ) )
            continue;

        playfx( var_0, var_9["position"] );
    }
}

_ID44084()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "stop_boat_dialogue" );
}

_ID46758()
{
    var_0 = "afchase_pavelow_fly";
    var_1 = "afchase_pavelow_idle";
    var_2 = spawn( "sound_blend", ( 0, 0, 0 ) );
    var_2 thread _ID42407::_ID22901( self, ( 0, 0, 0 ) );
    var_3 = spawn( "sound_blend", ( 0, 0, 0 ) );
    var_3 thread _ID42407::_ID22901( self, ( 0, 0, 64 ) );
    var_3 thread _ID42407::_ID23791( var_1 );
    var_3 setsoundblend( var_1, var_1 + "_off", 0 );
    wait 1;
    var_3 thread _ID42407::_ID23789( var_1 );
    var_2 thread _ID42407::_ID23791( var_0 );
    _ID42237::_ID14413( "end_heli_crashed" );
    var_3 thread _ID42407::_ID23789( var_1 );
    var_2 thread _ID42407::_ID23789( var_0 );
}
#using_animtree("generic_human");

_ID46380( var_0 )
{
    level endon( "price_end_aiming_thread" );
    var_0 notify( "end_shootUntilNeedToChangePose" );

    if ( var_0._ID7._ID52880 == "left" )
    {
        var_1 = %zodiac_trans_r2l;
        var_2 = getanimlength( var_1 );
        var_0 _ID42407::_ID13025( "transitioning_positions" );
        waittillframeend;
        var_0._ID7._ID52880 = "right";
        var_0 setflaggedanimknoballrestart( "trans", var_1, %body, 1, 0.2 );
        var_0 animscripts\notetracks::_ID11534( getanimlength( var_1 ) - 0.3, "trans" );
        var_0._ID7._ID50516 = gettime();
        var_0 _ID42407::_ID13021( "transitioning_positions" );
    }

    thread _ID42259::_ID3020( var_0, "zodiac_rapids_price", "tag_guy2" );
    waittillframeend;
    var_0 setanimlimited( %h2_afchase_waterfall_price_aim_4, 1, 0, 1 );
    var_0 setanimlimited( %h2_afchase_waterfall_price_aim_6, 1, 0, 1 );
    var_0 setanimlimited( %waterfall_price_aiming_aim_4, 0, 0, 1 );
    var_0 setanimlimited( %waterfall_price_aiming_aim_6, 0, 0, 1 );

    for (;;)
    {
        if ( !_ID42237::_ID14385( "price_add_aim" ) )
        {
            var_0 setanimlimited( %waterfall_price_aiming_aim_4, 0, 0.2 );
            var_0 setanimlimited( %waterfall_price_aiming_aim_6, 0, 0.2 );
        }
        else
        {
            var_3 = anglestoforward( var_0.angles );
            var_3 = vectornormalize( ( var_3[0], var_3[1], 0 ) );
            var_4 = level._ID52084.origin - var_0.origin;
            var_4 = vectornormalize( ( var_4[0], var_4[1], 0 ) );
            var_5 = _ID54635( var_3, var_4 );

            if ( var_5 < 0 )
            {
                var_6 = clamp( var_5 / -0.7, 0, 1 );
                var_0 setanimlimited( %waterfall_price_aiming_aim_4, var_6, 0.2 );
                var_0 setanimlimited( %waterfall_price_aiming_aim_6, 0, 0.2 );
            }
            else if ( var_5 > 0 )
            {
                var_6 = clamp( var_5 / 0.8, 0, 1 );
                var_0 setanimlimited( %waterfall_price_aiming_aim_4, 0, 0.2 );
                var_0 setanimlimited( %waterfall_price_aiming_aim_6, var_6, 0.2 );
            }
            else
            {
                var_0 setanimlimited( %waterfall_price_aiming_aim_4, 0, 0.2 );
                var_0 setanimlimited( %waterfall_price_aiming_aim_6, 0, 0.2 );
            }
        }

        waittillframeend;
    }
}

_ID54635( var_0, var_1 )
{
    return -1 * var_0[0] * var_1[1] + var_0[1] * var_1[0];
}

pavelow_perf()
{
    _ID42237::_ID14413( "enemy_boat_boarded_seaknight" );
    wait 7;
    self setmodel( "h2_vehicle_pavelow_low" );

    foreach ( var_1 in self._ID3575 )
        var_1 hide();

    var_3 = getent( "enemy_chase_boat", "targetname" );
    var_3._ID21855._ID23875 hide();

    foreach ( var_1 in var_3._ID21855._ID3575 )
        var_1 hide();
}

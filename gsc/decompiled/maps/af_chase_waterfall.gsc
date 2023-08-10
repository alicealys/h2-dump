// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    var_0 = getent( "enemy_pickup_heli", "targetname" );
    var_0 maps\_utility::add_spawn_function( ::_id_BB84 );
    var_0 maps\_utility::add_spawn_function( ::pavelow_perf );
    var_1 = getent( "pre_rapids_trigger", "targetname" );
    var_1 thread _id_C79D();
    var_2 = getent( "trigger_just_before_boatride_end", "targetname" );
    var_2 thread _id_A82C();
    var_3 = getent( "trigger_pavelow_pilot_dialogue", "targetname" );
    var_3 thread _id_AD0A();
    var_4 = getvehiclenode( "over_waterfall_test", "script_noteworthy" );
    var_4 thread _id_D26B();
    var_5 = getent( "zodiac_blend_target", "targetname" );
    var_5 hide();
    thread _id_D0D9();
    var_6 = getent( "weapon_pullout_before_waterfall", "targetname" );
    var_6 thread _id_C22B();
    var_7 = getent( "trigger_stop_boat_nagging", "targetname" );
    var_7 thread _id_AC34();
    thread _id_CDE9();
    _id_D1E4();
}

_id_D1E4()
{
    common_scripts\utility::flag_init( "steady_shot" );
    common_scripts\utility::flag_init( "idle_over_waterfall" );
    common_scripts\utility::flag_init( "boat_freeze" );
    common_scripts\utility::flag_init( "player_in_position_for_boarding_sequence" );
    common_scripts\utility::flag_init( "price_steady1" );
    common_scripts\utility::flag_init( "price_steady2" );
    common_scripts\utility::flag_init( "price_steady3" );
    common_scripts\utility::flag_init( "test_boat_is_on_spline" );
    common_scripts\utility::flag_init( "rocky_bumps" );
    common_scripts\utility::flag_init( "release_the_brakes" );
    common_scripts\utility::flag_init( "pickup_heli_ok_to_delete_now" );
    common_scripts\utility::flag_init( "price_fired_all_his_shots_at_heli" );
}

_id_B746()
{
    for (;;)
    {
        wait( randomfloatrange( 0.1, 0.4 ) );

        if ( !common_scripts\utility::flag( "rocky_bumps" ) )
            continue;

        if ( common_scripts\utility::cointoss() )
        {
            level.player playrumblelooponentity( "damage_heavy" );
            continue;
        }

        level.player playrumblelooponentity( "damage_light" );
    }
}

_id_ACD7()
{
    level notify( "clear_rapids_junk" );
    level.player _meth_80B6( "damage_heavy" );
    level.player _meth_80B6( "damage_light" );
    level.player thread common_scripts\utility::stop_loop_sound_on_entity( "zodiac_waterfall_idle" );
    level.player thread common_scripts\utility::stop_loop_sound_on_entity( "zodiac_waterfall_sustain" );
    level._id_BE99 delete();
}

_id_C6FC()
{
    var_0 = common_scripts\utility::spawn_tag_origin();
    level._id_C348 = var_0;
    var_1 = maps\_utility::getentwithflag( "full_brake_until_waterfall_end" );
    var_2 = common_scripts\utility::getstruct( var_1.target, "targetname" );
    var_3 = common_scripts\utility::getstruct( var_2.target, "targetname" );
    var_4 = distance( var_2.origin, var_3.origin );
    var_5 = 175;
    var_6 = var_4 / var_5;
    var_0.origin = var_2.origin;
    var_0 thread _id_C83C::_id_C446();
    common_scripts\utility::flag_wait( "full_brake_until_waterfall_end" );
    var_0 moveto( var_3.origin, var_6, 0, 0 );
}

_id_C560()
{
    self endon( "death" );

    for (;;)
        wait 0.05;
}

_id_C10A()
{
    if ( common_scripts\utility::flag( "player_brakes_on_waterfall" ) )
        return;

    level endon( "player_brakes_on_waterfall" );
    wait 15;
    maps\af_chase_code::_id_AB10();
}

_id_BBE7()
{
    var_0 = level._id_B538;
    var_1 = common_scripts\utility::getstruct( "waterfall_goal", "targetname" );
    common_scripts\utility::flag_wait_or_timeout( "player_on_final_ride", 5 );

    if ( !common_scripts\utility::flag( "player_on_final_ride" ) )
    {
        maps\af_chase_code::_id_AB10();
        return;
    }

    if ( !level.player worldpointinreticle_circle( level._id_BD76.origin, 65, 1000 ) )
    {
        maps\af_chase_code::_id_AB10();
        return;
    }

    thread _id_C10A();
    maps\_utility::autosave_by_name( "end_of_boatride" );
    var_2 = getvehiclenode( "players_boat_end_path_test", "targetname" );
    level endon( "clear_rapids_junk" );
    childthread _id_B746();
    var_3 = level.player maps\_utility::get_rumble_ent();
    var_3.intensity = 0.025;
    level._id_BE99 = var_3;
    level._id_B538 endon( "death" );
    level notify( "new_river_current" );
    level._id_C98C = 0;
    var_0 vehphys_setconveyorbelt( 0, 0 );
    var_4 = common_scripts\utility::spawn_tag_origin();
    level._id_C6AC = 0;
    var_5 = 1500;
    var_6 = 500;
    var_7 = 20;
    common_scripts\utility::flag_set( "steady_boat_participating" );
    common_scripts\utility::flag_set( "rocky_bumps" );
    thread _id_C6FC();
    var_8 = 0;
    var_9 = 40;
    var_10 = -80;
    var_11 = var_8;
    var_12 = -300;
    var_13 = var_9;
    var_14 = 25;
    var_15 = 350;
    var_16 = level.player.offset;
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
    var_26 = maps\_utility::getanim_from_animname( "zodiac_rapids_price", "generic" );
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
        var_35 = _id_C83C::_id_D0B7();
        var_36 = _id_C83C::_id_D031();
        var_37 = common_scripts\utility::flag( "boat_hits_right_side" ) || common_scripts\utility::flag( "boat_hits_left_side" );

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

        var_40 = _id_C83C::_id_BBA5( var_35, var_36 + var_5, var_38 );

        if ( common_scripts\utility::flag( "waterfall_goal_swap" ) )
        {
            if ( var_25 < 1 )
                var_25 += 0.01;

            var_40 = vectorlerp( var_40, var_1.origin, var_25 );
        }

        var_40 = maps\_utility::set_z( var_40, var_0.origin[2] );
        var_41 = 35;

        if ( common_scripts\utility::flag( "test_boat_is_on_spline" ) )
        {
            var_42 = level._id_B19B;

            if ( common_scripts\utility::flag( "full_brake_until_waterfall_end" ) )
                var_42 = level._id_C348;

            var_43 = _id_C83C::progress_dif( var_35, var_36, var_42._id_AAAC, var_42.progress );
            var_41 = maps\_utility::graph_position( var_43, var_10, var_11, var_12, var_13 );
            var_41 = clamp( var_41, var_8, var_9 );

            if ( common_scripts\utility::flag( "full_brake_until_waterfall_end" ) )
            {
                var_44 = maps\_utility::graph_position( var_43, var_19, var_20, var_21, var_22 );
                var_44 = clamp( var_44, var_17, var_18 );
                var_0.veh_brake = var_44;
            }
            else if ( common_scripts\utility::flag( "player_brakes_on_waterfall" ) )
            {
                var_44 = maps\_utility::graph_position( var_43, var_19, var_20, var_21, var_22 );
                var_44 = clamp( var_44, var_17, var_18 );
                var_0.veh_brake = var_44;
            }
        }

        if ( common_scripts\utility::flag( "boat_start_rubber_band" ) )
        {
            var_32 = 1;
            var_41 = var_0 _id_AD37( var_30, var_26, var_27, var_29, var_8, var_9 );
        }
        else if ( var_32 )
        {
            var_41 = 0;

            if ( !var_33 )
            {
                var_33 = 1;
                var_31 = _id_D061( var_30 );
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

    level._id_B538 thread maps\_vehicle::vehicle_paths( var_2 );
    level._id_B538 startpath( var_2 );
    level._id_B538 common_scripts\utility::delaycall( 0.2, ::vehicle_setspeed, 35, 15, 15 );
    level._id_B538 vehicle_turnengineoff();
    var_45 = 0.3;
    var_46 = 0;
    childthread _id_B746();
    common_scripts\utility::flag_set( "rocky_bumps" );
    var_3 = level.player maps\_utility::get_rumble_ent();
    var_3.intensity = 0.025;
    level._id_BE99 = var_3;

    for (;;)
    {
        if ( maps\af_chase_code::_id_BD33() )
        {
            common_scripts\utility::flag_set( "steady_boat_participating" );
            level.player thread common_scripts\utility::stop_loop_sound_on_entity( "zodiac_waterfall_idle" );
            level.player thread common_scripts\utility::play_loop_sound_on_entity( "zodiac_waterfall_sustain" );
            level._id_B538._id_B15B = 1;
            common_scripts\utility::flag_clear( "rocky_bumps" );
            var_3.intensity = 0.225;

            while ( maps\af_chase_code::_id_BD33() )
                wait 0.05;

            var_3.intensity = 0.0001;
            common_scripts\utility::flag_set( "rocky_bumps" );
            level.player thread common_scripts\utility::stop_loop_sound_on_entity( "zodiac_waterfall_sustain" );
            level.player thread common_scripts\utility::play_loop_sound_on_entity( "zodiac_waterfall_idle" );
            var_46 = 0;
        }
        else
        {
            level._id_B538._id_B15B = -1;
            common_scripts\utility::flag_clear( "steady_boat_participating" );
            var_46 += 0.05;
        }

        if ( var_46 > var_45 )
        {
            var_46 = 0;
            level._id_B538 joltbody( level._id_B538.origin + ( 0, 0, 64 ) + common_scripts\utility::randomvector( 32 ), 0.1 );
        }

        wait 0.05;
    }
}

_id_AD37( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_0[1] - level.player.origin[1];
    var_7 = level.price getanimtime( var_1 ) * var_2;
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

_id_D061( var_0 )
{
    var_1 = 80;
    var_2 = 200;
    var_3 = var_0[1] - level.player.origin[1];
    var_3 = clamp( var_3, var_1, var_2 );
    var_4 = ( var_3 - var_1 ) / ( var_2 - var_1 );
    var_5 = 3 + var_4 * 8;
    return var_5;
}

_id_AEEF()
{
    wait 0.6;
    playfxontag( common_scripts\utility::getfx( "heli_water_drips" ), self, "TAG_DOOR_REAR" );
}

_id_BD84()
{
    level.price endon( "death" );
    level.price notify( "waterfall_sequence" );
    level.price._id_D37C = 1;
    level.price maps\_utility::radio_dialogue_stop();
    level.player maps\_utility::ent_flag_set( "zodiac_aim_helicopter" );
    level.price _meth_859D( 0 );
    level._id_B538 childthread _id_B52C( level.price );
    childthread _id_D40D();
    level._id_B538 setanim( level._id_B538 maps\_utility::getanim( "player_view_fall_anim" ) );
    level._id_B538 setanimlimited( level._id_B538 maps\_utility::getanim( "player_view_fall" ), 1 );
    common_scripts\utility::flag_wait( "price_shoot" );
    thread _id_B180();
    thread _id_BE3F();
    var_0 = level._id_CB74;
    var_1 = level.price gettagorigin( "tag_flash" );
    var_2 = var_0 gettagorigin( "tag_guy0" ) + ( 0, 0, 875 );
    magicbullet( "m203", var_1, var_2 );
    playfxontag( level._effect["fx/muzzleflashes/m203_flshview"], level.price, "tag_flash" );
    wait 0.7;
    level.player maps\_utility::ent_flag_set( "disable_shooting" );
    level._id_B81D maps\_utility::delaythread( 0.05, ::_id_A9F9 );
    var_3 = common_scripts\utility::getfx( "fx/explosions/large_vehicle_explosion" );
    playfxontag( var_3, var_0, "tag_guy0" );
    soundscripts\_snd::snd_message( "aud_start_mix_seaknight_down" );
    common_scripts\utility::flag_set( "price_fired_all_his_shots_at_heli" );
    level._id_B538 thread maps\_utility::play_sound_on_entity( "zodiac_player_reverse" );
    common_scripts\utility::flag_set( "idle_over_waterfall" );
}

_id_B180()
{
    var_0 = _id_D397::_id_A97A( "zodiac fall" );
    var_0 _id_D397::_id_BEA0( 0.0 ) _id_D397::_id_C491( 4.0, -1, 8, 8 ) _id_D397::_id_ADE6( 0 ) _id_D397::_id_CCA7( level._id_B81D ) _id_D397::_id_AE01( 1 ) _id_D397::_id_AF9C();
    var_0 _id_D397::_id_BEA0( 3.1 ) _id_D397::_id_C491( 4.0, -1, 4, 4 ) _id_D397::_id_ADE6( 8 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_AE01( 1 );
    var_0 _id_D397::_id_BEA0( 4.28 ) _id_D397::_id_C491( 64, 800, 8, 8 ) _id_D397::_id_AE01( 1 );
    var_0 _id_D397::_id_BEA0( 6.1 ) _id_D397::_id_C491( 4.0, -1, 16, 16 ) _id_D397::_id_ADE6( 50 ) _id_D397::_id_CCA7( level.price, "tag_eye" ) _id_D397::_id_AE01( 1 );
    var_0 _id_D397::_id_BEA0( 8.12 ) _id_D397::_id_BF3F();
    var_0 _id_D397::_id_BEA0( 0.7 ) _id_D397::_id_B85E( 0.1, 1.3, level.player, 10000 ) _id_D397::_id_BC21( "tank_rumble", level.player, 0.25 );
    var_0 _id_D397::_id_BEA0( 8.6 ) _id_D397::_id_BC21( "tank_rumble", level.player, 1.3 );
    var_0 _id_D397::_id_BC26();
}

_id_D40D()
{
    var_0 = 2;

    for (;;)
    {
        if ( common_scripts\utility::flag( "price_fire_zodiac" ) )
        {
            level.price shoot();
            level.price thread maps\_utility::play_sound_on_tag( "price_sniper_fire_at_helicopter", "tag_flash" );
            var_0--;
            common_scripts\utility::flag_clear( "price_fire_zodiac" );
        }

        if ( var_0 == 0 )
            break;

        waitframe();
    }
}

_id_BB34()
{
    wait 2;
    maps\_utility::missionfailedwrapper();
}

_id_C22B()
{
    self waittill( "trigger" );
    thread _id_BF42();
}

_id_B2BB()
{
    var_0 = getent( "water_fall_edge_trigger", "targetname" );
    level._id_B538 notify( "stop_targetting" );
    level.player allowstand( 1 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    setsaveddvar( "fx_alphathreshold", 40 );
    playfxontag( common_scripts\utility::getfx( "splash_over_waterfall" ), level._id_B538, "tag_guy2" );
    level._id_B538 notify( "kill_treadfx" );
    maps\af_chase_code::_id_CD4C();
    var_1 = getent( var_0.target, "targetname" );
    var_2 = getent( "on_foot_destination", "targetname" );
    level.player disableweapons();
    level notify( "player_over_the_waterfall" );
    setsaveddvar( "compass", 0 );
    var_3 = var_1.origin[2] - 10;
    level.player playerlinktoblend( level._id_B538, "tag_player", 0.15, 0.05, 0.05 );

    while ( level.player.origin[2] > var_3 )
        wait 0.05;

    player_dismount();
    common_scripts\utility::flag_set( "pickup_heli_ok_to_delete_now" );
    level notify( "stop_music_at_splash" );

    if ( isdefined( level._id_AF65 ) )
    {
        level._id_AF65 playrumbleonentity();
        level._id_AF65 common_scripts\utility::delaycall( 0.05, ::delete );
    }

    thread _id_D5C3();
    var_4 = maps\_utility::set_z( level._id_AA43.origin, var_1.origin[2] - 55 );
    level._id_B538 delete();
    var_5 = getentarray( "script_vehicle_zodiac", "classname" );
    var_6 = getentarray( "script_vehicle_zodiac_physics", "classname" );
    common_scripts\utility::array_call( var_5, ::delete );
    common_scripts\utility::array_call( var_6, ::delete );
    level._id_AA43.origin = var_4;
    level.player unlink();
    level.player playerlinktodelta( level._id_AA43, "tag_player", 1, 0, 0, 0, 0 );
    common_scripts\utility::flag_set( "boat_freeze" );
    ambientstop();
    level.player playrumblelooponentity( "damage_heavy" );
    earthquake( 0.3, 3.5, level.player.origin, 1000 );
    level.player setwatersheeting( 3, 3 );

    if ( isdefined( level.price.function_stack ) )
        level.price maps\_utility::function_stack_clear();

    level.price maps\_utility::stop_magic_bullet_shield();
    level._id_B538 notify( "end_aim" );
    common_scripts\utility::array_call( getaiarray(), ::delete );
    level.player thread maps\_utility::waterfx();
    thread _id_CC30::_id_B8C2();
    wait 1;

    if ( !common_scripts\utility::flag( "killed_pickup_heli" ) )
    {
        setdvar( "ui_deadquote", &"AF_CHASE_FAILED_TO_SHOOT_DOWN" );
        maps\_utility::missionfailedwrapper();
        return;
    }

    var_7 = maps\_hud_util::create_client_overlay( "black", 0, level.player );
    var_7 fadeovertime( 3 );
    var_7.alpha = 1;
    wait 2;
    setdvar( "ui_char_museum_mode", "credits_1" );
    maps\_utility::nextmission();

    if ( _id_C0C3::_id_AD40() || common_scripts\utility::flag( "has_cheated" ) )
        setdvar( "lastMissionPassCheatStatus", 1 );

    wait 7;
}

_id_D5C3()
{
    var_0 = getent( "zodiac_blend_target", "targetname" );
    level._id_B538 makeusable();
    level.player playerlinktoblend( var_0, "tag_player", 0.05, 0, 0 );
    level.player playerlinktoblend( var_0, "tag_player", 0.05, 0, 0 );
    level._id_B538 makeunusable();
    level._id_AA43 = var_0;
}

_id_A9F9()
{
    common_scripts\utility::flag_set( "killed_pickup_heli" );
    thread maps\_utility::play_sound_on_entity( "scn_afchase_pavelow_downed" );
    self vehicle_turnengineoff();
    self.script_crashtypeoverride = "none";
    self.crashing = 1;
    maps\_vehicle::godoff();
    self notify( "death" );
    common_scripts\utility::flag_wait( "pickup_heli_ok_to_delete_now" );
    common_scripts\utility::flag_set( "end_heli_crashed" );
    self notify( "stop_crash_loop_sound" );
    self notify( "crash_done" );
    self notify( "nodeath_thread" );
    wait 0.1;
    self delete();
}

_id_C79D()
{
    self waittill( "trigger" );
    level.price._id_C787 = undefined;
    level.price._id_C294 = "left";
}

player_dismount()
{
    level._id_B538 vehicle_turnengineoff();
    level.player dismountvehicle();
    level._id_B538 setmodel( "vehicle_zodiac" );
    level.player.drivingvehicle = undefined;
}

_id_B84C()
{
    foreach ( var_1 in self.riders )
        var_1 maps\_utility::stop_magic_bullet_shield();

    self delete();
}

#using_animtree("vehicles");

_id_CA9E()
{
    var_0 = common_scripts\utility::getstruct( "rapids_anim_scene", "targetname" );
    var_0.angles = ( 0, 0, 0 );
    var_1 = self;
    level._id_CB74 = self;
    var_1.animname = "pavelow";
    var_2 = level._id_B538;
    var_2 = spawn( "script_model", level._id_B538.origin );
    var_2 setmodel( level._id_B538.model );
    var_2.animname = "zodiac_player";
    var_2 hide();
    var_2 useanimtree( #animtree );
    var_2 notsolid();
    level._id_B19B = var_2;
    var_3 = [];
    var_3["heli"] = var_1;
    var_3["boat"] = var_2;
    var_1 vehicle_turnengineoff();
    var_0 thread maps\_anim::anim_loop_solo( var_1, "sniper_waterfall_idle", "stop_loop_solo" );
    var_0 notify( "stop_loop_solo" );
    common_scripts\utility::flag_wait( "enemy_boat_boarded_seaknight" );
    common_scripts\utility::flag_wait( "player_in_position_for_boarding_sequence" );
    soundscripts\_snd::snd_message( "aud_reverse_engine_plr_boat" );
    var_1 thread maps\_utility::play_sound_on_entity( "scn_afchase_pavelow_takeoff" );
    var_1 thread _id_AEEF();
    var_2 thread _id_C83C::_id_C446();
    level._id_BD76 maps\_utility::delaythread( 10, ::_id_B84C );
    var_4 = level._id_BD76 maps\_vehicle::vehicle_to_dummy();
    level._id_BD76 vehicle_setspeedimmediate( 500, 500, 500 );
    level._id_BD76 vehicledriveto( ( 25648, 26920, -10168 ), 500 );
    var_5 = spawn( "script_origin", var_1.origin );
    var_5 linkto( var_1, "tag_body", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_4 common_scripts\utility::delaycall( 0.05, ::linkto, var_5 );
    level.player thread maps\_utility::play_sound_on_entity( "afchase_plp_onboard" );
    level.price notify( "stop_boatrider_targets" );
    level.price setentitytarget( var_1 );
    var_6 = var_2 maps\_utility::getanim( "sniper_waterfall" );
    var_7 = getstartangles( var_0.origin, var_0.angles, var_6 );
    var_8 = getstartorigin( var_0.origin, var_0.angles, var_6 );
    thread _id_B6A7( var_2 );
    thread _id_BD84();
    level.player maps\_utility::delaythread( 4, maps\_utility::play_sound_on_entity, "afchase_plp_thelongway" );
    common_scripts\utility::flag_set( "test_boat_is_on_spline" );
    var_0 thread maps\_anim::anim_single_solo( var_1, "sniper_waterfall" );
    var_0 maps\_anim::anim_single_solo( var_2, "sniper_waterfall" );
}

_id_C5EA( var_0, var_1, var_2 )
{
    thread _id_B5C2( var_0, var_1, var_2 );
}

_id_B5C2( var_0, var_1, var_2 )
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

_id_BB84()
{
    level._id_B81D = self;
    thread maps\_vehicle::godon();

    while ( !isdefined( level._id_B538 ) )
        wait 0.05;

    thread _id_CA9E();
}

_id_BF42()
{
    var_0 = level._id_B81D;
    var_1 = spawnturret( "misc_turret", var_0.origin, "minigun_littlebird_spinnup" );
    var_1 setmodel( "vehicle_little_bird_minigun_right" );
    var_1 linkto( var_0, "tag_gunner_right", ( 33, 0, 0 ), ( 60, 76, 0 ) );
    var_1.ownervehicle = self;
    var_1 setleftarc( 85 );
    var_1 setrightarc( 85 );
    var_1 setbottomarc( 55 );
    var_1 settoparc( 85 );
    var_1.script_team = "axis";
    var_1 setmode( "manual" );
    var_1 thread maps\_mgturret::burst_fire_unmanned();
    var_1 makeunusable();
    var_1 setturretteam( "axis" );
    level thread maps\_mgturret::mg42_setdifficulty( var_1, maps\_utility::getdifficulty() );
    var_1 setaispread( 0.4 );
    var_1 setconvergencetime( 1 );
    var_1.accuracy = 0;
    level._id_D4FD = var_1;
    var_1 thread _id_D20E();
    var_0 waittill( "death" );
    var_1 delete();
}

_id_D20E()
{
    var_0 = common_scripts\utility::getstruct( "minigun_path", "targetname" );
    var_1 = spawn( "script_origin", var_0.origin );
    var_2 = getent( "minigun_splasher", "targetname" );
    var_2 thread _id_BCB6();
    self endon( "death" );
    self settargetentity( var_1 );
    common_scripts\utility::flag_wait( "price_steady1" );
    self startfiring();

    while ( !common_scripts\utility::flag( "price_fired_all_his_shots_at_heli" ) )
    {
        if ( !isdefined( var_0.target ) )
            return;

        var_0 = common_scripts\utility::getstruct( var_0.target, "targetname" );

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

_id_D0D9()
{
    common_scripts\utility::flag_wait( "player_in_sight_of_boarding" );
    level.price._id_C787 = undefined;
    level.price._id_C294 = "left";
    thread _id_BBE7();
    level notify( "quit_bread_crumb" );
    maps\_utility::remove_extra_autosave_check( "boat_check_trailing" );
    maps\_utility::remove_extra_autosave_check( "boat_check_player_speeding_along" );
}

_id_A82C()
{
    self waittill( "trigger" );
    level notify( "no_more_reverse_hints" );
    common_scripts\utility::flag_set( "no_more_physics_effects" );
}

_id_AD0A()
{
    self waittill( "trigger" );
    level notify( "price_stops_talking_about_helicopters" );
    maps\_utility::radio_dialogue( "afchase_shp_sitrep" );
    maps\_utility::radio_dialogue( "afchase_uav_downriver" );
    maps\_utility::radio_dialogue( "afchase_shp_comininhot" );
    maps\_utility::radio_dialogue( "afchase_plp_above30knots" );
}

_id_CDE9()
{
    var_0 = getvehiclenode( "slow_enemy_zodiac_for_player", "script_noteworthy" );
    var_0 waittill( "trigger", var_1 );
    common_scripts\utility::flag_set( "zodiac_boarding" );
    var_1 vehicle_setspeed( 0, 30, 44 );
    common_scripts\utility::flag_wait( "player_in_sight_of_boarding" );
    var_1 resumespeed( 12 );
}

_id_D26B()
{
    common_scripts\utility::flag_wait( "player_jumping_over_waterfall" );
    thread _id_B2BB();
    var_0 = level._id_B538;
    var_1 = var_0 common_scripts\utility::spawn_tag_origin();
    var_2 = "waterfall_over";
    thread _id_ACD7();
    var_0 notify( "kill_anims" );
    soundscripts\_snd::snd_message( "aud_stop_mix_steady_boat" );
    soundscripts\_snd::snd_message( "start_over_waterfall" );
    var_0 detach( level._id_CD4B, "tag_player" );
    var_0 attach( level.scr_model["worldbody"], "tag_player" );
    var_0 setanimknob( %h2_afchase_waterfall_player_fall, 1.0, 0 );
    var_1 thread maps\_anim::anim_single_solo( var_0, var_2, undefined, undefined, undefined, undefined, 0 );
    var_3 = spawnstruct();
    var_3.angles = ( 19.7217, 70.7454, -1.66272 );
    var_3.origin = ( 25480, 25950, -5507 );
    var_0 thread maps\_anim::_id_B6DB( "single anim", var_1, var_3, 0.2 );
}

_id_BE3F()
{
    wait 15;

    if ( !common_scripts\utility::flag( "going_over_waterfall" ) )
        maps\af_chase_code::_id_AB10();
}

_id_B6A7( var_0 )
{
    var_1 = 5;
    var_2 = 6;
    var_3 = level._id_B538;
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
        level._id_CD83 = var_9;
        var_10 = level._id_B538 gettagorigin( "tag_body" );
        var_11 = maps\_utility::get_dot( var_7, var_8, var_10 );
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

_id_BCB6()
{
    var_0 = common_scripts\utility::getfx( "pavelow_minigunner_splash_add" );

    for (;;)
    {
        self waittill( "damage", var_1, var_2, var_3, var_4, var_5 );

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

_id_AC34()
{
    self waittill( "trigger" );
    common_scripts\utility::flag_set( "stop_boat_dialogue" );
}

_id_B6A6()
{
    var_0 = "afchase_pavelow_fly";
    var_1 = "afchase_pavelow_idle";
    var_2 = spawn( "sound_blend", ( 0, 0, 0 ) );
    var_2 thread maps\_utility::manual_linkto( self, ( 0, 0, 0 ) );
    var_3 = spawn( "sound_blend", ( 0, 0, 0 ) );
    var_3 thread maps\_utility::manual_linkto( self, ( 0, 0, 64 ) );
    var_3 thread maps\_utility::mix_up( var_1 );
    var_3 setsoundblend( var_1, var_1 + "_off", 0 );
    wait 1;
    var_3 thread maps\_utility::mix_down( var_1 );
    var_2 thread maps\_utility::mix_up( var_0 );
    common_scripts\utility::flag_wait( "end_heli_crashed" );
    var_3 thread maps\_utility::mix_down( var_1 );
    var_2 thread maps\_utility::mix_down( var_0 );
}

#using_animtree("generic_human");

_id_B52C( var_0 )
{
    level endon( "price_end_aiming_thread" );
    var_0 notify( "end_shootUntilNeedToChangePose" );

    if ( var_0.a._id_CE90 == "left" )
    {
        var_1 = %zodiac_trans_r2l;
        var_2 = getanimlength( var_1 );
        var_0 maps\_utility::ent_flag_set( "transitioning_positions" );
        waitframe();
        var_0.a._id_CE90 = "right";
        var_0 setflaggedanimknoballrestart( "trans", var_1, %body, 1, 0.2 );
        var_0 animscripts\notetracks::donotetracksfortime( getanimlength( var_1 ) - 0.3, "trans" );
        var_0.a._id_C554 = gettime();
        var_0 maps\_utility::ent_flag_clear( "transitioning_positions" );
    }

    thread maps\_anim::anim_generic( var_0, "zodiac_rapids_price", "tag_guy2" );
    waitframe();
    var_0 setanimlimited( %h2_afchase_waterfall_price_aim_4, 1, 0, 1 );
    var_0 setanimlimited( %h2_afchase_waterfall_price_aim_6, 1, 0, 1 );
    var_0 setanimlimited( %waterfall_price_aiming_aim_4, 0, 0, 1 );
    var_0 setanimlimited( %waterfall_price_aiming_aim_6, 0, 0, 1 );

    for (;;)
    {
        if ( !common_scripts\utility::flag( "price_add_aim" ) )
        {
            var_0 setanimlimited( %waterfall_price_aiming_aim_4, 0, 0.2 );
            var_0 setanimlimited( %waterfall_price_aiming_aim_6, 0, 0.2 );
        }
        else
        {
            var_3 = anglestoforward( var_0.angles );
            var_3 = vectornormalize( ( var_3[0], var_3[1], 0 ) );
            var_4 = level._id_CB74.origin - var_0.origin;
            var_4 = vectornormalize( ( var_4[0], var_4[1], 0 ) );
            var_5 = _id_D56B( var_3, var_4 );

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

        waitframe();
    }
}

_id_D56B( var_0, var_1 )
{
    return -1 * var_0[0] * var_1[1] + var_0[1] * var_1[0];
}

pavelow_perf()
{
    common_scripts\utility::flag_wait( "enemy_boat_boarded_seaknight" );
    wait 7;
    self setmodel( "h2_vehicle_pavelow_low" );

    foreach ( var_1 in self.attachedguys )
        var_1 hide();

    var_3 = getent( "enemy_chase_boat", "targetname" );
    var_3.last_spawned_vehicle.modeldummy hide();

    foreach ( var_1 in var_3.last_spawned_vehicle.attachedguys )
        var_1 hide();
}

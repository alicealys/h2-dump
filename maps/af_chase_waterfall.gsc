// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    var_0 = _func_1A1( "enemy_pickup_heli", "targetname" );
    var_0 _ID42407::_ID1947( ::_unknown_046A );
    var_0 _ID42407::_ID1947( ::_unknown_0675 );
    var_1 = _func_1A1( "pre_rapids_trigger", "targetname" );
    var_1 thread _unknown_03C8();
    var_2 = _func_1A1( "trigger_just_before_boatride_end", "targetname" );
    var_2 thread _unknown_051A();
    var_3 = _func_1A1( "trigger_pavelow_pilot_dialogue", "targetname" );
    var_3 thread _unknown_0532();
    var_4 = _func_1F2( "over_waterfall_test", "script_noteworthy" );
    var_4 thread _unknown_0563();
    var_5 = _func_1A1( "zodiac_blend_target", "targetname" );
    var_5 _meth_805A();
    thread _unknown_053D();
    var_6 = _func_1A1( "weapon_pullout_before_waterfall", "targetname" );
    var_6 thread _unknown_0346();
    var_7 = _func_1A1( "trigger_stop_boat_nagging", "targetname" );
    var_7 thread _unknown_062E();
    thread _unknown_058B();
    _unknown_00CD();
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
        wait(_func_0BA( 0.1, 0.4 ));

        if ( !_ID42237::_ID14385( "rocky_bumps" ) )
            continue;

        if ( _ID42237::_ID8201() )
        {
            level._ID794 _meth_80B4( "damage_heavy" );
            continue;
        }

        level._ID794 _meth_80B4( "damage_light" );
    }
}

_ID44247()
{
    level notify( "clear_rapids_junk" );
    level._ID794 _meth_80B6( "damage_heavy" );
    level._ID794 _meth_80B6( "damage_light" );
    level._ID794 thread _ID42237::_ID36516( "zodiac_waterfall_idle" );
    level._ID794 thread _ID42237::_ID36516( "zodiac_waterfall_sustain" );
    level._ID48793 _meth_80B7();
}

_ID50940()
{
    var_0 = _ID42237::_ID35164();
    level._ID49992 = var_0;
    var_1 = _ID42407::_ID16268( "full_brake_until_waterfall_end" );
    var_2 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
    var_3 = _ID42237::_ID16638( var_2._ID1191, "targetname" );
    var_4 = _func_0F3( var_2._ID740, var_3._ID740 );
    var_5 = 175;
    var_6 = var_4 / var_5;
    var_0._ID740 = var_2._ID740;
    var_0 thread _ID51260::_ID50246();
    _ID42237::_ID14413( "full_brake_until_waterfall_end" );
    var_0 _meth_82B8( var_3._ID740, var_6, 0, 0 );
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

    if ( !level._ID794 _meth_8225( level._ID48502._ID740, 65, 1000 ) )
    {
        maps\af_chase_code::_ID43792();
        return;
    }

    thread _unknown_02CA();
    _ID42407::_ID4422( "end_of_boatride" );
    var_2 = _func_1F2( "players_boat_end_path_test", "targetname" );
    level endon( "clear_rapids_junk" );
    childthread _unknown_02A0();
    var_3 = level._ID794 _ID42407::_ID15963();
    var_3._ID20129 = 0.025;
    level._ID48793 = var_3;
    level._ID46392 endon( "death" );
    level notify( "new_river_current" );
    level._ID51596 = 0;
    var_0 _meth_823F( 0, 0 );
    var_4 = _ID42237::_ID35164();
    level._ID50860 = 0;
    var_5 = 1500;
    var_6 = 500;
    var_7 = 20;
    _ID42237::_ID14402( "steady_boat_participating" );
    _ID42237::_ID14402( "rocky_bumps" );
    thread _unknown_0312();
    var_8 = 0;
    var_9 = 40;
    var_10 = -80;
    var_11 = var_8;
    var_12 = -300;
    var_13 = var_9;
    var_14 = 25;
    var_15 = 350;
    var_16 = level._ID794._ID25468;
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
    var_27 = _func_067( var_26 );
    var_28 = _func_069( var_26, "dialog" );
    var_29 = var_27 * var_28[0] + 2;
    var_30 = ( 25221.9, 25839.2, -5296.5 );
    var_31 = 0;
    var_32 = 0;
    var_33 = 0;

    for (;;)
    {
        var_34 = level._ID794 _meth_82FE()[1];
        var_16 += var_34 * var_14;
        var_16 = _func_0EE( var_16, var_15 * -1, var_15 );
        var_35 = _ID51260::_ID53431();
        var_36 = _ID51260::_ID53297();
        var_37 = _ID42237::_ID14385( "boat_hits_right_side" ) || _ID42237::_ID14385( "boat_hits_left_side" );

        if ( var_37 )
            var_16 *= 0.85;

        var_38 = var_16;

        if ( _func_0C3( var_38 ) < 200 )
        {
            var_39 = _func_0BB( _func_03D() * 0.1 ) * 80;
            var_38 += var_39;
            var_38 = _func_0EE( var_38, -200, 200 );
        }

        if ( var_5 > var_6 )
            var_5 -= var_7;

        var_40 = _ID51260::_ID48037( var_35, var_36 + var_5, var_38 );

        if ( _ID42237::_ID14385( "waterfall_goal_swap" ) )
        {
            if ( var_25 < 1 )
                var_25 += 0.01;

            var_40 = _func_11C( var_40, var_1._ID740, var_25 );
        }

        var_40 = _ID42407::_ID32530( var_40, var_0._ID740[2] );
        var_41 = 35;

        if ( _ID42237::_ID14385( "test_boat_is_on_spline" ) )
        {
            var_42 = level._ID45467;

            if ( _ID42237::_ID14385( "full_brake_until_waterfall_end" ) )
                var_42 = level._ID49992;

            var_43 = _ID51260::_ID28677( var_35, var_36, var_42._ID43692, var_42._ID28675 );
            var_41 = _ID42407::_ID17153( var_43, var_10, var_11, var_12, var_13 );
            var_41 = _func_0EE( var_41, var_8, var_9 );

            if ( _ID42237::_ID14385( "full_brake_until_waterfall_end" ) )
            {
                var_44 = _ID42407::_ID17153( var_43, var_19, var_20, var_21, var_22 );
                var_44 = _func_0EE( var_44, var_17, var_18 );
                var_0._ID1266 = var_44;
            }
            else if ( _ID42237::_ID14385( "player_brakes_on_waterfall" ) )
            {
                var_44 = _ID42407::_ID17153( var_43, var_19, var_20, var_21, var_22 );
                var_44 = _func_0EE( var_44, var_17, var_18 );
                var_0._ID1266 = var_44;
            }
        }

        if ( _ID42237::_ID14385( "boat_start_rubber_band" ) )
        {
            var_32 = 1;
            var_41 = var_0 _unknown_063D( var_30, var_26, var_27, var_29, var_8, var_9 );
        }
        else if ( var_32 )
        {
            var_41 = 0;

            if ( !var_33 )
            {
                var_33 = 1;
                var_31 = _unknown_0670( var_30 );
            }

            var_0._ID1278 = var_31;
        }

        var_0 _meth_8236( var_40, var_41 );

        if ( !var_24 )
        {
            var_24 = 1;
            var_0._ID1266 = 0;
        }

        wait 0.05;
    }

    if ( 1 )
        return;

    level._ID46392 thread _ID42411::_ID40218( var_2 );
    level._ID46392 _meth_8289( var_2 );
    level._ID46392 _ID42237::_ID10192( 0.2, ::_meth_828D, 35, 15, 15 );
    level._ID46392 _meth_8295();
    var_45 = 0.3;
    var_46 = 0;
    childthread _unknown_051F();
    _ID42237::_ID14402( "rocky_bumps" );
    var_3 = level._ID794 _ID42407::_ID15963();
    var_3._ID20129 = 0.025;
    level._ID48793 = var_3;

    for (;;)
    {
        if ( maps\af_chase_code::_ID48435() )
        {
            _ID42237::_ID14402( "steady_boat_participating" );
            level._ID794 thread _ID42237::_ID36516( "zodiac_waterfall_idle" );
            level._ID794 thread _ID42237::_ID27000( "zodiac_waterfall_sustain" );
            level._ID46392._ID45403 = 1;
            _ID42237::_ID14388( "rocky_bumps" );
            var_3._ID20129 = 0.225;

            while ( maps\af_chase_code::_ID48435() )
                wait 0.05;

            var_3._ID20129 = 0.0001;
            _ID42237::_ID14402( "rocky_bumps" );
            level._ID794 thread _ID42237::_ID36516( "zodiac_waterfall_sustain" );
            level._ID794 thread _ID42237::_ID27000( "zodiac_waterfall_idle" );
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
            level._ID46392 _meth_825E( level._ID46392._ID740 + ( 0, 0, 64 ) + _ID42237::_ID28976( 32 ), 0.1 );
        }

        wait 0.05;
    }
}

_ID44343( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_0[1] - level._ID794._ID740[1];
    var_7 = level._ID28543 _meth_8159( var_1 ) * var_2;
    var_8 = var_3 - var_7;
    var_9 = var_6 / var_8 / 17.6;

    if ( level._ID794._ID740[1] > var_0[1] )
        var_9 = 0;
    else if ( var_8 > 0.4 )
        self._ID1278 = var_9;
    else
        self._ID1278 = 10;

    var_10 = _func_0EE( var_9, var_4, var_5 );
    return var_10;
}

_ID53345( var_0 )
{
    var_1 = 80;
    var_2 = 200;
    var_3 = var_0[1] - level._ID794._ID740[1];
    var_3 = _func_0EE( var_3, var_1, var_2 );
    var_4 = var_3 - var_1 / var_2 - var_1;
    var_5 = 3 + var_4 * 8;
    return var_5;
}

_ID44783()
{
    wait 0.6;
    _func_157( _ID42237::_ID16299( "heli_water_drips" ), self, "TAG_DOOR_REAR" );
}

_ID48516()
{
    level._ID28543 endon( "death" );
    level._ID28543 notify( "waterfall_sequence" );
    level._ID28543._ID54140 = 1;
    level._ID28543 _ID42407::_ID28876();
    level._ID794 _ID42407::_ID13025( "zodiac_aim_helicopter" );
    level._ID28543 _meth_859D( 0 );
    level._ID46392 childthread _unknown_0C34( level._ID28543 );
    childthread _unknown_091C();
    level._ID46392 _meth_8155( level._ID46392 _ID42407::_ID16120( "player_view_fall_anim" ) );
    level._ID46392 _meth_8156( level._ID46392 _ID42407::_ID16120( "player_view_fall" ), 1 );
    _ID42237::_ID14413( "price_shoot" );
    thread _unknown_08F9();
    thread _unknown_0BD5();
    var_0 = level._ID52084;
    var_1 = level._ID28543 _meth_818C( "tag_flash" );
    var_2 = var_0 _meth_818C( "tag_guy0" ) + ( 0, 0, 875 );
    _func_1C8( "m203", var_1, var_2 );
    _func_157( level._ID1426["fx/muzzleflashes/m203_flshview"], level._ID28543, "tag_flash" );
    wait 0.7;
    level._ID794 _ID42407::_ID13025( "disable_shooting" );
    level._ID47133 _ID42407::_ID10226( 0.05, ::_unknown_0A6A );
    var_3 = _ID42237::_ID16299( "fx/explosions/large_vehicle_explosion" );
    _func_157( var_3, var_0, "tag_guy0" );
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
    var_0 _ID54167::_ID48800( 0.7 ) _ID54167::_ID47198( 0.1, 1.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_0 _ID54167::_ID48800( 8.6 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 1.3 );
    var_0 _ID54167::_ID48166();
}

_ID54285()
{
    var_0 = 2;

    for (;;)
    {
        if ( _ID42237::_ID14385( "price_fire_zodiac" ) )
        {
            level._ID28543 _meth_81F7();
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
    thread _unknown_0CC1();
}

_ID45755()
{
    var_0 = _func_1A1( "water_fall_edge_trigger", "targetname" );
    level._ID46392 notify( "stop_targetting" );
    level._ID794 _meth_8121( 1 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    _func_0DB( "fx_alphathreshold", 40 );
    _func_157( _ID42237::_ID16299( "splash_over_waterfall" ), level._ID46392, "tag_guy2" );
    level._ID46392 notify( "kill_treadfx" );
    maps\af_chase_code::_ID52556();
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = _func_1A1( "on_foot_destination", "targetname" );
    level._ID794 _meth_8328();
    level notify( "player_over_the_waterfall" );
    _func_0DB( "compass", 0 );
    var_3 = var_1._ID740[2] - 10;
    level._ID794 _meth_8087( level._ID46392, "tag_player", 0.15, 0.05, 0.05 );

    while ( level._ID794._ID740[2] > var_3 )
        wait 0.05;

    _unknown_0CAD();
    _ID42237::_ID14402( "pickup_heli_ok_to_delete_now" );
    level notify( "stop_music_at_splash" );

    if ( _func_02F( level._ID44901 ) )
    {
        level._ID44901 _meth_80B3();
        level._ID44901 _ID42237::_ID10192( 0.05, ::_meth_80B7 );
    }

    thread _unknown_0CA2();
    var_4 = _ID42407::_ID32530( level._ID43587._ID740, var_1._ID740[2] - 55 );
    level._ID46392 _meth_80B7();
    var_5 = _func_1A2( "script_vehicle_zodiac", "classname" );
    var_6 = _func_1A2( "script_vehicle_zodiac_physics", "classname" );
    _ID42237::_ID3294( var_5, ::_meth_80B7 );
    _ID42237::_ID3294( var_6, ::_meth_80B7 );
    level._ID43587._ID740 = var_4;
    level._ID794 _meth_8055();
    level._ID794 _meth_8084( level._ID43587, "tag_player", 1, 0, 0, 0, 0 );
    _ID42237::_ID14402( "boat_freeze" );
    _func_14B();
    level._ID794 _meth_80B4( "damage_heavy" );
    _func_192( 0.3, 3.5, level._ID794._ID740, 1000 );
    level._ID794 _meth_8229( 3, 3 );

    if ( _func_02F( level._ID28543._ID15093 ) )
        level._ID28543 _ID42407::_ID15095();

    level._ID28543 _ID42407::_ID36519();
    level._ID46392 notify( "end_aim" );
    _ID42237::_ID3294( _func_0DE(), ::_meth_80B7 );
    level._ID794 thread _ID42407::_ID41628();
    thread _ID52272::_ID47298();
    wait 1;

    if ( !_ID42237::_ID14385( "killed_pickup_heli" ) )
    {
        _func_034( "ui_deadquote", &"AF_CHASE_FAILED_TO_SHOOT_DOWN" );
        _ID42407::_ID23778();
        return;
    }

    var_7 = _ID42313::_ID9125( "black", 0, level._ID794 );
    var_7 _meth_808B( 3 );
    var_7._ID55 = 1;
    wait 2;
    _func_034( "ui_char_museum_mode", "credits_1" );
    _ID42407::_ID24793();

    if ( _ID49347::_ID44352() || _ID42237::_ID14385( "has_cheated" ) )
        _func_034( "lastMissionPassCheatStatus", 1 );

    wait 7;
}

_ID54723()
{
    var_0 = _func_1A1( "zodiac_blend_target", "targetname" );
    level._ID46392 _meth_80C6();
    level._ID794 _meth_8087( var_0, "tag_player", 0.05, 0, 0 );
    level._ID794 _meth_8087( var_0, "tag_player", 0.05, 0, 0 );
    level._ID46392 _meth_80C7();
    level._ID43587 = var_0;
}

_ID43513()
{
    _ID42237::_ID14402( "killed_pickup_heli" );
    thread _ID42407::_ID27079( "scn_afchase_pavelow_downed" );
    self _meth_8295();
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
    self _meth_80B7();
}

_ID51101()
{
    self waittill( "trigger" );
    level._ID28543._ID51079 = undefined;
    level._ID28543._ID49812 = "left";
}

_ID27345()
{
    level._ID46392 _meth_8295();
    level._ID794 _meth_8104();
    level._ID46392 _meth_80B8( "vehicle_zodiac" );
    level._ID794._ID11803 = undefined;
}

_ID47180()
{
    var_0 = self._ID29965;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID36519();
    }

    var_clear_2
    var_clear_0
    self _meth_80B7();
}
#using_animtree("vehicles");

_ID51870()
{
    var_0 = _ID42237::_ID16638( "rapids_anim_scene", "targetname" );
    var_0._ID65 = ( 0, 0, 0 );
    var_1 = self;
    level._ID52084 = self;
    var_1._ID3189 = "pavelow";
    var_2 = level._ID46392;
    var_2 = _func_06A( "script_model", level._ID46392._ID740 );
    var_2 _meth_80B8( level._ID46392._ID669 );
    var_2._ID3189 = "zodiac_player";
    var_2 _meth_805A();
    var_2 _meth_811E( #animtree );
    var_2 _meth_82C9();
    level._ID45467 = var_2;
    var_3 = [];
    var_3["heli"] = var_1;
    var_3["boat"] = var_2;
    var_1 _meth_8295();
    var_0 thread _ID42259::_ID3044( var_1, "sniper_waterfall_idle", "stop_loop_solo" );
    var_0 notify( "stop_loop_solo" );
    _ID42237::_ID14413( "enemy_boat_boarded_seaknight" );
    _ID42237::_ID14413( "player_in_position_for_boarding_sequence" );
    _ID42475::_ID34575( "aud_reverse_engine_plr_boat" );
    var_1 thread _ID42407::_ID27079( "scn_afchase_pavelow_takeoff" );
    var_1 thread _unknown_0DDF();
    var_2 thread _ID51260::_ID50246();
    level._ID48502 _ID42407::_ID10226( 10, ::_unknown_0F8E );
    var_4 = level._ID48502 _ID42411::_ID40283();
    level._ID48502 _meth_828E( 500, 500, 500 );
    level._ID48502 _meth_8236( ( 25648, 26920, -10168 ), 500 );
    var_5 = _func_06A( "script_origin", var_1._ID740 );
    var_5 _meth_8053( var_1, "tag_body", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_4 _ID42237::_ID10192( 0.05, ::_meth_8053, var_5 );
    level._ID794 thread _ID42407::_ID27079( "afchase_plp_onboard" );
    level._ID28543 notify( "stop_boatrider_targets" );
    level._ID28543 _meth_8173( var_1 );
    var_6 = var_2 _ID42407::_ID16120( "sniper_waterfall" );
    var_7 = _func_072( var_0._ID740, var_0._ID65, var_6 );
    var_8 = _func_071( var_0._ID740, var_0._ID65, var_6 );
    thread _unknown_11BD( var_2 );
    thread _unknown_0E92();
    level._ID794 _ID42407::_ID10226( 4, _ID42407::_ID27079, "afchase_plp_thelongway" );
    _ID42237::_ID14402( "test_boat_is_on_spline" );
    var_0 thread _ID42259::_ID3111( var_1, "sniper_waterfall" );
    var_0 _ID42259::_ID3111( var_2, "sniper_waterfall" );
}

_ID50666( var_0, var_1, var_2 )
{
    thread _unknown_10FC( var_0, var_1, var_2 );
}

_ID46530( var_0, var_1, var_2 )
{
    self notify( "new_move_to_tag" );
    self endon( "new_move_to_tag" );
    var_3 = _func_03D() + var_2 * 1000;
    var_4 = var_0 _meth_818C( var_1 );
    self _meth_8055();
    self _meth_82B8( var_4, var_2 );

    while ( _func_03D() < var_3 )
    {
        var_5 = var_0 _meth_818C( var_1 );

        if ( var_5 != var_4 )
        {
            var_4 = var_5;
            var_2 = var_3 - _func_03D() / 1000;
            self _meth_82B8( var_4, var_2 );
        }

        wait 0.05;
    }

    self _meth_8054( var_0, var_1 );
}

_ID48004()
{
    level._ID47133 = self;
    thread _ID42411::_ID16988();

    while ( !_func_02F( level._ID46392 ) )
        wait 0.05;

    thread _unknown_10E6();
}

_ID48962()
{
    var_0 = level._ID47133;
    var_1 = _func_018( "misc_turret", var_0._ID740, "minigun_littlebird_spinnup" );
    var_1 _meth_80B8( "vehicle_little_bird_minigun_right" );
    var_1 _meth_8053( var_0, "tag_gunner_right", ( 33, 0, 0 ), ( 60, 76, 0 ) );
    var_1._ID26175 = self;
    var_1 _meth_8160( 85 );
    var_1 _meth_815F( 85 );
    var_1 _meth_8162( 55 );
    var_1 _meth_8161( 85 );
    var_1._ID31474 = "axis";
    var_1 _meth_806C( "manual" );
    var_1 thread _ID42331::_ID6448();
    var_1 _meth_80C7();
    var_1 _meth_813E( "axis" );
    level thread _ID42331::_ID23499( var_1, _ID42407::_ID16219() );
    var_1 _meth_8114( 0.4 );
    var_1 _meth_813C( 1 );
    var_1._ID10 = 0;
    level._ID54525 = var_1;
    var_1 thread _unknown_125A();
    var_0 waittill( "death" );
    var_1 _meth_80B7();
}

_ID53774()
{
    var_0 = _ID42237::_ID16638( "minigun_path", "targetname" );
    var_1 = _func_06A( "script_origin", var_0._ID740 );
    var_2 = _func_1A1( "minigun_splasher", "targetname" );
    var_2 thread _unknown_1368();
    self endon( "death" );
    self _meth_810F( var_1 );
    _ID42237::_ID14413( "price_steady1" );
    self _meth_80E9();

    while ( !_ID42237::_ID14385( "price_fired_all_his_shots_at_heli" ) )
    {
        if ( !_func_02F( var_0._ID1191 ) )
            return;

        var_0 = _ID42237::_ID16638( var_0._ID1191, "targetname" );

        if ( !_func_02F( var_0 ) )
            return;

        var_1 _meth_82B8( var_0._ID740, 1, 0, 0 );
        var_1 waittill( "movedone" );
    }

    var_1 _meth_82B8( level._ID794._ID740, 2.5, 0, 0 );
    self _meth_810F( level._ID794 );
    self _meth_8114( 0.4 );
    self _meth_813C( 3 );
    self._ID10 = 1;
}

_ID53465()
{
    _ID42237::_ID14413( "player_in_sight_of_boarding" );
    level._ID28543._ID51079 = undefined;
    level._ID28543._ID49812 = "left";
    thread _unknown_0F29();
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
    var_0 = _func_1F2( "slow_enemy_zodiac_for_player", "script_noteworthy" );
    var_1 waittill( "trigger",  var_1  );
    _ID42237::_ID14402( "zodiac_boarding" );
    var_1 _meth_828D( 0, 30, 44 );
    _ID42237::_ID14413( "player_in_sight_of_boarding" );
    var_1 _meth_829B( 12 );
}

_ID53867()
{
    _ID42237::_ID14413( "player_jumping_over_waterfall" );
    thread _unknown_11EB();
    var_0 = level._ID46392;
    var_1 = var_0 _ID42237::_ID35164();
    var_2 = "waterfall_over";
    thread _unknown_0F9B();
    var_0 notify( "kill_anims" );
    _ID42475::_ID34575( "aud_stop_mix_steady_boat" );
    _ID42475::_ID34575( "start_over_waterfall" );
    var_0 _meth_802A( level._ID52555, "tag_player" );
    var_0 _meth_801D( level._ID30904["worldbody"], "tag_player" );
    var_0 _meth_814D( %h2_afchase_waterfall_player_fall, 1.0, 0 );
    var_1 thread _ID42259::_ID3111( var_0, var_2, undefined, undefined, undefined, undefined, 0 );
    var_3 = _func_1A5();
    var_3._ID65 = ( 19.7217, 70.7454, -1.66272 );
    var_3._ID740 = ( 25480, 25950, -5507 );
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
    var_4 = var_0 _meth_818C( "tag_body" );
    var_5 = 2;
    var_6 = 45;

    for (;;)
    {
        wait 0.05;
        var_7 = var_0 _meth_818C( "tag_body" );
        var_8 = var_0 _meth_818D( "tag_body" );
        var_9 = _func_0F3( var_4, var_7 ) * 20 / 17.6;
        level._ID52611 = var_9;
        var_10 = level._ID46392 _meth_818C( "tag_body" );
        var_11 = _ID42407::_ID15689( var_7, var_8, var_10 );
        var_4 = var_7;

        if ( var_11 > 0 )
            var_6 = var_9 - var_2;
        else if ( var_11 < 0 )
        {
            if ( _func_0F3( var_7, var_10 ) < 86 )
                var_6 = var_9;
            else
                var_6 = var_9 + var_1;
        }

        var_6 = _func_0EE( var_6, 5, 60 );
        var_3 _meth_828D( var_6, 8, 8 );
    }
}

_ID48310()
{
    var_0 = _ID42237::_ID16299( "pavelow_minigunner_splash_add" );

    for (;;)
    {
        self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( var_2._ID172 != "misc_turret" )
            continue;

        var_6 = var_2 _meth_818D( "tag_flash" );
        var_7 = var_2 _meth_809C( "tag_flash" );
        var_8 = _func_11F( var_6 ) * 3000;
        var_9 = _func_06D( var_7, var_7 + var_8, 0, var_2 );

        if ( var_9["fraction"] == 1.0 )
            continue;

        if ( _func_02F( var_9["entity"] ) )
            continue;

        _func_156( var_0, var_9["position"] );
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
    var_2 = _func_06A( "sound_blend", ( 0, 0, 0 ) );
    var_2 thread _ID42407::_ID22901( self, ( 0, 0, 0 ) );
    var_3 = _func_06A( "sound_blend", ( 0, 0, 0 ) );
    var_3 thread _ID42407::_ID22901( self, ( 0, 0, 64 ) );
    var_3 thread _ID42407::_ID23791( var_1 );
    var_3 _meth_803D( var_1, var_1 + "_off", 0 );
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
        var_2 = _func_067( var_1 );
        var_0 _ID42407::_ID13025( "transitioning_positions" );
        waittillframeend;
        var_0._ID7._ID52880 = "right";
        var_0 _meth_8119( "trans", var_1, %body, 1, 0.2 );
        var_0 animscripts\notetracks::_ID11534( _func_067( var_1 ) - 0.3, "trans" );
        var_0._ID7._ID50516 = _func_03D();
        var_0 _ID42407::_ID13021( "transitioning_positions" );
    }

    thread _ID42259::_ID3020( var_0, "zodiac_rapids_price", "tag_guy2" );
    waittillframeend;
    var_0 _meth_8156( %h2_afchase_waterfall_price_aim_4, 1, 0, 1 );
    var_0 _meth_8156( %h2_afchase_waterfall_price_aim_6, 1, 0, 1 );
    var_0 _meth_8156( %waterfall_price_aiming_aim_4, 0, 0, 1 );
    var_0 _meth_8156( %waterfall_price_aiming_aim_6, 0, 0, 1 );

    for (;;)
    {
        if ( !_ID42237::_ID14385( "price_add_aim" ) )
        {
            var_0 _meth_8156( %waterfall_price_aiming_aim_4, 0, 0.2 );
            var_0 _meth_8156( %waterfall_price_aiming_aim_6, 0, 0.2 );
        }
        else
        {
            var_3 = _func_11F( var_0._ID65 );
            var_3 = _func_119( ( var_3[0], var_3[1], 0 ) );
            var_4 = level._ID52084._ID740 - var_0._ID740;
            var_4 = _func_119( ( var_4[0], var_4[1], 0 ) );
            var_5 = _unknown_18D3( var_3, var_4 );

            if ( var_5 < 0 )
            {
                var_6 = _func_0EE( var_5 / -0.7, 0, 1 );
                var_0 _meth_8156( %waterfall_price_aiming_aim_4, var_6, 0.2 );
                var_0 _meth_8156( %waterfall_price_aiming_aim_6, 0, 0.2 );
            }
            else if ( var_5 > 0 )
            {
                var_6 = _func_0EE( var_5 / 0.8, 0, 1 );
                var_0 _meth_8156( %waterfall_price_aiming_aim_4, 0, 0.2 );
                var_0 _meth_8156( %waterfall_price_aiming_aim_6, var_6, 0.2 );
            }
            else
            {
                var_0 _meth_8156( %waterfall_price_aiming_aim_4, 0, 0.2 );
                var_0 _meth_8156( %waterfall_price_aiming_aim_6, 0, 0.2 );
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
    self _meth_80B8( "h2_vehicle_pavelow_low" );
    var_0 = self._ID3575;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_3 = _func_1A1( "enemy_chase_boat", "targetname" );
    var_3._ID21855._ID23875 _meth_805A();
    var_4 = var_3._ID21855._ID3575;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_1 = var_4[var_5];
        var_1 _meth_805A();
    }

    var_clear_1
    var_clear_0
}

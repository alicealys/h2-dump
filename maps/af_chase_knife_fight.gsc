// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52726()
{
    _ID42407::_ID1951( "wakeup", ::_unknown_0181, "", ::_unknown_0288 );
    _ID42407::_ID1951( "wakefast", ::_unknown_0193, "", ::_unknown_029A );
    _ID42407::_ID1951( "turnbuckle", ::_unknown_03D5, "", ::_unknown_03F0 );
    _ID42407::_ID1951( "gun_fight", ::_unknown_098D, "", ::_unknown_09F6 );
    _ID42407::_ID1951( "crawl", ::_unknown_0AD7, "", ::_unknown_0AF4 );
    _ID42407::_ID1951( "gun_kick", ::_unknown_0B9E, "", ::_unknown_0BA1 );
    _ID42407::_ID1951( "wounded", ::_unknown_0BE4, "Watch Price/Shep fight", ::_unknown_0BE2 );
    _ID42407::_ID1951( "pullout", ::_unknown_0C95, "", ::_unknown_0C93 );
    _ID42407::_ID1951( "kill", ::_unknown_0DAD, "", ::_unknown_0DC9 );
    _ID42407::_ID1951( "endgame", ::_unknown_0E54, "", ::_unknown_0E6A );
    _ID42407::_ID1951( "museum_freeroam", ::_unknown_00FB );
    _ID42407::_ID1951( "museum_credits", ::_unknown_0106 );
}

_ID54337()
{

}

_ID53376()
{
    _ID42407::_ID1895( "knife", &"AF_CHASE_PRESS_USE", maps\af_chase_knife_fight_code::_ID48087, undefined, "small_background" );
    _ID42407::_ID1865( "hint_crawl_right", &"AF_CHASE_HINT_CRAWL_RIGHT", maps\af_chase_knife_fight_code::_ID48590, &"AF_CHASE_HINT_CRAWL_RIGHT_PC", undefined, "small_background" );
    _ID42407::_ID1865( "hint_crawl_left", &"AF_CHASE_HINT_CRAWL_LEFT", maps\af_chase_knife_fight_code::_ID49499, &"AF_CHASE_HINT_CRAWL_LEFT_PC", undefined, "small_background" );
    _ID42407::_ID1895( "hint_melee", &"AF_CHASE_HINT_MELEE_EMPTY", maps\af_chase_knife_fight_code::_ID49166, undefined, "small_background" );
    _ID42237::_ID14400( "player_learned_melee" );
    _ID42237::_ID14400( "stop_heart" );
    _ID42237::_ID14400( "fell_off_waterfall" );
    _ID42237::_ID14400( "shepherd_spawned" );
    _ID42237::_ID14400( "wakeup_start" );
    _ID42237::_ID14400( "player_standing" );
    _ID42237::_ID14400( "focused_on_knife" );
    _ID42237::_ID14400( "player_looks_at_knife" );
    _ID42237::_ID14400( "helicopter_sound_played" );
    _ID42237::_ID14400( "player_uses_knife" );
    _ID42237::_ID14400( "player_aims_knife_at_shepherd" );
    _ID42237::_ID14400( "stop_aftermath_player" );
    _ID42237::_ID14400( "two_hand_pull_begins" );
    _ID42237::_ID14400( "price_shepherd_fight_e_flag" );
    _ID42237::_ID14400( "gloat_fade_in" );
    _ID42237::_ID14400( "dialog_all_finished" );
    _ID42237::_ID14400( "fog_pulse_window_for_spawn" );
    _ID42237::_ID14400( "player_near_shepherd" );
    _ID42237::_ID14400( "turn_buckle_fadeout" );
    _ID42237::_ID14400( "steady_boat_participating" );
    _ID42237::_ID14400( "trigger_over_waterfall" );
    _ID42237::_ID14400( "shepherd_stumbles_by" );
    _ID42237::_ID14400( "shepherd_killed" );
    _ID42237::_ID14400( "player_throws_knife" );
    _ID42237::_ID14400( "fade_away_idle_crawl_fight" );
    _ID42237::_ID14400( "price_told_player_to_hold_steady" );
    _ID42237::_ID14400( "stop_boat_dialogue" );
    _ID42237::_ID14400( "af_chase_nextmission" );
    _ID42237::_ID14400( "shepherd_should_do_idle_b" );
    _ID42237::_ID14400( "player_touched_shepherd" );
    _ID42237::_ID14400( "bloody_player_rig" );
    _ID42237::_ID14400( "end_heli_crashed" );
    _ID42237::_ID14400( "end_heli_nearly_crashed" );
    _ID42237::_ID14400( "player_gets_up_after_waterfall" );
    _ID42237::_ID14400( "water_cliff_jump_splash_sequence" );
    _ID42237::_ID14400( "killed_pickup_heli" );
    _ID42237::_ID14400( "fog_out_stumble_shepherd" );
    _ID42237::_ID14400( "blinder_effect" );
    _ID42237::_ID14400( "goodtime_for_fog_blast" );
    _ID42237::_ID14400( "sandstorm_fully_masked" );
    _ID42237::_ID14400( "fight_objective_positioned" );
    _ID42237::_ID14400( "turn_buckle_start" );
    _ID42237::_ID14400( "af_chase_final_ending" );
    _ID42237::_ID14400( "af_chase_ending_credits" );
    _ID42237::_ID14400( "af_chase_final_fight" );
    _ID42237::_ID14400( "af_chase_see_shepherd" );
    _ID42237::_ID14400( "special_kill_anim_playing" );
    _ID42237::_ID14400( "price_was_killed" );
    _ID42237::_ID14400( "crawl_gameplay_started" );
    _ID42237::_ID14400( "crawl_gameplay_complete" );
    _ID42237::_ID14400( "shepherd_fights_price_sequence_start" );
    _ID42237::_ID14400( "throw_knife_pulled_out" );
    _ID42237::_ID14400( "throw_knife_gameplay_started" );
    _ID42237::_ID14400( "crawl_gameplay_player_input" );
    thread _ID51067::_ID616();
    level._ID51340 = &"AF_CHASE_FAILED_TO_PULL_KNIFE";
    _func_036( "enable_heartbeat_overlay", 1 );
}

_ID45160()
{
    _func_2F1( 0, "xy", 1.5, 0.3 );
    maps\af_chase_knife_fight_code::_ID46312( "bump_small_start", "bump_big_start" );
    level._ID45017 = 2500;
    level._ID50860 = 1200;
    _ID42272::_ID33575( "compass_map_afghan_chase" );

    if ( level._ID912 == "ending" )
        maps\ending_aud::_ID616();
    else
        maps\af_chase_aud::_ID616();

    waitframe;

    if ( _func_02F( level._ID36513 ) && level._ID36513 )
        return;
}

_ID312()
{

}

_ID53792()
{
    _ID42407::_ID4917( "axis" );
    _ID42407::_ID4917( "allies" );
    maps\af_chase_knife_fight_code::_ID54597();
    level._ID794 _meth_830C( 0 );
    thread maps\af_chase_knife_fight_code::_ID51324();
    thread maps\af_chase_knife_fight_code::_ID46620();
    anim._ID14274["empty_script"] = ::_unknown_0483;
    var_0 = _ID42237::_ID35164();
    level._ID50049 = var_0;
    var_1 = _func_03A( "cg_fov" );
    var_0._ID740 = ( var_1, 0, 0 );
    _ID42407::_ID10226( 0.05, maps\af_chase_knife_fight_code::_ID44688 );
    thread _ID51067::_ID48476();
    maps\af_chase_knife_fight_code::_ID43537();
    _func_0DB( "g_friendlyNameDist", 0 );
    _func_0DB( "sm_sunSampleSizeNear", 0.25 );
    maps\af_chase_knife_fight_code::_ID48973();
    maps\af_chase_knife_fight_code::_ID45418();
    level._ID47973 = _func_1A5();
    level._ID47973._ID23586 = 0.5;
    level._ID47973._ID23033 = 0.8;
    _ID42407::_ID29516( "boat_check_trailing" );
    _ID42407::_ID29516( "boat_check_player_speeding_along" );
    _ID42407::_ID32527( 100, 0.7, 0.4 );
    _func_0DB( "cg_fov", 65 );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "hud_showstance", 0 );
    _func_0DB( "compass", 1 );
    _func_0DB( "ui_hideCompassTicker", 1 );
    _func_0DB( "actionSlotsHide", 1 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_832A();
    thread _ID52272::_ID48356();
    thread maps\af_chase_knife_fight_code::_ID48797();
    level._ID794 _meth_831B();
    level._ID43135.greenberet_disabled = 1;
    _func_1E3( 1, "invisible", &"AF_CHASE_PURSUE" );
    _func_114( 1, "done" );
    thread _unknown_1513();
}

_ID43097()
{
    _ID42475::_ID34575( "start_wakeup_after_crash_checkpoint" );
}

_ID53570()
{
    var_0 = animscripts\utility::_ID3291( 11, 9.5, 8 );
    var_1 = animscripts\utility::_ID3291( 9, 7.5, 6 );
    var_2 = _func_046();

    for ( var_3 = ( var_2[0], var_2[1], var_2[2] ); !_ID42237::_ID14385( "do_museum_credits" ); var_3 = var_6 )
    {
        if ( _ID42237::_ID14385( "h2_sunintensity_intense" ) )
        {
            var_4 = _ID42237::_ID28945( var_1 );
            var_5 = _func_0BA( 3, 4 );
        }
        else
        {
            var_4 = _ID42237::_ID28945( var_0 );
            var_5 = _func_0BA( 1, 2 );
        }

        var_5 = _ID42407::_ID30229( var_5, 1, 0 );
        var_6 = ( var_4, var_4, var_4 );

        for ( var_7 = 0; var_7 < var_5; var_7 += 0.05 )
        {
            var_8 = _func_11C( var_3, var_6, var_7 / var_5 );
            _func_047( var_8[0], var_8[1], var_8[2] );
            wait 0.05;
        }
    }

    _func_048();
}

_ID52520()
{
    var_0 = _func_1B0( level._ID794 );
    var_0._ID48175 = 648;
    var_0._ID43646 = 486;
    var_0._ID49777 = 640;
    var_0._ID50083 = 480;
    _func_0DB( "cg_altDamageBrightness", 0 );
    _func_0DB( "cg_altDamageAlpha", "1" );
    _func_0DB( "cg_altDamageFlashColor", ".125 0 0" );
    _func_0DB( "cg_bloodThickColor", "100 0 0 100" );
    var_1 = "overlay_low_health";
    var_0._ID1331 = 320;
    var_0._ID1339 = 240;
    var_0 _meth_80D3( var_1, var_0._ID49777, var_0._ID50083 );
    var_0._ID998 = 1;
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID983 = 1;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    wait 1.4;
    var_0 _meth_808B( 0.5 );
    var_0._ID55 = 0;
    var_2 = 0.1;
    var_3 = 0.5;
    var_4 = 0.1;
    var_5 = 0.025;
    var_6 = 0.575;
    var_7 = 0.6;
    var_8 = 0;
    var_9 = 0.1;
    var_0._ID55 = var_7;
    var_10 = _func_0E6( var_2, var_5 );
    var_10 += _func_0E6( var_4, var_9 );
    var_11 = _func_0E6( var_3, var_6 );
    var_11 += _func_0E6( var_4, var_9 );
    var_11 += 1.2;
    var_12 = "breathing_heartbeat";

    for ( var_13 = 0; var_13 < 6; var_13++ )
    {
        var_0 _meth_808C( var_3, var_0._ID48175, var_0._ID43646 );
        var_0 _meth_808B( var_6 );
        var_0._ID55 = var_8;
        wait(var_11);
        var_0 _meth_808C( var_2, var_0._ID49777, var_0._ID50083 );
        var_0 _meth_808B( var_5 );
        var_0._ID55 = var_7;
        wait(var_10);
        var_7 -= 0.1;
        thread _unknown_0882( 1 - var_13 * 0.1 );
        level._ID794 _meth_82FF( var_12 );
    }

    var_0 _meth_808B( 2 );
    var_0._ID55 = 0;
    wait 2;
    var_0 _meth_808F();
}

_ID48057( var_0 )
{
    level notify( "new_pulse" );
    level endon( "new_pulse" );
    level._ID54494 = 0.1 * var_0;
    wait 0.05;
    level._ID54494 = 0.15 * var_0;
    wait 0.05;
    level._ID54494 = 0.2 * var_0;
    wait 0.05;
    level._ID54494 = 0.25 * var_0;
    wait 0.05;
    level._ID54494 = 0.3 * var_0;
    wait 0.05;
    level._ID54494 = 0.35 * var_0;
    wait 0.05;
    level._ID54494 = 0.4 * var_0;
    wait 0.05;
    level._ID54494 = 0.4 * var_0;
    wait 0.05;
    level._ID54494 = 0.35 * var_0;
    wait 0.05;
    level._ID54494 = 0.3 * var_0;
    wait 0.05;
    level._ID54494 = 0.25 * var_0;
    wait 0.05;
    level._ID54494 = 0.2 * var_0;
    wait 0.05;
    level._ID54494 = 0.15 * var_0;
    wait 0.05;
    level._ID54494 = 0.1 * var_0;
    wait 0.05;
    level._ID54494 = 0;
}

_ID52710()
{
    level._ID794 endon( "death" );
    level endon( "stop_drunk_walk" );
    _unknown_17C3();
    _unknown_17D5( 0.6, 0 );
    wait 2;
    level._ID54494 = 0;
    var_0 = 0.4;
    var_1 = 14;
    var_2 = 0.05;
    var_3 = var_1 / var_2;
    var_4 = 0;
    var_5 = var_0 / var_3;
    var_6 = 1;

    for (;;)
    {
        var_0 -= var_5;
        var_0 = _func_0EE( var_0, 0, 1 );
        var_7 = var_0 + level._ID54494;
        _unknown_1810( var_7, 0.05 );
        var_4++;
        wait(var_2);
    }
}

_ID48459()
{
    var_0 = level._ID35897 != "wakefast";
    _ID42237::_ID14413( "fell_off_waterfall" );
    thread _unknown_091C();
    maps\af_chase_knife_fight_code::_ID52796( "af_chase_ending_wakeup" );
    thread maps\af_chase_knife_fight_code::_ID50617();
    thread maps\af_chase_knife_fight_code::_ID47957();
    thread maps\af_chase_knife_fight_code::_ID45872();
    thread maps\af_chase_knife_fight_code::_ID52811();
    _unknown_08D8();

    if ( var_0 )
    {
        thread maps\af_chase_knife_fight_code::_ID49077();
        thread _unknown_0AD4();
    }

    _func_076( 20, 0 );
    _func_076( 0, 8 );
    var_1 = "wakeup";
    var_2 = _ID42237::_ID16638( "end_scene_org", "targetname" );
    var_3 = _ID42407::_ID35028( "player_rig" );
    var_2 _ID42259::_ID3018( var_3, var_1 );
    level._ID794 _meth_8084( var_3, "tag_player", 1, 0, 0, 0, 0, 1 );

    if ( _func_03A( "lastMissionPassCheatStatus" ) == 1 )
        _ID42237::_ID14402( "has_cheated" );

    _func_087( var_1, &"AUTOSAVE_LEVELSTART", "shot", 1 );
    level._ID794 _meth_8334( 1 );
    _ID42407::_ID3344( "crawling_spawner", maps\af_chase_knife_fight_code::_ID47222 );
    _ID42407::_ID3344( "crawling_spawner", maps\af_chase_knife_fight_code::_ID51151 );
    _ID42407::_ID3346( "crawling_spawner" );
    var_4 = _func_1A1( "damaged_pavelow", "targetname" );
    var_4 thread _ID42407::_ID27079( "scn_afchase_heli_cookoff" );

    if ( var_0 )
    {
        level._ID794 _ID42407::_ID10226( 5, _ID42407::_ID27079, "scn_afchase_wakeup_player" );
        level._ID794 _ID42407::_ID10226( 12.5, _ID42407::_ID27079, "scn_afchase_wakeup_player_cough" );

        if ( _func_039( "enable_heartbeat_overlay" ) == "1" )
        {
            thread _unknown_0A45();
            thread _unknown_0B01();
        }

        var_2 _ID42259::_ID3111( var_3, var_1 );
    }
    else
    {
        var_2 thread _ID42259::_ID3111( var_3, var_1 );
        var_5 = var_3 _ID42407::_ID16120( var_1 );
        var_3 _meth_8155( var_5, 1, 0, 25 );

        for (;;)
        {
            var_6 = var_3 _meth_8159( var_5 );

            if ( var_6 >= 0.95 )
                break;

            wait 0.05;
        }
    }

    _ID42407::_ID10226( 5, maps\af_chase_knife_fight_code::_ID52297 );
    var_3 _meth_80B7();
    _func_1E3( 2, "current", &"AF_CHASE_OBJ_CRASH" );
    _func_194( 2, level._ID53826, ( 0, 0, 90 ) );
    _func_0C7( 2, &"SCRIPT_WAYPOINT_SHEPHERD" );
    _ID42237::_ID14402( "player_standing" );
    _ID42237::_ID14402( "start_doing_aftermath_walk" );
}

_ID50651()
{
    var_0 = _ID54167::_ID43386( "ending_wakeup_intro" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.0, 1000, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 3.5 ) _ID54167::_ID50321( 5.0, 25, 0.8, 1.0 );
    var_0 _ID54167::_ID48800( 6.15 ) _ID54167::_ID50321( 8.0, 16.5, 3.0, 3.0 );
    var_0 _ID54167::_ID48800( 9.65 ) _ID54167::_ID50321( 4.0, 16, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 11.5 ) _ID54167::_ID50321( 4.0, 13, 4.0, 4.0 );
    var_0 _ID54167::_ID48800( 13.5 ) _ID54167::_ID50321( 8.0, 55, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 15.0 ) _ID54167::_ID50321( 16.0, 1000, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 16.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 54, 0.0, 0 );
    var_0 _ID54167::_ID48800( 0.05 ) _ID54167::_ID43500( 7.0, 0 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 16.0 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 6.55 ) _ID54167::_ID47198( 0.14, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.8 );
    var_0 _ID54167::_ID48800( 8.8 ) _ID54167::_ID47198( 0.08, 0.6, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 10.25 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 11.75 ) _ID54167::_ID47198( 0.14, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.5 );
    thread _unknown_0E5C();
    var_0 _ID54167::_ID48166();
    _func_0DB( "ui_consciousnessVignetteDarkness", 1.0 );
}

_ID47563()
{
    wait 0.5;
    _func_032( "ui_consciousness_init", 1 );
    _func_032( "ui_consciousness_play", 1 );
    _func_0DB( "ui_consciousnessVignetteDarkness", 0.5 );
}

_ID51436()
{
    _ID42475::_ID34575( "start_turnbuckle_checkpoint" );
    maps\af_chase_knife_fight_code::_ID51611();
    maps\af_chase_knife_fight_code::_ID52796( "af_chase_ending_wakeup" );
}

_ID49371()
{
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    level endon( "no_more_shepherd_idle" );

    for (;;)
    {
        var_0 thread _ID42259::_ID3044( level._ID46102, "turn_buckle_idle", "player_arrived" );
        _ID42237::_ID14413( "shepherd_should_do_idle_b" );
        var_0 notify( "player_arrived" );
        var_0 thread _ID42259::_ID3044( level._ID46102, "turn_buckle_idleb", "player_arrived" );
        _ID42237::_ID14426( "shepherd_should_do_idle_b" );
        var_0 notify( "player_arrived" );
    }
}

_ID45882()
{
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    var_1 _meth_805A();
    var_0 _ID42259::_ID3018( var_1, "turn_buckle" );
    thread _unknown_0F2A();
    maps\af_chase_knife_fight_code::_ID54100();
    var_2 = _func_06A( "script_model", level._ID794._ID740 + ( 0, 0, 32 ) );
    var_2 _meth_80B8( "viewbody_tf141_injured" );
    var_2 _meth_805A();
    var_2 _meth_8053( level._ID794 );
    maps\af_chase_knife_fight_code::_ID50390();

    if ( _func_02F( level._ID53970 ) )
    {
        level._ID53970 _meth_82BF( ( 0, 0, 0 ), 0.5, 0.25, 0.25 );
        level._ID794 _meth_85B5( undefined );
        level._ID53970 _meth_80B7();
    }

    level notify( "stop_random_breathing_sounds" );
    level notify( "stop_drunk_walk" );
    level notify( "kill_limp" );
    _func_0DB( "compass", 0 );
    level notify( "do_staged_pain_pulse" );
    level notify( "kill_limp" );
    _ID42237::_ID14402( "stop_aftermath_player" );
    maps\af_chase_knife_fight_code::_ID46058( 1 );

    if ( _func_02F( level._ID46102._ID15093 ) )
        level._ID46102 _ID42407::_ID15095();

    level._ID46102 _meth_80B3();
    maps\af_chase_knife_fight_code::_ID48836();
    _ID42237::_ID14402( "turn_buckle_start" );
    thread _unknown_1086( "start_turnbuckle" );
    level notify( "no_more_shepherd_idle" );
    var_0 notify( "player_arrived" );
    thread maps\af_chase_knife_fight_code::_ID44884();
    var_1 _meth_801D( "weapon_commando_knife", "TAG_WEAPON_LEFT" );
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    var_4 = [];
    var_4["shepherd"] = level._ID46102;
    var_4["player"] = var_1;
    var_4["knife"] = var_3;
    var_5 = var_1 _ID42407::_ID16120( "turn_buckle" );
    var_6 = 1.15;
    thread maps\af_chase_knife_fight_code::_ID50981( var_6 );
    _ID42407::_ID10226( 9, _ID42237::_ID14402, "turn_buckle_fadeout" );
    level._ID794 thread maps\af_chase_knife_fight_code::_ID51826();
    var_7 = "turn_buckle";
    var_8 = "scn_afchase_plr_tbuckle_lyr_front";
    var_9 = "scn_afchase_shepherd_tbuckle";

    if ( _ID42237::_ID14385( "player_touched_shepherd" ) )
    {
        var_7 = "turn_buckle_alt";
        var_8 = "scn_afchase_plr_tbuckle_alt_lyr_front";
        var_9 = "scn_afchase_shepherd_tbuckle_alt";
    }

    var_0 _ID42259::_ID3016( var_4, var_7 );
    var_0 thread _ID42259::_ID3099( var_4, var_7 );
    level._ID794 _meth_80A1( var_8 );
    level._ID46102 thread _ID42407::_ID27079( var_9 );
    _ID42237::_ID14413( "turn_buckle_fadeout" );
    wait(var_6);
    wait 0.5;
    var_3 _meth_8059();
}

_ID52865( var_0 )
{
    switch ( var_0 )
    {

    }

    case "shepherd_killed":
    case "player_looks_at_knife":
    case "throw_knife_gameplay_started":
    case "shepherd_fights_price_sequence_start":
    case "crawl_gameplay_started":
    case "start_turnbuckle":
}

h2_lerp_camera_roll( var_0, var_1 )
{
    var_2 = 0.05;
    var_3 = level._ID794 _meth_8346();
    var_4 = var_0 - var_3[2];
    var_5 = var_1 / var_2;
    var_6 = var_4 / var_5;
    var_7 = 0;

    while ( var_7 <= var_5 )
    {
        level._ID794 _meth_8345( ( var_3[0], var_3[1], var_3[2] + var_7 * var_6 ) );
        var_7 += 1;
        wait(var_2);
    }
}

_ID46900()
{
    _ID42475::_ID34575( "start_shepherd_gloats_checkpoint" );
    maps\af_chase_knife_fight_code::_ID43249( 0 );
}

_ID43538()
{
    _ID42475::_ID34575( "start_shepherd_gloats_checkpoint" );
    maps\af_chase_knife_fight_code::_ID43249( 0 );
}

_ID47670( var_0 )
{
    _ID42237::_ID14402( "bloody_player_rig" );
    var_0 _meth_80B8( "viewbody_tf141_injured" );
}

_ID51865()
{
    level notify( "not_random_blur" );
    thread _ID51067::_ID27474();
    level._ID794 _meth_8190();
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    _unknown_2593( var_1 );
    var_2 = maps\af_chase_knife_fight_code::_ID47027();
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    maps\af_chase_knife_fight_code::_ID48416();
    var_4 = maps\af_chase_knife_fight_code::_ID47505();
    var_4._ID740 = level._ID794._ID740;
    var_4 maps\af_chase_knife_fight_code::_ID50666( level._ID46102, "tag_eye", 1 );
    maps\af_chase_knife_fight_code::_ID50567();
    var_4 = maps\af_chase_knife_fight_code::_ID47505();
    var_4 _meth_8053( level._ID46102, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_5 = [];
    var_5["shepherd"] = level._ID46102;
    var_5["player_rig"] = var_1;
    var_5["gun"] = var_2;
    var_5["knife"] = var_3;
    var_0 _ID42259::_ID3016( var_5, "gun_monologue" );
    level._ID794 _meth_8084( var_1, "tag_player", 1, 5, 5, 5, 5, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _func_076( 0, 1.75 );
    var_6 = 6.5;
    var_7 = 4;
    var_6 -= var_7;
    thread maps\af_chase_knife_fight_code::_ID51740( var_7 );
    _ID42237::_ID14413( "gloat_fade_in" );
    maps\af_chase_knife_fight_code::_ID46058( 3.5 );
    var_0 _ID42259::_ID3018( level._ID28543, "gun_drop" );
    level._ID46102 thread _ID42407::_ID27079( "h2_scn_afchase_shepherd_gloat" );
    level._ID794 _ID42407::_ID10226( 13.45, _ID42298::_ID17386, "right" );
    _ID42407::_ID10226( 14.7, ::_unknown_274F );
    var_0 _ID42259::_ID3099( var_5, "gun_monologue" );
}

_ID43418()
{
    level notify( "not_random_blur" );
    thread _ID51067::_ID27474();
    level._ID794 _meth_8190();
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    _unknown_26B3( var_1 );
    var_2 = maps\af_chase_knife_fight_code::_ID47027();
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    var_4 = var_1 _ID42237::_ID35164();
    var_4 _meth_8053( var_1, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 _meth_8098( var_4 );
    maps\af_chase_knife_fight_code::_ID48416();
    var_5 = maps\af_chase_knife_fight_code::_ID47505();
    var_5._ID740 = level._ID794._ID740;
    var_5 maps\af_chase_knife_fight_code::_ID50666( level._ID46102, "tag_eye", 1 );
    maps\af_chase_knife_fight_code::_ID50567();
    var_5 = maps\af_chase_knife_fight_code::_ID47505();
    var_5 _meth_8053( level._ID46102, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_6 = [];
    var_6["shepherd"] = level._ID46102;
    var_6["player_rig"] = var_1;
    var_6["gun"] = var_2;
    var_6["knife"] = var_3;
    var_6["price"] = level._ID28543;
    var_0 _ID42259::_ID3016( var_6, "gun_fight" );
    level._ID794 _meth_8084( var_1, "tag_player", 1, 5, 5, 5, 5, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _func_076( 0, 1.75 );
    var_7 = 6.5;
    var_8 = 4;
    var_7 -= var_8;
    thread maps\af_chase_knife_fight_code::_ID51740( var_8 );
    _ID42237::_ID14413( "gloat_fade_in" );
    maps\af_chase_knife_fight_code::_ID46058( 3.5 );
    level._ID46102 thread _ID42407::_ID27079( "h2_scn_afchase_shepherd_gloat" );
    level._ID794 _ID42407::_ID10226( 13.45, _ID42298::_ID17386, "right" );
    _ID42407::_ID10226( 14.7, ::_unknown_2892 );
    var_0 _ID42259::_ID3099( var_6, "gun_fight" );
    level._ID794 _meth_8098( undefined );
    var_4 _meth_80B7();
}

_ID52754()
{
    _ID42237::_ID14402( "af_chase_final_fight" );
}

_ID51225()
{
    _ID42475::_ID34575( "start_gun_drop_checkpoint" );
    maps\af_chase_knife_fight_code::_ID44443();
}

_ID48325()
{
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = _func_06A( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_2 = maps\af_chase_knife_fight_code::_ID50885();
    var_3 = maps\af_chase_knife_fight_code::_ID47027();
    var_4 = [];
    var_4["shepherd"] = level._ID46102;
    var_4["price"] = level._ID28543;
    var_5 = maps\af_chase_knife_fight_code::_ID47505();
    var_5 _meth_8053( level._ID46102, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_6 = level._ID46102 _ID42407::_ID16120( "gun_drop" );
    var_7 = _func_067( var_6 );
    var_8 = var_2 _ID42407::_ID16120( "gun_drop_player" );
    var_9 = _func_067( var_8 );
    var_10 = var_9 - var_7;
    var_11 = 0.7;
    var_12 = var_7 - var_11;
    var_1 thread _ID42259::_ID3099( var_4, "gun_drop" );
    var_5 maps\af_chase_knife_fight_code::_ID50666( var_3, "J_Cylinder_Rot", 0.4 );
    var_0 thread _ID42259::_ID3111( var_3, "gun_drop" );
    var_0 thread _ID42259::_ID3111( var_2, "gun_drop_player" );
    level._ID794 thread _ID42407::_ID27079( "af_chase_scene_gun_drop" );
    wait 0.05;
    var_13 = var_4;

    for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
    {
        var_14 = var_13[var_15];
        var_14 _meth_8053( var_1 );
    }

    var_clear_2
    var_clear_0
    wait(var_12 - 0.05);
    wait(var_11 - 0.05);
}

_ID46566()
{
    _ID42475::_ID34575( "start_gun_crawl_checkpoint" );
    maps\af_chase_knife_fight_code::_ID44443();
    var_0 = maps\af_chase_knife_fight_code::_ID47027();
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_2 = maps\af_chase_knife_fight_code::_ID50885();
    var_3 = maps\af_chase_knife_fight_code::_ID47505();
    var_3 maps\af_chase_knife_fight_code::_ID50666( var_0, "tag_flash", 0.1 );
    var_1 _ID42259::_ID3018( var_0, "gun_kick_gun" );
    var_1 _ID42259::_ID3018( var_2, "gun_crawl_01" );
    var_3 _ID42237::_ID10192( 0.1, ::_meth_8053, var_2, "J_Wrist_LE", ( 0, 0, 0 ), ( 0, 0, 0 ) );
}

_ID52014()
{
    _ID42237::_ID14402( "crawl_gameplay_started" );
    thread _unknown_245A( "crawl_gameplay_started" );
    _func_087( "crawl", &"AUTOSAVE_LEVELSTART", "shot", 1 );
    maps\af_chase_knife_fight_code::_ID43648();
    level._ID50049._ID740 = ( 40, 0, 0 );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    var_2 = maps\af_chase_knife_fight_code::_ID47027();
    var_3 = [];
    var_3["player_rig"] = var_1;
    var_4 = var_1 _ID42237::_ID35164();
    var_4 _meth_8053( var_1, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 _meth_8098( var_4 );
    var_5 = [];
    var_5[0] = maps\af_chase_knife_fight_code::_ID48590;
    var_5[1] = maps\af_chase_knife_fight_code::_ID49499;
    var_6 = [];
    var_6[0] = "hint_crawl_right";
    var_6[1] = "hint_crawl_left";
    var_7 = _func_1A5();
    thread maps\af_chase_knife_fight_code::_ID49497( var_7, var_5, var_6 );
    thread maps\af_chase_knife_fight_code::_ID51449();

    if ( !_ID42407::_ID20505() )
        thread maps\af_chase_knife_fight_code::_ID46705();

    level notify( "stop_heart" );
    var_8 = 0;

    for ( var_9 = 0; var_9 < 7; var_9++ )
    {
        var_0 thread _ID42259::_ID3040( var_3, "gun_crawl_0" + var_9 + "_idle", "stop_crawl" );

        if ( var_9 == 1 )
            thread maps\af_chase_knife_fight_code::_ID45949();

        var_10 = var_9 < 2;
        maps\af_chase_knife_fight_code::_ID44760( var_5, var_7, var_8, var_10 );
        var_11 = "sand_crawl_right";

        if ( var_8 )
            var_11 = "sand_crawl_left";

        var_1 thread _ID42407::_ID27079( var_11 );

        if ( var_9 == 2 )
            thread maps\af_chase_knife_fight_code::_ID49755();

        if ( var_9 == 3 )
            thread maps\af_chase_knife_fight_code::_ID46084();

        var_0 notify( "stop_crawl" );
        var_12 = _func_0BA( 0.9, 1.1 );
        _func_192( 0.16, var_12, level._ID794._ID740, 5000 );
        var_13 = "gun_crawl_0" + var_9;
        var_14 = var_1 _ID42407::_ID16120( var_13 );
        var_15 = _func_067( var_14 );
        _ID42407::_ID10226( var_15 - 0.25, ::_unknown_2C87 );

        if ( var_9 == 6 )
            break;

        var_8++;
        var_8 %= var_5.size;
        _ID42237::_ID14402( "crawl_gameplay_player_input" );
        var_0 _ID42259::_ID3099( var_3, var_13 );
    }

    level._ID794 _meth_8098( undefined );
    var_4 _meth_80B7();
    _ID42237::_ID14402( "crawl_gameplay_complete" );
}

_ID46362()
{
    _func_192( 0.12, 0.45, level._ID794._ID740, 5000 );
}

_ID47310()
{
    _ID42475::_ID34575( "start_gun_kick_checkpoint" );
    level._ID50049._ID740 = ( 40, 0, 0 );
    maps\af_chase_knife_fight_code::_ID44443();
}

_ID44725()
{
    maps\af_chase_knife_fight_code::_ID50260();
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    var_2 = maps\af_chase_knife_fight_code::_ID47027();
    var_3 = maps\af_chase_knife_fight_code::_ID50090();
    var_3._ID740 = var_3._ID740 + ( 44.64, -25.73, 0 );
    var_0 thread _ID42259::_ID3111( var_2, "gun_kick_gun" );
    var_4 = maps\af_chase_knife_fight_code::_ID47505();
    var_4 maps\af_chase_knife_fight_code::_ID50666( level._ID46102, "J_Ankle_RI", 1 );
    var_5 = "gun_kick";
    var_6 = var_1 _ID42407::_ID16120( var_5 );
    var_7 = _func_067( var_6 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_5, var_7 );
    var_0 thread _ID42259::_ID3111( level._ID46102, var_5 );
    var_0 thread _ID42259::_ID3111( var_1, var_5 );
    var_8 = 0.7;
    wait(var_7 - var_8);
    wait 2;
}

_ID50498()
{
    _ID42475::_ID34575( "start_wounded_show_checkpoint" );
    maps\af_chase_knife_fight_code::_ID43249( 0 );
}

_ID49842()
{
    if ( _func_02F( level._ID45018 ) )
    {
        level._ID45018 notify( "stop_loop" );
        level._ID45018 _meth_80B7();
    }

    _ID42237::_ID14402( "shepherd_fights_price_sequence_start" );
    thread _unknown_26CB( "shepherd_fights_price_sequence_start" );
    level._ID28543 thread maps\af_chase_knife_fight_code::_ID52809();
    level._ID46102 thread maps\af_chase_knife_fight_code::_ID52809();
    maps\af_chase_knife_fight_code::_ID44429();
    maps\af_chase_knife_fight_code::_ID52979();
    level notify( "stop_idle_crawl_fight" );
    var_0 = _func_1A1( "end_scene_org_fight_B", "targetname" );
    var_1 = _func_1A1( "end_scene_org_fight_C", "targetname" );
    var_2 = _ID42237::_ID16638( "end_scene_org_wrestle_C", "targetname" );
    var_3 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_4 = maps\af_chase_knife_fight_code::_ID49656();
    var_5 = "price_wakeup";
    var_3 thread _ID42259::_ID3018( var_4, var_5 );
    var_6 = maps\af_chase_knife_fight_code::_ID50885();
    var_6 _meth_80B7();
    var_6 = maps\af_chase_knife_fight_code::_ID50885();
    var_7 = maps\af_chase_knife_fight_code::_ID53008();
    thread maps\af_chase_knife_fight_code::_ID51050( var_6 );
    var_8 = [];
    var_8["knife"] = var_7;
    var_8["player_rig"] = var_6;
    var_3 _ID42259::_ID3016( var_8, "knifepull_grab_idle" );
    level notify( "link_player",  var_6  );
    var_9 = [];
    var_9["shepherd"] = level._ID46102;
    var_9["price"] = level._ID28543;
    var_10 = maps\af_chase_knife_fight_code::_ID47505();
    var_10 _meth_8053( level._ID28543, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 _meth_818E( "af_chase_ending_no_control_lowkick", 60 );
    var_5 = "fight_B";
    var_11 = level._ID28543 _ID42407::_ID16120( var_5 );
    var_12 = _func_067( var_11 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_5, var_12 );
    var_3 thread _ID42259::_ID3099( var_9, var_5 );
    var_3 thread _ID42259::_ID3040( var_8, "knifepull_grab_idle" );
    wait 1.0;
    _ID42475::_ID34575( "aud_stop_mix_plr_curb_stomp" );
    maps\af_chase_knife_fight_code::_ID46058( 2.5 );

    for (;;)
    {
        if ( level._ID28543 _meth_8159( var_11 ) >= 0.845 )
            break;

        wait 0.05;
    }

    _ID42475::_ID34575( "start_post_curb_stomp_black_screen" );
    var_13 = var_12 * 0.11;
    maps\af_chase_knife_fight_code::_ID43249( var_13 );
    wait(var_13);
    wait 1.05;
    var_5 = "fight_B2";
    var_11 = level._ID28543 _ID42407::_ID16120( var_5 );
    var_12 = _func_067( var_11 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_5, var_12 );
    var_3 thread _ID42259::_ID3099( var_9, var_5 );
    var_14 = _func_03D();
    wait 0.45;
    _ID42475::_ID34575( "stop_post_curb_stomp_black_screen" );
    maps\af_chase_knife_fight_code::_ID46058( 1 );

    for (;;)
    {
        if ( level._ID28543 _meth_8159( var_11 ) >= 0.5 )
            break;

        wait 0.05;
    }

    var_13 = var_12 * 0.1;
    _ID42475::_ID34575( "start_post_curb_stomp_black_screen" );
    maps\af_chase_knife_fight_code::_ID43249( var_13 );
    wait(var_13);
    wait 1.5;
}

_ID43087()
{
    _ID42475::_ID34575( "start_knife_pullout_checkpoint" );
    maps\af_chase_knife_fight_code::_ID43249( 0 );
}

_ID53116()
{
    level endon( "missionfailed" );
    _func_087( "pullout", &"AUTOSAVE_LEVELSTART", "shot", 1 );
    thread maps\af_chase_knife_fight_code::_ID47177();

    if ( !_func_02F( level._ID52109 ) )
        _unknown_34DB();

    var_0 = _func_1A1( "end_scene_org_fight_C", "targetname" );
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_2 = maps\af_chase_knife_fight_code::_ID50885();
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    var_4 = maps\af_chase_knife_fight_code::_ID49656();
    thread maps\af_chase_knife_fight_code::_ID52992( var_2 );
    var_5 = [];
    var_5["knife"] = var_3;
    var_5["player_rig"] = var_2;
    var_6 = [];
    var_6["shepherd"] = level._ID46102;
    var_6["price"] = level._ID28543;
    var_1 thread _ID42259::_ID3018( var_4, "price_wakeup" );
    var_1 notify( "stop_loop" );
    var_1 thread _ID42259::_ID3040( var_5, "knifepull_grab_idle" );
    wait 0.5;
    level._ID794 _meth_818E( "af_chase_ending_pulling_knife_later", 60 );
    level notify( "player_has_min_arc" );
    var_7 = maps\af_chase_knife_fight_code::_ID47505();
    var_7 _meth_8053( level._ID28543, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_8 = "fight_C";
    var_9 = level._ID28543 _ID42407::_ID16120( var_8 );
    var_10 = _func_067( var_9 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_8, var_10 );
    var_1 thread _ID42259::_ID3099( var_6, var_8 );
    thread maps\af_chase_knife_fight_code::_ID46092();
    _ID42407::_ID10226( 0.3, _ID42475::_ID34575, "stop_post_curb_stomp_black_screen" );
    _ID42407::_ID10226( 0.3, maps\af_chase_knife_fight_code::_ID46058, 1 );
    wait 1.5;
    _ID42475::_ID34575( "start_post_curb_stomp_black_screen" );
    maps\af_chase_knife_fight_code::_ID43249( 1 );
    wait 1;
    var_1 thread maps\af_chase_knife_fight_code::_ID50775( var_6 );
    level notify( "waiting_for_player_to_look_at_knife" );
    wait 1;
    _ID42407::_ID10226( 0.3, _ID42475::_ID34575, "stop_post_curb_stomp_black_screen" );
    _ID42407::_ID10226( 0.3, maps\af_chase_knife_fight_code::_ID46058, 1 );

    if ( _func_039( "af_chase_use_old_knife_input", 1 ) == "1" )
        maps\af_chase_knife_fight_code::_ID48230();
    else
        maps\af_chase_knife_fight_code::_ID43708();

    _ID42237::_ID14402( "player_looks_at_knife" );
    thread _unknown_29EB( "player_looks_at_knife" );
    maps\af_chase_knife_fight_code::_ID46058( 0.5 );
    _ID42237::_ID14402( "focused_on_knife" );
    _ID42237::_ID14402( "player_uses_knife" );
    level notify( "lerp_view_after_uses_knife" );
    var_1 notify( "stop_loop" );
    var_1 _ID42259::_ID3099( var_5, "knifepull_grab_01" );
    var_1 _ID42259::_ID3016( var_5, "knifepull_pull_01" );
    _ID42407::_ID10226( 3, _ID42237::_ID14402, "price_shepherd_fight_e_flag" );
    thread maps\af_chase_knife_fight_code::_ID43151();
    level._ID2036 = 0;
    thread maps\ending_aud::_ID52100();
    var_1 thread _ID42259::_ID3099( var_5, "knifepull_pull_01" );
    thread maps\af_chase_knife_fight_code::_ID51155();
    var_11 = _func_1A5();
    var_11._ID49013 = 0;
    var_11._ID50849 = 6;
    var_11._ID48316 = 1;
    var_11._ID49476 = 0.75;
    var_11._ID855 = 0.065;
    var_11._ID28980 = 0.03;
    var_11._ID25402 = 4;
    var_11._ID4394 = 1;
    var_11._ID32422 = 1;
    var_11._ID43481 = "player_knife_pull_1";
    var_11._ID23599 = 70;
    var_11._ID23598 = 90;
    var_11._ID30348 = "light_3s";
    var_11 maps\af_chase_knife_fight_code::_ID51867( "knifepull_pull_01" );
    level._ID2036 = 1;
    _func_192( 0.2, 0.3, level._ID794._ID740, 5000 );
    level notify( "second_knife_pull" );
    var_1 _ID42259::_ID3099( var_5, "knifepull_grab_02" );
    var_1 _ID42259::_ID3016( var_5, "knifepull_pull_02" );
    _ID42237::_ID14402( "two_hand_pull_begins" );
    var_1 thread _ID42259::_ID3099( var_5, "knifepull_pull_02" );
    var_11 = _func_1A5();
    var_11._ID49013 = 0;
    var_11._ID50849 = 6;
    var_11._ID48316 = 1;
    var_11._ID49476 = 0.75;
    var_11._ID855 = 0.7;
    var_11._ID28980 = 0.2;
    var_11._ID52788 = 50;
    var_11._ID26132 = 0.9;
    var_11._ID25402 = 2;
    var_11._ID43481 = "player_knife_pull_2";
    var_11._ID23599 = 20;
    var_11._ID23598 = 50;
    var_11._ID30348 = "heavy_3s";
    var_11 maps\af_chase_knife_fight_code::_ID51867( "knifepull_pull_02" );
    level notify( "fight_C_is_over" );
    _ID42407::_ID10226( 0.65, ::_unknown_37C7 );
    level._ID46102 _ID42237::_ID10192( 3, ::_meth_8059 );
    level._ID28543 _ID42237::_ID10192( 3, ::_meth_8059 );
}

_ID50745()
{
    _ID42475::_ID34575( "start_knife_kill_checkpoint" );
    var_0 = maps\af_chase_knife_fight_code::_ID50885();
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    level._ID794 _meth_8084( var_0, "tag_player", 1, 0, 0, 0, 0, 1 );
    level._ID794 _meth_818E( "af_chase_ending_pulling_knife_later", 60 );
    thread maps\af_chase_knife_fight_code::_ID50060( 0.1 );
    var_2 = maps\af_chase_knife_fight_code::_ID49656();
    var_1 thread _ID42259::_ID3018( var_2, "price_wakeup" );
    wait 0.05;
    var_3 = [];
    var_3["shepherd"] = level._ID46102;
    var_3["price"] = level._ID28543;
    var_1 thread maps\af_chase_knife_fight_code::_ID50775( var_3 );
}

_ID43968()
{
    if ( _ID42237::_ID14385( "missionfailed" ) )
    {
        wait 2;
        return;
    }

    _ID42237::_ID14402( "throw_knife_pulled_out" );
    maps\af_chase_anim::_ID47455();
    _ID42237::_ID14402( "player_heartbeat_sound" );
    _func_087( "kill", &"AUTOSAVE_LEVELSTART", "shot", 1 );
    var_0 = _func_1A1( "end_scene_org_fight_C", "targetname" );
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_2 = maps\af_chase_knife_fight_code::_ID50885();
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    var_4 = maps\af_chase_knife_fight_code::_ID49656();
    thread maps\af_chase_knife_fight_code::_ID48039( var_2 );
    level._ID794 _meth_8106();
    _func_0DB( "aim_turnrate_yaw", 260 );
    _func_0DB( "aim_turnrate_pitch", 90 );
    var_5 = [];
    var_5["knife"] = var_3;
    var_5["player_rig"] = var_2;
    var_6 = [];
    var_6["shepherd"] = level._ID46102;
    var_6["price"] = level._ID28543;
    level notify( "knife_pulled_out" );
    var_1 _ID42259::_ID3099( var_5, "knifepull_pullout_flip" );
    level notify( "aim_at_shepherd" );
    _ID42237::_ID14402( "throw_knife_gameplay_started" );
    thread _unknown_2CA7( "throw_knife_gameplay_started" );
    thread maps\af_chase_knife_fight_code::_ID44869( var_2 );
    var_1 thread _ID42259::_ID3040( var_5, "knifepull_pullout_flip_idle" );
    thread maps\af_chase_knife_fight_code::_ID51529();
    var_7 = maps\af_chase_knife_fight_code::_ID46812();
    var_7._ID55 = 1;
    var_7 _meth_808B( 1 );
    maps\af_chase_knife_fight_code::_ID47281( var_7 );
    var_7 _meth_808F();
    _func_078( 4 );
    level._ID794 thread _ID42407::_ID27079( "mus_af_chase_shepherd_death_stinger" );
    maps\af_chase_knife_fight_code::_ID46058( 0.5 );
    level notify( "pull_back_knife_anim_starts" );
    var_8 = 1.2;
    level._ID50049 _meth_82B8( ( 52, 0, 0 ), var_8, var_8 * 0.5, var_8 * 0.5 );
    var_2 thread _ID42407::_ID27079( "scn_afchase_player_knife_breath" );
    maps\af_chase_knife_fight_code::_ID51045( 0.15 );
    var_1 notify( "stop_loop" );
    _ID42237::_ID14402( "shepherd_killed" );
    thread _unknown_2D39( "shepherd_killed" );
    level._ID46102 _meth_80B3();
    level._ID28543 _meth_80B3();
}

_ID53855()
{
    _ID42475::_ID34575( "start_price_wakeup_checkpoint" );
    thread maps\af_chase_knife_fight_code::_ID51476( 0.1 );
    maps\af_chase_anim::_ID51539( 0 );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    level._ID27625 = _ID42407::_ID35028( "player_rig" );
    var_1 = level._ID27625;
    var_0 thread _ID42259::_ID3018( var_1, "endgame" );
    level._ID794 _meth_8084( var_1, "tag_player", 1, 10, 15, 5, 10 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
}

_ID12642()
{
    maps\af_chase_knife_fight_code::_ID48558();
    level._ID51522 animscripts\shared::_ID12143();
    var_0 = maps\af_chase_knife_fight_code::_ID53008();
    level._ID794 _meth_8191();
    var_1 = _ID42411::_ID35195( "ending_rescue_chopper" );
    var_1 _meth_80B8( "vehicle_little_bird_bench_afghan" );
    var_1._ID3189 = "littlebird";
    var_1 notify( "suspend_drive_anims" );
    var_1 maps\af_chase_aud::_ID50965();
    var_2 = [];
    var_2["shepherd"] = level._ID46102;
    var_2["price"] = level._ID28543;
    var_2["nikolai"] = level._ID51522;
    var_2["knife"] = var_0;
    var_2["player"] = level._ID27625;
    var_2["chopper"] = var_1;
    var_3 = level._ID27625;
    var_4 = var_3 _ID42237::_ID35164();
    var_4 _meth_8053( var_3, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 _meth_8098( var_4 );
    var_5 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    _ID42237::_ID30398( "shep_blood", maps\af_chase_knife_fight_code::_ID51502 );
    var_5 thread _ID42259::_ID3099( var_2, "endgame" );
    var_6 = level._ID27625 _ID42407::_ID16120( "endgame" );
    var_7 = _func_069( var_6, "ps_sc_afchase_wakeup" );
    var_8 = _func_069( var_6, "ps_scn_afchase_walkoff" );
    level._ID27625 waittillmatch( "single anim",  "ps_sc_afchase_wakeup"  );
    var_9 = var_2;

    for ( var_12 = _func_1DA( var_9 ); _func_02F( var_12 ); var_12 = _func_1BF( var_9, var_12 ) )
    {
        var_10 = var_9[var_12];
        var_11 = var_10 _ID42407::_ID16120( "endgame" );
        var_10 _meth_83D4( var_11, 0 );
    }

    var_clear_3
    var_clear_0
    thread _unknown_390F();
    wait 1.8;
    _ID42234::_ID13611( 60 );
    var_13 = 8.5;
    maps\af_chase_knife_fight_code::_ID51476( var_13 );
    level._ID50049 _meth_82B8( ( 65, 0, 0 ), var_13, var_13 * 0.5, var_13 * 0.5 );
    var_14 = _func_03D();
    _ID42407::_ID40847( var_14, 4 );
    _ID42407::_ID40847( var_14, 13.5 );
    _ID42475::_ID34575( "aud_start_mix_fadeout_post_sheperd_death" );
    _ID42407::_ID40847( var_14, 24 );
    level._ID28543 thread _ID42407::_ID27079( "h2_scn_afchase_wakeup_price_foley" );
    _ID42475::_ID34575( "aud_start_mix_price_wakeup", 3.5 );
    var_15 = "price_wakeup";
    var_16 = level._ID28543 _ID42407::_ID16120( var_15 );
    var_17 = _func_067( var_16 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_15, var_17 );
    var_18 = var_2;

    for ( var_19 = _func_1DA( var_18 ); _func_02F( var_19 ); var_19 = _func_1BF( var_18, var_19 ) )
    {
        var_10 = var_18[var_19];
        var_11 = var_10 _ID42407::_ID16120( "endgame" );
        var_10 _meth_83D4( var_11, 1 );
    }

    var_clear_1
    var_clear_0
    var_20 = _func_067( var_6 );
    var_21 = var_8[0] - var_7[0] * 0.95 * var_20;
    _ID42407::_ID10226( var_21, maps\af_chase_knife_fight_code::_ID43249, 1 );
    var_22 = 2.4;
    _ID42407::_ID10226( var_22, _ID42237::_ID14402, "af_chase_final_ending" );
    _ID42407::_ID10226( var_22 + 54.7, ::_unknown_3B25 );
    _ID42407::_ID10226( var_22 + 195, _ID42237::_ID14402, "af_chase_ending_credits" );
    _ID42407::_ID10226( var_22 + 0.25, maps\af_chase_knife_fight_code::_ID46058, 1 );
    level._ID27625 waittillmatch( "single anim",  "ps_scn_afchase_walkoff"  );
    var_23 = 0;
    level._ID794 _meth_8084( var_3, "tag_player", 1, var_23, var_23, var_23, var_23, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _ID42407::_ID10226( 0.8, maps\af_chase_knife_fight_code::_ID49905 );
    var_15 = "price_wakeup";
    thread maps\af_chase_knife_fight_code::_ID52629();
    thread maps\af_chase_knife_fight_code::_ID43024();
    thread maps\af_chase_knife_fight_code::_ID50264( 3 );
    thread maps\af_chase_anim::_ID53101( 0.1 );
    _ID42407::_ID10226( 0.5, maps\af_chase_knife_fight_code::_ID46058, 1 );
    _ID42475::_ID34575( "aud_start_mix_walking_to_heli" );
    var_1 maps\af_chase_aud::_ID50965();
    var_1 thread maps\ending_aud::_ID47479();
    thread maps\af_chase_knife_fight_code::_ID52728();
    var_24 = _ID42237::_ID16638( "anim_node_chopper", "targetname" );
    var_15 = "walk_off";
    var_16 = level._ID28543 _ID42407::_ID16120( var_15 );
    var_17 = _func_067( var_16 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_15, var_17 );
    var_14 = _func_03D();
    var_16 = var_3 _ID42407::_ID16120( var_15 );
    var_25 = 0.5;
    var_26 = _func_067( var_16 ) - var_25;
    _ID42407::_ID40847( var_14, var_26 - 10 );
    var_4 _meth_80B7();
}

_ID43392()
{
    _func_032( "ui_consciousness_init", 1 );
    _func_032( "ui_consciousness_play", 10 );
    var_0 = 28.0;
    var_1 = _ID42313::_ID9125( "black", 0.0, level._ID794 );
    var_1 _meth_808B( var_0 );
    var_1._ID55 = 0.75;
    wait(var_0 + 0.15);
    var_2 = 0.5;
    var_1 _meth_808B( var_2 );
    var_1._ID55 = 0.0;
    wait(var_2 + 0.25);
    var_1 _meth_808F();
    wait(9 - var_2);
    _func_032( "ui_consciousness_play", 11 );
    wait 46;
    _func_032( "ui_consciousness_play", 0 );
}

_ID49862()
{
    _ID42475::_ID34575( "start_price_wakeup_checkpoint" );
    thread maps\af_chase_knife_fight_code::_ID51476( 0.1 );
    waitframe;
    waitframe;
    maps\af_chase_anim::_ID51539( 0 );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    level._ID27625 = _ID42407::_ID35028( "player_rig" );
    var_1 = level._ID27625;
    var_0 thread _ID42259::_ID3018( var_1, "price_wakeup" );
    level._ID794 _meth_8084( var_1, "tag_player", 1, 10, 15, 5, 10 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
}

_ID48043()
{
    level._ID794 _meth_818E( "af_chase_ending_fakeout", 60 );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    var_2 = maps\af_chase_knife_fight_code::_ID49656();
    wait 1.8;
    var_3 = 8.5;
    maps\af_chase_knife_fight_code::_ID51476( var_3 );
    level._ID50049 _meth_82B8( ( 65, 0, 0 ), var_3, var_3 * 0.5, var_3 * 0.5 );
    var_4 = [];
    var_4["shepherd"] = level._ID46102;
    var_4["price"] = level._ID28543;

    if ( level._ID35897 == "price_wakeup" )
    {
        level._ID794 _meth_8084( var_1, "tag_player" );
        var_0 thread _ID42259::_ID3018( var_1, "price_wakeup" );
        var_0 thread _ID42259::_ID3111( var_1, "price_wakeup" );
        var_0 _ID42259::_ID3016( var_4, "price_wakeup" );
    }

    var_5 = _func_03D();
    _ID42407::_ID40847( var_5, 4 );
    _ID42407::_ID40847( var_5, 13.5 );
    _ID42475::_ID34575( "aud_start_mix_fadeout_post_sheperd_death" );
    maps\af_chase_knife_fight_code::_ID43249( 19.5 );
    _ID42407::_ID40847( var_5, 24 );
    level._ID28543 thread _ID42407::_ID27079( "h2_scn_afchase_wakeup_price_foley" );
    _ID42475::_ID34575( "aud_start_mix_price_wakeup", 3.5 );
    var_6 = "price_wakeup";
    var_7 = level._ID28543 _ID42407::_ID16120( var_6 );
    var_8 = _func_067( var_7 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_6, var_8 );
    level._ID794 _meth_8084( var_1, "tag_player" );
    var_0 thread _ID42259::_ID3111( var_1, var_6 );
    var_7 = level._ID28543 _ID42407::_ID16120( var_6 );
    var_9 = _func_067( var_7 );
    var_10 = var_9 * 0.75;
    _ID42407::_ID10226( var_10, maps\af_chase_knife_fight_code::_ID43249, 1 );
    var_11 = 2.7;
    _ID42407::_ID10226( var_11, _ID42237::_ID14402, "af_chase_final_ending" );
    _ID42407::_ID10226( var_11 + 55.7, ::_unknown_3DFF );
    _ID42407::_ID10226( var_11 + 195, _ID42237::_ID14402, "af_chase_ending_credits" );
    _ID42407::_ID10226( var_11 + 0.25, maps\af_chase_knife_fight_code::_ID46058, 1 );
    var_0 thread _ID42259::_ID3099( var_4, var_6 );
    wait(var_9 * 0.85);
}

_ID49160()
{
    _ID42475::_ID34575( "start_walkoff_checkpoint" );
}

_ID45099()
{
    var_0 = [];
    var_0["shepherd"] = level._ID46102;
    var_0["price"] = level._ID28543;
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_2 = maps\af_chase_knife_fight_code::_ID50885();
    var_3 = maps\af_chase_knife_fight_code::_ID49656();
    var_4 = 0;
    level._ID794 _meth_8084( var_2, "tag_player", 1, var_4, var_4, var_4, var_4, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    _ID42407::_ID10226( 0.8, maps\af_chase_knife_fight_code::_ID49905 );
    var_5 = _ID42237::_ID35164();
    var_5 _meth_8053( var_2, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 _meth_8098( var_5 );
    var_6 = "price_wakeup";
    var_1 thread _ID42259::_ID3018( var_3, var_6 );
    var_1 thread _ID42259::_ID3018( var_2, var_6 );
    var_1 _ID42259::_ID3016( var_0, var_6 );
    thread maps\af_chase_knife_fight_code::_ID52629();
    var_3 _meth_80B7();
    var_0 = [];
    maps\af_chase_knife_fight_code::_ID48558();
    thread maps\af_chase_knife_fight_code::_ID43024();
    level._ID51522 animscripts\shared::_ID12143();
    thread maps\af_chase_knife_fight_code::_ID50264( 3 );
    thread maps\af_chase_anim::_ID53101( 0.1 );
    _ID42407::_ID10226( 0.5, maps\af_chase_knife_fight_code::_ID46058, 1 );
    var_7 = _ID42411::_ID35195( "ending_rescue_chopper" );
    var_7 _meth_80B8( "vehicle_little_bird_bench_afghan" );
    var_7._ID3189 = "littlebird";
    var_7 notify( "suspend_drive_anims" );
    _ID42475::_ID34575( "aud_start_mix_walking_to_heli" );
    var_7 maps\af_chase_aud::_ID50965();
    var_7 thread maps\ending_aud::_ID47479();
    var_7 maps\af_chase_aud::_ID50965();
    var_0["nikolai"] = level._ID51522;
    var_0["price"] = level._ID28543;
    thread maps\af_chase_knife_fight_code::_ID52728();
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_8 = _ID42237::_ID16638( "anim_node_chopper", "targetname" );
    var_6 = "walk_off";
    var_9 = level._ID28543 _ID42407::_ID16120( var_6 );
    var_10 = _func_067( var_9 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_6, var_10 );
    var_8 thread _ID42259::_ID3111( var_7, var_6 );
    var_1 thread _ID42259::_ID3099( var_0, var_6 );
    var_1 thread _ID42259::_ID3111( var_2, var_6 );
    var_11 = _func_03D();
    var_9 = var_2 _ID42407::_ID16120( var_6 );
    var_12 = 0.5;
    var_13 = _func_067( var_9 ) - var_12;
    _ID42407::_ID40847( var_11, var_13 - 10 );
}

_ID54717()
{
    level._ID794 _meth_8098( undefined );
    _ID42475::_ID34575( "aud_stop_mix_walking_to_heli" );
    _ID42475::_ID34575( "aud_start_mix_level_fadeout" );
    var_0 = 0.5;
    var_1 = maps\af_chase_knife_fight_code::_ID15584();
    var_1._ID55 = 1;
    _ID42407::_ID10226( 4, _ID42407::_ID24793 );
    _ID42237::_ID14402( "do_museum_credits" );
    wait 0.1;
    var_2 = _func_0DF();
    _ID42237::_ID3294( var_2, ::_meth_80B7 );
    level._ID50049 _meth_80B7();
    thread _ID52272::_ID49484();
}

_ID49101()
{
    _ID42237::_ID14413( "af_chase_see_shepherd" );
    _ID42407::_ID25327( 2 );
    _func_1E3( 3, "current", &"AF_CHASE_KILL_SHEPHERD" );
    _func_0C7( 3, &"AF_CHASE_OBJ_KILL" );
    _ID42237::_ID14413( "shepherd_killed" );
    wait 3.1;
    _func_114( 3, "done" );
}

_ID52987()
{
    waitframe;
    var_0 = level._ID35897;
    _ID42237::_ID14402( "end_heli_crashed" );
    _ID42237::_ID14402( "water_cliff_jump_splash_sequence" );
    _ID42237::_ID14402( "killed_pickup_heli" );
    _ID42237::_ID14402( "fell_off_waterfall" );

    if ( var_0 == "wakeup" )
        return;

    if ( var_0 == "wakefast" )
        return;

    _ID42237::_ID14402( "start_doing_aftermath_walk" );
    _unknown_31AE();
    maps\af_chase_knife_fight_code::_ID51611();
    _ID52272::_ID45059();
    _ID42237::_ID14402( "player_standing" );

    if ( var_0 == "turnbuckle" )
        return;

    maps\af_chase_knife_fight_code::_ID49625();
    maps\af_chase_knife_fight_code::_ID48416();
    level._ID51073 = _ID52272::_ID53217;
    _ID42237::_ID14402( "aftermath_dont_do_wakeup" );
    level._ID794 _meth_831B();
    _ID42237::_ID14402( "stop_aftermath_player" );
    maps\af_chase_knife_fight_code::_ID48836();
    _ID42237::_ID14402( "player_near_shepherd" );
    _ID42237::_ID14402( "turn_buckle_fadeout" );

    if ( var_0 == "gloat" )
        return;

    if ( var_0 == "gun_fight" )
        return;

    _ID42237::_ID14402( "bloody_player_rig" );

    if ( var_0 == "gun_drop" )
        return;

    if ( var_0 == "crawl" )
        return;

    if ( var_0 == "gun_kick" )
        return;

    maps\af_chase_knife_fight_code::_ID50260();
    var_1 = maps\af_chase_knife_fight_code::_ID43648();
    maps\af_chase_knife_fight_code::_ID50567();

    if ( var_0 == "wounded" )
        return;

    maps\af_chase_knife_fight_code::_ID44429();
    maps\af_chase_knife_fight_code::_ID52979();

    if ( var_0 == "pullout" )
        return;

    if ( var_0 == "kill" )
        return;

    level._ID50049._ID740 = ( 65, 0, 0 );

    if ( var_0 == "endgame" )
        return;

    if ( var_0 == "price_wakeup" )
        return;

    if ( var_0 == "walkoff" )
        return;

    if ( var_0 == "debug_boatdrive" )
        return;

    if ( var_0 == "museum_free" || var_0 == "museum_credits" )
        return;
}

_ID54688()
{
    level._ID794 _meth_85B6( "ending_pain", "veilstrength,veilbackgroundstrength,tonemapwhite,tonemapshoulder,tonemapcrossover,tonemaptoe,tonemapblack,tonemaphdrwhite,tonemaphdrshoulder,tonemaphdrcrossover,tonemaphdrtoe,tonemaphdrblack" );
    level._ID794 _meth_85B9( "ending_pain" );
    level._ID52109 = 0;
}

_ID50005( var_0, var_1 )
{
    level notify( "lerp_blood_rush" );
    level endon( "lerp_blood_rush" );
    var_2 = 0.05;
    var_3 = _func_0E8( var_1 / var_2 );
    var_4 = var_0 - level._ID52109 / _func_0E6( var_3, 1 );

    for ( var_5 = 0; var_5 < var_3; var_5++ )
    {
        var_6 = level._ID52109;
        level._ID52109 = level._ID52109 + var_4;
        _func_0DB( "r_lightSetBlendFrac", level._ID52109 );
        level._ID794 _meth_85B8( var_6, level._ID52109 );
        wait(var_2);
    }

    _func_0DB( "r_lightSetBlendFrac", var_0 );
    level._ID794 _meth_85B8( level._ID52109, var_0 );
    level._ID52109 = var_0;
}

_ID44555()
{
    level._ID794 _meth_85B7();
    level._ID794 _meth_85BA();
    level._ID52109 = undefined;
}

knife_fight_culldist()
{
    switch ( level._ID35897 )
    {

    }

    case "walkoff":
    case "price_wakeup":
    case "pullout":
    case "wounded":
    case "gun_kick":
    case "gun_drop":
    case "gloat":
    case "turnbuckle":
    case "wakefast":
    case "wakeup":
    case "museum_freeroam":
    case "museum_credits":
    case "no_game":
    case "kill":
    case "crawl":
    default:
}

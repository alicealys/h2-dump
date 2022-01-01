// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52726()
{
    _ID42407::_ID1951( "wakeup", ::_ID43097, "", ::_ID48459 );
    _ID42407::_ID1951( "wakefast", ::_ID43097, "", ::_ID48459 );
    _ID42407::_ID1951( "turnbuckle", ::_ID51436, "", ::_ID45882 );
    _ID42407::_ID1951( "gun_fight", ::_ID46900, "", ::_ID43418 );
    _ID42407::_ID1951( "crawl", ::_ID46566, "", ::_ID52014 );
    _ID42407::_ID1951( "gun_kick", ::_ID47310, "", ::_ID44725 );
    _ID42407::_ID1951( "wounded", ::_ID50498, "Watch Price/Shep fight", ::_ID49842 );
    _ID42407::_ID1951( "pullout", ::_ID43087, "", ::_ID53116 );
    _ID42407::_ID1951( "kill", ::_ID50745, "", ::_ID43968 );
    _ID42407::_ID1951( "endgame", ::_ID53855, "", ::_ID12642 );
    _ID42407::_ID1951( "museum_freeroam", ::_ID54337 );
    _ID42407::_ID1951( "museum_credits", ::_ID54337 );
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
    setdynamicdvar( "enable_heartbeat_overlay", 1 );
}

_ID45160()
{
    _func_2f1( 0, "xy", 1.5, 0.3 );
    maps\af_chase_knife_fight_code::_ID46312( "bump_small_start", "bump_big_start" );
    level._ID45017 = 2500;
    level._ID50860 = 1200;
    _ID42272::_ID33575( "compass_map_afghan_chase" );

    if ( level._ID912 == "ending" )
        maps\ending_aud::_ID616();
    else
        maps\af_chase_aud::_ID616();

    waitframe;

    if ( isdefined( level._ID36513 ) && level._ID36513 )
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
    level._ID794 allowjump( 0 );
    thread maps\af_chase_knife_fight_code::_ID51324();
    thread maps\af_chase_knife_fight_code::_ID46620();
    anim._ID14274["empty_script"] = ::_ID312;
    var_0 = _ID42237::_ID35164();
    level._ID50049 = var_0;
    var_1 = getdvarint( "cg_fov" );
    var_0._ID740 = ( var_1, 0, 0 );
    _ID42407::_ID10226( 0.05, maps\af_chase_knife_fight_code::_ID44688 );
    thread _ID51067::_ID48476();
    maps\af_chase_knife_fight_code::_ID43537();
    setsaveddvar( "g_friendlyNameDist", 0 );
    setsaveddvar( "sm_sunSampleSizeNear", 0.25 );
    maps\af_chase_knife_fight_code::_ID48973();
    maps\af_chase_knife_fight_code::_ID45418();
    level._ID47973 = spawnstruct();
    level._ID47973._ID23586 = 0.5;
    level._ID47973._ID23033 = 0.8;
    _ID42407::_ID29516( "boat_check_trailing" );
    _ID42407::_ID29516( "boat_check_player_speeding_along" );
    _ID42407::_ID32527( 100, 0.7, 0.4 );
    setsaveddvar( "cg_fov", 65 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showstance", 0 );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ui_hideCompassTicker", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    level._ID794 _meth_830f( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 disableoffhandweapons();
    thread _ID52272::_ID48356();
    thread maps\af_chase_knife_fight_code::_ID48797();
    level._ID794 takeallweapons();
    level._ID43135.greenberet_disabled = 1;
    objective_add( 1, "invisible", &"AF_CHASE_PURSUE" );
    objective_state_nomessage( 1, "done" );
    thread knife_fight_culldist();
}

_ID43097()
{
    _ID42475::_ID34575( "start_wakeup_after_crash_checkpoint" );
}

_ID53570()
{
    var_0 = animscripts\utility::_ID3291( 11, 9.5, 8 );
    var_1 = animscripts\utility::_ID3291( 9, 7.5, 6 );
    var_2 = _func_46();

    for ( var_3 = ( var_2[0], var_2[1], var_2[2] ); !_ID42237::_ID14385( "do_museum_credits" ); var_3 = var_6 )
    {
        if ( _ID42237::_ID14385( "h2_sunintensity_intense" ) )
        {
            var_4 = _ID42237::_ID28945( var_1 );
            var_5 = randomfloatrange( 3, 4 );
        }
        else
        {
            var_4 = _ID42237::_ID28945( var_0 );
            var_5 = randomfloatrange( 1, 2 );
        }

        var_5 = _ID42407::_ID30229( var_5, 1, 0 );
        var_6 = ( var_4, var_4, var_4 );

        for ( var_7 = 0; var_7 < var_5; var_7 += 0.05 )
        {
            var_8 = vectorlerp( var_3, var_6, var_7 / var_5 );
            _func_47( var_8[0], var_8[1], var_8[2] );
            wait 0.05;
        }
    }

    _func_48();
}

_ID52520()
{
    var_0 = newclienthudelem( level._ID794 );
    var_0._ID48175 = 648;
    var_0._ID43646 = 486;
    var_0._ID49777 = 640;
    var_0._ID50083 = 480;
    setsaveddvar( "cg_altDamageBrightness", 0 );
    setsaveddvar( "cg_altDamageAlpha", "1" );
    setsaveddvar( "cg_altDamageFlashColor", ".125 0 0" );
    setsaveddvar( "cg_bloodThickColor", "100 0 0 100" );
    var_1 = "overlay_low_health";
    var_0._ID1331 = 320;
    var_0._ID1339 = 240;
    var_0 setshader( var_1, var_0._ID49777, var_0._ID50083 );
    var_0._ID998 = 1;
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID983 = 1;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 0;
    wait 1.4;
    var_0 fadeovertime( 0.5 );
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
    var_10 = max( var_2, var_5 );
    var_10 += max( var_4, var_9 );
    var_11 = max( var_3, var_6 );
    var_11 += max( var_4, var_9 );
    var_11 += 1.2;
    var_12 = "breathing_heartbeat";

    for ( var_13 = 0; var_13 < 6; var_13++ )
    {
        var_0 scaleovertime( var_3, var_0._ID48175, var_0._ID43646 );
        var_0 fadeovertime( var_6 );
        var_0._ID55 = var_8;
        wait(var_11);
        var_0 scaleovertime( var_2, var_0._ID49777, var_0._ID50083 );
        var_0 fadeovertime( var_5 );
        var_0._ID55 = var_7;
        wait(var_10);
        var_7 -= 0.1;
        thread _ID48057( 1 - var_13 * 0.1 );
        level._ID794 playlocalsound( var_12 );
    }

    var_0 fadeovertime( 2 );
    var_0._ID55 = 0;
    wait 2;
    var_0 destroy();
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
    _ID54688();
    _ID50005( 0.6, 0 );
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
        var_0 = clamp( var_0, 0, 1 );
        var_7 = var_0 + level._ID54494;
        _ID50005( var_7, 0.05 );
        var_4++;
        wait(var_2);
    }
}

_ID48459()
{
    var_0 = level._ID35897 != "wakefast";
    _ID42237::_ID14413( "fell_off_waterfall" );
    thread _ID53570();
    maps\af_chase_knife_fight_code::_ID52796( "af_chase_ending_wakeup" );
    thread maps\af_chase_knife_fight_code::_ID50617();
    thread maps\af_chase_knife_fight_code::_ID47957();
    thread maps\af_chase_knife_fight_code::_ID45872();
    thread maps\af_chase_knife_fight_code::_ID52811();
    _ID53792();

    if ( var_0 )
    {
        thread maps\af_chase_knife_fight_code::_ID49077();
        thread _ID50651();
    }

    setblur( 20, 0 );
    setblur( 0, 8 );
    var_1 = "wakeup";
    var_2 = _ID42237::_ID16638( "end_scene_org", "targetname" );
    var_3 = _ID42407::_ID35028( "player_rig" );
    var_2 _ID42259::_ID3018( var_3, var_1 );
    level._ID794 playerlinktodelta( var_3, "tag_player", 1, 0, 0, 0, 0, 1 );

    if ( getdvarint( "lastMissionPassCheatStatus" ) == 1 )
        _ID42237::_ID14402( "has_cheated" );

    savegame( var_1, &"AUTOSAVE_LEVELSTART", "shot", 1 );
    level._ID794 freezecontrols( 1 );
    _ID42407::_ID3344( "crawling_spawner", maps\af_chase_knife_fight_code::_ID47222 );
    _ID42407::_ID3344( "crawling_spawner", maps\af_chase_knife_fight_code::_ID51151 );
    _ID42407::_ID3346( "crawling_spawner" );
    var_4 = getent( "damaged_pavelow", "targetname" );
    var_4 thread _ID42407::_ID27079( "scn_afchase_heli_cookoff" );

    if ( var_0 )
    {
        level._ID794 _ID42407::_ID10226( 5, _ID42407::_ID27079, "scn_afchase_wakeup_player" );
        level._ID794 _ID42407::_ID10226( 12.5, _ID42407::_ID27079, "scn_afchase_wakeup_player_cough" );

        if ( getdvar( "enable_heartbeat_overlay" ) == "1" )
        {
            thread _ID52520();
            thread _ID52710();
        }

        var_2 _ID42259::_ID3111( var_3, var_1 );
    }
    else
    {
        var_2 thread _ID42259::_ID3111( var_3, var_1 );
        var_5 = var_3 _ID42407::_ID16120( var_1 );
        var_3 setanim( var_5, 1, 0, 25 );

        for (;;)
        {
            var_6 = var_3 getanimtime( var_5 );

            if ( var_6 >= 0.95 )
                break;

            wait 0.05;
        }
    }

    _ID42407::_ID10226( 5, maps\af_chase_knife_fight_code::_ID52297 );
    var_3 delete();
    objective_add( 2, "current", &"AF_CHASE_OBJ_CRASH" );
    _func_194( 2, level._ID53826, ( 0, 0, 90 ) );
    objective_setpointertextoverride( 2, &"SCRIPT_WAYPOINT_SHEPHERD" );
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
    thread _ID47563();
    var_0 _ID54167::_ID48166();
    setsaveddvar( "ui_consciousnessVignetteDarkness", 1.0 );
}

_ID47563()
{
    wait 0.5;
    setomnvar( "ui_consciousness_init", 1 );
    setomnvar( "ui_consciousness_play", 1 );
    setsaveddvar( "ui_consciousnessVignetteDarkness", 0.5 );
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
    var_1 hide();
    var_0 _ID42259::_ID3018( var_1, "turn_buckle" );
    thread _ID49371();
    maps\af_chase_knife_fight_code::_ID54100();
    var_2 = spawn( "script_model", level._ID794._ID740 + ( 0, 0, 32 ) );
    var_2 setmodel( "viewbody_tf141_injured" );
    var_2 hide();
    var_2 linkto( level._ID794 );
    maps\af_chase_knife_fight_code::_ID50390();

    if ( isdefined( level._ID53970 ) )
    {
        level._ID53970 rotateto( ( 0, 0, 0 ), 0.5, 0.25, 0.25 );
        level._ID794 _meth_85b5( undefined );
        level._ID53970 delete();
    }

    level notify( "stop_random_breathing_sounds" );
    level notify( "stop_drunk_walk" );
    level notify( "kill_limp" );
    setsaveddvar( "compass", 0 );
    level notify( "do_staged_pain_pulse" );
    level notify( "kill_limp" );
    _ID42237::_ID14402( "stop_aftermath_player" );
    maps\af_chase_knife_fight_code::_ID46058( 1 );

    if ( isdefined( level._ID46102._ID15093 ) )
        level._ID46102 _ID42407::_ID15095();

    level._ID46102 playrumbleonentity();
    maps\af_chase_knife_fight_code::_ID48836();
    _ID42237::_ID14402( "turn_buckle_start" );
    thread _ID52865( "start_turnbuckle" );
    level notify( "no_more_shepherd_idle" );
    var_0 notify( "player_arrived" );
    thread maps\af_chase_knife_fight_code::_ID44884();
    var_1 attach( "weapon_commando_knife", "TAG_WEAPON_LEFT" );
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
    level._ID794 playsound( var_8 );
    level._ID46102 thread _ID42407::_ID27079( var_9 );
    _ID42237::_ID14413( "turn_buckle_fadeout" );
    wait(var_6);
    wait 0.5;
    var_3 show();
}

_ID52865( var_0 )
{
    switch ( var_0 )
    {
        case "start_turnbuckle":
            var_1 = _ID54167::_ID43386( var_0 );
            level notify( "not_random_blur" );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44392( 0, 0.5 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44944( 1.0 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.1, -1, 64, 64 ) _ID54167::_ID52391( level._ID46102, "tag_eye" ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 1.85 ) _ID54167::_ID53207();
            var_2 = getent( "staging_finale_lgt01", "targetname" );
            var_1 _ID54167::_ID48800( 2.35 ) _ID54167::_ID43376( _ID42407::_ID31877, var_2, "staging_on" );
            var_1 _ID54167::_ID48800( 0.5 ) _ID54167::_ID47198( 0.14, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 1.6 ) _ID54167::_ID47198( 0.2, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.2 );
            var_1 _ID54167::_ID48800( 2.1 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 2.65 ) _ID54167::_ID47198( 0.38, 1.0, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.8 );
            var_1 _ID54167::_ID48800( 3.85 ) _ID54167::_ID47198( 0.14, 0.8, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48166();
            _ID42237::_ID14413( "gloat_fade_in" );
            var_1 = _ID54167::_ID43386( "gloat_sequence" );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.1, -1, 64, 64 ) _ID54167::_ID52391( level._ID46102, "tag_eye" ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 13.8 ) _ID54167::_ID50321( 3.1, -1, 3.5, 3.5 ) _ID54167::_ID52391( level._ID51910, "tag_flash" ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 15.0 ) _ID54167::_ID50321( 3.1, -1, 4, 4 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 16.5 ) _ID54167::_ID50321( 3.1, -1, 4, 4 ) _ID54167::_ID52391( level._ID46102, "tag_eye" ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 17.7 ) _ID54167::_ID44191( 50, 1.4, 0 ) _ID54167::_ID47844( 2 );
            var_1 _ID54167::_ID48800( 18.5 ) _ID54167::_ID50321( 4.5, -1, 1.0, 1.0 ) _ID54167::_ID52391( level._ID51910, "tag_brass" ) _ID54167::_ID44518( -2 ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 15.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
            var_1 _ID54167::_ID48800( 16.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 20.4 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48166();
            break;
        case "crawl_gameplay_started":
            var_1 = _ID54167::_ID43386( var_0 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.5, -1, 64, 64 ) _ID54167::_ID52391( level._ID51910, "tag_brass" ) _ID54167::_ID44518( -2 ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44956() _ID54167::_ID47844( 2 );
            var_2 = getent( "staging_finale_lgt01", "targetname" );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID43376( _ID42407::_ID31877, var_2, "staging_off" );
            var_1 _ID54167::_ID48166();
            var_3 = 2.14;

            for ( var_4 = 1; var_4 <= 6; var_4++ )
            {
                _ID42237::_ID14413( "crawl_gameplay_player_input" );
                _ID42237::_ID14388( "crawl_gameplay_player_input" );
                var_5 = 50 + var_4 * var_3;
                var_1 = _ID54167::_ID43386( "crawl_new_input" + var_4 );
                var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( var_5, 1.0, 0 );
                var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
                var_1 _ID54167::_ID48166();
            }

            _ID42237::_ID14413( "crawl_gameplay_complete" );
            var_1 = _ID54167::_ID43386( "crawl_gameplay_complete" );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727() _ID54167::_ID47844( 0 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 65, 1.0, 0 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.0, -1, 64, 64 ) _ID54167::_ID52391( level._ID51910, "tag_brass" ) _ID54167::_ID44518( -2 ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 2.35 ) _ID54167::_ID50321( 3.0, 23, 4, 4 );
            var_1 _ID54167::_ID48800( 2.65 ) _ID54167::_ID44191( 50, 1.15, 0 );
            var_1 _ID54167::_ID48800( 3.3 ) _ID54167::_ID50321( 3.1, -1, 4, 4 ) _ID54167::_ID52391( level._ID46102, "tag_eye" ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44944( 1.0 );
            var_6 = getent( "staging_finale_lgt02", "targetname" );
            var_1 _ID54167::_ID48800( 5.0 ) _ID54167::_ID43376( _ID42407::_ID31877, var_6, "staging_on" );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 1.85 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 2.4 ) _ID54167::_ID47198( 0.1, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
            var_1 _ID54167::_ID48166();
            break;
        case "shepherd_fights_price_sequence_start":
            var_1 = _ID54167::_ID43386( var_0 );
            setomnvar( "ui_consciousness_init", 1 );
            setomnvar( "ui_consciousness_play", 12 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( 40, 0.0, 1 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.1, -1, 64, 64 ) _ID54167::_ID52391( level._ID46102 ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44956() _ID54167::_ID53207();
            var_1 _ID54167::_ID48800( 11.3 ) _ID54167::_ID50321( 3.1, -1, 64, 64 ) _ID54167::_ID52391( level._ID46102 ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 17.8 ) _ID54167::_ID44191( 47, 0.0, 1 );
            var_1 _ID54167::_ID48800( 17.8 ) _ID54167::_ID50321( 3.1, -1, 64, 64 ) _ID54167::_ID52391( level._ID46102 ) _ID54167::_ID44518( 0 ) _ID54167::_ID43376( ::h2_lerp_camera_roll, level._ID794, 15, 0.1 ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 21.3 ) _ID54167::_ID44191( 40, 0.0, 1 );
            var_1 _ID54167::_ID48800( 21.3 ) _ID54167::_ID50321( 3.1, -1, 64, 64 ) _ID54167::_ID52391( level._ID46102 ) _ID54167::_ID44518( 0 ) _ID54167::_ID43376( ::h2_lerp_camera_roll, level._ID794, 15, 0.1 ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 1.05 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.0, 0.0, 0.0, -1, 5, -2, 6 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 2.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.15, 0.5, 0.5, -8, 12, 1, 3 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 3.7 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 2.3, 0.5, 0.9, -22, 26, 0, 4 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 6.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.0, 0.5, 0.5, -25, 29, -4, 8 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 8.4 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.5, 0.5, 0.9, -15, 19, -9, 13 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 11.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.0, 0.0, 0.0, -8, 12, -6, 10 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 12.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 3.5, 1.0, 1.0, -1, 5, -9, 13 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 17.7 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.0, 0.0, 0.0, -26, 30, -10, 14 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 19.2 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.85, 0.3, 0.3, -30, 34, -7, 11 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 21.4 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 0.0, 0.0, 0.0, -38, 42, -8, 12 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 1.5 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 2.4 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 3.7 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 8.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 12.3 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 13.8 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 19.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 9.3 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 12.7 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 19.75 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48166();
            _ID42237::_ID14413( "focused_on_knife" );
            var_1 = _ID54167::_ID43386( "focused_on_knife" );
            var_1 _ID54167::_ID48800( 1.35 ) _ID54167::_ID44191( 58, 13.0, 0 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 5.75 ) _ID54167::_ID43376( ::h2_lerp_camera_roll, level._ID794, 0, 6.15 );
            var_1 _ID54167::_ID48800( 6.85 ) _ID54167::_ID50321( 4.0, 11.5, 0.55, 0.55 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 1.35 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 1.6, 0.8, 0.8, -38, 42, -11, 15 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 4.25 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 7.15, 4.0, 1.0, 7, -1, 4, 2 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_1 _ID54167::_ID48800( 0.25 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 1.25 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 2.15 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 4.1 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 4.9 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 7.05 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 7.85 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 9.95 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 11.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48166();
            break;
        case "player_looks_at_knife":
            var_1 = _ID54167::_ID43386( var_0 );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, 11.5, 2, 2 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 5.15 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 5.6 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
            var_1 _ID54167::_ID48166();
            _ID42237::_ID14413( "throw_knife_pulled_out" );
            var_1 = _ID54167::_ID43386( "throw_knife_pulled_out" );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 64, 64 ) _ID54167::_ID52391( level._ID27625, "tag_knife_attach2" ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 0.6 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.5 );
            var_1 _ID54167::_ID48800( 3.1 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 4.15 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 5.3 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 1.5 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.2 );
            var_1 _ID54167::_ID48800( 1.7 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
            var_1 _ID54167::_ID48800( 2.35 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
            var_1 _ID54167::_ID48800( 2.55 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48166();
            break;
        case "throw_knife_gameplay_started":
            var_1 = _ID54167::_ID43386( "throw_knife_gameplay_started" );
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 3.1, -1, 2, 2 ) _ID54167::_ID52391( level._ID46102, "tag_eye" ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48166();
            break;
        case "shepherd_killed":
            var_1 = _ID54167::_ID43386( "shepherd_killed_cinematic" );
            var_1 _ID54167::_ID48800( 5.0 ) _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( 5.0 ) _ID54167::_ID50321( 3.1, -1, 1, 1 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 ) _ID54167::_ID44944( 1.0 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 65.65 ) _ID54167::_ID50321( 1.4, 300, 1.5, 1.5 );
            var_1 _ID54167::_ID48800( 68.65 ) _ID54167::_ID50321( 3.1, -1, 2.5, 2.5 ) _ID54167::_ID52391( level._ID28543, "tag_eye" ) _ID54167::_ID44518( 0 ) _ID54167::_ID44545( 1.0 );
            var_1 _ID54167::_ID48800( 73.15 ) _ID54167::_ID44191( 57, 1.5, 0 ) _ID54167::_ID50321( 14.1, 150, 2, 2 );
            var_1 _ID54167::_ID48800( 84.65 ) _ID54167::_ID44191( 65, 1.5, 0 ) _ID54167::_ID50321( 14.1, 150, 2, 2 );
            var_1 _ID54167::_ID48800( 94.0 ) _ID54167::_ID48959();
            var_1 _ID54167::_ID48800( 94.0 ) _ID54167::_ID53207();
            var_1 _ID54167::_ID48800( 1.2 ) _ID54167::_ID44191( 40, 0.4, 0 );
            var_1 _ID54167::_ID48800( 11.3 ) _ID54167::_ID43500( 28.0, 0 );
            var_1 _ID54167::_ID48800( 7.75 ) _ID54167::_ID47844( 2 );
            var_1 _ID54167::_ID48800( 37.0 ) _ID54167::_ID47844( 0 );
            var_1 _ID54167::_ID48800( 85.0 ) _ID54167::_ID47844( 2 );
            var_1 _ID54167::_ID48800( 94.0 ) _ID54167::_ID47844( 0 );
            var_1 _ID54167::_ID48800( 85.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level._ID794, 8.0, 3.5, 3.5, 0, 0, 0, 0 ) _ID54167::_ID43376( ::setviewangleresistance, level._ID794, 50, 50, 20, 20 );
            var_6 = getent( "staging_finale_lgt02", "targetname" );
            var_1 _ID54167::_ID48800( 80.0 ) _ID54167::_ID43376( _ID42407::_ID31877, var_6, "staging_off" );
            var_1 _ID54167::_ID48800( 1.2 ) _ID54167::_ID47198( 0.04, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 1.45 ) _ID54167::_ID47198( 0.04, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 3.5 ) _ID54167::_ID47198( 0.06, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 60.5 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 61.4 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 65.05 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 69.75 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48800( 84.05 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.4 );
            var_1 _ID54167::_ID48800( 85.85 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
            var_1 _ID54167::_ID48166();
            break;
    }
}

h2_lerp_camera_roll( var_0, var_1 )
{
    var_2 = 0.05;
    var_3 = level._ID794 getplayerangles();
    var_4 = var_0 - var_3[2];
    var_5 = var_1 / var_2;
    var_6 = var_4 / var_5;
    var_7 = 0;

    while ( var_7 <= var_5 )
    {
        level._ID794 setplayerangles( ( var_3[0], var_3[1], var_3[2] + var_7 * var_6 ) );
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
    var_0 setmodel( "viewbody_tf141_injured" );
}

_ID51865()
{
    level notify( "not_random_blur" );
    thread _ID51067::_ID27474();
    level._ID794 stopshellshock();
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    _ID47670( var_1 );
    var_2 = maps\af_chase_knife_fight_code::_ID47027();
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    maps\af_chase_knife_fight_code::_ID48416();
    var_4 = maps\af_chase_knife_fight_code::_ID47505();
    var_4._ID740 = level._ID794._ID740;
    var_4 maps\af_chase_knife_fight_code::_ID50666( level._ID46102, "tag_eye", 1 );
    maps\af_chase_knife_fight_code::_ID50567();
    var_4 = maps\af_chase_knife_fight_code::_ID47505();
    var_4 linkto( level._ID46102, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_5 = [];
    var_5["shepherd"] = level._ID46102;
    var_5["player_rig"] = var_1;
    var_5["gun"] = var_2;
    var_5["knife"] = var_3;
    var_0 _ID42259::_ID3016( var_5, "gun_monologue" );
    level._ID794 playerlinktodelta( var_1, "tag_player", 1, 5, 5, 5, 5, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    setblur( 0, 1.75 );
    var_6 = 6.5;
    var_7 = 4;
    var_6 -= var_7;
    thread maps\af_chase_knife_fight_code::_ID51740( var_7 );
    _ID42237::_ID14413( "gloat_fade_in" );
    maps\af_chase_knife_fight_code::_ID46058( 3.5 );
    var_0 _ID42259::_ID3018( level._ID28543, "gun_drop" );
    level._ID46102 thread _ID42407::_ID27079( "h2_scn_afchase_shepherd_gloat" );
    level._ID794 _ID42407::_ID10226( 13.45, _ID42298::_ID17386, "right" );
    _ID42407::_ID10226( 14.7, ::_ID52754 );
    var_0 _ID42259::_ID3099( var_5, "gun_monologue" );
}

_ID43418()
{
    level notify( "not_random_blur" );
    thread _ID51067::_ID27474();
    level._ID794 stopshellshock();
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    _ID47670( var_1 );
    var_2 = maps\af_chase_knife_fight_code::_ID47027();
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    var_4 = var_1 _ID42237::_ID35164();
    var_4 linkto( var_1, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 playersetgroundreferenceent( var_4 );
    maps\af_chase_knife_fight_code::_ID48416();
    var_5 = maps\af_chase_knife_fight_code::_ID47505();
    var_5._ID740 = level._ID794._ID740;
    var_5 maps\af_chase_knife_fight_code::_ID50666( level._ID46102, "tag_eye", 1 );
    maps\af_chase_knife_fight_code::_ID50567();
    var_5 = maps\af_chase_knife_fight_code::_ID47505();
    var_5 linkto( level._ID46102, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_6 = [];
    var_6["shepherd"] = level._ID46102;
    var_6["player_rig"] = var_1;
    var_6["gun"] = var_2;
    var_6["knife"] = var_3;
    var_6["price"] = level._ID28543;
    var_0 _ID42259::_ID3016( var_6, "gun_fight" );
    level._ID794 playerlinktodelta( var_1, "tag_player", 1, 5, 5, 5, 5, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    setblur( 0, 1.75 );
    var_7 = 6.5;
    var_8 = 4;
    var_7 -= var_8;
    thread maps\af_chase_knife_fight_code::_ID51740( var_8 );
    _ID42237::_ID14413( "gloat_fade_in" );
    maps\af_chase_knife_fight_code::_ID46058( 3.5 );
    level._ID46102 thread _ID42407::_ID27079( "h2_scn_afchase_shepherd_gloat" );
    level._ID794 _ID42407::_ID10226( 13.45, _ID42298::_ID17386, "right" );
    _ID42407::_ID10226( 14.7, ::_ID52754 );
    var_0 _ID42259::_ID3099( var_6, "gun_fight" );
    level._ID794 playersetgroundreferenceent( undefined );
    var_4 delete();
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
    var_1 = spawn( "script_origin", var_0._ID740 );
    var_1._ID65 = var_0._ID65;
    var_2 = maps\af_chase_knife_fight_code::_ID50885();
    var_3 = maps\af_chase_knife_fight_code::_ID47027();
    var_4 = [];
    var_4["shepherd"] = level._ID46102;
    var_4["price"] = level._ID28543;
    var_5 = maps\af_chase_knife_fight_code::_ID47505();
    var_5 linkto( level._ID46102, "tag_origin", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_6 = level._ID46102 _ID42407::_ID16120( "gun_drop" );
    var_7 = getanimlength( var_6 );
    var_8 = var_2 _ID42407::_ID16120( "gun_drop_player" );
    var_9 = getanimlength( var_8 );
    var_10 = var_9 - var_7;
    var_11 = 0.7;
    var_12 = var_7 - var_11;
    var_1 thread _ID42259::_ID3099( var_4, "gun_drop" );
    var_5 maps\af_chase_knife_fight_code::_ID50666( var_3, "J_Cylinder_Rot", 0.4 );
    var_0 thread _ID42259::_ID3111( var_3, "gun_drop" );
    var_0 thread _ID42259::_ID3111( var_2, "gun_drop_player" );
    level._ID794 thread _ID42407::_ID27079( "af_chase_scene_gun_drop" );
    wait 0.05;

    foreach ( var_14 in var_4 )
        var_14 linkto( var_1 );

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
    var_3 _ID42237::_ID10192( 0.1, ::linkto, var_2, "J_Wrist_LE", ( 0, 0, 0 ), ( 0, 0, 0 ) );
}

_ID52014()
{
    _ID42237::_ID14402( "crawl_gameplay_started" );
    thread _ID52865( "crawl_gameplay_started" );
    savegame( "crawl", &"AUTOSAVE_LEVELSTART", "shot", 1 );
    maps\af_chase_knife_fight_code::_ID43648();
    level._ID50049._ID740 = ( 40, 0, 0 );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    var_2 = maps\af_chase_knife_fight_code::_ID47027();
    var_3 = [];
    var_3["player_rig"] = var_1;
    var_4 = var_1 _ID42237::_ID35164();
    var_4 linkto( var_1, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 playersetgroundreferenceent( var_4 );
    var_5 = [];
    var_5[0] = maps\af_chase_knife_fight_code::_ID48590;
    var_5[1] = maps\af_chase_knife_fight_code::_ID49499;
    var_6 = [];
    var_6[0] = "hint_crawl_right";
    var_6[1] = "hint_crawl_left";
    var_7 = spawnstruct();
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
        var_12 = randomfloatrange( 0.9, 1.1 );
        earthquake( 0.16, var_12, level._ID794._ID740, 5000 );
        var_13 = "gun_crawl_0" + var_9;
        var_14 = var_1 _ID42407::_ID16120( var_13 );
        var_15 = getanimlength( var_14 );
        _ID42407::_ID10226( var_15 - 0.25, ::_ID46362 );

        if ( var_9 == 6 )
            break;

        var_8++;
        var_8 %= var_5.size;
        _ID42237::_ID14402( "crawl_gameplay_player_input" );
        var_0 _ID42259::_ID3099( var_3, var_13 );
    }

    level._ID794 playersetgroundreferenceent( undefined );
    var_4 delete();
    _ID42237::_ID14402( "crawl_gameplay_complete" );
}

_ID46362()
{
    earthquake( 0.12, 0.45, level._ID794._ID740, 5000 );
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
    var_7 = getanimlength( var_6 );
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
    if ( isdefined( level._ID45018 ) )
    {
        level._ID45018 notify( "stop_loop" );
        level._ID45018 delete();
    }

    _ID42237::_ID14402( "shepherd_fights_price_sequence_start" );
    thread _ID52865( "shepherd_fights_price_sequence_start" );
    level._ID28543 thread maps\af_chase_knife_fight_code::_ID52809();
    level._ID46102 thread maps\af_chase_knife_fight_code::_ID52809();
    maps\af_chase_knife_fight_code::_ID44429();
    maps\af_chase_knife_fight_code::_ID52979();
    level notify( "stop_idle_crawl_fight" );
    var_0 = getent( "end_scene_org_fight_B", "targetname" );
    var_1 = getent( "end_scene_org_fight_C", "targetname" );
    var_2 = _ID42237::_ID16638( "end_scene_org_wrestle_C", "targetname" );
    var_3 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_4 = maps\af_chase_knife_fight_code::_ID49656();
    var_5 = "price_wakeup";
    var_3 thread _ID42259::_ID3018( var_4, var_5 );
    var_6 = maps\af_chase_knife_fight_code::_ID50885();
    var_6 delete();
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
    var_10 linkto( level._ID28543, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 shellshock( "af_chase_ending_no_control_lowkick", 60 );
    var_5 = "fight_B";
    var_11 = level._ID28543 _ID42407::_ID16120( var_5 );
    var_12 = getanimlength( var_11 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_5, var_12 );
    var_3 thread _ID42259::_ID3099( var_9, var_5 );
    var_3 thread _ID42259::_ID3040( var_8, "knifepull_grab_idle" );
    wait 1.0;
    _ID42475::_ID34575( "aud_stop_mix_plr_curb_stomp" );
    maps\af_chase_knife_fight_code::_ID46058( 2.5 );

    for (;;)
    {
        if ( level._ID28543 getanimtime( var_11 ) >= 0.845 )
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
    var_12 = getanimlength( var_11 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_5, var_12 );
    var_3 thread _ID42259::_ID3099( var_9, var_5 );
    var_14 = gettime();
    wait 0.45;
    _ID42475::_ID34575( "stop_post_curb_stomp_black_screen" );
    maps\af_chase_knife_fight_code::_ID46058( 1 );

    for (;;)
    {
        if ( level._ID28543 getanimtime( var_11 ) >= 0.5 )
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
    savegame( "pullout", &"AUTOSAVE_LEVELSTART", "shot", 1 );
    thread maps\af_chase_knife_fight_code::_ID47177();

    if ( !isdefined( level._ID52109 ) )
        _ID54688();

    var_0 = getent( "end_scene_org_fight_C", "targetname" );
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
    level._ID794 shellshock( "af_chase_ending_pulling_knife_later", 60 );
    level notify( "player_has_min_arc" );
    var_7 = maps\af_chase_knife_fight_code::_ID47505();
    var_7 linkto( level._ID28543, "tag_eye", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_8 = "fight_C";
    var_9 = level._ID28543 _ID42407::_ID16120( var_8 );
    var_10 = getanimlength( var_9 );
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

    if ( getdvar( "af_chase_use_old_knife_input", 1 ) == "1" )
        maps\af_chase_knife_fight_code::_ID48230();
    else
        maps\af_chase_knife_fight_code::_ID43708();

    _ID42237::_ID14402( "player_looks_at_knife" );
    thread _ID52865( "player_looks_at_knife" );
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
    var_11 = spawnstruct();
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
    earthquake( 0.2, 0.3, level._ID794._ID740, 5000 );
    level notify( "second_knife_pull" );
    var_1 _ID42259::_ID3099( var_5, "knifepull_grab_02" );
    var_1 _ID42259::_ID3016( var_5, "knifepull_pull_02" );
    _ID42237::_ID14402( "two_hand_pull_begins" );
    var_1 thread _ID42259::_ID3099( var_5, "knifepull_pull_02" );
    var_11 = spawnstruct();
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
    _ID42407::_ID10226( 0.65, ::_ID44555 );
    level._ID46102 _ID42237::_ID10192( 3, ::show );
    level._ID28543 _ID42237::_ID10192( 3, ::show );
}

_ID50745()
{
    _ID42475::_ID34575( "start_knife_kill_checkpoint" );
    var_0 = maps\af_chase_knife_fight_code::_ID50885();
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    level._ID794 playerlinktodelta( var_0, "tag_player", 1, 0, 0, 0, 0, 1 );
    level._ID794 shellshock( "af_chase_ending_pulling_knife_later", 60 );
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
    savegame( "kill", &"AUTOSAVE_LEVELSTART", "shot", 1 );
    var_0 = getent( "end_scene_org_fight_C", "targetname" );
    var_1 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_2 = maps\af_chase_knife_fight_code::_ID50885();
    var_3 = maps\af_chase_knife_fight_code::_ID53008();
    var_4 = maps\af_chase_knife_fight_code::_ID49656();
    thread maps\af_chase_knife_fight_code::_ID48039( var_2 );
    level._ID794 disableslowaim();
    setsaveddvar( "aim_turnrate_yaw", 260 );
    setsaveddvar( "aim_turnrate_pitch", 90 );
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
    thread _ID52865( "throw_knife_gameplay_started" );
    thread maps\af_chase_knife_fight_code::_ID44869( var_2 );
    var_1 thread _ID42259::_ID3040( var_5, "knifepull_pullout_flip_idle" );
    thread maps\af_chase_knife_fight_code::_ID51529();
    var_7 = maps\af_chase_knife_fight_code::_ID46812();
    var_7._ID55 = 1;
    var_7 fadeovertime( 1 );
    maps\af_chase_knife_fight_code::_ID47281( var_7 );
    var_7 destroy();
    musicstop( 4 );
    level._ID794 thread _ID42407::_ID27079( "mus_af_chase_shepherd_death_stinger" );
    maps\af_chase_knife_fight_code::_ID46058( 0.5 );
    level notify( "pull_back_knife_anim_starts" );
    var_8 = 1.2;
    level._ID50049 moveto( ( 52, 0, 0 ), var_8, var_8 * 0.5, var_8 * 0.5 );
    var_2 thread _ID42407::_ID27079( "scn_afchase_player_knife_breath" );
    maps\af_chase_knife_fight_code::_ID51045( 0.15 );
    var_1 notify( "stop_loop" );
    _ID42237::_ID14402( "shepherd_killed" );
    thread _ID52865( "shepherd_killed" );
    level._ID46102 playrumbleonentity();
    level._ID28543 playrumbleonentity();
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
    level._ID794 playerlinktodelta( var_1, "tag_player", 1, 10, 15, 5, 10 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
}

_ID12642()
{
    maps\af_chase_knife_fight_code::_ID48558();
    level._ID51522 animscripts\shared::_ID12143();
    var_0 = maps\af_chase_knife_fight_code::_ID53008();
    level._ID794 fadeoutshellshock();
    var_1 = _ID42411::_ID35195( "ending_rescue_chopper" );
    var_1 setmodel( "vehicle_little_bird_bench_afghan" );
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
    var_4 linkto( var_3, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 playersetgroundreferenceent( var_4 );
    var_5 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    _ID42237::_ID30398( "shep_blood", maps\af_chase_knife_fight_code::_ID51502 );
    var_5 thread _ID42259::_ID3099( var_2, "endgame" );
    var_6 = level._ID27625 _ID42407::_ID16120( "endgame" );
    var_7 = getnotetracktimes( var_6, "ps_sc_afchase_wakeup" );
    var_8 = getnotetracktimes( var_6, "ps_scn_afchase_walkoff" );
    level._ID27625 waittillmatch( "single anim",  "ps_sc_afchase_wakeup"  );

    foreach ( var_10 in var_2 )
    {
        var_11 = var_10 _ID42407::_ID16120( "endgame" );
        var_10 _meth_83d4( var_11, 0 );
    }

    thread _ID43392();
    wait 1.8;
    _ID42234::_ID13611( 60 );
    var_13 = 8.5;
    maps\af_chase_knife_fight_code::_ID51476( var_13 );
    level._ID50049 moveto( ( 65, 0, 0 ), var_13, var_13 * 0.5, var_13 * 0.5 );
    var_14 = gettime();
    _ID42407::_ID40847( var_14, 4 );
    _ID42407::_ID40847( var_14, 13.5 );
    _ID42475::_ID34575( "aud_start_mix_fadeout_post_sheperd_death" );
    _ID42407::_ID40847( var_14, 24 );
    level._ID28543 thread _ID42407::_ID27079( "h2_scn_afchase_wakeup_price_foley" );
    _ID42475::_ID34575( "aud_start_mix_price_wakeup", 3.5 );
    var_15 = "price_wakeup";
    var_16 = level._ID28543 _ID42407::_ID16120( var_15 );
    var_17 = getanimlength( var_16 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_15, var_17 );

    foreach ( var_10 in var_2 )
    {
        var_11 = var_10 _ID42407::_ID16120( "endgame" );
        var_10 _meth_83d4( var_11, 1 );
    }

    var_20 = getanimlength( var_6 );
    var_21 = ( var_8[0] - var_7[0] ) * 0.95 * var_20;
    _ID42407::_ID10226( var_21, maps\af_chase_knife_fight_code::_ID43249, 1 );
    var_22 = 2.4;
    _ID42407::_ID10226( var_22, _ID42237::_ID14402, "af_chase_final_ending" );
    _ID42407::_ID10226( var_22 + 54.7, ::_ID54717 );
    _ID42407::_ID10226( var_22 + 195, _ID42237::_ID14402, "af_chase_ending_credits" );
    _ID42407::_ID10226( var_22 + 0.25, maps\af_chase_knife_fight_code::_ID46058, 1 );
    level._ID27625 waittillmatch( "single anim",  "ps_scn_afchase_walkoff"  );
    var_23 = 0;
    level._ID794 playerlinktodelta( var_3, "tag_player", 1, var_23, var_23, var_23, var_23, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
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
    var_17 = getanimlength( var_16 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_15, var_17 );
    var_14 = gettime();
    var_16 = var_3 _ID42407::_ID16120( var_15 );
    var_25 = 0.5;
    var_26 = getanimlength( var_16 ) - var_25;
    _ID42407::_ID40847( var_14, var_26 - 10 );
    var_4 delete();
}

_ID43392()
{
    setomnvar( "ui_consciousness_init", 1 );
    setomnvar( "ui_consciousness_play", 10 );
    var_0 = 28.0;
    var_1 = _ID42313::_ID9125( "black", 0.0, level._ID794 );
    var_1 fadeovertime( var_0 );
    var_1._ID55 = 0.75;
    wait(var_0 + 0.15);
    var_2 = 0.5;
    var_1 fadeovertime( var_2 );
    var_1._ID55 = 0.0;
    wait(var_2 + 0.25);
    var_1 destroy();
    wait(9 - var_2);
    setomnvar( "ui_consciousness_play", 11 );
    wait 46;
    setomnvar( "ui_consciousness_play", 0 );
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
    level._ID794 playerlinktodelta( var_1, "tag_player", 1, 10, 15, 5, 10 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
}

_ID48043()
{
    level._ID794 shellshock( "af_chase_ending_fakeout", 60 );
    var_0 = _ID42237::_ID16638( "end_scene_org_02", "targetname" );
    var_1 = maps\af_chase_knife_fight_code::_ID50885();
    var_2 = maps\af_chase_knife_fight_code::_ID49656();
    wait 1.8;
    var_3 = 8.5;
    maps\af_chase_knife_fight_code::_ID51476( var_3 );
    level._ID50049 moveto( ( 65, 0, 0 ), var_3, var_3 * 0.5, var_3 * 0.5 );
    var_4 = [];
    var_4["shepherd"] = level._ID46102;
    var_4["price"] = level._ID28543;

    if ( level._ID35897 == "price_wakeup" )
    {
        level._ID794 playerlinktodelta( var_1, "tag_player" );
        var_0 thread _ID42259::_ID3018( var_1, "price_wakeup" );
        var_0 thread _ID42259::_ID3111( var_1, "price_wakeup" );
        var_0 _ID42259::_ID3016( var_4, "price_wakeup" );
    }

    var_5 = gettime();
    _ID42407::_ID40847( var_5, 4 );
    _ID42407::_ID40847( var_5, 13.5 );
    _ID42475::_ID34575( "aud_start_mix_fadeout_post_sheperd_death" );
    maps\af_chase_knife_fight_code::_ID43249( 19.5 );
    _ID42407::_ID40847( var_5, 24 );
    level._ID28543 thread _ID42407::_ID27079( "h2_scn_afchase_wakeup_price_foley" );
    _ID42475::_ID34575( "aud_start_mix_price_wakeup", 3.5 );
    var_6 = "price_wakeup";
    var_7 = level._ID28543 _ID42407::_ID16120( var_6 );
    var_8 = getanimlength( var_7 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_6, var_8 );
    level._ID794 playerlinktodelta( var_1, "tag_player" );
    var_0 thread _ID42259::_ID3111( var_1, var_6 );
    var_7 = level._ID28543 _ID42407::_ID16120( var_6 );
    var_9 = getanimlength( var_7 );
    var_10 = var_9 * 0.75;
    _ID42407::_ID10226( var_10, maps\af_chase_knife_fight_code::_ID43249, 1 );
    var_11 = 2.7;
    _ID42407::_ID10226( var_11, _ID42237::_ID14402, "af_chase_final_ending" );
    _ID42407::_ID10226( var_11 + 55.7, ::_ID54717 );
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
    level._ID794 playerlinktodelta( var_2, "tag_player", 1, var_4, var_4, var_4, var_4, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
    _ID42407::_ID10226( 0.8, maps\af_chase_knife_fight_code::_ID49905 );
    var_5 = _ID42237::_ID35164();
    var_5 linkto( var_2, "tag_player", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID794 playersetgroundreferenceent( var_5 );
    var_6 = "price_wakeup";
    var_1 thread _ID42259::_ID3018( var_3, var_6 );
    var_1 thread _ID42259::_ID3018( var_2, var_6 );
    var_1 _ID42259::_ID3016( var_0, var_6 );
    thread maps\af_chase_knife_fight_code::_ID52629();
    var_3 delete();
    var_0 = [];
    maps\af_chase_knife_fight_code::_ID48558();
    thread maps\af_chase_knife_fight_code::_ID43024();
    level._ID51522 animscripts\shared::_ID12143();
    thread maps\af_chase_knife_fight_code::_ID50264( 3 );
    thread maps\af_chase_anim::_ID53101( 0.1 );
    _ID42407::_ID10226( 0.5, maps\af_chase_knife_fight_code::_ID46058, 1 );
    var_7 = _ID42411::_ID35195( "ending_rescue_chopper" );
    var_7 setmodel( "vehicle_little_bird_bench_afghan" );
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
    var_10 = getanimlength( var_9 );
    thread maps\af_chase_knife_fight_code::_ID50195( var_6, var_10 );
    var_8 thread _ID42259::_ID3111( var_7, var_6 );
    var_1 thread _ID42259::_ID3099( var_0, var_6 );
    var_1 thread _ID42259::_ID3111( var_2, var_6 );
    var_11 = gettime();
    var_9 = var_2 _ID42407::_ID16120( var_6 );
    var_12 = 0.5;
    var_13 = getanimlength( var_9 ) - var_12;
    _ID42407::_ID40847( var_11, var_13 - 10 );
}

_ID54717()
{
    level._ID794 playersetgroundreferenceent( undefined );
    _ID42475::_ID34575( "aud_stop_mix_walking_to_heli" );
    _ID42475::_ID34575( "aud_start_mix_level_fadeout" );
    var_0 = 0.5;
    var_1 = maps\af_chase_knife_fight_code::_ID15584();
    var_1._ID55 = 1;
    _ID42407::_ID10226( 4, _ID42407::_ID24793 );
    _ID42237::_ID14402( "do_museum_credits" );
    wait 0.1;
    var_2 = getaispeciesarray();
    _ID42237::_ID3294( var_2, ::delete );
    level._ID50049 delete();
    thread _ID52272::_ID49484();
}

_ID49101()
{
    _ID42237::_ID14413( "af_chase_see_shepherd" );
    _ID42407::_ID25327( 2 );
    objective_add( 3, "current", &"AF_CHASE_KILL_SHEPHERD" );
    objective_setpointertextoverride( 3, &"AF_CHASE_OBJ_KILL" );
    _ID42237::_ID14413( "shepherd_killed" );
    wait 3.1;
    objective_state_nomessage( 3, "done" );
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
    _ID53792();
    maps\af_chase_knife_fight_code::_ID51611();
    _ID52272::_ID45059();
    _ID42237::_ID14402( "player_standing" );

    if ( var_0 == "turnbuckle" )
        return;

    maps\af_chase_knife_fight_code::_ID49625();
    maps\af_chase_knife_fight_code::_ID48416();
    level._ID51073 = _ID52272::_ID53217;
    _ID42237::_ID14402( "aftermath_dont_do_wakeup" );
    level._ID794 takeallweapons();
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
    level._ID794 _meth_85b6( "ending_pain", "veilstrength,veilbackgroundstrength,tonemapwhite,tonemapshoulder,tonemapcrossover,tonemaptoe,tonemapblack,tonemaphdrwhite,tonemaphdrshoulder,tonemaphdrcrossover,tonemaphdrtoe,tonemaphdrblack" );
    level._ID794 _meth_85b9( "ending_pain" );
    level._ID52109 = 0;
}

_ID50005( var_0, var_1 )
{
    level notify( "lerp_blood_rush" );
    level endon( "lerp_blood_rush" );
    var_2 = 0.05;
    var_3 = ceil( var_1 / var_2 );
    var_4 = ( var_0 - level._ID52109 ) / max( var_3, 1 );

    for ( var_5 = 0; var_5 < var_3; var_5++ )
    {
        var_6 = level._ID52109;
        level._ID52109 = level._ID52109 + var_4;
        setsaveddvar( "r_lightSetBlendFrac", level._ID52109 );
        level._ID794 _meth_85b8( var_6, level._ID52109 );
        wait(var_2);
    }

    setsaveddvar( "r_lightSetBlendFrac", var_0 );
    level._ID794 _meth_85b8( level._ID52109, var_0 );
    level._ID52109 = var_0;
}

_ID44555()
{
    level._ID794 _meth_85b7();
    level._ID794 _meth_85ba();
    level._ID52109 = undefined;
}

knife_fight_culldist()
{
    switch ( level._ID35897 )
    {
        case "wakeup":
        case "wakefast":
        case "turnbuckle":
            setculldist( 30000 );
            _ID42237::_ID14413( "player_touched_shepherd" );
        case "crawl":
        case "kill":
        case "gloat":
        case "gun_drop":
        case "gun_kick":
        case "wounded":
        case "pullout":
        case "price_wakeup":
        case "walkoff":
        case "endgame":
            setculldist( 3500 );
            _ID42237::_ID14413( "do_museum_credits" );
        case "museum_credits":
        case "museum_freeroam":
            setculldist( 0 );
            break;
        case "no_game":
            break;
        default:
            break;
    }
}

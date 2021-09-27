// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\airport_mission_select_cam::_ID50320();
        return;
    }

    if ( maps\airport_beautiful_corner::_ID50786() )
        return;

    _unknown_0074();
    level._ID52044 = 0;
    _ID42407::_ID10126( ::_unknown_0FAB );
    _ID42407::_ID1951( "intro", ::_unknown_0FB9, "[intro] -> assault the security checkpoint", ::_unknown_02A0 );
    _ID42407::_ID1951( "stairs", ::_unknown_0FD2, "[stairs] -> proceed up the escalaters", ::_unknown_04B2 );
    _ID42407::_ID1951( "massacre", ::_unknown_10B5, "[massacre] -> massacre the remaing civilians", ::_unknown_05FF );
    _ID42407::_ID1951( "gate", ::_unknown_110A, "[gate] -> walk through the sea of dead bodies", ::_unknown_07E5 );
    _ID42407::_ID1951( "basement", ::_unknown_1169, "[basement] -> move through the basement", ::_unknown_08C0 );
    _ID42407::_ID1951( "tarmac", ::_unknown_123C, "[tarmac] -> assault the tarmac", ::_unknown_097F );
    _ID42407::_ID1951( "escape", ::_unknown_12E0, "[escape] -> escape from the airport", ::_unknown_0D11 );
    _ID42407::_ID1951( "player_nofail", ::_unknown_1030, "[intro] -> assault the security checkpoint", ::_unknown_031E );
    _ID42407::_ID1951( "grigs", ::_unknown_1348, "[grigsby test]" );
    maps\airport_challenge::_ID52260();
    thread _unknown_14C6();
    _func_0DB( "fx_cast_shadow", 0 );
    _unknown_026E();
    _ID42272::_ID33575( "compass_map_airport" );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", " 1173 4033  3 " );
    thread maps\airport_code::h2_solarsystem_rotating();
    maps\airport_code::h2_security_cameras_setup();
    _func_0DB( "ai_turnAnim_detectLowerAngleTurns", 1 );
    _func_0DB( "xanim_disableFootIK", 1 );
    _func_0DB( "r_corpseRemovalThreshold", "0.75" );
}

_ID49693()
{
    _ID42237::_ID14400( "do_not_save" );
    _ID42237::_ID14400( "friendly_fire_good_kill_line" );
    _ID42237::_ID14400( "friendly_fire_good_kill_line2" );
    _ID42237::_ID14400( "friendly_fire_no_kill_line" );
    _ID42237::_ID14400( "friendly_fire_checkfire_line" );
    _ID42237::_ID14400( "friendly_fire_dist_check" );
    _ID42237::_ID14400( "friendly_fire_kill_check" );
    _ID42237::_ID14400( "friendly_fire_pause_flash" );
    _ID42237::_ID14400( "friendly_fire_pause_fire" );
    _ID42237::_ID14400( "player_dynamic_move_speed" );
    _ID42237::_ID14400( "player_DMS_allow_sprint" );
    _ID42237::_ID14400( "team_initialized" );
    _ID42237::_ID14400( "elevator_up_done" );
    _ID42237::_ID14400( "lobby_scene_animate" );
    _ID42237::_ID14400( "lobby_scene_pre_animate" );
    _ID42237::_ID14400( "intro_slowmo_start" );
    _ID42237::_ID14400( "start_civilians" );
    _ID42237::_ID14400( "lobby_open_fire" );
    _ID42237::_ID14400( "lobby_to_stairs_go" );
    _ID42237::_ID14400( "stairs_go_up" );
    _ID42237::_ID14400( "lobby_cleanup_spray" );
    _ID42237::_ID14400( "lobby_cleanup" );
    _ID42237::_ID14400( "lobby_to_stairs_flow" );
    _ID42237::_ID14400( "lobby_ai_peeps_dead" );
    _ID42237::_ID14400( "team_at_top_of_stairs" );
    _ID42237::_ID14400( "yuri_ee_playing" );
    _ID42237::_ID14400( "stairs_upperdeck_civs_dead" );
    _ID42237::_ID14400( "upperdeck_flow1" );
    _ID42237::_ID14400( "upperdeck_flow1b" );
    _ID42237::_ID14400( "upperdeck_flow1c" );
    _ID42237::_ID14400( "upperdeck_flow3" );
    _ID42237::_ID14400( "upperdeck_flow4" );
    _ID42237::_ID14400( "massacre_play_sounds" );
    _ID42237::_ID14400( "massacre_rentacop_stop" );
    _ID42237::_ID14400( "massacre_rentacop_stop_dead" );
    _ID42237::_ID14400( "massacre_rentacop_rush" );
    _ID42237::_ID14400( "massacre_kill_rush" );
    _ID42237::_ID14400( "massacre_rentacop_runaway_go" );
    _ID42237::_ID14400( "massacre_rentacop_row1_fighter_go" );
    _ID42237::_ID14400( "massacre_rentacop_row1_runner_go" );
    _ID42237::_ID14400( "massacre_rentacop_rambo" );
    _ID42237::_ID14400( "massacre_rentacop_rambo_dead" );
    _ID42237::_ID14400( "massacre_runners1_dead" );
    _ID42237::_ID14400( "massacre_runners2_dead" );
    _ID42237::_ID14400( "massacre_runners3_dead" );
    _ID42237::_ID14400( "massacre_rentacops_rear_dead" );
    _ID42237::_ID14400( "massacre_nadethrow" );
    _ID42237::_ID14400( "massacre_decided_nader" );
    _ID42237::_ID14400( "massacre_makarov_point_at_rambo" );
    _ID42237::_ID14400( "massacre_elevator_start" );
    _ID42237::_ID14400( "massacre_elevator_down" );
    _ID42237::_ID14400( "massacre_elevator_up" );
    _ID42237::_ID14400( "massacre_eleveator_should_come_up" );
    _ID42237::_ID14400( "massacre_elevator_prepare_nade" );
    _ID42237::_ID14400( "massacre_elevator_at_top" );
    _ID42237::_ID14400( "massacre_elevator_guys_ready" );
    _ID42237::_ID14400( "massacre_elevator_grenade_ready" );
    _ID42237::_ID14400( "massacre_elevator_grenade_throw" );
    _ID42237::_ID14400( "massacre_elevator_grenade_exp" );
    _ID42237::_ID14400( "massacre_line_of_fire_done" );
    _ID42237::_ID14400( "gate_main" );
    _ID42237::_ID14400( "gate_canned_deaths" );
    _ID42237::_ID14400( "gate_heli_moveon" );
    _ID42237::_ID14400( "basement_mak_speach" );
    _ID42237::_ID14400( "basement_moveout2" );
    _ID42237::_ID14400( "basement_mak_saw_riot" );
    _ID42237::_ID14400( "basement_near_entrance" );
    _ID42237::_ID14400( "tarmac_pre_heat_fight" );
    _ID42237::_ID14400( "tarmac_too_far" );
    _ID42237::_ID14400( "tarmac_killed_security" );
    _ID42237::_ID14400( "tarmac_open_fire" );
    _ID42237::_ID14400( "tarmac_retreat1" );
    _ID42237::_ID14400( "tarmac_retreat2" );
    _ID42237::_ID14400( "tarmac_retreat3" );
    _ID42237::_ID14400( "tarmac_advance4" );
    _ID42237::_ID14400( "tarmac_retreat4" );
    _ID42237::_ID14400( "tarmac_advance6" );
    _ID42237::_ID14400( "tarmac_retreat5" );
    _ID42237::_ID14400( "tarmac_retreat6" );
    _ID42237::_ID14400( "tarmac_advance8" );
    _ID42237::_ID14400( "tarmac_bcs" );
    _ID42237::_ID14400( "tarmac_kill_friendly_bsc" );
    _ID42237::_ID14400( "tarmac_2ndfloor_move_back" );
    _ID42237::_ID14400( "tarmac_van_guys_far_enough" );
    _ID42237::_ID14400( "tarmac_van_guys_spawn" );
    _ID42237::_ID14400( "tarmac_van_guys2_spawn" );
    _ID42237::_ID14400( "tarmac_van_mid_path" );
    _ID42237::_ID14400( "tarmac_van_almost_end_path" );
    _ID42237::_ID14400( "tarmac_van_end_path" );
    _ID42237::_ID14400( "tarmac_clear_out_2nd_floor" );
    _ID42237::_ID14400( "tarmac_enemies_2ndfloor" );
    _ID42237::_ID14400( "escape_van_ready" );
    _ID42237::_ID14400( "escape_doorkick" );
    _ID42237::_ID14400( "escape_sequence_reach" );
    _ID42237::_ID14400( "escape_hold_your_fire" );
    _ID42237::_ID14400( "escape_main" );
    _ID42237::_ID14400( "escape_sequence_go" );
    _ID42237::_ID14400( "escape_player_get_in" );
    _ID42237::_ID14400( "escape_player_is_in" );
    _ID42237::_ID14400( "escape_sequence_over" );
    _ID42237::_ID14400( "escape_player_shot" );
    _ID42237::_ID14400( "escape_player_realdeath" );
    _ID42237::_ID14400( "end_player_ready" );
    _ID42237::_ID14400( "start_ending_sequence" );
    _ID42237::_ID14400( "player_is_busted" );
    _ID42237::_ID14400( "ambulance_close_door" );
    _ID42237::_ID14400( "ambulance_ready_to_leave" );
    _ID42237::_ID14400( "cops_arrive" );
    _ID42237::_ID14400( "end_makarov_in_place" );
    _ID42237::_ID14400( "player_ready_for_proper_ending" );
    _ID42237::_ID14400( "player_no_fail" );
    _ID42237::_ID14400( "h2_rotating_turbine" );
    _ID42237::_ID14400( "elevator_destroyed" );
    _ID42237::_ID14400( "delete_massacre_dummies" );
    _ID42237::_ID14400( "delete_corpses_back_only" );
}

_ID49840()
{
    level._ID44282 = 1.5;
    _func_034( "scr_elevator_speed", "64" );
    _func_0DB( "ai_friendlyFireBlockDuration", 0 );
    _ID45908::_ID616();
    _ID47439::_ID616();
    _ID47204::_ID616();
    var_0 = [];
    var_1 = _func_1A2( "destructible_vehicle", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID669 == "vehicle_policecar_russia_destructible" )
            var_0 = _ID42237::_ID3293( var_0, var_3 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( var_0, ::_unknown_18CC );
    _ID43172::_ID616();
    _ID48878::_ID616();
    _ID53660::_ID616();
    maps\airport_anim::_ID616();
    _ID42323::_ID616();
    _ID45526::_ID616();
    maps\airport_lighting::_ID616();
    _ID42289::_ID521();
    _ID42287::_ID521();
    level._ID11917 = 60;
    level._ID51803 = 2.75;
    level._ID52178 = 1;
    maps\airport_aud::_ID616();
    thread _unknown_1916();
    thread maps\airport_code::_ID51732();
    _ID42237::_ID3350( _func_1A2( "glass_delete", "targetname" ), maps\airport_code::_ID53222 );
    _func_14C( "h2_airport_restaurant_destruction_final_a" );
    _func_14C( "projectile_us_smoke_grenade" );
    _func_14C( "com_cellphone_on" );
    _func_14C( "com_metal_briefcase" );
    _func_14C( "electronics_pda" );
    _func_14C( "tag_origin" );
    _func_14C( "body_airport_com_e" );
    _func_14C( "head_airport_yuri" );
    _func_14E( "m203_m4" );
    _func_14E( "usp_airport" );
    _func_14E( "m4_grunt_airport" );
    _func_14E( "saw_airport" );
    _func_14E( "rpg_straight" );
    _func_152( "tank_rumble" );
    _func_152( "damage_heavy" );
    _func_152( "light_2s" );
    _func_14F( "overlay_airport_death" );
    _func_14F( "white" );
    _func_14D( "airport" );
    _func_150( &"AIRPORT_FAIL_POLICE_BARRICADE" );
    _func_150( &"disturbing_content_in_game_popup" );
    _func_14E( "colt45" );
    _func_14C( "h2_viewbody_airport" );
    _func_14C( "body_urban_civ_female_b_a" );
    _func_14C( "body_urban_civ_female_b_b" );
    _func_14C( "body_urban_civ_female_a_b" );
    _func_14C( "body_urban_civ_female_a_g" );
    _func_14C( "body_urban_civ_female_a_p" );
    _func_14C( "body_urban_civ_female_a_y" );
    _func_14C( "body_urban_civ_male_aa_a" );
    _func_14C( "body_urban_civ_male_aa_b" );
    _func_14C( "body_urban_civ_male_aa_c" );
    _func_14C( "body_urban_civ_male_ab_a" );
    _func_14C( "body_urban_civ_male_ab_b" );
    _func_14C( "body_urban_civ_male_ab_c" );
    _func_14C( "body_urban_civ_male_ac_a" );
    _func_14C( "body_urban_civ_male_ac_b" );
    _func_14C( "body_urban_civ_male_ac_c" );
    _func_14C( "body_urban_civ_male_ba_a" );
    _func_14C( "body_urban_civ_male_ba_b" );
    _func_14C( "body_urban_civ_male_bb_a" );
    _func_14C( "body_urban_civ_male_bb_b" );
    _func_14C( "body_urban_civ_male_bc_blue" );
    _func_14C( "body_urban_civ_male_bc_gray" );
    _func_14C( "body_urban_civ_male_bc_red" );
    _func_14C( "body_urban_civ_male_bc_white" );
    _func_14C( "body_secret_service_smg" );
    thread maps\airport_code::_ID43575();
    _ID42237::_ID3350( _func_1A2( "jet_engine", "targetname" ), maps\airport_code::_ID43540 );
    _ID42411::_ID6235( "script_vehicle_policecar_russia", "police_light", "tag_origin", "vfx/lights/light_sedan_police_airport", "police_lights", 0 );
    level._ID10114 = 128;
    _ID42407::_ID1895( "grenade_launcher", &"SCRIPT_LEARN_GRENADE_LAUNCHER", maps\airport_code::_ID51178 );
    thread maps\airport_code::h2_elevator_destruction_swap();
    var_5 = _func_1A2( "widescreen_monitor", "targetname" );
    _ID42237::_ID3350( var_5, ::_unknown_096A );
    level.entities_to_delete_before_massacre = [];
    _ID42237::_ID3294( _func_1A2( "h2_intro_dead_people", "targetname" ), ::_meth_805A );
    thread maps\airport_code::corpse_deletion_monitor();
}

handle_widescreen_monitor()
{
    self _meth_82CA( 1 );
    var_0 = _func_1A1( self._ID1191, "targetname" );
    self waittill( "damage",  var_5, var_5, var_5, var_5, var_5  );

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();

    if ( var_5 != "MOD_GRENADE_SPLASH" )
        var_1 *= 3;

    self _meth_82CC( var_4, var_1 * var_3 );
}

_ID20294()
{
    level.grenadeiconmaxrange = _func_03B( "cg_hudGrenadeIconMaxRangeFrag" );
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID3350( _func_1A2( "intro_security_run_die", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID50554 );
    _ID42237::_ID3350( _func_1A2( "lobby_to_stairs_flow", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46133 );
    _ID42237::_ID3350( _func_1A2( "lobby_to_stairs_flow", "targetname" ), maps\airport_code::_ID53703 );
    thread maps\airport_code::_ID46326();
    thread _unknown_0B1E();
    thread _unknown_0AFB();
    thread _unknown_0B82();
    thread maps\airport_code::_ID53548();
    thread maps\airport_code::_ID44043( "scn_airport_running_screams2" );
    waittillframeend;
    var_0 = _unknown_0AEE();

    if ( var_0 )
    {
        _func_034( "disturbing_content_popup_status", "in_progress" );

        while ( _func_039( "disturbing_content_popup_status" ) == "in_progress" )
            waittillframeend;
    }

    if ( _func_02F( level._ID24793 ) )
        return;

    _ID42407::_ID1985( _ID42237::_ID14413, "lobby_to_stairs_flow" );
    _ID42407::_ID1890( _ID42407::_ID10226, 2, maps\airport_code::_ID44043, "scn_airport_running_screams1" );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "team_initialized" );
    thread _unknown_0C36();
    _ID42237::_ID14413( "elevator_up_done" );
    thread maps\airport_code::h2_intro_lugage_se();
    _unknown_0C6A();
    _ID42407::_ID1801( "lobby_to_stairs_flow", "target" );
    level notify( "stop_explode_targets" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4422( "lobby_to_stairs" );

    level._ID51938 = 0;
    var_1 = _ID42237::_ID16638( "intro_elevator_anim_node", "targetname" );
    var_2 = _func_0C9( "lobby_moveup_nodes", "targetname" );
    var_3 = level._ID1194;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _unknown_0B8D( var_1, var_2 );
    }

    var_clear_2
    var_clear_0
    var_2 = _func_0C9( "prestairs_nodes", "targetname" );
    var_6 = var_2;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        level._ID1194[var_7._ID922] thread maps\airport_code::_ID43748( var_7 );
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID1985( _ID42237::_ID14413, "player_set_speed_lobby" );
    _ID42407::_ID1890( _ID42407::_ID14389, "_escalator_on", 3 );
    thread _ID42407::_ID11231();
}

_ID53516( var_0, var_1 )
{
    self notify( "Stop_Shooting" );
    var_0 _ID42259::_ID3111( self, "walking_toward_stairs" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( level._ID1194[var_3._ID922] == self )
        {
            level._ID1194[var_3._ID922]._ID11025 = 1;
            level._ID1194[var_3._ID922] thread maps\airport_code::_ID52145( var_3 );
        }
    }

    var_clear_2
    var_clear_0
}

_ID43563()
{
    thread _unknown_0C61();

    if ( level._ID794 _meth_821F( "canSkipOffensiveMissions" ) != 1 )
        return 0;

    level._ID794 _meth_8500( &"disturbing_content_in_game_popup" );
    return 1;
}

_ID48363()
{
    _func_034( "ui_skip_graphic_material", "" );

    for (;;)
    {
        if ( _func_039( "ui_skip_graphic_material" ) == "1" )
        {
            level notify( "level_skipped" );
            _ID42407::_ID24793();
            return;
        }
        else if ( _func_039( "ui_skip_graphic_material" ) == "0" )
        {
            _func_034( "ui_skip_graphic_material", "" );
            _func_034( "disturbing_content_popup_status", "closed" );
        }

        waittillframeend;
    }
}

_ID49983()
{
    _ID42237::_ID14413( "elevator_up_done" );
    _ID42407::_ID10226( 1, maps\airport_code::_ID53147, 20, 0.25 );
    _ID42237::_ID14413( "lobby_open_fire" );
    maps\airport_code::_ID53147( 26, 0.5 );
    _ID42237::_ID14413( "lobby_to_stairs_go" );
    _ID42407::_ID10226( 1.5, maps\airport_code::_ID53147, 26, 2 );
    _ID42237::_ID14413( "player_set_speed_lobby" );
    maps\airport_code::_ID53147( 42, 1.5 );
    _ID42237::_ID14413( "player_set_speed_stairs" );
    maps\airport_code::_ID53147( 42, 0.25 );
    _ID42237::_ID14413( "player_set_speed_upperstairs" );
    maps\airport_code::_ID53147( 35, 1 );
}

_ID53044()
{
    var_0 = _unknown_0DA6();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "lobby_open_fire" );
    wait 7;
    var_0["stairs_dead_body3"] _meth_8059();
    wait 1;
    var_0["stairs_dead_body2"] _meth_8059();
    wait 1;
    var_0["stairs_dead_body"] _meth_8059();
    _ID42237::_ID14413( "player_set_speed_stairs" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_8059();
    }

    var_clear_1
    var_clear_0
}
#using_animtree("generic_human");

_ID47785()
{
    var_0 = _func_1A2( "upperdeck_dead_body", "targetname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1["upperdeck_dead_body" + var_4] = var_3;
    }

    var_clear_2
    var_1["stairs_dead_body"] = _func_1A1( "stairs_dead_body", "targetname" );
    var_1["stairs_dead_body2"] = _func_1A1( "stairs_dead_body2", "targetname" );
    var_1["stairs_dead_body3"] = _func_1A1( "stairs_dead_body3", "targetname" );
    var_5 = var_1;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3 _meth_801D( "head_urban_civ_male_a", "" );
        var_3 _meth_811E( #animtree );
        var_3 thread _ID42259::_ID3020( var_3, var_3._ID31039 );
        var_3 _meth_8120( _ID42407::_ID16122( var_3._ID31039 ), 1 );
    }

    var_clear_1
    var_clear_0
    return var_1;
}

_ID46104()
{
    wait 24.5;
    var_0 = maps\airport_anim::_ID51465();
    var_1 = _func_1A1( "lobby_blood", "targetname" );
    var_2 = _func_1A1( "intro_rope", "targetname" );
    var_2 _meth_80B7();
    var_1 _meth_805A();

    for ( var_3 = 1; var_3 <= 15; var_3++ )
    {
        var_4 = _ID42237::_ID16638( "intro_lobby_anim_group_" + var_3, "targetname" );

        if ( _func_02F( var_4 ) )
            var_4 thread maps\airport_code::_ID51886( var_0 );
    }

    _ID42237::_ID3350( _func_1A2( "lobby_people", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID51207 );
    _ID42407::_ID10226( 1, _ID42407::_ID1801, "lobby_people_spawner", "targetname" );
    wait 3;
    wait 5.5;
    _ID42237::_ID14402( "lobby_scene_pre_animate" );
    wait 1.0;
    _ID42237::_ID14402( "lobby_scene_animate" );
    wait 3.25;
    _ID42237::_ID14413( "lobby_open_fire" );
    var_5 = _func_1A1( "intro_line_of_fire_trig", "targetname" );
    var_5 thread maps\airport_code::_ID44544( "lobby_to_stairs_go", level._ID1194 );
    _ID42407::_ID1985( _ID42407::_ID38929, "intro_line_of_fire_trig_final" );
    _ID42407::_ID1841( _ID42237::_ID14413, "lobby_to_stairs_go" );
    level._ID794 _ID42407::_ID1855( ::_meth_8058 );
    thread _ID42407::_ID11231();
    _ID42237::_ID3350( _func_1A2( "intro_bank_poll", "targetname" ), maps\airport_code::_ID48820 );
    var_1 _ID42237::_ID10192( 4, ::_meth_8059 );
    wait 1;
}

_ID46527()
{
    thread maps\airport_code::_ID51425();
    thread maps\airport_code::_ID49794();
    var_0 = _ID42237::_ID16638( "intro_elevator_anim_node", "targetname" );
    var_1 = [];
    var_2 = level._ID1194;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _unknown_107C( var_0 );
    }

    var_clear_2
    var_clear_0
    var_5 = _func_1A1( "snd_origin_intro_crowd", "targetname" );
    var_5 _ID42237::_ID10192( 18.0, ::_meth_80A1, "scn_airport_crowd_opening" );
}

_ID54121( var_0 )
{
    wait 5;
    wait 10;
    var_0 thread _ID42259::_ID3111( self, "elevator_scene" );
}

_ID53880()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_0 = _func_0C9( "intro_initial_firing_positions", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level._ID1194[var_2._ID922] thread maps\airport_code::_ID49219( var_2 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "lobby_open_fire" );
    var_4 = level._ID1194;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID507 = 0;
    }

    var_clear_2
    var_clear_0
    var_7 = _func_1A1( "snd_origin_intro_crowd", "targetname" );
    var_7 _meth_80A1( "scn_airport_crowd_opening_terror" );
    var_2 = _ID42237::_ID16638( "lobby_scream_track", "targetname" );
    thread maps\airport_code::_ID45479( var_2, "scn_airport_crowd_opening_running", 150 );
    _ID42407::_ID10226( 1, maps\airport_code::h2_secrutiy_sign_se );
    wait 0.5;
    thread maps\airport_code::_ID50280( _ID42237::_ID16640( "lobby_dyn_targets", "targetname" ) );
    wait 2;
    thread maps\airport_code::_ID50280( _ID42237::_ID16640( "lobby_dyn_targets_lights", "targetname" ), 96, 3.5 );
    wait 5.35;
    thread maps\airport_code::_ID50280( _ID42237::_ID16640( "lobby_dyn_targets_last", "targetname" ) );
}

_ID45012()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    thread maps\airport_code::upperdeck_update_enemy_targets();
    _ID42237::_ID3350( _func_1A2( "upperdeck_crawler", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID49574 );
    _ID42237::_ID3350( _func_1A2( "upperdeck_crawlers_1", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID49574 );
    _ID42237::_ID3350( _func_1A2( "upperdeck_crawlers2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID49574 );
    _ID42237::_ID3350( _func_1A2( "upperdeck_crawlers_wait", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID49574 );
    _ID42237::_ID3350( _func_1A2( "upperdeck_initial_runners", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47531 );
    _ID42237::_ID3350( _func_1A2( "upperdeck_runners4", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID46240, "upperdeck_flow4" );
    _ID42237::_ID3350( _func_1A2( "upperdeck_runners3", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47782 );
    _ID42237::_ID3350( _func_1A2( "upperdeck_runners2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID46240, "upperdeck_flow2" );
    _ID42237::_ID3350( _func_1A2( "upperdeck_runners1b", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID46240, "upperdeck_flow1b" );
    _ID42237::_ID3350( _func_1A2( "upperdeck_runners1c", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID46240, "upperdeck_flow1c" );
    _ID42237::_ID3350( _func_1A2( "upperdeck_canned_deaths", "targetname" ), maps\airport_code::_ID44643, "stairs_top_open_fire" );
    _ID42237::_ID3350( _func_1A2( "upperdeck_fakesound", "targetname" ), maps\airport_code::_ID49183 );
    _ID42237::_ID3350( _ID42237::_ID16640( "upperdeck_turn_on_arrival", "script_noteworthy" ), maps\airport_code::_ID47789 );
    _func_1A1( "stairs_cop", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID43137 );
    _func_1A1( "yuri_ee", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID54536 );
    thread maps\airport_code::_ID43122();
    var_0 = _func_1A1( "stairs_line_of_fire_trig_l", "targetname" );
    var_1 = [];
    var_1[var_1.size] = level._ID1194["makarov"];
    var_1[var_1.size] = level._ID1194["m4"];
    var_2 = _func_1A1( "stairs_line_of_fire_trig_r", "targetname" );
    var_3 = [];
    var_3[var_3.size] = level._ID1194["saw"];
    var_3[var_3.size] = level._ID1194["shotgun"];
    var_1[0] _ID42407::_ID1985( _ID42407::_ID13027, "stairs_at_top" );
    var_1[1] _ID42407::_ID1985( _ID42407::_ID13027, "stairs_at_top" );
    var_0 _ID42407::_ID1890( maps\airport_code::_ID44544, "stairs_upperdeck_civs_dead", var_1 );
    thread _ID42407::_ID11232();
    var_3[0] _ID42407::_ID1985( _ID42407::_ID13027, "stairs_at_top" );
    var_3[1] _ID42407::_ID1985( _ID42407::_ID13027, "stairs_at_top" );
    var_2 _ID42407::_ID1890( maps\airport_code::_ID44544, "stairs_upperdeck_civs_dead", var_3 );
    thread _ID42407::_ID11232();
    var_4 = _ID42237::_ID16638( "upperdeck_scream_track", "targetname" );
    var_5 = _ID42237::_ID16638( "upperdeck_scream_track2", "targetname" );
    var_6 = _ID42237::_ID16638( "upperdeck_scream_track1b", "targetname" );
    var_7 = _ID42237::_ID16638( "upperdeck_scream_track1c", "targetname" );
    _ID42407::_ID1985( _ID42237::_ID14413, "upperdeck_flow1" );
    _ID42407::_ID1890( maps\airport_code::_ID45479, var_4, "scn_airport_running_screams1", 150 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "upperdeck_flow1b" );
    _ID42407::_ID1890( maps\airport_code::_ID45479, var_6, "scn_airport_running_screams2", 150 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "upperdeck_flow1c" );
    _ID42407::_ID1890( maps\airport_code::_ID45479, var_7, "scn_airport_running_screams3", 150 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "upperdeck_flow2" );
    _ID42407::_ID1890( maps\airport_code::_ID45479, var_5, "scn_airport_running_screams1", 150 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "upperdeck_flow4" );
    _ID42407::_ID1890( maps\airport_code::_ID45479, var_5, "scn_airport_running_screams2", 150 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "stairs_go_up" );
    thread _ID42407::_ID11231();
    thread _unknown_15C7();
    _ID42407::_ID1985( _ID42237::_ID14413, "stairs_go_up" );
    _ID42407::_ID1841( _ID42237::_ID14413, "player_set_speed_stairs" );
    _ID42407::_ID1890( maps\airport_code::_ID53147, 42, 0.25 );
    thread _ID42407::_ID11231();
    var_8 = _func_0C9( "upperdeck_start_nodes", "targetname" );
    var_9 = var_8;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        level._ID1194[var_10._ID922] thread maps\airport_code::_ID49232( var_10 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "stairs_upperdeck_civs_dead" );
    _ID42237::_ID14413( "player_set_speed_stairs" );
    var_8 = _ID42237::_ID16640( "upperdeck_team_path", "targetname" );
    var_12 = var_8;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_10 = var_12[var_13];
        level._ID1194[var_10._ID922] thread maps\airport_code::_ID47629( var_10 );
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "upperdeck_save" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4422( "upperdeck_flow2" );
}

_ID49091()
{
    _ID42237::_ID14413( "player_set_speed_lobby" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4422( "stair_bottom" );

    _ID42237::_ID14413( "player_set_speed_upperstairs" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4422( "stair_top" );
}

_ID47265()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    thread maps\airport_code::_ID53373();
    var_0 = _ID42237::_ID16640( "massacre_nodes", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level._ID1194[var_2._ID922] thread maps\airport_code::_ID45269( var_2 );
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A1( "massacre_rentacop_rush_guy", "target" );
    var_4._ID740 = var_4._ID740 + ( 0, 0, -10000 );
    var_5 = level.entities_to_delete_before_massacre;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( !_func_2A5( var_6 ) )
            var_6 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    level.entities_to_delete_before_massacre = undefined;
    _ID42237::_ID3294( _func_1A2( "h2_intro_dead_people", "targetname" ), ::_meth_8059 );
    _ID42237::_ID3350( _func_1A2( "massacre_dummy", "targetname" ), maps\airport_code::_ID52475 );
    _func_1A1( "massacre_snd", "targetname" ) thread _unknown_194A();
    _ID42237::_ID3350( _func_1A2( "massacre_rentacop_stop", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID52036 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacop_rush_guy", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID48301 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacop_runaway_guy", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47135 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacop_row1_runner", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID43760 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacop_row1_fighter", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID48282 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacop_row1_defender", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47709 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacops_rambo", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID44027 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacops_rear", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID50976 );
    _ID42237::_ID3350( _func_1A2( "massacre_rentacops_stairs", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID45254 );
    _ID42237::_ID3350( _func_1A2( "massacre_runners1", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID45582 );
    _ID42237::_ID3350( _func_1A2( "massacre_runners2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID45923, "scn_airport_running_screams1" );
    _ID42237::_ID3350( _func_1A2( "massacre_runners3", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID45923, "scn_airport_running_screams2" );
    _ID42237::_ID3350( _func_1A2( "massacre_crawler", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID44614 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47459 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47459 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_pilot", "script_noteworthy" ), _ID42407::_ID1947, _ID42407::_ID32353, 1 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_pilot", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    var_8 = _func_1A1( "tarmac_littlebird", "targetname" );
    var_8 _ID42407::_ID1947( ::_unknown_1AC6 );
    thread _unknown_1AE1();
    thread maps\airport_code::_ID43262();
    thread maps\airport_code::_ID49191();
    thread _unknown_1AE8( "massacre_runners1", "massacre_runners1_dead" );
    thread _unknown_1AF4( "massacre_runners2", "massacre_runners2_dead" );
    thread _unknown_1B00( "massacre_runners3", "massacre_runners3_dead" );
    var_9 = _func_1A2( "massacre_rentacop_stop_trigs", "targetname" );

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_4 = var_9[var_10];
        var_4 _ID42407::_ID1985( _ID42407::_ID41116, "trigger" );
        _ID42407::_ID1890( _ID42237::_ID38863, "massacre_rentacop_stop_trigs", "targetname" );
        thread _ID42407::_ID11231();
    }

    var_clear_1
    var_clear_0
    var_11 = _func_1A2( "massacre_rentacops_rambo_trigs", "targetname" );

    for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
    {
        var_4 = var_11[var_12];
        var_4 _ID42407::_ID1985( _ID42407::_ID41116, "trigger" );
        _ID42407::_ID1890( _ID42237::_ID38863, "massacre_rentacops_rambo_trigs", "targetname" );
        thread _ID42407::_ID11231();
    }

    var_clear_1
    var_clear_0
    var_13 = _func_1A2( "massacre_rentacop_extras", "targetname" );
    level _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacop_rush" );
    _ID42407::_ID1890( _ID42237::_ID3350, var_13, _ID42407::_ID35014, 1 );
    thread _ID42407::_ID11231();
    level._ID1194["m4"] _ID42407::_ID1985( _ID42407::_ID13027, "massacre_firing_into_crowd" );
    _ID42407::_ID1890( _ID42407::_ID14403, "massacre_play_sounds", 1.25 );
    thread _ID42407::_ID11232();
    level._ID1194["m4"] _ID42407::_ID1985( _ID42407::_ID13027, "massacre_firing_into_crowd" );
    _ID42407::_ID1890( _ID42407::_ID14403, "massacre_civ_animate", 10 );
    thread _ID42407::_ID11232();
    _ID42407::_ID38928( "massacre_rentacops_rear", "target" );
    wait 0.1;
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacop_stop" );
    _ID42407::_ID1890( _ID42237::_ID14402, "friendly_fire_pause_flash" );
    thread _ID42407::_ID11231();
    var_14 = _ID42407::_ID15817( "massacre_rentacops_rear", "script_noteworthy" );
    _ID42407::_ID1985( _ID42407::_ID41090, var_14 );
    _ID42407::_ID1890( _ID42237::_ID14402, "massacre_rentacops_rear_dead" );
    thread _ID42407::_ID11231();
    var_15 = var_14;

    for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
    {
        var_16 = var_15[var_17];
        level _ID42407::_ID1985( _ID42407::_ID38928, "massacre_player_too_far", "targetname" );
        var_16 _ID42407::_ID1890( _ID42407::_ID31877, "stop_blindfire" );
        var_16 _ID42407::_ID1890( _ID42407::_ID3136 );
        var_16 _ID42407::_ID1890( _ID42407::_ID32352, 0 );
        var_16 _ID42407::_ID1890( _ID42407::_ID32291, level._ID794 );
        var_16 _ID42407::_ID1841( _ID42407::_ID41116, "death" );
        level _ID42407::_ID1841( _ID42237::_ID14413, "massacre_nadethrow" );
        thread _ID42407::_ID11231();
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacops_stairs_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacops_rear_dead" );
    level _ID42407::_ID1841( _ID42237::_ID14413, "do_not_save" );
    _ID42407::_ID1890( _ID42407::_ID4422, "massacre" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacops_stairs_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacops_rear_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacop_runaway_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacop_row1_fighter_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacop_row1_runner_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_rentacop_rambo_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_runners1_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_runners2_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "massacre_runners3_dead" );
    _ID42407::_ID1890( _ID42237::_ID14402, "gate_main" );
    _ID42407::_ID1890( _ID42237::_ID14388, "friendly_fire_pause_flash" );
    _ID42407::_ID1890( _ID42237::_ID14388, "friendly_fire_pause_fire" );
    thread _ID42407::_ID11231();
}

_ID52485()
{
    _ID42237::_ID14413( "littlebird_stop_threadfx" );
    self notify( "stop_kicking_up_dust" );
}

_ID47358( var_0, var_1 )
{
    _ID42407::_ID38928( var_0, "target" );
    wait 0.1;
    var_2 = _ID42407::_ID15817( var_0, "script_noteworthy" );

    if ( var_2.size )
        _ID42407::_ID41090( var_2 );

    _ID42237::_ID14402( var_1 );
}

_ID44098()
{
    _ID42237::_ID14413( "massacre_rentacop_stop_dead" );
    maps\airport_code::_ID53147( 33, 1 );
    _ID42237::_ID14413( "massacre_rentacops_rear_dead" );
    maps\airport_code::_ID53147( 35, 1 );
}

_ID44152()
{
    _ID42237::_ID14413( "massacre_play_sounds" );
    self _meth_807C( "scn_airport_crowd_terminal_loop" );
    _ID42237::_ID14413( "massacre_civ_animate" );
    self _meth_80B2();
    self _meth_80A1( "scn_airport_crowd_terminal_end" );
}

_ID53603()
{
    _ID42407::_ID1985( _ID42237::_ID14413, "gate_main" );
    _ID42407::_ID1890( maps\airport_code::_ID53147, 27, 2 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "gate_heli_moveon" );
    _ID42407::_ID1890( _ID42407::_ID10226, 1, maps\airport_code::_ID53147, 38, 2 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "gate_player_off_stairs" );
    _ID42407::_ID1890( maps\airport_code::_ID53147, 27, 0.5 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42407::_ID38928, "gate_crawler", "target" );
    _ID42407::_ID1890( _ID42237::_ID14402, "gate_canned_deaths" );
    thread _ID42407::_ID11231();
    var_0 = _func_0C9( "gate_moveup_nodes", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level._ID1194[var_2._ID922] thread maps\airport_code::_ID47677( var_2 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID3350( _func_1A2( "gate_canned_deaths", "targetname" ), maps\airport_code::_ID44643, "gate_canned_deaths" );
    _ID42237::_ID3350( _func_1A2( "gate_crawler", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID47998 );
    _ID42237::_ID3350( _func_1A2( "gate_runners1", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID51216 );
    _ID42237::_ID3350( _func_1A2( "gate_sliders", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID53675 );
    _ID42237::_ID3350( _func_1A2( "tarmac_van_guys", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46182, "tarmac_van_guys_spawn" );
    _ID42237::_ID3350( _func_1A2( "tarmac_van_guys2", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46182, "tarmac_van_guys2_spawn" );
    _func_1A1( "tarmac_swat_van", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID51192 );
    _func_1A1( "tarmac_swat_van", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID44354, "scn_airport_police_van_arrive1", "tarmac_swat_van" );
    _func_1A1( "tarmac_swat_van2", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID44354, "scn_airport_police_van_arrive2", "tarmac_swat_van2" );
    _func_1A1( "tarmac_swat_van", "targetname" ) thread maps\airport_code::_ID53768( "tarmac_swat_van" );
    _func_1A1( "tarmac_swat_van2", "targetname" ) thread maps\airport_code::_ID53768( "tarmac_swat_van2" );
    _func_1A1( "tarmac_swat_van2", "targetname" ) _ID42407::_ID1947( maps\airport_code::get_van2 );
    _ID42237::_ID3350( _func_1A2( "gate_convoy_delete", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID51900 );
    thread maps\airport_aud::start_emergency_convoy_arrival_sfx();
    thread maps\airport_code::gate_player_sprint();
    thread _unknown_2088();
    thread maps\airport_code::_ID48986();
    _ID42237::_ID14413( "massacre_rentacops_stairs_dead" );
    level._ID12194 = maps\airport_code::_ID51654;
    level._ID30895["generic"]["DRS_run"] = %casual_killer_jog_a;
    level._ID30895["generic"]["DRS_sprint"] = %run_lowready_f;
    level._ID30895["generic"]["DRS_combat_jog"] = %casual_killer_jog_a;
}

_ID45981()
{
    _ID42237::_ID3350( _func_1A2( "gate_emerg_lights", "targetname" ), maps\airport_code::_ID51472 );
    maps\airport_code::_ID53769();
    _ID42237::_ID14413( "gate_close_gate" );
    _ID42407::_ID1801( "gate_runners1", "target" );
    var_0 = _func_1A1( "gate_gate_closing", "targetname" );
    var_0 _ID42237::_ID10192( 5.75, ::_meth_80A1, "scn_airport_sec_gate_buzzer" );
    wait 8.9;
    maps\airport_code::_ID46070();
}

_ID51525()
{
    _ID42237::_ID3350( _func_1A2( "gate_drop_chop_guys", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47256 );
    _ID42237::_ID3350( _func_1A2( "basement_sec_runner", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID49482 );
    _ID42237::_ID3350( _func_1A2( "basement_flicker_light", "targetname" ), maps\airport_code::_ID48560 );
    var_0 = level._ID1194;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1.minimumcorneridletimebeforetwitch = 10000;
        var_1 thread maps\airport_code::_ID46359();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "basement_near_entrance" );
    _ID42237::_ID14388( "player_dynamic_move_speed" );
    _ID42407::_ID10226( 1, maps\airport_code::_ID53147, 42, 1.5 );
    wait 1;
    _ID42237::_ID14402( "player_DMS_allow_sprint" );
    var_3 = "makarov_ready";
    var_4 = "m4_ready";
    var_5 = "saw_ready";
    var_6 = "shotgun_ready";
    level _ID42237::_ID41117( var_3, var_4, var_5, var_6 );
    _ID42237::_ID14413( "basement_moveout" );
    var_7 = level._ID1194;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_1 = var_7[var_8];
        var_1 notify( "basement_moveout" );
    }

    var_clear_1
    var_clear_0
    _func_0DB( "xanim_disableFootIK", 0 );
    var_9 = _ID42237::_ID16638( "tarmac_breach_origin", "targetname" );
    var_9 notify( "basement_moveout" );
    level._ID12194 = _ID42408::_ID12260;
    level._ID30895["generic"]["DRS_run"] = undefined;
    level.permanentclipflag = "permanent_clip_sequence";
    _ID42237::_ID14400( level.permanentclipflag );
    _ID42237::_ID14402( level.permanentclipflag );
    var_9 = _ID42237::_ID16638( "tarmac_breach_origin", "targetname" );
    var_9 _ID42259::_ID3099( level._ID1194, "first_breach_idle" );
    level.permanentclipflag = undefined;
    thread maps\airport_code::_ID53994();
    thread maps\airport_code::_ID53147( 68, 1 );
    maps\airport_code::_ID50794();
    _ID42237::_ID14388( "permanent_clip_sequence" );
    _ID42237::_ID14402( "basement_moveout2" );
    var_10 = level._ID1194;

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_1 = var_10[var_11];
        var_1.minimumcorneridletimebeforetwitch = undefined;
    }

    var_clear_1
    var_clear_0
    maps\airport_code::_ID46852();
    _ID42407::_ID3304( _func_23E( "h2_celling_neons", "targetname" ) );
    var_12 = _func_1A2( "lobby_people", "targetname" );
    var_13 = var_12;

    for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
    {
        var_14 = var_13[var_15];
        var_14 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_12 = _func_1A2( "intro_lobby_crowd_2", "targetname" );
    var_16 = var_12;

    for ( var_17 = _func_1DA( var_16 ); _func_02F( var_17 ); var_17 = _func_1BF( var_16, var_17 ) )
    {
        var_14 = var_16[var_17];
        var_14 _meth_80B7();
    }

    var_clear_1
    var_clear_0
    _func_023();
}

_ID49145()
{
    wait 0.5;
    level._ID54299._ID6323 = 0;
    wait 1;
    level._ID1194["saw"]._ID6323 = 0;
    wait 0.5;
    level._ID1194["m4"]._ID6323 = 0;
    wait 0.25;
    level._ID1194["shotgun"]._ID6323 = 0;
}

_ID54182()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    thread maps\airport_code::_ID44291();
    _ID42407::_ID1892( "axis", maps\airport_code::_ID45508 );
    _ID42237::_ID3350( _func_1A2( "tarmac_enemies_wave1", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID48267 );
    _ID42237::_ID3350( _func_1A2( "tarmac_enemies_wave2", "targetname" ), _ID42407::_ID1947, _ID42407::_ID12541 );
    _ID42237::_ID3350( _func_1A2( "tarmac_enemies_wave2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID44412 );
    _ID42237::_ID3350( _func_1A2( "tarmac_enemies_runners", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID52499 );
    _ID42237::_ID3350( _func_1A2( "tarmac_enemies_2ndfloor", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID48665 );
    _ID42237::_ID3350( _func_1A2( "riotshield_group_1", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54352 );
    _ID42237::_ID3350( _func_1A2( "riotshield_group_2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54352 );
    _ID42237::_ID3350( _func_1A2( "tarmac_wave1_moveoverride", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54352 );
    _ID42237::_ID3350( _func_1A2( "tarmac_security", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46314 );
    _ID42237::_ID3350( _func_1A2( "tarmac_security_backup", "script_noteworthy" ), maps\airport_code::_ID46269 );
    _ID42237::_ID3350( _func_1A2( "tarmac_enemies_2ndfloor", "targetname" ), _ID42407::_ID1947, maps\airport_code::h2_enemies_2ndfloor_explosion );
    thread maps\airport_code::_ID50371();
    thread maps\airport_code::_ID49427( "riotshield_group_1" );
    thread maps\airport_code::_ID49427( "riotshield_group_2" );
    thread maps\airport_code::_ID43289();
    thread maps\airport_code::_ID47649( "tarmac_van_guys_spawn", "tarmac_swat_van", "tarmac_van_riotshield_guys" );
    thread maps\airport_code::_ID47649( "tarmac_van_guys2_spawn", "tarmac_swat_van2", "tarmac_van_riotshield_guys2" );
    thread maps\airport_code::_ID54088();
    thread maps\airport_code::_ID51138();
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance3" );
    level._ID1194["saw"] _ID42407::_ID1890( maps\airport_code::_ID52900 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance4" );
    level._ID1194["shotgun"] _ID42407::_ID1890( maps\airport_code::_ID52900 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance8" );
    _ID42407::_ID1890( _ID42237::_ID14402, "tarmac_advance8" );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_moveout" );
    _ID42407::_ID1890( _ID42237::_ID3350, _ID42237::_ID16640( "tarmac_smoke_nodes", "targetname" ), maps\airport_code::_ID46420 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_hear_fsb" );
    _ID42407::_ID1890( _ID42407::_ID14403, "tarmac_heat_fight", 5 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_open_fire" );
    _ID42407::_ID1890( maps\airport_code::_ID50622 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_enemies_2ndfloor" );
    _ID42407::_ID1890( ::_unknown_276D );
    _ID42407::_ID1890( ::_unknown_26E5 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "tarmac_moveout" );

    if ( !_ID42237::_ID14385( "do_not_save" ) )
        thread _ID42407::_ID4422( "tarmac_moveout" );

    var_0 = _ID42237::_ID16640( "tarmac_moveout_nodes", "targetname" );
    var_0 = _ID42407::_ID3317( var_0, _func_0C9( "tarmac_moveout_nodes", "targetname" ) );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level._ID1194[var_2._ID922] thread maps\airport_code::_ID45505( var_2 );
    }

    var_clear_2
    var_clear_0
    thread maps\airport_code::_ID45852();
    thread _unknown_29AC();
    thread _unknown_277F();
    thread _unknown_2750();
    _ID42237::_ID14413( "tarmac_heat_fight" );
    _ID42237::_ID3350( level._ID1194, maps\airport_code::_ID46402 );
    _ID42237::_ID3350( _func_1A2( "tarmac_bcs_enemy", "targetname" ), maps\airport_code::_ID47148 );
    thread kill_godrays_vfx();
    thread _unknown_2900();
    thread _unknown_299C();
    thread maps\airport_code::_ID43291();
    maps\airport_code::_ID53541();
}

kill_godrays_vfx()
{
    var_0 = _ID42407::_ID16300( "godray_airport2_kill" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] _ID42237::_ID26402();
}

_ID44145()
{
    wait 0.1;
    var_0 = _ID42407::_ID15817( "tarmac_enemies_2ndfloor", "script_noteworthy" );
    _ID42407::_ID41090( var_0, var_0.size - 3 );
    _ID42237::_ID14402( "tarmac_2ndfloor_move_back" );
}

_ID50843()
{
    for ( var_0 = 1; var_0 <= 10; var_0++ )
    {
        var_1 = "tarmac_advance" + var_0 + "_flag";
        var_2 = _func_1A1( var_1, "targetname" );
        var_2 = _func_1A1( var_2._ID1191, "targetname" );
        _ID42237::_ID14413( var_1 );

        if ( _func_02F( var_2._ID1191 ) )
            _ID42407::_ID1805( var_2._ID1191 );

        var_3 = var_2 _ID42407::_ID15633();
        var_3 _ID42407::_ID41163();
        var_2 _ID42407::_ID1801();
    }
}

_ID48523()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14413( "tarmac_hear_fsb" );
    var_0 = _ID42237::_ID16638( "tarmac_riot_node_retreat1_group1", "targetname" );
    level thread _ID42407::_ID15093( _ID42237::_ID27077, "airport_fsb1_moveingo", var_0._ID740 );
    level thread _ID42407::_ID15093( _ID42237::_ID27077, "airport_fsbr_servicetunnels", var_0._ID740 );
    _ID42237::_ID14413( "tarmac_heat_fight" );

    if ( !_ID42237::_ID14385( "tarmac_open_fire" ) )
        level._ID54299 thread _ID42407::_ID10805( "airport_mkv_forzakhaev" );

    _ID42237::_ID14425( "tarmac_open_fire", 1 );

    if ( !_ID42237::_ID14385( "tarmac_open_fire" ) )
        _unknown_2AF9( "airport_fsb2_fsb" );

    _ID42237::_ID14425( "tarmac_open_fire", 5.0 );

    if ( !_ID42237::_ID14385( "tarmac_open_fire" ) )
        level._ID54299 _ID42407::_ID28864( "airport_mkv_fsb" );

    _ID42237::_ID14413( "tarmac_open_fire" );
    _unknown_2B29( "airport_fsb3_openfire" );
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID38929( "tarmac_advance1" );
    thread _unknown_299E();
    _ID42407::_ID38929( "tarmac_advance2" );
    thread _unknown_29C2();
    _ID42407::_ID38929( "tarmac_advance3" );
    thread _unknown_29E8();
    _ID42407::_ID38929( "tarmac_advance4" );
    thread _unknown_2A33();
    _ID42407::_ID38929( "tarmac_advance5" );
    thread _unknown_2A57();
    _ID42407::_ID38929( "tarmac_advance6" );
    thread _unknown_2A8D();
    _ID42407::_ID38929( "tarmac_advance7" );
    thread _unknown_29EA();
    _ID42407::_ID38929( "tarmac_advance8" );
    thread _unknown_2A0E();
    _ID42407::_ID38929( "tarmac_advance9" );
    thread _unknown_2A4F();
    _ID42407::_ID38929( "tarmac_advance10" );
    thread _unknown_2A80();
}

_ID50944()
{
    wait 3;
    _ID42237::_ID14426( "tarmac_bcs" );
    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_0 _ID42407::_ID10805( "contact_2nd_floor" );
    var_1 _ID42407::_ID10805( "contact_2nd_floor" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID43395()
{
    _ID42237::_ID14426( "tarmac_bcs" );
    var_0 = level._ID54299;
    _ID42237::_ID14402( "tarmac_bcs" );
    var_0 _ID42407::_ID10805( "van_left" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID49285()
{
    _ID42237::_ID14430( "tarmac_bcs", level._ID44282 );

    if ( _ID42237::_ID14385( "tarmac_bcs" ) )
        return;

    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_0 _ID42407::_ID10805( "go1" );
    var_1 _ID42407::_ID10805( "moving1" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID43311()
{
    _ID42237::_ID14430( "tarmac_bcs", level._ID44282 );

    if ( _ID42237::_ID14385( "tarmac_bcs" ) )
        return;

    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_0 _ID42407::_ID10805( "ready1" );
    var_1 _ID42407::_ID10805( "go2" );
    var_0 _ID42407::_ID10805( "moving3" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID47182()
{
    _ID42237::_ID14430( "tarmac_bcs", level._ID44282 );

    if ( _ID42237::_ID14385( "tarmac_bcs" ) )
        return;

    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_1 _ID42407::_ID10805( "ready1" );
    var_0 _ID42407::_ID10805( "go2" );
    var_1 _ID42407::_ID10805( "moving2" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID49700()
{
    _ID42237::_ID14430( "tarmac_bcs", level._ID44282 );

    if ( _ID42237::_ID14385( "tarmac_bcs" ) )
        return;

    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_1 _ID42407::_ID10805( "ready1" );
    var_0 _ID42407::_ID10805( "go2" );
    var_1 _ID42407::_ID10805( "moving2" );

    if ( !_ID42237::_ID14385( "tarmac_enemies_2ndfloor_dead" ) && !_ID42237::_ID14385( "tarmac_clear_out_2nd_floor" ) )
        var_0 _ID42407::_ID10805( "airport_mkv_behindus" );

    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID48094()
{
    _ID42237::_ID14430( "tarmac_bcs", level._ID44282 );

    if ( _ID42237::_ID14385( "tarmac_bcs" ) )
        return;

    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_1 _ID42407::_ID10805( "go3" );
    var_0 _ID42407::_ID10805( "moving1" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID46337()
{
    _ID42237::_ID14430( "tarmac_bcs", level._ID44282 );

    if ( _ID42237::_ID14385( "tarmac_bcs" ) )
        return;

    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_0 _ID42407::_ID10805( "go3" );
    var_1 _ID42407::_ID10805( "moving3" );
    _ID42237::_ID14388( "tarmac_bcs" );
    level endon( "tarmac_bcs" );
    var_1 waittill( "goal" );
    thread _unknown_2CFC();
}

_ID46898()
{
    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_1 _ID42407::_ID10805( "ready2" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID46004()
{
    _ID42237::_ID14430( "tarmac_bcs", level._ID44282 );

    if ( _ID42237::_ID14385( "tarmac_bcs" ) )
        return;

    var_0 = level._ID54299;
    var_1 = level._ID1194["m4"];
    _ID42237::_ID14402( "tarmac_bcs" );
    var_0 _ID42407::_ID10805( "ready2" );
    var_1 _ID42407::_ID10805( "go1" );
    var_0 _ID42407::_ID10805( "moving2" );
    _ID42237::_ID14388( "tarmac_bcs" );
}

_ID54491()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _ID42237::_ID14400( "tarmac_enemies_wave2" );
    var_0 = _func_1A1( "tarmac_enemies_wave2", "target" );
    thread _ID42407::_ID32305( var_0, "tarmac_enemies_wave2" );
    wait 0.5;
    var_1 = maps\airport_code::_ID47523();
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 4 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance1_flag" );
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_enemies_wave2" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance1_flag" );
    var_1 = maps\airport_code::_ID47523();
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 3 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance2_flag" );
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_enemies_wave2" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance2_flag" );
    var_1 = maps\airport_code::_ID47523();
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 3 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance3_flag" );
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_enemies_wave2" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance3_flag" );
    _ID42237::_ID14413( "tarmac_enemies_wave2" );
    wait 0.5;
    var_1 = maps\airport_code::_ID47523();
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 3 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance4_flag" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance4_flag" );
    _ID42237::_ID14413( "tarmac_van_guys2_spawn" );
    var_1 = maps\airport_code::_ID47523();
    var_2 = 3;

    if ( var_1.size > 13 )
        var_2 = var_1.size - 10;

    _ID42407::_ID1985( _ID42407::_ID41090, var_1, var_2 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance6_flag" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance6_flag" );
    var_1 = maps\airport_code::_ID47523();
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 3 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance7_flag" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance7_flag" );
    var_1 = maps\airport_code::_ID47523();
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 3 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance8_flag" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance8_flag" );
    var_1 = _ID42407::_ID3328( var_1 );
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 3 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance9_flag" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance9_flag" );
    var_1 = _ID42407::_ID3328( var_1 );
    _ID42407::_ID1985( _ID42407::_ID41090, var_1, 3 );
    _ID42407::_ID1985( _ID42407::_ID38929, "tarmac_advance10_flag" );
    _ID42407::_ID11232();
    _ID42407::_ID1805( "tarmac_advance10_flag" );
}

_ID47328()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    var_0 = _func_1A1( "tarmac_advance6", "targetname" );
    thread _ID42407::_ID32305( var_0, "tarmac_advance6" );
    _ID42407::_ID38928( "tarmac_retreat1", "targetname" );
    _ID42237::_ID14402( "tarmac_retreat1" );
    _unknown_3074( "airport_fsb2_aimforhead" );
    _ID42407::_ID38928( "tarmac_retreat2", "targetname" );
    _ID42237::_ID14402( "tarmac_retreat2" );
    _unknown_3090( "airport_fsb3_aimforheads" );
    _ID42407::_ID38928( "tarmac_retreat3", "targetname" );
    _ID42237::_ID14402( "tarmac_retreat3" );
    _unknown_30AD( "airport_fsbr_sendingtruck" );
    _ID42407::_ID38928( "tarmac_retreat4", "targetname" );
    _ID42237::_ID14402( "tarmac_retreat4" );
    _ID42237::_ID14402( "tarmac_advance4" );
    _ID42407::_ID38928( "tarmac_retreat5", "targetname" );
    _ID42237::_ID14402( "tarmac_retreat5" );
    _ID42407::_ID38928( "tarmac_retreat6", "targetname" );
    _ID42237::_ID14402( "tarmac_retreat6" );
}

_ID45644( var_0 )
{
    var_1 = maps\airport_code::_ID47523();

    if ( !var_1.size )
        return;

    var_2 = _ID42237::_ID28945( var_1 );
    var_2._ID3189 = "generic";
    var_2 thread _ID42407::_ID10805( var_0 );
}

_ID47937()
{
    _ID42407::_ID10226( 1, maps\airport_code::_ID53147, 68, 1 );
    _ID42407::_ID1985( _ID42237::_ID14413, "tarmac_pre_heat_fight" );
    _ID42407::_ID1890( _ID42237::_ID14402, "player_DMS_allow_sprint" );
    level._ID794 _ID42407::_ID1855( ::_meth_830C, 1 );
    _ID42407::_ID1890( _ID42407::_ID10226, 0.1, maps\airport_code::_ID53147, 80, 1 );
    _ID42407::_ID1890( _ID42237::_ID14388, "player_dynamic_move_speed" );
    _ID42407::_ID1841( _ID42237::_ID14413, "tarmac_heat_fight" );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "tarmac_heat_fight" );
    thread maps\airport_code::_ID53147( 100, 5 );
    _ID42237::_ID14402( "player_DMS_allow_sprint" );
    _ID42237::_ID14388( "player_dynamic_move_speed" );
    thread _ID42407::_ID14403( "tarmac_open_fire", 8 );
    _func_0DB( "ai_friendlyFireBlockDuration", 2000 );
    _ID42237::_ID14402( "friendly_fire_pause_flash" );
    _ID42237::_ID14402( "friendly_fire_pause_fire" );
}

_ID42998()
{
    thread maps\airport_code::h2_ambulance_light();
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    _func_1A1( "escape_van_dummy", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID49286, "escape_van" );
    _func_1A1( "escape_van_driver", "script_noteworthy" ) _ID42407::_ID1947( maps\airport_code::_ID44822 );
    _func_1A1( "escape_van_mate", "script_noteworthy" ) _ID42407::_ID1947( maps\airport_code::_ID53798 );
    _ID42237::_ID3350( _func_1A2( "escape_final_guys", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID52938 );
    _ID42237::_ID3350( _func_1A2( "escape_final_guys2", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID49701 );
    _ID42237::_ID3350( _func_1A2( "escape_police_car_guys", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID45404 );
    _unknown_33A3();
    _ID42237::_ID38863( "escape_get_in_trig", "targetname" );
    _ID42237::_ID14413( "tarmac_enemies_wave1_dead" );
    _ID42237::_ID14413( "tarmac_enemies_wave2_dead" );
    _ID42237::_ID14413( "tarmac_van_guys_dead" );
    _ID42237::_ID14413( "tarmac_van_guys2_dead" );
    _ID42407::_ID1801( "escape_van_spawn", "targetname" );
    _ID42407::_ID10226( 0.05, _ID42407::_ID1801, "escape_van_guy", "target" );
    wait 0.5;
    _ID42237::_ID14402( "escape_main" );
    thread _ID42407::_ID4917();
    maps\airport_code::_ID53005();
    maps\airport_code::_ID48417();
    var_0 = level._ID47736;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID10926();
        var_1 _ID42407::_ID10871();
        var_1._ID507 = 1;
        var_1._ID511 = 1;
        var_1._ID381 = 0;
        var_1._ID14383 = 0;
        var_1._ID28530 = "none";
    }

    var_clear_2
    var_clear_0
    level._ID54299 _meth_81AF( 1 );
    thread _ID42407::_ID28864( "airport_mkv_30secs" );
    var_3 = _func_0C9( "escape_start_nodes", "targetname" );
    maps\airport_code::_ID47809( var_3, 10 );
    level._ID54299 waittill( "reached_path_end" );
    thread _ID42407::_ID28864( "airport_mkv_thisway" );
    var_4 = _ID42237::_ID16638( "escape_slow_open_node", "targetname" );
    var_5 = _func_1A1( "escape_door_model", "targetname" );
    var_5._ID3189 = "door";
    var_5 _ID42259::_ID32556();
    var_4 _ID42259::_ID3018( var_5, "opening_door" );
    thread _unknown_3478( var_4 );
    var_4 _ID42259::_ID3074( level._ID54299, "get_ready" );
    var_4 _ID42259::_ID3111( level._ID54299, "get_ready" );

    if ( !_ID42237::_ID14385( "Makarov_enters_room" ) )
    {
        var_4 thread _ID42259::_ID3044( level._ID54299, "ready_idle", "stop_idle" );
        _ID42237::_ID14413( "Makarov_enters_room" );
        var_4 notify( "stop_idle" );
    }

    var_6 = level._ID47736;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_1 = var_6[var_7];
        var_1 _meth_81AF( 1 );
    }

    var_clear_1
    var_clear_0
    var_8 = _func_1A1( "escape_door", "targetname" );
    var_8 thread _ID42407::_ID27079( "scn_makarov_opening_door" );
    var_9[1] = var_5;
    var_4 thread _ID42259::_ID3111( var_5, "opening_door" );
    var_8 _ID42237::_ID10192( 2.5, ::_meth_82BF, var_8._ID65 + ( 0, 90, 0 ), 2, 0.5, 0 );
    var_4 _ID42259::_ID3111( level._ID54299, "opening_door" );
    _ID42237::_ID14402( "escape_doorkick" );
    var_10 = _func_0C8( "escape_moveup_1b", "targetname" );
    level._ID54299 _ID42407::_ID14701( var_10, 260 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID12467 );
    _ID42237::_ID3350( level._ID1194, _ID42407::_ID10226, 4, _ID42407::_ID10896 );
    level._ID54299 _ID42407::_ID10226( 3.5, _ID42407::_ID10805, "airport_mkv_hallway" );
    _unknown_35B6();
    wait 2;
    _ID42407::_ID1801( "escape_final_guys", "target" );
    _ID42407::_ID10226( 1.5, _ID42407::_ID1801, "escape_police_trig", "targetname" );
    var_11 = 18;
    thread _unknown_37A3( var_11 );
    wait(var_11);

    if ( _ID42407::_ID20505() )
        _ID42407::_ID24793();
    else
        _func_19F( "DEVELOPER: END OF SCRIPTED LEVEL" );
}

_ID45785( var_0 )
{
    level._ID43936 = level._ID1194["m4"];
    level._ID43936._ID3189 = "comrad";
    var_0 _ID42259::_ID3074( level._ID43936, "get_ready" );
    var_0 _ID42259::_ID3111( level._ID43936, "get_ready" );
    var_0 thread _ID42259::_ID3044( level._ID43936, "ready_idle", "stop_loop" );
    _ID42237::_ID14413( "escape_sequence_reach" );
    var_0 notify( "stop_loop" );
    var_0 _ID42259::_ID3111( level._ID43936, "follow_makarov" );
}

_ID50299( var_0 )
{
    wait 1.35;

    if ( _func_02F( var_0 ) )
        self _meth_80A1( var_0 );
    else
        self _meth_80A1( "door_wood_slow_open" );

    self _meth_82BF( self._ID65 + ( 0, 70, 0 ), 2, 0.5, 0 );
    self _meth_805F();
    self waittill( "rotatedone" );
    self _meth_82BF( self._ID65 + ( 0, 40, 0 ), 1.5, 0, 1.5 );
}

spawn_cops()
{
    var_0 = _func_1A2( "escape_final_guys2", "targetname" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _ID42407::_ID12076( var_2 );
    }

    var_clear_3
    var_clear_0
}

_ID45468()
{
    _ID42237::_ID14426( "friendly_fire_warning" );
    level endon( "friendly_fire_warning" );
    level notify( "friendly_fire_stop_checking_for_player_dist" );
    _ID42237::_ID14402( "escape_sequence_reach" );
    level._ID43936._ID3189 = "comrad";
    var_0 = [];
    var_0[var_0.size] = level._ID54299;
    var_0[var_0.size] = level._ID43936;
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID507 = 1;
        var_2._ID706 = 1;
        var_2 _meth_81AF( 1 );
        var_2._ID11568 = 1;
        var_2._ID465 = 0;
        var_2._ID709 = 1;
    }

    var_clear_2
    var_clear_0
    level._ID54299 _ID42407::_ID1985( _ID42407::_ID41116, "goal" );
    level._ID54299 _ID42407::_ID1890( _ID42259::_ID3111, level._ID54299, "stand_exposed_wave_halt_v2" );
    level._ID54299 _ID42407::_ID1890( _ID42407::_ID10226, 0.05, _ID42407::_ID10805, "airport_mkv_holdfire" );
    _ID42407::_ID1890( _ID42237::_ID14402, "escape_hold_your_fire" );
    _ID42407::_ID1841( _ID42237::_ID14413, "friendly_fire_warning" );
    thread _ID42407::_ID11231();
    _ID42237::_ID3350( var_0, maps\airport_code::_ID43859 );
    level._ID54299._ID24424 = 1.0;
    level._ID43936._ID24424 = 1.0;
    var_4 = level._ID49338;
    var_5 = _ID42237::_ID16638( "escape_ending_node", "targetname" );
    var_4 _ID42259::_ID3061( var_0, "end_get_in" );
    level._ID54299._ID24424 = 1.0;
    level._ID43936._ID24424 = 1.0;
    maps\airport_code::_ID43384();
    var_4 thread _ID42259::_ID3111( level._ID43574, "end_open_door" );
    var_4 thread _ID42259::_ID3111( var_4, "end_open_door" );
    var_6 = _func_1A1( "escape_amb_door_snd", "targetname" );
    var_6 _meth_80A1( "scn_ambulance_doors_open" );
    _ID42237::_ID14413( "start_ending_sequence" );
    var_7 = _func_1A1( "escape_door_behind", "targetname" );
    var_8 = _func_1A1( "escape_door_behind_model", "targetname" );
    var_8 _meth_8053( var_7 );
    var_7 _meth_82C1( 90, 3, 0, 3 );
    _func_0DB( "r_lightGridEnableTweaks", 1 );
    thread _ID42407::_ID22175( "r_lightGridIntensity", 0.75, 2.0 );
    _ID42237::_ID14402( "escape_sequence_go" );
    var_9 = _func_1A1( "escape_nojump", "targetname" );
    var_9 thread maps\airport_code::_ID47361();
    var_4 notify( "stop_loop" );
    _ID42237::_ID3350( var_0, _ID42407::_ID3136 );
    level._ID43936 _ID42407::_ID1985( _ID42407::_ID1689, "single anim", "end" );
    var_4 _ID42407::_ID1890( _ID42259::_ID3044, level._ID43936, "end_get_in_idle", "stop_loop", "origin_animate_jnt" );
    thread _ID42407::_ID11231();
    waitframe;
    level._ID43574 thread _unknown_39D7();
    thread maps\airport_code::_ID50896();
    var_10 = var_0;

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_11 = var_10[var_12];
        var_11 _meth_8053( var_4, "tag_body" );
    }

    var_clear_2
    var_clear_0
    var_13 = var_0;

    for ( var_22 = _func_1DA( var_13 ); _func_02F( var_22 ); var_22 = _func_1BF( var_13, var_22 ) )
    {
        var_11 = var_13[var_22];
        var_14 = _func_071( var_4._ID740, var_4._ID65, var_11 _ID42407::_ID16120( "end_get_in" ) );
        var_15 = _func_072( var_4._ID740, var_4._ID65, var_11 _ID42407::_ID16120( "end_get_in" ) );
        var_16 = var_11._ID740 - var_14;
        var_17 = _func_06A( "script_origin", var_4._ID740 + var_16 );
        var_17._ID65 = var_4._ID65;
        var_18 = var_11._ID65[1] - var_15[1];
        var_19 = var_4._ID740 - var_14;
        var_19 = _func_123( var_19, ( 0.0, var_18, 0.0 ) );
        var_20 = _func_06A( "script_origin", var_11._ID740 + var_19 );
        var_20._ID65 = var_11._ID65 + var_4._ID65 - var_15;
        var_20 thread _ID42259::_ID3111( var_11, "end_get_in" );
        var_21 = _ID42237::_ID37527( var_11._ID3189 == "makarov", 2.0, 1.0 );
        var_11 _ID42407::_ID10226( 0.05, _ID42259::_ID46811, undefined, var_20, var_17, var_21 );
        var_11 _ID42407::_ID10226( var_21, _ID42259::_ID46811, undefined, var_17, var_4, 1.0 );
    }

    var_clear_9
    var_clear_0
    var_0[var_0.size] = level._ID43574;
    var_23 = 0.25;
    _ID42237::_ID14413( "end_player_ready" );
    _ID42237::_ID14402( "escape_player_get_in" );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8189( "stand" );
    thread maps\airport_code::_ID49445();

    if ( _ID42237::_ID14385( "player_ready_for_proper_ending" ) )
        thread maps\airport_code::_ID46106();
    else
        thread maps\airport_code::_ID47597();

    _ID42237::_ID14413( "ambulance_close_door" );
    var_4 thread _ID42259::_ID3111( var_4, "end_close_door" );
    var_6 _meth_80A1( "scn_ambulance_doors_close" );
    _ID42237::_ID14413( "ambulance_ready_to_leave" );
    var_5 = _func_1F2( "escape_van_leave_node", "targetname" );
    thread _unknown_3B76( var_5 );
    level._ID43936 _ID42407::_ID36519();
    level._ID54299 _ID42407::_ID36519();
    level._ID54299 _meth_80B7();
    level._ID43936 _meth_80B7();
    level._ID43574 _meth_80B7();
}

_ID46003()
{
    _ID42237::_ID14413( "end_player_ready" );
    wait 1.25;
    _ID42407::_ID34379();
    _ID42407::_ID34377( 0.85 );
    _ID42407::_ID34374( 0 );
    _ID42407::_ID34371();
    wait 3;
    _ID42407::_ID34375( 0 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
}

_ID46679()
{
    self waittillmatch( "single anim",  "dialog"  );
    self _meth_80A1( "airport_vt_madeit" );
    self waittillmatch( "single anim",  "dialog"  );
    self _meth_80A1( "airport_vt_beenough" );
}

_ID51717( var_0 )
{
    var_1 = level._ID49338;
    level._ID49338 thread _ID42407::_ID27079( "scn_ambulance_start_away" );
    _ID42237::_ID49667( level._ID1426["light_ambulance_airport_blue"], var_1, "tag_body", ( -101.9, 0.4, 63.6 ), ( 0, 0, 0 ) );
    level._ID49338 _ID42237::_ID10192( 0, ::_meth_8287, var_0 );
    level._ID49338 _ID42237::_ID10192( 0, ::_meth_8289 );
}

_ID46863( var_0 )
{
    if ( level._ID35897 == "grigs" )
        return;

    if ( _ID42237::_ID14385( "escape_player_shot" ) )
        return;

    _ID42237::_ID14402( "escape_player_shot" );
    _ID42475::_ID34575( "start_escape_kill_player_sequence" );
    var_1 = 0.5;
    var_2 = 6;
    level._ID794 _ID42407::_ID10226( 0.1, _ID42407::_ID27079, "breathing_hurt_start" );
    level._ID794 _ID42407::_ID10226( var_1, _ID42407::_ID27079, "breathing_hurt" );
    level._ID794 _ID42407::_ID10226( 3, _ID42407::_ID27079, "breathing_hurt" );
    level._ID794 _ID42407::_ID10226( 6, _ID42407::_ID27079, "breathing_hurt" );
    level._ID794 _ID42407::_ID10226( 9, _ID42407::_ID27079, "breathing_hurt" );
    level._ID794 _ID42407::_ID10226( 1.5, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 3, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 5, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 8, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 12, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794 _ID42407::_ID10226( 17, _ID42407::_ID27079, "breathing_heartbeat" );
    level._ID794._ID486 = 100;
    level._ID794 _meth_8057( 90, level._ID54299 _meth_818C( "tag_flash" ), level._ID54299 );
    _func_032( "ui_consciousness_init", 1 );
    _func_0DB( "ui_consciousnessVignetteDarkness", 0.5 );
    _func_032( "ui_consciousness_play", 1 );
    var_3 = _ID42313::_ID9125( "white", 1 );
    var_3 thread _ID42313::_ID13803( 0, 0.5 );
    _ID42407::_ID32515( "airport_death", 10 );
}

_ID48278( var_0 )
{
    _ID42475::_ID34575( "start_fade_to_white_sequence" );
    var_1 = _ID42313::_ID9125( "white", 0 );
    var_1 _ID42313::_ID13803( 1, var_0 - 0.25 );
}

_ID48196()
{
    _ID42475::_ID34575( "start_airport_nofail_checkpoint" );
    _ID42237::_ID14402( "player_no_fail" );
    _unknown_4176();
}

_ID35812()
{
    _ID42475::_ID34575( "start_intro_checkpoint" );
    _unknown_4183();
    thread _ID42407::_ID4917( "allies" );
}

_ID49998()
{
    _ID42475::_ID34575( "start_stairs_checkpoint" );
    _unknown_4199();
    _unknown_3247();
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID38863( "lobby_to_stairs_flow", "target" );
    var_0 = _func_0C9( "prestairs_nodes", "targetname" );
    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( var_0 );
    thread maps\airport_code::_ID53147( 42 );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_set_speed_stairs" );
    _ID42407::_ID1890( maps\airport_code::_ID53147, 42, 0.25 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42237::_ID14413, "player_set_speed_upperstairs" );
    _ID42407::_ID1890( maps\airport_code::_ID53147, 35, 1 );
    thread _ID42407::_ID11231();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        level._ID1194[var_2._ID922] _meth_819B( "face angle", var_2._ID65[1] );
        level._ID1194[var_2._ID922] maps\airport_code::_ID44489();
        level._ID1194[var_2._ID922]._ID507 = 0;
        level._ID1194[var_2._ID922] thread _ID42407::_ID13026( "prestairs_nodes", 0.5 );
        level._ID1194[var_2._ID922] thread maps\airport_code::_ID43748( var_2 );
    }

    var_clear_2
    var_clear_0
    thread _ID42407::_ID14403( "player_set_speed_lobby", 0.5 );
    thread _ID42407::_ID14403( "stairs_go_up", 1 );
    thread _ID42407::_ID14389( "_escalator_on", 1 );
    maps\airport_code::_ID48186();
}

_ID48265()
{
    var_0 = _func_1DB( self._ID1193 );

    if ( _func_02F( var_0 ) )
    {
        level waittillmatch( "glass_destroyed",  var_0  );
        _ID42237::_ID27077( "scn_airport_skylight_glass", self._ID740 );
    }
}

_ID43808()
{
    var_0 = [];
    var_0[var_0.size] = _func_06A( "script_origin", ( 5462.39, 2109.26, 76.125 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 5462.84, 2213.88, 160.665 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 5460.75, 2403.88, 314.567 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 5287.93, 2410.17, 316.125 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 5288.17, 2243.88, 184.175 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 5284.99, 2103.88, 68.6544 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 5104.29, 2009.68, 68.125 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 5009.83, 2106.67, 180.125 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 4889.42, 2225.57, 308.96 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 4766.84, 2102.98, 310.171 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 4871.84, 1995.85, 195.639 ) );
    var_0[var_0.size] = _func_06A( "script_origin", ( 4987.36, 1885.09, 64.9956 ) );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _ID42237::_ID27000( "emt_airport_escalator" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14426( "_escalator_on" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _ID42237::_ID36516( "emt_airport_escalator" );
    }

    var_clear_1
    var_clear_0
    var_6 = var_0;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_2 = var_6[var_7];
        var_2 thread _ID42407::_ID27079( "emt_airport_escalator_stop" );
    }

    var_clear_1
    var_clear_0
}

_ID44933()
{
    _ID42475::_ID34575( "start_massacre_checkpoint" );
    _unknown_440A();
    _unknown_34B8();
    thread maps\airport_code::_ID43122();
    _ID42237::_ID38863( "upperdeck_runners2", "target" );
    _ID42237::_ID38863( "upperdeck_runners4", "target" );
    _ID42237::_ID38863( "upperdeck_runners1b", "target" );
    _ID42237::_ID38863( "upperdeck_runners1c", "target" );
    _ID42237::_ID3350( _func_1A2( "upperdeck_runners3", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47782 );
    thread _ID42407::_ID4917( "allies" );
    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( _ID42237::_ID16640( "massacre_start_nodes", "targetname" ) );
    thread maps\airport_code::_ID53147( 35 );
    var_0 = level._ID1194;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 thread _ID42407::_ID13026( "massacre_ready", 0.5 );
        var_1._ID452 = 8;
        var_1._ID24424 = 1.3;
        var_1._ID507 = 0;
        var_1 maps\airport_code::_ID44489();
        var_1 thread _ID47984::_ID53591( "massacre_rentacop_stop_dead" );
    }

    var_clear_2
    var_clear_0
    maps\airport_code::_ID48186();
}

_ID44281()
{
    _ID42475::_ID34575( "start_gate_checkpoint" );
    _unknown_44D4();
    _unknown_3581();
    _ID42237::_ID38863( "massacre_rentacops_rear", "target" );
    _ID42237::_ID38863( "massacre_rentacops_stairs", "target" );
    _ID42237::_ID38863( "massacre_runners1", "target" );
    _ID42237::_ID38863( "massacre_runners2", "target" );
    _ID42237::_ID38863( "massacre_runners3", "target" );
    _ID42237::_ID38863( "upperdeck_runners3", "target" );
    _ID42237::_ID38863( "upperdeck_runners4", "target" );
    _ID42237::_ID38863( "upperdeck_runners2", "target" );
    _ID42237::_ID38863( "upperdeck_runners1b", "target" );
    _ID42237::_ID38863( "upperdeck_runners1c", "target" );
    _ID42237::_ID14402( "massacre_rentacops_stairs_dead" );
    _ID42237::_ID14402( "massacre_rentacops_rear_dead" );
    thread _ID42407::_ID4917( "allies" );
    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( _ID42237::_ID16640( "gate_start_nodes", "targetname" ) );
    _ID42237::_ID14402( "gate_main" );
    var_0 = level._ID1194;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 thread _ID42407::_ID13026( "gate_ready_to_go", 0.5 );
    }

    var_clear_2
    var_clear_0
}

_ID54612()
{
    _ID42475::_ID34575( "start_basement_checkpoint" );
    _func_0DB( "xanim_disableFootIK", 0 );
    _unknown_45C1();
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47459 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47459 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_pilot", "script_noteworthy" ), _ID42407::_ID1947, _ID42407::_ID32353, 1 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_pilot", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    var_0 = _func_1A1( "tarmac_littlebird", "targetname" );
    var_0 _ID42407::_ID1947( ::_unknown_3AD5 );
    _ID42237::_ID3350( _func_1A2( "gate_convoy_delete", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID51900 );
    _ID42237::_ID3350( _func_1A2( "tarmac_van_guys", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46182, "tarmac_van_guys_spawn" );
    _ID42237::_ID3350( _func_1A2( "tarmac_van_guys2", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46182, "tarmac_van_guys2_spawn" );
    _func_1A1( "tarmac_swat_van", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID51192 );
    _func_1A1( "tarmac_swat_van", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID44354, "scn_airport_police_van_arrive1", "tarmac_swat_van" );
    _func_1A1( "tarmac_swat_van2", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID44354, "scn_airport_police_van_arrive2", "tarmac_swat_van2" );
    _func_1A1( "tarmac_swat_van", "targetname" ) thread maps\airport_code::_ID53768( "tarmac_swat_van" );
    _func_1A1( "tarmac_swat_van2", "targetname" ) thread maps\airport_code::_ID53768( "tarmac_swat_van2" );
    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( _ID42237::_ID16640( "basement_start_nodes", "targetname" ) );
    thread maps\airport_code::_ID53147( 27 );
    level._ID12194 = maps\airport_code::_ID51654;
    _ID42237::_ID14402( "gate_main" );
    _ID42237::_ID14402( "gate_heli_moveon" );
    maps\airport_code::_ID49014();
    _ID42407::_ID1805( "gate_heli_1" );
    _ID42237::_ID14413( "team_initialized" );
    var_1 = [];
    var_1[var_1.size] = _func_0C8( "basement_start_makarov", "targetname" );
    var_1[var_1.size] = _func_0C8( "basement_start_shotgun", "targetname" );
    var_1[var_1.size] = _func_0C8( "basement_start_saw", "targetname" );
    var_1[var_1.size] = _func_0C8( "basement_start_m4", "targetname" );
    wait 0.2;
    var_2 = level._ID1194;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 maps\airport_code::_ID44489();
        var_3._ID507 = 1;
        var_3._ID511 = 1;
        var_3._ID24424 = 1.2;
        var_3 _ID42407::_ID10877();
        var_3 _ID42407::_ID10912();
        var_3 thread maps\airport_code::_ID46088();
        var_3._ID452 = 16;
    }

    var_clear_2
    var_clear_0
    var_5 = var_1;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        level._ID1194[var_6._ID922] thread _ID42407::_ID14701( var_6 );
    }

    var_clear_2
    var_clear_0
}

_ID52277()
{
    _ID42475::_ID34575( "start_tarmac_checkpoint" );
    _unknown_47FF();
    _unknown_38AD();
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47459 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID47459 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_pilot", "script_noteworthy" ), _ID42407::_ID1947, _ID42407::_ID32353, 1 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_sniper2", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    _ID42237::_ID3350( _func_1A2( "tarmac_littlebird_pilot", "script_noteworthy" ), _ID42407::_ID1947, maps\airport_code::_ID54541 );
    var_0 = _func_1A1( "tarmac_littlebird", "targetname" );
    var_0 _ID42407::_ID1947( ::_unknown_3D17 );
    _func_0DB( "xanim_disableFootIK", 0 );
    _ID42237::_ID3350( _func_1A2( "tarmac_van_guys", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46182, "tarmac_van_guys_spawn" );
    _ID42237::_ID3350( _func_1A2( "tarmac_van_guys2", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID46182, "tarmac_van_guys2_spawn" );
    _func_1A1( "tarmac_swat_van", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID51192 );
    _func_1A1( "tarmac_swat_van", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID44354, "scn_airport_police_van_arrive1", "tarmac_swat_van" );
    _func_1A1( "tarmac_swat_van2", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID44354, "scn_airport_police_van_arrive2", "tarmac_swat_van2" );
    _func_1A1( "tarmac_swat_van", "targetname" ) thread maps\airport_code::_ID53768( "tarmac_swat_van" );
    _func_1A1( "tarmac_swat_van2", "targetname" ) thread maps\airport_code::_ID53768( "tarmac_swat_van2" );
    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( _ID42237::_ID16640( "tarmac_start_nodes", "targetname" ) );
    thread maps\airport_code::_ID53147( 27 );
    _ID42407::_ID14403( "tarmac_moveout", 0.1 );
    _ID42237::_ID14402( "gate_main" );
    _ID42237::_ID14402( "gate_heli_moveon" );
    _ID42237::_ID14402( "basement_moveout" );
    maps\airport_code::_ID49014();
    _ID42407::_ID1805( "gate_heli_1" );
    _ID42407::_ID1805( "basement_heli_1" );
    _ID42407::_ID1805( "tarmac_van_dummy_spawn_trig" );
    _ID42407::_ID10226( 0.2, _ID42407::_ID1801, "tarmac_security", "target" );
}

_ID35741()
{
    _ID42475::_ID34575( "start_escape_checkpoint" );
    _unknown_49B3();
    _unknown_3A61();
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "team_initialized" );
    var_0 = level._ID1194;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID12492();
        var_1 _meth_81AF( 0 );
        var_1 _ID47984::casual_killer_setup_custom_turns( 0 );
    }

    var_clear_2
    var_clear_0
    level._ID1194["saw"] _ID42407::_ID36519();
    level._ID1194["shotgun"] _ID42407::_ID36519();
    level._ID1194["saw"] _meth_8058();
    level._ID1194["shotgun"] _meth_8058();
    level._ID1194 = _ID42407::_ID3329( level._ID1194 );
    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( _ID42237::_ID16640( "escape_start_nodes", "targetname" ) );
    _ID42237::_ID14402( "player_DMS_allow_sprint" );
    thread maps\airport_code::_ID53147( 100 );
    maps\airport_code::_ID46834();
    _ID42237::_ID14402( "tarmac_enemies_wave1_dead" );
    _ID42237::_ID14402( "tarmac_enemies_wave2_dead" );
    _ID42237::_ID14402( "tarmac_van_guys_dead" );
    _ID42237::_ID14402( "tarmac_van_guys2_dead" );
    level._ID794 _meth_830C( 1 );
    _ID42237::_ID14402( "player_DMS_allow_sprint" );
}

_ID52926()
{
    _ID42475::_ID34575( "start_grigs_checkpoint" );
    _unknown_4A88();
    thread _ID42407::_ID4917( "allies" );
    wait 0.1;
    _unknown_4A53();
}

_ID47216()
{
    var_0 = [];
    var_0[var_0.size] = "m4_grunt";
    var_0[var_0.size] = "saw_reflex";
    var_0[var_0.size] = "saw";
    var_0[var_0.size] = "saw_acog";
    var_0[var_0.size] = "mp5";
    var_0[var_0.size] = "ump45";
    var_0[var_0.size] = "g36c";
    var_0[var_0.size] = "g36c_acog";
    var_0[var_0.size] = "g36c_grenadier";
    var_0[var_0.size] = "g36c_reflex";
    var_0[var_0.size] = "striker";
    var_1 = _ID42237::_ID16638( "escape_ending_node", "targetname" );
    level._ID49338 = _func_06A( "script_model", var_1._ID740 );
    level._ID49338._ID65 = var_1._ID65;
    level._ID49338 _meth_80B8( "vehicle_ambulance_swat" );
    level._ID43574 = level._ID1194["saw"];
    level._ID43574._ID3189 = "van_mate";
    level._ID43936 = level._ID1194["m4"];
    level._ID43936._ID3189 = "comrad";
    level._ID794 _ID42407::_ID12569( 0 );

    for (;;)
    {
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            maps\airport_code::_ID45117( var_3 );
            maps\airport_code::_ID46106();
            wait 4;
        }

        var_clear_2
        var_clear_0
    }
}

_ID49964()
{
    thread _unknown_4883();
    _ID42237::_ID3350( _ID42237::_ID16640( "glass_break_snd", "script_noteworthy" ), ::_unknown_487E );
    _ID42237::_ID3350( _func_1A2( "team", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID48925 );
    _ID42407::_ID1801( "team", "target" );
    thread _ID42407::_ID14403( "team_initialized", 0.05 );
    thread maps\airport_code::_ID27484();
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2 _ID42407::_ID20537() )
            continue;

        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    thread _ID42407::_ID4917( "axis" );
    var_4 = _func_1A2( "massacre_dummy", "targetname" );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _meth_805A();
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "gate_canned_deaths", "targetname" );
    var_8 = var_4;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_6 = var_8[var_9];
        var_6 _meth_805A();
    }

    var_clear_1
    var_clear_0
    var_4 = _func_1A2( "upperdeck_canned_deaths", "targetname" );
    var_10 = var_4;

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_6 = var_10[var_12];
        var_6 _meth_805A();

        if ( _func_02F( var_6._ID1191 ) )
        {
            var_11 = _func_1A1( var_6._ID1191, "targetname" );
            var_11 _meth_805A();
        }
    }

    var_clear_1
    var_clear_0
    thread _unknown_4D12();

    if ( _ID42237::_ID14385( "player_no_fail" ) == 0 )
        thread maps\airport_code::_ID48008();

    _ID42237::_ID14400( "trigger_kill_player" );
    var_13 = _func_1A2( "kill_player", "targetname" );
    var_14 = var_13;

    for ( var_16 = _func_1DA( var_14 ); _func_02F( var_16 ); var_16 = _func_1BF( var_14, var_16 ) )
    {
        var_15 = var_14[var_16];
        thread _ID42407::_ID32305( var_15, "trigger_kill_player" );
    }

    var_clear_2
    var_clear_0
    thread maps\airport_code::_ID43181();
    thread maps\airport_code::_ID51290();
    _ID42407::_ID10226( 0.5, maps\airport_code::_ID53994 );
    maps\airport_code::_ID48861();
    var_4 = _ID42237::_ID3320( level._ID46762 );
    var_4[0] thread maps\airport_code::_ID43595( "arriving" );
    var_4[1] thread maps\airport_code::_ID43595( "arriving" );
    var_4[2] thread maps\airport_code::_ID43595( "arriving" );
    var_4[3] thread maps\airport_code::_ID43595( "boarding" );
    var_4[4] thread maps\airport_code::_ID43595( "boarding" );
}

_ID724()
{
    level._ID36699["OBJ_COVER"] = &"AIRPORT_OBJ_COVER";
    level._ID36699["OBJ_COVER_COST"] = &"AIRPORT_OBJ_COVER_COST";
    level._ID36699["OBJ_COVER_TRUST"] = &"AIRPORT_OBJ_COVER_TRUST";
    level._ID36699["OBJ_TRUST"] = &"AIRPORT_OBJ_TRUST";
    level._ID36699["OBJ_TRUST_COST"] = &"AIRPORT_OBJ_TRUST_COST";
    level._ID36699["OBJ_GET_IN_VAN"] = &"AIRPORT_OBJ_GET_IN_VAN";
    level._ID36699["mantle"] = &"SCRIPT_MANTLE";
    var_0 = level._ID36699;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        _func_150( var_1 );
    }

    var_clear_2
    var_clear_0

    if ( _ID42407::_ID20505() )
        wait 29.5;
    else
        wait 0.05;

    _func_1E3( 1, "active", level._ID36699["OBJ_TRUST_COST"] );
    _func_118( 1 );
    _unknown_4E7C();
}

_ID54248()
{
    level endon( "escape_player_get_in" );
    _func_194( 1, level._ID54299, ( 0, 0, 80 ) );
}

_ID50103()
{
    self endon( "entitydeleted" );
    wait(_func_0B8( 2 ));
    _func_157( _ID42237::_ID16299( "light_sedan_police_airport" ), self, "tag_origin" );
    self waittill( "exploded" );
    _func_159( level._ID1426["light_sedan_police_airport"], self, "tag_origin" );
}

_ID47549()
{
    _ID42237::_ID14400( "airport_alternate" );
    _ID42237::_ID14400( "airport_anticipation" );
    _ID42237::_ID14400( "airport_escape" );

    switch ( level._ID35897 )
    {

    }

    case "default":
    case "grigs":
    case "escape":
    case "tarmac":
    case "basement":
    case "gate":
    case "massacre":
    case "stairs":
    case "start_intro":
    default:
}

airport_fx_volume_groups_setup()
{
    var_0 = 0;
    level _ID42237::_ID41068( "createfx_common_done", "start_is_set" );

    if ( !var_0 )
    {
        var_1 = [ "fx_fountain", "fx_security", "fx_italian", "fx_vista_italian", "fx_italian_counter", "fx_maintenence", "fx_downstairs_booths", "fx_ceiling_lights", "fx_luggage_store", "fx_liquor_store", "fx_northwest_corner", "fx_gate_exit", "fx_gate_curvy", "fx_burger_town", "fx_downstairs_lights", "fx_gate_desk_south", "fx_ambulance", "fx_carport", "fx_east_bar", "fx_east_phones", "fx_east_phones_vista", "fx_security_counters" ];
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            _ID42237::_ID14400( var_3 );
        }

        var_clear_2
        var_clear_0
        var_5 = _unknown_50D7();
        var_6 = var_5;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_3 = var_6[var_7];
            _ID42237::_ID14402( var_3 );
        }

        var_clear_1
        var_clear_0
        var_8 = var_1;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_3 = var_8[var_9];
            _ID42407::_ID53651( var_3, var_3 );
            _ID42407::_ID52583( var_3, _func_1A2( var_3, "targetname" ) );
        }

        var_clear_1
        var_clear_0
        _ID42407::_ID45871( undefined, undefined );
    }
}

fx_volume_start_point_initializer()
{
    var_0 = [ "fx_security", "fx_fountain", "fx_ceiling_lights", "fx_luggage_store", "fx_security_counters" ];
    var_1 = [ "fx_security", "fx_fountain", "fx_ceiling_lights", "fx_luggage_store", "fx_security_counters" ];
    var_2 = [ "fx_vista_italian", "fx_ceiling_lights", "fx_northwest_corner", "fx_burger_town", "fx_east_bar", "fx_east_phones", "fx_east_phones_vista", "fx_security_counters" ];
    var_3 = [ "fx_italian", "fx_italian_counter", "fx_ceiling_lights", "fx_luggage_store", "fx_liquor_store", "fx_northwest_corner", "fx_gate_exit", "fx_gate_curvy", "fx_burger_town", "fx_gate_desk_south", "fx_east_bar", "fx_east_phones" ];
    var_4 = [ "fx_italian", "fx_downstairs_booths", "fx_ceiling_lights", "fx_liquor_store", "fx_northwest_corner", "fx_gate_exit", "fx_gate_curvy", "fx_burger_town", "fx_gate_desk_south" ];
    var_5 = [ "fx_maintenence", "fx_downstairs_booths", "fx_liquor_store", "fx_gate_exit", "fx_gate_curvy", "fx_downstairs_lights", "fx_gate_desk_south" ];
    var_6 = [ "fx_ambulance", "fx_carport" ];

    switch ( level._ID35897 )
    {

    }

    return var_6;
    case "escape":
    case "tarmac":
    case "basement":
    case "gate":
    case "massacre":
    case "stairs":
    default:
}

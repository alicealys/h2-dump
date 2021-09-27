// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( maps\af_caves_beautiful_corner::_ID616() )
        return;

    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\af_caves_mission_select_cam::_ID50320();
        return;
    }

    _ID42407::_ID32246();
    _unknown_0161();
    _ID42407::_ID10126( ::_unknown_023A );
    _ID42407::_ID1951( "road", ::_unknown_024D );
    _ID42407::_ID1951( "rappel", ::_unknown_0283 );
    _ID42407::_ID1951( "barracks", ::_unknown_02BC, "barracks (cave entrance)" );
    _ID42407::_ID1951( "steamroom", ::_unknown_02F8 );
    _ID42407::_ID1951( "ledge", ::_unknown_0332 );
    _ID42407::_ID1951( "overlook", ::_unknown_037D );
    _ID42407::_ID1951( "control", ::_unknown_03B5 );
    _ID42407::_ID1951( "airstrip", ::_unknown_03F8 );
    level._ID834 = "cheytac_silencer_desert";
    level._ID949 = "kriss_acog_silencer";
    _func_14C( "com_flashlight_on" );
    _func_14C( "weapon_parabolic_knife" );
    _func_14C( "com_cellphone_on_anim" );
    _func_14C( "h2_prop_npc_cigar" );
    _func_14C( "com_two_light_fixture_off" );
    _func_14C( "com_utility_light_off" );
    _func_14C( "body_shadow_co_smg_takedown" );
    _func_14C( "head_shadow_co_c_takedown" );
    _func_14C( "body_shadow_co_assault_takedown" );
    _func_14C( "head_shadow_co_b_takedown" );
    _func_14E( "scar_h_thermal_silencer" );
    _func_14E( "usp_silencer" );
    _func_14E( "rappel_knife" );
    _func_14E( "rpg_straight" );
    _func_14E( "hellfire_missile_af_caves" );
    _func_152( "damage_heavy" );
    _func_150( &"AF_CAVES_HINT_C4_SWITCH" );
    _func_150( &"AF_CAVES_RAPPEL_HINT" );
    _func_150( &"AF_CAVES_RAPPEL_HINT_PC" );
    _func_150( &"AF_CAVES_OVERRIDE" );
    _func_150( &"AF_CAVES_HOOKUP" );
    _func_14E( "cheytac_silencer_desert" );
    level._ID47275 = "viewbody_tf141";
    level._ID49353 = 1;
    level._ID51139 = 1;
    _ID53206::_ID616();
    _ID44190::_ID616();
    _ID53206::_ID38735();
    level._ID47460 = 62500;
    level._ID8760["70"] = _func_0BC( 70 );
    level._ID8760["45"] = _func_0BC( 45 );
    maps\af_caves_backhalf::_ID49259();
    _ID42508::_ID28414();
    _ID42265::_ID616();
    _ID42304::_ID19911();
    _ID43691::_ID616();
    maps\af_caves_anim::_ID616();
    _ID47599::_ID616();
    _ID42323::_ID616();
    _ID50289::_ID616();
    maps\af_caves_lighting::_ID616();
    _ID42237::_ID3350( _func_1A2( "steamroom_c4", "targetname" ), _ID42323::_ID2937, "c4" );
    maps\af_caves_backhalf::_ID45437();
    _ID42323::_ID32417( "viewhands_player_tf141" );
    _ID42287::_ID521();
    _ID42367::_ID34366();
    _ID42337::_ID616();
    _ID42373::_ID616();
    level._ID48444 = 1600;
    level._ID45172 = 64000000;
    _ID42339::_ID616();
    animscripts\dog\dog_init::_ID19886();
    _ID42314::_ID19317();
    _ID42315::_ID616();
    _ID43509::_ID616();
    _ID48225::_ID616();
    _ID47233::_ID616();
    _ID45778::_ID616();
    thread _ID54017::_ID49310();
    maps\af_caves_aud::_ID616();
    _ID42407::_ID1895( "begin_descent", &"AF_CAVES_DESCEND", maps\af_caves_code::_ID53473, undefined, "small_background" );
    _ID42407::_ID1895( "nvg", &"SCRIPT_NIGHTVISION_USE", _ID42337::_ID33930 );
    _ID42407::_ID1895( "rappel_melee", &"SCRIPT_PLATFORM_OILRIG_HINT_STEALTH_KILL", maps\af_caves_code::_ID50140, undefined, "medium_background" );
    _ID42272::_ID33575( "compass_map_afghan_caves" );
    _func_10C( "player" );
    _func_10C( "price" );
    level._ID794 _meth_8183( "player" );
    level._ID46837 = [];
    level._ID46837["sand"] = 1;
    level._ID794 thread _ID42407::_ID46142();
    var_0 = _func_1A2( "enemy_road_patrollers_dogs", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_080E );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2.slowdog = 1;
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "enemy_road_patrollers", "targetname" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_unknown_07A7 );
    var_5 = _func_1A1( "group2_smoker_patrol2_start", "script_noteworthy" );
    var_5 _ID42407::_ID1947( ::_unknown_03D5 );
    var_6 = _func_1A1( "group2_doghandler_patrol2_start", "script_noteworthy" );
    var_6 _ID42407::_ID1947( ::_unknown_03E9 );
    var_7 = _func_1A1( "price_spawner", "targetname" );
    var_7 _ID42407::_ID1947( maps\af_caves_code::_ID49162 );
    var_7 _ID42407::_ID1947( maps\af_caves_code::_ID32475, "price" );
    var_7 _ID42407::_ID35014();
    _func_0DB( "ai_friendlyFireBlockDuration", "0" );
    _ID42237::_ID3350( _func_1A2( "clip_nosight", "targetname" ), maps\af_caves_code::_ID44781 );
    var_8 = _func_1A1( "player_rope", "targetname" );
    var_8 _meth_805A();
    var_9 = _func_1A1( "soldier_rope", "targetname" );
    var_9 _meth_805A();
    var_10 = _func_1A1( "rappel_hookup_glowing", "targetname" );
    var_10 _meth_805A();
    thread _unknown_0463();
    level._ID49353 = 1;
    level._ID51139 = 1;
    thread _unknown_0D77();
    thread _unknown_0FE1();
    thread _unknown_1629();
    thread maps\af_caves_code::_ID52068();
    thread maps\af_caves_code::_ID27417();
    thread maps\af_caves_code::_ID53332();
    level._ID794 thread _unknown_1C50();
    thread maps\af_caves_backhalf::_ID46295();
    thread maps\af_caves_code::_ID46009();
    thread maps\af_caves_code::initialize_portal_flags();
    thread maps\af_caves_code::vista_staticgroups();
    thread maps\af_caves_code::init_fx_alphathreshold();
    thread _unknown_1C68();
    thread maps\af_caves_code::rotate_fan_blade();
    var_11 = _func_0E0();
    _ID42237::_ID3350( var_11, _ID42407::_ID1947, ::_unknown_04AC );
    thread maps\af_caves_backhalf::bombardment_animate_environment();
    thread _ID49347::override_wolf_model( "h2_body_vil_shepherd_cheat_af_caves" );
}

remove_danger_close_gun()
{
    self.cheat._ID48626 = 1;
}

roadpatrollers_idle()
{
    self._ID35378 = [ level._ID30895["generic"]["patrol_idle_1"] ];
}

_ID46627()
{
    level._ID46726 = _func_1A1( "steamroom_door_open", "targetname" );
    var_0 = _func_1A1( "steamroom_door_closed_col", "targetname" );
    var_0 _meth_82C9();
    var_0 _meth_805F();
}

_ID52131()
{
    _ID42237::_ID14400( "scripted_dialogue" );
    _ID42237::_ID14400( "stealth_kill_dialogue_running" );
    _ID42237::_ID14400( "unsuppressed_weapon_warning_played" );
    _ID42237::_ID14400( "player_falling_kill_in_progress" );
    _ID42237::_ID14400( "intro_dialogue_start" );
    _ID42237::_ID14400( "intro_fade_in" );
    _ID42237::_ID14400( "intro_faded_in" );
    _ID42237::_ID14400( "player_intro_unlock" );
    _ID42237::_ID14400( "intro_player_moved" );
    _ID42237::_ID14400( "introscreen_feed_lines" );
    _ID42237::_ID14400( "introscreen_feed_lines_done" );
    _ID42237::_ID14400( "price_rise_up" );
    _ID42237::_ID14400( "price_abort_intro_stop" );
    _ID42237::_ID14400( "intro_player_past_starting_area" );
    _ID42237::_ID14400( "intro_price_sent_to_post_getup_node" );
    _ID42237::_ID14400( "intro_price_reached_post_getup_node" );
    _ID42237::_ID14400( "price_at_hillside" );
    _ID42237::_ID14400( "price_hillside_dialogue_done" );
    _ID42237::_ID14400( "road_enemy_wiretap_dialogue_done" );
    _ID42237::_ID14400( "road_group1_countdown_kill_aborted" );
    _ID42237::_ID14400( "group1_countdown_kill_done" );
    _ID42237::_ID14400( "road_group1_killed_without_stealthbreak" );
    _ID42237::_ID14400( "road_group2_alerted" );
    _ID42237::_ID14400( "road_group2_startmoving" );
    _ID42237::_ID14400( "road_group2_walked_away" );
    _ID42237::_ID14400( "road_group2_coming_back" );
    _ID42237::_ID14400( "road_group2_lastchance" );
    _ID42237::_ID14400( "road_player_broke_stealth" );
    _ID42237::_ID14400( "road_uav_inbound" );
    _ID42237::_ID14400( "player_shot_someone" );
    _ID42237::_ID14400( "price_done_moving_to_road" );
    _ID42237::_ID14400( "road_patrol_humans_cleared" );
    _ID42237::_ID14400( "road_patrol_cleared" );
    _ID42237::_ID14400( "descending" );
    _ID42237::_ID14400( "rappel_threads" );
    _ID42237::_ID14400( "price_at_rappel" );
    _ID42237::_ID14400( "price_hooksup" );
    _ID42237::_ID14400( "player_hooking_up" );
    _ID42237::_ID14400( "player_hooked_up" );
    _ID42237::_ID14400( "player_failed_rappel" );
    _ID42237::_ID14400( "player_braked" );
    _ID42237::_ID14400( "guard_2_exposing_himself" );
    _ID42237::_ID14400( "player_killing_guard" );
    _ID42237::_ID14400( "player_rappeled" );
    _ID42237::_ID14400( "rappel_guards_react" );
    _ID42237::_ID14400( "rappel_end" );
    _ID42237::_ID14400( "end_of_rappel_scene" );
    _ID42237::_ID14400( "barracks_price_ready_to_dodge_biggroup" );
    _ID42237::_ID14400( "barracks_biggroup_passingby" );
    _ID42237::_ID14400( "barracks_biggroup_gone" );
    _ID42237::_ID14400( "barracks_stairguys_countdown_dialogue_done" );
    _ID42237::_ID14400( "barracks_stairguys_spawned" );
    _ID42237::_ID14400( "barracks_stairguys_countdown_kill_done" );
    _ID42237::_ID14400( "barracks_stairguys_countdown_kill_aborted" );
    _ID42237::_ID14400( "barracks_stealth_broken" );
    _ID42237::_ID14400( "barracks_stealthbreak_survived" );
    _ID42237::_ID14400( "destroy_tv" );
    _ID42237::_ID14400( "barracks_follow_price" );
    _ID42237::_ID14400( "steamroom_start" );
    _ID42237::_ID14400( "steamroom_knifekill_setup_done" );
    _ID42237::_ID14400( "steamroom_price_knifekill_sequencestart" );
    _ID42237::_ID14400( "steamroom_price_knifekill_abort" );
    _ID42237::_ID14400( "steamroom_price_knifekill_started" );
    _ID42237::_ID14400( "steamroom_price_knifekill_walkup_abort" );
    _ID42237::_ID14400( "steamroom_price_knifekill_committed" );
    _ID42237::_ID14400( "steamroom_price_knifekill_done" );
    _ID42237::_ID14400( "steamroom_halfway_point" );
    _ID42237::_ID14400( "steamroom_door_preblow" );
    _ID42237::_ID14400( "steamroom_door_blown" );
    _ID42237::_ID14400( "steamroom_ambush_started" );
    _ID42237::_ID14400( "steamroom_player_spotted" );
    _ID42237::_ID14400( "steamroom_patrollers_protect_door" );
    _ID42237::_ID14400( "steamroom_ambush_done" );
    _ID42237::_ID14400( "steamroom_going_dark" );
    _ID42237::_ID14400( "steamroom_lights_out" );
    _ID42237::_ID14400( "steamroom_ambush_finish_dialogue_ended" );
    _ID42237::_ID14400( "steamroom_done" );
}

_ID47474()
{
    _ID42475::_ID34575( "start_default_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves_start" );
    level._ID794 _ID42389::_ID36280();
    thread maps\af_caves_code::_ID53869();
    thread _unknown_0A8C();
}

_ID51726()
{
    _ID42475::_ID34575( "start_road_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves" );
    level._ID794 _ID42389::_ID36280();
    thread maps\af_caves_code::_ID53869();
    var_0 = _ID42237::_ID16638( "road_player", "targetname" );
    var_1 = _ID42237::_ID16638( "road_price", "targetname" );
    level._ID794 maps\af_caves_code::_ID45599( var_0 );
    level._ID28543 maps\af_caves_code::_ID45599( var_1 );
    thread maps\af_caves_code::_ID53872();
    thread maps\af_caves_code::_ID51368();
    _ID42237::_ID14402( "price_goto_hillside" );
    _ID42237::_ID14402( "intro_price_reached_post_getup_node" );
    thread _unknown_0A78();
    thread _unknown_0B9C();
    _func_080( "music", 1 );
    _func_080( "interface", 1 );
    _func_080( "notimescale", 1 );
}

_ID47116()
{
    _ID42475::_ID34575( "start_rappel_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves" );
    level._ID794 _ID42389::_ID36280();
    thread maps\af_caves_code::_ID53869();
    thread _unknown_0AB7();
    var_0 = _func_1A1( "rappel_player", "targetname" );
    var_1 = _func_1A1( "rappel_price", "targetname" );
    level._ID794 maps\af_caves_code::_ID45599( var_0 );
    level._ID28543 maps\af_caves_code::_ID45599( var_1 );
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543 _ID42407::_ID14803( "scar_h_thermal_silencer", "primary" );
    _ID42237::_ID14402( "rappel_threads" );
    thread maps\af_caves_code::_ID51368();
    wait 0.5;
    thread _ID42407::_ID4422( "rappel" );
}

_ID47536()
{
    _ID42475::_ID34575( "start_barracks_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves" );
    thread _unknown_1403();
    var_0 = _func_1A1( "cave_entrance_player", "targetname" );
    var_1 = _func_1A1( "cave_entrance_price", "targetname" );
    level._ID794 maps\af_caves_code::_ID45599( var_0 );
    level._ID28543 maps\af_caves_code::_ID45599( var_1 );
    level._ID794 _meth_8320( level._ID949 );
    level._ID28543 _ID42407::_ID14803( "scar_h_thermal_silencer", "primary" );
    level._ID28543 _ID42407::_ID32315( "r" );
    level._ID28543 _meth_81D6( "crouch" );
    level._ID794 _ID42389::_ID36280();
    thread maps\af_caves_code::_ID53869();
    _ID42237::_ID14402( "end_of_rappel_scene" );
    _ID42237::_ID14402( "player_killing_guard" );
    thread maps\af_caves_code::_ID51494();
    wait 0.5;
    thread _ID42407::_ID4422( "cave_entrance" );
}

_ID50947()
{
    _ID42475::_ID34575( "start_steamroom_checkpoint" );
    _ID42237::_ID14402( "barracks_follow_price" );
    thread _unknown_0BF2();
    maps\af_caves_lighting::_ID51110( "af_caves_indoors" );
    var_0 = _func_1A1( "steamroom_player", "targetname" );
    level._ID794 maps\af_caves_code::_ID45599( var_0 );
    level._ID794 _ID42389::_ID36280();
    thread maps\af_caves_code::_ID53869();
    level._ID794 _meth_8320( level._ID949 );
    var_1 = _func_1A1( "steamroom_price", "targetname" );
    level._ID28543 maps\af_caves_code::_ID45599( var_1 );
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543 _ID42407::_ID14803( "scar_h_thermal_silencer", "primary" );
    _ID42237::_ID14402( "steamroom_start" );
    wait 0.5;
    thread _ID42407::_ID4422( "steamroom" );
}

_ID52731()
{
    _ID42475::_ID34575( "start_ledge_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves_ledge" );
    level notify( "start_ledge" );
    _unknown_209C();
    thread maps\af_caves_code::_ID43212();
    level._ID794 _ID42389::_ID36280();
    thread maps\af_caves_code::_ID51663();
    _ID42237::_ID14402( "steamroom_halfway_point" );
    var_0 = _func_1A1( "ledge_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    thread maps\af_caves_backhalf::_ID50581();
    var_1 = _func_1A1( "ledge_price", "targetname" );
    level._ID28543 _meth_81D1( var_1._ID740, var_1._ID65 );
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543 _ID42407::_ID14803( "scar_h_thermal_silencer", "primary" );
    wait 0.1;
    _ID42237::_ID14402( "steamroom_done" );
    _ID42237::_ID14402( "steamroom_ambush_finish_dialogue_ended" );
    wait 0.5;
    thread _ID42407::_ID4422( "ledge" );
    var_2 = _func_1A1( "shadow_breach", "targetname" );
    var_2 _meth_805F();
    var_2 _meth_80B7();
}

_ID35879()
{
    _ID42475::_ID34575( "start_overlook_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves_indoors_overlook" );
    var_0 = _func_1A1( "overlook_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    thread maps\af_caves_backhalf::_ID50581();
    var_1 = _func_1A1( "overlook_price", "targetname" );
    level._ID28543 _meth_81D1( var_1._ID740, var_1._ID65 );
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543 _ID42407::_ID14803( "m4_grenadier", "primary" );
    thread maps\af_caves_code::_ID51663();
    _ID42237::_ID14402( "player_crossed_bridge" );
    wait 0.5;
    thread _ID42407::_ID4422( "overlook" );
}

_ID35701()
{
    _ID42475::_ID34575( "start_control_room_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves_indoors_skylight" );
    var_0 = _func_1A1( "control_room_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    thread maps\af_caves_backhalf::_ID50581();
    var_1 = _func_1A1( "control_room_price", "targetname" );
    level._ID28543 _meth_81D1( var_1._ID740, var_1._ID65 );
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543 _ID42407::_ID14803( "m4_grenadier", "primary" );
    level._ID28543 _ID42407::_ID32353( 0 );
    thread maps\af_caves_code::_ID51663();
    thread maps\af_caves_backhalf::_ID52028();
    _ID42237::_ID14402( "player_right_near_breach" );
    _ID42237::_ID14402( "player_right_near_breach" );
    wait 0.05;
    level._ID28543 _ID42407::_ID12445();
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
}

_ID53264()
{
    _ID42475::_ID34575( "start_airstrip_checkpoint" );
    maps\af_caves_lighting::_ID51110( "af_caves_outdoors_airstrip" );
    var_0 = _func_1A1( "airstrip_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    thread maps\af_caves_backhalf::_ID50581();
    var_1 = _func_0C8( "node_price_escape_cover", "targetname" );
    level._ID28543 _meth_81D1( var_1._ID740, var_1._ID65 );
    level._ID28543 _meth_81B1( var_1 );
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543 _ID42407::_ID14803( "m4_grenadier", "primary" );
    level._ID28543 _ID42407::_ID32353( 0 );
    thread maps\af_caves_code::_ID51663();
    _ID42237::_ID14402( "location_change_control_room" );
    _ID42237::_ID14402( "obj_escape_complete" );
    wait 1;
    thread maps\af_caves_backhalf::_ID54646();
}

_ID52119()
{
    var_0 = 0;
    _func_1E3( var_0, "active", &"AF_CAVES_LOCATE_SHEPHERD" );
    var_0 = 1;
    var_1 = level._ID28543._ID740;
    _func_1E3( var_0, "active", &"AF_CAVES_FOLLOW_PRICE", var_1 );
    _func_1E7( var_0, 1 );
    _func_114( var_0, "current" );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "price_hooksup" );
    wait 0.5;
    _func_114( var_0, "done" );
    thread _unknown_0F28();
}

_ID44425()
{
    var_0 = 1;
    _func_1E3( var_0, "active", &"AF_CAVES_OBJ_RAPPEL", ( 0, 0, 0 ) );
    _func_1E9( var_0 );
    _func_1E8( var_0, ( 3006, 11756, -1834 ) );
    _func_0C7( var_0, &"AF_CAVES_HOOKUP" );
    _ID42237::_ID14413( "end_of_rappel_scene" );
    wait 1;
    _func_114( var_0, "done" );
}

_ID52840()
{
    _ID42237::_ID14413( "barracks_follow_price" );
    var_0 = 2;
    _func_1E3( var_0, "active", &"AF_CAVES_FOLLOW_PRICE", level._ID28543._ID740 );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID28543 );
    _func_1E7( var_0, 1 );
    _ID42237::_ID14413( "steamroom_ambush_started" );
    _func_115( var_0, &"AF_CAVES_SUPPORT_PRICE" );
    _func_0C7( var_0, &"AF_CAVES_OBJ_MARKER_SUPPORT" );
    _func_1E5( var_0, "current" );
    var_1 = _func_039( "objectiveFadeTooFar" );
    _func_0DB( "objectiveFadeTooFar", 5 );
    _ID42237::_ID14413( "steamroom_ambush_done" );
    _func_115( var_0, &"AF_CAVES_FOLLOW_PRICE" );
    _func_0C7( var_0, "" );
    _func_1E5( var_0, "current" );
    _func_0DB( "objectiveFadeTooFar", var_1 );
    _ID42237::_ID14413( "shephered_ledge_dialogue_starting" );
    _func_114( var_0, "done" );
}

_ID50440()
{
    var_0 = 4;
    var_1 = level._ID28543._ID740;
    _func_1E3( var_0, "active", &"AF_CAVES_REGROUP_WITH_PRICE", var_1 );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "level_exit" );
    _func_1E5( var_0, "done" );
}

_ID52685()
{
    thread maps\af_caves_code::_ID53872();
    thread _unknown_10AE();
    thread _unknown_10AC();
    thread maps\af_caves_code::_ID51368();
    thread _unknown_10ED();
    thread _unknown_111E();
    thread _unknown_115B();
}

_ID52079()
{
    _ID42407::_ID38929( "trig_intro_past_starting_area" );
    _ID42237::_ID14402( "intro_player_past_starting_area" );
}

_ID20307()
{
    var_0 = _ID42237::_ID16638( "player_intro_spot", "targetname" );
    level._ID794 maps\af_caves_code::_ID45599( var_0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8121( 0 );
    level._ID794 _meth_8189( "prone" );
    level._ID794 _meth_8328();
    wait 0.2;
    level._ID794 _meth_8334( 1 );
    level._ID794._ID43222 = level._ID794._ID740;
    _ID42237::_ID14413( "player_intro_unlock" );
    level._ID794 _meth_8334( 0 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8121( 1 );
    level._ID794 _meth_8329();
    thread _unknown_1168();
    _ID42407::_ID27683( 90 );
}

_ID47196()
{
    var_0 = 225;

    while ( _func_0F5( level._ID794._ID740, level._ID794._ID43222 ) < var_0 )
        wait 0.05;

    _ID42237::_ID14402( "intro_player_moved" );
}

_ID20225()
{
    _ID42237::_ID14413( "intro_dialogue_start" );
    _ID42407::_ID28864( "afcaves_nkl_waitforyou" );
    _ID42407::_ID28864( "afcaves_pri_dontbother" );
    thread _unknown_11E3();
    _ID42407::_ID28864( "afcaves_nkl_goodluck" );
    _ID42237::_ID14402( "price_rise_up" );
    _ID42237::_ID14413( "intro_faded_in" );
    thread _unknown_11FB();
    _ID42237::_ID14402( "introscreen_feed_lines" );
    wait 9.5;
    _ID42237::_ID14402( "introscreen_feed_lines_done" );

    if ( !_ID42237::_ID14385( "intro_player_moved" ) )
        _ID42407::_ID28864( "afcaves_pri_moveout" );
}

_ID46629()
{
    _ID42237::_ID14413( "player_intro_unlock" );
    thread _unknown_1155();
}

_ID53273()
{
    thread _ID53206::_ID45800();
    wait 0.25;
    _ID42237::_ID14402( "intro_fade_in" );
}

_ID45929()
{
    level._ID28543 _meth_81AF( 1 );
    var_0 = _func_0C8( "price_get_up", "targetname" );
    var_1 = _ID42407::_ID35028( "tarp", var_0._ID740 );
    var_2[0] = level._ID28543;
    var_2[1] = var_1;
    var_0 _ID42259::_ID3016( var_2, "rise_up" );
    _ID42237::_ID14413( "price_rise_up" );
    _ID42407::_ID10226( 4, _ID42237::_ID14402, "player_intro_unlock" );
    level._ID28543 thread _ID42407::_ID27081( "scn_price_rise_up" );
    var_0 _ID42259::_ID3099( var_2, "rise_up" );
    level._ID28543._ID24424 = 1.2;
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543._ID452 = 128;
    var_3 = _func_0C8( "node_intro_price_postgetup", "targetname" );
    level._ID28543 _meth_81B1( var_3 );

    if ( !_ID42237::_ID14385( "price_goto_hillside" ) )
        level._ID28543 waittill( "goal" );

    _ID42237::_ID14402( "intro_price_reached_post_getup_node" );
}

_ID44921()
{
    level._ID28543 _meth_81AF( 1 );
    level._ID28543.noslopeanimation = 1;
    level._ID28543 _meth_8583();
    maps\af_caves_code::_ID53802();
    _unknown_1371();
    var_0 = _func_1A1( "trig_script_color_allies_r5", "targetname" );
    var_0 _ID42237::_ID38863();
    thread _unknown_146D();
    thread _unknown_139A();
    thread _unknown_13B5();
    thread _unknown_14AF();
    thread _unknown_14EB();
    thread _unknown_1522();
    thread _unknown_1539();
    thread _unknown_1553();
    thread _unknown_1582();
    thread _unknown_159F();
    thread _unknown_15DD();
    thread _unknown_1688();
    thread _unknown_1788();
    thread _unknown_18E0();
}

_ID45944()
{
    var_0 = [];
    var_0["ai_eventDistBullet"]["hidden"] = 256;
    var_0["ai_eventDistNewEnemy"]["spotted"] = 750;
    var_0["ai_eventDistNewEnemy"]["hidden"] = 512;
    thread _ID42389::_ID36234( var_0 );
    level._ID8754 = 1;
}

_ID48792()
{
    level thread maps\af_caves_code::_ID49494( "intro_ambient_canyonroad_convoy_vehicle", "player_hooked_up", 12, 25 );
    level thread maps\af_caves_code::_ID49494( "intro_ambient_canyonroad_convoy_vehicle_lower", "player_hooked_up", 12, 25 );
    _ID42237::_ID14413( "road_group2_startmoving" );
    wait 5.5;
    var_0 = _ID42411::_ID35200( "air_convoy_road" );
    var_0[0] thread _ID42407::_ID27079( "scn_af_caves_air_convoy_road" );
}

_ID49582()
{
    _ID42237::_ID14413( "player_at_overlook" );
    thread _ID42407::_ID4439();
}

_ID44342()
{
    var_0 = [];
    var_0["found"] = ::_unknown_14BC;
    _ID42389::_ID36258( var_0 );
    var_1 = [];
    var_1["explode"] = ::_unknown_14CC;
    var_1["heard_scream"] = ::_unknown_14D4;
    var_1["doFlashBanged"] = ::_unknown_14DC;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _ID42385::_ID36309( var_4, var_3 );
    }

    var_clear_2

    if ( _func_02F( self._ID31388 ) && _func_125( self._ID31388, "group2" ) )
        thread _unknown_1502();

    if ( maps\af_caves_code::_ID44422() )
        return;

    if ( _func_02F( self._ID922 ) && _func_125( self._ID922, "cellphone_anim_model" ) )
        thread _unknown_1538();

    self._ID7._ID11035 = 1;
    var_5["warning1"] = _ID42388::_ID12775;
    var_5["attack"] = ::_unknown_1580;
    _ID42389::_ID36372( var_5 );
}

_ID48704()
{
    level endon( "road_group2_alerted" );
    thread _unknown_1552();
    _ID42237::_ID41068( "death", "group2_guy_alerted" );
    _ID42237::_ID14402( "road_group2_alerted" );
}

_ID47266()
{
    self endon( "death" );

    while ( _ID42407::_ID13019( "_stealth_normal" ) )
        wait 0.05;

    self notify( "group2_guy_alerted" );
}

_ID51908( var_0 )
{
    self._ID377 = level._ID794;
    wait 1;
    self notify( "enemy_awareness_reaction" );
    waittillframeend;
}

cellphone_monitor()
{
    level endon( "road_patrol_cleared" );
    level endon( "enemy_awareness_reaction" );
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0 _meth_8053( self, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_0 _meth_80B8( _ID42407::_ID16425( "com_cellphone_on_anim" ) );
    self._ID26608 = var_0;
    thread _unknown_161B( var_0 );

    for (;;)
    {
        level waittill( "detach_phone_notify" );
        var_0 _meth_8055();
        var_0 _meth_805A();
        level waittill( "attach_phone_notify" );
        var_0 _meth_8059();
        var_0 _meth_8053( self, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    }
}

remove_phone( var_0 )
{
    _ID42237::_ID41068( "death", "enemy_awareness_reaction" );

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();
}

_ID46061()
{
    self._ID764 = 200;
    thread _ID42407::_ID10896();
    thread _ID42386::_ID12797( self._ID740 );
    self._ID452 = 1024;
    var_0 = 256;
    var_1 = 2;
    self endon( "death" );
    _ID42407::_ID13025( "_stealth_override_goalpos" );

    while ( _func_02F( self._ID322 ) && _ID42407::_ID13019( "_stealth_enabled" ) )
    {
        var_2 = self._ID452 - 150;

        if ( var_2 < var_0 )
            var_2 = var_0;

        self._ID452 = var_2;
        self _meth_81B2( self._ID322._ID740 );
        wait(var_1);
    }
}

_ID52641()
{
    var_0["attack"] = ::_unknown_16F3;
    _ID42389::_ID36369( var_0 );
    _ID42389::_ID36353( ::_unknown_1713 );
}

_ID45532()
{
    self endon( "death" );
    _ID42407::_ID7892();
    wait 5;
    self._ID452 = 6800;
    self _meth_81B3( level._ID794 );
}

_ID52039()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    wait 4;
}

_ID49552()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    wait 3;
}

_ID47775()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    wait 5;
}

_ID45021()
{
    _ID42237::_ID14413( "intro_price_reached_post_getup_node" );
    _ID42237::_ID14413( "price_goto_hillside" );
    thread _unknown_17A5( "player_moving_to_road" );
    thread _unknown_17AD( "_stealth_spotted" );
    thread _unknown_17B6( "player_shot_someone_in_group1" );
    level._ID28543 _meth_81D6( "crouch" );
    var_0 = _func_0C8( "intro_price_hold_up_node", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "intro_stop" );
    _ID42237::_ID14402( "price_at_hillside" );

    if ( _ID42237::_ID14385( "price_abort_intro_stop" ) )
        return;

    var_0 _ID42259::_ID3111( level._ID28543, "intro_stop" );
    level._ID28543._ID46327 = level._ID28543._ID452;
    level._ID28543._ID452 = 96;
    level._ID28543 _meth_81AF( 1 );
    level._ID28543 _meth_81B2( level._ID28543._ID740 );
}

_ID54166( var_0 )
{
    level endon( "price_abort_intro_stop" );
    level waittill( var_0 );
    _ID42237::_ID14402( "price_abort_intro_stop" );
}

_ID52715()
{
    level endon( "player_moving_to_road" );
    level endon( "_stealth_spotted" );
    level endon( "player_shot_someone_in_group1" );
    level endon( "road_patrol_group1" );
    thread _unknown_187B();
    level endon( "hillside_dialogue_stop" );
    _ID42237::_ID14413( "price_goto_hillside" );
    _ID42407::_ID28864( "pri_thermalspike" );
    _ID42234::_ID13611( "birds_fly_intro" );
    _ID42237::_ID14413( "player_at_overlook" );
    _ID42407::_ID28864( "pri_holdup" );
    _ID42407::_ID28864( "pri_enemypatrol" );
    _ID42407::_ID28864( "afcaves_pri_holdyourfire" );
    _ID42407::_ID28864( "afcaves_pri_intelwassolid" );
    _ID42237::_ID14402( "road_group2_startmoving" );
    wait 3.5;
    _ID42407::_ID28864( "afcaves_pri_splittingup" );
    wait 1.5;
    _ID42407::_ID28864( "afcaves_pri_decryptioncode" );
    _ID42237::_ID14402( "price_hillside_dialogue_done" );
}

_ID51162()
{
    level endon( "price_hillside_dialogue_done" );

    while ( _ID42389::_ID36337() )
        wait 0.05;

    level notify( "hillside_dialogue_stop" );
}

_ID45531()
{
    level endon( "road_player_broke_stealth" );
    _ID42237::_ID14413( "price_hillside_dialogue_done" );
    _unknown_1940();
    _ID42407::_ID28864( "afcaves_schq_goahead" );
    _unknown_194C();
    _ID42407::_ID28864( "afcaves_sc1_riverbedclear" );
    _unknown_1958();
    _ID42407::_ID28864( "afcaves_schq_bravo" );
    _unknown_1964();
    _ID42407::_ID28864( "afcaves_sc3_sandstorm" );
    _unknown_1970();
    _ID42407::_ID28864( "afcaves_schq_zulu" );
    _unknown_197C();
    _ID42407::_ID28864( "afcaves_sc1_startingpatrol" );
    _ID42237::_ID14402( "road_enemy_wiretap_dialogue_done" );
}

_ID44940()
{
    for (;;)
    {
        var_0 = _func_03D();
        _ID42237::_ID14426( "scripted_dialogue" );
        _ID42237::_ID14426( "stealth_kill_dialogue_running" );
        _ID42237::_ID14426( "_stealth_spotted" );
        _ID42237::_ID14426( "_stealth_event" );

        if ( _func_03D() > var_0 )
        {
            wait 5;
            continue;
        }

        break;
    }
}

_ID45327()
{
    _ID42237::_ID14413( "player_at_overlook" );
    var_0 = _ID42407::_ID15543( "road_patrol_enemies_group1" );
    var_1 = _ID42407::_ID15543( "road_patrol_enemies_group2" );
    var_2 = _ID42237::_ID3296( var_0, var_1 );

    while ( maps\af_caves_code::_ID46278( var_2 ) )
        wait 0.05;

    _ID42237::_ID14402( "road_patrol_humans_cleared" );
}

_ID44004()
{
    level endon( "player_hooked_up" );
    _ID42237::_ID14413( "_stealth_spotted" );
    thread _unknown_1D1C();
    thread _unknown_1A46();
    _ID42237::_ID14402( "road_player_broke_stealth" );
}

_ID43374()
{
    level endon( "player_hooked_up" );
    _ID42237::_ID14413( "_stealth_spotted" );
    var_0 = _func_1A1( "sbmodel_hillside_brush_aiclip", "targetname" );
    var_0 _ID42407::_ID18512();
}

_ID46992()
{
    level endon( "road_player_broke_stealth" );
    _ID42237::_ID14413( "player_slid_downhill" );
    var_0 = _func_1A1( "vol_player_slidedown_axis_stealthbreak", "targetname" );
    var_1 = var_0 _ID42407::_ID15547( "axis" );
    var_1 = _ID42407::_ID3328( var_1 );
    var_1 = _ID42237::_ID3332( var_1 );
    var_1 = _ID42237::_ID15566( level._ID794._ID740, var_1 );

    if ( !var_1.size )
        return;

    var_2 = undefined;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_1A7( var_4 ) )
        {
            var_2 = var_4;
            break;
        }
    }

    var_clear_2
    var_clear_0

    if ( !_func_02F( var_2 ) )
        return;

    var_2._ID377 = level._ID794;
    wait 2;

    if ( _func_1A7( var_2 ) )
        var_2._ID377 = undefined;
}

_ID50358()
{
    level endon( "road_patrol_cleared" );
    level endon( "road_patrol_humans_cleared" );
    var_0 = [];
    var_0[0] = "afcaves_pri_ontousgoloud";
    var_0[1] = "afcaves_pri_compromisedgoloud";

    while ( !_ID42237::_ID14385( "road_patrol_cleared" ) )
    {
        _ID42237::_ID14413( "_stealth_spotted" );

        if ( _ID42237::_ID14385( "road_patrol_humans_cleared" ) )
            return;

        _ID42407::_ID28864( _ID42237::_ID28945( var_0 ) );
        _ID42237::_ID14426( "_stealth_spotted" );
    }
}

_ID53634()
{
    _ID42237::_ID14413( "price_at_hillside" );
    _ID42237::_ID14413( "road_player_broke_stealth" );
    _ID42407::_ID4917( "allies" );
    wait 0.5;
    level._ID28543 _meth_81AF( 0 );
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID628 = level._ID45172;
    level._ID28543 _ID42407::_ID32353( 1 );
    thread _unknown_1BEA();
    level._ID28543 thread maps\af_caves_code::_ID52482( "scar_h_thermal_silencer" );

    if ( _func_02F( level._ID28543._ID46327 ) )
    {
        while ( level._ID28543._ID1363 > 0 )
            wait 0.05;

        level._ID28543._ID452 = level._ID28543._ID46327;
        level._ID28543._ID46327 = undefined;
    }
}

_ID43331()
{
    var_0 = level._ID28543._ID1204;
    level._ID28543._ID1204 = -350;
    var_1 = level._ID28543._ID4867;
    level._ID28543._ID4867 = 100;

    while ( !_ID42389::_ID36337() )
        wait 0.05;

    level._ID28543._ID1204 = var_0;
    level._ID28543._ID4867 = var_1;
}

_ID45712()
{
    level endon( "_stealth_spotted" );
    _ID42237::_ID14413( "road_group2_startmoving" );
    var_0 = _ID42407::_ID15543( "road_patrol_enemies_group2" );
    _ID42237::_ID3350( var_0, ::_unknown_1C9E, var_0 );
}

_ID53444()
{
    _ID42259::_ID3029( self, "patrol_turn180" );
}

waituntilalertedforik()
{
    self endon( "death" );
    level _ID42237::_ID41068( "_stealth_spotted", "road_group2_alerted" );
    self _meth_8582();
}

_ID52552( var_0 )
{
    self endon( "death" );
    self endon( "_stealth_spotted" );
    level._ID45236 = 0;
    thread _unknown_1D4F();
    level thread _unknown_1D65( var_0 );

    if ( !maps\af_caves_code::_ID44422() )
    {
        self _meth_8583();
        thread _unknown_1CE4();

        if ( !_func_02F( self._ID31394 ) )
        {
            wait(_func_0BA( 2, 3.5 ));
            self notify( "end_patrol" );
            _unknown_1CFA();
        }
        else
        {
            self notify( "end_patrol" );
            wait 0.05;
        }

        thread _ID42338::_ID26367( self._ID922 );
        thread _unknown_1D8F();
    }
    else if ( self._ID31394 == 2 )
    {
        self._ID31394 = -1;
        var_1 = undefined;
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( !var_3 maps\af_caves_code::_ID44422() && _func_02F( var_3._ID31394 ) && var_3._ID31394 == 2 )
            {
                var_1 = var_3;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( !_func_02F( var_1 ) )
            return;

        var_1 endon( "death" );
        var_5 = _ID42237::_ID16638( "relink_pet", "script_noteworthy" );
        var_5 waittill( "trigger" );
        self._ID31394 = 2;
        var_1 _ID42338::_ID22426();
    }

    var_6 = _func_1A1( "trig_road_group2_nearendpath", "targetname" );
    var_7 = 2;
    var_8 = 0;

    while ( var_8 < var_7 )
    {
        var_6 waittill( "trigger",  var_9  );

        if ( var_9 == self )
        {
            var_8++;

            while ( self _meth_80B0( var_6 ) )
                wait 0.1;
        }
    }

    if ( !_ID42237::_ID14385( "road_group2_coming_back" ) )
        _ID42237::_ID14402( "road_group2_coming_back" );

    thread _unknown_1E42();
    _ID42407::_ID38929( "trig_road_group2_midpath" );

    if ( !_ID42237::_ID14385( "road_group2_lastchance" ) )
        _ID42237::_ID14402( "road_group2_lastchance" );
}

_ID44536()
{
    self endon( "death" );

    while ( !_ID42407::_ID13019( "_stealth_found_corpse" ) )
        wait 0.1;

    self._ID377 = level._ID794;
    wait 2;
    self._ID377 = undefined;
}

_ID48030()
{
    self._ID24424 = 1.1;
    self waittill( "_stealth_spotted" );
    self._ID24424 = 1;
}

_ID48628()
{
    self endon( "death" );
    self endon( "_stealth_spotted" );
    var_0 = 500;
    var_1 = ( 2408, 13424, -1840 );

    while ( _func_0F4( self._ID740, var_1 ) < var_0 )
        wait 0.05;

    level._ID45236++;
}

_ID49277( var_0 )
{
    var_1 = var_0.size;

    while ( var_0.size > level._ID45236 )
        wait 0.05;

    _ID42237::_ID14402( "road_group2_walked_away" );
}

_ID51850()
{
    level thread _unknown_1FAB();
    level thread _unknown_1FB9();
    level endon( "_stealth_spotted" );
    _ID42237::_ID14413( "road_group2_walked_away" );
    _ID42237::_ID14413( "road_enemy_wiretap_dialogue_done" );

    while ( !_ID42389::_ID36337() )
        wait 0.1;

    thread _ID42407::_ID4439();
    level notify( "road_group1_countdown_kill_alldead_flag_stop" );
    var_0 = _ID42407::_ID15543( "road_patrol_enemies_group1" );
    var_1 = [];
    var_2 = [];
    var_3 = undefined;
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        self._ID11566 = 1;

        if ( var_5 maps\af_caves_code::_ID44422() )
        {
            var_3 = var_5;
            continue;
        }
        else if ( level._ID15361 < 2 )
            var_5 _ID42389::_ID36353( ::_unknown_1D85 );
        else
            var_5 _ID42389::_ID36353( ::_unknown_1D95 );

        if ( _func_02F( var_5._ID31388 ) )
        {
            if ( var_5._ID31388 == "leftside" )
            {
                var_1[var_1.size] = var_5;
                continue;
            }

            if ( var_5._ID31388 == "rightside" )
                var_2[var_2.size] = var_5;
        }
    }

    var_clear_2
    var_clear_0
    var_7 = var_1;
    var_8 = var_2;
    _ID42237::_ID3350( var_0, ::_unknown_20AC, var_8 );
    level thread _unknown_2087();
    var_9 = level _ID42237::_ID41075( "player_shot_someone_in_group1", "countdown_kill_dialogue_done" );
    var_10 = 0;

    if ( _func_02F( var_9 ) && var_9 == "countdown_kill_dialogue_done" )
        var_10 = 1;

    if ( _func_02F( level._ID50359 ) && !level._ID50359 )
    {
        var_11 = var_7;
        var_7 = var_8;
        var_8 = var_11;
    }

    maps\af_caves_code::_ID54041();
    level._ID28543 _meth_8172();

    while ( !_unknown_20EF( var_7 ) )
    {
        var_12 = var_7;

        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
        {
            var_5 = var_12[var_13];

            if ( !_func_1A7( var_5 ) )
            {
                wait 0.05;
                continue;
            }

            if ( !_func_1A7( level._ID28543._ID322 ) )
            {
                maps\af_caves_code::_ID52545( var_5 );
                var_5 waittill( "death" );
            }

            wait 0.05;
        }

        var_clear_1
        var_clear_0
    }

    if ( _func_1A7( var_3 ) )
        wait 1.5;

    var_14 = 1;

    if ( _func_1A7( var_3 ) )
    {
        maps\af_caves_code::_ID52545( var_3 );
        var_4 waittill( "death",  var_15  );

        if ( var_15 == level._ID28543 )
            var_14 = 0;
    }

    _ID42237::_ID14413( "road_patrol_group1" );
    wait 1;

    if ( !_ID42237::_ID14385( "road_player_broke_stealth" ) )
    {
        if ( var_10 )
            _ID42407::_ID28864( "afcaves_pri_sticktoplan" );
        else if ( !level._ID50359 )
            _ID42407::_ID28864( "afcaves_pri_closeenough" );
        else if ( var_14 )
            _ID42407::_ID28864( "afcaves_pri_justlikeoldtimes" );
        else
            _ID42407::_ID28864( "afcaves_pri_dogneutralized" );

        _ID42237::_ID14402( "road_group1_killed_without_stealthbreak" );
    }

    _ID42237::_ID14402( "group1_countdown_kill_done" );
}

_ID47550()
{
    level endon( "group1_countdown_kill_done" );
    level endon( "road_group1_countdown_kill_aborted" );
    level waittill( "_stealth_spotted" );
    _ID42237::_ID14402( "road_group1_countdown_kill_aborted" );
}

_ID47181()
{
    level endon( "group1_countdown_kill_done" );
    level endon( "road_group1_countdown_kill_alldead_flag_stop" );
    level endon( "road_group1_countdown_kill_aborted" );
    _ID42237::_ID14413( "road_patrol_group1" );
    _ID42237::_ID14402( "road_group1_countdown_kill_aborted" );
}

_ID45938()
{
    level endon( "_stealth_spotted" );
    level endon( "road_group2_alerted" );
    level endon( "player_shot_someone_in_group1" );
    _ID42237::_ID14402( "stealth_kill_dialogue_running" );
    _ID42407::_ID28864( "afcaves_pri_grouponright" );
    _ID42407::_ID28864( "afcaves_pri_twoonleft" );
    _ID42407::_ID28864( "afcaves_pri_onmymark" );
    _ID42407::_ID28864( "afcaves_pri_three" );
    _ID42407::_ID28864( "afcaves_pri_two" );
    _ID42407::_ID28864( "afcaves_pri_one" );
    _ID42407::_ID28864( "afcaves_pri_mark" );
    _ID42237::_ID14388( "stealth_kill_dialogue_running" );
    wait 1;
    level notify( "countdown_kill_dialogue_done" );
}

_ID43751( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_1A7( var_2 ) )
            return 0;
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID53425( var_0 )
{
    level endon( "player_shot_someone_in_group1" );
    self waittill( "damage",  var_2, var_2  );

    if ( var_2 == level._ID794 )
    {
        level._ID50359 = 0;

        if ( _ID42237::_ID3303( var_0, self ) )
            level._ID50359 = 1;

        level notify( "player_shot_someone_in_group1" );
    }
}

_ID47817()
{
    level endon( "road_patrol_group2" );
    level endon( "road_group2_alerted" );
    _ID42237::_ID14413( "road_group2_lastchance" );
    _ID42407::_ID28864( "afcaves_pri_findthebodies" );
}

_ID44284()
{
    _ID42237::_ID14413( "road_patrol_group1" );

    if ( !_ID42237::_ID14385( "road_group1_countdown_kill_aborted" ) )
    {
        if ( !_ID42237::_ID14385( "group1_countdown_kill_done" ) )
            _ID42237::_ID14415( "group1_countdown_kill_done", "road_group1_countdown_kill_aborted" );
    }

    while ( !_ID42389::_ID36337() )
        wait 0.05;

    if ( !_ID42237::_ID14385( "road_patrol_group2" ) && !_ID42237::_ID14385( "road_group2_alerted" ) )
    {
        thread _unknown_2339();
        wait 0.5;

        if ( !_ID42237::_ID14385( "road_patrol_group2" ) && !_ID42237::_ID14385( "road_group2_alerted" ) )
            thread _ID42407::_ID28864( "afcaves_pri_beforecomeback" );
    }

    level._ID28543 thread maps\af_caves_code::_ID52482( "scar_h_thermal_silencer" );
    maps\af_caves_code::_ID53802();
    level._ID28543 _ID42407::_ID32353( 1 );
    thread _unknown_2431();
    var_0 = _func_1A1( "trig_script_color_allies_r5", "targetname" );
    var_0 _ID42237::_ID38865();
    var_0 notify( "trigger" );
    var_1 = _func_1A1( "price_slide_animent", "targetname" );
    level._ID28543._ID452 = 24;
    var_1 _ID42259::_ID3074( level._ID28543, "price_slide" );
    var_2 = _func_0C8( "price_sliding_node", "targetname" );
    var_3 = _func_22D( level._ID28543._ID740, var_2._ID740 ) < 576;

    if ( var_3 )
    {
        var_1 _ID42259::_ID3111( level._ID28543, "price_slide" );
        level._ID28543 notify( "stop_slide_fx" );
    }

    if ( !_ID42237::_ID14385( "road_group2_alerted" ) )
    {
        level._ID28543 _ID42407::_ID10871();
        level._ID28543._ID452 = 256;
    }

    if ( var_3 )
    {
        var_4 = _func_0C8( "node_price_roadspot_1", "targetname" );
        level._ID28543 _meth_81B1( var_4 );
        level._ID28543 waittill( "goal" );
    }

    if ( !_ID42237::_ID14385( "player_slid_downhill" ) && !_ID42237::_ID14385( "road_patrol_group2" ) )
        thread _unknown_24C7();

    _ID42237::_ID14413( "player_slid_downhill" );
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );

    if ( !_ID42237::_ID14385( "road_group2_alerted" ) )
        thread _ID42407::_ID28864( "afcaves_pri_taketheothers" );

    level._ID28543 _ID42407::_ID10871();
    level._ID28543._ID452 = 64;
    var_5 = _func_0C8( "node_price_roadspot_2", "targetname" );
    level._ID28543 _meth_81B1( var_5 );
    level._ID28543 waittill( "goal" );
    level._ID28543 _ID42407::_ID32353( 0 );
    _ID42237::_ID14402( "price_done_moving_to_road" );

    if ( !_ID42237::_ID14385( "road_group2_alerted" ) )
        thread _unknown_2562();
}

_ID46099()
{
    level endon( "player_slid_downhill" );
    level endon( "road_group2_coming_back" );
    level endon( "road_group2_alerted" );
    level endon( "road_patrol_group2" );
    var_0 = [];
    var_0[var_0.size] = "afcaves_pri_downhere";
    var_0[var_0.size] = "afcaves_pri_groupsback";

    while ( !_ID42237::_ID14385( "player_slid_downhill" ) )
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            wait 10;

            if ( !_ID42237::_ID14385( "player_slid_downhill" ) )
                _ID42407::_ID28864( var_2 );
        }

        var_clear_2
        var_clear_0
    }
}

_ID45163()
{
    if ( _func_02F( level._ID53210 ) )
        return;
    else
        level._ID53210 = 1;

    var_0 = _func_1A1( "price_hillside_clip", "targetname" );
    var_0 _meth_805F();
    var_0 _meth_82C9();
}

_ID53951()
{
    level endon( "_stealth_spotted" );
    var_0 = _ID42407::_ID15543( "road_patrol_enemies_group2" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_1A7( var_3 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    thread _ID42407::_ID28864( "afcaves_pri_taketheshot" );
    thread _unknown_2670( var_0 );
    var_5 = "";

    if ( !_ID42237::_ID14385( "road_group2_coming_back" ) )
        var_5 = level _ID42237::_ID41075( "player_shot_someone_in_group1", "road_group2_coming_back" );

    if ( var_5 == "road_group2_coming_back" || _ID42237::_ID14385( "road_group2_coming_back" ) )
    {
        level notify( "price_shoot_abort" );
        thread _unknown_2699();
    }
    else
        return;

    var_5 = level _ID42237::_ID41075( "price_repositioned", "road_group2_alerted" );

    if ( var_5 == "price_repositioned" )
    {
        thread _ID42407::_ID28864( "afcaves_pri_readytoshoot" );
        thread _unknown_26CF( var_0 );
    }
    else
        return;
}

_ID44377()
{
    thread _ID42407::_ID28864( "afcaves_pri_repositioning" );
    level._ID28543._ID452 = 96;
    var_0 = _func_0C8( "node_price_roadspot_1", "targetname" );
    level._ID28543 _meth_81B1( var_0 );
    level._ID28543 waittill( "goal" );
    level notify( "price_repositioned" );
}

_ID47628( var_0 )
{
    level endon( "price_shoot_abort" );
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_1A7( var_3 ) && !var_3 maps\af_caves_code::_ID44422() )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = var_0;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];

        if ( _func_1A7( var_3 ) && !_ID42237::_ID3303( var_1, var_3 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_1
    var_clear_0
    var_0 = var_1;
    _ID42237::_ID3350( var_0, ::_unknown_27AF );
    level waittill( "player_shot_someone_in_group2",  var_7  );
    maps\af_caves_code::_ID54041();
    level._ID28543 _meth_8172();

    while ( !_unknown_2662( var_0 ) )
    {
        var_8 = var_0;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( !_func_1A7( var_9 ) )
            {
                wait 0.05;
                continue;
            }

            if ( !_func_1A7( level._ID28543._ID322 ) )
            {
                maps\af_caves_code::_ID52545( var_9 );
                var_9 waittill( "death" );
            }

            wait 0.5;
        }

        var_clear_2
        var_clear_0
    }
}

_ID48227()
{
    level endon( "player_shot_someone_in_group2" );
    self waittill( "damage",  var_1, var_1  );

    if ( var_1 == level._ID794 )
        level notify( "player_shot_someone_in_group2",  self  );
}

_ID51008()
{
    level endon( "road_uav_inbound" );
    _ID42237::_ID14413( "road_patrol_group1" );
    _ID42237::_ID14413( "road_patrol_group2" );
    _ID42237::_ID14402( "road_patrol_cleared" );
    level._ID28543.noslopeanimation = undefined;
    level._ID28543 _meth_8582();
    maps\af_caves_code::_ID53802();
    wait 1.25;

    if ( !_ID42237::_ID14385( "road_player_broke_stealth" ) || _ID42237::_ID14385( "road_player_broke_stealth" ) && _ID42237::_ID14385( "road_group1_killed_without_stealthbreak" ) )
        thread _ID42407::_ID28864( "afcaves_pri_muchtime" );
    else if ( !_ID42237::_ID14385( "road_group1_killed_without_stealthbreak" ) )
        _ID42407::_ID28864( "afcaves_pri_nomistakes" );

    _ID42237::_ID14413( "price_done_moving_to_road" );
    _ID42237::_ID14402( "rappel_threads" );
}

_ID50495()
{
    _ID42237::_ID14413( "price_dialogue_thermalspike" );
    _ID42407::_ID28864( "pri_thermalspike" );
}

_ID54252()
{
    _ID42237::_ID14413( "rappel_threads" );
    thread _unknown_293E();
    thread _unknown_2993();
    thread _unknown_2A07();
    thread _unknown_2B1E();
    thread _unknown_29A4();
    thread _unknown_2AD2();
    thread _unknown_298A();
    thread _unknown_2B89();
    thread _unknown_294A();
    thread _unknown_2AFF();
    thread _unknown_2B63();
    thread _unknown_2B85();
    thread maps\af_caves_code::_ID51494();
}

_ID50156()
{
    _ID42237::_ID14413( "player_hooking_up" );
    var_0 = _ID42411::_ID35200( "veh_rappel_zodiac" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID3189 = "zodiac";
        var_2 _ID42407::_ID3428();
        var_2 _meth_8155( var_2 _ID42407::_ID16120( "bounce" ) );
    }

    var_clear_2
    var_clear_0
}

_ID43983()
{
    var_0 = _func_1A2( "guard_weapons", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80C7();
        var_2 _meth_805A();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_killing_guard" );
    wait 1.75;
    var_0 = _func_1A2( "guard_weapons", "targetname" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_8059();
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "end_of_rappel_scene" );
    wait 1;
    var_0 = _func_1A2( "guard_weapons", "targetname" );
    var_6 = var_0;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_2 = var_6[var_7];
        var_2 _meth_80C6();
    }

    var_clear_1
    var_clear_0
}

_ID50192()
{
    _ID42237::_ID14413( "price_hooksup" );
    wait 0.5;
    var_0 = _func_1A1( "player_rappel_trigger", "targetname" );
    var_0 thread _ID42237::_ID44574( level._ID794, &"AF_CAVES_RAPPEL_HINT", &"AF_CAVES_RAPPEL_HINT_PC", "trigger" );

    for (;;)
    {
        var_0 waittill( "trigger" );

        if ( level._ID794 _meth_8135() )
            continue;

        if ( level._ID794 _meth_8342() )
            continue;

        break;
    }

    _ID42475::_ID34575( "start_plr_rappel_sequence" );
    var_0 _meth_80B7();
    maps\af_caves_code::_ID49114();
}

_ID44408()
{
    _ID42237::_ID14413( "rappel_end" );
}

_ID48370()
{
    level._ID28543 _meth_81D6( "stand" );
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID43307 = _func_1A1( "rappel_animent", "targetname" );
    level thread _unknown_2B73( level._ID28543._ID43307 );
    level._ID28543._ID43307 _ID42259::_ID3074( level._ID28543, "pri_rappel_setup" );
    level._ID28543._ID43307 _ID42259::_ID3111( level._ID28543, "pri_rappel_setup" );

    if ( !_ID42237::_ID14385( "player_hooking_up" ) )
    {
        level._ID28543._ID43307 thread _ID42259::_ID3044( level._ID28543, "pri_rappel_idle" );
        level._ID28543._ID43307 thread _ID42259::_ID3044( level._ID47610, "pri_rappel_idle" );
    }
}

_ID47241( var_0 )
{
    level._ID47610 = _ID42407::_ID35028( "rope_price", level._ID28543._ID43307._ID740, level._ID28543._ID43307._ID65 );
    level._ID28543._ID43307 thread _ID42259::_ID3111( level._ID47610, "rope_hookup" );
    _ID42237::_ID14402( "price_hooksup" );
}

_ID52339( var_0 )
{
    _ID42237::_ID14413( "player_hooking_up" );
    thread _unknown_2C24( var_0 );
    level endon( "player_killing_guard" );
    level._ID28543 _ID42407::_ID32353( 1 );
    level._ID28543 _ID42407::_ID32353( 1 );
    level._ID47610 _meth_80B7();
    level._ID47610 = _ID42407::_ID35028( "rappel_rope_price", level._ID28543._ID43307._ID740 );
    var_1[0] = level._ID28543;
    var_1[1] = level._ID47610;
    var_0 _ID42407::_ID3136();
    var_0 _ID42259::_ID3099( var_1, "pri_rappel_jump" );
    var_0 thread _ID42259::_ID3040( var_1, "pri_hanging_idle", "stop_hang_idle" );
}

_ID46908( var_0 )
{
    _ID42237::_ID14413( "player_killing_guard" );
    wait 1;
    var_0 notify( "stop_hang_idle" );
    var_0 _ID42407::_ID3136();
    level._ID28543 maps\af_caves_code::_ID48428( "weapon_parabolic_knife", "TAG_INHAND" );
    var_0 thread _ID42259::_ID3111( level._ID28543, "pri_rappel_kill" );
}

_ID48672()
{
    _ID42237::_ID14413( "rappel_end" );
    level._ID794 _meth_8329();
    var_0 = 8;
    level._ID794 _meth_80A9( 0.5, 0.2, 0.2, var_0, var_0, var_0, var_0 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    wait 4;
    _ID42407::_ID11085( "rappel_melee" );
}

_ID49985()
{
    self endon( "death" );
    self._ID4912 = 0;
    _ID42407::_ID32352( 1 );
    _ID42407::_ID32353( 1 );

    if ( self._ID922 == "rappel_guard_1" )
    {
        self _meth_80B8( "body_shadow_co_smg_takedown" );
        _ID42226::_ID32651( "head_shadow_co_c_takedown" );
        _ID42407::_ID14803( "kriss_reflex", "primary" );
    }
    else if ( self._ID922 == "rappel_guard_2" )
    {
        self _meth_80B8( "body_shadow_co_assault_takedown" );
        _ID42226::_ID32651( "head_shadow_co_b_takedown" );
    }
}

_ID52494()
{
    level endon( "player_killing_guard" );
    var_0 = _func_1A1( "flick_animent", "targetname" );
    self._ID3189 = "guard_2";
    wait 2.75;
    var_0 _ID42259::_ID3111( self, "flick" );
    var_0 thread _ID42259::_ID3044( self, "guardB_idle", "stop_guardB_idle" );
}

_ID48951()
{
    var_0 = _func_1A1( "rappel_animent", "targetname" );
    self._ID3189 = "guard_2";
    _ID42237::_ID14413( "player_killing_guard" );
    wait 1;
    thread _ID42407::_ID17509();
    var_0 _ID42259::_ID3111( self, "guard_2_death" );
    self._ID7._ID24881 = 1;
    self._ID49 = 1;
    self._ID287 = 1;
    _ID45456::_ID54623( self );
    self _meth_8058();
}

_ID49074()
{
    level endon( "player_killing_guard" );
    var_0 = _func_1A1( "flick_animent", "targetname" );
    self._ID3189 = "guard_2";
    _ID42237::_ID14413( "rappel_end" );
    _ID42237::_ID14413( "rappel_guards_react" );
    var_0 notify( "stop_guardB_idle" );
    var_0 thread _ID42259::_ID3111( self, "guardB_react" );
}

_ID49978()
{
    level endon( "player_killing_guard" );
    level.guard1 = self;
    var_0 = _func_1A1( "players_rappel_guard", "targetname" );
    self._ID3189 = "guard_1";
    var_0 thread _ID42259::_ID3044( self, "guardA_idle", "stop_guardA_idle" );
    _ID42237::_ID14413( "rappel_end" );
    wait 7.2;
    _ID42234::_ID13611( "rappel_disturbance" );
    wait 0.5;
    _ID42237::_ID14402( "rappel_guards_react" );
    var_0 notify( "stop_guardA_idle" );
    var_0 thread _ID42259::_ID3111( self, "guardA_react" );
    wait 2;
    thread _ID42407::_ID18638();
    level._ID794 _meth_80F3( 0 );
    level._ID794 _meth_813B( 0 );
    _func_1C8( self._ID1302, self _meth_818C( "tag_flash" ), level._ID794._ID740 + ( 0, 0, 64 ) );
    wait 0.2;
    _func_1C8( self._ID1302, self _meth_818C( "tag_flash" ), level._ID794._ID740 + ( 0, 0, 64 ) );
    wait 0.2;
    _func_1C8( self._ID1302, self _meth_818C( "tag_flash" ), level._ID794._ID740 + ( 0, 0, 64 ) );
    wait 0.2;
    _func_1C8( self._ID1302, self _meth_818C( "tag_flash" ), level._ID794._ID740 + ( 0, 0, 64 ) );
    level._ID794 _meth_8058();
    _ID42237::_ID14402( "player_failed_rappel" );
}

_ID50415()
{
    _ID42237::_ID14413( "price_hooksup" );
    wait 0.5;
    var_0 = _func_1A1( "rappel_hookup", "targetname" );
    var_0 _meth_805A();
    var_1 = _func_1A1( "rappel_hookup_glowing", "targetname" );
    var_1 _meth_8059();
    _ID42237::_ID14413( "player_hooking_up" );
    var_0 = _func_1A1( "rappel_hookup", "targetname" );
    var_0 _meth_8059();
    var_1 = _func_1A1( "rappel_hookup_glowing", "targetname" );
    var_1 _meth_805A();
}

_ID48249()
{
    _ID42237::_ID14413( "pri_hook_up" );
    _ID42407::_ID14543( "axis" );
    _ID42407::_ID28864( "pri_hookup" );
    thread _ID42407::_ID28864( "afcaves_schq_d4whatsyourstatus" );
    _ID42237::_ID14413( "player_hooking_up" );
    thread _ID42407::_ID28864( "afcaves_schq_d4doyoucopy" );
    wait 5.5;
    thread _ID42407::_ID4422( "rappeling" );
    _ID42407::_ID28868( "pri_go" );
    thread _ID42407::_ID28864( "afcaves_schq_badtransmitter" );
    level._ID28543 thread _ID42407::_ID27079( "scn_afcaves_rappel_start_npc" );
    wait 5.3;
    _ID42407::_ID28864( "pri_2inthechest" );
    _ID42237::_ID14413( "rappel_end" );

    if ( !_ID42237::_ID14385( "player_killing_guard" ) )
    {
        var_0 = _func_03D() + maps\af_caves_code::_ID47906( 4 );

        while ( _func_03D() < var_0 && !_ID42237::_ID14385( "player_killing_guard" ) )
            wait 0.05;
    }

    if ( !_ID42237::_ID14385( "player_killing_guard" ) )
        _ID42407::_ID28864( "pri_doit" );
}

_ID49897()
{
    _ID42237::_ID14413( "price_hooksup" );
    level endon( "player_hooking_up" );

    while ( !_ID42237::_ID14385( "player_hooking_up" ) )
    {
        wait(_func_0B9( 24, 34 ));

        if ( _ID42237::_ID14385( "player_hooking_up" ) )
            break;

        _ID42407::_ID28864( "pri_soaphookup" );
        wait(_func_0B9( 20, 30 ));

        if ( _ID42237::_ID14385( "player_hooking_up" ) )
            break;

        _ID42407::_ID28864( "pri_whatstheproblem" );
        wait(_func_0B9( 20, 30 ));

        if ( _ID42237::_ID14385( "player_hooking_up" ) )
            break;

        _ID42407::_ID28864( "pri_hookupletsgo" );
    }
}

_ID51841()
{
    _ID42237::_ID14413( "player_killing_guard" );
    wait 5;
    var_0 = _func_1A1( "player_rope", "targetname" );
    var_0 _meth_8059();
    var_0 thread maps\af_caves_code::scripted_anim_props( "player_rope", "ropes" );
    level._ID47610 _meth_80B7();
    var_1 = _func_1A1( "soldier_rope", "targetname" );
    var_1 _meth_8059();
    var_1 thread maps\af_caves_code::scripted_anim_props( "price_rope", "ropes" );
    _ID42237::_ID14413( "steamroom_price_moveup_1" );
    var_0 _meth_805A();
    var_1 _meth_805A();
}

_ID53456()
{
    _ID42237::_ID14413( "end_of_rappel_scene" );
    level._ID10115 = 2048;
    level._ID28543 _ID42407::_ID10973();
    level._ID28543 _meth_81D6( "stand", "crouch", "prone" );
    level._ID28543 _ID42407::_ID32352( 1 );
    level._ID28543 _ID42407::_ID32353( 1 );
    level._ID28543._ID11582 = undefined;
    level._ID28543._ID4867 = 25;
}

rappel_lighting()
{
    _ID42237::_ID14413( "descending" );
    maps\af_caves_lighting::_ID51110( "af_caves_rappel" );
    _ID42237::_ID14413( "end_of_rappel_scene" );
    maps\af_caves_lighting::_ID51110( "af_caves_rappel_end" );
}

_ID48574()
{
    var_0 = _func_1A1( "backdoor_barracks_patroller_guy1", "targetname" );
    var_0 thread _ID42407::_ID1947( ::_unknown_337C );
    var_0 thread _ID42407::_ID1947( ::_unknown_331A );
    var_1 = _func_1A2( "barracks_biggroup", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_339F );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_333A );
    thread _unknown_33F7();
    var_2 = _func_1A2( "barracks_center_stander", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, maps\af_caves_code::_ID46413 );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_unknown_3360 );
    var_3 = _func_1A2( "backdoor_barracks_chess_player", "targetname" );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, maps\af_caves_code::_ID46413 );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, ::_unknown_3382 );
    var_4 = _func_1A1( "barracks_center_pacing_guy", "script_noteworthy" );
    var_4 thread _ID42407::_ID1947( ::_unknown_3398 );
    var_5 = _func_1A1( "barracks_center_standing_fridge", "targetname" );
    var_5 thread _ID42407::_ID1947( ::_unknown_33AB );
    var_6 = _func_1A2( "barracks_nearleft_guy", "targetname" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_unknown_33EB );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_unknown_33CB );
    var_7 = _func_1A2( "barracks_stairguys", "targetname" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, ::_unknown_3785 );
    _ID42237::_ID14413( "end_of_rappel_scene" );
    thread maps\af_caves_code::animatecavelight();
    _ID42407::_ID14544( "axis" );
    level._ID8754 = undefined;
    thread _unknown_345D();
    thread maps\af_caves_code::_ID53869();
    thread _unknown_2ADE();
    thread _unknown_34D3();
    thread _unknown_380A();
    thread _unknown_3922();
    thread _unknown_396F();
    thread _unknown_398D();
    thread _unknown_397B();
    thread _unknown_39E8();
    thread _unknown_39DE();
    thread maps\af_caves_code::_ID48461();
    thread maps\af_caves_code::barracks_tv_light2();
    thread maps\af_caves_code::_ID53856();
}

_ID45495()
{
    var_0 = [];
    var_0["found"] = ::_unknown_346E;
    _ID42389::_ID36258( var_0 );
    _ID42389::_ID36353( ::_unknown_347A );
    var_1 = [];
    var_1["explode"] = ::_unknown_3485;
    var_1["heard_scream"] = ::_unknown_348E;
    var_1["doFlashBanged"] = ::_unknown_3496;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _ID42385::_ID36309( var_4, var_3 );
    }

    var_clear_2
    self._ID7._ID11035 = 1;
    var_5["warning1"] = _ID42388::_ID12775;
    var_5["attack"] = ::_unknown_2D33;
    _ID42389::_ID36372( var_5 );
}

_ID46071()
{
    wait 0.5;
}

_ID43351( var_0 )
{
    self._ID377 = level._ID794;
    wait 3;
    self._ID377 = undefined;
}

_ID52883()
{
    if ( !_ID42237::_ID14385( "barracks_biggroup_gone" ) )
    {
        wait 0.1;
        self notify( "end_patrol" );
        self._ID4867 = 500;
        maps\af_caves_code::_ID43767();
    }
    else
        thread _unknown_351D();
}

_ID45313()
{
    level endon( "_stealth_spotted" );
    level endon( "steamroom_entrance" );
    self waittill( "death" );
    var_0 = _func_0DE( "axis" );
    var_0 = _ID42237::_ID15566( self._ID740, var_0 );
    var_1 = 0;
    var_2 = 3;
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_1A7( var_4 ) && _func_02F( var_4._ID1644 ) )
        {
            var_4 notify( "heard_scream",  level._ID794._ID740  );
            var_1++;

            if ( var_1 >= var_2 )
                break;
        }
    }

    var_clear_2
    var_clear_0
}

_ID43700()
{
    _ID42407::_ID27683( 90 );
    level._ID28543 _ID42407::_ID8925( "on" );
    level._ID28543._ID24424 = 1.2;
    level._ID28543 _meth_81AF( 1 );
    level._ID28543._ID764 = 0;
    level._ID28543 _ID42407::_ID10871();
}

_ID49308()
{
    self._ID24424 = 1;
    self._ID287 = 1;
    level._ID52637 = self;
    thread _unknown_3757();
    thread _unknown_37C9();
}

_ID43996()
{
    self._ID199 = "no_cover";
    var_0 = self._ID31388;

    if ( _func_02F( var_0 ) )
    {
        if ( _func_125( var_0, "flashlight" ) )
            thread maps\af_caves_code::_ID51428();

        if ( _func_125( var_0, "handsignal" ) )
            thread _unknown_365E();

        if ( _func_125( var_0, "hallway_guard" ) )
            thread _unknown_365B();
    }

    self._ID525 = 60;
    thread maps\af_caves_code::_ID52329();
    thread _unknown_365E();
}

_ID46695()
{
    self endon( "death" );
    _ID42237::_ID41068( "enemy", "_stealth_spotted", "end_scan_when_idle" );
    self._ID199 = "cover";
}

_ID49608()
{
    self endon( "death" );
    self endon( "_stealth_spotted" );
    _ID42407::_ID13024( "patroller_stop_cqbwalking" );
    _ID42407::_ID13027( "patroller_stop_cqbwalking" );
    self notify( "end_scan_when_idle" );
    _ID42407::_ID7869();
    thread _ID42407::_ID10896();
    self._ID24424 = 1;
    _ID42338::_ID32407();
}

_ID52284()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    self waittill( "goal" );
    _ID42407::_ID18074( "onme", 1, "_stealth_spotted" );
}

_ID50213()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    self waittill( "_patrol_reached_path_end" );
}

barracks_biggroup_remove_flashlight_trigger()
{
    var_0 = _func_1A1( "remove_flashlights_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( _func_02F( var_1._ID18273 ) && var_1._ID18273 )
            var_1 maps\af_caves_code::detach_flashlight();
    }
}

_ID44700()
{
    level endon( "_stealth_spotted" );
    thread _unknown_38EE();
    thread maps\af_caves_aud::aud_chess_soldiers_barracks();
    thread _ID42407::_ID28864( "pri_letsgo" );
    _ID42237::_ID14402( "barracks_follow_price" );
    thread _ID42407::_ID4439();
    thread maps\af_caves_code::_ID50935( "node_backdoor_start_price" );
    _ID42237::_ID14413( "player_entered_barracks_backdoor_hallway" );
    thread maps\af_caves_code::_ID50935( "node_backdoor_midpoint_price" );
    _ID42237::_ID14413( "backdoor_hallway_midpoint" );
    _unknown_3948();
    _func_0DB( "aim_aimAssistRangeScale", "0" );
    thread _unknown_398A();
    thread maps\af_caves_code::_ID50935( "price_easynow_node" );
    thread _ID42407::_ID1805( "spawn_patroller_guy1" );
    thread _ID42407::_ID28864( "afcaves_pri_tangoupahead" );
    _ID42237::_ID14415( "backdoor_firstpatroller_idlespot_reached", "backdoor_firstpatroller_deathflag" );

    if ( !_ID42237::_ID14385( "backdoor_firstpatroller_deathflag" ) )
    {
        _ID42237::_ID14413( "barracks_price_ready_to_dodge_biggroup" );
        _ID42237::_ID14413( "backdoor_hallway_biggroup" );
    }

    if ( _ID42237::_ID14385( "backdoor_firstpatroller_deathflag" ) )
        wait 1;

    thread _ID42407::_ID28864( "afcaves_pri_patrolcoming" );
    _ID42475::_ID34575( "aud_start_patrol_mix" );
    thread maps\af_caves_code::_ID50935( "node_barracks_price_biggroup_spotted" );

    if ( _ID42237::_ID14385( "backdoor_firstpatroller_deathflag" ) )
    {
        var_0 = _func_1A2( "barracks_biggroup", "targetname" );
        _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_399F );
        thread _ID42407::_ID28864( "afcaves_pri_guardsknow" );
    }

    thread _ID42407::_ID1805( "trig_barracks_biggroup_spawn" );
    var_1 = level._ID28543._ID24424;
    level._ID28543._ID24424 = 1;
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 _ID42237::_ID41078( 7.5, "goal" );
    wait 3.5;
    _ID42237::_ID14402( "barracks_biggroup_passingby" );

    if ( !_ID42237::_ID14385( "backdoor_firstpatroller_deathflag" ) )
    {
        _ID42407::_ID28864( "afcaves_pri_letthempass" );
        thread _unknown_3B7C();
    }

    thread _unknown_3B93();
    _ID42237::_ID14413( "barracks_biggroup_gone" );
    _ID42475::_ID34575( "aud_stop_patrol_mix" );
    _unknown_3A28();
    var_2 = 0;

    if ( !_ID42237::_ID14385( "backdoor_firstpatroller_deathflag" ) && !_ID42237::_ID14385( "backdoor_firstpatroller_left_idle_area" ) )
    {
        var_2 = 1;
        level._ID52637._ID486 = 5;
        thread _ID42407::_ID28864( "afcaves_pri_havingasmoke" );
    }

    var_3 = _ID42237::_ID14417( "backdoor_firstpatroller_deathflag", "backdoor_firstpatroller_left_idle_area" );
    level notify( "barracks_firstpatroller_catch_player_abort" );
    _unknown_3A69();

    if ( var_2 && var_3 == "backdoor_firstpatroller_deathflag" )
    {
        _ID42407::_ID28876();
        wait 0.35;
        thread _ID42407::_ID28864( "pri_goodnight" );
        wait 1;
    }

    thread _ID42407::_ID4439();
    _func_0DB( "aim_aimAssistRangeScale", "1" );
    thread _ID42407::_ID28864( "pri_letsgo" );
    thread _unknown_3AAB();
    level._ID28543._ID24424 = 1;
    level._ID28543 _ID42407::_ID8925( "on" );
    level._ID28543._ID24727 = 0;
    level._ID28543 _meth_81D6( "prone", "crouch", "stand" );

    if ( !_ID42237::_ID14385( "player_near_price_shuffle_start" ) && !_ID42237::_ID14385( "player_near_price_at_broken_wall" ) )
    {
        thread maps\af_caves_code::_ID50935( "price_smoker_node" );
        _ID42237::_ID14415( "player_near_price_shuffle_start", "player_near_price_at_broken_wall" );
    }

    thread maps\af_caves_code::_ID50935( "node_price_shuffle_start" );
    level._ID28543 waittill( "goal" );
    _ID42237::_ID14413( "player_near_price_shuffle_start" );

    if ( _func_0F3( level._ID794._ID740, level._ID28543._ID740 ) <= 256 )
        _ID42407::_ID10226( 0.5, _ID42407::_ID28864, "afcaves_pri_easynow" );

    if ( !_ID42237::_ID14385( "barracks_player_near_stair_shooting_spot" ) )
    {
        var_4 = _func_0C8( "node_price_barracks_near_center_2", "targetname" );
        level._ID28543._ID52378 = var_4;
        level._ID28543 _meth_81A6( maps\af_caves_code::_ID47269 );
        level._ID28543 waittill( "scripted_shuffle_done" );
    }

    thread _unknown_3BC8();
    thread maps\af_caves_code::_ID50935( "price_going_left_node" );
    _ID42237::_ID14413( "price_dialogue_stayleft" );

    if ( !_ID42237::_ID14385( "nearleft_guys_turnaround" ) )
    {
        var_4 = _func_0C8( "price_going_left_node", "targetname" );
        maps\af_caves_code::_ID47187( 240, var_4 );
    }

    thread maps\af_caves_code::_ID50935( "node_barracks_price_countdown_kill" );
    _ID42237::_ID14413( "barracks_player_near_stair_shooting_spot" );
    thread _ID42407::_ID4439();
    thread _unknown_3C30();
    _ID42237::_ID14415( "barracks_stairguys_countdown_kill_done", "barracks_stairguys_countdown_kill_aborted" );
    _unknown_3BB7();
    level._ID28543 _meth_81AF( 1 );
    thread maps\af_caves_code::_ID50935( "node_barracks_price_before_stairs" );

    if ( !_ID42237::_ID14385( "barracks_player_past_price_near_steamroomdoor_spot" ) )
    {
        var_4 = _func_0C8( "node_barracks_price_before_stairs", "targetname" );
        maps\af_caves_code::_ID47187( 240, var_4 );
    }

    _ID42237::_ID14402( "steamroom_start" );
}

_ID43393()
{
    self endon( "death" );
    self._ID3189 = "generic";
    level._ID794 thread _ID42407::_ID51500( [ self ], "barracks_stealth_takedown", 140, 80, 90, 0, 0.25, ::_unknown_3BE9, undefined, "weapon_parabolic_knife", undefined, undefined, undefined, undefined, 5 );
    self waittill( "stealth_takedown_started" );
    childthread _unknown_3BBD();
    self notify( "end_patrol" );
    self notify( "pain_death" );
    _ID42237::_ID14402( "backdoor_firstpatroller_deathflag" );
}

animation_dof_tv_takedown()
{
    waittillframeend;
    var_0 = _ID54167::_ID43386( "stealth_takedown" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.6, -1, 8, 8 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 2.6 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.65 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.15 ) _ID54167::_ID47198( 0.12, 0.6, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.2 );
    var_0 _ID54167::_ID48800( 1.85 ) _ID54167::_ID47198( 0.12, 0.8, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.35 );
    var_0 _ID54167::_ID48166();
}

_ID43772( var_0 )
{
    var_1 = _func_1A5();
    var_1._ID740 = var_0[0]._ID740;
    var_1._ID65 = var_0[0]._ID65;
    return var_1;
}

_ID50377()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    level endon( "barracks_firstpatroller_catch_player_abort" );
    _ID42237::_ID14413( "player_near_price_shuffle_start" );

    if ( _func_1A7( self ) )
    {
        self._ID486 = 150;
        self._ID377 = level._ID794;
    }
}

_ID53283()
{
    wait 0.1;
    self notify( "heard_scream",  level._ID794._ID740  );
}

_ID48165()
{
    if ( !_ID42389::_ID36337() )
    {
        thread _ID42407::_ID28864( "afcaves_pri_guardsknow" );

        while ( !_ID42389::_ID36337() )
            wait 0.05;
    }
}

_ID49413()
{
    level endon( "steamroom_start" );
    level endon( "_stealth_spotted" );
    _ID42237::_ID14413( "price_dialogue_stayleft" );
    _ID42407::_ID28864( "afcaves_pri_incorridor" );
    thread _unknown_3E1E();
}

_ID51165()
{
    level endon( "steamroom_start" );
    level endon( "_stealth_spotted" );
    var_0 = _func_1A1( "trig_script_color_alies_r18", "targetname" );

    for (;;)
    {
        while ( !_ID42389::_ID36337() )
            wait 0.05;

        wait 0.1;
        var_0 waittill( "trigger",  var_1  );

        if ( !_func_1B3( var_1 ) )
            continue;

        if ( !_ID42389::_ID36337() )
            continue;

        _ID42407::_ID28864( "afcaves_pri_avoidbeingspotted" );
        break;
    }
}

_ID43347()
{
    _ID42389::_ID36235();
    var_0 = [];
    var_0["ai_eventDistDeath"]["hidden"] = 256;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 100;
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstep"]["spotted"] = 300;
    var_0["ai_eventDistFootstep"]["hidden"] = 100;
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 300;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 100;
    thread _ID42389::_ID36234( var_0 );
    var_1 = [];
    var_1["prone"] = 300;
    var_1["crouch"] = 600;
    var_1["stand"] = 600;
    _ID42389::_ID36284( var_1 );
    var_2 = [];
    var_2["player_dist"] = 725;
    var_2["sight_dist"] = 400;
    _ID42389::_ID36268( var_2 );
    level._ID8754 = 1;
    level.corpse_behavior_require_distance_check_only = 1;
}

_ID44371()
{
    level waittill( "price_at_node" );
    wait 1;
    _ID42237::_ID14402( "barracks_price_ready_to_dodge_biggroup" );
}

_ID53324()
{
    level endon( "steamroom_start" );
    level endon( "barracks_player_near_stair_shooting_spot" );
    _ID42237::_ID14414( "barracks_nearleft_patroller_comingback", "barracks_player_farleft_back_area" );
    _ID42407::_ID28864( "afcaves_pri_tangosonsix" );
}

_ID46936()
{
    _ID42407::_ID14543( "axis" );

    if ( !_ID42237::_ID14385( "nearleft_guys_turnaround" ) )
    {
        _ID42407::_ID28864( "afcaves_schq_sitrep" );
        wait 2;
    }

    if ( !_ID42237::_ID14385( "nearleft_guys_turnaround" ) )
        _ID42407::_ID28864( "afcaves_schq_sitrepover" );

    _ID42237::_ID14413( "barracks_stairguys_countdown_kill_done" );
    _ID42407::_ID14544( "axis" );
}

_ID44764()
{
    if ( _func_0F4( level._ID794._ID740, level._ID28543._ID740 ) > 670 )
    {
        level._ID28543 notify( "stop_going_to_node" );
        level._ID28543 thread _unknown_4043();
        var_0 = ( 5184, 11394, -3735 );
        var_1 = ( 0, 20.7, 0 );
        level._ID28543 _meth_81D2( var_0, var_1 );
        thread maps\af_caves_code::_ID50935( "node_barracks_price_countdown_kill" );
        level._ID28543 thread _unknown_4075();
    }

    var_2 = _func_1A2( "barracks_stairguys", "targetname" );
    var_3 = maps\af_caves_code::_ID47377( var_2, 1 );
    _ID42237::_ID14402( "barracks_stairguys_spawned" );
    var_4 = undefined;
    var_5 = undefined;
    var_6 = var_3;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        if ( var_7._ID31388 == "left" )
        {
            var_4 = var_7;
            continue;
        }

        var_5 = var_7;
    }

    var_clear_2
    var_clear_0
    level endon( "_stealth_spotted" );
    thread _unknown_40D6();
    level._ID50359 = undefined;
    level._ID794._ID50545 = 0;
    _ID42237::_ID3350( var_3, ::_unknown_40ED, var_4 );
    thread _unknown_4103();
    var_9 = level _ID42237::_ID41075( "player_shot_someone_on_stairs", "barracks_stairguys_countdown_dialogue_done" );
    var_10 = 0;

    if ( _func_02F( var_9 ) && var_9 == "barracks_stairguys_countdown_dialogue_done" )
        var_10 = 1;

    if ( _func_02F( level._ID50359 ) && !level._ID50359 )
    {
        var_11 = var_5;
        var_5 = var_4;
        var_4 = var_11;
    }

    level._ID28543._ID507 = 0;
    maps\af_caves_code::_ID54041();
    level._ID28543 _meth_8172();

    if ( _func_1A7( var_5 ) )
    {
        maps\af_caves_code::_ID52545( var_5 );
        var_5 waittill( "death" );
    }

    if ( _func_1A7( var_4 ) )
        var_4 thread _unknown_4134();

    _ID42237::_ID14413( "barracks_stairguys_deathflag" );
    wait 1;
    var_12 = 0;

    if ( !_ID42237::_ID14385( "barracks_stairguys_countdown_kill_aborted" ) )
    {
        if ( level._ID794._ID50545 == 2 )
            _ID42407::_ID28864( "afcaves_pri_impressive" );
        else if ( _func_02F( level._ID50359 ) && !level._ID50359 )
        {
            _ID42407::_ID28864( "afcaves_pri_closeenough" );
            var_12 = 1;
        }
    }
    else
        var_12 = 1;

    if ( var_12 )
        thread _ID42407::_ID28864( "afcaves_pri_move2" );
    else
        thread _ID42407::_ID28864( "afcaves_pri_cleargo" );

    maps\af_caves_code::_ID53802();
    _ID42237::_ID14402( "barracks_stairguys_countdown_kill_done" );
}

playervictim_killfailsetup()
{
    self endon( "death" );
    _ID42237::_ID14413( "barracks_stairguys_countdown_dialogue_done" );
    wait 1.0;
    _ID42407::_ID10896();
    self notify( "end_patrol" );
    self._ID377 = level._ID794;
}

_ID50963()
{
    self endon( "goal" );
    level waittill( "_stealth_spotted" );
    self notify( "level_stealth_spotted" );
}

_ID51837()
{
    var_0 = self._ID24424;
    self._ID24424 = 1.3;
    _ID42237::_ID41068( "goal", "level_stealth_spotted" );
    self._ID24424 = var_0;
}

_ID52215()
{
    level endon( "barracks_stairguys_countdown_kill_done" );
    level waittill( "_stealth_spotted" );
    _ID42237::_ID14402( "barracks_stairguys_countdown_kill_aborted" );
}

_ID46046( var_0 )
{
    self waittill( "damage",  var_2, var_2  );

    if ( var_2 == level._ID794 )
    {
        level._ID50359 = 0;

        if ( self == var_0 )
            level._ID50359 = 1;

        level._ID794._ID50545++;
        level notify( "player_shot_someone_on_stairs" );
    }
}

_ID52806()
{
    level endon( "_stealth_spotted" );
    level endon( "player_shot_someone_on_stairs" );
    level endon( "barracks_stairguys_countdown_aborted" );
    _ID42407::_ID28864( "afcaves_pri_tangoswithtaclights" );
    _ID42407::_ID28864( "afcaves_pri_takeoneright" );
    _ID42407::_ID28864( "afcaves_pri_three" );
    _ID42407::_ID28864( "afcaves_pri_two" );
    _ID42407::_ID28864( "afcaves_pri_one" );
    _ID42407::_ID28864( "afcaves_pri_mark" );
    wait 0.5;
    _ID42237::_ID14402( "barracks_stairguys_countdown_dialogue_done" );
}

_ID44853()
{
    thread maps\af_caves_code::_ID51428();
    self._ID525 = 60;
    thread maps\af_caves_code::_ID52329();
    self._ID486 = 5;
    self._ID24424 = 0.75;
    thread _unknown_42F3();
}

_ID45148()
{
    self endon( "death" );
    var_0 = _func_1A1( "trig_barracks_stairguy_seeprice", "targetname" );

    while ( !var_0 _meth_80B0( self ) )
        wait 0.05;

    self._ID377 = level._ID794;
}

_ID53617()
{
    level endon( "_stealth_spotted" );
    _ID42407::_ID14543( "axis" );
    _ID42407::_ID28864( "afcaves_schq_lostcontact2" );
    _ID42407::_ID28864( "afcaves_schq_badtransmitter2" );
    _ID42407::_ID28864( "afcaves_schq_sendateam2" );
    _ID42407::_ID28864( "afcaves_sc2_sendvinson" );
    _ID42407::_ID14544( "axis" );
}

_ID43683()
{
    var_0 = _func_1A1( "trig_barracks_biggroup_pathstart_area", "targetname" );
    var_1 = "barracks_biggroup";

    for ( var_2 = []; !var_2.size; var_2 = _ID42407::_ID15543( var_1 ) )
        wait 0.1;

    while ( var_2.size )
    {
        var_2 = _ID42407::_ID15543( var_1 );
        var_3 = 0;
        var_4 = var_2;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( var_5 _meth_80B0( var_0 ) )
            {
                var_3 = 1;
                break;
            }
        }

        var_clear_2
        var_clear_0

        if ( !var_3 )
        {
            break;
            continue;
        }

        wait 0.05;
    }

    _ID42237::_ID14402( "barracks_biggroup_gone" );
    level._ID8754 = undefined;
    level.corpse_behavior_require_distance_check_only = undefined;
}

_ID50878()
{
    level endon( "steamroom_start" );
    _ID42237::_ID14413( "_stealth_spotted" );
    _ID42237::_ID14402( "barracks_stealth_broken" );
    _func_0DB( "aim_aimAssistRangeScale", "1" );
    maps\af_caves_code::_ID54073( "trig_barracks_centergroup_walker_spawn" );
    maps\af_caves_code::_ID54073( "trig_barracks_nearleft_guys_spawn" );
    maps\af_caves_code::_ID54073( "spawn_patroller_guy1" );
    level._ID28543._ID507 = 0;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID628 = level._ID45172;
    level._ID28543._ID4867 = 50;
    wait 2;
    thread _unknown_44CF();
    var_0 = _func_0DE( "axis" );
    var_1 = _ID42237::_ID15566( level._ID794._ID740, var_0 );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_1A7( var_3 ) && _func_02F( var_3._ID1644 ) )
        {
            wait 0.5;
            var_3 notify( "heard_scream",  level._ID794._ID740  );
            break;
        }
    }

    var_clear_2
    var_clear_0
    thread _unknown_4530();
    thread _unknown_4579();
    thread _unknown_458A();
    _ID42237::_ID14414( "backdoor_firstpatroller_deathflag", "barracks_centergroup_deathflag", "barracks_nearleft_guys_deathflag" );

    if ( !_ID42237::_ID14385( "player_at_stairs_before_steamroom" ) )
        thread maps\af_caves_code::_ID50935( "node_barracks_stealthbreak_price_nearexit" );

    _ID42237::_ID14413( "barracks_steamroom_defenders_deathflag" );
    _ID42237::_ID14402( "barracks_stealthbreak_survived" );
    _ID42407::_ID28864( "pri_keepmoving" );
    var_5 = _func_1A1( "steamroom_price", "targetname" );
    level._ID28543 notify( "price_goto_node" );
    level._ID28543 _meth_81B2( _ID42407::_ID17434( var_5._ID740 ) );
    thread _ID42407::_ID4422( "barracks_stealthbreak_survived" );
    _ID42237::_ID14402( "steamroom_start" );
}

_ID46643()
{
    var_0 = _func_1A2( "barracks_steamroom_defenders", "targetname" );

    if ( !_ID42237::_ID14385( "player_pre_steamroom_stairs" ) )
        var_1 = maps\af_caves_code::_ID47377( var_0 );
    else
        _ID42237::_ID3294( var_0, ::_meth_80B7 );
}

_ID53873()
{
    level endon( "barracks_stealthbreak_survived" );
    var_0 = _func_1A1( "trig_player_on_backdoor_ledge", "targetname" );
    var_1 = _func_03D() + 5000;
    var_2 = _func_03D() + 12000;
    var_3 = 0;

    for (;;)
    {
        var_0 waittill( "trigger",  var_4  );

        if ( !_func_1B3( var_4 ) )
        {
            wait 0.05;
            continue;
        }

        while ( level._ID794 _meth_80B0( var_0 ) && !_ID42237::_ID14385( "barracks_stealthbreak_survived" ) && _func_03D() < var_1 )
            wait 0.05;

        if ( !level._ID794 _meth_80B0( var_0 ) || _ID42237::_ID14385( "barracks_stealthbreak_survived" ) )
        {
            wait 0.05;
            continue;
        }

        if ( !var_3 )
        {
            _ID42407::_ID28864( "afcaves_pri_getbackhere" );
            var_3 = 1;
        }

        while ( level._ID794 _meth_80B0( var_0 ) && !_ID42237::_ID14385( "barracks_stealthbreak_survived" ) && _func_03D() < var_2 )
            wait 0.05;

        if ( !level._ID794 _meth_80B0( var_0 ) || _ID42237::_ID14385( "barracks_stealthbreak_survived" ) )
        {
            wait 0.05;
            continue;
        }

        _func_034( "ui_deadquote", "@AF_CAVES_DEADQUOTE_ABANDONED_PRICE" );
        _ID42407::_ID23778();
    }
}

_ID49908()
{
    level endon( "_stealth_normal" );
    level endon( "steamroom_start" );
    wait 20;
    var_0 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_0, maps\af_caves_code::_ID53998 );
    _ID42237::_ID3350( var_0, maps\af_caves_code::_ID43767 );
}

_ID51358()
{
    var_0 = 3;
    var_1 = _func_0DE( "axis" );

    while ( var_1.size > var_0 && !_ID42237::_ID14385( "player_at_stairs_before_steamroom" ) )
    {
        wait 0.1;
        var_1 = _func_0DE( "axis" );
        var_1 = _ID42407::_ID3328( var_1 );
        var_1 = _ID42237::_ID3332( var_1 );
        var_2 = 0;
        var_3 = var_1;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( !_func_1A7( var_4 ) )
                continue;

            if ( var_4 _ID42407::_ID11498() )
                continue;

            var_2++;
        }

        var_clear_2
        var_clear_0

        if ( var_2 <= var_0 )
            break;
    }

    var_1 = _ID42407::_ID3328( var_1 );
    var_1 = _ID42237::_ID3332( var_1 );
    _ID42237::_ID3350( var_1, ::_unknown_498B );
    _ID42237::_ID3350( var_1, ::_unknown_47CF );
}

_ID43596()
{
    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );
    var_0 = 65536;

    while ( _ID42407::_ID54053( self._ID740 + ( 0, 0, 48 ), undefined, 1 ) || _func_0F5( level._ID794._ID740, self._ID740 ) <= var_0 )
    {
        if ( !_ID42237::_ID14385( "steamroom_entrance" ) )
        {
            wait(_func_0BA( 0.5, 2 ));
            continue;
        }

        wait 0.05;
    }

    if ( !_ID42237::_ID14385( "steamroom_entrance" ) )
    {
        self._ID287 = 1;
        self _meth_8058();
    }
    else
        self _meth_80B7();
}

_ID51992()
{
    level endon( "steamroom_start" );
    level._ID794 endon( "death" );
    var_0 = [];
    var_0[0] = "afcaves_pri_ontousgoloud";
    var_0[1] = "afcaves_pri_compromisedgoloud";
    var_1 = [];
    var_1[0] = "afcaves_pri_gotlucky";
    var_1[1] = "afcaves_pri_thatwasclose";

    while ( !_ID42237::_ID14385( "steamroom_start" ) )
    {
        _ID42237::_ID14413( "_stealth_spotted" );
        _unknown_48C5();

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        {
            _ID42407::_ID28864( _ID42237::_ID28945( var_0 ) );
            _ID42237::_ID14426( "_stealth_spotted" );
        }

        if ( level._ID794._ID486 > 0 )
            _ID42407::_ID28864( _ID42237::_ID28945( var_1 ) );
    }
}

_ID52099()
{
    var_0 = [];
    var_0[0] = "afcaves_sc1_iseehim";
    var_0[1] = "afcaves_sc1_spotted";
    var_0[2] = "afcaves_sc1_hostilemyloc";
    _ID42407::_ID28876();
    var_1 = _func_0DE( "axis" );
    var_2 = _ID42237::_ID15566( level._ID794._ID740, var_1 );
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_1A7( var_4 ) && _func_02F( var_4._ID1644 ) )
        {
            var_4 thread _ID42407::_ID28864( _ID42237::_ID28945( var_0 ) );
            wait 0.05;
            break;
        }
    }

    var_clear_2
    var_clear_0
}

_ID47545()
{
    _ID42407::_ID1805( "trig_backdoor_barracks_center_group_spawn" );
}

_ID45553()
{
    var_0 = _func_1A1( "barracks_center_standing_fridge", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_1._ID507 = 1;
    var_1 endon( "death" );
    var_2 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 _ID42389::_ID36236( var_1, "fridge_idle", "fridge_react" );

    if ( _func_1A7( var_1 ) )
        var_1._ID507 = 0;
}

_ID48764()
{
    var_0 = _ID42407::_ID52253( "chess_guy_1" );
    var_1 = _ID42407::_ID52253( "chess_guy_2" );
    var_2 = [];
    var_2[var_2.size] = var_0;
    var_2[var_2.size] = var_1;
    var_0._ID3189 = "chess_guy1";
    var_1._ID3189 = "chess_guy2";
    var_0._ID9813 = var_0 _ID42407::_ID16120( "chess_death_1" );
    var_1._ID9813 = var_1 _ID42407::_ID16120( "chess_death_2" );
    _ID42237::_ID3350( var_2, ::_unknown_4A6A, "chess_players_broken" );
    _ID42237::_ID3350( var_2, _ID42407::_ID32187, 1 );
    var_3 = _func_1A1( "chess_ent", "targetname" );
    var_4 = _func_06A( "script_origin", var_3._ID740 );
    var_4._ID65 = var_3._ID65;
    var_3 thread _ID42389::_ID36236( var_0, "chess_idle_1", "chess_surprise_1" );
    var_4 thread _ID42389::_ID36236( var_1, "chess_idle_2", "chess_surprise_2" );
    _ID42237::_ID3350( var_2, ::_unknown_4ABD );
}

_ID44157( var_0 )
{
    self endon( "death" );
    level endon( var_0 );
    _ID42407::_ID13031( "_stealth_normal" );
    level notify( var_0 );
}

_ID46859()
{
    _ID42389::_ID36303();
    thread _ID42386::_ID12799( level._ID794._ID740 );
    _ID42407::_ID32352( 0 );
    self._ID9813 = undefined;
}

_ID54429()
{
    var_0 = _func_1A1( "radio_backdoor_emitter", "targetname" );
    var_1 = "mus_emt_afcaves_radio_music1";
    var_0 thread _ID42237::_ID27000( var_1 );
    _ID42407::_ID38929( "trig_radio_damage_backdoor" );
    var_0 _ID42237::_ID36516( var_1 );
    var_0 _meth_80B7();
}

_ID54443()
{
    _ID42237::_ID14413( "steamroom_entrance" );
    _unknown_4B40();
}

_ID47405()
{
    var_0 = [];
    var_0 = _ID42407::_ID15543( "backdoor_firstpatroller" );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15543( "barracks_centergroup" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15543( "barracks_biggroup" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15543( "barracks_nearleft_guys" ) );
    var_0 = _ID42237::_ID3296( var_0, _ID42407::_ID15543( "barracks_stairguys" ) );

    if ( !var_0.size )
        return;

    thread _ID42407::_ID2265( var_0, 256 );
}

_ID46881()
{
    thread _unknown_4BBB();
    _ID42237::_ID14413( "steamroom_start" );

    if ( !_ID42237::_ID14385( "barracks_stealth_broken" ) && !_ID42237::_ID14385( "player_pre_steamroom_stairs" ) )
    {
        thread _unknown_4D22();
        thread _unknown_4D42();
    }

    thread _unknown_4C17();
    thread _unknown_4C2C();
}

_ID49737()
{
    _ID42237::_ID14413( "player_at_stairs_before_steamroom" );
    _ID42234::_ID13611( "steamroom_steamclouds" );
    _ID42234::_ID13611( "steamroom_steamclouds_grp_01" );
    _ID42234::_ID13611( "steamroom_steamclouds_grp_02" );
    thread _unknown_509E();
    thread _unknown_4C42();
}

_ID49851()
{
    var_0 = 9200;
    var_1 = 512;

    for (;;)
    {
        wait 0.05;

        if ( level._ID794._ID740[1] > var_0 )
            continue;

        if ( level._ID28543._ID740[1] > var_0 )
            continue;

        break;
    }

    level._ID46726 _meth_80A1( "gate_iron_open" );
    level._ID46726 _meth_82BB( -84, 2 );
    var_2 = _func_1A1( "steamroom_door_closed_col", "targetname" );
    var_2 _meth_82C8();
    var_2 _meth_805E();
}

_ID45595()
{
    var_0 = _func_1A1( "smodel_steamroom_c4_plant", "targetname" );
    var_0 _meth_805A();
}

_ID44248()
{
    level._ID28543 _ID42407::_ID10871();
    maps\af_caves_code::_ID53802();
    _ID42237::_ID14413( "steamroom_door_blown" );
    level._ID28543 _ID42407::_ID8925( "off" );
    level._ID28543._ID24727 = 1;
    level._ID28543 thread maps\af_caves_code::_ID52482( "masada_eotech" );
}

_ID48482()
{
    thread _unknown_4FC8();
    thread _unknown_4DCC();
    thread _unknown_5083();
    _ID42237::_ID14413( "steamroom_going_dark" );
    thread _unknown_51E5();
    _ID42237::_ID14413( "steamroom_price_moveup_2" );
    thread _ID42407::_ID4422( "barracks_doorbreach" );
    _unknown_4E10();
    thread _unknown_5014();
    maps\af_caves_lighting::_ID51110( "af_caves_steamroom_breach" );
    thread _unknown_5062();
    _ID42407::_ID10226( 2, ::_unknown_50B2 );
    _ID42237::_ID14415( "steamroom_ambush_started", "steamroom_player_spotted" );

    if ( !_ID42237::_ID14385( "steamroom_ambush_started" ) )
        _ID42237::_ID14402( "steamroom_ambush_started" );

    thread maps\af_caves_code::_ID51663();
    thread _unknown_4E05();
    thread _unknown_4DA7();
    thread _unknown_4DB2();
    _ID42237::_ID14414( "steamroom_patrollers_deathflag", "steamroom_patrollers_group2_deathflag" );

    if ( !_ID42237::_ID14385( "player_clear_steamroom" ) )
        thread maps\af_caves_code::_ID50935( "node_steamroom_price_near_door" );

    _ID42237::_ID14413( "steamroom_patrollers_doorguard_deathflag" );
    thread _unknown_50F1();
    _ID42237::_ID14402( "steamroom_ambush_done" );

    if ( !_ID42237::_ID14385( "player_clear_steamroom" ) )
        maps\af_caves_code::_ID50526( "node_steamroom_price_exit_bodyup", 320 );

    _ID42237::_ID14402( "steamroom_done" );
}

_ID45764()
{
    _ID42407::_ID38929( "trig_steamroom_near_door" );
    _ID42237::_ID14402( "steamroom_patrollers_protect_door" );
}

_ID48870()
{
    var_0 = 3;
    _ID42237::_ID14413( "steamroom_door_blown" );
    wait 1;
    var_1 = _func_0DE( "axis" );

    while ( var_1.size > var_0 && !_ID42237::_ID14385( "steamroom_exit" ) )
    {
        wait 0.1;
        var_1 = _func_0DE( "axis" );
        var_1 = _ID42407::_ID3328( var_1 );
        var_1 = _ID42237::_ID3332( var_1 );
        var_2 = 0;
        var_3 = var_1;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( !_func_1A7( var_4 ) )
                continue;

            if ( var_4 _ID42407::_ID11498() )
                continue;

            var_2++;
        }

        var_clear_2
        var_clear_0

        if ( var_2 <= var_0 )
            break;
    }

    var_1 = _ID42407::_ID3328( var_1 );
    var_1 = _ID42237::_ID3332( var_1 );
    _ID42237::_ID3350( var_1, ::_unknown_4ED9 );
    _ID42237::_ID3350( var_1, ::_unknown_4EE6 );
}

_ID51414()
{
    if ( !_func_1A7( self ) )
        return;

    self._ID486 = 1;
    self._ID86 = 1;
}

_ID50865()
{
    if ( !_func_1A7( self ) )
        return;

    self endon( "death" );
    var_0 = 65536;

    while ( _ID42407::_ID54053( self._ID740 + ( 0, 0, 48 ), undefined, 1 ) || _func_0F5( level._ID794._ID740, self._ID740 ) <= var_0 )
    {
        if ( !_ID42237::_ID14385( "steamroom_exit" ) )
        {
            wait(_func_0BA( 0.5, 2 ));
            continue;
        }

        wait 0.05;
    }

    if ( !_ID42237::_ID14385( "steamroom_exit" ) )
    {
        self._ID287 = 1;
        self _meth_8058();
    }
    else
        self _meth_80B7();
}

_ID44549()
{
    level._ID28543._ID507 = 0;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 2;
    level._ID28543._ID628 = level._ID45172;
    level._ID28543._ID513 = 1;
    level._ID28543._ID511 = 1;
    _ID42237::_ID14425( "steamroom_ambush_done", 5 );
    level._ID28543._ID513 = 0;
    level._ID28543._ID511 = 0;

    if ( !_ID42237::_ID14385( "steamroom_ambush_done" ) )
        level._ID28543 thread _ID42407::_ID12445();

    _ID42237::_ID14413( "steamroom_ambush_done" );
    level._ID28543 _ID42407::_ID10871();
    var_0 = _func_1A2( "trig_steamroom_allies_color", "script_noteworthy" );
    _ID42237::_ID3294( var_0, ::_meth_80B7 );
}

_ID51794()
{
    _ID42237::_ID14413( "price_at_steamroom_stairs" );
    level._ID28543 _ID42407::_ID8925( "on" );
}

_ID45156()
{
    level endon( "steamroom_ambush_started" );
    thread _ID45156();

    if ( !_ID42237::_ID14385( "barracks_stealth_broken" ) && !_ID42237::_ID14385( "player_pre_steamroom_stairs" ) )
    {
        _ID42237::_ID14402( "steamroom_price_knifekill_sequencestart" );
        _ID42237::_ID14413( "steamroom_price_knifekill_done" );
    }

    thread maps\af_caves_code::_ID50935( "node_steamroom_price_1" );
    _ID42237::_ID14413( "steamroom_price_moveup_1" );
    thread maps\af_caves_code::_ID50935( "node_steamroom_price_2" );
    _ID42237::_ID14413( "steamroom_price_moveup_2" );
    thread maps\af_caves_code::_ID50935( "node_steamroom_price_3" );
}

_ID54596()
{
    if ( level._ID28543._ID740[1] < 9750 )
        return;

    var_0 = _ID42407::_ID17434( ( 4563, 9222, -3565 ) );
    var_1 = ( 5207, 9566, -3499 );
    level._ID28543 notify( "scripted_teleport" );
    level._ID28543 _meth_81D2( var_0, var_1 );
}

_ID46925()
{
    var_0 = _func_1A1( "steamroom_price_stealthkill_animref", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_2 = var_1 _ID42407::_ID35014( 1 );
    var_2._ID511 = 0;
    var_2._ID507 = 1;
    var_2._ID49 = 0;
    var_2._ID464 = 0;
    var_2 _meth_819A( "gravity" );
    var_2 _meth_81B2( var_2._ID740 );
    level._ID50537 = var_0;
    level._ID46899 = var_2;
    _ID42237::_ID14402( "steamroom_knifekill_setup_done" );
}

_ID45187()
{
    _ID42237::_ID14414( "steamroom_knifekill_setup_done", "steamroom_price_knifekill_sequencestart" );
    var_0 = level._ID46899;

    if ( !_func_1A7( var_0 ) )
    {
        _ID42237::_ID14402( "steamroom_price_knifekill_done" );
        return;
    }

    thread _ID42407::_ID28864( "afcaves_pri_topofstairs" );
    var_0._ID507 = 0;
    var_0._ID49 = 1;
    var_0._ID486 = 5;
    var_1 = level._ID50537;
    var_2 = level._ID28543;
    var_3 = "steamroom_knifekill_price";
    var_4 = "steamroom_knifekill_guard";
    var_5 = "steamroom_knifekill_guard_idle";
    var_6 = "steamroom_knifekill_guard_reaction";
    var_0 thread _unknown_5299( var_6 );
    var_0 _meth_819A( "gravity" );
    var_1 thread _ID42259::_ID3025( var_0, var_5 );
    var_0 thread _unknown_52CA( var_1, var_6 );
    level thread _unknown_52A5( var_0 );
    maps\af_caves_code::_ID50526( "node_steamroom_price_mid_stairs", 300 );
    var_2._ID11575 = 1;
    var_2._ID507 = 1;
    var_2 _ID42407::_ID32628( 1 );
    var_2 _ID42407::_ID10973();
    var_1 thread _ID42259::_ID3027( var_2, var_3 );
    _unknown_52C2();

    if ( _func_1A7( var_0 ) && !_ID42237::_ID14385( "steamroom_price_knifekill_abort" ) )
    {
        if ( level._ID43135._ID50612 && var_0._ID22746 )
            var_0 _ID42407::_ID36519();

        _ID42237::_ID14402( "steamroom_price_knifekill_started" );
        var_0 thread _unknown_52E6( var_1 );
        thread _unknown_53C7( var_3, var_0 );
        var_2 thread _unknown_53E1( var_3 );
        var_2._ID3131 = 1;
        var_2 thread _unknown_52E9();
        var_2 _ID42237::_ID10192( 0.1, ::_meth_81AF, 1 );
        var_0 _ID42237::_ID10192( 0.1, ::_meth_81AF, 1 );
        var_1 thread _ID42259::_ID3020( var_0, var_4 );
        var_1 _ID42259::_ID3024( var_2, var_3 );
        var_2._ID3131 = undefined;
    }
    else if ( _func_1A7( var_0 ) )
    {
        var_2 notify( "new_anim_reach" );
        var_2 _meth_81B2( var_2._ID740 );
        var_2 thread _unknown_535B();
        var_0 _meth_81AF( 0 );
    }
    else if ( !_ID42237::_ID14385( "steamroom_price_moveup_1" ) )
        thread _unknown_535B();

    var_2._ID11575 = undefined;
    var_2._ID507 = 0;
    var_2 _ID42407::_ID32628( 0 );
    var_2 _ID42407::_ID10226( 5, _ID42407::_ID12538 );
    var_2 _meth_81AF( 0 );

    if ( _ID42237::_ID14385( "steamroom_price_knifekill_abort" ) && _func_1A7( var_0 ) )
    {
        var_2._ID377 = var_0;
        var_0 waittill( "death" );
        var_2._ID377 = undefined;
    }

    _ID42237::_ID14402( "steamroom_price_knifekill_done" );
}

_ID48592()
{
    var_0 = _func_06A( "script_origin", level._ID28543._ID740 );
    var_0 _meth_8053( level._ID28543 );
    var_0 _meth_80A1( "scn_afcaves_knife_kill_behind" );
    _ID42237::_ID14415( "steamroom_price_knifekill_abort", "steamroom_price_knifekill_walkup_abort", "steamroom_price_knifekill_done" );
    var_0 _meth_80B3();
    wait 0.05;
    var_0 _meth_80B7();
}

_ID50749()
{
    thread _ID42407::_ID28864( "afcaves_pri_nevermind" );
}

_ID48146( var_0 )
{
    level endon( "steamroom_price_knifekill_committed" );
    self waittill( "death" );
    _ID42237::_ID14402( "steamroom_price_knifekill_walkup_abort" );
    level._ID28543 notify( "stop_animmode" );
    level._ID28543 _ID42407::_ID3136();
    var_0 _ID42407::_ID3136();
    thread _unknown_5411();
}

_ID50591()
{
    level endon( "steamroom_price_knifekill_abort" );
    level._ID28543 waittill( "anim_reach_complete" );
}

_ID43918()
{
    level endon( "steamroom_price_knifekill_done" );
    level._ID28543 endon( "scripted_teleport" );
    wait 5;
    level._ID28543 _meth_81B2( _ID42407::_ID17434( ( 5207, 9566, -3499 ) ) );
}

_ID48242( var_0 )
{
    level endon( "steamroom_price_knifekill_abort" );
    var_1 = var_0._ID7._ID41701["right"];
    _ID42237::_ID14413( "steamroom_price_knifekill_started" );
    wait 3;
    var_2 = "weapon_" + var_1;
    _func_06A( var_2, _ID42407::_ID17434( level._ID28543 _meth_818C( "tag_inhand" ) ) );
}

_ID50836( var_0 )
{
    var_1 = "com_cellphone_on_anim";
    var_2 = "tag_inhand";
    self _meth_801D( var_1, var_2 );
    var_3 = _ID42237::_ID14417( "steamroom_price_knifekill_abort", "steamroom_price_knifekill_started" );

    if ( var_3 == "steamroom_price_knifekill_abort" )
    {
        var_4 = _func_067( _ID42407::_ID16122( var_0 ) );
        var_5 = var_4 * 0.04;
        wait(var_5);
    }
    else
        self waittillmatch( "single anim",  "end_reaction"  );

    self _meth_802A( var_1, var_2 );
}

_ID53714( var_0, var_1 )
{
    self endon( "death" );
    level endon( "steamroom_price_knifekill_started" );
    thread _unknown_556A();
    thread _unknown_5565();
    thread _unknown_555A();
    _ID42237::_ID41068( "playerclose", "bulletwhizby", "bullethit", "damage", "flashbang", "grenade danger", "explode" );
    _ID42237::_ID14402( "steamroom_price_knifekill_abort" );
    var_0 _ID42407::_ID3136();
    self._ID486 = 150;
    self._ID507 = 0;
    self._ID377 = level._ID794;
    _ID42407::_ID10973();
    var_0 _ID42259::_ID3024( self, var_1 );
    wait 2;
    self._ID377 = undefined;
    wait 3;

    if ( _func_1A7( self ) )
    {
        var_2 = _func_1A1( "goalvolume_steamroom_patrollers", "targetname" );
        self _meth_81B5( var_2 );
    }
}

_ID47988()
{
    level endon( "steamroom_price_knifekill_abort" );
    level endon( "steamroom_price_knifekill_started" );
    self _meth_8043( "gunshot" );

    for (;;)
    {
        self waittill( "ai_event",  var_0  );

        if ( var_0 == "gunshot" )
        {
            self notify( "playerclose" );
            break;
        }
    }
}

_ID45791()
{
    level endon( "steamroom_price_knifekill_abort" );
    level endon( "steamroom_price_knifekill_started" );
    _ID42237::_ID14413( "steamroom_knifekill_guard_playerclose" );
    self notify( "playerclose" );
}

_ID45829()
{
    level endon( "steamroom_price_knifekill_abort" );
    level endon( "steamroom_price_knifekill_started" );
    _ID42237::_ID14400( "player_jumping" );
    thread _unknown_5650();
    thread _unknown_5676();

    for (;;)
    {
        wait 0.05;

        if ( !_ID42237::_ID14385( "steamroom_stealthkill_player_in_awareness_zone" ) )
            continue;

        if ( _ID42237::_ID14385( "player_jumping" ) )
            self notify( "playerclose" );

        var_0 = _unknown_56A4();

        if ( var_0 > 200 )
            self notify( "playerclose" );
    }
}

_ID43630()
{
    level endon( "player_jump_watcher_stop" );
    var_0 = "player_jumping";

    if ( !_ID42237::_ID14396( var_0 ) )
        _ID42237::_ID14400( var_0 );
    else
        _ID42237::_ID14388( var_0 );

    _func_00E( "playerjump", "+gostand" );
    _func_00E( "playerjump", "+moveup" );

    for (;;)
    {
        level._ID794 waittill( "playerjump" );
        wait 0.1;

        if ( !level._ID794 _meth_834C() )
            _ID42237::_ID14402( var_0 );

        while ( !level._ID794 _meth_834C() )
            wait 0.05;

        _ID42237::_ID14388( var_0 );
    }
}

_ID47125()
{
    level _ID42237::_ID41068( "steamroom_price_knifekill_abort", "steamroom_price_knifekill_started" );
    level notify( "player_jump_watcher_stop" );
}

_ID15917()
{
    var_0 = level._ID794 _meth_8344();
    var_1 = _func_0F3( ( var_0[0], var_0[1], 0 ), ( 0, 0, 0 ) );
    return var_1;
}

_ID51408( var_0, var_1 )
{
    var_2 = _func_067( _ID42407::_ID16122( var_0 ) );
    var_3 = var_2 * 0.31;
    wait(var_2);
    _ID42237::_ID14402( "steamroom_price_knifekill_committed" );

    if ( _func_1A7( var_1 ) )
    {
        var_1._ID49 = 1;
        var_1._ID7._ID24881 = 1;
        var_1 _ID42407::_ID32226( 0 );
        var_1 _meth_8058();
    }
}

_ID47522( var_0 )
{
    var_1 = "weapon_parabolic_knife";
    var_2 = "tag_inhand";
    var_3 = _func_067( _ID42407::_ID16122( var_0 ) );
    var_4 = var_3 * 0.48;
    var_5 = var_3 * 0.78;
    var_6 = _func_03D();
    thread _unknown_57E8( var_4 );
    self waittillmatch( "custom_animmode",  "knife pullout"  );
    self _meth_801D( var_1, var_2 );
    var_7 = var_5 - maps\af_caves_code::_ID43796( _func_03D() - var_6 );
    _ID42237::_ID14425( "steamroom_price_knifekill_walkup_abort", var_7 );
    self _meth_802A( var_1, var_2 );
}

_ID50154( var_0 )
{
    level endon( "steamroom_price_knifekill_walkup_abort" );
    var_1 = _ID42237::_ID16299( "knife_stab" );
    var_2 = "tag_knife_fx";
    wait(var_0);
    _func_156( var_1, level._ID28543 _meth_818C( var_2 ) );
}

_ID43610()
{
    _ID42407::_ID28864( "afcaves_schq_lostcontact" );

    if ( !_ID42237::_ID14385( "steamroom_entrance" ) )
        _ID42407::_ID28864( "afcaves_sc3_oncatwalk" );

    _ID42237::_ID14413( "steamroom_entrance" );

    if ( !_ID42237::_ID14385( "steamroom_price_moveup_1" ) )
    {
        _ID42407::_ID28864( "afcaves_schq_godark" );
        thread _ID42407::_ID28864( "afcaves_pri_getready" );
    }

    _ID42237::_ID14402( "steamroom_going_dark" );

    if ( !_ID42237::_ID14385( "steamroom_price_moveup_2" ) )
        _ID42407::_ID28864( "afcaves_sc3_chargeplanted" );
}

_ID46484()
{
    _ID42237::_ID14402( "steamroom_door_preblow" );
    _ID42407::_ID28864( "afcaves_scl_hitit" );
    thread _ID42407::_ID28864( "afcaves_sc3_breaching" );
    wait 0.8;
    _ID42234::_ID13611( 200 );
    _ID42407::_ID10226( 0.5, ::_unknown_55BB );
    var_0 = _func_1A1( "smodel_steamroom_c4_plant", "targetname" );
    thread _ID42237::_ID27077( "scn_steamroom_blow_door", var_0._ID740 );
    _func_192( 0.2, 1.75, level._ID794._ID740, 350 );
    level._ID794 _meth_80B4( "damage_heavy" );
    _func_076( 3, 0.1 );
    var_1 = [];
    var_1[0] = var_0;
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "steamroom_fake_c4_spot", "targetname" ) );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _func_156( level._ID1426["c4_explosion"], var_3._ID740 );
        var_3 _meth_81E1( var_3._ID740, 256, 200, 50 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "steamroom_door_blown" );
    wait 1;
    _func_076( 0, 3 );
}

steamroom_exit_light()
{
    var_0 = _func_1A1( "ledge_light", "targetname" );
    var_0 _meth_81EB( 1 );
    var_0 _meth_805A();
    var_1 = _func_1A1( "ledge_light1", "targetname" );
    var_1 _meth_81EB( 1 );
    var_1 _meth_805A();
    var_2 = _func_1A1( "ledge_light2", "targetname" );
    var_2 _meth_81EB( 1 );
    var_2 _meth_805A();
    var_3 = _func_1A1( "shadow_breach", "targetname" );
    var_3 _meth_8096();
    var_3 _meth_805E();
    _ID42237::_ID14413( "steamroom_door_blown" );
    var_0 _meth_8059();
    var_0 _meth_81EB( 15000 );
    var_1 _meth_8059();
    var_1 _meth_81EB( 5000 );
    var_2 _meth_8059();
    var_2 _meth_81EB( 5000 );
    var_3 _meth_8095();
    var_3 _meth_805F();
    var_3 _meth_80B7();
}

_ID52812()
{
    if ( !_ID42237::_ID14385( "steamroom_exit" ) )
        _ID42407::_ID28864( "afcaves_pri_move2" );

    if ( !_ID42237::_ID14385( "steamroom_exit" ) )
        _ID42407::_ID28864( "afcaves_schq_flatlined" );

    if ( !_ID42237::_ID14385( "steamroom_exit" ) )
    {
        thread _ID42407::_ID28864( "afcaves_sc3_notpossible" );
        wait 3.6;
        _ID42407::_ID28866( "afcaves_shp_itsprice" );
    }

    if ( _ID42237::_ID14385( "player_awayfrom_steamroom_exit" ) )
        _ID42407::_ID28864( "afcaves_shp_burntherest" );

    _ID42237::_ID14402( "steamroom_ambush_finish_dialogue_ended" );
}

_ID50578()
{
    level endon( "steamroom_ambush_started" );
    wait 8;
    thread _ID42407::_ID28864( "afcaves_pri_goloud" );
    _ID42237::_ID14402( "steamroom_ambush_started" );
}

_ID54677()
{
    _ID42237::_ID14413( "steamroom_door_preblow" );
    var_0 = _func_1A2( "steamroom_patroller_extraguy", "targetname" );
    var_1 = maps\af_caves_code::_ID47377( var_0, 1 );
    _ID42237::_ID3350( var_1, ::_unknown_5B97 );
    _ID42237::_ID14413( "steamroom_door_blown" );
    var_2 = [];
    var_3 = [];
    var_2 = _func_1A2( "steamroom_patroller", "targetname" );
    var_3 = maps\af_caves_code::_ID47377( var_2, 1 );
    _ID42237::_ID3350( var_3, ::_unknown_5BBE );

    if ( !_ID42237::_ID14385( "steamroom_ambush_started" ) )
        thread _unknown_5BB0();

    var_4 = _func_1A2( "steamroom_patroller_group2", "targetname" );
    var_5 = maps\af_caves_code::_ID47377( var_4, 1 );
    _ID42237::_ID3350( var_5, ::_unknown_5BB6 );
    var_6 = _func_1A2( "steamroom_patroller_doorguard", "targetname" );
    var_7 = maps\af_caves_code::_ID47377( var_6, 1 );
    _ID42237::_ID3350( var_7, ::_unknown_5DB4 );
    _ID42237::_ID3350( var_7, ::_unknown_5C37 );
    _ID42237::_ID14415( "steamroom_ambush_started", "steamroom_patrollers_deathflag" );

    if ( !_ID42237::_ID14385( "steamroom_ambush_started" ) )
        _ID42237::_ID14402( "steamroom_player_spotted" );

    thread _unknown_5C23();
}

_ID44730()
{
    self endon( "death" );
    var_0 = self._ID452;
    self _meth_81B2( self._ID740 );
    _ID42237::_ID14415( "steamroom_ambush_started", "steamroom_patrollers_deathflag" );
    self._ID452 = var_0;
    var_1 = _func_1A1( "goalvolume_steamroom_patrollers", "targetname" );
    self _meth_81B5( var_1 );
    thread _unknown_5C64();
}

_ID44362()
{
    level endon( "steamroom_ambush_started" );
    thread _ID42407::_ID4917( "axis" );
    _ID42407::_ID28864( "scl_movein" );
    _ID42407::_ID28864( "afcaves_scl_foxtrotelement" );
    _ID42407::_ID28864( "afcaves_scl_patternecho" );
    _ID42407::_ID28864( "afcaves_sc3_areaclear" );
    _ID42407::_ID28864( "afcaves_scl_checkcorners" );
}

_ID49198()
{
    level endon( "steamroom_patrollers_group2_deathflag" );
    _ID42407::_ID28864( "afcaves_scl_theyrehere" );
    wait 5;
    _ID42407::_ID28864( "afcaves_scl_huntthemdown" );
    wait 2.5;
    _ID42407::_ID4918( "axis" );
}

_ID46332()
{
    if ( !_ID42237::_ID14385( "steamroom_ambush_started" ) )
        thread _unknown_5D21();

    thread _unknown_5D1A();
    self endon( "death" );
    _unknown_5E92();
    _unknown_5D10();

    if ( !_ID42237::_ID14385( "steamroom_ambush_started" ) )
    {
        var_0 = self._ID628;
        self._ID628 = 250000;
        var_1 = self._ID452;
        self._ID452 = 64;
        _ID42237::_ID14413( "steamroom_door_blown" );
        thread _ID42338::_ID26367( self._ID1191 );
        wait 0.1;
        thread maps\af_caves_code::_ID52329();
        _ID42237::_ID14413( "steamroom_ambush_started" );
        wait 0.05;
        self notify( "end_patrol" );
        _ID42407::_ID7869();
        self._ID452 = var_1;
        self._ID628 = var_0;
    }

    _ID42237::_ID14413( "steamroom_patrollers_protect_door" );
    _ID42407::_ID10226( 0.1, maps\af_caves_code::_ID43767 );
}

_ID51574()
{
    switch ( level._ID15361 )
    {

    }

    case 3:
    case 2:
    case 1:
    case 0:
}

_ID52765()
{
    var_0 = "steamroom_player_spotted";
    level endon( var_0 );
    self endon( "death" );
    self waittill( "enemy" );

    if ( !_ID42237::_ID14385( var_0 ) )
        _ID42237::_ID14402( var_0 );
}

_ID52189()
{
    level endon( "steamroom_ambush_started" );
    self waittill( "death" );
    _ID42237::_ID14402( "steamroom_ambush_started" );
}

_ID53407()
{
    var_0 = _func_1A2( "lights_off_grp1", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1596, 900 );
    var_1 = _func_1A2( "security_lights_off_grp1", "targetname" );
    _ID42237::_ID3294( var_1, ::_meth_805A );
    var_2 = _func_1A2( "security_lights_on_grp1", "targetname" );
    _ID42237::_ID3350( var_2, ::_unknown_5EB8 );
    var_3 = _func_1A2( "lights_on_grp1", "targetname" );
    _ID42237::_ID3350( var_3, ::_unknown_5ED7 );
    var_4 = _func_1A2( "lights_off_grp2", "targetname" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1596, 900 );
    var_5 = _func_1A2( "security_lights_off_grp2", "targetname" );
    _ID42237::_ID3294( var_5, ::_meth_805A );
    var_6 = _func_1A2( "security_lights_on_grp2", "targetname" );
    _ID42237::_ID3350( var_6, ::_unknown_5F07 );
    var_7 = _func_1A2( "lights_on_grp2", "targetname" );
    _ID42237::_ID3350( var_7, ::_unknown_5F27 );
    var_8 = _func_1A2( "lights_off_grp3", "targetname" );
    _ID42237::_ID3350( var_8, _ID42407::_ID1596, 900 );
    var_9 = _func_1A2( "security_lights_off_grp3", "targetname" );
    _ID42237::_ID3294( var_9, ::_meth_805A );
    var_10 = _func_1A2( "security_lights_on_grp3", "targetname" );
    _ID42237::_ID3350( var_10, ::_unknown_5F57 );
    var_11 = _func_1A2( "lights_on_grp3", "targetname" );
    _ID42237::_ID3350( var_11, ::_unknown_5F76 );
    var_12 = _func_1A2( "lights_off_grp4", "targetname" );
    _ID42237::_ID3350( var_12, _ID42407::_ID1596, 900 );
    var_13 = _func_1A2( "security_lights_off_grp4", "targetname" );
    _ID42237::_ID3294( var_13, ::_meth_805A );
    var_14 = _func_1A2( "security_lights_on_grp4", "targetname" );
    _ID42237::_ID3350( var_14, ::_unknown_5FA6 );
}

_ID52977()
{
    if ( self._ID669 == "dt_light_on" || self._ID669 == "com_utility_light_on" )
        _func_157( _ID42237::_ID16299( "light_glow_white_bulb" ), self, "tag_fx" );
}

steamroom_redlight_off()
{
    self._ID45911 = self _meth_81EA();
    self _meth_81EB( 0 );
}

_ID45485()
{
    var_0 = _func_1A2( "cavedoor", "targetname" );
    level._ID45318 = var_0[0];
}

_ID44566()
{
    wait 0.25;
    level._ID794 _meth_80A1( "scn_blackout_breaker_box" );
    var_0 = _ID42237::_ID16640( "cave_red_light_glowspot", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _func_156( _ID42237::_ID16299( "redlight_glow" ), var_2._ID740 );
    }

    var_clear_2
    var_clear_0
}

_ID47214()
{
    thread _unknown_611C();
    level._ID794 _meth_80A1( "scn_blackout_breaker_box" );
    var_0 = _func_1A2( "lights_off_grp1", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1596, 0 );
    maps\af_caves_lighting::_ID51110( "af_caves_steamroom_grp1" );
    var_1 = _func_1A2( "security_lights_on_grp1", "targetname" );
    _ID42237::_ID3294( var_1, ::_meth_80B7 );
    var_2 = _func_1A2( "security_lights_model_off", "script_noteworthy" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _meth_80B8( "com_two_light_fixture_off" );
    }

    var_clear_2
    var_clear_0
    var_6 = _func_1A2( "utility_light_off", "script_noteworthy" );
    var_7 = var_6;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8 _meth_80B8( "com_utility_light_off" );
    }

    var_clear_2
    var_clear_0
    var_10 = _func_1A2( "security_lights_off_grp1", "targetname" );
    _ID42237::_ID3294( var_10, ::_meth_8059 );
    _ID42234::_ID21260( "steamroom_steamclouds_grp_01" );
    var_11 = _func_1A2( "lights_on_grp1", "targetname" );
    var_12 = var_11;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 _meth_81EB( var_13._ID45911 );
    }

    var_clear_2
    var_clear_0
    wait 0.75;
    level._ID794 _meth_80A1( "scn_blackout_breaker_box" );
    var_15 = _func_1A2( "lights_off_grp2", "targetname" );
    _ID42237::_ID3350( var_15, _ID42407::_ID1596, 0 );
    maps\af_caves_lighting::_ID51110( "af_caves_steamroom_grp2" );
    var_16 = _func_1A2( "security_lights_on_grp2", "targetname" );
    _ID42237::_ID3294( var_16, ::_meth_80B7 );
    var_17 = _func_1A2( "security_lights_off_grp2", "targetname" );
    _ID42237::_ID3294( var_17, ::_meth_8059 );
    _ID42234::_ID21260( "steamroom_steamclouds_grp_02" );
    var_18 = _func_1A2( "lights_on_grp2", "targetname" );
    var_19 = var_18;

    for ( var_20 = _func_1DA( var_19 ); _func_02F( var_20 ); var_20 = _func_1BF( var_19, var_20 ) )
    {
        var_13 = var_19[var_20];
        var_13 _meth_81EB( var_13._ID45911 );
    }

    var_clear_1
    var_clear_0
    wait 0.75;
    level._ID794 _meth_80A1( "scn_blackout_breaker_box" );
    var_21 = _func_1A2( "lights_off_grp3", "targetname" );
    _ID42237::_ID3350( var_21, _ID42407::_ID1596, 0 );
    maps\af_caves_lighting::_ID51110( "af_caves_steamroom_grp3" );
    var_22 = _func_1A2( "security_lights_on_grp3", "targetname" );
    _ID42237::_ID3294( var_22, ::_meth_80B7 );
    var_23 = _func_1A2( "security_lights_off_grp3", "targetname" );
    _ID42237::_ID3294( var_23, ::_meth_8059 );
    var_24 = _func_1A2( "lights_on_grp3", "targetname" );
    var_25 = var_24;

    for ( var_26 = _func_1DA( var_25 ); _func_02F( var_26 ); var_26 = _func_1BF( var_25, var_26 ) )
    {
        var_13 = var_25[var_26];
        var_13 _meth_81EB( var_13._ID45911 );
    }

    var_clear_1
    var_clear_0
    wait 0.75;
    level._ID794 _meth_80A1( "scn_blackout_breaker_box" );
    var_27 = _func_1A2( "lights_off_grp4", "targetname" );
    _ID42237::_ID3350( var_27, _ID42407::_ID1596, 0 );
    var_28 = _func_1A2( "security_lights_on_grp4", "targetname" );
    _ID42237::_ID3294( var_28, ::_meth_80B7 );
    var_29 = _func_1A2( "security_lights_off_grp4", "targetname" );
    _ID42237::_ID3294( var_29, ::_meth_8059 );
    thread _unknown_626F();
    _ID42237::_ID14402( "steamroom_lights_out" );
}

_ID48120()
{
    _ID42234::_ID13611( "steamroom_steamclouds_dark" );
    _ID42407::_ID26403( "steamroom_steamclouds" );
    level._ID45770 = level._ID1555._ID1426["steam"];
    level._ID1555._ID1426["steam"] = _ID42237::_ID16299( "pipe_steam_dark" );
}

enablelaser()
{
    self._ID7._ID21758 = 1;
    self._ID18169 = undefined;
    self._ID9549 = ::_unknown_63A2;
    _unknown_63A7();
}

_ID50987()
{
    if ( self._ID7._ID41701["right"] == "none" )
        return;

    if ( _unknown_63C8() )
        _ID42407::_ID53909();
    else
        self _meth_80BA();
}

_ID6909()
{
    return self._ID7._ID21758 && _func_1A7( self );
}

startexploderfx()
{
    _ID42234::_ID13611( "start_tv_glow" );
}

night_vision_no_tesselation()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "night_vision_on" );
        _func_0DB( "r_tessellation", 0 );
        self waittill( "night_vision_off" );
        _func_0DB( "r_tessellation", 1 );
    }
}

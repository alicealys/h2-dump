// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\contingency_mission_select_cam::_ID50320();
        return;
    }

    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\contingency_beautiful_corner::_ID616();
        return;
    }

    level._ID6720 = "delta";
    level._ID54236 = 0;
    _func_0DB( "sm_sunShadowScale", 0.5 );
    _func_0DB( "r_lightGridEnableTweaks", 1 );
    _func_0DB( "r_lightGridIntensity", 1.24 );
    _func_0DB( "r_lightGridContrast", 0 );
    _func_14C( "h2_foliage_contingency_pine_snow_lg_c_animated" );
    level._ID45903 = 400;
    level._ID54069 = 1500;
    level._ID10115 = 7200;
    level._ID47460 = 62500;
    level._ID8754 = 1;
    level._ID3650 = 7000;
    level._ID50703 = 24000;
    level._ID50627 = 1;
    _func_14E( "remote_missile_snow" );
    level._ID48753 = 1;
    level._ID46121 = "body_tf141_assault_a";
    level._ID49267 = "head_tf141_arctic_a";
    level._ID46718 = 5000;
    level._ID40576 = "contingency_thermal_inverted";
    level._ID43292 = "contingency_thermal_inverted";
    level._ID8760["60"] = _func_0BC( 60 );
    level._ID8760["70"] = _func_0BC( 70 );
    _func_1D8( "thermalbody_snowlevel" );
    level._ID14991 = _func_155( "fx/misc/thermal_tapereflect" );
    level._ID51882 = 1;
    _func_14F( "h1_ac130_screen_overlay" );
    _func_14F( "h1_ac130_distort" );
    _func_152( "tank_rumble" );
    _func_14E( "remote_missile_not_player" );
    _func_14C( "com_computer_keyboard_obj" );
    _func_14C( "h2_foliage_contingency_pine_snow_lg_clean_animated" );
    _func_14C( "foliage_contingency_snow_tall_react_animated" );
    _func_14C( "h2_foliage_contingency_pine_snow_sm_b_animated" );
    _func_14C( "h2_prop_npc_cigar" );
    _func_083();
    _ID42407::_ID10126( ::_unknown_03C6 );
    _ID42407::_ID1951( "start", ::_unknown_03D1, "Start" );
    _ID42407::_ID1951( "slide", ::_unknown_0512, "Slide" );
    _ID42407::_ID1951( "woods", ::_unknown_0601, "Woods" );
    _ID42407::_ID1951( "midwoods", ::_unknown_0646, "mid woods" );
    _ID42407::_ID1951( "ridge", ::_unknown_06D8, "ridge" );
    _ID42407::_ID1951( "base", ::_unknown_0424, "Base" );
    _ID42407::_ID1951( "defend_sub", ::_unknown_0470, "defend_sub" );
    _ID52608::_ID616();
    _ID51620::_ID616();
    maps\contingency_lighting::_ID616();
    _ID49419::_ID616();
    maps\contingency_anim::_ID43266();
    level._ID43461 = "contingency_uav";
    _ID42508::_ID28414();
    _ID42411::_ID6235( "script_vehicle_btr80", "spotlight", "TAG_FRONT_LIGHT_RIGHT", "fx/misc/spotlight_btr80_daytime", "spotlight", 0.2 );
    _ID42411::_ID6235( "script_vehicle_btr80", "spotlight_turret", "TAG_TURRET_LIGHT", "fx/misc/spotlight_btr80_daytime", "spotlight_turret", 0.0 );
    _ID42411::_ID6234( "script_vehicle_uaz_winter_physics", "headlight_right", "TAG_LIGHT_RIGHT_FRONT", "fx/misc/lighthaze_snow_headlights", "headlights" );
    _ID42411::_ID6234( "script_vehicle_uaz_winter_physics", "headlight_left", "TAG_LIGHT_LEFT_FRONT", "fx/misc/lighthaze_snow_headlights", "headlights" );
    _ID42411::_ID6234( "script_vehicle_uaz_winter_physics", "taillight_right", "TAG_LIGHT_LEFT_TAIL", "fx/misc/car_taillight_uaz_l", "brakelights" );
    _ID42411::_ID6234( "script_vehicle_uaz_winter_physics", "taillight_left", "TAG_LIGHT_RIGHT_TAIL", "fx/misc/car_taillight_uaz_l", "brakelights" );
    level._ID44525 = [];
    _func_150( &"CONTINGENCY_TIME_TO_ENTER_SUB" );
    _func_150( &"CONTINGENCY_LINE1" );
    _func_150( &"CONTINGENCY_LINE2" );
    _func_150( &"CONTINGENCY_LINE3" );
    _func_150( &"CONTINGENCY_LINE4" );
    _func_150( &"CONTINGENCY_LINE5" );
    _func_150( &"CONTINGENCY_OBJ_SUB_BASE" );
    _func_150( &"CONTINGENCY_OBJ_SUB_DOCK" );
    _func_150( &"CONTINGENCY_OBJ_DEFEND_SUB" );
    _func_150( &"CONTINGENCY_OBJ_ENTER_SUB" );
    _func_150( &"CONTINGENCY_OBJ_CONTROL_SUB" );
    _func_150( &"CONTINGENCY_OBJ_TURN_KEY" );
    _func_150( &"CONTINGENCY_OBJ_EXIT_SUB" );
    _func_150( &"CONTINGENCY_OBJ_DEFEND" );
    _func_150( &"CONTINGENCY_SUB_TIMER_EXPIRED" );
    _func_150( &"CONTINGENCY_OBJ_ENTER_BASE" );
    _func_150( &"CONTINGENCY_OBJ_PRICE" );
    _func_150( &"CONTINGENCY_USE_DRONE" );
    _func_150( &"CONTINGENCY_TURN_KEY" );
    _func_150( &"CONTINGENCY_DONT_LEAVE" );
    _func_150( &"CONTINGENCY_DONT_LEAVE_FAILURE" );
    _ID42313::_ID54261();
    _ID42323::_ID616();
    _ID50289::_ID616();
    _ID42323::_ID32417( "viewhands_player_arctic_wind" );
    thread maps\contingency_aud::_ID616();
    _ID50736::_ID521();
    _ID42272::_ID33575( "compass_map_contingency" );
    _func_10C( "bridge_guys" );
    _func_10C( "truck_guys" );
    _func_10C( "bridge_stealth_guys" );
    _func_10C( "dogs" );
    _func_10C( "price" );
    _func_10C( "player" );
    _func_10C( "end_patrol" );
    level._ID794 _meth_8183( "player" );
    _func_111( "price", "dogs" );
    _func_10F( "player", "bridge_stealth_guys", 1000 );
    _func_10F( "player", "truck_guys", 1000 );
    _func_14E( "at4_straight" );
    _func_14E( "rpg_straight" );
    _func_14E( "zippy_rockets" );
    _func_14E( "zippy_rockets_inverted" );
    _func_14E( "zippy_rockets_persistent" );
    _func_14E( "facemask" );
    _unknown_05B0();
    _unknown_246F();
    _func_0DB( "r_umbraAccurateOcclusionThreshold", 3100 );
    _ID42314::_ID19317();
    _ID48225::_ID616();
    _ID42316::_ID616();
    _ID43509::_ID616();
    _ID42315::_ID616();
    _ID47233::_ID616();
    _ID45778::_ID616();
    animscripts\dog\dog_init::_ID19886();
    _ID42339::_ID616();
    _ID45526::_ID616();
    _ID42373::_ID616();
    _unknown_1C08();
    thread _unknown_1A85();
    thread _unknown_16C5();
    thread _unknown_16AC();
    thread _unknown_163A();
    thread _unknown_166B();
    thread _unknown_162C();
    thread _unknown_1602();
    thread _unknown_2277();
    thread _unknown_22E2();
    thread _unknown_2324();
    thread _unknown_2301();
    thread _unknown_2313();
    thread _unknown_2323();
    thread _unknown_239B();
    _ID42237::_ID3350( _func_1A2( "bush_trigger", "targetname" ), ::_unknown_23E0 );
    thread _unknown_24B0();
    thread _unknown_24AB();
    thread _unknown_2579( "dynamic_zfar_flag", 1 );
    thread _unknown_2582( "starting_area_trees_flag", 6 );
    thread _unknown_2527();
    thread _unknown_259F();
    thread _unknown_2612();
    thread _unknown_25CE();
    thread _unknown_2659();
    level._ID794._ID29480 = 4;
    level._ID794.remotemissile_lowerbound_limit = ( -26160, -14240, -1000 );
    level._ID794.remotemissile_upperbound_limit = ( 5032, 12984, 11660 );
    level._ID794 thread _ID48289::_ID43866();
    level._ID794 _ID42389::_ID36343();
    level._ID794 thread _ID42407::_ID46142();
    _ID42407::_ID27683( 90 );
    var_0 = _func_1A2( "trigger_tree_explosion", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _ID53911();
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "truck_patrol", "targetname" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_unknown_1FCA );
    var_5 = _func_1A2( "truck_guys", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_unknown_2002 );
    var_6 = _func_1A2( "rasta", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_unknown_1CF7 );
    var_7 = _func_1A2( "bricktop", "script_noteworthy" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, ::_unknown_1CE7 );
    var_8 = _func_1A2( "village_redshirt", "script_noteworthy" );

    if ( _func_02F( var_8 ) )
        _ID42237::_ID3350( var_8, _ID42407::_ID1947, ::_unknown_1D08 );

    var_9 = _func_1A2( "start_of_base_redshirt", "script_noteworthy" );

    if ( _func_02F( var_9 ) )
        _ID42237::_ID3350( var_9, _ID42407::_ID1947, ::_unknown_1D22 );

    level._ID45294 = 0;
    var_10 = _func_1A2( "village_defenders", "targetname" );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_unknown_1D34 );
    var_11 = _func_1A2( "base_starting_guys", "script_noteworthy" );
    _ID42237::_ID3350( var_11, _ID42407::_ID1947, ::_unknown_1FD2 );
    var_12 = _func_1A2( "base_vehicles", "script_noteworthy" );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_unknown_1207 );
    var_13 = _func_1A1( "base_troop_transport1", "targetname" );
    var_13 _ID42407::_ID1947( ::_unknown_128F );
    var_13 _ID42407::_ID1947( ::_unknown_11BD, "cont_cmt_goodkilltruck" );
    var_14 = _func_1A1( "base_troop_transport2", "targetname" );
    var_14 _ID42407::_ID1947( ::_unknown_12AF );
    var_14 _ID42407::_ID1947( ::_unknown_11DD, "cont_cmt_goodkilltruck" );
    var_15 = _func_1A1( "base_truck2", "targetname" );
    var_15 _ID42407::_ID1947( ::_unknown_12CE );
    var_15 _ID42407::_ID1947( ::_unknown_11FC, "cont_cmt_directhitjeep" );
    var_16 = _func_1A1( "price", "script_noteworthy" );
    var_16 _ID42407::_ID1947( ::_unknown_1E26 );
    var_16 _ID42407::_ID1947( ::_unknown_23D3, "price" );
    _ID42407::_ID1892( "axis", ::_unknown_121C );
    _ID42407::_ID1892( "axis", ::_unknown_123D );
    thread _unknown_1253();
    _ID42237::_ID14400( "base_troop_transport2_spawned" );
    var_14 = _func_1A1( "base_troop_transport2", "targetname" );
    var_14 _ID42407::_ID1947( _ID42237::_ID14402, "base_troop_transport2_spawned" );
    var_17 = _func_1A2( "village_truck_guys", "script_noteworthy" );
    _ID42237::_ID3350( var_17, _ID42407::_ID1947, ::_unknown_1648 );
    var_18 = _func_1A1( "sub_ladder", "targetname" );
    var_18._ID29164 = var_18._ID740;
    var_18._ID740 = var_18._ID740 + ( 0, 0, -10000 );
    thread _unknown_151E();
    thread _unknown_1518();
    _ID42407::_ID1895( "hint_dont_leave_price", &"CONTINGENCY_DONT_LEAVE", ::_unknown_1549, undefined, "small_background" );
    _ID42407::_ID1895( "hint_predator_drone", &"HELLFIRE_USE_DRONE", ::_unknown_155E );
    _ID42407::_ID1895( "hint_steer_drone", &"SCRIPT_PLATFORM_STEER_DRONE", ::_unknown_1581 );
    thread _unknown_234D();
    _ID42411::_ID52468( "script_vehicle_uaz_winter_physics", _ID51074::_ID32550, ::_unknown_2803 );
}

_ID49693()
{
    _ID42237::_ID14400( "saying_base_on_alert" );
    _ID42237::_ID14400( "said_second_uav_in_position" );
    _ID42237::_ID14400( "everyone_set_green" );
    _ID42237::_ID14400( "said_convoy_coming" );
    _ID42237::_ID14400( "saying_patience" );
    _ID42237::_ID14400( "stop_stealth_music" );
    _ID42237::_ID14400( "price_starts_moving" );
    _ID42237::_ID14400( "truckguys_dead" );
    _ID42237::_ID14400( "cross_bridge_patrol_dead" );
    _ID42237::_ID14400( "first_stragglers_dead" );
    _ID42237::_ID14400( "rightside_patrol_dead" );
    _ID42237::_ID14400( "all_bridge_guys_dead" );
    thread _unknown_15DF();
    thread _unknown_1AA1();
    _ID42237::_ID14400( "second_group_of_stragglers_are_dead" );
    _ID42237::_ID14400( "saying_contact" );
    _ID42237::_ID14400( "said_follow_me" );
    _ID42237::_ID14400( "someone_became_alert" );
    _ID42237::_ID14400( "price_is_hiding" );
    _ID42237::_ID14400( "truck_guys_alerted" );
    _ID42237::_ID14400( "jeep_stopped" );
    _ID42237::_ID14400( "convoy_hide_section_complete" );
    _ID42237::_ID14400( "attach_rocket" );
    _ID42237::_ID14400( "fire_rocket" );
    _ID42237::_ID14400( "drop_rocket" );
    _ID42237::_ID14400( "done_with_exploding_trees" );
    _ID42237::_ID14400( "first_uav_spawned" );
    _ID42237::_ID14400( "first_uav_destroyed" );
    _ID42237::_ID14400( "second_uav_in_position" );
    _ID42237::_ID14400( "rasta_and_bricktop_dialog_done" );
    _ID42237::_ID14400( "player_turned_key" );
    _ID42237::_ID14400( "player_in_uaz" );
    _ID42237::_ID14400( "incoming_btr" );
    _ID42237::_ID14400( "time_to_use_UAV" );
    _ID42237::_ID14400( "allowDestructionOfUAV" );
    _ID42237::_ID14400( "both_gauntlets_destroyed" );
    _ID42237::_ID14400( "time_to_race_to_submarine" );
    _ID42237::_ID14400( "player_key_rdy" );
    _ID42237::_ID14400( "close_sub_hatch" );
    _unknown_286D();
    _unknown_28E7();
}

_ID54608()
{
    self._ID486 = 100000;
}

_ID53221()
{
    _ID42475::_ID34575( "start_start_checkpoint" );
    maps\contingency_lighting::_ID44761( "start" );
    thread _unknown_0B88();
}

_ID45524()
{
    _ID42475::_ID34575( "start_base_checkpoint" );
    maps\contingency_lighting::_ID44761( "base" );
    var_0 = _ID42237::_ID16638( "base_start_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "start_friendly", "targetname" );
    var_2 = _func_1A2( "rasta_and_bricktop", "targetname" );
    var_1 = _ID42237::_ID3296( var_1, var_2 );
    var_3 = _ID42237::_ID16640( "base_start_friendly", "targetname" );

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_1[var_4]._ID740 = var_3[var_4]._ID740;
        var_1[var_4]._ID65 = var_3[var_4]._ID65;
        var_1[var_4] _ID42407::_ID35014();
    }

    wait 0.1;
    level._ID28543._ID8274 = ::_unknown_1645;
    level._ID28543 _ID42407::_ID14803( "aug_scope_arctic", "primary" );
    thread _unknown_1819();
    _ID42237::_ID14402( "player_on_ridge" );
    _ID42237::_ID14402( "leaving_village" );
    thread _unknown_101E();
}

_ID50272()
{
    _ID42475::_ID34575( "start_defend_sub_checkpoint" );
    maps\contingency_lighting::_ID44761( "defend_sub" );
    var_0 = _ID42237::_ID16638( "defend_sub_start_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "start_friendly", "targetname" );
    var_2 = _func_1A2( "rasta_and_bricktop", "targetname" );
    var_1 = _ID42237::_ID3296( var_1, var_2 );
    var_3 = _ID42237::_ID16640( "defend_sub_start_friendly", "targetname" );

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_1[var_4]._ID740 = var_3[var_4]._ID740;
        var_1[var_4]._ID65 = var_3[var_4]._ID65;
        var_1[var_4] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "stop_stealth_music" );
    _ID42407::_ID24584();
    level._ID794 _meth_831B();
    level._ID794 _meth_8319( "aa12" );
    level._ID794 _meth_8319( "m240_heartbeat_reflex_arctic" );
    level._ID794 _meth_8320( "m240_heartbeat_reflex_arctic" );
    level._ID794 _meth_834F( "fraggrenade" );
    level._ID794 _meth_8319( "fraggrenade" );
    level._ID794 _meth_8324( "flash_grenade" );
    level._ID794 _meth_8319( "flash_grenade" );
    wait 0.1;
    level._ID53312 _ID42407::_ID32315( "g" );
    level._ID53312 _ID42407::_ID12445();
    level._ID47983 _ID42407::_ID32315( "g" );
    level._ID47983 _ID42407::_ID12445();
    level._ID28543 _ID42407::_ID32315( "g" );
    level._ID28543 _ID42407::_ID12445();
    level._ID28543 _ID42407::_ID14803( "aug_scope_arctic", "primary" );
    _ID42389::_ID10971();
    var_1 = _func_0DE( "allies" );
    var_5 = var_1;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 thread _unknown_15CE();
    }

    var_clear_2
    var_clear_0
    thread _unknown_1978();
    _ID42237::_ID14402( "player_on_ridge" );
    _ID42237::_ID14402( "leaving_village" );
    _ID42237::_ID14402( "base_alerted" );
    thread _unknown_1304();
    thread _unknown_1226();
}

_ID47109()
{
    wait 4;
    thread _ID42407::_ID28864( "cont_cmt_barelysee" );
    _ID42475::_ID34575( "aud_start_mix_price_arriving" );
}

_ID53118()
{
    thread _unknown_0DC0();
    _ID42318::_ID50196();
    var_0 = _func_1A1( "price", "script_noteworthy" );
    var_0 _ID42407::_ID35014();
    thread _unknown_21B2();
    thread _unknown_1897();
    _func_0DB( "cg_gunDownAnimDelayTime", 250 );
    thread _unknown_299C();
    thread _unknown_1DF0();
    _ID42237::_ID14413( "start_first_patrol" );
    _ID42475::_ID34575( "aud_stop_mix_price_arriving" );
    _ID42407::_ID4422( "start_first_patrol" );
    var_1 = _func_1A2( "first_patrol", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3._ID170 == "actor_enemy_dog" )
            var_3.slowdog = 1;

        var_3 thread _unknown_1E6F();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "price_starts_moving" );
    _ID42237::_ID14413( "patrol_in_sight" );
    thread _unknown_1E92();
    thread _unknown_1E79();
    thread _unknown_1E1F();
    _ID42237::_ID14413( "start_truck_patrol" );
    _ID42475::_ID34575( "aud_start_mix_jeep_convoy" );

    if ( !_ID42237::_ID14385( "cross_bridge_patrol_dead" ) && !_ID42237::_ID14385( "first_stragglers_dead" ) && !_ID42237::_ID14385( "rightside_patrol_dead" ) )
        thread _ID42407::_ID4439();

    level._ID28543._ID507 = 1;
    var_5 = thread _ID42411::_ID35200( "truck_patrol" );
    var_5 thread maps\contingency_aud::_ID44372();
    wait 1;
    thread _unknown_2106();
    thread maps\contingency_aud::_ID45111();
    _ID42237::_ID14415( "last_truck_left", "player_is_crossing_bridge", "all_bridge_guys_dead" );
    level._ID28543 _meth_8583();
    level._ID28543 notify( "stop_smart_path_following" );
    var_6 = _func_0C8( "price_rdy_vs_stragglers", "targetname" );
    level._ID28543 thread _unknown_1B8E( var_6 );
    level._ID28543 thread _unknown_1C07();
    _ID42237::_ID14413( "price_slide_prep" );
    level._ID28543._ID507 = 0;
    thread _unknown_0FA0();
}

_ID43177()
{
    _ID42475::_ID34575( "start_slide_checkpoint" );
    maps\contingency_lighting::_ID44761( "slide" );
    var_0 = _ID42237::_ID16638( "slide_start_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "start_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "slide_start_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    wait 0.1;
    level._ID28543 _ID42407::_ID12467();
    thread _unknown_1022();
}

_ID51258()
{
    var_0 = level._ID54236;
    thread _unknown_232D();
    level._ID28543 notify( "stop_smart_path_following" );
    thread _unknown_108D();
    _ID42237::_ID14413( "start_btr_slide" );
    _ID42475::_ID34575( "aud_start_mix_tank_attacks" );
    _ID42407::_ID4439();
    level._ID28543 notify( "stop_adjust_movement_speed" );
    thread _unknown_1CB9();
    level._ID52609 = _ID42411::_ID35195( "btr_slider" );
    level._ID52609 thread _ID42411::_ID40197( "spotlight spotlight_turret" );
    level._ID52609 thread _ID42413::_ID9604();
    level._ID52609 thread _unknown_159F();
    level._ID52609._ID3189 = "contingency_btr_slide";
    var_1 = _ID42237::_ID16638( "btr81_slide_node", "targetname" );
    var_1 thread _ID42259::_ID3111( level._ID52609, "contingency_btr_slide" );
    level._ID52609 thread _unknown_10D8();
    level._ID52609 _meth_85C3( 0 );
    level._ID52609 thread maps\contingency_aud::_ID51762();
    var_2 = 2.8;
    wait(var_2);
    thread _unknown_1A37();
    thread _unknown_1DBA();
    thread _unknown_11E5();
}

btr_slider_check_collision_with_player()
{
    self endon( "death" );
    var_0 = _func_03D() + 7000;

    while ( _func_03D() < var_0 )
    {
        var_1 = _func_22D( self._ID740, level._ID794._ID740 );

        if ( var_1 < 32400 )
        {
            var_2 = _func_119( level._ID794._ID740 - self._ID740 );
            var_3 = _func_0FB( var_2, _func_11F( self._ID65 ) );
            var_4 = 60 + _func_0C3( var_3 ) * 120;

            if ( var_1 < var_4 * var_4 )
            {
                level._ID794 _meth_8057( level._ID794._ID486 + 1000, self._ID740, self );
                return;
            }
        }

        waittillframeend;
    }
}

_ID51836()
{
    var_0 = _func_1A1( "price_fire_loc_2", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "pre_BTR" );
    level._ID28543._ID30386 = level._ID30895["price"]["price_new_running"];
    level._ID28543 thread _ID42407::_ID10896();
    level._ID28543 _meth_8583();

    if ( !_ID42237::_ID14385( "safe_from_btrs" ) )
    {
        if ( !_ID42237::_ID14385( "start_btr_slide" ) )
        {
            var_0 thread _ID42259::_ID3111( level._ID28543, "pre_BTR" );
            waittillframeend;

            if ( _ID42237::_ID14385( "pre_start_btr_slide" ) )
                level._ID28543 _meth_83D4( level._ID28543 _ID42407::_ID16120( "pre_BTR" ), 2 );

            level._ID28543 waittillmatch( "single anim",  "end"  );

            if ( !_ID42237::_ID14385( "start_btr_slide" ) )
            {
                var_0 thread _ID42259::_ID3044( level._ID28543, "pre_BTR_idle", "run_to_woods" );
                _ID42237::_ID14413( "start_btr_slide" );
                wait 0.5;
                var_0 notify( "run_to_woods" );
                var_0 _ID42259::_ID3111( level._ID28543, "price_run_in_wood" );
            }
            else
                var_0 _ID42259::_ID3111( level._ID28543, "price_run_in_wood" );
        }
        else
        {
            var_1 = _func_0C8( "price_into_the_woods_path", "targetname" );
            thread _unknown_2403();
            level._ID28543 _meth_81B1( var_1 );
        }

        level._ID28543 _meth_8582();
        level._ID28543 _meth_81AF( 1 );
        level._ID28543._ID35499 = 1;
        level._ID28543._ID24424 = 0.9;
        level._ID28543 thread _unknown_177D();
        var_2 = _func_0C8( "price_into_the_woods_path", "targetname" );
        level._ID28543 thread _ID42407::_ID14701( var_2 );
    }
    else
        level._ID28543 _meth_8582();
}

_ID52431()
{
    _ID42475::_ID34575( "start_woods_checkpoint" );
    maps\contingency_lighting::_ID44761( "woods" );
    var_0 = _ID42237::_ID16638( "woods_start_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "start_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "woods_start_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    wait 0.1;
    level._ID28543 thread _ID42407::_ID10896();
    level._ID28543._ID24424 = 1.2;
    level._ID28543._ID452 = 64;
    level._ID28543 _meth_81B2( ( -28257.9, -8877.1, 840.5 ) );
    thread _unknown_1401();
}

_ID47929()
{
    _ID42475::_ID34575( "start_midwoods_checkpoint" );
    maps\contingency_lighting::_ID44761( "midwoods" );
    var_0 = _ID42237::_ID16638( "midwoods_start_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "start_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "midwoods_start_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    wait 0.1;
    _ID42237::_ID14402( "safe_from_btrs" );
    level._ID28543 thread _ID42407::_ID12467();
    var_4 = _func_0C8( "price_overlook_stream", "targetname" );
    level._ID28543 thread _unknown_1F81( var_4 );
    level._ID43611 = 1600;
    thread _unknown_1F1B();
    thread _unknown_14E7();
}

_ID50238()
{
    _ID42237::_ID14413( "safe_from_btrs" );
    thread _unknown_30FA();
    level._ID28543 _ID42407::_ID7892();
    _ID42475::_ID34575( "aud_stop_mix_tank_attacks" );
    thread _unknown_2042();
    var_0 = _func_0DF( "axis", "all" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_0F3( level._ID794._ID740, var_2._ID740 ) > 1500 )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    thread _unknown_1F80();
    level._ID28543 notify( "_utility::follow_path" );
    level._ID28543 notify( "stop_going_to_node" );
    level._ID28543._ID24424 = 1;
    level._ID28543 _meth_81AF( 1 );
    _unknown_28D6();
    level._ID43611 = 1600;
    level._ID28543._ID628 = level._ID43611;
    level._ID28543 thread _ID42407::_ID10805( "cont_pri_slowdown" );
    _ID42407::_ID4439();
    level._ID28543._ID35499 = undefined;
    level._ID28543 thread _ID42407::_ID12467();
    var_4 = _func_0C8( "price_woods_path_start", "targetname" );
    level._ID28543 thread _unknown_2049( var_4 );
    thread _unknown_15A6();
}

_ID52247()
{
    _unknown_291A();
    thread _unknown_1AA1();
    thread _unknown_2533();
    thread _unknown_2544();
    thread _unknown_25F0();
    thread _unknown_2559();
    thread _unknown_25DE();
    thread _unknown_1710();
}

_ID53911()
{
    _ID42475::_ID34575( "start_ridge_checkpoint" );
    maps\contingency_lighting::_ID44761( "ridge" );
    var_0 = _ID42237::_ID16638( "ridge_start_player", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "start_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "ridge_start_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    wait 0.1;
    thread _unknown_178B();
}

angel_savior_achievement_think()
{
    level endon( "first_uav_destroyed" );
    level waittill( "both_gauntlets_destroyed" );
    _ID42407::_ID16864( "ANGEL_SAVIOR" );
}

_ID48891()
{
    level._ID49157 = 13;

    if ( _func_1A7( level._ID50379 ) && _func_1A7( level._ID52487 ) )
    {
        _ID42237::_ID14402( "first_uav_spawned" );
        thread _unknown_20E5();
        thread _unknown_16B5();
        level._ID49526 = _ID42411::_ID35196( "first_uav" );
        level._ID49526 _meth_807C( "uav_engine_loop" );
        level._ID39406 = _func_06A( "script_model", level._ID49526._ID740 );
        level._ID39406 _meth_80B8( "tag_origin" );
        thread _unknown_2074();
        level.uav_target = _func_06A( "script_origin", level._ID49526._ID740 );
        level.uav_target _meth_8053( level._ID49526 );
    }

    _ID42237::_ID14413( "player_on_ridge" );

    if ( _ID42389::_ID36337() )
    {
        var_0 = _func_0DF( "axis", "all" );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( !var_2 _meth_81CA( level._ID794 ) )
                var_2 _meth_80B7();
        }

        var_clear_1
        var_clear_0
        _ID42389::_ID10971();
    }
    else
    {
        _ID42389::_ID10971();
        var_0 = _func_0DF( "axis", "all" );
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];

            if ( _func_0F3( var_2._ID740, level._ID794._ID740 ) > 2300 )
            {
                var_2 _meth_80B7();
                continue;
            }

            var_2 thread _unknown_2C32();
        }

        var_clear_1
        var_clear_0
        var_0 = _func_0DF( "axis", "all" );
        level._ID44632 = var_0.size;

        while ( level._ID44632 > 0 )
            wait 1;
    }

    _ID42237::_ID14413( "price_on_ridge" );

    if ( _func_1A7( level._ID50379 ) && _func_1A7( level._ID52487 ) )
    {
        level._ID51129 = _func_03D();

        if ( !_ID42237::_ID14385( "going_down_ridge" ) )
            wait 3;

        if ( !_ID42237::_ID14385( "going_down_ridge" ) && !_func_02F( level._ID794._ID20494 ) )
            wait 3;
    }
    else
    {
        level._ID51129 = _func_03D();
        level._ID794._ID46223 = 1;
        level._ID794 _meth_8319( "remote_missile_detonator" );
        level._ID794 _meth_8313( 4, "weapon", "remote_missile_detonator" );
        _func_032( "ui_updateactionslot", 1 );
    }

    if ( _func_1A7( level._ID50379 ) && _func_1A7( level._ID52487 ) )
    {
        _ID42237::_ID14413( "allowDestructionOfUAV" );
        _ID42237::_ID14402( "first_uav_destroyed" );
        var_6 = _func_1A1( "gauntlet_west", "targetname" );
        var_7 = _func_06A( "script_origin", var_6._ID740 + ( 0, 0, 220 ) );
        var_8 = _func_1A1( "gauntlet_east", "targetname" );
        var_9 = _func_06A( "script_origin", var_8._ID740 + ( 0, 0, 220 ) );
        _unknown_21C9( var_7, var_9 );
    }
}

_ID43938()
{
    var_0 = _func_1A1( "ridge_price_overlook_org", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "ridge_in" );

    if ( _ID42237::_ID14385( "leaving_village" ) )
        return;

    if ( _ID42237::_ID14385( "going_down_ridge" ) )
    {
        level._ID28543._ID7._ID28253 = "prone";
        level._ID28543 _meth_8582();
        var_0 _ID42259::_ID3074( level._ID28543, "running_slide" );

        if ( _ID42237::_ID14385( "leaving_village" ) && _func_22D( var_0._ID740, level._ID28543._ID740 ) > 100 )
            return;

        var_0 _ID42259::_ID3111( level._ID28543, "running_slide" );
    }
    else
    {
        level._ID28543._ID511 = 1;
        var_0 _ID42259::_ID3111( level._ID28543, "ridge_in" );

        if ( !_ID42237::_ID14385( "player_on_ridge" ) )
        {
            var_0 thread _ID42259::_ID3044( level._ID28543, "ridge_idle", "play_dialogue" );
            _ID42237::_ID14413( "player_on_ridge" );
            var_0 notify( "play_dialogue" );
        }

        var_0 _ID42259::_ID3111( level._ID28543, "ridge_dialogue" );
        level._ID28543._ID511 = 0;
        var_0 _ID42259::_ID3111( level._ID28543, "slide" );
    }

    level._ID28543 thread _ID42407::_ID10896();

    if ( !_ID42237::_ID14385( "everyone_set_green" ) )
        level._ID28543 _ID42407::_ID32315( "r" );

    level._ID28543 _ID42407::_ID12445();
    _ID42407::_ID1805( "price_in_village_start" );
}

_ID48117( var_0 )
{
    level._ID794._ID46223 = 1;
    level._ID794 _meth_8319( "remote_missile_detonator" );
    level._ID794 _meth_8313( 4, "weapon", "remote_missile_detonator" );
    _func_032( "ui_updateactionslot", 1 );
    level._ID794 thread _ID42407::_ID11085( "hint_predator_drone" );
    wait 5;
    _ID42237::_ID14402( "allowDestructionOfUAV" );
}

_ID47331()
{
    var_0 = _func_1A2( "rasta", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_2C3F );
    var_1 = _func_1A2( "bricktop", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_2C31 );
    level._ID28543 thread _ID42407::_ID12467();
    _ID42237::_ID14413( "approaching_ridge" );
    level._ID50379 = _ID42411::_ID35195( "gauntlet_east" );
    wait 1;
    level._ID52487 = _ID42411::_ID35195( "gauntlet_west" );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 notify( "stop_smart_path_following" );
    level._ID28543 notify( "stop_dynamic_run_speed" );
    thread _unknown_1AC0();
    thread _unknown_1A23();
    _ID42237::_ID14413( "player_slid_down" );
    _ID42237::_ID14402( "stop_stealth_music" );
    _ID42475::_ID34575( "aud_start_mix_sam_explosion" );
    thread _unknown_1D95();

    if ( _func_1A7( level._ID52609 ) )
        level._ID52609 _meth_80B7();

    if ( _func_1A7( level._ID44806 ) )
        level._ID44806 _meth_80B7();

    thread _unknown_22B0();
    _ID42407::_ID4422( "village_fight" );
    thread _unknown_1DA9();
    var_2 = _func_1A2( "first_villagers", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _ID42407::_ID35014();
    }

    var_clear_2
    var_clear_0
    _ID42389::_ID10971();
    _ID42237::_ID14388( "_stealth_spotted" );
    thread _unknown_1E04();

    if ( _func_1A7( level._ID50379 ) )
    {
        level._ID50379 waittill( "death" );
        level._ID50379 _meth_807C( "fire_metal_large" );
    }

    if ( _func_1A7( level._ID52487 ) )
    {
        level._ID52487 waittill( "death" );
        level._ID52487 _meth_807C( "fire_metal_large" );
    }

    _ID42237::_ID14402( "both_gauntlets_destroyed" );
    var_6 = _func_1A1( "ai_missile_prevention", "targetname" );
    _ID42407::_ID10321( var_6 );
    _ID42475::_ID34575( "aud_stop_mix_sam_explosion" );
    _ID42407::_ID1985( _ID42237::_ID14413, "second_uav_in_position" );
    _ID42407::_ID1890( ::_unknown_24BB );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42407::_ID1687, 30 );
    _ID42407::_ID1890( _ID42237::_ID14402, "start_village_fight" );
    thread _ID42407::_ID11231();
    _unknown_2576();
    _ID42237::_ID14402( "rasta_and_bricktop_dialog_done" );
    _ID42237::_ID14402( "second_uav_in_position" );
    _ID42237::_ID14402( "start_village_fight" );
    _ID42407::_ID4422( "village_fight2" );
    wait 1;
    level._ID28543 thread _unknown_216D();
    var_7 = _func_1A2( "village_defenders", "targetname" );
    var_8 = var_7;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_4 = var_8[var_9];
        var_4 _ID42407::_ID35014();
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "leaving_village" );
    level._ID28543 _ID42407::_ID10896();
    thread _unknown_1D36();
}

_ID50655()
{
    level._ID52258 = 1;
    level._ID28543 thread _unknown_229E();
    level._ID53312 thread _unknown_22A5();
    _ID42237::_ID3350( _func_1A2( "ice_chunk", "targetname" ), ::_unknown_35CA );
    _ID42237::_ID3350( _func_1A2( "animated_buoy", "targetname" ), ::_unknown_35EE );
    var_0 = 0;
    var_1 = _func_0DE( "allies" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 == level._ID53312 || var_3 == level._ID28543 )
            continue;

        var_0++;
        var_3 thread _ID42407::_ID29701();
    }

    var_clear_2
    var_clear_0
    var_5 = 3 - var_0;
    var_6 = _func_1A2( "start_of_base_redshirt", "targetname" );

    for ( var_7 = 0; var_7 < var_5; var_7++ )
        var_6[var_7] _ID42407::_ID35014();

    thread _unknown_1FA5();
    thread _unknown_33C2();
    thread _unknown_23C8();
    var_8 = _ID42237::_ID16638( "village_enemies_retreat_pos", "targetname" )._ID740;
    var_9 = _func_0DE( "axis" );
    var_10 = var_9;

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_11 = var_10[var_12];
        var_11 thread _unknown_247A( var_8 );
    }

    var_clear_2
    var_clear_0
    _unknown_2F9D();
    var_13 = _func_1A2( "base_starting_guys", "targetname" );
    var_14 = var_13;

    for ( var_16 = _func_1DA( var_14 ); _func_02F( var_16 ); var_16 = _func_1BF( var_14, var_16 ) )
    {
        var_15 = var_14[var_16];
        var_15 _ID42407::_ID35014();
    }

    var_clear_2
    var_clear_0
    thread _unknown_240B();
    thread _unknown_229B();
    _ID42407::_ID1985( ::_unknown_231A );
    _ID42407::_ID1890( _ID42237::_ID14402, "base_alerted" );
    thread _ID42407::_ID11231();
    thread _unknown_2D34();
    _ID42237::_ID14413( "base_alerted" );
    thread _unknown_1FED();
    _ID42389::_ID10971();
    thread _unknown_22F9();
    wait 1;
    thread _unknown_2D6A();
    thread _unknown_2D82();
    _ID42407::_ID1805( "friendlies_enter_base" );
    thread _unknown_34B9();
    var_17 = _func_0DE( "allies" );
    var_18 = var_17;

    for ( var_20 = _func_1DA( var_18 ); _func_02F( var_20 ); var_20 = _func_1BF( var_18, var_20 ) )
    {
        var_19 = var_18[var_20];
        var_19 thread _unknown_2321();
    }

    var_clear_2
    var_clear_0

    if ( _func_1A7( level._ID52295 ) )
    {
        var_21 = 0;
        var_22 = 0;
        level._ID52295 thread _unknown_3597( var_21, var_22 );
    }

    if ( _func_1A7( level._ID51916 ) )
        level._ID51916 thread _unknown_2337();

    wait 2;

    if ( _func_1A7( level._ID49350 ) )
    {
        level._ID49350 thread maps\contingency_aud::_ID53857();
        thread _ID42411::_ID17021( level._ID49350 );
        level._ID49350._ID7544 = 1;
        level._ID49350._ID24819 = 1;
        level._ID49350 = thread _ID42508::_ID4977( level._ID49350 );
    }

    thread _unknown_1FA7();
}

_ID49314()
{
    _ID42237::_ID14413( "price_splits_off" );
    thread _unknown_262F();

    if ( _func_1A7( level._ID52295 ) )
    {
        level._ID52295 _meth_8058();
        wait 3;
    }

    _ID42237::_ID14388( "respawn_friendlies" );
    _ID42407::_ID4422( "defend" );
    thread _unknown_21CF( "gate1" );
    thread _unknown_21D7( "gate2" );
    level._ID28543._ID8274 = undefined;
    level notify( "reached_sub" );
    _unknown_35DB();
    thread _unknown_2194();
    level._ID28543 _ID42407::_ID10871();
    var_0 = _func_1A1( "submarine_node", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "submarine" );
    var_0 thread _ID42259::_ID3111( level._ID28543, "submarine" );
    var_1 = _func_1A1( "hatch_model", "targetname" );
    level._ID18258 = var_1;
    var_2 = _func_1A1( "hatch_anim_org", "targetname" );
    var_1 _ID42407::_ID3428( "hatch" );
    var_2 thread _ID42259::_ID3111( var_1, "hatch_anim" );
    var_3 = _func_1A1( "price_key_pos", "targetname" );
    level._ID28543 _meth_81B2( var_3._ID740 );
    level._ID28543._ID452 = 64;
    wait 4;
    var_4 = _ID42407::_ID15741( "allies", "g" );
    _ID42237::_ID3350( var_4, _ID42407::_ID32315, "b" );
    _ID42407::_ID1805( "friendlies_go_to_guardhouse" );
    thread _unknown_224F();
    var_5 = _func_0DE( "axis" );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7._ID199 = "cover";
        var_7 _meth_81B2( level._ID794._ID740 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "price_inside_sub" );
    _ID42407::_ID28864( "cont_pri_insidesub" );
    _ID42237::_ID14425( "defend_sub_vehicle_guys_dead", 50 );
    _ID42237::_ID14413( "player_on_guardhouse" );
    thread _unknown_378A();
    var_9 = _ID42237::_ID16638( "sub_obj_enemies_flee", "targetname" )._ID740;
    var_5 = _func_0DE( "axis" );
    var_10 = var_5;

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_7 = var_10[var_11];
        var_7 thread _unknown_26E0( var_9 );
    }

    var_clear_1
    var_clear_0
    var_12 = _func_1A1( "defend_sub_stinger_source", "targetname" );
    _unknown_283A( var_12 );
    thread _unknown_2227();
    wait 1;
    _ID42407::_ID4422( "defend2" );
    var_13 = _func_1A2( "defend_sub_final_guys", "targetname" );
    var_14 = var_13;

    for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
    {
        var_7 = var_14[var_15];
        var_7 _ID42407::_ID35014();
    }

    var_clear_1
    var_clear_0
    wait 5;
    _ID42407::_ID1805( "contacts_south" );
    level._ID53312 _ID42407::_ID10871();
    var_16 = _func_0C8( "ghost_final", "targetname" );
    level._ID53312 _meth_81B1( var_16 );
    level._ID53312 _ID42407::_ID10805( "cont_gst_nexttosub" );
    _ID42237::_ID14402( "close_sub_hatch" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    wait 14;
    thread _unknown_23F4();
    var_9 = _ID42237::_ID16638( "contacts_south_flee_pos", "targetname" )._ID740;
    var_5 = _func_0DE( "axis" );
    var_17 = var_5;

    for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
    {
        var_7 = var_17[var_18];

        if ( _func_02F( var_7._ID1193 ) && _func_125( var_7._ID1193, "defend_sub_final_guys" ) )
            var_7 thread _unknown_27C3( var_9 );
    }

    var_clear_1
    var_clear_0
    var_19 = _func_1A1( "ending_sequence", "targetname" );
    var_19 thread _ID42259::_ID3111( level._ID53312, "nuke_ending" );
    wait 6.4;
    wait 2.4;
    wait 3.9;
    wait 2;
    wait 9.6;
    wait 1;
    _ID42407::_ID28864( "cont_pri_good2" );
    thread _unknown_24C4();
    wait 2.9;
    wait 2;
    wait 5;
    wait 1;
    _ID42407::_ID24793();
}

_ID54176()
{
    _ID42237::_ID14402( "stop_stealth_music" );
    _ID42407::_ID24584( 0.5 );
    wait 1;
    level endon( "stop_base_arrival_music" );
    var_0 = _ID42407::_ID24586( "mus_contingency_base_arrival" );

    for (;;)
    {
        _ID42407::_ID24587( "mus_contingency_base_arrival" );
        wait(var_0);
    }
}

_ID48101()
{
    _ID42237::_ID14402( "stop_stealth_music" );
    level notify( "stop_base_arrival_music" );
    _ID42407::_ID24584( 1 );
    level._ID794 _meth_80A1( "mus_contingency_breakforsub" );
}

_ID44934()
{
    var_0 = level._ID52353;
    var_1 = 20 + var_0;

    while ( level._ID52353 < var_1 )
        wait 1;

    _ID42407::_ID4422( "x_killed" );
}

_ID51315()
{
    _ID42237::_ID14413( "magic_break_stealth" );
    var_0 = _func_0DF( "axis", "all" );

    if ( var_0.size > 0 )
        var_0[0]._ID377 = level._ID794;
}

_ID48463()
{
    wait 4;
    var_0 = level._ID794 _meth_831C();

    if ( var_0 == level._ID43216 || var_0 == level._ID53133 )
        level._ID28543 _ID42407::_ID10805( "cont_pri_grabweapon" );
}

_ID52199()
{
    var_0 = _func_1A1( "bricktop", "script_noteworthy" );
    var_0 _ID42407::_ID35014();
    var_1 = _func_1A1( "rasta", "script_noteworthy" );
    var_1 _ID42407::_ID35014();

    if ( _func_1A7( level._ID50379 ) )
        level._ID50379 waittill( "death" );

    var_2 = _func_1A2( "village_redshirt", "script_noteworthy" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _ID42407::_ID35014();
    }

    var_clear_2
    var_clear_0
}

_ID47724()
{
    level._ID28543 _ID42407::_ID10805( "cont_pri_rastaandbricktop" );
    _ID42407::_ID28864( "cont_cmt_2nduav" );
    _ID42237::_ID14402( "said_second_uav_in_position" );
}

_ID44290()
{
    self notify( "kill_treads_forever" );
    self endon( "death" );
    self endon( "kill_treads_forever" );
    _ID42237::_ID14413( "incoming_btr" );
    var_0 = _func_03D() + _func_067( _ID42407::_ID16120( "contingency_btr_slide" ) ) * 1000;
    var_1 = "tag_origin";
    var_2 = self _meth_818C( var_1 );
    var_3 = 0.05;

    while ( _func_03D() + var_3 <= var_0 )
    {
        wait(var_3);
        var_4 = self _meth_818C( var_1 );
        var_5 = _func_0F3( var_4, var_2 ) / var_3;

        if ( var_5 < 20.0 )
        {
            var_2 = var_4;
            var_3 = 0.1;
            continue;
        }

        var_3 = 1 / var_5;
        var_3 = _func_0EE( var_3 * 35, 0.1, 0.3 );
        _ID42413::_ID38725( self, 1.0, "tag_wheel_back_left", "back_left", 0 );
        _ID42413::_ID38725( self, 1.0, "tag_wheel_back_right", "back_right", 0 );
        var_2 = var_4;
    }
}

_ID50656()
{
    level._ID794 endon( "death" );
    level endon( "safe_from_btrs" );

    for (;;)
    {
        wait 0.1;

        if ( _func_0F3( level._ID794._ID740, level._ID28543._ID740 ) < 400 )
        {
            level._ID28543._ID24424 = 1;
            continue;
        }

        var_0 = _func_119( level._ID794._ID740 - level._ID28543._ID740 );
        var_1 = _func_11F( level._ID28543._ID65 );
        var_2 = _func_0FB( var_1, var_0 );

        if ( var_2 > 0 )
            level._ID28543._ID24424 = 1;
        else
            level._ID28543._ID24424 = 0.9;
    }
}

_ID51231()
{
    level._ID28543 _ID42407::_ID10805( "cont_pri_goingforsub" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_coverme" );
    level._ID53312 _ID42407::_ID10805( "cont_gst_rogerthat" );
    level._ID53312 _ID42407::_ID10805( "cont_gst_guardhouse" );

    while ( !_ID42237::_ID14385( "player_on_guardhouse" ) )
    {
        wait 20;

        if ( _ID42237::_ID14385( "player_on_guardhouse" ) )
            return;

        level._ID28543 _ID42407::_ID10805( "cont_pri_coverme" );
        wait 20;

        if ( _ID42237::_ID14385( "player_on_guardhouse" ) )
            return;

        level._ID53312 _ID42407::_ID10805( "cont_gst_guardhouse" );
    }
}

_ID43627()
{
    wait 24;
    level._ID45845 = _ID42411::_ID35196( "defend_sub_truck2" );
    level._ID45845 thread _unknown_2B20();
    level._ID45845 thread _unknown_2944( "cont_cmt_goodkilltruck" );
    wait 1;
    level._ID44075 = _ID42411::_ID35196( "defend_sub_truck3" );
    level._ID44075 thread _unknown_2B3D();
    level._ID44075 thread _unknown_2961( "cont_cmt_goodkilltruck" );
    wait 3;
    level._ID53312 thread _ID42407::_ID10805( "cont_gst_twotruckseast" );
    wait 15;
    level._ID54577 = _ID42411::_ID35196( "defend_sub_truck1" );
    level._ID54577 thread _unknown_2B67();
    level._ID54577 thread _unknown_298B( "cont_cmt_goodkilltruck" );
    wait 3.25;
    level._ID52937 = _ID42411::_ID35196( "defend_sub_jeep1" );
    level._ID52937 thread _unknown_2B87();
    level._ID52937 thread _unknown_29AB( "cont_cmt_goodkilltruck" );
    level._ID52937 _meth_85C1( 0.5 );
    wait 1.75;
    level._ID53312 thread _ID42407::_ID10805( "cont_gst_morevehicleseast" );
}

_ID54575( var_0 )
{
    _ID42237::_ID14413( var_0 );
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = -160;

        if ( var_3._ID922 == "left" )
            var_4 = 160;

        var_3 _meth_82B9( var_4, 2, 1, 0 );
    }

    var_clear_3
    var_clear_0

    for (;;)
    {
        _ID42237::_ID14388( var_0 );
        wait 0.2;

        if ( !_ID42237::_ID14385( var_0 ) )
            break;
    }

    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_3 = var_6[var_7];
        var_4 = 160;

        if ( var_3._ID922 == "left" )
            var_4 = -160;

        var_3 _meth_82B9( var_4, 2, 1, 0 );
    }

    var_clear_1
    var_clear_0
}

_ID46366()
{
    var_0 = _func_1A1( "sub_hatch_th", "targetname" );
    var_0 _ID42237::_ID38863();
    var_1 = _func_1A1( "hatch_model", "targetname" );
    var_2 = _func_1A1( "hatch_model_collision", "targetname" );
    var_2 _meth_8053( var_1 );
    var_1 _meth_82C0( 120, 0.05 );
    _ID42237::_ID14413( "close_sub_hatch" );
    var_1 _meth_82C0( -120, 5 );
    wait 2;
    var_0 _ID42237::_ID38865();
    wait 4;
    var_0 _ID42237::_ID38863();
}

_ID51145()
{
    _ID42475::_ID34575( "aud_start_mix_silo_doors" );
    var_0 = 5;
    var_1 = 0.1;
    var_2 = 3;
    var_3 = "sub_missile_door_";
    var_4 = 700;

    for ( var_5 = 1; var_5 <= 8; var_5++ )
    {
        var_6 = _func_1A2( var_3 + var_5, "targetname" );
        _ID42237::_ID3350( var_6, ::_unknown_28EF, var_0, var_1 );
        _ID42234::_ID13611( var_4 );
        var_4++;
        wait(var_2);
    }
}

_ID43373( var_0, var_1 )
{
    var_2 = _func_06A( "script_origin", ( 0, 0, 1 ) );
    var_2._ID740 = self._ID740;
    var_2 _meth_80A1( "missile_hatch_slams_open", "sounddone" );
    var_3 = self;
    var_3 _meth_82C2( -60, var_0, 0.2 );
    wait(var_0);
    var_3 _meth_82C2( -1, var_1 );
    wait(var_1);
    var_3 _meth_82C2( 1, var_1 );
    wait(var_1);
    wait 1;
    var_2 _meth_80B3();
    wait 1;
    var_2 _meth_80B7();
}

_ID48483()
{
    _ID42237::_ID14413( "first_patrol_cqb" );
    var_0 = _func_1A2( "first_patrol_cqb", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID35014();
    }

    var_clear_2
    var_clear_0
    wait 6;
    _ID42407::_ID28864( "cont_pri_searchingforus" );
}

_ID47805()
{
    _ID42475::_ID34575( "aud_stop_mix_silo_doors" );
    _ID42475::_ID34575( "aud_start_mix_nuclear_launch" );
    var_0 = _func_1A1( "icbm_missile01", "targetname" );
    var_1 = _func_1A1( "missile01_start", "targetname" );
    var_2 = _func_1A1( "missile01_end", "targetname" );
    _func_192( 0.3, 12, var_0._ID740, 8000 );
    level._ID794 _meth_80B5( "tank_rumble" );
    level._ID794 _ID42237::_ID10192( 8.0, ::_meth_80B6, "tank_rumble" );
    var_0 _meth_80A1( "scn_con_icbm_ignition" );
    var_0 _meth_8053( var_1 );
    var_1 _meth_82B8( var_2._ID740, 50, 10, 0 );
    _func_157( level._ID1426["smoke_geotrail_icbm"], var_0, "TAG_NOZZLE" );
    _ID42234::_ID13611( "icbm_launch" );
    wait 1;

    if ( _func_0F3( level._ID794._ID740, var_1._ID740 ) < 1000 )
        level._ID794 _meth_8057( level._ID794._ID486 + 1000, var_1._ID740 );

    var_0 _meth_807C( "scn_con_icbm_rocket_loop" );
    maps\contingency_lighting::_ID44761( "contingency_nukelaunch" );
    _ID42407::_ID10226( 3.5, maps\contingency_lighting::_ID44761, "contingency_post_nuke" );
    var_1 waittill( "movedone" );
    var_0 _meth_80B7();
    _ID42475::_ID34575( "aud_stop_mix_nuclear_launch" );
}

_ID52997()
{
    var_0 = _func_06A( "trigger_radius", self _meth_818C( "tag_passenger" ) + ( 0, 0, -48 ), 0, 72, 72 );
    var_0 _meth_8070();
    var_0 _meth_8053( self );
    var_0 waittill( "trigger" );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8121( 1 );
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 = _ID42407::_ID35028( "player_rig" );
    level._ID794._ID29975 _meth_805A();
    level._ID794._ID29975 _meth_8053( self, "tag_body" );
    thread _ID42259::_ID3111( level._ID794._ID29975, "boneyard_uaz_mount", "tag_body" );
    thread maps\contingency_anim::_ID53058();
    level._ID794 _meth_8087( level._ID794._ID29975, "tag_player", 0.5 );
    wait 0.5;
    level._ID794._ID29975 _meth_8059();
    level._ID794 _meth_8084( level._ID794._ID29975, "tag_player", 0.5, 180, 180, 75, 25, 1 );
    self waittill( "boneyard_uaz_mount" );
    level._ID794._ID29975 _meth_805A();
    level._ID794 _meth_80A9( 0.5, 0.5, 0, 180, 180, 75, 35 );
    _ID42237::_ID14402( "player_in_uaz" );
}

_ID45501()
{
    level endon( "stop_sub_enemies" );
    var_0 = _func_1A2( "sub_enemies", "targetname" );

    for (;;)
    {
        for ( var_1 = 1 + _func_0B7( 3 ); var_1 > 0; var_1-- )
            var_0[var_1 - 1] _ID42407::_ID35014();

        wait(_func_0B9( 4, 14 ));
    }
}

_ID46049()
{
    _ID42237::_ID14413( "player_on_sub" );
    var_0 = _func_1A1( "sub_ladder", "targetname" );
    var_0._ID29164 = var_0._ID740;
    var_0._ID740 = var_0._ID740 + ( 0, 0, -10000 );
    _ID42237::_ID14413( "player_turned_key" );
    var_0._ID740 = var_0._ID29164;
}

_ID48373()
{
    self._ID33816 = "single";
}

_ID43543()
{
    _ID42237::_ID14402( "player_key_rdy" );
    var_0 = _func_1A1( "players_key", "targetname" );
    var_0 _ID42407::_ID16953();
    var_0 _meth_80E1( "HINT_NOICON" );
    var_0 _meth_80E2( &"CONTINGENCY_TURN_KEY" );
    var_0 _meth_80C6();
    var_1 waittill( "trigger",  var_1  );
    _ID42237::_ID14402( "player_turned_key" );
    var_0 _ID42407::_ID36591();
    var_0 _meth_80C7();
}

_ID46605()
{
    wait 10;
    var_0 = 1;

    while ( !_ID42237::_ID14385( "player_turned_key" ) )
    {
        if ( var_0 )
        {
            level._ID28543 _ID42407::_ID10805( "cont_pri_runningout" );
            var_0 = 0;
        }
        else
        {
            level._ID28543 _ID42407::_ID10805( "cont_pri_trustme" );
            var_0 = 1;
        }

        wait 10;
    }
}

_ID45564()
{
    _ID42237::_ID14413( "player_dropping_into_sub" );
    var_0 = _func_1A2( "tear_gas_nodes", "script_noteworthy" );
    var_1 = var_0;

    for ( var_5 = _func_1DA( var_1 ); _func_02F( var_5 ); var_5 = _func_1BF( var_1, var_5 ) )
    {
        var_2 = var_1[var_5];
        var_3 = _func_1A1( var_2._ID1191, "targetname" );
        var_4 = var_2._ID31039;
        var_3 _ID42407::_ID1947( ::_unknown_2DC0, var_4, var_2 );
        var_3 _ID42407::_ID35014();
    }

    var_clear_4
    var_clear_0
}

_ID52510()
{
    _ID42237::_ID14413( "player_dropping_into_sub" );
    _ID42234::_ID13611( "tear_gas_submarine" );
}

_ID46737( var_0, var_1 )
{
    self._ID486 = 1;
    self._ID49 = 1;
    self._ID28895 = 1;
    var_1 thread _ID42259::_ID3020( self, var_0 );
}

_ID10006()
{
    for ( var_0 = 0; var_0 < 70; var_0 += 0.05 )
        wait 0.05;
}

_ID44542()
{
    level._ID794 _meth_8328();
    level._ID794 _meth_8319( "facemask" );
    level._ID794 _meth_8320( "facemask" );
    level._ID794 _meth_80FA( "facemask", "nvg_down" );
    wait 2.0;
    level._ID794 thread _ID42407::_ID27001( "gas_mask_breath" );
    _func_0DB( "hud_gasMaskOverlay", 1 );
    wait 2.5;
    level._ID794 _meth_831A( "facemask" );
    level._ID794 _meth_8329();
}

_ID48393()
{
    level endon( "base_btr2_dead" );

    for (;;)
    {
        _ID42237::_ID14413( "nag_player_to_destroy_btr" );
        level._ID28543 _ID42407::_ID10805( "cont_pri_armoredvehicle" );
        wait 10;
    }
}

_ID52124()
{
    level._ID51916 endon( "death" );
    level._ID51916 _meth_828D( 0, 15 );
    level._ID51916 _ID42411::_ID40298();
    wait 1;

    if ( _func_02F( level._ID51916._ID49554 ) )
    {
        level._ID51916._ID49554 = undefined;
        _func_0A3( level._ID51916 );
    }

    if ( _func_02F( level._ID48408 ) )
        level._ID48408 = _ID42237::_ID3321( level._ID48408, level._ID51916 );
}

_ID46649()
{
    _ID42389::_ID10969();
    self._ID24844 = undefined;
    self._ID507 = 0;
    self._ID381 = 1;
    thread _ID42407::_ID32226( 1 );
    _ID42407::_ID32324( 1 );
    self._ID11575 = undefined;
    self._ID464 = 3;
    self._ID511 = 0;
    self _meth_81AF( 0 );
    self._ID513 = 0;
}

_ID47258()
{
    var_0 = [];
    var_0[var_0.size] = "cont_bpa_underattack";
    var_0[var_0.size] = "cont_bpa_prejudice";
    var_0[var_0.size] = "cont_bpa_2ndplatoon";
    var_0[var_0.size] = "cont_bpa_alert";
    var_0[var_0.size] = "cont_bpa_battlestations";
    var_1 = 0;
    var_2 = _func_1A1( "base_pa", "targetname" );
    var_3 = _func_1A2( "base_alarm_sound", "targetname" );
    wait 2.0;

    while ( !_ID42237::_ID14385( "price_splits_off" ) )
    {
        for (;;)
        {
            var_2 _ID42407::_ID27079( var_0[var_1] );
            var_1 = var_1 + 1 % var_0.size;
            wait 0.8;
            var_4 = var_3;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                var_5 _meth_807C( "emt_alarm_base_alert_echo" );
                var_5._ID809 = 1;
            }

            var_clear_4
            var_clear_2
            wait 10.5;
            var_7 = var_3;

            for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
            {
                var_5 = var_7[var_8];
                var_5 _meth_80B2();
                var_5._ID809 = undefined;
            }

            var_clear_1
            var_clear_0
            wait 0.8;
        }
    }

    var_9 = var_3;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_5 = var_9[var_10];

        if ( _func_02F( var_5._ID809 ) )
            var_5 _meth_80B2();
    }

    var_clear_1
    var_clear_0
}

_ID48780()
{
    level endon( "base_alerted" );
    level endon( "_stealth_spotted" );
    level._ID794 waittill( "projectile_impact",  var_2, var_2, var_2  );
}

_ID53967()
{
    if ( _func_02F( self._ID29969 ) )
    {
        self endon( "death" );
        self waittill( "jumpedout" );
    }

    thread _ID48289::_ID53152();
}

_ID51766( var_0 )
{
    self endon( "unloaded" );
    self waittill( "death" );
    wait 0.05;

    if ( !_func_02F( level._ID51269 ) )
        level._ID51269 = 1;
    else
        level._ID51269++;

    level._ID49384 = var_0;
}

_ID45351()
{
    self waittill( "death" );

    if ( _func_02F( self._ID29969 ) )
        return;

    wait 0.05;

    if ( !_func_02F( level._ID52353 ) )
        level._ID52353 = 1;
    else
        level._ID52353++;
}

_ID53100()
{
    var_0 = [];
    var_0[var_0.size] = "cont_cmt_mutlipleconfirmed";
    var_0[var_0.size] = "cont_cmt_3kills";
    var_0[var_0.size] = "cont_cmt_theyredown";
    var_1 = 0;
    var_2 = 0;
    level._ID52353 = 0;
    level._ID51269 = 0;
    var_3 = 0;
    var_4 = 0;

    for (;;)
    {
        level waittill( "remote_missile_exploded" );
        var_5 = level._ID52353;
        var_6 = level._ID51269;
        wait 0.3;
        var_7 = level._ID51269 - var_6;

        if ( _func_02F( level._ID48964["ai"] ) )
            var_4 = level._ID48964["ai"];

        wait 1.2;

        if ( _ID42237::_ID14385( "saying_base_on_alert" ) )
            continue;

        if ( var_7 == 1 )
        {
            _ID42407::_ID28864( level._ID49384 );
            continue;
        }

        if ( var_7 > 1 )
        {
            if ( var_3 )
            {
                _ID42407::_ID28864( "cont_cmt_goodhitvehicles" );
                var_3 = 0;
            }
            else
            {
                _ID42407::_ID28864( "cont_cmt_goodeffectkia" );
                var_3 = 1;
            }

            continue;
        }

        if ( var_4 == 0 )
            continue;

        if ( var_4 == 1 )
        {
            if ( var_2 )
            {
                _ID42407::_ID28864( "cont_cmt_hesdown" );
                var_2 = 0;
            }
            else
            {
                _ID42407::_ID28864( "cont_cmt_directhit" );
                var_2 = 1;
            }

            continue;
        }

        if ( var_4 > 5 )
        {
            _ID42407::_ID28864( "cont_cmt_fivepluskias" );
            continue;
            continue;
        }

        _ID42407::_ID28864( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        continue;
    }
}

_ID47254()
{
    self endon( "death" );
    thread _unknown_32AD();
    thread _unknown_32D9();
    thread _ID48289::_ID53152();
    self waittill( "unloaded" );

    if ( _func_02F( self._ID49554 ) )
    {
        self._ID49554 = undefined;
        _func_0A3( self );
    }

    level._ID48408 = _ID42237::_ID3321( level._ID48408, self );
}

_ID51376()
{
    var_0 = 0;
    var_1 = -10000;

    for (;;)
    {
        self waittill( "bad_path" );

        if ( _func_03D() - var_1 < 5000 )
            var_0++;
        else
        {
            var_0 = 0;
            var_1 = _func_03D();
        }

        if ( var_0 >= 9 )
        {
            var_0 = 0;
            var_2 = level._ID44525;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];

                if ( _func_02F( var_3 ) && !_func_1A7( var_3 ) && _func_0F5( var_3._ID740, self._ID740 ) < 90000 )
                    var_3 thread _unknown_3326();
            }

            var_clear_2
            var_clear_0
        }
    }
}

_ID54546()
{
    self notify( "stop_vehicle_enabled_paths" );
    self endon( "stop_vehicle_enabled_paths" );
    self._ID51003 = 1;
    self _meth_805F();
    wait 5;
    self _meth_805E();
    self._ID51003 = undefined;
}

_ID46839()
{
    self endon( "delete" );
    self waittill( "kill_badplace_forever" );
    level._ID44525[level._ID44525.size] = self;
    var_0 = 2500;
    var_1 = self._ID740;

    while ( _func_02F( self ) )
    {
        if ( _func_02F( self._ID51003 ) )
        {
            wait 0.5;
            continue;
        }

        if ( _func_0F5( self._ID740, var_1 ) > var_0 )
        {
            var_1 = self._ID740;
            self _meth_805F();

            for (;;)
            {
                if ( _func_02F( self._ID51003 ) )
                {
                    wait 0.5;
                    continue;
                }

                wait 0.05;

                if ( !_func_02F( self ) )
                    return;

                if ( _func_0F5( self._ID740, var_1 ) < 1 )
                    break;

                var_1 = self._ID740;
            }

            self _meth_805E();
        }

        wait 0.05;
    }
}

_ID45043()
{
    self endon( "unloading" );
    self endon( "death" );

    for (;;)
    {
        wait 2;

        if ( self _meth_8290() < 2 )
        {
            self _meth_828D( 0, 15 );
            self._ID11584 = 1;
            thread _ID42411::_ID40298();
            return;
        }
    }
}

_ID47432()
{
    self endon( "unloading" );
    self endon( "death" );
    _ID42407::_ID41104( level._ID794, 1000 );
    self _meth_828D( 0, 15 );
    self._ID11584 = 1;
    thread _ID42411::_ID40298();
}

_ID49729()
{
    level._ID49350 = _ID42411::_ID35195( "base_heli" );
    level._ID49350._ID18452 = 1;
    level._ID49350._ID12571 = 1;
    level._ID49350 thread _ID48289::_ID53152();
    level._ID49350 thread _ID42413::_ID9603();
    level._ID49350 thread _unknown_33A4( "cont_cmt_directhitshelo" );
    level._ID52295 = _ID42411::_ID35195( "base_btr2" );
    level._ID52295 thread _ID48289::_ID53152();
    level._ID52295 thread _ID42411::_ID40197( "spotlight spotlight_turret" );
    level._ID52295 thread _unknown_33C9( "cont_cmt_btrdestroyed" );
    level._ID51916 = _ID42411::_ID35195( "base_truck1" );
    level._ID51916 thread _ID48289::_ID53152();
    level._ID51916 thread _unknown_33E4( "cont_cmt_directhitjeep" );
    thread _unknown_3532();
}

_ID45699()
{
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID12445();
        var_2 _ID42407::_ID32315( "g" );
        var_2._ID764 = 200;
        var_2._ID11575 = 1;
        var_2 _ID42407::_ID32226( 0 );
        var_2 _ID42407::_ID32324( 0 );
    }

    var_clear_2
    var_clear_0
    level._ID28543 _ID42407::_ID32315( "r" );
    _ID42237::_ID14413( "obj_base_entrance" );
    _ID42237::_ID14402( "everyone_set_green" );
    level._ID28543 _ID42407::_ID32315( "g" );
    _ID42237::_ID14413( "base_alerted" );
    var_0 = _func_0DE( "allies" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2._ID11575 = undefined;
        var_2 _ID42407::_ID32226( 1 );
        var_2 _ID42407::_ID32324( 1 );
    }

    var_clear_1
    var_clear_0
}

_ID44899()
{
    while ( !_func_02F( level._ID794._ID20494 ) && !_ID42237::_ID14385( "obj_base_entrance" ) )
        wait 0.05;

    thread _ID42411::_ID17021( level._ID52295 );
    thread _ID42411::_ID17021( level._ID51916 );
}

_ID53705()
{
    var_0["ai_eventDistExplosion"] = [];
    var_0["ai_eventDistExplosion"]["spotted"] = 0;
    var_0["ai_eventDistExplosion"]["hidden"] = 0;
    _ID42389::_ID36234( var_0 );
    _ID42237::_ID14413( "done_with_exploding_trees" );
    wait 1;
    var_0["ai_eventDistExplosion"] = [];
    var_0["ai_eventDistExplosion"]["spotted"] = level._ID54069;
    var_0["ai_eventDistExplosion"]["hidden"] = level._ID54069;
    _ID42389::_ID36234( var_0 );
}

_ID43295( var_0 )
{
    if ( !_func_02F( level._ID43829 ) )
        level._ID43829 = _func_03D();
    else if ( _func_03D() < level._ID43829 + 15000 )
        return;

    level._ID43829 = _func_03D();
    var_1 = _func_0DE( "allies" );
    var_1[_func_0B7( var_1.size )] _ID42407::_ID9527( "order_move_combat" );
}

_ID52763( var_0 )
{
    self endon( "death" );
    self _meth_81B2( var_0 );
    self._ID287 = 1;
    self._ID511 = 1;
    self._ID452 = 96;
    self waittill( "goal" );

    while ( self _meth_81CA( level._ID794 ) )
        wait 1;

    self _meth_8058();
}

_ID46412( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( "leaving_village" );
    self _meth_81B2( var_0 );
    self._ID287 = 1;
    self._ID511 = 1;
    self._ID452 = 32;
    self waittill( "goal" );

    while ( self _meth_81CA( level._ID794 ) )
        wait 1;

    self _meth_8058();
}

_ID43828( var_0, var_1, var_2 )
{
    self notify( "stop_barney" );
    self endon( "stop_barney" );
    self endon( "death" );
    self _meth_81B7();
    thread _unknown_3A1C();
    self._ID450 = 200;
    self._ID452 = 300;
    self._ID381 = 0;

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        var_3 = level._ID794._ID740;
        var_4 = _func_119( var_1 - var_3 );
        var_5 = var_4 * 400;
        var_6 = var_5 + var_3;
        self _meth_81B2( var_6 );
        wait 0.5;
    }

    self notify( "stop_adjust_movement_speed" );
    self._ID24424 = 1.0;
    self _meth_81B2( var_1 );

    if ( _func_02F( var_2 ) )
        self _meth_81B4( var_2 );
}

_ID45384()
{
    _ID42237::_ID14413( "going_down_ridge" );
    var_0 = 60;
    var_1 = var_0;
    var_2 = 0.9;
    var_3 = 1;

    for (;;)
    {
        var_4 = level._ID28543 _meth_80AF();

        if ( !_ID42407::_ID27540( var_4, var_2, var_3 ) )
        {
            var_0--;

            if ( var_0 <= 0 )
                break;
        }
        else
            var_0 = var_1;

        wait 0.05;
    }

    level._ID28543 _ID42407::_ID14803( "aug_scope_arctic", "primary" );
}

_ID46770()
{

}

_ID46519()
{
    self _meth_8143( "axis" );
    _ID42237::_ID41098( "unloaded", "death" );
    self._ID511 = 1;
}

_ID44645()
{
    level endon( "price_starts_moving" );
    _ID42237::_ID14413( "_stealth_spotted" );
    level._ID28543 _ID42407::_ID3136();
}

_ID43336()
{
    var_0 = _ID42237::_ID16638( "price_intro_talk_struct", "script_noteworthy" );
    var_0 thread _unknown_3899();
    var_0 _ID42259::_ID3074( level._ID28543, "intro" );
    level._ID28543 _meth_8583();
    var_0 _ID42259::_ID3111( level._ID28543, "intro" );
    level._ID28543 _meth_8582();
    _ID42237::_ID14402( "price_starts_moving" );
    level._ID28543 notify( "_utility::follow_path" );
    level._ID28543 notify( "stop_going_to_node" );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 thread _ID42407::_ID12467();
    var_1 = _func_0C8( "price_smart_path_to_road", "targetname" );
    level._ID28543 thread _unknown_3AE7( var_1 );
}

_ID44121()
{
    _ID42237::_ID14413( "price_on_ridge" );
    wait 3;
    _ID42237::_ID14413( "going_down_ridge" );
    var_0 = _func_1A1( "ridge_price_overlook_org", "targetname" );
    var_0 _ID42259::_ID3111( level._ID28543, "slide" );
    level._ID28543 thread _ID42407::_ID10896();

    if ( !_ID42237::_ID14385( "everyone_set_green" ) )
        level._ID28543 _ID42407::_ID32315( "r" );

    level._ID28543 _ID42407::_ID12445();
    _ID42407::_ID1805( "price_in_village_start" );
}

_ID53987()
{
    _ID42237::_ID14413( "price_splits_off" );
    wait 2;

    if ( !_func_1A7( level._ID49350 ) )
        return;

    var_0 = ( -13500, 876, 749 );
    var_1 = _ID42237::_ID16638( "kill_heli_fail_safe", "targetname" );

    if ( _func_02F( var_1 ) )
        var_0 = var_1._ID740;

    var_2 = _func_1C8( "zippy_rockets", var_0, level._ID49350._ID740 );
    var_2 _meth_81E5( level._ID49350 );
}

_ID50664( var_0 )
{
    if ( !_func_02F( level._ID49526 ) )
        return;

    var_1 = _func_11F( level._ID49526._ID65 );
    var_2 = var_1 * 10000;
    var_3 = var_2 + level._ID49526._ID740;

    if ( _func_02F( level._ID794._ID20494 ) )
    {
        _func_156( _ID42237::_ID16299( "thermal_missle_flash_inverted" ), var_0._ID740 );
        var_4 = _func_1C8( "zippy_rockets_persistent", var_0._ID740, var_3 );
    }
    else
    {
        _func_156( _ID42237::_ID16299( "missle_flash" ), var_0._ID740 );
        var_4 = _func_1C8( "zippy_rockets_persistent", var_0._ID740, var_3 );
    }

    var_0 _meth_80A1( "gauntlet_fires" );
    var_0 _meth_80A1( "gauntlet_ignition" );
    var_4 _meth_81E5( level.uav_target );
    thread _unknown_3AF8( var_4 );
    return var_4;
}

_ID32983()
{
    level endon( "mission failed" );

    for (;;)
    {
        _ID42237::_ID14413( "player_leaving_map" );
        _ID42407::_ID11090( "hint_dont_leave_price", 5 );
        wait 5;
    }
}

_ID32982()
{
    _ID42237::_ID14413( "player_left_map" );
    level notify( "mission failed" );
    _func_034( "ui_deadquote", &"CONTINGENCY_DONT_LEAVE_FAILURE" );

    if ( _func_02F( level._ID9455 ) )
    {
        level._ID9455 _meth_808F();
        _ID42313::_ID49709();
    }

    _ID42407::_ID23778();
}

_ID43552()
{
    _ID42237::_ID14413( "truckguys_dead" );
    _ID42237::_ID14413( "cross_bridge_patrol_dead" );
    _ID42237::_ID14413( "first_stragglers_dead" );
    _ID42237::_ID14413( "rightside_patrol_dead" );
    _ID42237::_ID14402( "all_bridge_guys_dead" );
}

_ID33877()
{
    if ( _ID42237::_ID14385( "player_returning_to_map" ) )
        return 1;
    else
        return 0;
}

_ID48862()
{
    var_0 = 0;

    if ( _func_02F( level._ID45535 ) )
        var_0 = 1;

    if ( !_func_1A7( level._ID49526 ) )
        var_0 = 1;

    if ( _func_02F( level._ID794._ID51771 ) )
        var_0 = 1;

    if ( _ID42237::_ID14385( "base_alerted" ) )
        var_0 = 1;

    if ( level._ID794 _meth_831C() == "remote_missile_detonator" )
        var_0 = 1;

    return var_0;
}

_ID45901()
{
    var_0 = 0;

    if ( level._ID794 _meth_831C() == "remote_missile_detonator" )
        var_0 = 1;

    if ( level._ID47334 + 5000 < _func_03D() )
        var_0 = 1;

    return var_0;
}

_ID51687( var_0, var_1 )
{
    _ID42475::_ID34575( "aud_start_mix_missile_uav" );

    if ( _func_02F( var_1 ) )
    {
        var_2 = 184960000;
        var_3 = _func_0F5( var_0._ID740, level._ID49526._ID740 );
        var_4 = _func_0EE( var_3 / var_2, 0.1, 1 );
        _ID42407::_ID10226( var_4, ::_unknown_3B87, var_1 );
    }

    _unknown_3B91( var_0 );
}

stinger_think( var_0 )
{
    var_1 = level.uav_target._ID740;
    var_2 = 999999999;

    for (;;)
    {
        var_3 = _func_0F3( var_0._ID740, level.uav_target._ID740 );

        if ( var_3 <= 300 )
            break;

        var_1 = level.uav_target._ID740;
        wait 0.05;
    }

    var_0 _meth_80B7();
    _func_156( _ID42237::_ID16299( "uav_explosion" ), var_1 );
    level.uav_target thread _ID42407::_ID27080( "uav_explode" );
    level._ID45535 = 1;
    level._ID794 _ID50736::_ID50531( 0, 1 );

    if ( _func_02F( level._ID49526 ) )
        level notify( "uav_destroyed" );

    _ID42475::_ID34575( "aud_stop_mix_missile_uav" );

    if ( _func_02F( level._ID49526 ) )
        level._ID49526 _meth_80B7();
}

_ID49309()
{
    if ( !_func_1A7( level._ID49526 ) )
        return;

    if ( _func_02F( level._ID45535 ) )
        return;

    var_0 = _func_1A2( "uav_focus_point", "targetname" );
    var_1 = _func_1A1( "village_focus_point", "script_noteworthy" );
    level endon( "uav_destroyed" );
    level._ID49526 endon( "death" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "leaving_village" ) )
        {
            var_2 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
            var_3 = var_2._ID740;
        }
        else
            var_3 = var_1._ID740;

        var_4 = _func_11A( var_3 - level._ID49526._ID740 );
        level._ID39406 _meth_82B8( level._ID49526._ID740, 0.1, 0, 0 );
        level._ID39406 _meth_82BF( var_4, 0.1, 0, 0 );
        wait 0.05;
    }
}

_ID47737()
{
    level._ID45535 = undefined;
    level._ID794 _ID50736::_ID54399( 0, "remote_missile_detonator" );
    level._ID43997 = 0;
    level._ID49157 = 14;
    var_0 = 0;

    if ( !_func_1A7( level._ID49526 ) )
    {
        var_0 = 1;
        level._ID49526 = _ID42411::_ID35196( "second_uav" );
        level._ID49526 _meth_807C( "uav_engine_loop" );
    }

    if ( !_func_02F( level._ID39406 ) )
    {
        level._ID39406 = _func_06A( "script_model", level._ID49526._ID740 );
        level._ID39406 _meth_80B8( "tag_origin" );
    }

    if ( !_func_02F( level.uav_target ) )
        level.uav_target = _func_06A( "script_origin", level._ID49526._ID740 );

    level.uav_target._ID740 = level._ID49526._ID740;
    level.uav_target _meth_8053( level._ID49526 );

    if ( var_0 )
        thread _unknown_3DC7();

    var_1 = level._ID794 _meth_8316();
    var_2 = 0;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 == "remote_missile_detonator" )
            var_2 = 1;
    }

    var_clear_2
    var_clear_0

    if ( !var_2 )
    {
        level._ID794 _meth_8319( "remote_missile_detonator" );
        level._ID794 _meth_8313( 4, "weapon", "remote_missile_detonator" );
        _func_032( "ui_updateactionslot", 1 );
    }
}

_ID53148()
{
    var_0 = [];
    var_0[var_0.size] = "cont_ru0_woods";
    var_0[var_0.size] = "cont_ru1_woods";
    var_0[var_0.size] = "cont_ru2_woods";
    var_0[var_0.size] = "cont_ru3_woods";
    var_0[var_0.size] = "cont_ru4_woods";

    while ( !_ID42237::_ID14385( "approaching_ridge" ) )
    {
        wait(_func_0BA( 2, 4 ));
        var_1 = _func_1A2( "cqb_patrol", "script_noteworthy" );
        var_1 = _ID42237::_ID3320( var_1 );
        var_2 = var_1;

        for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
        {
            var_3 = var_2[var_5];

            if ( _func_1A7( var_3 ) && !_ID42237::_ID14385( "_stealth_spotted" ) && !var_3 _ID42407::_ID13019( "_stealth_attack" ) )
            {
                var_4 = var_0[_func_0B7( var_0.size )];
                var_3 _meth_80A1( var_4 );
                break;
            }
        }

        var_clear_2
        var_clear_0
    }
}

_ID43434()
{
    if ( !_ID42389::_ID36337() )
        return;

    level endon( "someone_became_alert" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_airsupport" );
    wait 1;
    _ID42407::_ID28864( "cont_cmt_almostinpos" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_rogerthat" );
}

_ID45293()
{
    level._ID52258 = 1;
    wait 2;
    level._ID28543 _ID42407::_ID10805( "cont_pri_bollocks" );
    _ID42407::_ID28864( "cont_cmt_whathappened" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_mobilesaminvillage" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_uavsharpish" );
    level._ID52258 = undefined;
}

_ID50610()
{
    if ( _ID42237::_ID14385( "start_village_fight" ) )
        return;

    level endon( "start_village_fight" );

    while ( !_func_1A7( level._ID53312 ) )
        wait 1;

    level._ID28543 _ID42407::_ID41104( level._ID53312, 300 );
    level._ID28543 _ID42407::_ID41104( level._ID794, 600 );
    level._ID28543 _ID42407::_ID10805( "cont_pri_nicework" );
    level._ID53312 _ID42407::_ID10805( "cont_rst_getmoving" );
}

_ID50485()
{
    self endon( "death" );
    self waittill( "jumpedout" );
    self._ID452 = 8000;
}

_ID43806( var_0 )
{
    self endon( "stop_smart_path_following" );
    self._ID48051 = var_0;
    self _meth_81B1( var_0 );

    if ( !_func_02F( var_0._ID1191 ) )
        return;

    var_1 = _func_0C8( var_0._ID1191, "targetname" );

    for (;;)
    {
        var_2 = undefined;
        var_3 = undefined;
        var_4 = _func_1A2( var_1._ID31273, "script_linkname" );
        var_5 = var_4;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( var_6._ID170 == "trigger_multiple_flag_set" )
                var_2 = var_6;

            if ( var_6._ID170 == "info_volume" )
                var_3 = var_6;
        }

        var_clear_2
        var_clear_0
        _ID42237::_ID14413( var_2._ID31190 );
        var_3 _ID42407::_ID41162();
        level notify( var_1._ID1193 );

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
            _ID42237::_ID14426( "_stealth_spotted" );

        self _meth_81B1( var_1 );
        self._ID48051 = var_1;

        if ( !_func_02F( var_1._ID1191 ) )
            break;

        var_1 = _func_0C8( var_1._ID1191, "targetname" );
    }
}

_ID43998( var_0 )
{
    var_1 = var_0;

    for (;;)
    {
        if ( _func_02F( var_1._ID31273 ) )
        {
            var_2 = _func_1A1( var_1._ID31273, "script_linkname" );
            var_2 notify( "explode" );
        }

        wait 0.2;

        if ( _func_02F( var_1._ID916 ) )
            wait(var_1._ID916);

        if ( _func_02F( var_1._ID1191 ) )
        {
            var_3 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
            var_1 = var_3;
            continue;
        }

        break;
    }
}

_ID46845()
{
    wait 3;
    level._ID44806 = _ID42411::_ID35196( "btr_tree_destroyer" );
    level._ID44806 _ID42411::_ID40197( "spotlight spotlight_turret" );
    level._ID44806 thread _unknown_4225();
    level._ID44806 thread _ID42413::_ID9604();
    level._ID44806 _meth_85C1( 0.1 );
    level._ID44806 _meth_85C5( 3.0 );
    level._ID44806 _meth_85C7( 0.3 );
    level._ID44806 thread _ID42407::_ID27079( "scn_con_bmp2_skid" );
}

_ID54181()
{
    self notify( "stop_adjust_movement_speed" );
    self endon( "death" );
    self endon( "stop_adjust_movement_speed" );

    for (;;)
    {
        wait(_func_0BA( 0.5, 1.5 ));

        while ( _unknown_423C() )
        {
            self._ID24424 = 2.5;
            wait 0.05;
        }

        self._ID24424 = 1.0;
    }
}

_ID53164()
{
    if ( _func_0F5( self._ID740, self._ID451 ) <= level._ID47460 )
        return 0;

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), self._ID740, level._ID8760["70"] ) )
        return 0;

    return 1;
}

_ID45525()
{
    level endon( "player_slid_down" );
    _ID42237::_ID14413( "returning_to_btrs" );
    level._ID44806 _meth_826C( level._ID794 );
    var_0 = _func_0B9( 2, 5 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        level._ID44806 _meth_8272();
        wait 0.35;
    }

    level._ID52609 _meth_826C( level._ID794 );
    wait(_func_0BA( 0.2, 0.5 ));
    var_0 = _func_0B9( 2, 4 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        level._ID52609 _meth_8272();
        level._ID44806 _meth_8272();
        wait 0.35;
    }

    level._ID794 _meth_8057( level._ID794._ID486 + 1000, level._ID44806._ID740 );
}

_ID53449()
{
    wait 10;
    level endon( "safe_from_btrs" );

    for (;;)
    {
        level._ID794 _ID42407::_ID41106( level._ID28543, 1000 );
        var_0 = _func_119( level._ID794._ID740 - level._ID28543._ID740 );
        var_1 = _func_11F( level._ID28543._ID65 );
        var_2 = _func_0FB( var_1, var_0 );

        if ( var_2 < 0 )
            break;

        wait 0.1;
    }

    level notify( "shoot_at_player" );
    self _meth_826C( level._ID794 );
    var_3 = _func_0B9( 2, 5 );

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        self _meth_8272();
        wait 0.35;
    }

    level._ID52609 _meth_826C( level._ID794 );
    wait(_func_0BA( 0.2, 0.5 ));
    var_3 = _func_0B9( 2, 4 );

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        level._ID52609 _meth_8272();
        self _meth_8272();
        wait 0.35;
    }

    level._ID794 _meth_8057( level._ID794._ID486 + 1000, self._ID740 );
}

_ID48739()
{
    level endon( "shoot_at_player" );
    _ID42237::_ID14413( "end_of_tree_explosions" );
    wait 2;
    var_0 = _func_1A2( "trigger_tree_explosion", "targetname" );
    thread _unknown_446E( var_0 );
    level._ID44806 _meth_8272();
    wait 0.2;
    thread _unknown_447D( var_0 );
    level._ID44806 _meth_8272();
    wait 0.2;
    thread _unknown_448C( var_0 );
    level._ID44806 _meth_8272();
    wait 1;
    thread _unknown_4499( var_0 );
    level._ID44806 _meth_8272();
    wait 0.5;
    level._ID44806 _meth_8272();
    wait 1;
    thread _unknown_44B0( var_0 );
    level._ID44806 _meth_8272();
    wait 0.2;
    thread _unknown_44BF( var_0 );
    level._ID44806 _meth_8272();
    wait 0.2;
    level._ID44806 _meth_8272();
    wait 0.5;
    thread _unknown_44D7( var_0 );
    level._ID44806 _meth_8272();
    wait 0.8;
    level._ID44806 _meth_8272();
    wait 1;
    level._ID44806 _meth_8272();
    wait 1;
    level._ID44806 _meth_8272();
    wait 2;
    level._ID44806 _meth_8272();
    _ID42237::_ID14402( "done_with_exploding_trees" );
}

_ID51227( var_0 )
{
    var_1 = var_0[_func_0B7( var_0.size )];
    var_1 _meth_80A1( "contingency_tree_impact" );
    var_1 _meth_80A1( "contingency_tree_fall" );
}

_ID44543()
{
    level endon( "shoot_at_player" );
    var_0 = _func_1A1( self._ID1191, "targetname" );

    if ( _unknown_4545( var_0 ) )
        return;
}

_ID50420( var_0 )
{
    level endon( "shoot_at_player" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _unknown_460A( var_0 );
    var_1 = var_4[0];
    var_2 = var_4[1];
    var_3 = var_4[2];
    var_clear_0

    if ( !_func_02F( var_1 ) || !_func_02F( var_2 ) )
        return 0;

    var_0 _ID42407::_ID3428();
    var_5 = [];

    if ( _func_02F( var_0._ID1191 ) )
        var_5 = _func_1A2( var_0._ID1191, "targetname" );

    var_0.collision_ground = undefined;
    var_6 = [];
    var_7 = var_5;

    for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
    {
        var_8 = var_7[var_9];
        var_8._ID3189 = "tree_snow_react";
        var_8 _ID42259::_ID32556();

        if ( var_8._ID170 == "script_model" )
        {
            var_6[var_6.size] = var_8;
            continue;
        }

        if ( var_8._ID170 == "script_brushmodel" )
            var_0.collision_ground = var_8;
    }

    var_clear_2
    var_clear_0
    var_10 = var_6;

    for ( var_15 = _func_1DA( var_10 ); _func_02F( var_15 ); var_15 = _func_1BF( var_10, var_15 ) )
    {
        var_11 = var_10[var_15];
        var_12 = undefined;
        var_13 = _unknown_46AE( var_11 );
        var_12 = var_13[0];
        var_14 = var_13[1];
        var_clear_2

        if ( !_func_02F( var_12 ) )
            continue;

        var_11 thread _ID42259::_ID3044( var_11, var_12, "stop idle" );
    }

    var_clear_5
    var_clear_0
    var_16 = 0;

    if ( _func_02F( var_0._ID922 ) && var_0._ID922 == "hits_the_ground" )
        var_16 = 1;

    if ( var_16 )
        var_0.collision_ground _meth_82C9();

    var_0 thread _ID42259::_ID3044( var_0, var_1, "stop idle" );
    self waittill( "trigger" );
    var_17 = level._ID794 _meth_80AF();
    thread _ID42237::_ID27077( "scn_cont_btr_gun_whizby", var_17 );
    var_0 notify( "stop idle" );
    _ID42407::_ID3319( var_6, "stop idle" );
    var_0 _meth_80B8( var_3 );
    var_0 _ID42259::_ID3018( var_0, var_2 );

    if ( _ID42407::_ID18252( var_0._ID669, "tag_target" ) )
    {
        var_18 = var_0 _meth_818C( "tag_attack" );

        if ( _func_1A7( level._ID52609 ) )
        {
            level._ID52609 _meth_826B( var_18 );
            level._ID52609 _meth_8272();
        }

        if ( _func_1A7( level._ID44806 ) )
        {
            level._ID44806 _meth_826B( var_18 );
            level._ID44806 _meth_8272();
        }
    }

    var_0 _meth_80A1( "contingency_tree_impact" );
    var_0 _meth_80A1( "contingency_tree_fall" );
    var_19 = var_6;

    for ( var_22 = _func_1DA( var_19 ); _func_02F( var_22 ); var_22 = _func_1BF( var_19, var_22 ) )
    {
        var_11 = var_19[var_22];
        wait 1;
        var_20 = undefined;
        var_21 = _unknown_47A2( var_11 );
        var_14 = var_21[0];
        var_20 = var_21[1];
        var_14 = var_21[2];
        var_clear_1

        if ( !_func_02F( var_20 ) )
            continue;

        var_11 thread _ID42259::_ID3111( var_11, var_20 );
    }

    var_clear_3
    var_clear_0
    var_0 _ID42259::_ID3111( var_0, var_2 );
    waitframe;
    return 1;
}

h2_tree_hit_ground_check( var_0 )
{
    level endon( "shoot_at_player" );

    if ( level._ID794 _meth_80B0( var_0.collision_ground ) )
        level._ID794 _meth_8058();

    var_0.collision_ground _meth_82C8();
    var_0 _meth_80A1( "contingency_tree_ground" );
}

_ID52925( var_0 )
{
    switch ( var_0._ID669 )
    {

    }

    case "foliage_contingency_snow_tall":
    case "foliage_contingency_pine_snow_lg_b":
    case "h2_foliage_contingency_pine_snow_lg_c":
    case "h2_foliage_contingency_pine_snow_sm_b":
    case "foliage_contingency_snow_tall_animated":
    default:
}

_ID44202()
{
    var_0 = 1;

    for (;;)
    {
        level waittill( "_stealth_saw_corpse" );
        wait 2;

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
            continue;
    }

    if ( var_0 )
    {
        _ID42407::_ID28864( "cont_pri_foundabody" );
        var_0 = 0;
    }
    else
    {
        _ID42407::_ID28864( "cont_pri_foundabody2" );
        var_0 = 1;
    }

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level endon( "_stealth_spotted" );
    wait 10;
    _ID42407::_ID28864( "cont_pri_sametime" );
}

_ID45142()
{
    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    wait 3;

    if ( !_ID42389::_ID36337() )
        return;

    if ( !_func_02F( level._ID44250 ) )
        level._ID44250 = _func_03D();
    else if ( _func_03D() < level._ID44250 + 15000 )
        return;

    level._ID44250 = _func_03D();
    level notify( "player kill dialog" );
}

_ID46140()
{
    var_0 = [];
    var_0[var_0.size] = "cont_pri_good";
    var_0[var_0.size] = "cont_pri_beautiful";
    var_0[var_0.size] = "cont_pri_nicelydone";
    var_0[var_0.size] = "cont_pri_welldone";
    var_0[var_0.size] = "cont_pri_goodwork";
    var_0[var_0.size] = "cont_pri_impressive";
    var_1 = 0;

    for (;;)
    {
        level waittill( "player kill dialog" );
        _ID42407::_ID28864( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;
    }
}

_ID43702()
{
    var_0 = 0;
    var_1 = [];
    var_1[var_1.size] = "cont_pri_gotone";
    var_1[var_1.size] = "cont_pri_hesdown2";
    var_1[var_1.size] = "cont_pri_tangodown";
    var_1[var_1.size] = "cont_pri_goodnight";
    var_1[var_1.size] = "cont_pri_targeteliminated";
    var_1[var_1.size] = "cont_pri_targetdown";

    for (;;)
    {
        level waittill( "dialog_price_kill" );
        wait 1.5;

        if ( _func_02F( level._ID48026 ) )
        {
            if ( _func_03D() < level._ID48026 + 15000 )
                continue;
        }

        if ( !_func_02F( level._ID44250 ) )
            level._ID44250 = _func_03D();
        else if ( _func_03D() < level._ID44250 + 3000 )
            continue;

        level._ID44250 = _func_03D();
        var_2 = var_1[var_0];
        _ID42407::_ID28864( var_2 );
        var_0++;

        if ( var_0 >= var_1.size )
            var_0 = 0;
    }
}

_ID48394()
{
    var_0 = 0;
    var_1 = [];
    var_1[var_1.size] = "cont_pri_naptime";
    var_1[var_1.size] = "cont_pri_downboy";

    for (;;)
    {
        level waittill( "dialog_price_kill_dog" );
        wait 1.5;

        if ( _func_02F( level._ID48026 ) )
        {
            if ( _func_03D() < level._ID48026 + 15000 )
                continue;
        }

        if ( !_func_02F( level._ID44250 ) )
            level._ID44250 = _func_03D();
        else if ( _func_03D() < level._ID44250 + 3000 )
            continue;

        level._ID44250 = _func_03D();
        var_2 = var_1[var_0];
        _ID42407::_ID28864( var_2 );
        var_0++;

        if ( var_0 >= var_1.size )
            var_0 = 0;
    }
}

_ID51228()
{
    self waittill( "damage",  var_1, var_1  );

    if ( !_func_02F( var_1 ) )
        return;

    if ( _func_1B3( var_1 ) && _func_02F( self._ID31114 ) )
    {
        if ( self._ID31114 != "blocking_stationary_dead" )
            thread _unknown_4CDC( self._ID31114 );
    }
}

_ID48045()
{
    self waittill( "death",  var_0  );

    if ( !_func_02F( var_0 ) )
        return;

    if ( _func_1B3( var_0 ) )
    {
        thread _unknown_4B01();
        return;
    }

    if ( level._ID28543 == var_0 && !_func_02F( self._ID45806 ) )
    {
        if ( self._ID1244 == "dog" )
            level notify( "dialog_price_kill_dog" );
        else
            level notify( "dialog_price_kill" );
    }
}

_ID51808()
{
    if ( _ID42237::_ID14385( "player_on_ridge" ) )
        return;

    level endon( "player_on_ridge" );
    var_0 = [];
    var_0[var_0.size] = "cont_pri_giveawayposition";
    var_0[var_0.size] = "cont_pri_lowprofile";
    var_0[var_0.size] = "cont_pri_getuskilled";
    var_0[var_0.size] = "cont_pri_thewordstealth";
    var_1 = 0;

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_spotted" );
        wait 1;
        _ID42237::_ID14426( "_stealth_spotted" );
        wait 1;
        _ID42407::_ID28864( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;
    }
}

_ID44368()
{
    var_0 = [];
    var_0[var_0.size] = "cont_pri_goloud";
    var_0[var_0.size] = "cont_pri_ontous";
    var_0[var_0.size] = "cont_pri_werespotted";
    var_0 = _ID42237::_ID3320( var_0 );
    var_1 = 0;

    for (;;)
    {
        _ID42237::_ID14413( "_stealth_spotted" );
        _ID42407::_ID28876();
        _ID42407::_ID28864( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        wait 1;
        _ID42237::_ID14426( "_stealth_spotted" );
        wait 1;
    }
}

_ID50287()
{
    wait 0.5;
    level._ID28543 thread _ID42407::_ID10896();
    level._ID28543 _meth_820F();

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    level endon( "someone_became_alert" );

    if ( _ID42237::_ID14385( "saying_patience" ) )
        return;

    level endon( "saying_patience" );
    _ID42237::_ID14402( "saying_contact" );
    _ID42407::_ID28864( "cont_pri_30metersfront" );
    wait 2;
    _ID42407::_ID28864( "cont_pri_fivemen" );
    wait 0.1;
    _ID42407::_ID28864( "cont_cmt_hatedogs" );
    wait 0.4;
    _ID42407::_ID28864( "cont_pri_russiandogs" );
    _ID42407::_ID28864( "cont_cmt_haveyouback" );
    _ID42407::_ID28864( "cont_pri_rogerthat2" );
    _ID42237::_ID14388( "saying_contact" );
    level._ID28543 thread _ID42407::_ID12467();
}

_ID46016()
{
    wait 6;

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    level endon( "someone_became_alert" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_intelwasoff" );
    _ID42407::_ID28864( "cont_cmt_rogerthat" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_foundtransport" );
    _ID42407::_ID28864( "cont_cmt_workingonit" );
}

_ID48938()
{
    level endon( "_stealth_spotted" );
    level endon( "someone_became_alert" );
    level waittill( "price_starts_following" );

    if ( _ID42237::_ID14385( "saying_contact" ) )
        _ID42237::_ID14426( "saying_contact" );

    if ( _ID42237::_ID14385( "said_convoy_coming" ) )
        return;

    _ID42407::_ID28864( "cont_pri_pickoffstragglers" );
}

_ID50927()
{
    _ID42237::_ID14413( "cross_bridge_patrol_dead" );
    _ID42237::_ID14413( "rightside_patrol_dead" );
    _ID42237::_ID14402( "second_group_of_stragglers_are_dead" );
}

_ID45127()
{
    if ( _ID42237::_ID14385( "second_group_of_stragglers_are_dead" ) )
        return;

    level endon( "second_group_of_stragglers_are_dead" );
    level endon( "_stealth_spotted" );
    _ID42237::_ID14413( "price_in_position_remaining_group" );
    thread _ID49478();
    _ID42407::_ID28864( "cont_pri_imready" );

    if ( _ID42237::_ID14385( "cross_bridge_patrol_dead" ) || _ID42237::_ID14385( "rightside_patrol_dead" ) )
        return;

    _ID42407::_ID28864( "cont_pri_twoonleft" );
}

_ID54008()
{
    if ( _func_02F( self._ID916 ) )
        wait(self._ID916);

    _ID42407::_ID35014();
}

_ID49478()
{
    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level endon( "_stealth_spotted" );
    _ID42237::_ID14413( "patience" );
    _ID42237::_ID14402( "saying_patience" );
    level notify( "saying_patience" );
    level._ID28543 thread _ID42407::_ID12467();
    _ID42407::_ID28864( "cont_pri_patience" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "start_truck_patrol" ) )
        _ID42407::_ID28864( "cont_pri_sametime" );

    _ID42237::_ID14413( "price_in_position_first_group" );
    _ID42237::_ID14413( "first_stragglers_stopped" );
    _ID42237::_ID14413( "last_truck_left" );
    _unknown_5164( 1 );
    _ID42407::_ID4422( "first_stragglers" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    level endon( "someone_became_alert" );

    if ( _ID42237::_ID14385( "first_stragglers_dead" ) )
        return;

    level endon( "first_stragglers_dead" );
    thread _unknown_4F95();
    wait 1;
    _ID42237::_ID14413( "they_have_split_up" );
    _ID42407::_ID28864( "cont_pri_forasmoke" );
}

_ID47365()
{
    var_0 = _func_0DF( "axis", "all" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID922 ) && var_2._ID922 == "rightside_patrol" )
            var_2._ID1204 = 20000;
    }

    var_clear_2
    var_clear_0
    level._ID28543._ID507 = 0;
    level._ID794 waittill( "weapon_fired" );
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    var_0 = _func_0DF( "axis", "all" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2._ID45806 = 1;
        var_2._ID11566 = undefined;
        var_2._ID486 = 1;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "second_group_of_stragglers_are_dead" );
    _unknown_5075();
}

_ID43375()
{
    level._ID28543._ID507 = 0;
    level._ID794 waittill( "weapon_fired" );
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    var_0 = _func_0DF( "axis", "all" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID922 ) && var_2._ID922 == "first_stragglers" )
        {
            var_2._ID45806 = 1;
            var_2._ID11566 = undefined;
            level._ID28543._ID377 = var_2;
            var_2._ID486 = 1;
        }
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "first_stragglers_dead" );
    _unknown_50F4();
}

_ID44446()
{
    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level._ID28543._ID11575 = 1;
    level._ID28543._ID4867 = 1;
    level._ID28543._ID507 = 1;
}

_ID52827( var_0 )
{
    level endon( "_stealth_spotted" );
    level._ID28543._ID628 = 64000000;
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    var_1 = _func_0DF( "axis", "all" );

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( !_func_1A7( var_3 ) )
                continue;

            if ( _func_02F( var_3._ID31114 ) && var_3._ID31114 == var_0 )
            {
                var_3._ID11566 = undefined;
                var_3._ID1204 = 5000;

                if ( !_func_1A7( level._ID28543._ID322 ) )
                    level._ID28543._ID377 = var_3;

                var_3._ID486 = 1;
            }
        }

        var_clear_2
        var_clear_0
        wait 0.1;
    }

    _unknown_51EE();
}

_ID52400()
{
    if ( _ID42237::_ID14385( "player_on_ridge" ) )
        return;

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level._ID28543._ID11575 = 1;
    level._ID28543._ID4867 = 1;
    level._ID28543._ID628 = level._ID43611;
}

_ID46038()
{
    thread _unknown_5253();
    level._ID28543._ID507 = 1;
    level endon( "_stealth_spotted" );
    _ID42237::_ID14425( "last_jeep_arrived", 20 );
    wait 4;
    _unknown_53D2( 1 );
    _ID42407::_ID28864( "cont_pri_yourparachute" );
    _ID42237::_ID14402( "convoy_hide_section_complete" );
    _ID42407::_ID4439();
    thread _unknown_5287();
    level._ID28543._ID507 = 0;
    level._ID28543 thread _ID42407::_ID12467();
    var_0 = _func_0C8( "price_goes_halfway_across_bridge", "targetname" );
    level._ID28543 thread _unknown_4E0E( var_0 );
}

_ID46294()
{
    thread _ID42407::_ID28864( "cont_pri_keepmoving" );
}

_ID53765()
{
    level endon( "convoy_hide_section_complete" );
    _ID42237::_ID14413( "_stealth_spotted" );
    wait 1;
    _ID42237::_ID14426( "_stealth_spotted" );
    wait 2;
    level._ID28543 thread _ID42407::_ID12467();
    var_0 = _func_0C8( "price_goes_halfway_across_bridge", "targetname" );
    level._ID28543 thread _unknown_4E4D( var_0 );
}

_ID48077()
{
    _ID42407::_ID28864( "cont_pri_waitposition" );
}

_ID45165()
{
    level._ID794 waittill( "weapon_fired" );
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    level._ID28543._ID507 = 0;
    var_0 = _func_0DF( "axis", "all" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID922 ) && var_2._ID922 == "cross_bridge_patrol" )
        {
            var_2._ID45806 = 1;
            var_2._ID11566 = undefined;
            level._ID28543._ID377 = var_2;
            var_2._ID486 = 1;
        }
    }

    var_clear_2
    var_clear_0
}

_ID44565()
{
    level._ID794 endon( "weapon_fired" );
    _ID42237::_ID14413( "dialog_woods_first_patrol" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    level._ID28543 _ID42407::_ID28864( "cont_pri_letpass" );
}

_ID48668()
{
    _ID42237::_ID14413( "dialog_woods_first_dog_patrol" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    _ID42407::_ID4439();
    level._ID28543 _ID42407::_ID28864( "cont_pri_dogpatrol" );
}

_ID53461()
{
    _ID42237::_ID14413( "dialog_woods_first_stationary" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    if ( _ID42237::_ID14385( "first_stationary_dead" ) )
        return;

    _ID42407::_ID4439();
    level endon( "someone_became_alert" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_3manpatrol" );
    var_0 = level._ID794 _meth_831C();

    if ( var_0 != level._ID43216 && var_0 != level._ID53133 )
        level._ID28543 _ID42407::_ID28864( "cont_pri_alertenemies" );

    level._ID28543 _ID42407::_ID28864( "cont_pri_yourcall" );
    level._ID48026 = _func_03D();
}

_ID44595()
{
    var_0 = _func_0DF( "axis", "all" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2._ID922 ) )
            continue;

        if ( var_2._ID922 == "blocking_group_left_two" )
            var_2._ID1204 = 20000;
    }

    var_clear_2
    var_clear_0
    level._ID794 waittill( "weapon_fired" );
    level._ID28543._ID628 = 64000000;
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    var_0 = _func_0DF( "axis", "all" );

    while ( !_ID42237::_ID14385( "blocking_stationary_dead" ) )
    {
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];

            if ( !_func_1A7( var_2 ) )
                continue;

            if ( !_func_02F( var_2._ID922 ) )
                continue;

            if ( var_2._ID922 == "blocking_group_left_two" )
            {
                if ( !_func_1A7( level._ID28543._ID322 ) )
                    level._ID28543._ID377 = var_2;

                var_2._ID11566 = undefined;
                var_2._ID486 = 1;
            }
        }

        var_clear_3
        var_clear_2
        var_6 = var_0;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_2 = var_6[var_7];

            if ( !_func_1A7( var_2 ) )
                continue;

            if ( !_func_02F( var_2._ID922 ) )
                continue;

            if ( var_2._ID922 == "two_on_right" )
            {
                var_2._ID11566 = undefined;
                var_2._ID486 = 1;
            }
        }

        var_clear_1
        var_clear_0
        wait 0.1;
    }

    _unknown_5501();
}

_ID54078()
{
    _ID42237::_ID14413( "dialog_woods_blocking_stationary" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    if ( _ID42237::_ID14385( "blocking_stationary_dead" ) )
        return;

    _ID42407::_ID4439();
    level endon( "someone_became_alert" );
    thread _unknown_55D1();
    level._ID28543 _ID42407::_ID28864( "cont_pri_largepatrol12" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_cantslipby" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_twoonright" );
    level._ID48026 = _func_03D();
}

_ID54119()
{
    _ID42237::_ID14413( "dialog_woods_second_dog_patrol" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    _ID42407::_ID4439();
    var_0 = _func_1A2( "end_patrol", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_1A7( var_2 ) )
            var_2._ID1204 = 10000;
    }

    var_clear_2
    var_clear_0
    level._ID28543 _ID42407::_ID28864( "cont_pri_anotherdogpatrol" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_slippast" );
}

_ID44047()
{
    level endon( "_stealth_spotted" );
    level endon( "someone_became_alert" );
    _ID42237::_ID14402( "said_convoy_coming" );
    level notify( "said_convoy_coming" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_convoycoming" );
    wait 2;
    level._ID28543 _ID42407::_ID28864( "cont_pri_letthempass" );
}

_ID45458()
{
    var_0 = 0;
    var_1 = [];
    var_1[var_1.size] = "cont_pri_hideinwoods";
    var_1[var_1.size] = "cont_pri_getintowoods";
    var_1[var_1.size] = "cont_pri_theyrealerted";

    for (;;)
    {
        level waittill( "dialog_someone_is_alert" );
        var_2 = var_1[var_0];
        _ID42407::_ID28865();
        _ID42407::_ID28864( var_2 );

        if ( var_0 >= var_1.size )
            var_0 = 0;
    }
}

_ID49412()
{
    for (;;)
    {
        _ID42237::_ID14413( "someone_became_alert" );

        if ( !_ID42237::_ID14385( "price_is_hiding" ) )
        {
            level._ID28543._ID381 = 1;
            level._ID28543 _ID42407::_ID12445();
            level._ID28543 _ID42407::_ID32315( "y" );
            _ID42237::_ID14402( "price_is_hiding" );
        }

        _ID42237::_ID14426( "someone_became_alert" );
    }
}

_ID50697()
{
    self endon( "death" );
    _ID42407::_ID13031( "_stealth_normal" );
    self._ID511 = 0;

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    _ID42237::_ID14402( "someone_became_alert" );
    thread _unknown_580C();
    wait 1;

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level notify( "dialog_someone_is_alert" );
}

_ID43569()
{
    _unknown_582D( 3 );
    _ID42237::_ID14388( "someone_became_alert" );
}

_ID40939( var_0 )
{
    for (;;)
    {
        if ( _ID42389::_ID36337() )
        {
            wait(var_0);

            if ( _ID42389::_ID36337() )
                return;
        }

        wait 1;
    }
}

_ID47590()
{
    level._ID28543 _ID42407::_ID10805( "cont_pri_incoming" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_followme" );
    wait 2;
    level._ID28543 _ID42407::_ID10805( "cont_pri_intothewoods" );
}

_ID47157()
{
    level endon( "base_alerted" );
    _ID42237::_ID14413( "said_second_uav_in_position" );
    wait 1;
    _ID42237::_ID14413( "obj_base_entrance" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_belowcrane" );
    level._ID28543 _ID42407::_ID10805( "cont_pri_softendefenses" );
    _ID42407::_ID4422( "base" );
    wait 1;
    level._ID794 thread _ID42407::_ID11090( "hint_predator_drone", 6 );
    level._ID28543 _ID42407::_ID10805( "cont_pri_strobes" );
}

_ID50226()
{
    _ID42237::_ID14402( "saying_base_on_alert" );
    _ID42407::_ID28864( "cont_cmt_gotattention" );
    _ID42407::_ID28864( "cont_cmt_baseonalert" );
    _ID42407::_ID28864( "cont_cmt_betterhurry" );
    level._ID52258 = undefined;
    level._ID28543 _ID42407::_ID10805( "cont_pri_weremoving" );
    _ID42237::_ID14388( "saying_base_on_alert" );
}

_ID52205()
{
    _ID42237::_ID14413( "player_is_halfway_to_sub" );
    _ID42407::_ID28864( "cont_cmt_halwaythere" );

    if ( _func_1A7( level._ID49350 ) )
    {
        level._ID28543 _ID42407::_ID10805( "cont_pri_takeoutheli" );
        level._ID49350 _meth_8143( "axis" );
    }

    _ID42237::_ID14413( "base_troop_transport2_spawned" );
    wait 2;
    level._ID28543 _ID42407::_ID10805( "cont_pri_usehellfire" );
}

_ID43270( var_0 )
{
    level._ID794 endon( "death" );
    level endon( "kill_timer" );
    var_1 = 0;
    var_2 = [];
    var_2[var_2.size] = "cont_pri_subwontwait";
    var_2[var_2.size] = "cont_pri_gogogo";
    var_2[var_2.size] = "cont_pri_gettosub";
    var_2 = _ID42237::_ID3320( var_2 );
    var_3 = 0;
    var_4 = 30;

    if ( var_0 % var_4 != 0 )
        var_4 = var_0 % var_4;

    for (;;)
    {
        wait(var_4);
        var_1 += var_4;
        var_4 = 30;
        var_5 = var_0 - var_1;

        if ( var_5 == 90 )
        {
            _ID42407::_ID28864( "cont_cmt_90secs" );
            continue;
        }

        if ( var_5 == 60 )
        {
            _ID42407::_ID28864( "cont_cmt_60secs" );
            continue;
        }

        if ( var_5 == 30 )
        {
            _ID42407::_ID28864( "cont_cmt_30secs" );
            continue;
        }

        if ( var_5 == 0 )
            break;

        if ( _ID42237::_ID8201() )
        {
            level._ID28543 _ID42407::_ID10805( var_2[var_3] );
            var_3++;

            if ( var_3 >= var_2.size )
                var_3 = 0;
        }
    }
}

_ID45521()
{
    level._ID28543 _ID42407::_ID10805( "cont_pri_reachedsub" );
    _ID42407::_ID28864( "cont_cmt_rogerthat2" );
}

_ID50266( var_0 )
{
    var_1 = _func_03D();
    var_0 waittill( "death" );

    if ( _func_03D() > var_1 + 2000 )
        return;

    self _meth_80B8( "vehicle_btr80_snow_d" );
    _func_156( _ID42237::_ID16299( "btr_explosion" ), self._ID740 );
    _func_158( _ID42237::_ID16299( "btr_spotlight" ), self, "TAG_FRONT_LIGHT_RIGHT" );
    _func_158( _ID42237::_ID16299( "btr_spotlight" ), self, "TAG_TURRET_LIGHT" );
}

_ID47944()
{
    level endon( "saying_contact" );
    level._ID28543 _meth_820F( level._ID794 );
    _ID42407::_ID28864( "cont_cmt_barelysee" );
    level._ID28543 _meth_820F();
    level._ID28543 _ID42407::_ID28864( "cont_pri_foundroach" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_headnw" );
    wait 1;
    _ID42407::_ID28864( "cont_cmt_fareast" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_proceed" );
    wait 1;
    _ID42237::_ID14402( "said_follow_me" );
    _ID42407::_ID28864( "cont_pri_outofsight" );
}

_ID48803()
{
    if ( _ID42237::_ID14385( "stop_stealth_music" ) )
        return;

    level endon( "stop_stealth_music" );

    for (;;)
    {
        thread _unknown_5B7D();
        _ID42237::_ID14413( "_stealth_spotted" );
        _ID42407::_ID24584( 0.2 );
        wait 0.5;
        thread _unknown_5BA5();
        _ID42237::_ID14426( "_stealth_spotted" );
        _ID42407::_ID24584( 3 );
        wait 3.25;
    }
}

_ID48846()
{
    var_0 = _ID42407::_ID24586( "mus_contingency_stealth" );
    level endon( "_stealth_spotted" );

    if ( _ID42237::_ID14385( "stop_stealth_music" ) )
        return;

    level endon( "stop_stealth_music" );

    for (;;)
    {
        _ID42407::_ID24587( "mus_contingency_stealth" );
        wait(var_0);
        wait 10;
    }
}

_ID52010()
{
    var_0 = _ID42407::_ID24586( "mus_contingency_stealth_busted" );
    level endon( "_stealth_spotted" );

    if ( _ID42237::_ID14385( "stop_stealth_music" ) )
        return;

    level endon( "stop_stealth_music" );

    for (;;)
    {
        _ID42407::_ID24587( "mus_contingency_stealth_busted" );
        wait(var_0);
        wait 3;
    }
}

_ID43660()
{
    var_0 = _func_1A2( "cargo_heli_group2", "targetname" );
    var_1 = var_0;

    for ( var_7 = _func_1DA( var_1 ); _func_02F( var_7 ); var_7 = _func_1BF( var_1, var_7 ) )
    {
        var_2 = var_1[var_7];
        var_3 = _func_1A2( var_2._ID922, "targetname" );
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_5 _meth_805A();
        }

        var_clear_3
        var_clear_1
        var_2._ID48520 = var_3;
    }

    var_clear_6
    var_clear_0
    _ID42237::_ID14413( "cargo_choppers_2" );
    _ID42475::_ID34575( "aud_start_mix_2nd_heli_flyby" );
    thread _unknown_58E2();
    var_8 = 0;

    for ( var_9 = 1; var_9 > 0; var_9-- )
    {
        for ( var_10 = var_0.size; var_10 > 0; var_10-- )
        {
            if ( var_8 >= var_0.size )
                var_8 = 0;

            thread _unknown_5D25( var_0[var_8] );
            var_8++;
            wait(_func_0BA( 1.3, 1.8 ));
        }
    }
}

_ID48240()
{
    _ID42475::_ID34575( "aud_start_heli_flyby_echo" );
    var_0 = _func_1A2( "cargo_heli", "targetname" );
    var_1 = var_0;

    for ( var_7 = _func_1DA( var_1 ); _func_02F( var_7 ); var_7 = _func_1BF( var_1, var_7 ) )
    {
        var_2 = var_1[var_7];
        var_3 = _func_1A2( var_2._ID922, "targetname" );
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_5 _meth_805A();
        }

        var_clear_3
        var_clear_1
        var_2._ID48520 = var_3;
    }

    var_clear_6
    var_clear_0
    var_8 = 0;

    for ( var_9 = 1; var_9 > 0; var_9-- )
    {
        for ( var_10 = var_0.size; var_10 > 0; var_10-- )
        {
            if ( var_8 >= var_0.size )
                var_8 = 0;

            thread _unknown_5DC3( var_0[var_8] );
            var_8++;
            wait(_func_0BA( 1.3, 1.8 ));
        }
    }
}

_ID44493( var_0 )
{
    var_1 = _ID42411::_ID40260( var_0 );
    wait 0.1;
    var_2 = var_0._ID48520;
    var_3 = [];

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        var_3[var_4] = _func_06A( var_2[var_4]._ID170, var_2[var_4]._ID740 );
        var_3[var_4]._ID65 = var_2[var_4]._ID65;

        if ( var_3[var_4]._ID170 == "script_model" )
            var_3[var_4] _meth_80B8( var_2[var_4]._ID669 );

        var_3[var_4] _meth_8053( var_1 );
    }

    wait 0.1;
    thread _ID42411::_ID17021( var_1 );
    var_1 waittill( "death" );
    var_5 = var_3;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID46455( var_0, var_1, var_2, var_3 )
{
    var_4 = "TAG_WEAPON_CHEST";
    var_5 = [];
    var_5[var_5.size] = self;
    var_0 _ID42259::_ID3067( var_5, "at4_fire" );
    self._ID52 = 0;
    self notify( "finished_anim_reach" );
    var_0 thread _ID42259::_ID2996( var_5, "gravity", "at4_fire" );
    self waittill( "attach rocket" );
    _ID42407::_ID26720( "at4", "chest" );
    self waittill( "fire rocket" );
    var_6 = self _meth_818C( var_4 );
    var_7 = _func_1C8( "at4_straight", var_6, var_1._ID740 + var_2 );
    self waittill( "drop rocket" );
    var_8 = self _meth_818C( var_4 );
    var_9 = self _meth_818D( var_4 );
    _ID42407::_ID26720( "at4", "none" );

    if ( self._ID922 == "rasta" )
    {
        var_10 = _func_06A( "script_model", var_8 + ( 0, 0, -3 ) );
        var_10 _meth_80B8( "h2_weapon_at4" );
        var_10._ID65 = var_9 + ( 8, 0, 0 );
    }
    else
    {
        var_10 = _func_06A( "script_model", var_8 + ( 0, 0, -10 ) );
        var_10 _meth_80B8( "h2_weapon_at4" );
        var_10._ID65 = var_9 + ( 10, 0, 0 );
    }

    var_0 waittill( "at4_fire" );
    self._ID52 = 1;

    if ( _func_1A7( var_1 ) )
        var_1 _meth_8058();
}

_ID46451()
{
    self waittill( "death" );
    level._ID45294++;
}

_ID49945()
{
    level._ID47983 = self;
    self._ID3189 = "bricktop";
}

_ID43136()
{
    thread _ID42407::_ID29701();
}

_ID49724()
{

}

_ID47227()
{
    thread _ID42407::_ID22746();

    if ( _func_1A7( level._ID50379 ) )
    {
        _ID42407::_ID26720( "at4", "back" );
        var_0 = _func_1A1( self._ID1191, "targetname" );
        var_1 = level._ID50379;
        var_2 = ( 0, 0, 64 );
        thread _ID46451( var_0, var_1, var_2 );
        self waittill( "finished_anim_reach" );
        level._ID53312 _ID42407::_ID10805( "cont_rst_standback" );
        var_0 waittill( "at4_fire" );
    }

    thread _ID42407::_ID36519();
    _ID42407::_ID32315( "g" );
    _ID42407::_ID12445();
}

_ID46766()
{
    self._ID3189 = "rasta";
    level._ID53312 = self;
    thread _ID42407::_ID22746();
}

_ID50774()
{
    if ( _func_1A7( level._ID52487 ) )
    {
        _ID42407::_ID26720( "at4", "back" );
        var_0 = _func_1A1( self._ID1191, "targetname" );
        var_1 = level._ID52487;
        var_2 = ( 0, 0, 64 );
        thread _unknown_603F( var_0, var_1, var_2 );
        self waittill( "finished_anim_reach" );
        level._ID53312 _ID42407::_ID10805( "cont_rst_getback" );
        var_0 waittill( "at4_fire" );
    }

    _ID42407::_ID32315( "g" );
    _ID42407::_ID12445();
    level._ID53312 _ID42407::_ID10805( "cont_rst_checkfire" );
}

_ID52660()
{
    level._ID28543 = self;
    level._ID28543._ID3189 = "price";

    if ( level._ID54236 )
        level._ID28543 _ID42407::_ID26720( "at4", "back" );

    level._ID28543 _ID42407::_ID12445();
    level._ID28543._ID764 = 0;
    level._ID28543 thread _ID42407::_ID22746();
    level._ID28543 _ID42407::_ID22825();
    level._ID28543._ID49 = 0;
    thread animscripts\utility::_ID26591();
}

_ID46260()
{
    _ID42389::_ID36356( "bridge_area", ::_unknown_629C );
    _ID42389::_ID36356( "woods", ::_unknown_6237 );
    _ID42389::_ID36356( "base", ::_unknown_62F7 );
    var_0 = [];
    var_0["ai_eventDistNewEnemy"] = [];
    var_0["ai_eventDistNewEnemy"]["spotted"] = 512;
    var_0["ai_eventDistNewEnemy"]["hidden"] = 256;
    var_0["ai_eventDistExplosion"] = [];
    var_0["ai_eventDistExplosion"]["spotted"] = level._ID54069;
    var_0["ai_eventDistExplosion"]["hidden"] = level._ID54069;
    var_0["ai_eventDistDeath"] = [];
    var_0["ai_eventDistDeath"]["spotted"] = 512;
    var_0["ai_eventDistDeath"]["hidden"] = 512;
    var_0["ai_eventDistPain"] = [];
    var_0["ai_eventDistPain"]["spotted"] = 256;
    var_0["ai_eventDistPain"]["hidden"] = 256;
    var_0["ai_eventDistBullet"] = [];
    var_0["ai_eventDistBullet"]["spotted"] = 96;
    var_0["ai_eventDistBullet"]["hidden"] = 96;
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstep"]["spotted"] = 300;
    var_0["ai_eventDistFootstep"]["hidden"] = 300;
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 300;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 300;
    var_0["ai_eventDistFootstepSprint"] = [];
    var_0["ai_eventDistFootstepSprint"]["spotted"] = 400;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 400;
    _ID42389::_ID36234( var_0 );
    var_1 = [];
    var_1["prone"] = 800;
    var_1["crouch"] = 1200;
    var_1["stand"] = 1600;
    var_2 = [];
    var_2["prone"] = 8192;
    var_2["crouch"] = 8192;
    var_2["stand"] = 8192;
    _ID42389::_ID36284( var_1, var_2 );
    _ID42389::_ID36243( 0.5 );
    _ID42389::_ID36234( var_0 );
    var_3 = [];
    var_3["sight_dist"] = 400;
    var_3["detect_dist"] = 200;
    _ID42389::_ID36268( var_3 );
}

_ID43573()
{
    var_0["ai_eventDistFootstep"] = [];
    var_0["ai_eventDistFootstep"]["spotted"] = 120;
    var_0["ai_eventDistFootstep"]["hidden"] = 120;
    var_0["ai_eventDistFootstepWalk"] = [];
    var_0["ai_eventDistFootstepWalk"]["spotted"] = 60;
    var_0["ai_eventDistFootstepWalk"]["hidden"] = 60;
    var_0["ai_eventDistFootstepSprint"] = [];
    var_0["ai_eventDistFootstepSprint"]["spotted"] = 400;
    var_0["ai_eventDistFootstepSprint"]["hidden"] = 400;
    _ID42389::_ID36234( var_0 );
    var_1 = [];
    var_1["prone"] = 250;
    var_1["crouch"] = 450;
    var_1["stand"] = 500;
    var_2 = [];
    var_2["prone"] = 500;
    var_2["crouch"] = 500;
    var_2["stand"] = 600;
    _ID42389::_ID36284( var_1, var_2 );
    var_3 = [];
    var_3[0] = 1;
    var_3[1] = 1;
    var_3[2] = 1;
    var_3[3] = 0.75;
    _ID42389::_ID36243( var_3[level._ID15361] );
}

_ID45230()
{
    wait 3;
}

_ID49759()
{
    _ID42389::_ID36343();

    if ( _func_1B3( self ) )
        return;

    switch ( self._ID1194 )
    {

    }

    case "allies":
    case "axis":
}

weaponswapcheckdetachflashlight( var_0, var_1 )
{
    if ( !_func_02F( self._ID18273 ) && self._ID18273 )
        return;

    if ( var_0 == self._ID834 && var_1 != "right" )
        _unknown_6A4D();
}

weaponswapcheckattachflashlight( var_0, var_1 )
{
    if ( _func_02F( self._ID18273 ) && self._ID18273 )
        return;

    if ( var_0 == self._ID834 && var_1 == "right" )
        _unknown_6A6A();
}

_ID49888()
{
    self endon( "death" );

    for (;;)
    {
        _ID42407::_ID32327( "cqb_stand_idle_scan" );
        self waittill( "clearing_specialIdleAnim" );
    }
}

_ID54432()
{
    _ID42389::_ID36343();

    if ( _func_1B3( self ) )
        return;

    switch ( self._ID1194 )
    {

    }

    case "allies":
    case "axis":
}

_ID45880()
{
    _ID42389::_ID36343();

    if ( _func_1B3( self ) )
        return;

    switch ( self._ID1194 )
    {

    }

    case "allies":
    case "axis":
}

base_flash_event_override_func( var_0 )
{
    self._ID377 = level._ID794;
    wait 1;
    self notify( "enemy_awareness_reaction" );
    waittillframeend;
}

_ID46041()
{
    self endon( "death" );

    if ( _ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
        return;

    if ( _ID42407::_ID13019( "dynamic_run_speed_stopping" ) )
        return;

    self endon( "stop_dynamic_run_speed" );
    _ID42407::_ID13025( "dynamic_run_speed_stopping" );
    _ID42407::_ID13025( "dynamic_run_speed_stopped" );
    var_0 = "DRS_run_2_stop";
    _ID42259::_ID3021( self, "gravity", var_0 );
    _ID42407::_ID13021( "dynamic_run_speed_stopping" );

    if ( !_ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
        return;

    self endon( "dynamic_run_speed_stopped" );

    if ( _func_02F( self._ID22674 ) && self._ID22674 > 0 )
        return;

    while ( _ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
    {
        var_1 = "DRS_stop_idle";
        thread _ID42259::_ID3025( self, var_1 );

        if ( _func_02F( level._ID30895["generic"]["signal_go"] ) )
            _ID42407::_ID18074( "go" );

        wait(_func_0BA( 12, 20 ));

        if ( _ID42407::_ID13023( "_stealth_stance_handler" ) )
            _ID42407::_ID13031( "_stealth_stance_handler" );

        self notify( "stop_loop" );

        if ( !_ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
            return;

        if ( _func_02F( level._ID12262 ) )
        {
            var_2 = _ID42237::_ID28945( level._ID12262 );
            level thread _ID42407::_ID28871( var_2 );
        }

        if ( _func_02F( level._ID30895["generic"]["signal_go"] ) )
            _ID42407::_ID18074( "go" );
    }
}

_ID48718()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "master_reached_patrol_end" );
        self._ID411 = 0.99;
        self notify( "end_patrol" );
        self waittill( "_stealth_normal" );
        self._ID411 = 0.76;
    }
}

_ID44747()
{
    self._ID764 = 200;
    thread _ID42407::_ID10896();

    if ( _func_02F( self._ID31463 ) )
        thread _ID42386::_ID12797( self._ID740 );

    self._ID452 = 400;
    self._ID377 = level._ID794;
    self _meth_81B3( level._ID794 );
    self waittill( "death" );
    level._ID44632--;
}

_ID46061()
{
    self._ID764 = 200;
    thread _ID42407::_ID10896();
    thread _ID42386::_ID12797( self._ID740 );
    self._ID452 = 400;
    self endon( "death" );
    _ID42407::_ID13025( "_stealth_override_goalpos" );

    while ( _func_02F( self._ID322 ) && _ID42407::_ID13019( "_stealth_enabled" ) )
    {
        self _meth_81B2( self._ID322._ID740 );
        wait 4;
    }
}

_ID44216()
{
    self endon( "death" );
    self._ID511 = 1;
    self._ID628 = 360000;
    _ID42237::_ID14413( "base_alerted" );
    self._ID511 = 0;
    self._ID628 = 64000000;
    self._ID377 = level._ID794;
    wait 1;
    self._ID377 = undefined;
    self._ID764 = 200;
    thread _ID42407::_ID10896();
    self._ID199 = "ambush";
    self _meth_81B2( self._ID740 );
    self._ID452 = 4000;
    self._ID628 = 64000000;
}

_ID53493()
{

}

_ID49638()
{
    _ID42237::_ID14388( "price_is_hiding" );
    self._ID24844 = 1;

    if ( !_ID42237::_ID14385( "player_on_ridge" ) && _ID42237::_ID14385( "safe_from_btrs" ) )
        self._ID628 = level._ID43611;

    self._ID508 = 1;

    if ( !_ID42237::_ID14385( "approaching_ridge" ) )
    {
        _ID42407::_ID10871();

        if ( _func_02F( self._ID48051 ) )
        {
            thread _ID42407::_ID12467();
            thread _unknown_6016( self._ID48051 );
        }
    }

    self _meth_81AF( 1 );
    self._ID381 = 1;
    thread _ID42407::_ID32226( 0 );
    _ID42407::_ID32324( 0 );
    self._ID11575 = 1;
    self._ID464 = 0;
    self._ID14794 = undefined;
    self._ID511 = 1;
    self._ID513 = 1;
    _func_0DB( "ai_friendlyfireblockduration", 0 );
    _func_0DB( "ai_friendlysuppression", 0 );
}

_ID44138()
{
    self notify( "stop_dynamic_run_speed" );
    self._ID24844 = undefined;
    self._ID507 = 0;
    self._ID381 = 1;
    self._ID508 = 1;

    if ( !_ID42237::_ID14385( "approaching_ridge" ) && !_ID42237::_ID14385( "safe_from_btrs" ) && !_ID42237::_ID14385( "base_alerted" ) )
    {
        _ID42407::_ID12445();
        _ID42407::_ID32315( "y" );
    }

    thread _ID42407::_ID32226( 0 );
    _ID42407::_ID32324( 1 );
    self._ID11575 = undefined;
    self._ID628 = 64000000;
    self._ID464 = 0;
    self._ID511 = 0;
    self _meth_81AF( 0 );
    self._ID513 = 0;
    _func_0DB( "ai_friendlyfireblockduration", 2000 );
    _func_0DB( "ai_friendlysuppression", 1 );
}

_ID46697()
{
    if ( !_func_02F( level._ID49405 ) )
        level._ID49405 = "none";

    if ( level._ID49405 != "huddle" )
    {
        self._ID26395 = "patrol_cold_huddle";
        self._ID26396 = "patrol_twitch_weights";
        self._ID26391["pause"][0] = "patrol_cold_huddle_pause";
        self._ID26394["pause"] = "patrol_cold_huddle_stop";
        self._ID26393["pause"] = "patrol_cold_huddle_start";
        self._ID26394["path_end_idle"] = "patrol_cold_huddle_stop";
        self._ID26382[0] = "patrol_cold_huddle_pause";
        level._ID49405 = "huddle";
    }
    else
    {
        self._ID26395 = "patrol_cold_crossed";
        self._ID26396 = "patrol_twitch_weights";
        self._ID26391["pause"][0] = "patrol_cold_crossed_pause";
        self._ID26394["pause"] = "patrol_cold_crossed_stop";
        self._ID26393["pause"] = "patrol_cold_crossed_start";
        self._ID26394["path_end_idle"] = "patrol_cold_crossed_stop";
        self._ID26382[0] = "patrol_cold_crossed_pause";
        level._ID49405 = "crossed";
    }
}

_ID52483()
{
    self endon( "death" );
    thread _ID42411::_ID40197( "headlights" );
    thread _ID42411::_ID40197( "brakelights" );
    thread maps\contingency_aud::_ID47705();
    _ID42237::_ID14413( "truck_guys_alerted" );
    _ID42237::_ID14413( "convoy_half_way_across_bridge" );
    var_0 = _ID42407::_ID15817( "truck_guys", "script_noteworthy" );

    if ( var_0.size == 0 )
    {
        self _meth_828D( 0, 15 );
        return;
    }

    var_1 = _ID42237::_ID28945( var_0 );
    var_1 _ID42386::_ID12800();
    self _meth_828D( 0, 15 );
    wait 1;
    _ID42411::_ID40298();
    _ID42237::_ID14402( "jeep_stopped" );
}

_ID52114()
{
    self endon( "death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    _ID42407::_ID13024( "jumped_out" );
    _ID42407::_ID13024( "not_first_attack" );
    thread _unknown_6D7E();
    _ID42386::_ID2261( "animation", "wrapper", ::_unknown_6D9B );
    var_0 = [];
    var_0["attack"] = ::_unknown_6E21;
    _ID42389::_ID36369( var_0 );
    var_1 = [];
    var_1["explode"] = ::_unknown_6DFB;
    var_1["heard_scream"] = ::_unknown_6E03;
    var_1["doFlashBanged"] = ::_unknown_6E0B;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _ID42385::_ID36309( var_4, var_3 );
    }

    var_clear_2
    _ID42407::_ID13025( "_stealth_behavior_reaction_anim" );
}

_ID43422()
{
    self endon( "death" );
    self endon( "_stealth_attack" );
    level endon( "_stealth_spotted" );
    wait 2;
    self waittill( "_stealth_bad_event_listener" );
    _ID42386::_ID12904();
    _ID42407::_ID13025( "not_first_attack" );
}

_ID53246( var_0 )
{
    self endon( "_stealth_enemy_alert_level_change" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    self endon( "death" );
    self endon( "pain_death" );
    thread _unknown_6DF8();
    self._ID10998 = 0;
    self._ID11025 = 0;
    var_1 = _func_0F3( var_0._ID740, self._ID740 );
    self _meth_81B1( var_0 );
    self._ID452 = var_1 * 0.5;
    wait 0.05;
    _ID42407::_ID32328( "_stealth_patrol_cqb" );
    self waittill( "goal" );
    _ID42407::_ID32328( "patrol_cold_gunup_search", 1 );
    self._ID10998 = 1;
    self._ID11025 = 1;
    _ID42386::_ID12914( var_0 );
}

_ID51586()
{
    self endon( "death" );
    self endon( "pain_death" );

    for (;;)
    {
        self waittill( "jumpedout" );
        self._ID1644._ID5029._ID21856 = self._ID740;
        self._ID50030 = self._ID740;
        _ID42407::_ID13025( "jumped_out" );
        self waittill( "enteredvehicle" );
        wait 0.15;
        _ID42407::_ID13021( "jumped_out" );
        _ID42407::_ID13025( "_stealth_behavior_reaction_anim" );
    }
}

_ID46809( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );
    _ID42386::_ID12789( var_0 );
}

_ID53752( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );

    if ( !_ID42237::_ID14385( "truck_guys_alerted" ) )
        return;

    if ( _ID42237::_ID14396( "truck_guys_not_going_back" ) && _ID42237::_ID14385( "truck_guys_not_going_back" ) )
        return;

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) && !_ID42407::_ID13019( "_stealth_attack" ) )
    {
        var_1 = _ID42407::_ID15617( self._ID740 );
        var_2 = _ID42386::_ID12869( var_1._ID740, 1500, 128 );

        if ( _func_02F( var_2 ) )
            thread _unknown_6F31( var_2 );
    }

    var_3 = _ID42386::_ID17449( "_stealth_spotted" );

    if ( _ID42237::_ID14385( var_3 ) )
        _ID42237::_ID14426( var_3 );
    else
        self waittill( "normal" );
}

_ID48469( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    level endon( "_stealth_spotted" );
    self endon( "_stealth_attack" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );

    if ( !_ID42237::_ID14385( "truck_guys_alerted" ) )
        return;

    if ( _ID42237::_ID14396( "truck_guys_not_going_back" ) && _ID42237::_ID14385( "truck_guys_not_going_back" ) )
        return;

    if ( !_ID42237::_ID14385( "_stealth_spotted" ) && !_ID42407::_ID13019( "_stealth_attack" ) )
    {
        var_1 = self._ID1644._ID22585._ID13251._ID4629[var_0];
        var_2 = _ID42386::_ID12869( var_1, 300, 40 );
        thread _ID42386::_ID12800();

        if ( _func_02F( var_2 ) )
            thread _unknown_6FD4( var_2 );
    }

    var_3 = _ID42386::_ID17449( "_stealth_spotted" );

    if ( _ID42237::_ID14385( var_3 ) )
        _ID42237::_ID14426( var_3 );
    else
        self waittill( "normal" );
}

_ID50854( var_0 )
{
    self endon( "death" );
    self endon( "pain_death" );
    _ID42237::_ID14402( "truck_guys_alerted" );
    _ID42407::_ID13027( "jumped_out" );
    _unknown_6F00();
}

_ID54116( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];

    if ( _func_02F( var_1 ) )
        _func_0C7( var_2._ID19286, var_1 );
    else
        _func_0C7( var_2._ID19286 );
}

_ID48422( var_0, var_1, var_2, var_3 )
{
    _ID42237::_ID14400( var_0 );

    if ( !_func_02F( level._ID25349 ) )
        level._ID25349 = [];

    var_4 = level._ID25349.size;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    var_5 = _func_1A5();
    var_5._ID680 = var_0;
    var_5._ID19286 = var_4;
    var_5._ID36185 = "invisible";
    var_5._ID37557 = var_1;
    var_5._ID740 = var_2;
    var_5._ID47886 = 0;
    var_5._ID49034 = var_3;
    level._ID25349[var_0] = var_5;
    return var_5;
}

_ID51143( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];
    var_3._ID36185 = var_1;

    if ( !var_3._ID47886 )
    {
        _func_1E3( var_3._ID19286, var_3._ID36185, var_3._ID37557, var_3._ID740 );
        var_3._ID47886 = 1;
        _func_1E7( var_3._ID19286, var_3._ID49034 );
    }
    else if ( _func_02F( var_2 ) && var_2 )
        _func_114( var_3._ID19286, var_3._ID36185 );
    else
        _func_1E5( var_3._ID19286, var_3._ID36185 );

    if ( var_3._ID36185 == "done" )
        _ID42237::_ID14402( var_0 );
}

_ID45810( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID37557 = var_1;
    _func_115( var_2._ID19286, var_1 );
}

_ID54163( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID47623 = var_1;
    _func_1E8( var_2._ID19286, var_2._ID47623 );
}

_ID48581( var_0, var_1, var_2 )
{
    level notify( "moving " + var_0 );
    level endon( "moving " + var_0 );
    var_3 = level._ID25349[var_0];
    _func_194( var_3._ID19286, var_1, var_2 );
}

_ID49571( var_0, var_1, var_2 )
{
    var_3 = level._ID25349[var_0];

    if ( !var_2 )
        _func_115( var_3._ID19286, var_1 );
    else
        _func_115( var_3._ID19286, var_1, var_2 );
}

_ID54550()
{
    switch ( level._ID35897 )
    {

    }

    case "village":
    case "default":
    case "defend_sub":
    case "base":
    case "ridge":
    case "midwoods":
    case "woods":
    case "slide":
    case "start":
}

_ID51242()
{
    wait 15;
    _unknown_728E( "obj_sub_base", &"CONTINGENCY_OBJ_SUB_BASE", ( 0, 0, 0 ) );
    _unknown_72B7( "obj_sub_base", "current" );
    _ID42237::_ID14413( "price_starts_moving" );
}

_ID49680()
{
    while ( !_func_02F( level._ID28543 ) )
        wait 0.1;

    if ( level._ID35897 != "default" && level._ID35897 != "start" )
        _unknown_72DA( "obj_sub_base", &"CONTINGENCY_OBJ_SUB_BASE", ( 0, 0, 0 ) );

    _unknown_7304( "obj_sub_base", "active", 1 );
    _unknown_72FA( "obj_price", &"CONTINGENCY_OBJ_PRICE", level._ID28543._ID740, 1 );
    _unknown_7323( "obj_price", "current" );
    thread _unknown_736B( "obj_price", level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "base_entrance" );
    _unknown_734B( "obj_price", "done" );
    _unknown_7359( "obj_sub_base", "done", 1 );
}

_ID48506()
{
    _ID42237::_ID14413( "base_alerted" );
    wait 5;
    var_0 = ( -11742, 2368, 643 );
    var_1 = _ID42237::_ID16638( "obj_reach_split_off", "targetname" );

    if ( _func_02F( var_1 ) )
        var_0 = var_1._ID740;

    _unknown_7378( "obj_reach", &"CONTINGENCY_OBJ_SUB_DOCK", var_0 );
    _unknown_73A0( "obj_reach", "current" );
    _ID42237::_ID14413( "price_splits_off" );
    _unknown_73B4( "obj_reach", "done" );
}

_ID43188()
{
    _ID42237::_ID14413( "price_splits_off" );
    var_0 = _ID42237::_ID16638( "obj_guard_house", "targetname" )._ID740;
    _unknown_73C9( "obj_sub", &"CONTINGENCY_OBJ_DEFEND_SUB", var_0 + ( 0, 0, 48 ) );
    _unknown_73F1( "obj_sub", "current" );
    _unknown_73D6( "obj_sub", &"CONTINGENCY_OBJ_DEFEND" );
    _ID42237::_ID14413( "close_sub_hatch" );
    _unknown_7411( "obj_sub", "done" );
}

_ID52262()
{
    var_0 = 1;
    _ID42237::_ID14413( "base_entrance" );

    if ( _func_02F( level._ID47678 ) )
    {
        var_1 = _func_03D() - level._ID47694 / 1000;
        var_2 = level._ID47678 - var_1;

        if ( var_2 < 90 )
            var_0 = 0;
        else
            var_0 = 1;
    }

    if ( var_0 )
        _ID42407::_ID4422( "partway1" );

    _ID42237::_ID14413( "player_is_halfway_to_sub" );

    if ( _func_02F( level._ID47678 ) )
    {
        var_1 = _func_03D() - level._ID47694 / 1000;
        var_2 = level._ID47678 - var_1;

        if ( var_2 < 80 )
            var_0 = 0;
        else
            var_0 = 1;
    }

    if ( var_0 )
        _ID42407::_ID4422( "partway2" );

    _ID42237::_ID14413( "base_ending" );

    if ( _func_02F( level._ID47678 ) )
    {
        var_1 = _func_03D() - level._ID47694 / 1000;
        var_2 = level._ID47678 - var_1;

        if ( var_2 < 40 )
            var_0 = 0;
        else
            var_0 = 1;
    }

    if ( var_0 )
        _ID42407::_ID4422( "partway3" );
}

_ID51922()
{
    if ( _func_039( "notimer" ) == "1" )
        return;

    var_0 = undefined;
    level._ID47678 = undefined;

    switch ( level._ID15361 )
    {

    }

    if ( _func_02F( level._ID51109 ) )
        level._ID47678 = level._ID47678 - level._ID51109;

    thread _unknown_6F20( level._ID47678 );
    level thread _unknown_7663( level._ID47678, &"CONTINGENCY_TIME_TO_ENTER_SUB" );
    level._ID47694 = _func_03D();
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID49146( var_0, var_1, var_2 )
{
    if ( _func_039( "notimer" ) == "1" )
        return;

    thread _unknown_769C();
    level thread _unknown_76C0( &"CONTINGENCY_SUB_TIMER_EXPIRED" );
    var_3 = 0;
    var_4 = _ID42237::_ID54738();

    switch ( var_4 )
    {

    }

    _ID42313::_ID47327( var_0, var_1, var_2, var_3 );
    case "LANGUAGE_RUSSIAN_PARTIAL":
    case "LANGUAGE_RUSSIAN":
    case "LANGUAGE_FRENCH":
    case "LANGUAGE_ITALIAN":
    case "LANGUAGE_PORTUGUESE":
}

_ID51530()
{
    level endon( "timer_expired" );
    level endon( "reached_sub" );
    level._ID794 endon( "death" );

    if ( level._ID15361 == 3 )
    {
        while ( level._ID15361 == 3 )
            waittillframeend;

        level._ID51109 = _func_03D() - level._ID36040;
        level._ID51109 = _func_0C1( level._ID51109 * 0.001 );
        _unknown_772F();
        thread _unknown_76DA();
        return;
    }

    while ( level._ID15361 > 1 )
        waittillframeend;

    _unknown_7742();
}

_ID21428()
{
    _ID42313::_ID52053();
}

_ID43057( var_0 )
{
    level._ID794 endon( "death" );
    level endon( "kill_timer" );
    level waittill( "timer_expired" );
    level notify( "mission failed" );
    level._ID794 _meth_8334( 1 );
    _func_078( 1 );
    _func_034( "ui_deadquote", var_0 );
    _ID42407::_ID23778();
    level notify( "kill_timer" );
}

_ID50024( var_0 )
{
    self _meth_8183( var_0 );
}

_ID51884()
{
    self endon( "death" );
    _ID42407::_ID13031( "_stealth_normal" );
    wait(_func_0BA( 0.2, 0.8 ));
    _func_157( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 1;
}

_ID47494()
{
    _func_157( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 1;
}

detach_flashlight()
{
    _func_159( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = undefined;
}

attach_flashlight_wolfmode()
{
    if ( _func_02F( self._ID18273 ) && self._ID18273 )
    {
        waittillframeend;
        self.preplaceweapononfunc = ::_unknown_737E;
        self.postplaceweapononfunc = ::_unknown_738F;
        _func_157( level._ID1426["flashlight"], self, "tag_flash" );
    }
}

detach_flashlight_wolfmode()
{
    if ( _func_02F( self._ID18273 ) && self._ID18273 )
    {
        self.preplaceweapononfunc = undefined;
        self.postplaceweapononfunc = undefined;
        _func_159( level._ID1426["flashlight"], self, "tag_flash" );
        waittillframeend;
    }
}

_ID50761( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    self endon( "stop_shooting" );
    self endon( "death" );

    for (;;)
    {
        var_2 = _ID42407::_ID15617( self._ID740 );
        wait(_func_0BA( 0.8, 1.3 ));

        while ( !_unknown_78D4( var_2 ) )
            wait(_func_0BA( 0.2, 0.6 ));

        if ( !var_1 )
        {
            _unknown_790D( var_2 );
            wait(_func_0BA( 0.8, 2.4 ));
            _unknown_791D( var_2 );
            wait(_func_0BA( 0.8, 2.4 ));
        }

        while ( _unknown_790A( var_2 ) )
        {
            _unknown_7922( var_2 );
            wait(_func_0BA( 2, 3 ));
        }

        if ( var_0 )
        {
            if ( !_unknown_7921( var_2 ) )
            {
                self _meth_826D();
                self._ID48897 = 0;
                self notify( "stop_shooting" );
            }
        }
    }
}

_ID6739( var_0 )
{
    if ( _func_0F3( self._ID740, level._ID794._ID740 ) < level._ID45903 )
        return 0;

    var_1 = self _meth_818C( "tag_flash" );
    var_2 = var_0 _meth_80AF();

    if ( _func_090( var_1, var_2, 0, self ) )
    {
        if ( _func_02F( level._ID9847 ) )
        {

        }

        return 1;
    }
    else
        return 0;
}

_ID50256( var_0 )
{
    var_1 = _func_0B9( 3, 5 );
    var_2 = 0.2;

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self _meth_826C( var_0, _ID42237::_ID28976( 20 ) + ( 0, 0, 32 ) );
        self _meth_8272();
        wait(var_2);
    }
}

_ID23693( var_0 )
{
    var_1 = _func_11F( level._ID794._ID65 );
    var_2 = var_1 * 100;
    var_3 = var_2 + _ID42237::_ID28976( 50 );
    var_4 = _func_0B9( 4, 6 );
    var_5 = 0.2;

    for ( var_6 = 0; var_6 < var_4; var_6++ )
    {
        var_7 = _ID42237::_ID28976( 15 ) + var_3 + ( 0, 0, 64 );
        self _meth_826C( var_0, var_7 );
        self _meth_8272();
        wait(var_5);
    }
}

_ID25868()
{
    var_0 = _func_1A1( "back_door_left", "targetname" );
    var_1 = _func_1A1( "door_clip_left", "targetname" );
    var_1 _meth_8053( var_0 );
    var_2 = _func_1A1( "back_door_right", "targetname" );
    var_3 = _func_1A1( "door_clip_right", "targetname" );
    var_3 _meth_8053( var_2 );
    var_0 _meth_82C1( -125, 0.75, 0.25 );
    var_2 _meth_82C1( 125, 0.75, 0.25 );
    var_1 _meth_805F();
    var_3 _meth_805F();
}

_ID45353()
{
    _ID42237::_ID14413( "open_hangar" );
    var_0 = _func_1A1( "door_l_1", "targetname" );
    var_1 = _func_1A1( "door_l_2", "targetname" );
    var_2 = _func_1A1( "door_r_1", "targetname" );
    var_3 = _func_1A1( "door_r_2", "targetname" );
    var_4 = _func_1A1( "col_l_1", "targetname" );
    var_5 = _func_1A1( "col_l_2", "targetname" );
    var_6 = _func_1A1( "col_r_1", "targetname" );
    var_7 = _func_1A1( "col_r_2", "targetname" );
    var_4 _meth_8053( var_0 );
    var_5 _meth_8053( var_1 );
    var_6 _meth_8053( var_2 );
    var_7 _meth_8053( var_3 );
    var_8 = 75;
    var_9 = -75;
    var_10 = -75;
    var_11 = 75;
    var_0 _meth_82BA( var_8, 2, 0.5, 0.5 );
    var_2 _meth_82BA( var_9, 2, 0.5, 0.5 );
    wait 2.5;
    var_0 _meth_8053( var_1 );
    var_2 _meth_8053( var_3 );
    var_1 _meth_82BA( var_8, 2, 0.5, 0.5 );
    var_3 _meth_82BA( var_9, 2, 0.5, 0.5 );
    _ID42237::_ID14413( "player_close" );
    var_12 = var_1._ID740 + ( 0, var_10 * 2, 75 );
    thread _ID42237::_ID27077( "scn_con_base_doors_close", var_12 );
    var_1 _meth_82BA( var_10, 2, 0.5, 0.5 );
    var_3 _meth_82BA( var_11, 2, 0.5, 0.5 );
    wait 2.5;
    var_0 _meth_8055( var_1 );
    var_2 _meth_8055( var_3 );
    var_0 _meth_82BA( var_10, 2, 0.5, 0.5 );
    var_2 _meth_82BA( var_11, 2, 0.5, 0.5 );
}

_ID45261()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = _func_1A1( "sat_dish", "targetname" );

    for (;;)
    {
        var_0 _meth_82C1( 360, 25, 0.05, 0.05 );
        wait 25;
    }
}

_ID48486()
{
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "gun_up" );
    _func_0DB( "cg_gunDownAnimDelayTime", -1 );
}

_ID48320()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = _func_1A1( "propeller", "targetname" );

    for (;;)
    {
        var_0 _meth_83EC( ( 360, 0, 0 ), 1 );
        wait 1;
    }
}

_ID50613()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = _func_1A1( "gyro", "targetname" );

    for (;;)
    {
        var_0 _meth_82C1( 360, 1 );
        wait 1;
    }
}

_ID45159()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = _func_1A1( "intel_fan", "targetname" );

    for (;;)
    {
        var_0 _meth_83EC( ( 360, 0, 0 ), 0.75 );
        wait 0.75;
    }
}

_ID51277()
{
    _ID42237::_ID14413( "player_on_ridge" );
    thread _unknown_7D40();
    thread _unknown_7D62();
    thread _unknown_7D83();
}

_ID51885()
{
    var_0 = _func_1A1( "cabin1", "targetname" );
    var_1 = _func_1A1( "motor1", "targetname" );
    var_2 = _func_1A1( "animated_cable", "targetname" );
    var_2 _meth_8053( var_0 );
    var_1 _meth_8053( var_0 );
    wait 4;
    var_0 _meth_82C1( -100, 10 );
    _ID42237::_ID14413( "base_entrance" );
    var_2 _meth_8055( var_0 );
    var_2._ID3189 = "animated_cable";
    var_2 _ID42259::_ID32556();
    var_2 _ID42259::_ID3044( var_2, "crane_idle" );
}

_ID45093()
{
    var_0 = _func_1A1( "cabin2", "targetname" );
    var_1 = _func_1A1( "motor2", "targetname" );
    var_2 = _func_1A1( "hook2", "targetname" );
    var_3 = _func_1A1( "animated_cable_2", "targetname" );
    var_3 _meth_8053( var_0 );
    var_1 _meth_8053( var_0 );
    var_2 _meth_82BB( 360, 7 );
    wait 13;
    var_2 _meth_8053( var_0 );
    var_0 _meth_82C1( -180, 27 );
    wait 35;
    var_0 _meth_82C1( 180, 16 );
}

_ID43357()
{
    var_0 = _func_1A1( "cabin3", "targetname" );
    var_1 = _func_1A1( "motor3", "targetname" );
    var_2 = _func_1A1( "hook3", "targetname" );
    var_3 = _func_1A1( "animated_cable_3", "targetname" );
    var_3 _meth_8053( var_0 );
    var_1 _meth_8053( var_0 );
    var_2 _meth_8053( var_0 );
    var_0 _meth_82C1( -140, 19 );
    wait 19;
    var_2 _meth_8055( var_0 );
    var_2 _meth_82BB( -360, 7 );
    wait 14;
    var_2 _meth_82BB( 360, 7 );
    var_2 _meth_8053( var_0 );
    wait 10;
    var_0 _meth_82C1( 140, 10 );
}

_ID51271()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = _func_1A2( "roof_fan", "targetname" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _func_0BA( 0.5, 1.0 );
        var_2 thread _unknown_7F0C( var_3 );
    }

    var_clear_3
    var_clear_0
}

_ID48657( var_0 )
{
    for (;;)
    {
        self _meth_82C1( 360, var_0 );
        wait(var_0);
    }
}

activate_ice_chunk()
{
    _ID42237::_ID14413( "player_close" );
    self._ID3189 = "ice_chunk";
    _ID42259::_ID32556();
    var_0 = "h2_gulag_ice_chunk_01_idle";

    if ( _func_02F( self._ID70 ) )
        var_0 = self._ID70;

    var_1 = 0;

    if ( _func_02F( self._ID922 ) )
        var_1 = _func_0C2( self._ID922 );

    wait(var_1);
    _ID42259::_ID3044( self, var_0 );
}

animated_buoy()
{
    _ID42237::_ID14413( "player_close" );
    self._ID3189 = "animated_buoy";
    _ID42259::_ID32556();
    var_0 = "h2_contingency_buoy_idle";

    if ( _func_02F( self._ID70 ) )
        var_0 = self._ID70;

    var_1 = 0;

    if ( _func_02F( self._ID922 ) )
        var_1 = _func_0C2( self._ID922 );

    wait(var_1);
    _ID42259::_ID3044( self, var_0 );
}

bush_trigger_manager()
{
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_0 _ID42407::_ID3428( "bushes" );
    var_1 = var_0 _ID42407::_ID16120( "bushes_idle" );
    var_0 _meth_8155( var_1 );
    var_2 = _func_0B8( 1 );
    var_0 _meth_8120( var_1, var_2 );
    var_0 thread _unknown_8033( var_1 );
    var_0 _meth_8156( var_0 _ID42407::_ID16120( "bushes_shuffle_add_loop_anim" ), 1.0, 0.0, 1.0 );
    var_3 = 75;
    var_4 = var_0 _ID42407::_ID16120( "bushes_shuffle_add_loop" );

    for (;;)
    {
        var_5 = undefined;
        self waittill( "trigger",  var_5  );

        if ( _func_1B3( var_5 ) || _func_0D4( var_5 ) )
        {
            _func_156( _ID42237::_ID16299( "bushes_snow_reaction" ), self._ID740 );
            var_6 = 0.0;

            while ( var_5 _meth_80B0( self ) )
            {
                if ( _func_1B3( var_5 ) )
                    var_7 = _func_0F6( var_5 _meth_8344() );
                else
                    var_7 = _func_0F6( var_5._ID1283 );

                var_6 = _func_0E6( var_6 - 0.025, _func_0EE( var_7, 0, var_3 ) / var_3 );
                var_0 _meth_8155( var_4, var_6, 0.1 );
                waittillframeend;
            }
        }

        var_0 _meth_8155( var_4, 0.0, 3.0 );
    }
}

restoreidleanimation( var_0 )
{
    for (;;)
    {
        self waittillmatch( "single anim",  "end"  );
        self _meth_8155( var_0 );
    }
}

portal_group_start_point_initializer()
{
    var_0 = [ "portal_starting_area_flag", "portal_bridge_A_flag" ];
    var_1 = [ "portal_starting_area_flag", "portal_bridge_A_flag" ];
    var_2 = [ "portal_vista_flag", "portal_forest_A_flag" ];
    var_3 = [ "portal_vista_flag", "portal_forest_A_flag" ];
    var_4 = [ "portal_vista_flag", "portal_forest_A_flag", "portal_forest_B_flag" ];
    var_5 = [ "portal_vista_flag", "portal_forest_A_flag", "portal_forest_B_flag" ];
    var_6 = [];
    var_7 = [];

    switch ( level._ID35897 )
    {

    }

    return var_7;
    case "defend_sub":
    case "base":
    case "ridge":
    case "midwoods":
    case "woods":
    case "slide":
    case "start":
    default:
}

initialize_portal_flags()
{
    _ID42237::_ID14400( "portal_starting_area_flag" );
    _ID42237::_ID14400( "portal_curve_A_flag" );
    _ID42237::_ID14400( "portal_curve_B_flag" );
    _ID42237::_ID14400( "portal_bridge_A_flag" );
    _ID42237::_ID14400( "portal_bridge_B_flag" );
    _ID42237::_ID14400( "portal_vista_flag" );
    _ID42237::_ID14400( "portal_forest_A_flag" );
    _ID42237::_ID14400( "portal_forest_B_flag" );
    _ID42237::_ID14402( "portal_group_base_building_33_flag" );
    var_0 = _unknown_81EB();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID14402( var_2 );
    }

    var_clear_2
    var_clear_0
}

change_zfar_by_flags( var_0, var_1, var_2, var_3 )
{
    level endon( var_3 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        _func_08E( var_1 );
        _ID42237::_ID14426( var_0 );
        _func_08E( var_2 );
    }
}

reset_zfar_by_fov_to_default()
{
    _ID42237::_ID14413( "zfar_restore_default_flag" );
    level endon( "player_slid_down" );
    _func_0DB( "r_lodFOVFixedScale", 1 );
    _func_08E( 0 );
}

change_zfar_by_fov()
{
    _ID42237::_ID14413( "dynamic_zfar_flag" );
    level endon( "zfar_restore_default_flag" );
    _func_0DB( "r_lodFOVFixedScale", 1.3 );
    var_0 = 11000;
    var_1 = 7000;
    var_2 = 3000;
    var_3 = undefined;
    var_4 = undefined;
    var_5 = _ID42237::_ID16638( "dynamic_zfar_origin", "targetname" );

    for (;;)
    {
        while ( _ID42237::_ID14385( "dynamic_zfar_flag" ) )
        {
            if ( _ID42237::_ID14385( "mid_forest_zfar_flag" ) )
                var_2 = 4500;
            else
                var_2 = 3000;

            var_3 = _func_11F( level._ID794 _meth_8346() );
            var_4 = var_5._ID740 - level._ID794._ID740;
            var_3 = _func_119( _ID42407::_ID32530( var_3, 0 ) );
            var_4 = _func_119( _ID42407::_ID32530( var_4, 0 ) );
            var_6 = _func_0FB( var_3, var_4 );
            var_6 = _func_0C2( var_6 + 1.0 * 0.5 );

            if ( var_6 >= 0.5 )
                var_7 = var_1;
            else
                var_7 = _ID42407::_ID22382( var_6, var_2, var_0 );

            _func_08E( var_7 );
            waittillframeend;
        }

        _func_08E( var_1 );
        _ID42237::_ID14413( "dynamic_zfar_flag" );
    }
}

initialize_zfar_flags()
{
    _ID42237::_ID14400( "mid_forest_zfar_flag" );
    _ID42237::_ID14400( "end_forest_zfar_flag" );
    _ID42237::_ID14400( "dynamic_zfar_flag" );
    _ID42237::_ID14400( "zfar_restore_default_flag" );
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

change_remote_missile_zfar()
{
    level endon( "death" );

    for (;;)
    {
        level._ID794 waittill( "player_is_controlling_UAV" );
        _func_0DB( "r_lodFOVFixedScale", 0.2 );
        _ID42237::_ID14388( "portal_group_base_building_33_flag" );

        if ( _ID42237::_ID14385( "leaving_village" ) )
        {
            _func_31C( 1 );
            _func_31C( 5 );
            _func_31C( 6 );
        }

        _func_31C( 2 );
        _func_31C( 3 );
        var_0 = _func_1A2( "hanging_object", "targetname" );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( _func_02F( var_2._ID31529 ) && var_2._ID31529 == "icicle_hide" )
                var_2 _meth_805A();
        }

        var_clear_4
        var_clear_2
        level._ID794 waittill( "exiting_uav_control" );
        _func_0DB( "r_lodFOVFixedScale", 1 );
        _ID42237::_ID14402( "portal_group_base_building_33_flag" );
        _func_31B( 2 );
        _func_31B( 3 );
        var_0 = _func_1A2( "hanging_object", "targetname" );
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];

            if ( _func_02F( var_2._ID31529 ) && var_2._ID31529 == "icicle_hide" )
                var_2 _meth_8059();
        }

        var_clear_1
        var_clear_0
    }
}
#using_animtree("vehicles");

_ID44501( var_0 )
{
    var_0[0]._ID40152 = %h2_uaz_driver_exit_into_stand_door_winter;
    var_0[1]._ID40152 = %h2_uaz_passenger_exit_into_stand_door_winter;
    var_0[2]._ID40152 = %h2_uaz_rear_driver_exit_into_stand_door_winter;
    var_0[3]._ID40152 = %h2_uaz_passenger2_exit_into_stand_door_winter;
    return var_0;
}

static_model_group_think( var_0, var_1 )
{
    _func_31C( var_1 );
    _ID42237::_ID14413( var_0 );
    _func_31B( var_1 );
}

hanging_parachute()
{
    var_0 = _func_1A1( "hanging_parachute", "targetname" );
    var_0._ID3189 = "parachute";
    var_0 _ID42259::_ID32556();
    var_1 = var_0 _ID42407::_ID16120( "hanging_idle" );
    var_0 _meth_8155( var_1 );
}

swap_to_base_uav()
{
    _ID42237::_ID14413( "leaving_village" );
    level._ID794 waittill( "starting_predator_drone_control" );
    level._ID49526 _meth_80B7();
    level._ID49526 = _ID42411::_ID35196( "third_uav" );
    level._ID49526 _meth_807C( "uav_engine_loop" );

    if ( !_func_02F( level._ID39406 ) )
    {
        level._ID39406 = _func_06A( "script_model", level._ID49526._ID740 );
        level._ID39406 _meth_80B8( "tag_origin" );
    }

    thread _unknown_73F0();

    if ( !_func_02F( level.uav_target ) )
        level.uav_target = _func_06A( "script_origin", level._ID49526._ID740 );

    level.uav_target._ID740 = level._ID49526._ID740;
    level.uav_target _meth_8053( level._ID49526 );
}

animated_bushes_setup()
{
    level endon( "player_slid_down" );
    var_0 = _func_1A2( "animated_bushes_start", "script_noteworthy" );
    var_1 = _func_1A2( "animated_bushes_forest", "script_noteworthy" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_805A();
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        _ID42237::_ID14413( "animated_bushes_flag" );
        var_5 = var_0;

        for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
        {
            var_3 = var_5[var_6];
            var_3 _meth_805A();
        }

        var_clear_7
        var_clear_6
        var_7 = var_1;

        for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
        {
            var_3 = var_7[var_8];
            var_3 _meth_8059();
        }

        var_clear_5
        var_clear_4
        _ID42237::_ID14426( "animated_bushes_flag" );
        var_9 = var_0;

        for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
        {
            var_3 = var_9[var_10];
            var_3 _meth_8059();
        }

        var_clear_3
        var_clear_2
        var_11 = var_1;

        for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
        {
            var_3 = var_11[var_12];
            var_3 _meth_805A();
        }

        var_clear_1
        var_clear_0
    }
}

animated_trees_setup()
{
    level endon( "player_slid_down" );
    var_0 = [];
    var_1 = _func_1A2( "script_model", "classname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID31388 ) && var_3._ID31388 == "animated_trees" )
            var_0 = _ID42237::_ID3293( var_0, var_3 );
    }

    var_clear_2
    var_clear_0
    var_5 = var_0;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _meth_805A();
    }

    var_clear_2
    var_clear_0

    for (;;)
    {
        _ID42237::_ID14413( "animated_trees_flag" );
        var_8 = var_0;

        for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
        {
            var_6 = var_8[var_9];
            var_6 _meth_8059();
        }

        var_clear_3
        var_clear_2
        _ID42237::_ID14426( "animated_trees_flag" );
        var_10 = var_0;

        for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
        {
            var_6 = var_10[var_11];
            var_6 _meth_805A();
        }

        var_clear_1
        var_clear_0
    }
}

safe_from_btr_failproof()
{
    var_0 = _func_1A1( "btr_hurt", "targetname" );
    var_1 = var_0._ID740;
    var_0._ID740 = var_0._ID740 + ( 0, 0, -1000 );
    _ID42237::_ID14413( "btr_hurt_flag" );
    var_0._ID740 = var_1;
}

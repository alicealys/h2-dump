// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\arcadia_mission_select_cam::_ID50320();
        return;
    }

    _ID42407::_ID10126( ::_unknown_0350 );
    _ID42407::_ID1951( "street", ::_unknown_0357 );
    _ID42407::_ID1951( "checkpoint", ::_unknown_037C );
    _ID42407::_ID1951( "golf", ::_unknown_039A );
    _ID42407::_ID1951( "crash", ::_unknown_03DF );
    _ID42231::_ID48620( "toy_firehydrant", "fx/props/firehydrant_exp", "fx/props/firehydrant_exp_arcadia" );
    _ID42231::_ID48620( "toy_firehydrant", "fx/props/firehydrant_spray_10sec", "fx/props/firehydrant_spray_10sec_arcadia" );
    _func_0DB( "r_outdoorfeather", 64 );
    _func_150( &"ARCADIA_OBJECTIVE_AA_GUNS" );
    _func_150( &"ARCADIA_OBJECTIVE_BROOKMERE" );
    _func_150( &"ARCADIA_OBJECTIVE_INTEL" );
    _func_150( &"ARCADIA_LASER_HINT" );
    _func_150( &"ARCADIA_LASER_HINT_GOLFCOURSE" );
    _func_150( &"ARCADIA_PICK_UP_BRIEFCASE_HINT" );
    _func_150( &"ARCADIA_PICK_UP_BRIEFCASE_HINT_PC" );
    _func_150( &"ARCADIA_OBJECTIVE_LOCATE_AA_GUNS" );
    _func_150( &"ARCADIA_OBJECTIVE_NEUTRALIZE_AA_GUNS" );
    _func_150( &"ARCADIA_OBJECTIVE_EXTRACT_VIP" );
    _func_260( "arcadia" );
    _func_260( "arcadia_nvg_laser" );
    _func_14F( "dpad_laser_designator" );
    _func_14F( "black" );
    _func_14C( "vehicle_zpu4_burn" );
    _func_14C( "cs_vodkabottle01" );
    _func_14C( "electronics_camera_pointandshoot_animated" );
    _func_14C( "com_metal_briefcase_opened_obj" );
    _func_152( "arcadia_artillery_rumble" );
    _func_036( "arcadia_debug_stryker", "0" );
    _func_14E( "rpg_straight" );
    _func_14E( "usp_laserdesignator" );
    _unknown_033A();
    _ID42407::_ID1885( "b2bomb", 0.5, 0.5, 2000 );
    _ID49242::_ID616();
    _ID51176::_ID616();
    _ID44499::_ID616();
    maps\arcadia_lighting::_ID616();
    var_0 = _func_1A2( "volume_second_half", "targetname" );
    _ID42407::_ID22998( var_0 );
    _ID42407::_ID23000( var_0 );
    thread _unknown_093A();
    _func_0DB( "fx_cast_shadow", 0 );
    maps\arcadia_code::init_scope_fov_setup();
    _ID42323::_ID616();
    maps\arcadia_anim::_ID616();
    _ID42287::_ID521();
    _ID53924::_ID616();
    _ID42272::_ID33575( "compass_map_arcadia" );
    maps\arcadia_aud::_ID616();
    _ID42237::_ID14400( "used_laser" );
    _ID42237::_ID14400( "used_laser_attack" );
    _ID42237::_ID14400( "used_laser_golf" );
    _ID42237::_ID14400( "laser_hint_print" );
    _ID42237::_ID14400( "stealth_bombed_0" );
    _ID42237::_ID14400( "stealth_bombed_1" );
    _ID42237::_ID14400( "lazed_targets_0" );
    _ID42237::_ID14400( "lazed_targets_1" );
    _ID42237::_ID14400( "golfcourse_vehicles_dead" );
    _ID42237::_ID14400( "objective_laze_golfcourse" );
    _ID42237::_ID14400( "foley_in_panic_room" );
    _ID42237::_ID14400( "picked_up_briefcase" );
    _ID42237::_ID14400( "examine_tats" );
    _ID42237::_ID14400( "player_can_pick_up_briefcase" );
    _ID42237::_ID14400( "end_dialog_done" );
    _ID42237::_ID14400( "foley_leaves_panic_room" );
    _ID42237::_ID14400( "disable_stryker_dialog" );
    _ID42237::_ID14400( "objective_aa_guns_given" );
    _ID42237::_ID14400( "objective_brookmere_road_given" );
    _ID42237::_ID14400( "c130_sequence_started" );
    _ID42237::_ID14400( "mi17_sequence_started" );
    maps\arcadia_code::initialize_portal_flags();
    thread _unknown_0A43();
    level._ID388 = _func_1A1( "foley", "script_noteworthy" );
    level._ID388._ID3189 = "foley";
    level._ID388 _ID42407::_ID22746();
    level._ID388 _ID42407::_ID22825();
    level._ID44224 = _func_1A1( "dunn", "script_noteworthy" );
    level._ID44224._ID3189 = "dunn";
    level._ID44224 _ID42407::_ID22746();
    level._ID44224 _ID42407::_ID22825();
    var_1 = _func_0DE( "allies" );
    _ID42237::_ID3350( var_1, maps\arcadia_code::_ID45978 );
    var_1 = _ID42237::_ID3322( var_1, _ID42407::_ID15767() );
    level._ID14988 = maps\arcadia_code::_ID45978;
    _ID42237::_ID14402( "respawn_friendlies" );
    _ID42407::_ID32284( "r" );
    _ID42407::_ID32284( "b" );
    _ID42237::_ID3350( var_1, _ID42407::_ID29701 );
    var_2 = _func_0E2( "axis" );
    var_3 = [];
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( !_func_02F( var_5._ID31388 ) )
            continue;

        var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID3342( var_3, maps\arcadia_code::_ID46945 );
    var_7 = _func_1A2( "right_mansion_spawner", "targetname" );
    _ID42407::_ID3342( var_7, maps\arcadia_code::act_as_ambush_combat_for_a_while, 1, 8 );
    level._ID51107 = _ID42411::_ID35196( "stryker" );
    level._ID51107._ID40270 = 1;
    level._ID51107 _meth_823C();
    level._ID51107._ID9640 = 1;
    level._ID51107 _meth_8400( 1 );
    maps\arcadia_stryker::_ID51150();
    level._ID51107._ID53781 = level._ID51107;
    level._ID51107 thread maps\arcadia_stryker::_ID48063();
    level._ID51107 thread maps\arcadia_stryker::_ID45939();
    level._ID51107 thread maps\arcadia_stryker::_ID49881();
    level._ID51107 thread maps\arcadia_code::_ID49697();
    level._ID51107 thread maps\arcadia_stryker::_ID45939();
    level._ID51107 thread maps\arcadia_code::_ID51431();
    level._ID51107 thread maps\arcadia_code::_ID45256();
    level._ID51107 thread maps\arcadia_code::_ID53156();
    level._ID51107 thread maps\arcadia_stryker::achievement_target_confirmed_init();
    level._ID51107 _meth_8262( "Honey Badger", &"" );
    level._ID51107._ID23735 = _func_06A( "script_origin", level._ID51107._ID740 + ( 0, 0, 70 ) );
    level._ID51107._ID23735 _meth_8053( level._ID51107 );
    _func_1A9( level._ID51107._ID23735, 10000, 3000, undefined, undefined, undefined, "axis" );
    thread maps\arcadia_code::_ID54226();
    level._ID49728[0] = 0;
    level._ID49728[1] = 0;
    maps\arcadia_code::_ID43758( 9000 );
    _ID42407::_ID3343( "drop_plane", maps\arcadia_code::_ID48768 );
    _ID42237::_ID30398( "sentry_activate", maps\arcadia_code::_ID53657 );
    _ID42237::_ID30398( "vehicle_path_disconnector", maps\arcadia_code::_ID46323 );
    _ID42237::_ID30398( "delete_ai_trigger", maps\arcadia_code::_ID48556 );
    _ID42237::_ID30396( "plane_sound", _ID42549::_ID26746 );
    _ID42237::_ID30396( "evac_chopper_1", _ID42407::_ID1947, maps\arcadia_code::_ID51783 );
    _ID42237::_ID30396( "ignore_until_unload", maps\arcadia_code::_ID48058 );
    _ID42237::_ID30396( "checkpoing_clear_activate", maps\arcadia_code::_ID49954, "checkpoint_enemies_dead" );
    _ID42237::_ID30396( "checkpoing_clear_activate", ::_unknown_0641 );
    var_8 = _func_1A1( "evac_chopper_1", "script_noteworthy" );
    var_8 _ID42407::_ID1947( ::_unknown_0C2D );
    _ID42407::_ID1895( "use_laser", &"ARCADIA_LASER_HINT", maps\arcadia_code::_ID53758 );
    _ID42407::_ID1895( "use_laser_attack", &"ARCADIA_LASER_ATTACK_HINT", maps\arcadia_code::_ID50043 );
    _ID42407::_ID1895( "use_laser_golf", &"ARCADIA_LASER_HINT_GOLFCOURSE", maps\arcadia_code::_ID53228, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct2", "targetname" ), ::_unknown_0CBA, "h1_mwr_com_widescreen_monitor_2_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_2_on", "targetname" ), ::_unknown_0CE0, "com_widescreen_monitor_on_2_des", "tv_explosion", ( 0, 0, 27 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on1", "targetname" ), ::_unknown_0D05, "com_widescreen_monitor_on_1_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on2", "targetname" ), ::_unknown_0D2B, "com_widescreen_monitor_on_2_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on_1_var2", "targetname" ), ::_unknown_0D50, "com_widescreen_monitor_on_1_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on_2_var2", "targetname" ), ::_unknown_0D76, "com_widescreen_monitor_on_2_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
    thread maps\arcadia_code::_ID54278();
    thread _unknown_0AAE();
    thread _unknown_0A83();
    thread maps\arcadia_code::_ID21733( level._ID794 );
    thread maps\arcadia_code::_ID43364();
    thread maps\arcadia_code::_ID45504();
    thread maps\arcadia_code::_ID46833();
    thread _unknown_09F7();
    thread maps\arcadia_code::_ID48885();
    thread maps\arcadia_code::_ID48686();
    thread maps\arcadia_code::_ID18146();
    thread _unknown_0B09();
    thread _unknown_0B71();
    thread _unknown_0B96();
    thread maps\arcadia_code::_ID28210();
    thread _unknown_0CC8();
    thread _unknown_07C8();
    thread maps\arcadia_code::_ID51604();
    thread maps\arcadia_code::_ID44670();
    thread maps\arcadia_code::_ID52678();
    thread maps\arcadia_code::_ID47355();
    thread maps\arcadia_code::_ID53091();
    thread maps\arcadia_code::_ID46846();
    thread _unknown_07DD();
    thread _unknown_07E7();
    maps\arcadia_code::static_model_group_setup();
    thread maps\arcadia_code::mansion_ceiling_fans_setup();
    _ID42237::_ID3350( _func_1A2( "rotating_fan", "targetname" ), maps\arcadia_code::_ID50162 );
    thread maps\arcadia_code::plane_wire_anim_setup();
    thread maps\arcadia_code::mansion_horizontal_lights_setup();
    thread maps\arcadia_code::bx_signs_setup();
    thread maps\arcadia_code::plane_crash_culldist_setup();
    maps\arcadia_aud::_ID54133();
    maps\arcadia_code::parked_civilian_car_lighting();
    wait 0.05;
    var_9 = _func_0DE( "allies" );
    var_10 = var_9;

    for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
    {
        var_11 = var_10[var_12];
        var_11._ID4867 = 0.4;
    }

    var_clear_2
    var_clear_0
    var_13 = maps\arcadia_code::_ID45879( "golf_after", 0 );
    _ID42237::_ID3294( var_13, ::_meth_805A );
    var_14 = maps\arcadia_code::_ID45879( "golf_after", 1 );
    _ID42237::_ID3294( var_14, ::_meth_805A );
    thread maps\arcadia_code::covered_bridge_exit_manage_allies();
}

_ID44215()
{
    self waittill( "trigger" );
    maps\arcadia_code::_ID43758( 0 );
}

_ID46214()
{
    _ID42237::_ID14413( "first_bridge" );
    maps\arcadia_code::_ID43758( 9000 );
}

_ID45666()
{
    _ID42237::_ID14413( "golf_course_mansion" );
    maps\arcadia_code::_ID43758( 0 );
}

_ID51363()
{
    wait 1;
    var_0 = _func_1A1( "volume_second_half", "targetname" );
    var_0 _ID42407::_ID1786();
    var_0 _ID42407::_ID1794();
}

_ID43597()
{
    _func_155( "fx/smoke/car_damage_whitesmoke" );
    _func_155( "fx/smoke/car_damage_blacksmoke" );
    _func_155( "fx/smoke/car_damage_blacksmoke_fire" );
    _func_155( "fx/explosions/small_vehicle_explosion" );
    _func_155( "fx/props/car_glass_large" );
    _func_155( "fx/props/car_glass_med" );
    _func_155( "fx/props/car_glass_headlight" );
    _func_155( "fx/smoke/motorcycle_damage_blacksmoke_fire" );
    _func_155( "fx/props/car_glass_brakelight" );
    _func_155( "fx/props/mail_box_explode" );
    _func_155( "fx/props/garbage_spew_des" );
    _func_155( "fx/props/garbage_spew" );
    _func_155( "fx/explosions/wallfan_explosion_dmg" );
    _func_155( "fx/explosions/wallfan_explosion_des" );
    _func_155( "fx/props/filecabinet_dam" );
    _func_155( "fx/props/filecabinet_des" );
    _func_155( "fx/misc/light_blowout_runner" );
    _func_155( "fx/props/electricbox4_explode" );
    _func_155( "fx/explosions/ceiling_fan_explosion" );
    _func_155( "fx/props/firehydrant_leak" );
    _func_155( "fx/props/firehydrant_exp" );
    _func_155( "fx/props/firehydrant_spray_10sec" );
    _func_155( "fx/explosions/tv_flatscreen_explosion" );
    _func_14C( "ma_flatscreen_tv_wallmount_broken_02" );
    _func_14C( "vehicle_van_green_destructible" );
    _func_14C( "vehicle_van_green_destroyed" );
    _func_14C( "vehicle_van_green_hood" );
    _func_14C( "vehicle_van_green_door_rb" );
    _func_14C( "vehicle_van_green_mirror_l" );
    _func_14C( "vehicle_van_green_mirror_r" );
    _func_14C( "vehicle_van_wheel_lf" );
    _func_14C( "vehicle_pickup_destructible_mp" );
    _func_14C( "vehicle_pickup_destroyed" );
    _func_14C( "vehicle_pickup_hood" );
    _func_14C( "vehicle_pickup_door_lf" );
    _func_14C( "vehicle_pickup_door_rf" );
    _func_14C( "vehicle_pickup_mirror_l" );
    _func_14C( "vehicle_pickup_mirror_r" );
    _func_14C( "vehicle_luxurysedan_2008_white_destructible" );
    _func_14C( "vehicle_luxurysedan_2008_white_destroy" );
    _func_14C( "vehicle_luxurysedan_2008_white_hood" );
    _func_14C( "vehicle_luxurysedan_2008_white_wheel_lf" );
    _func_14C( "vehicle_luxurysedan_2008_white_door_lf" );
    _func_14C( "vehicle_luxurysedan_2008_white_door_rf" );
    _func_14C( "vehicle_luxurysedan_2008_white_door_lb" );
    _func_14C( "vehicle_luxurysedan_2008_white_door_rb" );
    _func_14C( "vehicle_luxurysedan_2008_white_mirror_l" );
    _func_14C( "vehicle_luxurysedan_2008_white_mirror_r" );
    _func_14C( "vehicle_coupe_gold_destructible" );
    _func_14C( "vehicle_coupe_gold_destroyed" );
    _func_14C( "vehicle_coupe_gold_door_lf" );
    _func_14C( "vehicle_coupe_gold_spoiler" );
    _func_14C( "vehicle_coupe_gold_mirror_l" );
    _func_14C( "vehicle_coupe_gold_mirror_r" );
    _func_14C( "vehicle_coupe_black_destructible" );
    _func_14C( "vehicle_coupe_black_destroyed" );
    _func_14C( "vehicle_coupe_black_door_lf" );
    _func_14C( "vehicle_coupe_black_spoiler" );
    _func_14C( "vehicle_coupe_black_mirror_l" );
    _func_14C( "vehicle_coupe_black_mirror_r" );
    _func_14C( "vehicle_suburban_destructible_beige" );
    _func_14C( "vehicle_suburban_destroyed_beige" );
    _func_14C( "vehicle_suburban_wheel_rf" );
    _func_14C( "vehicle_suburban_door_lb_beige" );
    _func_14C( "vehicle_motorcycle_01_destructible" );
    _func_14C( "vehicle_motorcycle_01_destroy" );
    _func_14C( "vehicle_motorcycle_01_front_wheel_d" );
    _func_14C( "vehicle_motorcycle_01_rear_wheel_d" );
    _func_14C( "vehicle_motorcycle_02_destructible" );
    _func_14C( "vehicle_motorcycle_02_destroy" );
    _func_14C( "vehicle_policecar_lapd_destructible" );
    _func_14C( "vehicle_policecar_lapd_destroy" );
    _func_14C( "vehicle_policecar_lapd_wheel_lf" );
    _func_14C( "vehicle_policecar_lapd_door_lf" );
    _func_14C( "vehicle_policecar_lapd_door_rf" );
    _func_14C( "vehicle_policecar_lapd_door_lb" );
    _func_14C( "vehicle_policecar_lapd_mirror_l" );
    _func_14C( "vehicle_policecar_lapd_mirror_r" );
    _func_14C( "mailbox_black" );
    _func_14C( "mailbox_black_dam" );
    _func_14C( "mailbox_black_dest" );
    _func_14C( "mailbox_black_door" );
    _func_14C( "mailbox_black_flag" );
    _func_14C( "com_trashbin02" );
    _func_14C( "com_trashbin02_dmg" );
    _func_14C( "com_trashbin02_lid" );
    _func_14C( "com_recyclebin01" );
    _func_14C( "com_recyclebin01_dmg" );
    _func_14C( "com_recyclebin01_lid" );
    _func_14C( "com_filecabinetblackclosed" );
    _func_14C( "com_filecabinetblackclosed_dam" );
    _func_14C( "com_filecabinetblackclosed_des" );
    _func_14C( "com_filecabinetblackclosed_drawer" );
    _func_14C( "com_light_ceiling_round_on" );
    _func_14C( "com_light_ceiling_round_off" );
    _func_14C( "me_electricbox2" );
    _func_14C( "me_electricbox2_dest" );
    _func_14C( "me_electricbox2_door" );
    _func_14C( "me_electricbox2_door_upper" );
    _func_14C( "me_electricbox4" );
    _func_14C( "me_electricbox4_dest" );
    _func_14C( "me_electricbox4_door" );
    _func_14C( "h2_us_ceiling_fan_blades_01_dest_animated" );
    _func_14C( "h2_us_ceiling_fan_housing_01_dest" );
    _func_14C( "h2_us_ceiling_fan_blades_02_dest_animated" );
    _func_14C( "h2_us_ceiling_fan_housing_02_dest" );
    _func_14C( "com_trashbin01" );
    _func_14C( "com_trashbin01_dmg" );
    _func_14C( "com_trashbin01_lid" );
    _func_14C( "com_firehydrant" );
    _func_14C( "com_firehydrant_dest" );
    _func_14C( "com_firehydrant_dam" );
    _func_14C( "com_firehydrant_cap" );
    _func_14C( "h1_mwr_com_widescreen_monitor_2_des" );
    _func_14C( "com_widescreen_monitor_on_1_des" );
    _func_14C( "com_widescreen_monitor_on_2_des" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
}

_ID51193()
{
    _ID42475::_ID34575( "startStreet_checkpoint" );
    maps\arcadia_lighting::_ID49155( "arcadia_street" );
    maps\arcadia_code::_ID48221( "playerstart_street" );
    thread _unknown_0DAC();
    thread _unknown_0E6E();
    thread _unknown_0E79();
    thread _unknown_0E89();
    thread _unknown_0E98();
    thread _unknown_0EA8();
    _ID42237::_ID3350( _func_1A2( "opening_rpg_location", "targetname" ), maps\arcadia_code::_ID45315 );
    level._ID51107 thread _unknown_0F08();
}

_ID53780()
{
    _ID42475::_ID34575( "startCheckpoint_checkpoint" );
    maps\arcadia_lighting::_ID49155( "arcadia_checkpoint" );
    _ID42237::_ID14402( "used_laser" );
    _func_1A1( "friendlyspawn_trigger_checkpoint", "script_noteworthy" ) notify( "trigger",  level._ID794  );
    maps\arcadia_code::_ID48221( "playerstart_checkpoint" );
    thread _unknown_0E13();
}

_ID46037()
{
    _ID42475::_ID34575( "startGolf_checkpoint" );
    maps\arcadia_lighting::_ID49155( "arcadia_golf" );
    _ID42237::_ID14402( "golf_course_vehicles" );
    _ID42237::_ID14402( "golf_course_mansion" );
    _ID42237::_ID14402( "used_laser" );
    maps\arcadia_code::_ID48221( "playerstart_golf" );
    thread _unknown_0E4B();
    thread _unknown_0E62();
    _ID42237::_ID14402( "first_bridge" );
    _ID42237::_ID14402( "golf_course_battle" );
    wait 0.05;
    var_0 = _func_0DE( "allies" );
    var_1 = _func_1A2( "start_golf_friendly_teleport", "targetname" );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_81D2( var_1[var_4]._ID740, var_1[var_4]._ID65 );
    }

    var_clear_2
    var_5 = _func_1A1( "start_golf_friendly_trigger", "script_noteworthy" );
    var_5 notify( "trigger",  level._ID794  );
    _ID42234::_ID13611( "c130_crash_leftovers" );
    thread maps\arcadia_code::_ID44320();
}

_ID51224()
{
    _ID42475::_ID34575( "startCrash_checkpoint" );
    maps\arcadia_lighting::_ID49155( "arcadia_crash" );
    maps\arcadia_code::_ID48221( "playerstart_crash" );
    _ID42237::_ID14402( "fridge_guy" );
    _ID42237::_ID14402( "ending_prep" );
    _ID42237::_ID14402( "used_laser" );
    _ID42237::_ID14402( "disable_stryker_dialog" );
    wait 0.05;
    level notify( "golf_course_mansion" );
    level._ID51107 _meth_805F();
    level._ID51107 _meth_80B7();
    var_0 = _func_0DE( "allies" );
    var_1 = _func_1A2( "start_crash_friendly_teleport", "targetname" );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_81D2( var_1[var_4]._ID740, var_1[var_4]._ID65 );
        var_3._ID452 = 32;
        var_3 _meth_81B2( var_1[var_4]._ID740 );
    }

    var_clear_2
    var_5 = _func_1A1( "start_crash_friendly_respawn_trigger", "script_noteworthy" );
    var_5 notify( "trigger",  level._ID794  );
    thread _unknown_0FB3();
    thread maps\arcadia_code::_ID44320();
}

_ID46693()
{
    _ID42237::_ID14413( "objective_aa_guns_given" );
    _func_1E3( 0, "current", &"ARCADIA_OBJECTIVE_LOCATE_AA_GUNS" );
    _func_194( 0, level._ID388 );
    _ID42237::_ID14413( "objective_brookmere_road_given" );
    _func_1E3( 1, "invisible", &"ARCADIA_OBJECTIVE_BROOKMERE" );
    _func_1E5( 1, "active" );
}

_ID51929()
{
    if ( _ID42237::_ID14385( "objective_laze_golfcourse" ) )
        return;

    _ID42237::_ID14402( "objective_laze_golfcourse" );
    level notify( "objective_laze_golfcourse" );
    wait 0.05;
    thread _unknown_1012();
    _func_115( 0, &"ARCADIA_OBJECTIVE_NEUTRALIZE_AA_GUNS" );
    _func_1E5( 0, "current" );
    _func_1E8( 0, ( 0, 0, 0 ) );
    _func_117( 0, 0, _func_1A1( "obj_location_stealth_0", "targetname" )._ID740 );
    _func_117( 0, 1, _func_1A1( "obj_location_stealth_1", "targetname" )._ID740 );
    thread maps\arcadia_code::_ID48319();
    _ID42237::_ID14413( "stealth_bombed_0" );
    _ID42237::_ID14413( "stealth_bombed_1" );
    wait 3.0;
    _func_1E5( 0, "done" );
    wait 2;
    _ID42237::_ID14402( "golfcourse_vehicles_dead" );
}

_ID43058()
{
    _ID42237::_ID14415( "second_bridge", "golfcourse_vehicles_dead" );
    thread _unknown_10C5();
    thread _unknown_10A9();
    wait 3;
    var_0 = _func_1A1( "objective_brookmere_location", "targetname" );
    _func_1E3( 1, "current", &"ARCADIA_OBJECTIVE_BROOKMERE", var_0._ID740 );
    _func_1E5( 1, "current" );
    thread _unknown_10E7();
}

_ID54265()
{
    _ID42237::_ID14413( "player_approaching_house" );
    _func_1E3( 1, "active", &"ARCADIA_OBJECTIVE_EXTRACT_VIP" );
    _func_1E5( 1, "current" );
    _func_1E8( 1, ( 14742, -6400, 2584 ) );
    _ID42237::_ID14413( "start_ending" );
    _func_114( 1, "done" );
}

_ID53734()
{
    _ID42237::_ID14413( "player_can_pick_up_briefcase" );
    var_0 = _func_1A1( "objective_intel_location", "targetname" );
    _func_1E3( 3, "current", &"ARCADIA_OBJECTIVE_INTEL_BRIEFCASE", var_0._ID740 );
}

_ID50064()
{
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID14543( "allies" );
    level._ID388 thread _ID42259::_ID3111( level._ID388, "arcadia_fly_headingto4677" );
    wait 7.5;
    level._ID388 thread _ID42259::_ID3111( level._ID388, "arcadia_fly_lookingfor" );
    wait 3;
    _ID42407::_ID28864( "arcadia_shp_genshep" );
    _ID42407::_ID28864( "arcadia_shp_panicroom" );
    level._ID388 thread _ID42259::_ID3111( level._ID388, "arcadia_fly_yessir" );
    wait 1;
    _ID42407::_ID28864( "arcadia_shp_phoenix" );
    _ID42407::_ID28864( "arcadia_shp_reportback" );
    wait 0.5;
    level._ID388 thread _ID42259::_ID3111( level._ID388, "arcadia_fly_heardtheman" );
    wait 2.0;
    _ID42407::_ID14544( "allies" );
}

_ID53268()
{
    _ID42237::_ID14413( "first_bridge" );
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_3 == var_0.size - 2 || var_3 == var_0.size - 1 )
        {
            var_2 thread _ID42407::_ID10959();
            var_2._ID486 = 1;
        }

        var_2 thread _ID42407::_ID32315( "g" );
    }

    var_clear_2
}

_ID52230()
{
    _ID42237::_ID14413( "enemies_yellow_house" );
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_yellowhouse" );
}

_ID44339()
{
    _ID42237::_ID14413( "enemies_grey_house" );
    level._ID44224 thread _ID42407::_ID10805( "arcadia_cpd_greyhouse" );
    wait 1;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_greyhouse" );
}

_ID46445()
{
    _ID42237::_ID14413( "enemies_pink_house" );
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_suppressingfire" );
    wait 8;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_suppressingfire" );
}

_ID47953()
{
    _ID42237::_ID14413( "enemies_apartments" );
    level._ID44224 thread _ID42407::_ID10805( "arcadia_cpd_apartments" );
    wait 1;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_apartments" );
}

_ID44558()
{
    _ID42407::_ID4917( "allies" );
    wait 5;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_heavylosses" );
    wait 1;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_destroytriplea" );
    _ID42237::_ID14402( "objective_aa_guns_given" );
    _ID42407::_ID4918( "allies" );
    wait 10;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_getoffstreets" );
    wait 10;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_offstreets" );
    wait 15;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_outtastreets" );
    wait 15;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_flankthruhouses" );
    wait 20;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_movethruhouses" );
}

_ID43682()
{
    self waittill( "trigger" );
    var_0 = undefined;
    var_1 = undefined;
    var_2 = _func_0B7( 4 );

    switch ( var_2 )
    {

    }

    var_0 thread _ID42407::_ID10805( var_1 );
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID49633()
{
    self endon( "death" );
    _ID42237::_ID14413( "stryker_rpg_danger_dialog_1" );
    wait 8;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_protectstryker" );
    _ID42237::_ID14413( "stryker_rpg_danger_dialog_2" );
    wait 8;
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_watchforrpgs" );
    _ID42237::_ID14413( "stryker_rpg_danger_dialog_3" );
    wait 8;
    _ID42407::_ID28864( "arcadia_str_rpgfire" );
    level._ID388 thread _ID42407::_ID10805( "arcadia_fly_wereonit" );
}

_ID43693()
{
    _ID42237::_ID14413( "crashing_c130" );
    thread _unknown_1763();
    wait 3;
    var_0 = undefined;
    var_1 = undefined;
    var_2 = _func_0DE( "allies" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 _ID42407::_ID20537() )
            continue;

        if ( !_func_02F( var_0 ) )
            var_0 = var_4;
        else
            var_1 = var_4;

        if ( _func_02F( var_0 ) && _func_02F( var_1 ) )
            break;
    }

    var_clear_2
    var_clear_0
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_0 _ID42259::_ID3020( var_0, "arcadia_ar1_lookac130" );
    var_1 _ID42259::_ID3020( var_1, "arcadia_ar2_dontfly" );
    var_0 _ID42259::_ID3020( var_0, "arcadia_ar1_suckstobethem" );
    var_1 _ID42259::_ID3020( var_1, "arcadia_ar2_huah" );
}

_ID49515()
{
    _ID42237::_ID14413( "past_checkpoint" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID14543( "allies" );
    _ID42237::_ID14402( "disable_stryker_dialog" );
    _ID42407::_ID28864( "arcadia_hqr_sitrep" );
    level._ID388 _ID42407::_ID10805( "arcadia_fly_intoarcadia" );
    _ID42407::_ID28864( "arcadia_hqr_neworders" );
    level._ID388 _ID42407::_ID10805( "arcadia_fly_solidcopy" );
    _ID42407::_ID28864( "arcadia_hqr_divertto4677" );
    level._ID388 _ID42407::_ID10805( "arcadia_fly_divertto4677" );
    _ID42407::_ID28864( "arcadia_hqr_checkback" );
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID14544( "allies" );
    _ID42237::_ID14388( "disable_stryker_dialog" );
    _ID42237::_ID14402( "objective_brookmere_road_given" );
}

_ID50562()
{
    _ID42237::_ID14413( "fridge_guy" );
    var_0 = _ID42407::_ID35168( "fridge_guy_spawner" );
    level._ID51299 = var_0;
    var_0._ID3189 = "fridge_guy";
    var_0 _ID42407::_ID32353( 1 );
    var_0 _ID42407::_ID10973();
    thread _unknown_1667( var_0 );
    var_1 = _func_1A1( "fridge", "targetname" );
    var_1._ID3189 = "fridge";
    var_1 _ID42259::_ID32556();
    var_2 = _func_06A( "script_model", var_0._ID740 );
    var_2 _meth_80B8( "cs_vodkabottle01" );
    var_2 _meth_8053( var_0, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_0 thread _unknown_16BB( var_2 );
    var_0 thread _unknown_16CB( var_2 );
    var_3[0] = var_0;
    var_3[1] = var_1;
    var_1 thread _ID42259::_ID3040( var_3, "fridge_idle", "stop_idle" );
    var_0._ID49 = 1;
    var_1 thread _unknown_16FB( var_3 );
}

_ID51987( var_0 )
{
    var_0 waittill( "death" );
    wait 3.0;
    _ID42237::_ID14402( "icepick_callout" );
}

_ID44756( var_0 )
{
    self endon( "death" );
    self waittillmatch( "single anim",  "break_bottle"  );
    var_0 notify( "delete" );
    var_0 _meth_80B7();
}

_ID49975( var_0 )
{
    var_0 endon( "delete" );
    self waittill( "death" );
    var_0 _meth_80B7();
}

_ID45799( var_0 )
{
    var_0 endon( "death" );
    var_0 endon( "damage" );
    _ID42407::_ID38928( "fridge_guy_react", "targetname" );
}

_ID48293( var_0 )
{
    var_0[0] endon( "death" );
    _unknown_1762( var_0[0] );
    self notify( "stop_idle" );
    thread _ID42259::_ID3099( var_0, "fridge_react" );
    var_0[0] _ID42407::_ID32353( 0 );
}

_ID52237()
{
    _ID42237::_ID14413( "heros_become_red" );
    var_0 = _func_0C8( "finalRedIndex", "targetname" );
    level._ID9488[level._ID388 _ID42271::_ID16018()]["r"] = var_0._ID31096;
    level._ID388 thread _ID42407::_ID32315( "r" );
    level._ID388._ID3195 = 1.2;
    level._ID388 _meth_81D6( "stand" );
    level._ID44224 thread _ID42407::_ID32315( "r" );
    level._ID44224._ID3195 = 1.2;
    level._ID44224 _meth_81D6( "stand" );
}

_ID52604()
{
    thread _unknown_18BE();
    _ID42237::_ID14413( "ending_prep" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    _ID42407::_ID14543( "allies" );
    _ID42407::_ID14543( "axis" );
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID4867 = 100;
    }

    var_clear_2
    var_clear_0
    var_4 = _func_0C8( "housenode_foley", "targetname" );
    var_5 = _func_0C8( "housenode_dunn", "targetname" );
    var_6 = _func_0C8( "hallnode_foley", "targetname" );
    var_7 = _func_0C8( "hallnode_dunn", "targetname" );
    var_8 = _func_0C8( "ending_node_foley", "targetname" );
    var_9 = _func_1A1( "ending_node_dunn", "targetname" );
    var_10 = _func_0C8( "node_dunn_guard", "targetname" );
    thread _unknown_193E( "ending_enemy_spawner", "ending_node_hvi", "generic", "panicroom_viktor_turnhead" );
    level._ID388 _meth_81AF( 1 );
    level._ID44224 _meth_81AF( 1 );
    wait 0.1;
    level._ID388._ID452 = 16;
    level._ID388 _meth_81B1( var_4 );
    level._ID44224._ID452 = 16;
    level._ID44224 _meth_81B1( var_5 );
    _ID42237::_ID14413( "player_approaching_house" );
    level._ID388._ID452 = 16;
    level._ID388 _meth_81B1( var_6 );
    wait 0.5;
    level._ID44224._ID452 = 16;
    level._ID44224 _meth_81B1( var_7 );
    _ID42237::_ID14413( "end_dialog_done" );
    _ID42407::_ID24793();
}

_ID48283( var_0 )
{
    level._ID44224 _meth_81D6( "stand" );
    var_0 _ID42259::_ID3142( level._ID44224, "ending" );
    var_0 _ID42259::_ID3111( level._ID44224, "ending" );
    level._ID44224._ID38 = "noncombat";
    level._ID44224._ID452 = 16;
    level._ID44224 _meth_81D6( "stand" );
    level._ID44224 _meth_81B2( level._ID44224._ID740 );
}

_ID52496( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A1( var_0, "targetname" );
    var_5 = _func_1A1( var_1, "targetname" );
    var_6 = _unknown_1A1A( var_4 );
    var_6._ID3189 = var_2;
    var_5 thread _ID42259::_ID3018( var_6, var_3 );
    _ID42237::_ID14413( "picked_up_briefcase" );
    var_5 _ID42259::_ID3111( var_6, var_3 );
    var_5 thread _ID42259::_ID3038( var_6, var_3 );
}
#using_animtree("generic_human");

_ID44398( var_0 )
{
    var_1 = var_0 _ID42407::_ID35014( 1 );
    var_1 _ID42407::_ID17509();
    var_2 = _func_06A( "script_model", var_1._ID740 );
    var_2._ID65 = var_1._ID65;
    var_2 _meth_80B8( var_1._ID669 );
    var_3 = var_1 _meth_802C();

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        var_5 = var_1 _meth_802D( var_4 );
        var_6 = var_1 _meth_802E( var_4 );
        var_2 _meth_801D( var_5, var_6, 1 );
    }

    var_2 _meth_811E( #animtree );
    var_1 _meth_80B7();
    return var_2;
}

_ID52622()
{
    _ID42237::_ID14413( "icepick_callout" );
    level._ID388 _ID42407::_ID10805( "arcadia_fly_icepick1" );
    wait 1.5;
    _ID42237::_ID14413( "player_upstairs" );
    var_0 = _func_1A1( "ending_node_hvi", "targetname" );
    thread _unknown_1B3B( var_0 );
    level._ID388 waittill( "goal" );

    if ( !_ID42237::_ID14385( "start_ending" ) )
    {
        level._ID388 _ID42407::_ID8925( "on" );
        var_0 _ID42259::_ID3074( level._ID388, "panicroom_foley_intro" );
        var_0 _ID42259::_ID3111( level._ID388, "panicroom_foley_intro" );
        thread _ID42407::_ID24582( "mus_arcadia_panicroom" );

        if ( !_ID42237::_ID14385( "start_ending" ) )
        {
            var_0 thread _ID42259::_ID3044( level._ID388, "panicroom_foley_intro_idle", "stop_foley" );
            _ID42237::_ID14413( "start_ending" );
            var_0 notify( "stop_foley" );
            waittillframeend;
        }

        var_0 _ID42259::_ID3111( level._ID388, "panicroom_foley_intro_walk" );
    }
    else
    {
        thread _ID42407::_ID24582( "mus_arcadia_panicroom" );
        var_0 _ID42259::_ID3074( level._ID388, "panicroom_foley_panicroom" );
    }

    var_0 _ID42259::_ID3111( level._ID388, "panicroom_foley_panicroom" );
    var_0 thread _ID42259::_ID3044( level._ID388, "panicroom_foley_idle", "stop_foley" );
    _ID42237::_ID14402( "player_can_pick_up_briefcase" );
    _ID42237::_ID14413( "picked_up_briefcase" );
    _func_1E5( 3, "done" );
    _ID42237::_ID14402( "examine_tats" );
    var_0 notify( "stop_foley" );
    var_0 _ID42259::_ID3111( level._ID388, "panicroom_foley_outro" );
}

handledunn( var_0 )
{
    _ID42237::_ID14413( "start_ending" );
    var_0 _ID42259::_ID3074( level._ID44224, "panicroom_dunn_intro" );
    var_0 _ID42259::_ID3111( level._ID44224, "panicroom_dunn_intro" );
    var_0 thread _ID42259::_ID3044( level._ID44224, "panicroom_dunn_idle", "stop_dunn" );
    _ID42237::_ID14413( "picked_up_briefcase" );
    var_0 notify( "stop_dunn" );
    var_0 _ID42259::_ID3111( level._ID44224, "panicroom_dunn_outro" );
}

h2_hvi_spawn()
{
    var_0 = _func_1A1( "hvi_spawner", "targetname" );
    var_1 = self;
    var_2 = _unknown_1BF7( var_0 );
    var_2._ID3189 = "panicroom_hvi";
    var_1 thread _ID42259::_ID3018( var_2, "h2_briefcase_pickup" );
    var_2 _meth_801D( "cellphone_kit_05", "tag_inhand" );
    return var_2;
}

_ID50887()
{
    var_0 = _func_1A1( "ending_node_hvi", "targetname" );
    var_1 = var_0 _unknown_1CB6();
    var_2 = _func_1A1( "briefcase_trigger", "targetname" );
    var_2 thread _ID42237::_ID44574( level._ID794, &"ARCADIA_PICK_UP_BRIEFCASE_HINT", &"ARCADIA_PICK_UP_BRIEFCASE_HINT_PC", "trigger", thisthread );
    var_2 _meth_80E1( "HINT_ACTIVATE" );
    var_3 = _func_1A1( "briefcase", "targetname" );
    var_3 _ID42407::_ID3428( "briefcase" );
    var_0 thread _ID42259::_ID3018( var_3, "h2_briefcase_pickup" );
    var_2 _ID42237::_ID38863();
    _ID42237::_ID14413( "player_can_pick_up_briefcase" );
    var_3 _meth_80B8( "com_metal_briefcase_opened_obj" );
    var_2 _ID42237::_ID38865();
    var_2 waittill( "trigger" );
    var_3 thread _ID42237::_ID27077( "intelligence_briefcase_pickup" );
    var_3 _meth_80B8( "com_metal_briefcase_opened" );
    var_4 = 0.6;

    if ( level._ID794 _meth_8188() == "prone" )
        var_4 = 0.8;

    level._ID794 _meth_8189( "stand" );
    var_5 = [ var_3, var_1 ];
    thread _unknown_1DA9( var_4 );
    var_0 _ID42407::_ID49392( "h2_briefcase_pickup", var_5, 0, var_4, 1 );
    _ID42237::_ID14402( "picked_up_briefcase" );
    var_2 _meth_80B7();
    var_3 _meth_80B7();
}

briefcase_pickup_bodysense_cinematic( var_0 )
{
    var_1 = _ID54167::_ID43386( "briefcase_pickup_bodysense" );
    waitframe;
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 4.0, -1, 32, 32 ) _ID54167::_ID52391( level._ID794._ID49929, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 5.0 + var_0 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.85 + var_0 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 1.1 + var_0 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 2.55 + var_0 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 3.1 + var_0 ) _ID54167::_ID47198( 0.12, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_1 _ID54167::_ID48800( 3.65 + var_0 ) _ID54167::_ID47198( 0.08, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 4.35 + var_0 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 4.6 + var_0 ) _ID54167::_ID47198( 0.06, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48166();
}

_ID44076()
{
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "vip_gun_down" );
    _func_0DB( "cg_gunDownAnimDelayTime", 250 );
}

neighborhood_b_heli_death_animation()
{
    self waittill( "death" );
    self _meth_8155( level._ID30895["blackhawk_death_additive"]["hit_rear"] );
}

_ID44594()
{
    level _ID42237::_ID41068( "createfx_common_done", "start_is_set" );
    _ID42237::_ID14400( "disable_fx_last_section" );
    _ID42237::_ID14400( "disable_fx_first_section" );

    if ( _func_02F( level._ID35897 ) )
    {
        if ( level._ID35897 == "crash" || level._ID35897 == "golf" )
            _ID42237::_ID14402( "disable_fx_first_section" );
        else
            _ID42237::_ID14402( "disable_fx_last_section" );
    }

    var_0 = "first_section_fx_vol";
    _ID42407::_ID53651( var_0, undefined, "disable_fx_first_section" );
    _ID42407::_ID52583( var_0, _func_1A2( "fx_volume_first_section", "targetname" ) );
    var_0 = "last_section_fx_vol";
    _ID42407::_ID53651( var_0, undefined, "disable_fx_last_section" );
    _ID42407::_ID52583( var_0, _func_1A2( "fx_volume_last_section", "targetname" ) );
}

animate_chandelier()
{
    _ID42237::_ID14413( "ending_prep" );
    var_0 = _func_1A1( "chandelier_animated", "targetname" );
    var_0 _ID42407::_ID3428( "chandelier" );
    var_0 _ID42259::_ID3044( var_0, "idle" );
}

_ID49488( var_0, var_1, var_2, var_3, var_4 )
{
    self _meth_82CA( 1 );

    for (;;)
    {
        self waittill( "damage",  var_7, var_6, var_5  );

        if ( var_5 <= 0 )
            continue;

        if ( _func_02F( var_4 ) && var_4 )
        {
            var_8 = _func_1A1( self._ID1191, "targetname" );
            var_8 _meth_80B7();
        }

        if ( _func_02F( var_3 ) && var_3 )
            self _meth_82CC( self._ID740, var_7 * var_5 );

        self _meth_80B8( var_0 );
        var_9 = self _meth_809C();
        var_10 = var_9 + var_2;
        _func_156( _ID42237::_ID16299( var_1 ), var_10 );
        break;
    }
}

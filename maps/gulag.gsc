// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" || _func_039( "beautiful_corner_hdr_demo" ) == "1" || _func_039( "beautiful_corner_security_cameras" ) == "1" )
    {
        maps\gulag_beautiful_corner::_ID616();
        return;
    }

    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\gulag_mission_select_cam::_ID50320();
        return;
    }

    _func_0DB( "com_cinematicEndInWhite", 1 );
    _func_032( "ui_consciousness_init", 1 );
    level._ID10114 = 128;
    _ID42237::_ID9137( "f15", 1 );
    _func_0DB( "g_friendlyNameDist", 0 );
    _ID48864::_ID616();
    _func_150( &"GULAG_SPIE_HINT" );
    _func_150( &"GULAG_SPIE_HINT_PC" );
    _func_150( &"GULAG_RAPPEL_HINT" );
    _func_150( &"GULAG_RAPPEL_HINT_PC" );
    _func_150( &"SCRIPT_LEARN_GRENADE_LAUNCHER" );
    _func_150( &"SCRIPT_NIGHTVISION_USE" );
    _func_150( &"SCRIPT_NIGHTVISION_STOP_USE" );
    _func_150( &"GULAG_HINT_MELEE" );
    _func_150( &"GULAG_INTROSCREEN_LINE_4" );
    _func_150( &"GULAG_INTROSCREEN_LINE_3" );
    _func_150( &"GULAG_INTROSCREEN_LINE_2" );
    _func_150( &"GULAG_INTROSCREEN_LINE_1" );
    _func_150( &"AUTOSAVE_AUTOSAVE" );
    _func_150( &"GULAG_INTROSCREEN_1" );
    _func_150( &"GULAG_INTROSCREEN_2" );
    _func_150( &"GULAG_INTROSCREEN_3" );
    _func_150( &"GULAG_INTROSCREEN_4" );
    _func_150( &"GULAG_INTROSCREEN_5" );
    _func_150( &"GULAG_FIND_POW" );
    _func_150( &"GULAG_FOLLOW_SOAP" );
    _func_150( &"GULAG_CONTROL_ROOM" );
    _func_150( &"GULAG_CELL_DUTY" );
    _func_150( &"GULAG_BREACH_THE_BATHROOM" );
    _func_150( &"GULAG_ESCAPE" );
    _func_150( &"GULAG_INTROSCREEN_LINE_1" );
    _func_150( &"GULAG_INFILTRATE_THE_GULAG" );
    _func_150( &"SCRIPT_MANTLE" );
    _func_260( "gulag_global" );
    _func_260( "gulag_global_nvg_laser" );
    _func_260( "gulag_showers" );
    _func_260( "gulag_showers_nvg_laser" );
    _func_152( "tank_rumble" );
    _ID42407::_ID1951( "intro", ::_unknown_0557, "Intro", ::_unknown_059C );
    _ID42407::_ID1951( "approach", ::_unknown_05F8, "Approach", ::_unknown_05FC );
    _ID42407::_ID1951( "f15", ::_unknown_071B, "f15", ::_unknown_073E );
    _ID42407::_ID1951( "unload", ::_unknown_072D, "Unload", ::_unknown_0750 );
    _ID42407::_ID1951( "control_room", ::_unknown_085E, "Control Room", ::_unknown_0894 );
    _ID42407::_ID1951( "armory", ::_unknown_0A90, "Armory", ::_unknown_0ABA );
    _ID42407::_ID1951( "rappel", ::_unknown_0C46, "Rappel", ::_unknown_0C72 );
    _ID42407::_ID1951( "tunnel", ::_unknown_0DF3, "tunnel", ::_unknown_0E0F );
    _ID42407::_ID1951( "bathroom", ::_unknown_0E96, "Bathroom", ::_unknown_0EC8 );
    _ID42407::_ID1951( "rescue", ::_unknown_103F, "Rescue", ::_unknown_1063 );
    var_0 = _func_1A2( "falling_rib_chunk", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID31860 );
    var_1 = _func_1A2( "top_hall_exploder", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_2 = _func_1A2( "top_hall_chunk", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID31860 );
    var_2 = _func_1A2( "top_hall_chunk", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID31860 );
    level._ID54335 = 4000;
    level._ID52661 = 0.05;
    level._ID43124 = 0.4;
    level._ID51047 = 1;
    level._ID44935 = _ID42260::_ID45726;
    level._ID10930 = 1;
    level._ID9551 = ::_unknown_065E;
    _ID42287::_ID521();
    _ID46856::_ID616();
    _ID42542::_ID616( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_1" );
    _ID42542::_ID616( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_2" );
    var_3 = _func_1A2( "gulag_destructible_volume", "targetname" );
    _ID42407::_ID22998( var_3 );
    _ID42407::_ID23000( var_3 );
    _ID50975::_ID616();
    maps\gulag_lighting::_ID616();
    _ID49653::_ID616();
    _ID51081::_ID616();
    thread maps\gulag_ending::_ID44293();
    thread _unknown_170B();
    maps\gulag_anim::_ID616();
    _ID42323::_ID616();
    _ID42272::_ID33575( "compass_map_gulag" );
    thread maps\gulag_code::_ID43205();
    _func_034( "use_improved_breaches", 1 );
    level._ID51829 = "mil_frame_charge";
    _ID42367::_ID34366();
    level._ID1426["breach_door"] = _func_155( "fx/explosions/breach_wall_concrete" );
    _ID42337::_ID616( level._ID805 );
    level._ID794 _meth_8313( 1, "" );
    _ID42407::_ID1892( "allies", maps\gulag_code::_ID24832 );
    _ID42237::_ID30398( "helper_model", _ID42407::_ID31860 );
    _ID42407::_ID1895( "grenade_launcher", &"SCRIPT_LEARN_GRENADE_LAUNCHER", maps\gulag_code::_ID51178 );
    _ID42407::_ID1895( "nvg", &"SCRIPT_NIGHTVISION_USE", _ID42337::_ID33930, undefined, "medium_background" );
    _ID42407::_ID1895( "disable_nvg", &"SCRIPT_NIGHTVISION_STOP_USE", _ID42337::_ID33876, undefined, "medium_background" );
    _ID42407::_ID1895( "riot_bash", &"GULAG_HINT_MELEE", maps\gulag_code::_ID54034, undefined, "small_background" );
    level._ID54424 = 1000;
    level._ID1553 = 2.5;
    _unknown_0660();
    thread maps\gulag_code::_ID46606( "cell_door2" );
    thread maps\gulag_code::_ID46606( "cell_door3" );
    thread maps\gulag_code::_ID46606( "cell_door4" );
    thread maps\gulag_code::_ID46606( "cell_door_weapons" );
    _func_14E( "smoke_grenade_american" );
    _func_14E( "m4m203_reflex_arctic" );
    _func_14E( "f15_sam" );
    _func_14E( "sam" );
    _func_14E( "slamraam_missile" );
    _func_14E( "slamraam_missile_guided" );
    _func_14E( "cobra_seeker" );
    _func_14E( "rpg_straight" );
    _func_14E( "cobra_Sidewinder" );
    _func_14E( "m14_scoped_arctic" );
    _func_14E( "claymore" );
    _func_14E( "mp5_silencer_reflex" );
    _func_001( "player_view_controller" );
    _func_14E( "fraggrenade" );
    _func_14E( "flash_grenade" );
    _func_14E( "claymore" );
    _func_14C( "viewhands_udt" );
    _func_14C( "h1_cs_light_alarm_on" );
    _func_14C( "h1_cs_light_alarm_blue_on" );
    _func_14C( "h1_cs_light_alarm_blue" );
    _func_14C( "gulag_price_ak47" );
    _func_14C( "vehicle_slamraam_launcher_no_spike" );
    _func_14C( "vehicle_slamraam_missiles" );
    _func_14C( "projectile_slamraam_missile" );
    _func_14C( "tag_turret" );
    _func_14C( "me_lightfluohang_double_destroyed" );
    _func_14C( "me_lightfluohang_single_destroyed" );
    _func_14C( "ma_flatscreen_tv_wallmount_broken_01" );
    _func_14C( "ma_flatscreen_tv_wallmount_broken_02" );
    _func_14C( "com_tv2_d" );
    _func_14C( "com_tv1" );
    _func_14C( "com_tv2" );
    _func_14C( "com_locker_double_destroyed" );
    _func_14C( "dt_mirror_dam" );
    _func_14C( "dt_mirror_des" );
    _func_14C( "tag_laser" );
    _func_14C( "viewbody_udt" );
    _func_14C( "h2_gulag_cellblock2_intact_wall_01" );
    _func_14C( "trq_tree_pine_snow_045_02_static" );
    _func_14C( "trq_tree_pine_snow_060_02_static" );
    _func_14C( "trq_tree_pine_snow_070_02_static" );
    _func_14C( "trq_tree_pine_snow_080_02_static" );
    _func_14C( "trq_tree_pine_snow_090_02_static" );
    _func_14C( "trq_tree_pine_snow_105_02_static" );
    _func_14C( "com_blackhawk_spotlight_on_mg_setup_3x_cold" );
    _func_14C( "com_blackhawk_spotlight_on_mg_setup_3x_cold_off" );
    _func_14C( "h2_com_laptop_rugged_open_gulag" );
    _func_14C( "h2_gulag_rappel_rope_player_60ft" );
    _func_14C( "h2_gulag_rappel_rope_player_60ft_standard" );
    _func_14C( "body_seal_udt_smg_gulag_intro" );
    _func_14C( "body_seal_udt_assault_a_gulag_intro" );
    _func_14C( "head_seal_udt_d_lifesaver_gulag_intro" );
    _func_14C( "head_seal_udt_a_gulag_intro" );
    _func_14C( "head_seal_udt_c_gulag_intro" );
    _func_14C( "head_seal_udt_d_gulag_intro" );
    _func_14C( "head_seal_udt_e_gulag_intro" );
    _func_14C( "h2_head_seal_udt_b_c_gulag_intro" );
    _func_14C( "h2_vehicle_sa15_gauntlet_destroy_snow" );
    _func_14C( "com_tv1_pho_zombie" );
    _func_14C( "hat_opforce_merc_b" );
    _func_14F( "h1_hud_tutorial_border" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_155( "fx/explosions/tv_flatscreen_explosion" );
    _func_155( "fx/misc/light_fluorescent_single_blowout_runner" );
    _func_155( "fx/misc/light_fluorescent_blowout_runner" );
    _func_155( "fx/props/locker_double_des_01_left" );
    _func_155( "fx/props/locker_double_des_02_right" );
    _func_155( "fx/props/locker_double_des_03_both" );
    _func_155( "fx/misc/no_effect" );
    _func_155( "fx/misc/light_blowout_swinging_runner" );
    _func_155( "fx/props/mirror_dt_panel_broken" );
    _func_155( "fx/props/mirror_shatter" );
    _func_155( "fx/misc/tower_light_blue_steady" );
    _func_14D( "gulag_attack" );
    _func_14D( "nosound" );
    _func_14C( "rat" );
    thread maps\gulag_code::_ID49442();
    maps\gulag_code::_ID53948();
    thread maps\gulag_code::ambient_snowing();
    level._ID50486 = -0.5;
    level._ID6112["tv_explode"] = _func_155( "fx/explosions/tv_explosion" );
    thread _unknown_0982();
    thread maps\gulag_code::_ID45749();
    maps\gulag_aud::_ID616();
    thread maps\gulag_code::_ID50467();
    level thread maps\gulag_code::_ID51497();
    level._ID53749 = [];
    var_4 = _func_1A2( "tarp_pull_org", "targetname" );
    _ID42237::_ID3350( var_4, maps\gulag_code::_ID45082 );
    var_5 = _ID42237::_ID16638( "start_approach", "script_noteworthy" );
    var_6 = _ID42237::_ID16640( "start_approach_friendly", "script_noteworthy" );
    var_6["p"] = var_5;
    thread maps\gulag_code::_ID54277();
    _func_31A( "hide_interior_portal_group", 0 );
    thread maps\gulag_code::_ID49141();
    _func_111( "team3", "axis" );
    _func_111( "axis", "team3" );
    var_7 = _func_1A1( "endlog_soap_spawner", "targetname" );
    var_7 thread _ID42407::_ID1947( maps\gulag_code::_ID53053 );
    var_7 = _func_1A1( "ghost", "script_noteworthy" );
    var_7 thread _ID42407::_ID1947( maps\gulag_code::_ID49503 );
    _ID42407::_ID3343( "overlook_spawner", maps\gulag_code::_ID44266 );
    _ID42407::_ID3344( "bhd_spawner", maps\gulag_code::_ID47756 );
    _ID42407::_ID3343( "breach_death_spawner", maps\gulag_code::_ID44333 );
    _ID42407::_ID3343( "riot_shield_spawner", maps\gulag_code::_ID48876 );
    _ID42407::_ID3343( "flee_armory_spawner", maps\gulag_code::_ID43329 );
    _ID42407::_ID3343( "tarp_spawner", maps\gulag_code::_ID45107 );
    _ID42407::_ID3343( "close_fighter_spawner", maps\gulag_code::_ID47217 );
    _ID42407::_ID3343( "bathroom_balcony_spawner", maps\gulag_code::_ID52347 );
    _ID42407::_ID3343( "riot_escort_spawner", maps\gulag_code::_ID43040 );
    _ID42407::_ID3343( "catwalk_spawner", maps\gulag_code::_ID54658 );
    _ID42407::_ID3343( "dies_fast_to_explosive", maps\gulag_code::_ID51092 );
    _ID42407::_ID3343( "ignore_then_dies_fast_to_explosive", maps\gulag_code::_ID46354 );
    _ID42237::_ID30396( "low_health_destructible", maps\gulag_code::_ID44484 );
    _ID42237::_ID30398( "challenge_only", _ID42407::_ID31860 );
    var_8 = _func_1A2( "ally_gets_missed_trigger", "targetname" );
    _ID42237::_ID3350( var_8, maps\gulag_code::_ID44693 );
    var_9 = _func_1A2( "ally_can_get_hit_trigger", "targetname" );
    _ID42237::_ID3350( var_9, maps\gulag_code::_ID53778 );
    var_10 = _func_1A2( "ally_in_armory", "targetname" );
    _ID42237::_ID3350( var_10, maps\gulag_code::_ID45948 );
    var_11 = _func_1A2( "damage_targ_trigger", "targetname" );
    _ID42237::_ID3350( var_11, maps\gulag_code::_ID49768 );
    var_12 = _func_1A2( "friendlies_ditch_riot_shields_trigger", "targetname" );
    _ID42237::_ID3350( var_12, maps\gulag_code::_ID45819 );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_moves_into_gulag" );
    _ID42407::_ID1890( _ID42237::_ID14402, "gulag_cell_doors_enabled" );
    thread _ID42407::_ID11231();
    thread maps\gulag_code::_ID52125();
    level._ID49181 = 0;
    level._ID50003 = 0;
    level._ID45432 = "slamraam_missile_guided";
    thread _unknown_1818();
    thread _unknown_19A2();
    thread _unknown_1903();
    var_13 = _func_1A1( "ai_field_blocker", "targetname" );
    var_13 _meth_805F();
    var_13 _meth_82C9();
    var_14 = _func_1A2( "deprecated_traverse", "targetname" );
    _ID42237::_ID3350( var_14, _ID42407::_ID31860 );
    thread maps\gulag_code::_ID50384( "control_tower_event", "controltower" );
    thread maps\gulag_code::_ID50384( "last_tower_event", "castletower_1" );
    thread maps\gulag_code::_ID50384( "castle_tower_event", "castletower_2" );
    thread maps\gulag_code::_ID50384( "balcony_event", "balcony" );
    thread maps\gulag_code::_ID50384( "rockslide_event", "rockslide" );
    thread maps\gulag_code::_ID47239();
    thread maps\gulag_code::_ID43609();
    thread maps\gulag_code::_ID52141();
    thread maps\gulag_code::_ID50753();
    var_15 = _func_1A2( "anti_air_gun", "targetname" );
    _ID42237::_ID3350( var_15, maps\gulag_code::_ID43073 );
    thread maps\gulag_code::_ID47199();
    _unknown_1AB3();
    thread maps\gulag_code::_ID54342();

    if ( _func_03A( "limited_mode" ) )
        level._ID51625 = maps\gulag_code::_ID46373;

    _func_0DB( "r_reactiveMotionVehicleEnabled", 1 );
    _func_0DB( "r_reactiveMotionHelicopterLimit", 1 );
    _func_0DB( "r_reactiveMotionHelicopterRadius", 1000 );
    _func_0DB( "r_reactiveMotionVehicleZOffset", -120.0 );
    _func_0DB( "r_reactiveMotionHelicopterStrength", 5 );
    _func_0DB( "fx_cast_shadow", 0 );
    _func_0DB( "r_umbraAccurateOcclusionThreshold", 512 );
    thread _unknown_0C16();
    thread maps\gulag_code::_ID53023();
    thread maps\gulag_code::_ID48710();
    thread maps\gulag_code::surprise();
    thread maps\gulag_code::gulag_entrance_portal_group();
    thread maps\gulag_code::hide_courtyard_models();
    _func_31C( 1 );
    _func_31C( 3 );
    _func_31C( 4 );
    _func_31C( 5 );
    _func_31C( 6 );
    level._ID43135.greenberet_disabled = 1;
    thread maps\gulag_code::exterior_interior_lightgrid();
    level.cellblock_spawning_door = _func_1A1( "cellblock_spawning_door", "targetname" );
    level.cellblock_spawning_door _meth_82C9();
    level.cellblock_spawning_door _meth_805A();
    level.cellblock_spawning_door_coll = _func_1A1( "cellblock_spawning_door_coll", "targetname" );
    level.cellblock_spawning_door_coll _meth_805F();
    level.cellblock_spawning_door_coll _meth_82C9();
}

_ID49693()
{
    _ID42237::_ID14400( "intro_helis_go" );
    _ID42237::_ID14400( "stop_tv_loop" );
    _ID42237::_ID14400( "f15s_spawn" );
    _ID42237::_ID14400( "anti_air_missiles_fire" );
    _ID42237::_ID14400( "aa_hit" );
    _ID42237::_ID14400( "f15s_attack" );
    _ID42237::_ID14400( "player_heli_uses_modified_yaw" );
    _ID42237::_ID14400( "intro_helis_spawned" );
    _ID42237::_ID14400( "player_lands" );
    _ID42237::_ID14400( "a_heli_landed" );
    _ID42237::_ID14400( "overlook_cleared_with_safe_time" );
    _ID42237::_ID14400( "start_armory_music" );
    _ID42237::_ID14400( "spotlight_turns_on" );
    _ID42237::_ID14400( "cell_door2" );
    _ID42237::_ID14400( "cell_door3" );
    _ID42237::_ID14400( "cell_door4" );
    _ID42237::_ID14400( "cell_door_weapons" );
    _ID42237::_ID14400( "access_control_room" );
    _ID42237::_ID14400( "going_in_hot" );
    _ID42237::_ID14400( "armory_attack_sounds" );
    _ID42237::_ID14400( "gulag_cell_doors_enabled" );
    _ID42237::_ID14400( "player_exited_bathroom" );
    _ID42237::_ID14400( "player_rappels_from_bathroom" );
    _ID42237::_ID14400( "rope_drops_now" );
    _ID42237::_ID14400( "cell_duty" );
    _ID42237::_ID14400( "cellblock_player_starts_rappel" );
    _ID42237::_ID14400( "bathroom_second_wave_trigger" );
    _ID42237::_ID14400( "soap_snipes_tower" );
    _ID42237::_ID14400( "slamraam_gets_players_attention" );
    _ID42237::_ID14400( "slamraam_killed_2" );
    _ID42237::_ID14400( "stop_rotating_around_gulag" );
    _ID42237::_ID14400( "player_goes_in_for_landing" );
    _ID42237::_ID14400( "enable_endlog_fx" );
    _ID42237::_ID14400( "escape_the_gulag" );
    _ID42237::_ID14400( "friendlies_use_riotshield" );
    _ID42237::_ID14400( "checking_to_sweep_cells" );
    _ID42237::_ID14400( "lets_sweep_the_nvg_cells" );
    _ID42237::_ID14400( "soap_finishes_talking_about_going_in" );
    _ID42237::_ID14400( "nvg_moveup2" );
    _ID42237::_ID14400( "nvg_moveup3" );
    _ID42237::_ID14400( "nvg_moveup4" );
    _ID42237::_ID14400( "gulag_perimeter" );
    _ID42237::_ID14400( "pre_boats_attack" );
    _ID42237::_ID14400( "clear_dof" );
    _ID42237::_ID14400( "player_heli_backs_up" );
    _ID42237::_ID14400( "stop_shooting_right_side" );
    _ID42237::_ID14402( "player_can_rappel" );
    _ID42237::_ID14400( "background_explosion" );
    _ID42237::_ID14400( "ghost_goes_to_laptop" );
    _ID42237::_ID14400( "ghost_uses_laptop" );
    _ID42237::_ID14400( "castle_tower_event" );
    _ID42237::_ID14400( "last_tower_event" );
    _ID42237::_ID14400( "control_tower_event" );
    _ID42237::_ID14400( "balcony_event" );
    _ID42237::_ID14400( "rockslide_event" );
    _ID42237::_ID14400( "bombardment_immersion" );
    _ID42237::_ID14400( "activate_guns" );
    _ID42237::_ID14400( "kill_guns" );
    _ID42237::_ID14400( "dont_flash_me_pls" );
    _ID42237::_ID14400( "kill_heli_light_fx" );
    _ID42237::_ID14400( "shower_balcony_spawned" );
    _ID42237::_ID14400( "disable_intro_heli_treadfx_hack" );
    _ID42237::_ID14400( "soap_is_waiting" );
    _ID42237::_ID14400( "too_late" );
    _ID42237::_ID14400( "guy_is_waiting" );
    _ID42237::_ID14400( "playing_armory_anim" );
    _ID42237::_ID14400( "out_of_armory" );
    _ID42237::_ID14400( "first_squad_spawned" );
    _ID42237::_ID14400( "player_fx_slide_end" );
    _ID42237::_ID14400( "bathroom_breach_objective_dialog" );
}

_ID49865()
{
    thread _ID52897::_ID45854( 1, "start_is_set", "exterior", 1, 0 );

    if ( !_func_02F( level._ID18457 ) )
        level._ID18457 = [];

    level._ID18457 = _ID42237::_ID3293( level._ID18457, _func_1A1( "heli_intro_player", "targetname" ) );
    level._ID18457 = _ID42407::_ID3317( level._ID18457, _func_1A2( "heli_respawn_spawner", "script_noteworthy" ) );
    _ID42237::_ID14413( "bhd_heli_flies_off" );
    wait 4;
    level notify( "wibble_heli_check_stop" );
}

_ID53751()
{
    if ( !_ID42407::_ID20614() )
    {
        var_0 = _func_1A1( "so_weapon_tarp", "targetname" );
        var_0 _meth_80B7();
    }
}

_ID52174()
{
    level._ID794 _meth_8334( 1 );
    var_0 = _ID42313::_ID9125( "black", 1, level._ID794 );
    wait 0.5;
    var_1 = [];
    var_1[var_1.size] = &"GULAG_INTROSCREEN_LINE_4";
    var_1[var_1.size] = &"GULAG_INTROSCREEN_LINE_3";
    var_1["date"] = &"GULAG_INTROSCREEN_LINE_2";
    var_1[var_1.size] = &"GULAG_INTROSCREEN_LINE_1";
    level thread _ID42318::_ID20371( var_1 );
    wait 2;
    var_0 _meth_808B( 4 );
    var_0._ID55 = 0;
    wait 1;
    level._ID794 _meth_8334( 0 );
    wait 3;
    var_0 _meth_808F();
}

_ID50479()
{
    _ID42324::_ID19730();
    level._ID35073 = [];
    level._ID35073["allies"] = [];
    level._ID35073["axis"] = [];
    level._ID35073["neutral"] = [];
    _ID42337::_ID616( level._ID805 );
    level._ID794 _meth_8313( 1, "nightvision" );
}

_ID49377()
{
    _ID42475::_ID34575( "start_empty_checkpoint" );
}

_ID50731()
{
    if ( _ID42237::_ID14385( "disable_intro_heli_treadfx_hack" ) )
        return;

    var_0 = [ "script_vehicle_littlebird_armed", "script_vehicle_littlebird_bench", "script_vehicle_littlebird_bench_allylanding_1", "script_vehicle_littlebird_bench_allylanding_2", "script_vehicle_littlebird_player" ];
    var_1 = [];
    var_2 = _ID42411::_ID16005();
    var_3 = var_0;

    for ( var_12 = _func_1DA( var_3 ); _func_02F( var_12 ); var_12 = _func_1BF( var_3, var_12 ) )
    {
        var_4 = var_3[var_12];
        var_1[var_4] = level._ID1672[var_4];
        var_5 = var_2;

        for ( var_11 = _func_1DA( var_5 ); _func_02F( var_11 ); var_11 = _func_1BF( var_5, var_11 ) )
        {
            var_6 = var_5[var_11];

            if ( var_6 == "water" )
                continue;

            level._ID1672[var_4][var_6] = undefined;
            var_7 = _ID42400::_ID46850( var_6 );
            var_8 = var_7;

            for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
            {
                var_9 = var_8[var_10];
                level._ID1672[var_4][var_9] = undefined;
            }

            var_clear_4
            var_clear_2
        }

        var_clear_7
        var_clear_1
    }

    var_clear_9
    var_clear_0
    _ID42237::_ID14413( "disable_intro_heli_treadfx_hack" );
    var_13 = var_0;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_4 = var_13[var_14];
        level._ID1672[var_4] = var_1[var_4];
    }

    var_clear_1
    var_clear_0
}

_ID50340()
{
    level._ID794 _meth_8328();
    thread maps\gulag_code::_ID51085();
    level._ID38733 = 5000;
    level._ID53837 = 1;
    _func_31A( "hide_interior_portal_group", 0 );
    thread _unknown_1108();
    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "hud_drawhud", 1 );
    _ID42407::_ID3343( "goal_delete_spawner", maps\gulag_code::_ID46753 );
    thread maps\gulag_code::_ID47546();
    var_0 = _func_1A2( "heli_smoke_trigger", "targetname" );
    _ID42237::_ID3350( var_0, maps\gulag_code::_ID43779 );
    thread maps\gulag_code::_ID48680();
    thread maps\gulag_code::_ID53085();
    thread _ID42318::_ID50101( 0.7, 1 );
    var_1 = _func_03D();
    level._ID45897 = _func_03D();
    var_2 = _func_1A1( "going_in_hot", "script_noteworthy" );
    var_2 _ID42407::_ID1947( maps\gulag_code::_ID52628 );
    thread maps\gulag_code::_ID45347();
    var_3 = _func_1A2( "intro_heli_1", "targetname" );
    var_4 = level._ID30895["littlebird"]["spawn"];
    thread maps\gulag_code::_ID47954( var_3, var_4 );
    var_5 = level._ID52066;
    thread maps\gulag_code::_ID52452();
    wait 1.2;
    thread maps\gulag_code::_ID53102();
}

_ID54600()
{
    _ID42475::_ID34575( "start_approach_checkpoint" );
    _ID42407::_ID3343( "goal_delete_spawner", maps\gulag_code::_ID46753 );
    thread maps\gulag_code::_ID48680();
    _ID42237::_ID14402( "display_introscreen_text" );
}

_ID46981()
{
    _ID42407::_ID4917( "allies" );
    maps\gulag_code::_ID54691();
    level._ID794 _meth_8328();
    _func_31A( "hide_interior_portal_group", 0 );
    level._ID53563 _meth_83F1( "default" );
    _ID42237::_ID14413( "display_introscreen_text" );
    wait 2.2;
    _func_087( "approach", &"AUTOSAVE_AUTOSAVE", " ", 1 );
    var_19 = [];
    var_19[var_19.size] = &"GULAG_INTROSCREEN_1";
    var_19[var_19.size] = &"GULAG_INTROSCREEN_2";
    var_19[var_19.size] = &"GULAG_INTROSCREEN_3";
    var_19[var_19.size] = &"GULAG_INTROSCREEN_4";
    var_19[var_19.size] = &"GULAG_INTROSCREEN_5";
    thread _ID42318::_ID20371( var_19 );
    _ID42237::_ID14413( "approach_dialogue" );
    wait 1;
    thread maps\gulag_code::_ID52852();
    _ID42407::_ID28876();
    thread _ID42407::_ID28864( "gulag_lbp2_goinghot" );
    _ID42237::_ID14402( "going_in_hot" );
    thread _ID42407::_ID28864( "gulag_lbp1_roger" );
    wait 3.65;
    _ID42407::_ID10226( 7, maps\gulag_code::_ID54648, 11 );
    _ID42407::_ID14403( "disable_intro_heli_treadfx_hack", 0.5 );
    wait 2;
    thread _ID42407::_ID28864( "gulag_lbp2_guns" );
    wait 0.35;
    wait 1;
    thread _ID42407::_ID28864( "gulag_lbp2_guns2" );
    wait 1.9;
    _ID42407::_ID10226( 2, _ID42407::_ID21257, "first_tower" );
    _ID42237::_ID14402( "player_heli_uses_modified_yaw" );
    thread _ID42407::_ID14403( "activate_guns", 3.5 );
    wait 1;
    _ID42407::_ID10226( 1, _ID42407::_ID28868, "gulag_lbp1_goodeffect" );
    var_20 = level._ID50956;

    for ( var_25 = _func_1DA( var_20 ); _func_02F( var_25 ); var_25 = _func_1BF( var_20, var_25 ) )
    {
        var_21 = var_20[var_25];
        var_21 _ID42411::_ID23510();
        var_22 = var_21._ID23512;

        for ( var_24 = _func_1DA( var_22 ); _func_02F( var_24 ); var_24 = _func_1BF( var_22, var_24 ) )
        {
            var_23 = var_22[var_24];
            var_23 _meth_806C( "auto_nonai" );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0
    level._ID49614 = 3;
    level._ID52066 thread maps\gulag_code::_ID52338();
    wait 3.2;
    _ID42407::_ID10226( 2, maps\gulag_code::_ID51268 );
    wait 3;
    wait 0.65;
    thread maps\gulag_code::_ID52569( "player_shoot_start" );
    _ID42237::_ID14413( "stabilize" );
    wait 0.75;
    _ID42407::_ID10226( 2, _ID42237::_ID14402, "soap_snipes_tower" );
    thread _ID42407::_ID28864( "gulag_lbp1_roger2" );
    _ID42407::_ID10226( 8, _ID42407::_ID21257, "stab1_clear", 6 );
    var_26 = _func_03D();
    _ID42237::_ID14413( "stab1_clear" );
    _ID42237::_ID14388( "stabilize" );
    _ID42237::_ID14388( "soap_snipes_tower" );
    wait 0.75;
    wait 0.75;
    thread maps\gulag_code::_ID50370();
    wait 1.25;
    _ID42237::_ID14402( "stab1_shift" );
    _ID42237::_ID14413( "stabilize" );
    _ID42407::_ID10226( 2, _ID42237::_ID14402, "soap_snipes_tower" );
    var_27 = _func_1A2( "second_tower_guard", "script_noteworthy" );
    _ID42237::_ID3350( var_27, maps\gulag_code::_ID50170 );
    wait 4;
    var_28 = _func_1A1( "car_blows_up", "script_noteworthy" );
    _func_18F( var_28._ID740, 800, 5000, 5000 );
    var_29 = _func_1A2( "tarp_puller_spawner", "targetname" );
    _ID42237::_ID3350( var_29, _ID42407::_ID35014 );
    level waittill( "tarp_activate" );
    _ID42407::_ID10226( 4, _ID42407::_ID21257, "sam_cleared", 2.5 );
    _ID42237::_ID14413( "sam_cleared" );
    _ID42237::_ID14388( "soap_snipes_tower" );
    wait 0.5;
    _ID42407::_ID10226( 1, _ID42234::_ID13611, "main_building" );
    thread _ID42407::_ID14403( "castle_tower_event", 2 );
    thread maps\gulag_code::_ID46613();
    wait 1.5;
    _ID42237::_ID14402( "stab2_clear" );
    _ID42237::_ID14388( "stabilize" );
    level._ID53563 _meth_83F1( "flesh" );
}

_ID47975()
{
    _ID42407::_ID3343( "goal_delete_spawner", maps\gulag_code::_ID46753 );
    thread maps\gulag_code::_ID48680();
    var_0 = _func_1A1( "heli_intro_player", "targetname" );
    var_1 = _ID42237::_ID16638( "start_player_perimeter", "script_noteworthy" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    maps\gulag_code::_ID51479( var_0._ID1191, var_1._ID1193 );
    var_0._ID1191 = var_1._ID1193;
    thread maps\gulag_code::_ID45347();
    level._ID794 _meth_8345( ( 0, -163, 0 ) );
    var_2 = 24;
    level._ID52066 _meth_828E( var_2, var_2 / 4, var_2 / 4 );
    level._ID49614 = 3;
    level._ID52066 thread maps\gulag_code::_ID52338();
    maps\gulag_code::_ID54648( 3 );
}

_ID49189()
{
    _ID42475::_ID34575( "start_f15_checkpoint" );
    _ID42407::_ID3343( "goal_delete_spawner", maps\gulag_code::_ID46753 );
    maps\gulag_lighting::_ID46054( "gulag_flight" );
    var_0 = _func_1A1( "heli_intro_player", "targetname" );
    var_1 = _ID42237::_ID16638( "f15_attack_start", "script_noteworthy" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    maps\gulag_code::_ID51479( var_0._ID1191, var_1._ID1193 );
    var_0._ID1191 = var_1._ID1193;
    thread maps\gulag_code::_ID45347();
    var_2 = 40;
    level._ID52066 _meth_828E( var_2, var_2 / 4, var_2 / 4 );
    level._ID49614 = 3;
    level._ID52066 thread maps\gulag_code::_ID52338();
    maps\gulag_code::_ID54648( 3 );
}

_ID43615()
{
    _ID42234::_ID13611( "heli_landing_fx" );
    level._ID38733 = undefined;
    level._ID53837 = undefined;
    level notify( "stop_special_treadfx" );
    _ID42237::_ID14402( "first_squad_spawned" );
    _func_31A( "hide_interior_portal_group", 0 );
    thread maps\gulag_code::_ID53175();
    _ID42237::_ID14402( "gulag_perimeter" );
    thread maps\gulag_code::_ID43698();
    _ID42237::_ID14413( "f15_gulag_explosion" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID14402( "kill_guns" );
    wait 2;
    thread _ID42407::_ID14403( "last_tower_event", 3 );
    _ID42407::_ID4422( "gulag_perimeter" );
    level._ID794 _meth_8319( "m4m203_reflex_arctic" );

    if ( _func_02F( level._ID43135.tactical_greenberet ) && level._ID43135.tactical_greenberet == 1 )
    {
        level._ID43135.greenberet_previousweapons["m4m203_reflex_arctic"]["ammoClip"] = 30;
        level._ID43135.greenberet_previousweapons["m4m203_reflex_arctic"]["ammoStock"] = 600;
        level._ID43135.greenberet_previousweapons["m4m203_reflex_arctic"]["akimbo"] = 0;
    }

    _func_032( "ui_expireHUD", 1 );
    level notify( "stop_tarp_idle" );
    level notify( "stop_gulag_drones" );
    thread maps\gulag_code::_ID47384();
    wait 3.5;
    thread maps\gulag_code::_ID47067();
    _func_31B( 1 );
    _func_023();
    wait 2.9;
    maps\gulag_code::_ID51859( "Hargrove, get the navy to cease fire immediately! That was too close!" );
    _ID42237::_ID14402( "kill_heli_light_fx" );
    thread maps\gulag_code::_ID43126();
    thread maps\gulag_code::_ID44852();
    _ID42237::_ID24938( 11, ::_func_0DB, "g_friendlyNameDist", 15000 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID10226( 41, _ID42407::_ID4918, "allies" );
    thread maps\gulag_code::_ID43956();
    maps\gulag_code::_ID51859( "The navy doesn't care about one man in a Gulag. I'll try to buy you some time but I can't promise much." );
    thread maps\gulag_code::_ID53686();
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID26354( 200 );
    }

    var_clear_2
    var_clear_0
    level._ID52066 waittill( "nearing_landing" );
    wait 0.3;
    _func_0DB( "ammoCounterHide", 1 );
    level._ID794 _meth_8328( 0, 500, 0.2 );
    _ID42475::_ID34575( "start_helicopter_landing" );
    thread _ID42407::_ID28864( "gulag_lbp1_touchdown" );
    thread _ID42407::_ID28864( "gulag_lbp1_deployed" );
    thread _ID42407::_ID28864( "gulag_lbp3_snipercover" );
    thread _ID42407::_ID28864( "gulag_lbp1_solidcopy" );
    level._ID53563 _ID42407::_ID32315( "cyan" );
    level._ID53563 _meth_81C3();
    thread maps\gulag_code::_ID51013();
    level._ID52066 waittill( "stable_for_unlink" );
    level._ID794 _meth_8313( 1, "nightvision" );
    level._ID794 _meth_8319( "claymore" );
    level._ID794 _meth_8313( 4, "weapon", "claymore" );
    level._ID794 _meth_833D( "claymore" );
    _func_0DB( "ammoCounterHide", 0 );
    level._ID794 thread _ID42407::_ID46142( "disable_exterior_fx" );
    level._ID794 _meth_8098( undefined );
    _func_1AD( level._ID27617 );
    var_0 = _func_0DE( "allies" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2._ID513 = 1;
        var_2 _ID42407::_ID26354( 200 );
    }

    var_clear_1
    var_clear_0
    var_6 = level._ID52235 _meth_818D( "tag_aim" );
    var_6 = ( 0, var_6[1], 0 );
    var_7 = _func_11F( var_6 );
    var_7 *= 32;
    var_8 = _ID42237::_ID35164();
    var_8._ID740 = level._ID52235._ID740;
    var_8._ID65 = level._ID52235._ID65;
    level._ID52235 _meth_8053( var_8 );
    var_9 = 0.2;
    var_8 _meth_82B8( var_8._ID740 + var_7 + ( 0, 0, 4 ), var_9, 0.1, 0.1 );
    wait(var_9);
    level._ID52235 _meth_80B7();
    var_8 _meth_80B7();
    maps\gulag_code::_ID54035();
    level._ID794 _meth_8123( 1 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_830F( 1 );
    level._ID794 _meth_830C( 1 );
    _ID42407::_ID4422( "player_lands" );
    level._ID53563 _ID42407::_ID14803( "m4m203_reflex_arctic", "primary" );
    _ID42237::_ID14402( "access_control_room" );
    level._ID52066 _meth_8155( level._ID30895["littlebird"]["player_additive"] );
}

_ID35701()
{
    _ID42475::_ID34575( "start_control_room_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_entrance" );
    var_0 = _ID42237::_ID16638( "ghost_spawner_struct", "targetname" );
    var_1 = _func_1A1( "ghost", "script_noteworthy" );
    var_1._ID31152 = undefined;
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    var_2 = _func_1A2( "start_controlroom_spawner", "targetname" );
    var_2 = maps\gulag_code::_ID48805( var_2 );
    var_2[var_2.size] = var_1;
    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
    _func_31B( 1 );
    _func_31C( 2 );
    var_3 = _func_1A1( "start_controlroom_player", "targetname" );
    level._ID794 _meth_8343( var_3._ID740 );
    level._ID794 _meth_8345( var_3._ID65 );
}

_ID54033()
{
    _ID42237::_ID14413( "player_inside_gulag" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_getout" );
    _ID42237::_ID14402( "start_armory_music" );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_checkcorners" );
    wait 1.5;
    _ID42237::_ID14402( "soap_finishes_talking_about_going_in" );
}

_ID46995()
{
    _ID42237::_ID14402( "gulag_enable_transition_fx_vol" );
    _ID42237::_ID14413( "player_progresses_passed_ext_area" );
    _ID42407::_ID21257( "upper_balcony_deathflag", 4 );
    thread maps\gulag_code::_ID43235();

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
    {
        _ID42407::_ID1805( "ext_finished" );
        thread maps\gulag_code::_ID48604();
    }

    _ID42237::_ID14413( "postup_outside_gulag" );
    thread _unknown_1C21();

    if ( _func_1A7( level._ID47319 ) )
    {
        level._ID9488[level._ID47319 _ID42271::_ID16018()]["l"] = "l0";
        level._ID47319 _ID42407::_ID32315( "l" );
    }

    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID25527 ) )
            var_2 _ID42407::_ID26353();
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID43566 );
    _ID42407::_ID1892( "allies", _ID42407::_ID12467 );
    var_0 = _func_0DE( "allies" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2._ID4867 = 1;
        var_2._ID86 = 1;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14421( "last_outside_guys", "player_moves_into_gulag" );
    level._ID53563 _ID42407::_ID32315( "cyan" );

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
        _ID42407::_ID1805( "outside_gulag_postup" );

    _ID42237::_ID14413( "player_moves_into_gulag" );
    maps\gulag_code::_ID46832();
    _func_31B( 3 );
    _func_31B( 4 );
    var_0 = _func_0DE( "allies" );
    var_6 = var_0;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_2 = var_6[var_7];
        var_2._ID513 = 1;
    }

    var_clear_1
    var_clear_0
    var_8 = _func_1A1( "friendly_reinforcement_trigger", "targetname" );
    var_8 thread maps\gulag_code::_ID46588();
    var_9 = _func_1A1( "purple_friendlies_priority_volume", "targetname" );
    var_0 = _func_0DE( "allies" );
    var_0 = _ID42407::_ID29537( var_0 );
    var_10 = 0;
    var_11 = var_0;

    for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
    {
        var_2 = var_11[var_12];

        if ( var_2 _meth_80B0( var_9 ) )
        {
            var_10++;
            var_2 _ID42407::_ID32315( "p" );
            var_0[var_12] = undefined;
        }
    }

    var_clear_1
    var_0 = _ID42407::_ID29506( var_0 );

    for ( var_13 = var_10; var_13 < 2; var_13++ )
    {
        if ( !_func_1A7( var_0[var_13] ) )
            continue;

        var_0[var_13] _ID42407::_ID32315( "p" );
        var_0[var_13] = undefined;
    }

    var_0 = _ID42407::_ID29506( var_0 );
    var_14 = var_0;

    for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
    {
        var_2 = var_14[var_15];
        var_2 _ID42407::_ID32315( "o" );
    }

    var_clear_1
    var_clear_0

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
        _ID42407::_ID1805( "pre_controlroom_postup" );

    _unknown_2B09();
    thread _unknown_2B31();
    thread _unknown_2B41();
    _ID42237::_ID14413( "soap_finishes_talking_about_going_in" );
    var_9 = _func_1A1( "control_room_hallway_volume", "targetname" );
    var_9 _ID42407::_ID41163();

    if ( _func_1A7( level._ID47319 ) )
    {
        level._ID47319 _ID42407::_ID10871();
        jump loc_1EE6
    }

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
    {
        _ID42407::_ID1805( "control_room_postup" );
        var_16 = _func_0C8( "h2_ghost_node", "targetname" );
        level._ID47319 _ID42407::_ID32334( var_16 );
    }

    _ID42237::_ID14413( "disable_exterior_fx" );
    maps\gulag_code::_ID44699( "gulag_gst_controlroom" );
    thread maps\gulag_code::_ID52110();
    _ID42237::_ID14413( "control_room" );
    var_0 = _func_0DE( "allies" );
    var_17 = var_0;

    for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
    {
        var_2 = var_17[var_18];
        var_2._ID513 = 0;
    }

    var_clear_1
    var_clear_0
    thread maps\gulag_code::_ID50385();
    var_0 = _func_0DE( "allies" );
    var_19 = [];
    var_19[0] = level._ID53563;
    var_19[1] = level._ID47319;
    var_0 = _ID42237::_ID15566( level._ID794._ID740, var_0, var_19 );
    var_20 = 2;

    for ( var_13 = 0; var_13 < var_20; var_13++ )
    {
        var_2 = var_0[var_13];

        if ( !_func_1A7( var_2 ) )
            continue;

        var_2 _ID42407::_ID32315( "g" );
        var_2 maps\gulag_code::_ID54146();
        var_2 _meth_8170( 1 );
    }

    for ( var_13 = var_20; var_13 < var_0.size; var_13++ )
        var_0[var_13] _ID42407::_ID10871();

    _ID42407::_ID1892( "allies", maps\gulag_code::_ID54146 );
    maps\gulag_code::_ID51063();
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID14402( "ghost_goes_to_laptop" );

    if ( _func_1A7( level._ID47319 ) )
        level._ID47319 _ID42407::_ID32226( 0 );

    maps\gulag_code::_ID44699( "gulag_cmt_tapinto" );
    _ID42237::_ID14402( "cell_duty" );
    thread maps\gulag_code::_ID54410();

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
        _ID42407::_ID1805( "first_cell_postup" );

    level._ID53563 _ID42407::_ID10805( "gulag_cmt_cellduty" );
    level._ID53563 _meth_8170( 1 );
    _ID42237::_ID14413( "player_nears_cell_door1" );
    thread maps\gulag_code::_ID49773();
    thread maps\gulag_code::_ID53490();
    _ID42237::_ID14413( "cellblock_clear1" );
    wait 0.5;
    _ID42407::_ID28864( "gulag_tf1_cellclear" );
    wait 0.4;
    _ID42237::_ID14413( "ghost_uses_laptop" );
    _ID42407::_ID28864( "gulag_gst_patchedin" );
    thread maps\gulag_code::_ID50199( "hacking_vo1" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_location" );
    _ID42407::_ID10226( 1.5, _ID42237::_ID14402, "spotlight_turns_on" );
    level._ID35473["a"] _ID42407::_ID10226( 2.5, maps\gulag_code::_ID50694, _func_1A1( "spotlight_volume_a1", "targetname" ) );
    level._ID35473["b"] _ID42407::_ID10226( 2.5, maps\gulag_code::_ID50694, _func_1A1( "spotlight_volume_b1", "targetname" ) );
    _ID42407::_ID28864( "gulag_gst_jobeasier" );
    thread maps\gulag_code::_ID50199( "hacking_vo2" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_staysharp" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "player_nears_cell_door2" );
    thread maps\gulag_code::_ID50061();
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_secdoor" );
    thread _ID42407::_ID28864( "gulag_cmt_ancient" );
    thread maps\gulag_code::_ID50199( "hacking_vo3" );
    wait 2.5;
    _ID42237::_ID14402( "open_cell_door3" );
    wait 3;
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_wrongdoor" );
    thread _ID42407::_ID28864( "gulag_gst_standby" );
    thread maps\gulag_code::_ID50199( "hacking_vo4" );
    wait 3;
    _ID42237::_ID14402( "open_cell_door2" );
    thread maps\gulag_code::_ID52041( "mid_door_rambo" );
    _ID42407::_ID28864( "gulag_gst_gotit2" );
    thread maps\gulag_code::_ID50199( "hacking_vo5" );
    _ID42407::_ID1805( "mid_door_opens" );
    wait 1;
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_thatsbetter" );
    var_21 = _func_1A1( "soap_securitydoor", "targetname" );
    var_22 = _func_0F3( level._ID53563._ID740, var_21._ID740 );

    if ( var_22 < 8 )
        var_21 thread _ID42259::_ID3111( level._ID53563, "securitydoor_soap_enter" );

    _ID42237::_ID14413( "cell_clear_1" );
    _ID42407::_ID28864( "gulag_tf1_cell4dclear" );
    _ID42237::_ID14413( "cell_clear_2" );
    _ID42407::_ID28864( "gulag_tf1_cellsclear" );
    _ID42237::_ID14413( "player_nears_cell_door4" );
    _ID42407::_ID10226( 3.5, _ID42237::_ID14402, "open_cell_door4" );
    thread maps\gulag_code::_ID52041( "pre_armory_rambo" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_talktome" );
    maps\gulag_code::_ID43130();
    _ID42407::_ID28864( "gulag_gst_eastwing" );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_armorydownthere" );
    level._ID53563 _meth_8170( 0 );
    var_23 = _func_0DE( "allies" );

    for ( var_24 = _func_1DA( var_23 ); _func_02F( var_24 ); var_24 = _func_1BF( var_23, var_24 ) )
    {
        var_0 = var_23[var_24];

        if ( _func_1A7( var_0 ) )
            var_0 _meth_8170( 0 );
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID1805( "pre_armory" );
    thread maps\gulag_code::_ID43502();
    wait 2.3;
    _ID42237::_ID14402( "pre_armory_open" );
    _ID42407::_ID1804( "pre_armory" );
    _ID42237::_ID14413( "player_approaches_armory" );
    var_0 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_0, maps\gulag_code::_ID49760 );
}

_ID53042()
{
    _ID42475::_ID34575( "start_armory_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_cellblock_01" );
    thread maps\gulag_code::_ID50385();
    _ID42237::_ID14402( "player_nears_cell_door1" );
    _ID42237::_ID14402( "pre_armory_open" );
    _ID42407::_ID1804( "pre_armory" );
    thread maps\gulag_code::_ID43502();
    var_0 = _func_1A2( "start_armory_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    _func_31B( 1 );
    _func_31C( 2 );
    _func_31B( 3 );
    _func_31B( 4 );
    var_1 = _func_1A1( "start_armory_player", "targetname" );
    level._ID794 _meth_8343( var_1._ID740 );
    level._ID794 _meth_8345( var_1._ID65 );
    _ID42407::_ID50742( "0.5 12 2 2" );
    wait 0.05;
    level._ID53563 _ID42407::_ID32315( "cyan" );
}

_ID49089()
{
    _ID42237::_ID14402( "gulag_enable_cellblock_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID10926();
        var_2 _ID42407::_ID10226( 3, _ID42407::_ID12477 );
    }

    var_clear_2
    var_clear_0
    thread _ID42407::_ID4917( "axis" );
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "player_in_armory" );
    _func_31C( 3 );
    _func_31B( 5 );
    level notify( "cancel_surprise" );
    level notify( "stop_exterior_alarm" );
    var_4 = level._ID35473;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 notify( "stop_searching" );
    }

    var_clear_2
    var_clear_0
    level._ID50844 = 0;
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID52548 );
    thread maps\gulag_code::_ID52703( 4000 );
    _ID42237::_ID14413( "playing_armory_anim" );
    _ID42407::_ID10226( 7.5, ::_unknown_2658 );
    level waittill( "door_open" );
    _ID42237::_ID14402( "open_cell_door_weapons" );
    var_7 = _func_0DE( "allies" );
    var_8 = var_7;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_2 = var_8[var_9];
        var_2._ID4867 = 10;
        var_2 _ID42407::_ID10973();
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID32411( 0.85 );
    _ID42407::_ID1805( "armory_attacked_postup" );
    level._ID35473["a"] thread maps\gulag_code::_ID50694( _func_1A1( "spotlight_volume_a2", "targetname" ) );
    level._ID35473["b"] thread maps\gulag_code::_ID50694( _func_1A1( "spotlight_volume_b2", "targetname" ) );
    level waittill( "wave1_start" );
    thread maps\gulag_code::_ID50041();
    waittillframeend;
    wait 4;
    var_10 = var_7;

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_2 = var_10[var_11];
        var_2 _meth_8170( 1 );
    }

    var_clear_1
    var_clear_0
    maps\gulag_code::_ID52132();
    var_12 = _func_03D();
    _ID42407::_ID32411( 0 );
    level._ID794._ID512 = 1;
    _ID42407::_ID4424( "armory_fight", 10 );
    _ID42407::_ID40847( var_12, 3 );
    wait 0.5;
    _ID42298::_ID39669();
    level._ID794._ID512 = 0;
    thread _ID42407::_ID28864( "gulag_gst_gotmoretangos" );
    var_7 = _func_0DE( "allies" );
    var_13 = var_7;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_2 = var_13[var_14];
        var_2._ID4867 = 0;
    }

    var_clear_1
    var_clear_0
    wait 2.35;
    var_15 = [];
    var_15[0] = 5;
    var_15[1] = 4;
    var_15[2] = 2.5;
    var_15[3] = 1.5;
    var_16 = var_15[level._ID15361];
    _ID42407::_ID10226( var_16, maps\gulag_code::_ID52846 );
    thread maps\gulag_code::_ID45545();
    level._ID44260 = [];
    var_0 = level._ID51159;
    _ID42237::_ID3350( var_0, maps\gulag_code::_ID53098 );
    _ID42237::_ID14402( "friendlies_use_riotshield" );
    wait 9.5;

    if ( !_ID42407::_ID27470( "riotshield" ) )
        _ID42407::_ID32411( 1.5 );

    thread maps\gulag_code::_ID46059();
    wait 5;
    wait 1.5;
    _ID42407::_ID1805( "take_cover_at_armory_door" );
    var_0 = _func_0DE( "allies" );
    var_17 = var_0;

    for ( var_18 = _func_1DA( var_17 ); _func_02F( var_18 ); var_18 = _func_1BF( var_17, var_18 ) )
    {
        var_2 = var_17[var_18];
        var_2 _meth_8170( 0 );
    }

    var_clear_1
    var_clear_0
    wait 4.5;
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_openthedoor" );
    wait 2.0;
    thread _ID42407::_ID28864( "gulag_gst_gotit" );
    wait 2.5;
    level notify( "force_door_open" );
    level waittill( "cell_door_opens" );
    thread maps\gulag_code::_ID45884();
    _ID42407::_ID1805( "post_armory" );
    _ID42237::_ID14413( "run_from_armory" );
    var_19 = _func_1A1( "run_from_armory_kill_volume", "targetname" );
    var_0 = var_19 _ID42407::_ID15547( "axis" );
    var_20 = var_0;

    for ( var_21 = _func_1DA( var_20 ); _func_02F( var_21 ); var_21 = _func_1BF( var_20, var_21 ) )
    {
        var_2 = var_20[var_21];
        var_2 thread maps\gulag_code::_ID49760();
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID29534( "axis", maps\gulag_code::_ID52548 );
    var_0 = _func_0DE( "axis" );
    thread maps\gulag_code::_ID46539( var_0 );
    _ID42298::_ID39669();
    maps\gulag_code::_ID53146();
    thread maps\gulag_code::_ID48873();
    level notify( "stop_cellblock_respawn" );
    thread maps\gulag_code::_ID49713();
    var_7 = _func_0DE( "allies" );
    var_22 = var_7;

    for ( var_23 = _func_1DA( var_22 ); _func_02F( var_23 ); var_23 = _func_1BF( var_22, var_23 ) )
    {
        var_2 = var_22[var_23];
        var_2._ID4867 = 1;
        var_2 _ID42407::_ID12538();
    }

    var_clear_1
    var_clear_0
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_gogogo1" );
    level._ID44260 = _ID42407::_ID29506( level._ID44260 );
    var_24 = level._ID44260;

    for ( var_25 = _func_1DA( var_24 ); _func_02F( var_25 ); var_25 = _func_1BF( var_24, var_25 ) )
    {
        var_2 = var_24[var_25];
        var_2 _ID42407::_ID12477();
    }

    var_clear_1
    var_clear_0
    _ID42407::_ID4918( "axis" );
    _ID42237::_ID14413( "use_your_riotshield" );
    level.cellblock_spawning_door_coll _meth_805E();
    level.cellblock_spawning_door_coll _meth_82C8();
    level.cellblock_spawning_door _meth_8059();
    level.cellblock_spawning_door _meth_82C8();

    if ( level._ID794 _meth_831C() == "riotshield" )
    {
        _ID42237::_ID14388( "friendlies_use_riotshield" );
        level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_usesheild" );
        var_0 = _func_0DE( "allies" );
        var_26 = var_0;

        for ( var_27 = _func_1DA( var_26 ); _func_02F( var_27 ); var_27 = _func_1BF( var_26, var_27 ) )
        {
            var_2 = var_26[var_27];
            var_2 maps\gulag_code::_ID43606();
        }

        var_clear_1
        var_clear_0
    }
    else
    {
        _ID42237::_ID14402( "friendlies_use_riotshield" );
        level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_illdrawfire" );
    }

    _ID42407::_ID10226( 3.5, _ID42407::_ID4918, "allies" );
    _ID42237::_ID14413( "last_cellblock_guys_flee" );
    maps\gulag_code::_ID54664();
    _ID42237::_ID14413( "rappel_time" );
    var_7 = _func_0DE( "allies" );
    var_28 = var_7;

    for ( var_29 = _func_1DA( var_28 ); _func_02F( var_29 ); var_29 = _func_1BF( var_28, var_29 ) )
    {
        var_2 = var_28[var_29];
        var_2 _ID42407::_ID12538();
    }

    var_clear_1
    var_clear_0
    thread _unknown_29D7();
}

_ID48522()
{
    if ( !_func_02F( level._ID51159 ) || level._ID51159.size < 2 )
        _ID42407::_ID1805( "stand_at_armory_door" );
}

_ID49069()
{
    _ID42407::_ID28864( "gulag_gst_bypassfloors" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_roachfollow" );
}

_ID47116()
{
    _ID42475::_ID34575( "start_rappel_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_cellblock_01" );
    maps\gulag_code::_ID53146();
    var_0 = _func_1A2( "start_rappel_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] _ID42407::_ID1947( _ID42407::_ID29701 );

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    _func_31B( 1 );
    _func_31C( 2 );
    _func_31B( 4 );
    _func_31B( 5 );
    var_2 = _func_1A1( "start_rappel_player", "targetname" );
    level._ID794 _meth_8343( var_2._ID740 );
    level._ID794 _meth_8345( var_2._ID65 );
    _ID42407::_ID50742( "0.5 12 2 2" );
    maps\gulag_code::_ID48873();
}

_ID53128()
{
    wait 1.8;
    _ID42407::_ID28864( "gulag_gst_feedisdead" );
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_switchnv" );
}

_ID53523()
{
    _ID42237::_ID14402( "gulag_enable_cellblock_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    _ID42237::_ID14402( "access_control_room" );
    _ID42237::_ID14402( "control_room" );
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID4867 = 1;
        var_2._ID86 = 1;
    }

    var_clear_2
    var_clear_0
    maps\gulag_code::_ID53804();
    level._ID53563 thread maps\gulag_code::_ID47810();
    _ID42237::_ID14413( "cellblock_player_starts_rappel" );
    _func_31A( "hide_interior_portal_group", 1 );
    thread maps\gulag_aud::_ID54392();
    var_4 = _func_1A1( "gulag_hallway_destructibles", "script_noteworthy" );
    var_4 _ID42407::_ID1786();
    var_4 _ID42407::_ID1794();
    wait 5;
    _ID42407::_ID1805( "cellblock_exit_postup" );
    thread _unknown_2B64();
    thread maps\gulag_code::_ID51318();
    var_5 = _func_1A2( "friendly_cellhall_spawner", "targetname" );
    _ID42407::_ID3342( var_5, _ID42407::_ID29701 );
    _ID42237::_ID3350( var_5, _ID42407::_ID35014 );
    _ID42237::_ID14413( "leaving_cellblock" );
    _ID42407::_ID1805( "friendly_nvg_hallway_trigger" );
    maps\gulag_lighting::_ID45391( "exploding_wall" );
    level._ID794 _ID42407::_ID10226( 0.8, _ID42407::_ID11085, "nvg", undefined, undefined, undefined, undefined, 15 );
    _ID42237::_ID14413( "nvg_zone" );
    var_6 = _func_1A2( "hallway_runner_spawner", "script_noteworthy" );
    var_7 = _func_0C9( "nvg_ambush_node", "targetname" );
    var_7 = _ID42237::_ID3320( var_7 );
    _ID42237::_ID3350( var_7, maps\gulag_code::_ID53952 );
    var_8 = var_6;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_9._ID740 = var_7[var_10]._ID740;
    }

    var_clear_2
    _ID42407::_ID1805( "friendly_nvg_cell_hall_postup" );
    thread maps\gulag_code::_ID46777();
    _ID42407::_ID1985( _ID42237::_ID14413, "lets_sweep_the_nvg_cells" );
    _ID42407::_ID1890( maps\gulag_code::_ID46212 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "nvg_leave_cellarea" );
    var_11 = _func_1A1( "h2_explosion_trigger", "targetname" );
    var_11 thread maps\gulag_code::_ID54713();
    var_11 waittill( "trigger" );
    _ID42407::_ID10226( 7.2, maps\gulag_code::_ID51291, "moving_chain_hook_cellblock2" );
    _func_053();
    _ID42234::_ID13611( "hall_attack_explosion" );
    _ID42475::_ID34575( "start_hallway_attack" );
    level._ID794 _ID42237::_ID10192( 0.5, ::_meth_818E, "gulag_attack", 5, 0 );
    _func_0DB( "compass", 0 );
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    var_12 = _func_1A1( "explosion_ref", "targetname" );
    var_13 = level._ID794 _meth_8346();
    var_14 = _func_0F0( var_13[1] - var_12._ID65[1] );
    var_15 = "front";

    if ( var_14 > 45 && var_14 <= 135 )
        var_15 = "right";
    else if ( var_14 > 135 || var_14 <= -135 )
        var_15 = "back";
    else if ( var_14 > -135 && var_14 <= -45 )
        var_15 = "left";

    var_16 = "explosion_" + var_15;
    var_17 = _func_1A1( "explosion_scripted_node", "targetname" );
    var_18 = var_17._ID740 - level._ID794._ID740;
    var_18 = ( _func_0BC( var_17._ID65[1] ), _func_0BB( var_17._ID65[1] ), 0 ) * _func_0F7( var_18 );
    var_17._ID740 = var_17._ID740 - var_18;
    level._ID794 _meth_80F3( 1 );
    level._ID794 _meth_8328( 1 );
    level._ID794 _meth_8189( "stand" );
    level._ID794 _meth_8334( 1 );
    var_19 = _ID42407::_ID35028( "worldbody" );
    var_19._ID740 = level._ID794 _meth_809C();
    var_19._ID65 = var_13;

    if ( level._ID794 _meth_85D1() )
        var_19 _meth_805A();

    level._ID794 _meth_8086( var_19, "tag_player" );
    var_20 = _func_06A( "script_model", level._ID794._ID740 );
    var_20._ID65 = ( 0, var_13[1], var_13[2] );
    var_20 _meth_80B8( "tag_origin" );
    var_19 _meth_8053( var_20, "tag_origin" );
    var_21 = _ID42407::_ID35028( "worldbody" );
    var_21 _meth_805A();
    var_17 _ID42259::_ID3018( var_21, var_16 );
    waittillframeend;
    var_22 = var_21 _meth_818C( "tag_player" );
    var_21 _meth_80B7();
    _func_192( 0.3, 3, level._ID794._ID740, 5000 );
    level._ID794 _meth_80B5( "damage_heavy" );
    level._ID794 _ID42237::_ID10192( 2, ::_meth_80B6, "damage_heavy" );
    var_23 = _func_0DE( "axis" );
    var_24 = var_23;

    for ( var_25 = _func_1DA( var_24 ); _func_02F( var_25 ); var_25 = _func_1BF( var_24, var_25 ) )
    {
        var_2 = var_24[var_25];

        if ( _func_0F3( level._ID794._ID740, var_2._ID740 ) < 350 )
            var_2 _ID42237::_ID10192( 0.5, ::_meth_8058 );
    }

    var_clear_1
    var_clear_0
    var_26 = _func_0DE( "allies" );
    var_27 = var_26;

    for ( var_29 = _func_1DA( var_27 ); _func_02F( var_29 ); var_29 = _func_1BF( var_27, var_29 ) )
    {
        var_2 = var_27[var_29];
        var_28 = _func_0BA( 2.5, 3.5 );
        var_2 thread _ID42407::_ID14510( var_28 );
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID10226( 1.5, _ID42234::_ID13611, "hall_attack" );
    level thread _ID42407::_ID25088( "hall_attack", 1.5 );
    thread maps\gulag_code::_ID44373();
    _ID42237::_ID24938( 0.5, ::_func_023 );
    var_30 = _func_067( var_19 _ID42407::_ID16120( var_16 ) );
    var_20 thread _ID42259::_ID3111( var_19, var_16 );
    var_20 _meth_82B8( var_22, 1 );
    wait(var_30);
    level notify( "stop_hallway_attack" );
    level._ID794 _meth_8055();
    level._ID794 _meth_8334( 0 );
    var_19 _meth_80B7();
    level._ID794 _meth_8329();
    level._ID794 _meth_80F3( 0 );
    _func_0DB( "compass", 1 );
    _func_0DB( "actionSlotsHide", 0 );
    _func_0DB( "hud_showStance", 1 );
    _ID42407::_ID1985( _ID42237::_ID14413, "nvg_disable_night_vision" );
    _ID42407::_ID1890( _ID42407::_ID11085, "disable_nvg" );
    thread _ID42407::_ID11231();
    _ID42407::_ID40559( "gulag_hallways", 4 );
    wait 5;
    thread maps\gulag_code::_ID53375();
    _ID42237::_ID14413( "nvg_disable_night_vision" );
}

_ID36068()
{
    _ID42475::_ID34575( "start_tunnel_checkpoint" );
    _func_31B( 1 );
    _func_31C( 2 );
    _func_31B( 5 );
    _func_31B( 6 );
    var_0 = _func_1A2( "friendly_tunnel_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] _ID42407::_ID1947( _ID42407::_ID29701 );

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_2 = _ID42237::_ID16638( "start_tunnel_player", "targetname" );
    level._ID794 _meth_8343( var_2._ID740 );
    level._ID794 _meth_8345( var_2._ID65 );
}

_ID54650()
{
    _ID42237::_ID14402( "gulag_enable_interior_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    _func_31A( "hide_interior_portal_group", 1 );
    _ID42407::_ID1805( "pipe_tunnel_fight_nodes" );
    thread maps\gulag_code::_ID44337();
    _ID42237::_ID14413( "go_to_pipearea_postup" );
    thread maps\gulag_code::_ID54137();
    wait 0.5;
    var_0 = _func_1A1( "tunnel_pre_hallway_volume", "targetname" );
    var_0 _ID42407::_ID1985( _ID42407::_ID41163 );
    _ID42407::_ID1985( _ID42407::_ID1687, 15 );
    level _ID42407::_ID1985( _ID42407::_ID41116, "flashed_room" );
    _ID42407::_ID11232();
    var_1 = _func_0DE( "allies" );
    _ID42407::_ID53914( var_1, 1 );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_gogogo1" );
    wait 0.15;
    level._ID53563 _ID42407::_ID32315( "cyan" );
    _ID42407::_ID1805( "pipe_tunnel_postup" );
    var_2 = _func_0DE( "allies" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread maps\gulag_code::_ID48200();
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "advance_through_pipearea" );
    var_1 = _ID42407::_ID29506( var_1 );
    _ID42407::_ID53914( var_1, 0 );
    _func_052();
    level notify( "stop_music" );
    _ID42237::_ID14413( "friendlies_follow_pipe_area" );
    level._ID53563 _ID42407::_ID32315( "green" );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_gogogo1" );
    _ID42407::_ID1805( "breach_bathroom_postup" );
    _ID42237::_ID14413( "nearing_bathroom_breach" );
    var_2 = _func_0DE( "allies" );
    var_6 = var_2;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];
        var_4._ID381 = 1;
    }

    var_clear_1
    var_clear_0
    thread _ID42407::_ID28864( "gulag_gst_30ftonleft" );
    thread maps\gulag_aud::pipe_room_breach_dialog_flag();
}

_ID47976()
{
    _ID42475::_ID34575( "start_bathroom_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_showers" );
    _func_31B( 1 );
    _func_31C( 2 );
    _func_31B( 5 );
    _func_31B( 6 );
    var_0 = _func_1A2( "friendly_bathroom_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    if ( level._ID35897 == "bathroom" )
    {
        for ( var_1 = 1; var_1 < var_0.size; var_1++ )
            var_0[var_1] _ID42407::_ID1947( _ID42407::_ID29701 );
    }

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_2 = _func_1A1( "start_bathroom_player", "targetname" );
    level._ID794 _meth_8343( var_2._ID740 );
    level._ID794 _meth_8345( var_2._ID65 );
    _ID42407::_ID1805( "breach_bathroom_postup" );
}

_ID46018()
{
    var_0 = _func_1A1( "player_rappels_from_bathroom", "script_noteworthy" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "player_exited_bathroom" );
    maps\gulag_code::_ID48867();
    maps\gulag_lighting::_ID45391( "bathroom_out" );
}

_ID50660()
{
    _ID42237::_ID14402( "gulag_enable_interior_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    _func_31A( "hide_interior_portal_group", 1 );
    _ID42237::_ID14413( "leaving_pipe_area" );
    var_0 = _func_1A2( "flickering_model_off", "script_noteworthy" );
    var_1 = _func_1A2( "flickering_model_on", "script_noteworthy" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _ID42237::_ID3296( var_0, var_1 );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( _func_02F( var_6._ID31388 ) )
        {
            if ( var_6._ID31388 == "bathroom_exploding_light_off" )
            {
                var_2 = var_6;
                continue;
            }

            if ( var_6._ID31388 == "delay_flickering" )
                var_3 = var_6;
        }
    }

    var_clear_2
    var_clear_0
    var_3 thread maps\gulag_code::_ID51065( var_2 );
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID50040 );
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID45049 );
    level notify( "activate_shower_breach" );
    level waittill( "breaching" );
    _ID42407::_ID10226( 0.05, _ID42407::_ID29534, "axis", maps\gulag_code::_ID45049 );
    var_8 = _func_0DE( "allies" );
    var_9 = var_8;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        var_10._ID51367 = var_10._ID37018;
        var_10._ID43561 = var_10._ID219;
        var_10._ID37018 = 2000;
        var_10._ID219 = 6000;
    }

    var_clear_2
    var_clear_0
    thread maps\gulag_aud::_ID52322();
    var_12 = _func_0DE( "axis" );
    var_13 = var_12;

    for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
    {
        var_14 = var_13[var_15];

        if ( !_func_02F( var_14._ID35181 ) || var_14._ID35181 != _func_03D() )
            var_14 thread maps\gulag_code::_ID49760();
    }

    var_clear_2
    var_clear_0
    var_16 = _func_1A1( "gulag_shower_destructibles", "script_noteworthy" );
    var_16 _ID42407::_ID1786();
    var_16 _ID42407::_ID1794();
    level._ID794._ID86 = 0;
    level._ID794 _ID42407::_ID10226( 6, _ID42298::_ID39638 );
    _ID42237::_ID14388( "gulag_enable_interior_fx_vol" );
    _ID42237::_ID14402( "gulag_enable_shower_fx_vol" );
    _ID42407::_ID10226( 3, maps\gulag_code::_ID51304, "shower_hanging_lamp", "shower_hanging_light", 1 );
    _ID42237::_ID14413( "player_enters_bathroom" );
    _ID42262::_ID36816( "shower", 0 );
    maps\gulag_lighting::_ID45391( "bathroom_in" );
    _ID42407::_ID1804( "first_friendly_bathroom_trigger" );
    thread maps\gulag_code::_ID53253();
    thread _unknown_3545();
    level._ID53563 _ID42407::_ID10226( 3.5, _ID42407::_ID10805, "gulag_cmt_spreadout" );
    _ID42407::_ID1805( "bathroom_initial_enemies" );
    _ID42407::_ID10226( 5, maps\gulag_code::_ID52165 );
    var_17 = 15;
    _ID42407::_ID10226( var_17, _ID42407::_ID1805, "bathroom_balcony_room1_trigger" );
    thread _ID42407::_ID14403( "shower_balcony_spawned", var_17 + 4 );
    level._ID53563 _ID42407::_ID10226( var_17 + 3, _ID42407::_ID10805, "gulag_cmt_hostiles2ndfloor" );
    _ID42237::_ID14413( "bathroom_start_second_wave" );
    maps\gulag_code::_ID52767();
    _ID42407::_ID1985( _ID42237::_ID14413, "use_lockers_for_cover" );
    level._ID53563 _ID42407::_ID1890( _ID42407::_ID10805, "gulag_cmt_uselockers" );
    thread _ID42407::_ID11231();
    var_18 = _func_1A1( "riot_shield_detector", "targetname" );
    var_18 thread maps\gulag_code::_ID49301();
    _ID42407::_ID1985( _ID42237::_ID14413, "bathroom_room2_enemies_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "leaving_bathroom_vol2" );
    _ID42407::_ID11232();
    thread maps\gulag_code::_ID52257();
    _ID42407::_ID4422( "bathroom_cleared" );
    _ID42237::_ID14413( "leaving_bathroom_vol2" );
    thread maps\gulag_code::_ID51291( "moving_chain_hook_sewers" );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_holeinfloor" );
    level._ID50577 = _func_03B( "ai_pathNegotiationOverlapCost" );
    _func_0DB( "ai_pathNegotiationOverlapCost", 5000 );
    var_19 = _func_0DE( "allies" );
    var_19 = _ID42237::_ID3321( var_19, level._ID53563 );

    if ( var_19.size > 1 )
    {
        for ( var_20 = 1; var_20 < var_19.size; var_20++ )
            var_19[var_20] _ID42407::_ID10871();
    }

    _ID42407::_ID1805( "cistern_friendly_trigger" );
    level._ID53563 _ID42407::_ID10226( 2.5, _ID42407::_ID10805, "gulag_cmt_gogogo1" );
    var_21 = _func_0DE( "allies" );
    var_22 = var_21;

    for ( var_23 = _func_1DA( var_22 ); _func_02F( var_23 ); var_23 = _func_1BF( var_22, var_23 ) )
    {
        var_14 = var_22[var_23];
        var_14._ID86 = 0;
    }

    var_clear_1
    var_clear_0
    thread maps\gulag_code::_ID48606();
    _ID42237::_ID14413( "player_exited_bathroom" );
    _ID42407::_ID1892( "allies", _ID42407::_ID41628, "rescue_begins" );
    var_21 = _func_0DE( "allies" );
    var_24 = var_21;

    for ( var_25 = _func_1DA( var_24 ); _func_02F( var_25 ); var_25 = _func_1BF( var_24, var_25 ) )
    {
        var_10 = var_24[var_25];

        if ( _func_02F( var_10._ID51367 ) )
            var_10._ID37018 = var_10._ID51367;

        if ( _func_02F( var_10._ID43561 ) )
            var_10._ID219 = var_10._ID43561;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID3350( var_21, _ID42407::_ID41628, "rescue_begins" );
    level._ID794 thread _ID42407::_ID41628( "rescue_begins" );
    _ID42407::_ID29534( "axis", maps\gulag_code::_ID50040 );
    _ID42237::_ID30398( "slide_trigger", maps\gulag_code::_ID46608 );
    var_21 = _func_0DE( "bad_guys" );
    _ID42237::_ID3350( var_21, maps\gulag_code::_ID49760 );
    _ID42407::_ID4422( "reached_sewers" );
    thread _unknown_3882();
    _ID42407::_ID1985( _ID42237::_ID14413, "friendly_rappels_from_bathroom" );
    level._ID53563 _ID42407::_ID1890( _ID42407::_ID32315, "red" );
    _ID42407::_ID1890( _ID42407::_ID1805, "breach_rescue_trigger" );
    thread _ID42407::_ID11231();
}

_ID49040()
{
    _func_184( level._ID794._ID740, 700, 300, 1 );
}

_ID46655()
{
    if ( _ID42237::_ID14385( "player_approaches_rescue_breach" ) )
        return;

    level endon( "player_approaches_rescue_breach" );
    _ID42237::_ID14413( "friendly_rappels_from_bathroom" );
    wait 1.5;
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_whichway" );
    _ID42407::_ID28864( "gulag_gst_50meters" );
    wait 3;
    level._ID53563 _ID42407::_ID10805( "gulag_cmt_startfiring" );
    _ID42407::_ID28864( "gulag_gst_cistern" );
}

_ID51727()
{
    _ID42475::_ID34575( "start_rescue_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_sewers_slide" );
    _func_31B( 1 );
    _func_31C( 2 );
    _func_31B( 5 );
    _func_31B( 6 );
    var_0 = _func_1A2( "start_rescue_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] _ID42407::_ID1947( _ID42407::_ID22746 );

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_2 = _func_1A1( "start_rescue_player", "targetname" );
    level._ID794 _meth_8343( var_2._ID740 );
    level._ID794 _meth_8345( var_2._ID65 );
    _ID42407::_ID1805( "breach_rescue_trigger" );
    _ID42237::_ID14402( "player_near_tv" );
}

_ID48388()
{
    _ID42237::_ID14402( "gulag_enable_shower_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    _func_31A( "hide_interior_portal_group", 1 );
    level._ID1426["breach_door"] = level._ID1426["breach_price"];
    _ID42237::_ID14413( "player_approaches_rescue_breach" );

    if ( _func_02F( level._ID50577 ) )
    {
        _func_0DB( "ai_pathNegotiationOverlapCost", level._ID50577 );
        level._ID50577 = undefined;
    }

    level._ID34365 = 1;
    level._ID48534 = 1;
    _ID42407::_ID29534( "allies", _ID42407::_ID12467 );
    _ID42407::_ID29534( "allies", _ID42407::_ID41628 );
    var_0 = _func_0DE( "bad_guys" );
    _ID42237::_ID3350( var_0, maps\gulag_code::_ID49760 );
    _ID42237::_ID14402( "rescue_begins" );
    level._ID794._ID11563 = 1;
    level._ID14776 = 1;
    _ID42407::_ID4422( "end_breach" );
    thread _ID42407::_ID28864( "gulag_gst_8tangos" );
    var_1 = level._ID6032[3]._ID1224;
    var_2 = level._ID6032[4]._ID1224;
    level._ID34228 = [];
    level._ID34228[3] = 1;
    var_3 = _ID42237::_ID35164();
    var_3._ID740 = level._ID6032[3]._ID22142._ID740;
    var_3._ID65 = level._ID6032[3]._ID22142._ID65;
    var_4 = _ID42237::_ID35164();
    var_5 = var_1._ID740;
    var_6 = var_1._ID65;
    var_0 = _func_0DE( "allies" );

    for (;;)
    {
        var_1 waittill( "trigger" );

        if ( !level._ID794 _ID42367::_ID6021() )
            break;
    }

    _func_0DB( "g_friendlynamedist", 0 );
    _func_0DB( "actionSlotsHide", 1 );
    level._ID11635 = 0;
    var_7 = _func_1A2( "ending_room_spawner", "targetname" );
    waitframe;
    level._ID794 _meth_8099();
    var_4._ID740 = level._ID794._ID740;
    var_4._ID65 = level._ID794._ID65;
    var_4 _meth_8053( var_3 );
    level._ID794 _meth_8083( var_4, "tag_origin", 1, 0, 0, 90, 90, 0 );
    var_3._ID740 = level._ID6032[4]._ID22142._ID740;
    var_3._ID65 = level._ID6032[4]._ID22142._ID65;
    thread _unknown_3CF9( var_2, var_0 );

    if ( level._ID35897 == "ending" )
        wait 0.05;

    _func_053();
    _func_0DB( "ai_friendlysuppression", 0 );
    _func_0DB( "ai_friendlyfireblockduration", 0 );
    _ID42407::_ID10226( 0.05, _ID42234::_ID13611, "rock_glass" );
    var_8 = _func_1A1( "trash_sound", "script_noteworthy" );
    var_8 thread maps\gulag_ending_code::_ID48991();
    thread _ID42407::_ID32188( "gulag_exit" );
    level waittill( "breaching" );
    _ID42407::_ID10226( 2.5, maps\gulag_code::_ID51291, "moving_chain_hook_pricescell" );
    _ID42407::_ID10226( 2.5, maps\gulag_code::_ID51304, "escape_hanging_lamp", "escape_hanging_light", 1 );
    maps\gulag_code::_ID50315( "emergency_rotating light_orange", "emergency_light_gulag" );
    thread maps\gulag_aud::_ID46776();
    level._ID794 _meth_8189( "stand" );
    level._ID794 _meth_80F6();
    level._ID794 _meth_832C();
    level._ID794 _meth_832A();
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_830C( 0 );
    level._ID794._ID86 = 0;
    level._ID794._ID512 = 1;
    level._ID794 _ID42407::_ID10226( 15, _ID42298::_ID39638 );
    var_9 = _func_1A1( "price_spawner", "targetname" );
    var_9 _ID42407::_ID35014();
    var_9 = _func_1A1( "price_choke_spawner", "targetname" );
    var_10 = var_9 _ID42407::_ID35014();
    var_10._ID3189 = "chokey";
    var_10 _ID42407::_ID17509();
    var_10._ID486 = 5000;
    var_10.cheat._ID48626 = 1;
    var_10 _ID42407::_ID1868( maps\gulag_code::_ID46526 );
    var_11 = _ID42237::_ID16638( "ending_breach_org", "targetname" );
    level._ID52027 = var_11;
    var_3 = _ID42237::_ID35164();
    var_3._ID740 = var_11._ID740;
    var_3._ID65 = var_11._ID65;
    var_12 = _ID42237::_ID16638( "anim_node", "targetname" );
    var_13 = level._ID794._ID28340;
    var_14 = _func_1A5();
    var_14._ID337 = var_3;
    var_14._ID409 = -38;
    var_14._ID893 = -24;
    var_14 _ID42407::_ID38694();
    var_15 = _ID42407::_ID35028( "player_rig" );
    var_15 _meth_805A();
    var_16 = _ID42407::_ID35028( "strangle_chain" );
    level._ID46553 = var_16;
    var_17 = [];
    var_17[var_17.size] = level._ID28543;
    var_17[var_17.size] = var_10;
    var_17[var_17.size] = var_15;
    var_17[var_17.size] = var_16;
    var_18 = var_17;

    for ( var_20 = _func_1DA( var_18 ); _func_02F( var_20 ); var_20 = _func_1BF( var_18, var_20 ) )
    {
        var_19 = var_18[var_20];
        var_19 _meth_8053( var_3 );
    }

    var_clear_2
    var_clear_0
    level._ID28544 = var_3;
    var_21 = level._ID28543 _ID42407::_ID16120( "price_breach" );
    var_22 = _func_067( var_21 );
    var_23 = _func_069( var_21, "punch" );
    var_24 = 3.45;
    _ID42407::_ID10226( var_22 * var_23[0] - 2.8 + var_24, maps\gulag_ending_code::_ID45873, var_15 );
    var_12 _ID42259::_ID3016( var_17, "price_breach" );
    wait(var_24);
    thread maps\gulag_code::_ID53463();
    _func_080( "weapons_plr", 0 );
    level._ID28543 thread _ID42407::_ID27079( "scn_gulag_price_rescue_chain" );
    _ID42407::_ID10226( 3.45, _ID42237::_ID27077, "scn_gulag_price_rescue_punch", level._ID794 _meth_80AF() );
    _ID42407::_ID10226( 4.35, _ID42237::_ID27077, "scn_gulag_price_rescue_bodyfall", level._ID794 _meth_80AF() );
    var_25 = _func_1A1( "price_chair", "targetname" );
    thread maps\gulag_code::_ID48290( var_25, var_12 );
    var_12 _ID42259::_ID3099( var_17, "price_breach" );
    level._ID794 _meth_81F1( 1 );
    var_26 = _func_0DE( "axis" );
    var_27 = var_26;

    for ( var_28 = _func_1DA( var_27 ); _func_02F( var_28 ); var_28 = _func_1BF( var_27, var_28 ) )
    {
        var_19 = var_27[var_28];

        if ( var_19 != var_10 )
            var_19 _meth_80B7();
    }

    var_clear_1
    var_clear_0
    var_9 = _func_1A1( "endlog_soap_spawner", "targetname" );
    var_9._ID216 = 1;
    var_9 _ID42407::_ID35014();
    var_9 = _func_1A2( "endlog_redshirt_spawner", "targetname" )[0];
    var_9._ID216 = 1;
    var_9 _ID42407::_ID35014();
    var_29 = _ID42407::_ID35028( "1911" );
    var_17 = [];
    var_17[var_17.size] = level._ID28543;
    var_30 = level._ID28543 _ID42407::_ID16120( "price_rescue_intro" );
    var_22 = _func_067( var_30 );
    var_3 _ID42407::_ID10226( var_22, maps\gulag_code::_ID43605 );
    var_17["player"] = var_15;
    var_17[var_17.size] = level._ID46875;
    var_17[var_17.size] = level._ID53563;
    var_17[var_17.size] = var_10;
    var_17[var_17.size] = var_16;
    var_17["gun"] = var_29;
    level._ID28543 _meth_8055();
    var_12 thread _ID42259::_ID3099( var_17, "price_rescue" );
    thread _unknown_3FFF( var_10, var_12 );
    var_30 = level._ID53563 _ID42407::_ID16120( "price_rescue" );
    var_22 = _func_067( var_30 );
    var_31 = 1.5;
    wait(var_22 - var_31);
    var_32 = _func_1A1( "pricecell_stagelight", "targetname" );
    var_32 thread _ID42407::_ID25088( "staging_off", 1 );
    maps\gulag_lighting::_ID45391( "ending_rappel" );
    level._ID53563 _ID42407::_ID14803( "m4_grunt", "primary" );
    _func_0DB( "actionSlotsHide", 0 );
    level._ID28543 notify( "change_to_regular_weapon" );
    _ID42237::_ID14402( "escape_the_gulag" );
    var_29 _meth_80B7();
    _func_0DB( "g_friendlynamedist", 196 );
    thread _unknown_40B1( var_31, var_13 );
    wait(var_31);
    var_15 _meth_805A();
    thread maps\gulag_code::_ID51304( "cafeteria_hanging_lamp", "cafeteria_hanging_light" );
}

_ID48835()
{
    self._ID46569 thread _ID42259::_ID3038( self, "price_rescue" );
}

_ID50411( var_0, var_1 )
{
    var_2 = var_0 _ID42407::_ID16120( "price_rescue" );
    var_3 = _func_067( var_2 );
    wait(var_3);
    var_4 = var_1;
    var_4._ID740 = var_4._ID740 + ( 40, -45, 0 );
    var_0._ID9827 = ::_unknown_40B6;
    var_0._ID46569 = var_4;
    var_0 _meth_8058();
}

_ID52182( var_0, var_1 )
{
    wait 0.1;
    var_0 notify( "trigger",  level._ID794  );
    wait 2.5;
    level notify( "kill_color_replacements" );
    level waittill( "sp_slowmo_breachanim_done" );
    var_2 = _func_0DE( "allies" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 _ID42407::_ID20537() )
            continue;

        if ( _func_02F( var_4._ID22746 ) )
            var_4 _ID42407::_ID36519();

        var_4 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];

        if ( !_func_1A7( var_4 ) )
            continue;

        if ( _func_02F( var_4._ID22746 ) )
            var_4 _ID42407::_ID36519();

        var_4 _meth_80B7();
    }

    var_clear_1
    var_clear_0
}

_ID45109( var_0, var_1 )
{
    wait(var_0 + 0.5);
    level._ID794 _meth_8329();
    var_2 = level._ID794 _meth_8317();
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_125( var_4, "riot" ) )
            continue;

        if ( var_1 == var_4 )
        {
            level._ID794 _meth_8320( var_4 );
            break;
        }
    }

    var_clear_2
    var_clear_0
    level._ID794 _meth_8055();
    level._ID794 _meth_80F7();
    level._ID794 _meth_832D();
    level._ID794 _meth_832B();
    level._ID794 _meth_830F( 1 );
    level._ID794 _meth_830C( 1 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    _func_0DB( "ammoCounterHide", 0 );
    var_6 = 1.7;
    var_7 = var_6 / 20;

    for ( var_8 = 0; var_8 <= 1; var_8 += var_7 )
    {
        level._ID794 _meth_81F1( var_8 );
        wait 0.05;
    }
}

_ID43460()
{
    waitframe;

    if ( _ID42407::_ID20505() )
    {
        _func_0DB( "ui_hidemap", 1 );
        wait 2;
        _ID42237::_ID14413( "display_introscreen_text" );
        wait 11.2;
    }
    else
        waitframe;

    _func_1E3( 1, "current", &"GULAG_FIND_POW", maps\gulag_code::_ID53212() );
    _func_194( 1, level._ID53563 );
    _ID42237::_ID14413( "stabilize" );
    _func_1E5( 1, "active" );
    _func_1E3( 2, "current", &"GULAG_INFILTRATE_THE_GULAG", ( 0, 0, 0 ) );
    _func_1E7( 2, 1 );

    switch ( level._ID35897 )
    {

    }

    case "bathroom":
    case "tunnel":
    case "rappel":
    case "armory":
    case "control_room":
    case "approach":
    case "intro":
    case "f15":
    case "default":
    case "rescue":
    case "ending":
    case "evac":
    case "cafe":
    case "run":
    default:
}

_ID46404()
{
    waitframe;
    var_0 = level._ID35897;

    if ( _ID42407::_ID20505() )
        return;

    thread maps\gulag_code::_ID47546();

    if ( var_0 == "intro" )
        return;

    _func_0DB( "compass", "0" );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "hud_drawhud", 1 );

    if ( var_0 == "approach" )
        return;

    _ID42237::_ID14402( "player_heli_uses_modified_yaw" );
    maps\gulag_code::_ID54691();
    wait 0.05;
    var_1 = _func_1A1( "car_blows_up", "script_noteworthy" );
    _func_18F( var_1._ID740, 800, 5000, 5000 );
    _ID42237::_ID14402( "approach_dialogue" );
    _ID42237::_ID14402( "slamraam_gets_players_attention" );
    _ID42237::_ID14402( "stab2_clear" );

    if ( var_0 == "unload" )
        return;

    if ( var_0 == "f15" )
        return;

    thread maps\gulag_code::_ID51013();
    _func_0DB( "g_friendlyNameDist", 15000 );
    _func_0DB( "compass", "1" );
    _func_0DB( "ammoCounterHide", 0 );
    _func_0DB( "hud_showStance", 1 );
    _func_0DB( "hud_drawhud", 1 );
    _ID42237::_ID14402( "stop_rotating_around_gulag" );
    _ID42237::_ID14402( "player_heli_uses_modified_yaw" );
    _ID42237::_ID14402( "player_lands" );
    wait 0.05;

    if ( var_0 == "bhd" )
        return;

    _ID42237::_ID14402( "access_control_room" );
    _ID42237::_ID14402( "player_progresses_passed_ext_area" );

    if ( var_0 == "control_room" )
        return;

    _ID42407::_ID29534( "allies", maps\gulag_code::_ID24832 );
    _ID42272::_ID33575( "compass_map_gulag_2" );
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID43566 );
    _ID42407::_ID1892( "allies", _ID42407::_ID12467 );
    _ID42237::_ID14402( "gulag_cell_doors_enabled" );
    _ID42237::_ID14402( "enable_interior_fx" );
    _ID42237::_ID14402( "disable_exterior_fx" );
    _ID42237::_ID14402( "pre_armory_open" );
    _ID42237::_ID14402( "spotlight_turns_on" );
    _ID42237::_ID14402( "start_armory_music" );

    if ( var_0 == "armory" )
        return;

    thread maps\gulag_code::_ID45545();
    _ID42237::_ID14402( "access_control_room" );
    _ID42237::_ID14402( "run_from_armory" );

    if ( var_0 == "rappel" )
        return;

    _ID42237::_ID14402( "cell_duty" );
    _ID42237::_ID14402( "go_to_pipearea_postup" );

    if ( var_0 == "tunnel" )
        return;

    _ID42237::_ID14402( "nearing_bathroom_breach" );
    _ID42237::_ID14402( "leaving_pipe_area" );
    _ID42237::_ID14402( "advance_through_pipearea" );
    _ID42237::_ID14402( "access_control_room" );
    _ID42237::_ID14402( "control_room" );
    _ID42237::_ID14402( "leaving_pipe_area" );

    if ( var_0 == "bathroom" )
        return;

    if ( var_0 == "so_showers" )
        return;

    _ID42237::_ID14402( "player_enters_bathroom" );
    maps\gulag_ending::_ID45125();
}

_ID53095()
{
    waitframe;

    switch ( level._ID35897 )
    {

    }

    case "approach":
    case "bathroom":
    case "tunnel":
    case "rappel":
    case "armory":
    case "control_room":
    case "unload":
    case "default":
    case "rescue":
    case "ending":
    case "evac":
    case "cafe":
    case "run":
    default:
}

_ID50095()
{
    self endon( "exit_collapses" );
    var_0 = _func_1A1( "escape_refresh_objective", "targetname" );
    var_0 waittill( "trigger" );
    _func_1E8( 6, maps\gulag_code::_ID52773() );
}
#using_animtree("generic_human");

_ID49735()
{
    var_0 = level._ID40069["script_vehicle_littlebird_bench_allylanding_1"];

    for ( var_1 = 0; var_1 < var_0[2]._ID19302.size; var_1++ )
        var_0[2]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle1_front;

    for ( var_1 = 0; var_1 < var_0[3]._ID19302.size; var_1++ )
        var_0[3]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle1_middle;

    for ( var_1 = 0; var_1 < var_0[4]._ID19302.size; var_1++ )
        var_0[4]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle1_back;

    for ( var_1 = 0; var_1 < var_0[5]._ID19302.size; var_1++ )
        var_0[5]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle1_front;

    for ( var_1 = 0; var_1 < var_0[6]._ID19302.size; var_1++ )
        var_0[6]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle1_middle;

    for ( var_1 = 0; var_1 < var_0[7]._ID19302.size; var_1++ )
        var_0[7]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle1_back;

    var_0[2]._ID19303 = %h2_gulag_intro_soldiersinheli_front;
    var_0[3]._ID19303 = %h2_gulag_intro_soldiersinheli_middle;
    var_0[4]._ID19303 = %h2_gulag_intro_soldiersinheli_back;
    var_0[5]._ID19303 = %h2_gulag_intro_soldiersinheli_front;
    var_0[6]._ID19303 = %h2_gulag_intro_soldiersinheli_middle;
    var_0[7]._ID19303 = %h2_gulag_intro_soldiersinheli_back;
    var_0[2]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding1_front;
    var_0[3]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding1_middle;
    var_0[4]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding1_back;
    var_0[5]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding1_front;
    var_0[6]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding1_middle;
    var_0[7]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding1_back;
    var_0[2]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding1_front;
    var_0[3]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding1_middle;
    var_0[4]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding1_back;
    var_0[5]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding1_front;
    var_0[6]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding1_middle;
    var_0[7]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding1_back;
    var_0[2]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount1_front;
    var_0[3]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount1_middle;
    var_0[4]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount1_back;
    var_0[5]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount1_front;
    var_0[6]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount1_middle;
    var_0[7]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount1_back;
    var_2 = level._ID40069["script_vehicle_littlebird_bench_allylanding_2"];

    for ( var_1 = 0; var_1 < var_2[2]._ID19302.size; var_1++ )
        var_2[2]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle2_front;

    for ( var_1 = 0; var_1 < var_2[3]._ID19302.size; var_1++ )
        var_2[3]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle2_middle;

    for ( var_1 = 0; var_1 < var_2[4]._ID19302.size; var_1++ )
        var_2[4]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle2_back;

    for ( var_1 = 0; var_1 < var_2[5]._ID19302.size; var_1++ )
        var_2[5]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle2_front;

    for ( var_1 = 0; var_1 < var_2[6]._ID19302.size; var_1++ )
        var_2[6]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle2_middle;

    for ( var_1 = 0; var_1 < var_2[7]._ID19302.size; var_1++ )
        var_2[7]._ID19302[var_1] = %h2_gulag_landing_soldiersinheli_alertidle2_back;

    var_2[2]._ID19303 = %h2_gulag_intro_soldiersinheli_front;
    var_2[3]._ID19303 = %h2_gulag_intro_soldiersinheli_middle;
    var_2[4]._ID19303 = %h2_gulag_intro_soldiersinheli_back;
    var_2[5]._ID19303 = %h2_gulag_intro_soldiersinheli_front;
    var_2[6]._ID19303 = %h2_gulag_intro_soldiersinheli_middle;
    var_2[7]._ID19303 = %h2_gulag_intro_soldiersinheli_back;
    var_2[2]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding2_front;
    var_2[3]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding2_middle;
    var_2[4]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding2_back;
    var_2[5]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding2_front;
    var_2[6]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding2_middle;
    var_2[7]._ID28338 = %h2_gulag_landing_soldiersinheli_prelanding2_back;
    var_2[2]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding2_front;
    var_2[3]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding2_middle;
    var_2[4]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding2_back;
    var_2[5]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding2_front;
    var_2[6]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding2_middle;
    var_2[7]._ID28339 = %h2_gulag_landing_soldiersinheli_prelanding2_back;
    var_2[2]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount2_front;
    var_2[3]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount2_middle;
    var_2[4]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount2_back;
    var_2[5]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount2_front;
    var_2[6]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount2_middle;
    var_2[7]._ID16491 = %h2_gulag_landing_soldiersinheli_dismount2_back;
    var_3 = level._ID40069["script_vehicle_littlebird_player"];
    var_3[6]._ID19302 = undefined;
    var_3[6]._ID19303 = undefined;
    var_3[6]._ID28338 = undefined;
    var_3[6]._ID28339 = undefined;
    var_3[6]._ID16491 = undefined;
    var_3[6]._ID5326 = 1;
}

_ID46411( var_0 )
{
    self endon( "death" );
    self _meth_8155( var_0 );
}

charge_in_gulag()
{
    var_0 = _func_1A1( "entering_gulag_volume", "targetname" );
    var_1 = [];
    var_2 = 5;

    while ( var_1.size < var_2 )
    {
        if ( _func_2A5( var_0 ) )
            break;

        var_3 = _func_0DE( "allies" );
        var_3 = _ID42407::_ID29506( var_3 );

        if ( var_3.size < var_2 )
            break;

        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( var_5 _meth_80B0( var_0 ) && !_ID42407::_ID20542( var_1, var_5 ) )
                var_1[var_1.size] = var_5;
        }

        var_clear_2
        var_clear_0
        waittillframeend;
    }
}

disable_turn_in_gulag_stair()
{
    level endon( "cell_door1" );
    var_0 = _func_1A1( "no_turn_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 _ID42407::_ID10989();
    }
}

enable_turn_in_gulag_stair()
{
    level endon( "cell_door1" );
    var_0 = _func_1A1( "enable_turn_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 _ID42407::_ID12549();
    }
}

_ID44384()
{
    level _ID42237::_ID41068( "createfx_common_done", "start_is_set" );
    _ID42237::_ID14400( "enable_endlog_fx" );
    _ID42237::_ID14400( "player_lands" );
    _ID42237::_ID14400( "gulag_enable_transition_fx_vol" );
    _ID42237::_ID14400( "gulag_enable_exterior_fx_vol" );
    _ID42237::_ID14400( "gulag_enable_interior_fx_vol" );
    _ID42237::_ID14400( "gulag_enable_tunnel_fx_vol" );
    _ID42237::_ID14400( "gulag_enable_cellblock_fx_vol" );
    _ID42237::_ID14400( "gulag_enable_ending_fx_vol" );
    _ID42237::_ID14400( "gulag_enable_shower_fx_vol" );
    _ID42237::_ID14402( "gulag_enable_exterior_fx_vol" );
    var_0 = "interior_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_interior_fx_vol" );
    _ID42407::_ID52583( var_0, _func_1A2( "gulag_interior_fx_vol_group", "targetname" ) );
    var_0 = "transition_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_transition_fx_vol" );
    _ID42407::_ID52583( var_0, _func_1A2( "gulag_transition_fx_vol_group", "targetname" ) );
    var_0 = "exterior_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_exterior_fx_vol" );
    _ID42407::_ID52583( var_0, _func_1A2( "gulag_exterior_fx_vol_group", "targetname" ) );
    var_0 = "endlog_fx_vol";
    _ID42407::_ID53651( var_0, "enable_endlog_fx" );
    _ID42407::_ID52583( var_0, _func_1A1( "gulag_endlog_destructibles", "script_noteworthy" ) );
    var_0 = "shower_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_shower_fx_vol" );
    _ID42407::_ID52583( var_0, _func_1A2( "gulag_shower_fx_vol_group", "targetname" ) );
    var_0 = "cellblock_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_cellblock_fx_vol" );
    _ID42407::_ID52583( var_0, _func_1A2( "gulag_cellblock_fx_vol_group", "targetname" ) );
    var_0 = "tunnel_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_tunnel_fx_vol" );
    _ID42407::_ID52583( var_0, _func_1A2( "gulag_tunnel_fx_vol_group", "targetname" ) );
    var_0 = "ending_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_ending_fx_vol" );
    _ID42407::_ID52583( var_0, _func_1A2( "gulag_ending_fx_vol_group", "targetname" ) );
    _ID42407::_ID45871( undefined, "player_lands" );
    level notify( "fxvolume_grp_setup_done" );
}

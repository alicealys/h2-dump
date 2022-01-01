// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "beautiful_corner_hdr_demo" ) == "1" || getdvar( "beautiful_corner_security_cameras" ) == "1" )
    {
        maps\gulag_beautiful_corner::_ID616();
        return;
    }

    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\gulag_mission_select_cam::_ID50320();
        return;
    }

    setsaveddvar( "com_cinematicEndInWhite", 1 );
    setomnvar( "ui_consciousness_init", 1 );
    level._ID10114 = 128;
    _ID42237::_ID9137( "f15", 1 );
    setsaveddvar( "g_friendlyNameDist", 0 );
    _ID48864::_ID616();
    precachestring( &"GULAG_SPIE_HINT" );
    precachestring( &"GULAG_SPIE_HINT_PC" );
    precachestring( &"GULAG_RAPPEL_HINT" );
    precachestring( &"GULAG_RAPPEL_HINT_PC" );
    precachestring( &"SCRIPT_LEARN_GRENADE_LAUNCHER" );
    precachestring( &"SCRIPT_NIGHTVISION_USE" );
    precachestring( &"SCRIPT_NIGHTVISION_STOP_USE" );
    precachestring( &"GULAG_HINT_MELEE" );
    precachestring( &"GULAG_INTROSCREEN_LINE_4" );
    precachestring( &"GULAG_INTROSCREEN_LINE_3" );
    precachestring( &"GULAG_INTROSCREEN_LINE_2" );
    precachestring( &"GULAG_INTROSCREEN_LINE_1" );
    precachestring( &"AUTOSAVE_AUTOSAVE" );
    precachestring( &"GULAG_INTROSCREEN_1" );
    precachestring( &"GULAG_INTROSCREEN_2" );
    precachestring( &"GULAG_INTROSCREEN_3" );
    precachestring( &"GULAG_INTROSCREEN_4" );
    precachestring( &"GULAG_INTROSCREEN_5" );
    precachestring( &"GULAG_FIND_POW" );
    precachestring( &"GULAG_FOLLOW_SOAP" );
    precachestring( &"GULAG_CONTROL_ROOM" );
    precachestring( &"GULAG_CELL_DUTY" );
    precachestring( &"GULAG_BREACH_THE_BATHROOM" );
    precachestring( &"GULAG_ESCAPE" );
    precachestring( &"GULAG_INTROSCREEN_LINE_1" );
    precachestring( &"GULAG_INFILTRATE_THE_GULAG" );
    precachestring( &"SCRIPT_MANTLE" );
    _func_260( "gulag_global" );
    _func_260( "gulag_global_nvg_laser" );
    _func_260( "gulag_showers" );
    _func_260( "gulag_showers_nvg_laser" );
    precacherumble( "tank_rumble" );
    _ID42407::_ID1951( "intro", ::_ID49377, "Intro", ::_ID50340 );
    _ID42407::_ID1951( "approach", ::_ID54600, "Approach", ::_ID46981 );
    _ID42407::_ID1951( "f15", ::_ID49189, "f15", ::_ID43615 );
    _ID42407::_ID1951( "unload", ::_ID49189, "Unload", ::_ID43615 );
    _ID42407::_ID1951( "control_room", ::_ID35701, "Control Room", ::_ID46995 );
    _ID42407::_ID1951( "armory", ::_ID53042, "Armory", ::_ID49089 );
    _ID42407::_ID1951( "rappel", ::_ID47116, "Rappel", ::_ID53523 );
    _ID42407::_ID1951( "tunnel", ::_ID36068, "tunnel", ::_ID54650 );
    _ID42407::_ID1951( "bathroom", ::_ID47976, "Bathroom", ::_ID50660 );
    _ID42407::_ID1951( "rescue", ::_ID51727, "Rescue", ::_ID48388 );
    var_0 = getentarray( "falling_rib_chunk", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID31860 );
    var_1 = getentarray( "top_hall_exploder", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID31860 );
    var_2 = getentarray( "top_hall_chunk", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID31860 );
    var_2 = getentarray( "top_hall_chunk", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID31860 );
    level._ID54335 = 4000;
    level._ID52661 = 0.05;
    level._ID43124 = 0.4;
    level._ID51047 = 1;
    level._ID44935 = _ID42260::_ID45726;
    level._ID10930 = 1;
    level._ID9551 = ::_ID50479;
    _ID42287::_ID521();
    _ID46856::_ID616();
    _ID42542::_ID616( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_1" );
    _ID42542::_ID616( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench_allylanding_2" );
    var_3 = getentarray( "gulag_destructible_volume", "targetname" );
    _ID42407::_ID22998( var_3 );
    _ID42407::_ID23000( var_3 );
    _ID50975::_ID616();
    maps\gulag_lighting::_ID616();
    _ID49653::_ID616();
    _ID51081::_ID616();
    thread maps\gulag_ending::_ID44293();
    thread _ID44384();
    maps\gulag_anim::_ID616();
    _ID42323::_ID616();
    _ID42272::_ID33575( "compass_map_gulag" );
    thread maps\gulag_code::_ID43205();
    setdvar( "use_improved_breaches", 1 );
    level._ID51829 = "mil_frame_charge";
    _ID42367::_ID34366();
    level._ID1426["breach_door"] = loadfx( "fx/explosions/breach_wall_concrete" );
    _ID42337::_ID616( level._ID805 );
    level._ID794 setactionslot( 1, "" );
    _ID42407::_ID1892( "allies", maps\gulag_code::_ID24832 );
    _ID42237::_ID30398( "helper_model", _ID42407::_ID31860 );
    _ID42407::_ID1895( "grenade_launcher", &"SCRIPT_LEARN_GRENADE_LAUNCHER", maps\gulag_code::_ID51178 );
    _ID42407::_ID1895( "nvg", &"SCRIPT_NIGHTVISION_USE", _ID42337::_ID33930, undefined, "medium_background" );
    _ID42407::_ID1895( "disable_nvg", &"SCRIPT_NIGHTVISION_STOP_USE", _ID42337::_ID33876, undefined, "medium_background" );
    _ID42407::_ID1895( "riot_bash", &"GULAG_HINT_MELEE", maps\gulag_code::_ID54034, undefined, "small_background" );
    level._ID54424 = 1000;
    level._ID1553 = 2.5;
    _ID49693();
    thread maps\gulag_code::_ID46606( "cell_door2" );
    thread maps\gulag_code::_ID46606( "cell_door3" );
    thread maps\gulag_code::_ID46606( "cell_door4" );
    thread maps\gulag_code::_ID46606( "cell_door_weapons" );
    precacheitem( "smoke_grenade_american" );
    precacheitem( "m4m203_reflex_arctic" );
    precacheitem( "f15_sam" );
    precacheitem( "sam" );
    precacheitem( "slamraam_missile" );
    precacheitem( "slamraam_missile_guided" );
    precacheitem( "cobra_seeker" );
    precacheitem( "rpg_straight" );
    precacheitem( "cobra_Sidewinder" );
    precacheitem( "m14_scoped_arctic" );
    precacheitem( "claymore" );
    precacheitem( "mp5_silencer_reflex" );
    precacheturret( "player_view_controller" );
    precacheitem( "fraggrenade" );
    precacheitem( "flash_grenade" );
    precacheitem( "claymore" );
    precachemodel( "viewhands_udt" );
    precachemodel( "h1_cs_light_alarm_on" );
    precachemodel( "h1_cs_light_alarm_blue_on" );
    precachemodel( "h1_cs_light_alarm_blue" );
    precachemodel( "gulag_price_ak47" );
    precachemodel( "vehicle_slamraam_launcher_no_spike" );
    precachemodel( "vehicle_slamraam_missiles" );
    precachemodel( "projectile_slamraam_missile" );
    precachemodel( "tag_turret" );
    precachemodel( "me_lightfluohang_double_destroyed" );
    precachemodel( "me_lightfluohang_single_destroyed" );
    precachemodel( "ma_flatscreen_tv_wallmount_broken_01" );
    precachemodel( "ma_flatscreen_tv_wallmount_broken_02" );
    precachemodel( "com_tv2_d" );
    precachemodel( "com_tv1" );
    precachemodel( "com_tv2" );
    precachemodel( "com_locker_double_destroyed" );
    precachemodel( "dt_mirror_dam" );
    precachemodel( "dt_mirror_des" );
    precachemodel( "tag_laser" );
    precachemodel( "viewbody_udt" );
    precachemodel( "h2_gulag_cellblock2_intact_wall_01" );
    precachemodel( "trq_tree_pine_snow_045_02_static" );
    precachemodel( "trq_tree_pine_snow_060_02_static" );
    precachemodel( "trq_tree_pine_snow_070_02_static" );
    precachemodel( "trq_tree_pine_snow_080_02_static" );
    precachemodel( "trq_tree_pine_snow_090_02_static" );
    precachemodel( "trq_tree_pine_snow_105_02_static" );
    precachemodel( "com_blackhawk_spotlight_on_mg_setup_3x_cold" );
    precachemodel( "com_blackhawk_spotlight_on_mg_setup_3x_cold_off" );
    precachemodel( "h2_com_laptop_rugged_open_gulag" );
    precachemodel( "h2_gulag_rappel_rope_player_60ft" );
    precachemodel( "h2_gulag_rappel_rope_player_60ft_standard" );
    precachemodel( "body_seal_udt_smg_gulag_intro" );
    precachemodel( "body_seal_udt_assault_a_gulag_intro" );
    precachemodel( "head_seal_udt_d_lifesaver_gulag_intro" );
    precachemodel( "head_seal_udt_a_gulag_intro" );
    precachemodel( "head_seal_udt_c_gulag_intro" );
    precachemodel( "head_seal_udt_d_gulag_intro" );
    precachemodel( "head_seal_udt_e_gulag_intro" );
    precachemodel( "h2_head_seal_udt_b_c_gulag_intro" );
    precachemodel( "h2_vehicle_sa15_gauntlet_destroy_snow" );
    precachemodel( "com_tv1_pho_zombie" );
    precachemodel( "hat_opforce_merc_b" );
    precacheshader( "h1_hud_tutorial_border" );
    precacheshader( "h1_hud_tutorial_blur" );
    loadfx( "fx/explosions/tv_flatscreen_explosion" );
    loadfx( "fx/misc/light_fluorescent_single_blowout_runner" );
    loadfx( "fx/misc/light_fluorescent_blowout_runner" );
    loadfx( "fx/props/locker_double_des_01_left" );
    loadfx( "fx/props/locker_double_des_02_right" );
    loadfx( "fx/props/locker_double_des_03_both" );
    loadfx( "fx/misc/no_effect" );
    loadfx( "fx/misc/light_blowout_swinging_runner" );
    loadfx( "fx/props/mirror_dt_panel_broken" );
    loadfx( "fx/props/mirror_shatter" );
    loadfx( "fx/misc/tower_light_blue_steady" );
    precacheshellshock( "gulag_attack" );
    precacheshellshock( "nosound" );
    precachemodel( "rat" );
    thread maps\gulag_code::_ID49442();
    maps\gulag_code::_ID53948();
    thread maps\gulag_code::ambient_snowing();
    level._ID50486 = -0.5;
    level._ID6112["tv_explode"] = loadfx( "fx/explosions/tv_explosion" );
    thread _ID53751();
    thread maps\gulag_code::_ID45749();
    maps\gulag_aud::_ID616();
    thread maps\gulag_code::_ID50467();
    level thread maps\gulag_code::_ID51497();
    level._ID53749 = [];
    var_4 = getentarray( "tarp_pull_org", "targetname" );
    _ID42237::_ID3350( var_4, maps\gulag_code::_ID45082 );
    var_5 = _ID42237::_ID16638( "start_approach", "script_noteworthy" );
    var_6 = _ID42237::_ID16640( "start_approach_friendly", "script_noteworthy" );
    var_6["p"] = var_5;
    thread maps\gulag_code::_ID54277();
    enablepg( "hide_interior_portal_group", 0 );
    thread maps\gulag_code::_ID49141();
    setignoremegroup( "team3", "axis" );
    setignoremegroup( "axis", "team3" );
    var_7 = getent( "endlog_soap_spawner", "targetname" );
    var_7 thread _ID42407::_ID1947( maps\gulag_code::_ID53053 );
    var_7 = getent( "ghost", "script_noteworthy" );
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
    var_8 = getentarray( "ally_gets_missed_trigger", "targetname" );
    _ID42237::_ID3350( var_8, maps\gulag_code::_ID44693 );
    var_9 = getentarray( "ally_can_get_hit_trigger", "targetname" );
    _ID42237::_ID3350( var_9, maps\gulag_code::_ID53778 );
    var_10 = getentarray( "ally_in_armory", "targetname" );
    _ID42237::_ID3350( var_10, maps\gulag_code::_ID45948 );
    var_11 = getentarray( "damage_targ_trigger", "targetname" );
    _ID42237::_ID3350( var_11, maps\gulag_code::_ID49768 );
    var_12 = getentarray( "friendlies_ditch_riot_shields_trigger", "targetname" );
    _ID42237::_ID3350( var_12, maps\gulag_code::_ID45819 );
    _ID42407::_ID1985( _ID42237::_ID14413, "player_moves_into_gulag" );
    _ID42407::_ID1890( _ID42237::_ID14402, "gulag_cell_doors_enabled" );
    thread _ID42407::_ID11231();
    thread maps\gulag_code::_ID52125();
    level._ID49181 = 0;
    level._ID50003 = 0;
    level._ID45432 = "slamraam_missile_guided";
    thread _ID43460();
    thread _ID53095();
    thread _ID46404();
    var_13 = getent( "ai_field_blocker", "targetname" );
    var_13 connectpaths();
    var_13 notsolid();
    var_14 = getentarray( "deprecated_traverse", "targetname" );
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
    var_15 = getentarray( "anti_air_gun", "targetname" );
    _ID42237::_ID3350( var_15, maps\gulag_code::_ID43073 );
    thread maps\gulag_code::_ID47199();
    _ID49735();
    thread maps\gulag_code::_ID54342();

    if ( getdvarint( "limited_mode" ) )
        level._ID51625 = maps\gulag_code::_ID46373;

    setsaveddvar( "r_reactiveMotionVehicleEnabled", 1 );
    setsaveddvar( "r_reactiveMotionHelicopterLimit", 1 );
    setsaveddvar( "r_reactiveMotionHelicopterRadius", 1000 );
    setsaveddvar( "r_reactiveMotionVehicleZOffset", -120.0 );
    setsaveddvar( "r_reactiveMotionHelicopterStrength", 5 );
    setsaveddvar( "fx_cast_shadow", 0 );
    setsaveddvar( "r_umbraAccurateOcclusionThreshold", 512 );
    thread _ID49865();
    thread maps\gulag_code::_ID53023();
    thread maps\gulag_code::_ID48710();
    thread maps\gulag_code::surprise();
    thread maps\gulag_code::gulag_entrance_portal_group();
    thread maps\gulag_code::hide_courtyard_models();
    _func_31c( 1 );
    _func_31c( 3 );
    _func_31c( 4 );
    _func_31c( 5 );
    _func_31c( 6 );
    level._ID43135.greenberet_disabled = 1;
    thread maps\gulag_code::exterior_interior_lightgrid();
    level.cellblock_spawning_door = getent( "cellblock_spawning_door", "targetname" );
    level.cellblock_spawning_door notsolid();
    level.cellblock_spawning_door hide();
    level.cellblock_spawning_door_coll = getent( "cellblock_spawning_door_coll", "targetname" );
    level.cellblock_spawning_door_coll connectpaths();
    level.cellblock_spawning_door_coll notsolid();
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

    if ( !isdefined( level._ID18457 ) )
        level._ID18457 = [];

    level._ID18457 = _ID42237::_ID3293( level._ID18457, getent( "heli_intro_player", "targetname" ) );
    level._ID18457 = _ID42407::_ID3317( level._ID18457, getentarray( "heli_respawn_spawner", "script_noteworthy" ) );
    _ID42237::_ID14413( "bhd_heli_flies_off" );
    wait 4;
    level notify( "wibble_heli_check_stop" );
}

_ID53751()
{
    if ( !_ID42407::_ID20614() )
    {
        var_0 = getent( "so_weapon_tarp", "targetname" );
        var_0 delete();
    }
}

_ID52174()
{
    level._ID794 freezecontrols( 1 );
    var_0 = _ID42313::_ID9125( "black", 1, level._ID794 );
    wait 0.5;
    var_1 = [];
    var_1[var_1.size] = &"GULAG_INTROSCREEN_LINE_4";
    var_1[var_1.size] = &"GULAG_INTROSCREEN_LINE_3";
    var_1["date"] = &"GULAG_INTROSCREEN_LINE_2";
    var_1[var_1.size] = &"GULAG_INTROSCREEN_LINE_1";
    level thread _ID42318::_ID20371( var_1 );
    wait 2;
    var_0 fadeovertime( 4 );
    var_0._ID55 = 0;
    wait 1;
    level._ID794 freezecontrols( 0 );
    wait 3;
    var_0 destroy();
}

_ID50479()
{
    _ID42324::_ID19730();
    level._ID35073 = [];
    level._ID35073["allies"] = [];
    level._ID35073["axis"] = [];
    level._ID35073["neutral"] = [];
    _ID42337::_ID616( level._ID805 );
    level._ID794 setactionslot( 1, "nightvision" );
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

    foreach ( var_4 in var_0 )
    {
        var_1[var_4] = level._ID1672[var_4];

        foreach ( var_6 in var_2 )
        {
            if ( var_6 == "water" )
                continue;

            level._ID1672[var_4][var_6] = undefined;
            var_7 = _ID42400::_ID46850( var_6 );

            foreach ( var_9 in var_7 )
                level._ID1672[var_4][var_9] = undefined;
        }
    }

    _ID42237::_ID14413( "disable_intro_heli_treadfx_hack" );

    foreach ( var_4 in var_0 )
        level._ID1672[var_4] = var_1[var_4];
}

_ID50340()
{
    level._ID794 disableweapons();
    thread maps\gulag_code::_ID51085();
    level._ID38733 = 5000;
    level._ID53837 = 1;
    enablepg( "hide_interior_portal_group", 0 );
    thread _ID50731();
    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "hud_drawhud", 1 );
    _ID42407::_ID3343( "goal_delete_spawner", maps\gulag_code::_ID46753 );
    thread maps\gulag_code::_ID47546();
    var_0 = getentarray( "heli_smoke_trigger", "targetname" );
    _ID42237::_ID3350( var_0, maps\gulag_code::_ID43779 );
    thread maps\gulag_code::_ID48680();
    thread maps\gulag_code::_ID53085();
    thread _ID42318::_ID50101( 0.7, 1 );
    var_1 = gettime();
    level._ID45897 = gettime();
    var_2 = getent( "going_in_hot", "script_noteworthy" );
    var_2 _ID42407::_ID1947( maps\gulag_code::_ID52628 );
    thread maps\gulag_code::_ID45347();
    var_3 = getentarray( "intro_heli_1", "targetname" );
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
    level._ID794 disableweapons();
    enablepg( "hide_interior_portal_group", 0 );
    level._ID53563 setsurfacetype( "default" );
    _ID42237::_ID14413( "display_introscreen_text" );
    wait 2.2;
    savegame( "approach", &"AUTOSAVE_AUTOSAVE", " ", 1 );
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

    foreach ( var_21 in level._ID50956 )
    {
        var_21 _ID42411::_ID23510();

        foreach ( var_23 in var_21._ID23512 )
            var_23 setmode( "auto_nonai" );
    }

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
    var_26 = gettime();
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
    var_27 = getentarray( "second_tower_guard", "script_noteworthy" );
    _ID42237::_ID3350( var_27, maps\gulag_code::_ID50170 );
    wait 4;
    var_28 = getent( "car_blows_up", "script_noteworthy" );
    radiusdamage( var_28._ID740, 800, 5000, 5000 );
    var_29 = getentarray( "tarp_puller_spawner", "targetname" );
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
    level._ID53563 setsurfacetype( "flesh" );
}

_ID47975()
{
    _ID42407::_ID3343( "goal_delete_spawner", maps\gulag_code::_ID46753 );
    thread maps\gulag_code::_ID48680();
    var_0 = getent( "heli_intro_player", "targetname" );
    var_1 = _ID42237::_ID16638( "start_player_perimeter", "script_noteworthy" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    maps\gulag_code::_ID51479( var_0._ID1191, var_1._ID1193 );
    var_0._ID1191 = var_1._ID1193;
    thread maps\gulag_code::_ID45347();
    level._ID794 setplayerangles( ( 0, -163, 0 ) );
    var_2 = 24;
    level._ID52066 vehicle_setspeedimmediate( var_2, var_2 / 4, var_2 / 4 );
    level._ID49614 = 3;
    level._ID52066 thread maps\gulag_code::_ID52338();
    maps\gulag_code::_ID54648( 3 );
}

_ID49189()
{
    _ID42475::_ID34575( "start_f15_checkpoint" );
    _ID42407::_ID3343( "goal_delete_spawner", maps\gulag_code::_ID46753 );
    maps\gulag_lighting::_ID46054( "gulag_flight" );
    var_0 = getent( "heli_intro_player", "targetname" );
    var_1 = _ID42237::_ID16638( "f15_attack_start", "script_noteworthy" );
    var_0._ID740 = var_1._ID740;
    var_0._ID65 = var_1._ID65;
    maps\gulag_code::_ID51479( var_0._ID1191, var_1._ID1193 );
    var_0._ID1191 = var_1._ID1193;
    thread maps\gulag_code::_ID45347();
    var_2 = 40;
    level._ID52066 vehicle_setspeedimmediate( var_2, var_2 / 4, var_2 / 4 );
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
    enablepg( "hide_interior_portal_group", 0 );
    thread maps\gulag_code::_ID53175();
    _ID42237::_ID14402( "gulag_perimeter" );
    thread maps\gulag_code::_ID43698();
    _ID42237::_ID14413( "f15_gulag_explosion" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID14402( "kill_guns" );
    wait 2;
    thread _ID42407::_ID14403( "last_tower_event", 3 );
    _ID42407::_ID4422( "gulag_perimeter" );
    level._ID794 giveweapon( "m4m203_reflex_arctic" );

    if ( isdefined( level._ID43135.tactical_greenberet ) && level._ID43135.tactical_greenberet == 1 )
    {
        level._ID43135.greenberet_previousweapons["m4m203_reflex_arctic"]["ammoClip"] = 30;
        level._ID43135.greenberet_previousweapons["m4m203_reflex_arctic"]["ammoStock"] = 600;
        level._ID43135.greenberet_previousweapons["m4m203_reflex_arctic"]["akimbo"] = 0;
    }

    setomnvar( "ui_expireHUD", 1 );
    level notify( "stop_tarp_idle" );
    level notify( "stop_gulag_drones" );
    thread maps\gulag_code::_ID47384();
    wait 3.5;
    thread maps\gulag_code::_ID47067();
    _func_31b( 1 );
    clearallcorpses();
    wait 2.9;
    maps\gulag_code::_ID51859( "Hargrove, get the navy to cease fire immediately! That was too close!" );
    _ID42237::_ID14402( "kill_heli_light_fx" );
    thread maps\gulag_code::_ID43126();
    thread maps\gulag_code::_ID44852();
    _ID42237::_ID24938( 11, ::setsaveddvar, "g_friendlyNameDist", 15000 );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID10226( 41, _ID42407::_ID4918, "allies" );
    thread maps\gulag_code::_ID43956();
    maps\gulag_code::_ID51859( "The navy doesn't care about one man in a Gulag. I'll try to buy you some time but I can't promise much." );
    thread maps\gulag_code::_ID53686();
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
        var_2 _ID42407::_ID26354( 200 );

    level._ID52066 waittill( "nearing_landing" );
    wait 0.3;
    setsaveddvar( "ammoCounterHide", 1 );
    level._ID794 disableweapons( 0, 500, 0.2 );
    _ID42475::_ID34575( "start_helicopter_landing" );
    thread _ID42407::_ID28864( "gulag_lbp1_touchdown" );
    thread _ID42407::_ID28864( "gulag_lbp1_deployed" );
    thread _ID42407::_ID28864( "gulag_lbp3_snipercover" );
    thread _ID42407::_ID28864( "gulag_lbp1_solidcopy" );
    level._ID53563 _ID42407::_ID32315( "cyan" );
    level._ID53563 stoplookat();
    thread maps\gulag_code::_ID51013();
    level._ID52066 waittill( "stable_for_unlink" );
    level._ID794 setactionslot( 1, "nightvision" );
    level._ID794 giveweapon( "claymore" );
    level._ID794 setactionslot( 4, "weapon", "claymore" );
    level._ID794 givemaxammo( "claymore" );
    setsaveddvar( "ammoCounterHide", 0 );
    level._ID794 thread _ID42407::_ID46142( "disable_exterior_fx" );
    level._ID794 playersetgroundreferenceent( undefined );
    missile_deleteattractor( level._ID27617 );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID513 = 1;
        var_2 _ID42407::_ID26354( 200 );
    }

    var_6 = level._ID52235 gettagangles( "tag_aim" );
    var_6 = ( 0, var_6[1], 0 );
    var_7 = anglestoforward( var_6 );
    var_7 *= 32;
    var_8 = _ID42237::_ID35164();
    var_8._ID740 = level._ID52235._ID740;
    var_8._ID65 = level._ID52235._ID65;
    level._ID52235 linkto( var_8 );
    var_9 = 0.2;
    var_8 moveto( var_8._ID740 + var_7 + ( 0, 0, 4 ), var_9, 0.1, 0.1 );
    wait(var_9);
    level._ID52235 delete();
    var_8 delete();
    maps\gulag_code::_ID54035();
    level._ID794 allowprone( 1 );
    level._ID794 allowcrouch( 1 );
    level._ID794 _meth_830f( 1 );
    level._ID794 allowjump( 1 );
    _ID42407::_ID4422( "player_lands" );
    level._ID53563 _ID42407::_ID14803( "m4m203_reflex_arctic", "primary" );
    _ID42237::_ID14402( "access_control_room" );
    level._ID52066 setanim( level._ID30895["littlebird"]["player_additive"] );
}

_ID35701()
{
    _ID42475::_ID34575( "start_control_room_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_entrance" );
    var_0 = _ID42237::_ID16638( "ghost_spawner_struct", "targetname" );
    var_1 = getent( "ghost", "script_noteworthy" );
    var_1._ID31152 = undefined;
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    var_2 = getentarray( "start_controlroom_spawner", "targetname" );
    var_2 = maps\gulag_code::_ID48805( var_2 );
    var_2[var_2.size] = var_1;
    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
    _func_31b( 1 );
    _func_31c( 2 );
    var_3 = getent( "start_controlroom_player", "targetname" );
    level._ID794 setorigin( var_3._ID740 );
    level._ID794 setplayerangles( var_3._ID65 );
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
    thread _ID54033();

    if ( isalive( level._ID47319 ) )
    {
        level._ID9488[level._ID47319 _ID42271::_ID16018()]["l"] = "l0";
        level._ID47319 _ID42407::_ID32315( "l" );
    }

    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID25527 ) )
            var_2 _ID42407::_ID26353();
    }

    _ID42407::_ID1892( "axis", maps\gulag_code::_ID43566 );
    _ID42407::_ID1892( "allies", _ID42407::_ID12467 );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID4867 = 1;
        var_2._ID86 = 1;
    }

    _ID42237::_ID14421( "last_outside_guys", "player_moves_into_gulag" );
    level._ID53563 _ID42407::_ID32315( "cyan" );

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
        _ID42407::_ID1805( "outside_gulag_postup" );

    _ID42237::_ID14413( "player_moves_into_gulag" );
    maps\gulag_code::_ID46832();
    _func_31b( 3 );
    _func_31b( 4 );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
        var_2._ID513 = 1;

    var_8 = getent( "friendly_reinforcement_trigger", "targetname" );
    var_8 thread maps\gulag_code::_ID46588();
    var_9 = getent( "purple_friendlies_priority_volume", "targetname" );
    var_0 = getaiarray( "allies" );
    var_0 = _ID42407::_ID29537( var_0 );
    var_10 = 0;

    foreach ( var_12, var_2 in var_0 )
    {
        if ( var_2 istouching( var_9 ) )
        {
            var_10++;
            var_2 _ID42407::_ID32315( "p" );
            var_0[var_12] = undefined;
        }
    }

    var_0 = _ID42407::_ID29506( var_0 );

    for ( var_13 = var_10; var_13 < 2; var_13++ )
    {
        if ( !isalive( var_0[var_13] ) )
            continue;

        var_0[var_13] _ID42407::_ID32315( "p" );
        var_0[var_13] = undefined;
    }

    var_0 = _ID42407::_ID29506( var_0 );

    foreach ( var_2 in var_0 )
        var_2 _ID42407::_ID32315( "o" );

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
        _ID42407::_ID1805( "pre_controlroom_postup" );

    charge_in_gulag();
    thread disable_turn_in_gulag_stair();
    thread enable_turn_in_gulag_stair();
    _ID42237::_ID14413( "soap_finishes_talking_about_going_in" );
    var_9 = getent( "control_room_hallway_volume", "targetname" );
    var_9 _ID42407::_ID41163();

    if ( isalive( level._ID47319 ) )
    {
        level._ID47319 _ID42407::_ID10871();
        jump loc_1EE6
    }

    if ( !_ID42237::_ID14385( "player_nears_cell_door1" ) )
    {
        _ID42407::_ID1805( "control_room_postup" );
        var_16 = getnode( "h2_ghost_node", "targetname" );
        level._ID47319 _ID42407::_ID32334( var_16 );
    }

    _ID42237::_ID14413( "disable_exterior_fx" );
    maps\gulag_code::_ID44699( "gulag_gst_controlroom" );
    thread maps\gulag_code::_ID52110();
    _ID42237::_ID14413( "control_room" );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
        var_2._ID513 = 0;

    thread maps\gulag_code::_ID50385();
    var_0 = getaiarray( "allies" );
    var_19 = [];
    var_19[0] = level._ID53563;
    var_19[1] = level._ID47319;
    var_0 = _ID42237::_ID15566( level._ID794._ID740, var_0, var_19 );
    var_20 = 2;

    for ( var_13 = 0; var_13 < var_20; var_13++ )
    {
        var_2 = var_0[var_13];

        if ( !isalive( var_2 ) )
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

    if ( isalive( level._ID47319 ) )
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
    level._ID35473["a"] _ID42407::_ID10226( 2.5, maps\gulag_code::_ID50694, getent( "spotlight_volume_a1", "targetname" ) );
    level._ID35473["b"] _ID42407::_ID10226( 2.5, maps\gulag_code::_ID50694, getent( "spotlight_volume_b1", "targetname" ) );
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
    var_21 = getent( "soap_securitydoor", "targetname" );
    var_22 = distance( level._ID53563._ID740, var_21._ID740 );

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

    foreach ( var_0 in getaiarray( "allies" ) )
    {
        if ( isalive( var_0 ) )
            var_0 _meth_8170( 0 );
    }

    _ID42407::_ID1805( "pre_armory" );
    thread maps\gulag_code::_ID43502();
    wait 2.3;
    _ID42237::_ID14402( "pre_armory_open" );
    _ID42407::_ID1804( "pre_armory" );
    _ID42237::_ID14413( "player_approaches_armory" );
    var_0 = getaiarray( "axis" );
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
    var_0 = getentarray( "start_armory_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    _func_31b( 1 );
    _func_31c( 2 );
    _func_31b( 3 );
    _func_31b( 4 );
    var_1 = getent( "start_armory_player", "targetname" );
    level._ID794 setorigin( var_1._ID740 );
    level._ID794 setplayerangles( var_1._ID65 );
    _ID42407::_ID50742( "0.5 12 2 2" );
    wait 0.05;
    level._ID53563 _ID42407::_ID32315( "cyan" );
}

_ID49089()
{
    _ID42237::_ID14402( "gulag_enable_cellblock_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID10926();
        var_2 _ID42407::_ID10226( 3, _ID42407::_ID12477 );
    }

    thread _ID42407::_ID4917( "axis" );
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "player_in_armory" );
    _func_31c( 3 );
    _func_31b( 5 );
    level notify( "cancel_surprise" );
    level notify( "stop_exterior_alarm" );

    foreach ( var_5 in level._ID35473 )
        var_5 notify( "stop_searching" );

    level._ID50844 = 0;
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID52548 );
    thread maps\gulag_code::_ID52703( 4000 );
    _ID42237::_ID14413( "playing_armory_anim" );
    _ID42407::_ID10226( 7.5, ::_ID48522 );
    level waittill( "door_open" );
    _ID42237::_ID14402( "open_cell_door_weapons" );
    var_7 = getaiarray( "allies" );

    foreach ( var_2 in var_7 )
    {
        var_2._ID4867 = 10;
        var_2 _ID42407::_ID10973();
    }

    _ID42407::_ID32411( 0.85 );
    _ID42407::_ID1805( "armory_attacked_postup" );
    level._ID35473["a"] thread maps\gulag_code::_ID50694( getent( "spotlight_volume_a2", "targetname" ) );
    level._ID35473["b"] thread maps\gulag_code::_ID50694( getent( "spotlight_volume_b2", "targetname" ) );
    level waittill( "wave1_start" );
    thread maps\gulag_code::_ID50041();
    waittillframeend;
    wait 4;

    foreach ( var_2 in var_7 )
        var_2 _meth_8170( 1 );

    maps\gulag_code::_ID52132();
    var_12 = gettime();
    _ID42407::_ID32411( 0 );
    level._ID794._ID512 = 1;
    _ID42407::_ID4424( "armory_fight", 10 );
    _ID42407::_ID40847( var_12, 3 );
    wait 0.5;
    _ID42298::_ID39669();
    level._ID794._ID512 = 0;
    thread _ID42407::_ID28864( "gulag_gst_gotmoretangos" );
    var_7 = getaiarray( "allies" );

    foreach ( var_2 in var_7 )
        var_2._ID4867 = 0;

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
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
        var_2 _meth_8170( 0 );

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
    var_19 = getent( "run_from_armory_kill_volume", "targetname" );
    var_0 = var_19 _ID42407::_ID15547( "axis" );

    foreach ( var_2 in var_0 )
        var_2 thread maps\gulag_code::_ID49760();

    _ID42407::_ID29534( "axis", maps\gulag_code::_ID52548 );
    var_0 = getaiarray( "axis" );
    thread maps\gulag_code::_ID46539( var_0 );
    _ID42298::_ID39669();
    maps\gulag_code::_ID53146();
    thread maps\gulag_code::_ID48873();
    level notify( "stop_cellblock_respawn" );
    thread maps\gulag_code::_ID49713();
    var_7 = getaiarray( "allies" );

    foreach ( var_2 in var_7 )
    {
        var_2._ID4867 = 1;
        var_2 _ID42407::_ID12538();
    }

    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_gogogo1" );
    level._ID44260 = _ID42407::_ID29506( level._ID44260 );

    foreach ( var_2 in level._ID44260 )
        var_2 _ID42407::_ID12477();

    _ID42407::_ID4918( "axis" );
    _ID42237::_ID14413( "use_your_riotshield" );
    level.cellblock_spawning_door_coll disconnectpaths();
    level.cellblock_spawning_door_coll solid();
    level.cellblock_spawning_door show();
    level.cellblock_spawning_door solid();

    if ( level._ID794 getcurrentweapon() == "riotshield" )
    {
        _ID42237::_ID14388( "friendlies_use_riotshield" );
        level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_usesheild" );
        var_0 = getaiarray( "allies" );

        foreach ( var_2 in var_0 )
            var_2 maps\gulag_code::_ID43606();
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
    var_7 = getaiarray( "allies" );

    foreach ( var_2 in var_7 )
        var_2 _ID42407::_ID12538();

    thread _ID49069();
}

_ID48522()
{
    if ( !isdefined( level._ID51159 ) || level._ID51159.size < 2 )
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
    var_0 = getentarray( "start_rappel_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] _ID42407::_ID1947( _ID42407::_ID29701 );

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    _func_31b( 1 );
    _func_31c( 2 );
    _func_31b( 4 );
    _func_31b( 5 );
    var_2 = getent( "start_rappel_player", "targetname" );
    level._ID794 setorigin( var_2._ID740 );
    level._ID794 setplayerangles( var_2._ID65 );
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
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID4867 = 1;
        var_2._ID86 = 1;
    }

    maps\gulag_code::_ID53804();
    level._ID53563 thread maps\gulag_code::_ID47810();
    _ID42237::_ID14413( "cellblock_player_starts_rappel" );
    enablepg( "hide_interior_portal_group", 1 );
    thread maps\gulag_aud::_ID54392();
    var_4 = getent( "gulag_hallway_destructibles", "script_noteworthy" );
    var_4 _ID42407::_ID1786();
    var_4 _ID42407::_ID1794();
    wait 5;
    _ID42407::_ID1805( "cellblock_exit_postup" );
    thread _ID53128();
    thread maps\gulag_code::_ID51318();
    var_5 = getentarray( "friendly_cellhall_spawner", "targetname" );
    _ID42407::_ID3342( var_5, _ID42407::_ID29701 );
    _ID42237::_ID3350( var_5, _ID42407::_ID35014 );
    _ID42237::_ID14413( "leaving_cellblock" );
    _ID42407::_ID1805( "friendly_nvg_hallway_trigger" );
    maps\gulag_lighting::_ID45391( "exploding_wall" );
    level._ID794 _ID42407::_ID10226( 0.8, _ID42407::_ID11085, "nvg", undefined, undefined, undefined, undefined, 15 );
    _ID42237::_ID14413( "nvg_zone" );
    var_6 = getentarray( "hallway_runner_spawner", "script_noteworthy" );
    var_7 = getnodearray( "nvg_ambush_node", "targetname" );
    var_7 = _ID42237::_ID3320( var_7 );
    _ID42237::_ID3350( var_7, maps\gulag_code::_ID53952 );

    foreach ( var_10, var_9 in var_6 )
        var_9._ID740 = var_7[var_10]._ID740;

    _ID42407::_ID1805( "friendly_nvg_cell_hall_postup" );
    thread maps\gulag_code::_ID46777();
    _ID42407::_ID1985( _ID42237::_ID14413, "lets_sweep_the_nvg_cells" );
    _ID42407::_ID1890( maps\gulag_code::_ID46212 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "nvg_leave_cellarea" );
    var_11 = getent( "h2_explosion_trigger", "targetname" );
    var_11 thread maps\gulag_code::_ID54713();
    var_11 waittill( "trigger" );
    _ID42407::_ID10226( 7.2, maps\gulag_code::_ID51291, "moving_chain_hook_cellblock2" );
    disableforcedsunshadows();
    _ID42234::_ID13611( "hall_attack_explosion" );
    _ID42475::_ID34575( "start_hallway_attack" );
    level._ID794 _ID42237::_ID10192( 0.5, ::shellshock, "gulag_attack", 5, 0 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    var_12 = getent( "explosion_ref", "targetname" );
    var_13 = level._ID794 getplayerangles();
    var_14 = angleclamp180( var_13[1] - var_12._ID65[1] );
    var_15 = "front";

    if ( var_14 > 45 && var_14 <= 135 )
        var_15 = "right";
    else if ( var_14 > 135 || var_14 <= -135 )
        var_15 = "back";
    else if ( var_14 > -135 && var_14 <= -45 )
        var_15 = "left";

    var_16 = "explosion_" + var_15;
    var_17 = getent( "explosion_scripted_node", "targetname" );
    var_18 = var_17._ID740 - level._ID794._ID740;
    var_18 = ( cos( var_17._ID65[1] ), sin( var_17._ID65[1] ), 0 ) * length2d( var_18 );
    var_17._ID740 = var_17._ID740 - var_18;
    level._ID794 enabledeathshield( 1 );
    level._ID794 disableweapons( 1 );
    level._ID794 setstance( "stand" );
    level._ID794 freezecontrols( 1 );
    var_19 = _ID42407::_ID35028( "worldbody" );
    var_19._ID740 = level._ID794 getorigin();
    var_19._ID65 = var_13;

    if ( level._ID794 _meth_85d1() )
        var_19 hide();

    level._ID794 playerlinktoabsolute( var_19, "tag_player" );
    var_20 = spawn( "script_model", level._ID794._ID740 );
    var_20._ID65 = ( 0, var_13[1], var_13[2] );
    var_20 setmodel( "tag_origin" );
    var_19 linkto( var_20, "tag_origin" );
    var_21 = _ID42407::_ID35028( "worldbody" );
    var_21 hide();
    var_17 _ID42259::_ID3018( var_21, var_16 );
    waittillframeend;
    var_22 = var_21 gettagorigin( "tag_player" );
    var_21 delete();
    earthquake( 0.3, 3, level._ID794._ID740, 5000 );
    level._ID794 _meth_80b5( "damage_heavy" );
    level._ID794 _ID42237::_ID10192( 2, ::_meth_80b6, "damage_heavy" );
    var_23 = getaiarray( "axis" );

    foreach ( var_2 in var_23 )
    {
        if ( distance( level._ID794._ID740, var_2._ID740 ) < 350 )
            var_2 _ID42237::_ID10192( 0.5, ::kill );
    }

    var_26 = getaiarray( "allies" );

    foreach ( var_2 in var_26 )
    {
        var_28 = randomfloatrange( 2.5, 3.5 );
        var_2 thread _ID42407::_ID14510( var_28 );
    }

    _ID42407::_ID10226( 1.5, _ID42234::_ID13611, "hall_attack" );
    level thread _ID42407::_ID25088( "hall_attack", 1.5 );
    thread maps\gulag_code::_ID44373();
    _ID42237::_ID24938( 0.5, ::clearallcorpses );
    var_30 = getanimlength( var_19 _ID42407::_ID16120( var_16 ) );
    var_20 thread _ID42259::_ID3111( var_19, var_16 );
    var_20 moveto( var_22, 1 );
    wait(var_30);
    level notify( "stop_hallway_attack" );
    level._ID794 unlink();
    level._ID794 freezecontrols( 0 );
    var_19 delete();
    level._ID794 enableweapons();
    level._ID794 enabledeathshield( 0 );
    setsaveddvar( "compass", 1 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
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
    _func_31b( 1 );
    _func_31c( 2 );
    _func_31b( 5 );
    _func_31b( 6 );
    var_0 = getentarray( "friendly_tunnel_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] _ID42407::_ID1947( _ID42407::_ID29701 );

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_2 = _ID42237::_ID16638( "start_tunnel_player", "targetname" );
    level._ID794 setorigin( var_2._ID740 );
    level._ID794 setplayerangles( var_2._ID65 );
}

_ID54650()
{
    _ID42237::_ID14402( "gulag_enable_interior_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    enablepg( "hide_interior_portal_group", 1 );
    _ID42407::_ID1805( "pipe_tunnel_fight_nodes" );
    thread maps\gulag_code::_ID44337();
    _ID42237::_ID14413( "go_to_pipearea_postup" );
    thread maps\gulag_code::_ID54137();
    wait 0.5;
    var_0 = getent( "tunnel_pre_hallway_volume", "targetname" );
    var_0 _ID42407::_ID1985( _ID42407::_ID41163 );
    _ID42407::_ID1985( _ID42407::_ID1687, 15 );
    level _ID42407::_ID1985( _ID42407::_ID41116, "flashed_room" );
    _ID42407::_ID11232();
    var_1 = getaiarray( "allies" );
    _ID42407::_ID53914( var_1, 1 );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_gogogo1" );
    wait 0.15;
    level._ID53563 _ID42407::_ID32315( "cyan" );
    _ID42407::_ID1805( "pipe_tunnel_postup" );
    var_2 = getaiarray( "allies" );

    foreach ( var_4 in var_2 )
        var_4 thread maps\gulag_code::_ID48200();

    _ID42407::_ID4918( "axis" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID14413( "advance_through_pipearea" );
    var_1 = _ID42407::_ID29506( var_1 );
    _ID42407::_ID53914( var_1, 0 );
    enableforcednosunshadows();
    level notify( "stop_music" );
    _ID42237::_ID14413( "friendlies_follow_pipe_area" );
    level._ID53563 _ID42407::_ID32315( "green" );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_gogogo1" );
    _ID42407::_ID1805( "breach_bathroom_postup" );
    _ID42237::_ID14413( "nearing_bathroom_breach" );
    var_2 = getaiarray( "allies" );

    foreach ( var_4 in var_2 )
        var_4._ID381 = 1;

    thread _ID42407::_ID28864( "gulag_gst_30ftonleft" );
    thread maps\gulag_aud::pipe_room_breach_dialog_flag();
}

_ID47976()
{
    _ID42475::_ID34575( "start_bathroom_checkpoint" );
    maps\gulag_lighting::_ID46054( "gulag_showers" );
    _func_31b( 1 );
    _func_31c( 2 );
    _func_31b( 5 );
    _func_31b( 6 );
    var_0 = getentarray( "friendly_bathroom_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    if ( level._ID35897 == "bathroom" )
    {
        for ( var_1 = 1; var_1 < var_0.size; var_1++ )
            var_0[var_1] _ID42407::_ID1947( _ID42407::_ID29701 );
    }

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_2 = getent( "start_bathroom_player", "targetname" );
    level._ID794 setorigin( var_2._ID740 );
    level._ID794 setplayerangles( var_2._ID65 );
    _ID42407::_ID1805( "breach_bathroom_postup" );
}

_ID46018()
{
    var_0 = getent( "player_rappels_from_bathroom", "script_noteworthy" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "player_exited_bathroom" );
    maps\gulag_code::_ID48867();
    maps\gulag_lighting::_ID45391( "bathroom_out" );
}

_ID50660()
{
    _ID42237::_ID14402( "gulag_enable_interior_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    enablepg( "hide_interior_portal_group", 1 );
    _ID42237::_ID14413( "leaving_pipe_area" );
    var_0 = getentarray( "flickering_model_off", "script_noteworthy" );
    var_1 = getentarray( "flickering_model_on", "script_noteworthy" );
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _ID42237::_ID3296( var_0, var_1 );

    foreach ( var_6 in var_4 )
    {
        if ( isdefined( var_6._ID31388 ) )
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

    var_3 thread maps\gulag_code::_ID51065( var_2 );
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID50040 );
    _ID42407::_ID1892( "axis", maps\gulag_code::_ID45049 );
    level notify( "activate_shower_breach" );
    level waittill( "breaching" );
    _ID42407::_ID10226( 0.05, _ID42407::_ID29534, "axis", maps\gulag_code::_ID45049 );
    var_8 = getaiarray( "allies" );

    foreach ( var_10 in var_8 )
    {
        var_10._ID51367 = var_10._ID37018;
        var_10._ID43561 = var_10._ID219;
        var_10._ID37018 = 2000;
        var_10._ID219 = 6000;
    }

    thread maps\gulag_aud::_ID52322();
    var_12 = getaiarray( "axis" );

    foreach ( var_14 in var_12 )
    {
        if ( !isdefined( var_14._ID35181 ) || var_14._ID35181 != gettime() )
            var_14 thread maps\gulag_code::_ID49760();
    }

    var_16 = getent( "gulag_shower_destructibles", "script_noteworthy" );
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
    thread _ID46018();
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
    var_18 = getent( "riot_shield_detector", "targetname" );
    var_18 thread maps\gulag_code::_ID49301();
    _ID42407::_ID1985( _ID42237::_ID14413, "bathroom_room2_enemies_dead" );
    _ID42407::_ID1985( _ID42237::_ID14413, "leaving_bathroom_vol2" );
    _ID42407::_ID11232();
    thread maps\gulag_code::_ID52257();
    _ID42407::_ID4422( "bathroom_cleared" );
    _ID42237::_ID14413( "leaving_bathroom_vol2" );
    thread maps\gulag_code::_ID51291( "moving_chain_hook_sewers" );
    level._ID53563 thread _ID42407::_ID10805( "gulag_cmt_holeinfloor" );
    level._ID50577 = getdvarfloat( "ai_pathNegotiationOverlapCost" );
    setsaveddvar( "ai_pathNegotiationOverlapCost", 5000 );
    var_19 = getaiarray( "allies" );
    var_19 = _ID42237::_ID3321( var_19, level._ID53563 );

    if ( var_19.size > 1 )
    {
        for ( var_20 = 1; var_20 < var_19.size; var_20++ )
            var_19[var_20] _ID42407::_ID10871();
    }

    _ID42407::_ID1805( "cistern_friendly_trigger" );
    level._ID53563 _ID42407::_ID10226( 2.5, _ID42407::_ID10805, "gulag_cmt_gogogo1" );
    var_21 = getaiarray( "allies" );

    foreach ( var_14 in var_21 )
        var_14._ID86 = 0;

    thread maps\gulag_code::_ID48606();
    _ID42237::_ID14413( "player_exited_bathroom" );
    _ID42407::_ID1892( "allies", _ID42407::_ID41628, "rescue_begins" );
    var_21 = getaiarray( "allies" );

    foreach ( var_10 in var_21 )
    {
        if ( isdefined( var_10._ID51367 ) )
            var_10._ID37018 = var_10._ID51367;

        if ( isdefined( var_10._ID43561 ) )
            var_10._ID219 = var_10._ID43561;
    }

    _ID42237::_ID3350( var_21, _ID42407::_ID41628, "rescue_begins" );
    level._ID794 thread _ID42407::_ID41628( "rescue_begins" );
    _ID42407::_ID29534( "axis", maps\gulag_code::_ID50040 );
    _ID42237::_ID30398( "slide_trigger", maps\gulag_code::_ID46608 );
    var_21 = getaiarray( "bad_guys" );
    _ID42237::_ID3350( var_21, maps\gulag_code::_ID49760 );
    _ID42407::_ID4422( "reached_sewers" );
    thread _ID46655();
    _ID42407::_ID1985( _ID42237::_ID14413, "friendly_rappels_from_bathroom" );
    level._ID53563 _ID42407::_ID1890( _ID42407::_ID32315, "red" );
    _ID42407::_ID1890( _ID42407::_ID1805, "breach_rescue_trigger" );
    thread _ID42407::_ID11231();
}

_ID49040()
{
    physicsexplosionsphere( level._ID794._ID740, 700, 300, 1 );
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
    _func_31b( 1 );
    _func_31c( 2 );
    _func_31b( 5 );
    _func_31b( 6 );
    var_0 = getentarray( "start_rescue_spawner", "targetname" );
    var_0 = maps\gulag_code::_ID48805( var_0 );

    for ( var_1 = 1; var_1 < var_0.size; var_1++ )
        var_0[var_1] _ID42407::_ID1947( _ID42407::_ID22746 );

    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    var_2 = getent( "start_rescue_player", "targetname" );
    level._ID794 setorigin( var_2._ID740 );
    level._ID794 setplayerangles( var_2._ID65 );
    _ID42407::_ID1805( "breach_rescue_trigger" );
    _ID42237::_ID14402( "player_near_tv" );
}

_ID48388()
{
    _ID42237::_ID14402( "gulag_enable_shower_fx_vol" );
    _ID42237::_ID14388( "gulag_enable_exterior_fx_vol" );
    enablepg( "hide_interior_portal_group", 1 );
    level._ID1426["breach_door"] = level._ID1426["breach_price"];
    _ID42237::_ID14413( "player_approaches_rescue_breach" );

    if ( isdefined( level._ID50577 ) )
    {
        setsaveddvar( "ai_pathNegotiationOverlapCost", level._ID50577 );
        level._ID50577 = undefined;
    }

    level._ID34365 = 1;
    level._ID48534 = 1;
    _ID42407::_ID29534( "allies", _ID42407::_ID12467 );
    _ID42407::_ID29534( "allies", _ID42407::_ID41628 );
    var_0 = getaiarray( "bad_guys" );
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
    var_0 = getaiarray( "allies" );

    for (;;)
    {
        var_1 waittill( "trigger" );

        if ( !level._ID794 _ID42367::_ID6021() )
            break;
    }

    setsaveddvar( "g_friendlynamedist", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
    level._ID11635 = 0;
    var_7 = getentarray( "ending_room_spawner", "targetname" );
    waitframe;
    level._ID794 dontinterpolate();
    var_4._ID740 = level._ID794._ID740;
    var_4._ID65 = level._ID794._ID65;
    var_4 linkto( var_3 );
    level._ID794 playerlinkto( var_4, "tag_origin", 1, 0, 0, 90, 90, 0 );
    var_3._ID740 = level._ID6032[4]._ID22142._ID740;
    var_3._ID65 = level._ID6032[4]._ID22142._ID65;
    thread _ID52182( var_2, var_0 );

    if ( level._ID35897 == "ending" )
        wait 0.05;

    disableforcedsunshadows();
    setsaveddvar( "ai_friendlysuppression", 0 );
    setsaveddvar( "ai_friendlyfireblockduration", 0 );
    _ID42407::_ID10226( 0.05, _ID42234::_ID13611, "rock_glass" );
    var_8 = getent( "trash_sound", "script_noteworthy" );
    var_8 thread maps\gulag_ending_code::_ID48991();
    thread _ID42407::_ID32188( "gulag_exit" );
    level waittill( "breaching" );
    _ID42407::_ID10226( 2.5, maps\gulag_code::_ID51291, "moving_chain_hook_pricescell" );
    _ID42407::_ID10226( 2.5, maps\gulag_code::_ID51304, "escape_hanging_lamp", "escape_hanging_light", 1 );
    maps\gulag_code::_ID50315( "emergency_rotating light_orange", "emergency_light_gulag" );
    thread maps\gulag_aud::_ID46776();
    level._ID794 setstance( "stand" );
    level._ID794 enableinvulnerability();
    level._ID794 disableweaponswitch();
    level._ID794 disableoffhandweapons();
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    level._ID794 allowjump( 0 );
    level._ID794._ID86 = 0;
    level._ID794._ID512 = 1;
    level._ID794 _ID42407::_ID10226( 15, _ID42298::_ID39638 );
    var_9 = getent( "price_spawner", "targetname" );
    var_9 _ID42407::_ID35014();
    var_9 = getent( "price_choke_spawner", "targetname" );
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
    var_14 = spawnstruct();
    var_14._ID337 = var_3;
    var_14._ID409 = -38;
    var_14._ID893 = -24;
    var_14 _ID42407::_ID38694();
    var_15 = _ID42407::_ID35028( "player_rig" );
    var_15 hide();
    var_16 = _ID42407::_ID35028( "strangle_chain" );
    level._ID46553 = var_16;
    var_17 = [];
    var_17[var_17.size] = level._ID28543;
    var_17[var_17.size] = var_10;
    var_17[var_17.size] = var_15;
    var_17[var_17.size] = var_16;

    foreach ( var_19 in var_17 )
        var_19 linkto( var_3 );

    level._ID28544 = var_3;
    var_21 = level._ID28543 _ID42407::_ID16120( "price_breach" );
    var_22 = getanimlength( var_21 );
    var_23 = getnotetracktimes( var_21, "punch" );
    var_24 = 3.45;
    _ID42407::_ID10226( var_22 * var_23[0] - 2.8 + var_24, maps\gulag_ending_code::_ID45873, var_15 );
    var_12 _ID42259::_ID3016( var_17, "price_breach" );
    wait(var_24);
    thread maps\gulag_code::_ID53463();
    soundtime( "weapons_plr", 0 );
    level._ID28543 thread _ID42407::_ID27079( "scn_gulag_price_rescue_chain" );
    _ID42407::_ID10226( 3.45, _ID42237::_ID27077, "scn_gulag_price_rescue_punch", level._ID794 geteye() );
    _ID42407::_ID10226( 4.35, _ID42237::_ID27077, "scn_gulag_price_rescue_bodyfall", level._ID794 geteye() );
    var_25 = getent( "price_chair", "targetname" );
    thread maps\gulag_code::_ID48290( var_25, var_12 );
    var_12 _ID42259::_ID3099( var_17, "price_breach" );
    level._ID794 setmovespeedscale( 1 );
    var_26 = getaiarray( "axis" );

    foreach ( var_19 in var_26 )
    {
        if ( var_19 != var_10 )
            var_19 delete();
    }

    var_9 = getent( "endlog_soap_spawner", "targetname" );
    var_9._ID216 = 1;
    var_9 _ID42407::_ID35014();
    var_9 = getentarray( "endlog_redshirt_spawner", "targetname" )[0];
    var_9._ID216 = 1;
    var_9 _ID42407::_ID35014();
    var_29 = _ID42407::_ID35028( "1911" );
    var_17 = [];
    var_17[var_17.size] = level._ID28543;
    var_30 = level._ID28543 _ID42407::_ID16120( "price_rescue_intro" );
    var_22 = getanimlength( var_30 );
    var_3 _ID42407::_ID10226( var_22, maps\gulag_code::_ID43605 );
    var_17["player"] = var_15;
    var_17[var_17.size] = level._ID46875;
    var_17[var_17.size] = level._ID53563;
    var_17[var_17.size] = var_10;
    var_17[var_17.size] = var_16;
    var_17["gun"] = var_29;
    level._ID28543 unlink();
    var_12 thread _ID42259::_ID3099( var_17, "price_rescue" );
    thread _ID50411( var_10, var_12 );
    var_30 = level._ID53563 _ID42407::_ID16120( "price_rescue" );
    var_22 = getanimlength( var_30 );
    var_31 = 1.5;
    wait(var_22 - var_31);
    var_32 = getent( "pricecell_stagelight", "targetname" );
    var_32 thread _ID42407::_ID25088( "staging_off", 1 );
    maps\gulag_lighting::_ID45391( "ending_rappel" );
    level._ID53563 _ID42407::_ID14803( "m4_grunt", "primary" );
    setsaveddvar( "actionSlotsHide", 0 );
    level._ID28543 notify( "change_to_regular_weapon" );
    _ID42237::_ID14402( "escape_the_gulag" );
    var_29 delete();
    setsaveddvar( "g_friendlynamedist", 196 );
    thread _ID45109( var_31, var_13 );
    wait(var_31);
    var_15 hide();
    thread maps\gulag_code::_ID51304( "cafeteria_hanging_lamp", "cafeteria_hanging_light" );
}

_ID48835()
{
    self._ID46569 thread _ID42259::_ID3038( self, "price_rescue" );
}

_ID50411( var_0, var_1 )
{
    var_2 = var_0 _ID42407::_ID16120( "price_rescue" );
    var_3 = getanimlength( var_2 );
    wait(var_3);
    var_4 = var_1;
    var_4._ID740 = var_4._ID740 + ( 40, -45, 0 );
    var_0._ID9827 = ::_ID48835;
    var_0._ID46569 = var_4;
    var_0 kill();
}

_ID52182( var_0, var_1 )
{
    wait 0.1;
    var_0 notify( "trigger",  level._ID794  );
    wait 2.5;
    level notify( "kill_color_replacements" );
    level waittill( "sp_slowmo_breachanim_done" );
    var_2 = getaiarray( "allies" );

    foreach ( var_4 in var_2 )
    {
        if ( var_4 _ID42407::_ID20537() )
            continue;

        if ( isdefined( var_4._ID22746 ) )
            var_4 _ID42407::_ID36519();

        var_4 delete();
    }

    foreach ( var_4 in var_1 )
    {
        if ( !isalive( var_4 ) )
            continue;

        if ( isdefined( var_4._ID22746 ) )
            var_4 _ID42407::_ID36519();

        var_4 delete();
    }
}

_ID45109( var_0, var_1 )
{
    wait(var_0 + 0.5);
    level._ID794 enableweapons();
    var_2 = level._ID794 getweaponslistprimaries();

    foreach ( var_4 in var_2 )
    {
        if ( issubstr( var_4, "riot" ) )
            continue;

        if ( var_1 == var_4 )
        {
            level._ID794 switchtoweapon( var_4 );
            break;
        }
    }

    level._ID794 unlink();
    level._ID794 disableinvulnerability();
    level._ID794 enableweaponswitch();
    level._ID794 enableoffhandweapons();
    level._ID794 _meth_830f( 1 );
    level._ID794 allowjump( 1 );
    level._ID794 allowcrouch( 1 );
    level._ID794 allowprone( 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    var_6 = 1.7;
    var_7 = var_6 / 20;

    for ( var_8 = 0; var_8 <= 1; var_8 += var_7 )
    {
        level._ID794 setmovespeedscale( var_8 );
        wait 0.05;
    }
}

_ID43460()
{
    waitframe;

    if ( _ID42407::_ID20505() )
    {
        setsaveddvar( "ui_hidemap", 1 );
        wait 2;
        _ID42237::_ID14413( "display_introscreen_text" );
        wait 11.2;
    }
    else
        waitframe;

    objective_add( 1, "current", &"GULAG_FIND_POW", maps\gulag_code::_ID53212() );
    _func_194( 1, level._ID53563 );
    _ID42237::_ID14413( "stabilize" );
    objective_state( 1, "active" );
    objective_add( 2, "current", &"GULAG_INFILTRATE_THE_GULAG", ( 0, 0, 0 ) );
    objective_position( 2, 1 );

    switch ( level._ID35897 )
    {
        case "default":
        case "f15":
        case "unload":
        case "intro":
        case "approach":
            if ( !_ID42407::_ID20505() )
                setsaveddvar( "ui_hidemap", 1 );

            _ID42237::_ID14413( "player_lands" );
            setsaveddvar( "ui_hidemap", 0 );
            _ID42407::_ID25327( 2 );
            objective_add( 3, "current", &"GULAG_FOLLOW_SOAP", ( 0, 0, 0 ) );
            _func_1e9( 3 );
            _func_194( 3, level._ID53563 );
            objective_position( 3, 1 );
            _ID42237::_ID14413( "postup_outside_gulag" );
            _ID42407::_ID25327( 3 );
        case "control_room":
            _func_1e9( 1 );
            _ID42237::_ID14413( "cell_duty" );
            _ID42407::_ID29534( "allies", maps\gulag_code::_ID24832 );
        case "armory":
            objective_add( 4, "current", &"GULAG_CELL_DUTY", maps\gulag_code::_ID48658() );
            _func_194( 4, level._ID53563 );
            _func_1e9( 4 );
            objective_position( 4, 1 );
            _ID42237::_ID14413( "leaving_cellblock" );
            _ID42407::_ID25327( 4 );
            _func_1e9( 1 );
            _func_194( 1, level._ID53563 );
        case "rappel":
        case "tunnel":
        case "bathroom":
            _ID42237::_ID14413( "advance_through_pipearea" );
            var_0 = _ID42237::_ID16638( "hallway_obj_struct", "targetname" );
            objective_current( 1, var_0._ID740 );
            _ID42237::_ID14413( "nearing_bathroom_breach" );
            setsaveddvar( "compass", "0" );
            _ID42407::_ID4917( "axis" );
            musicstop( 3 );
            wait 4;
            level notify( "stop_objective_updating" );
            objective_add( 5, "current", &"GULAG_BREACH_THE_BATHROOM", maps\gulag_code::_ID49776() );
            _func_1e9( 5 );
            setsaveddvar( "compass", "1" );
            objective_position( 5, 1 );
            _ID42367::_ID25325( 5, 2 );
            maps\gulag_code::_ID53923();
            level waittill( "slowmo_breach_ending" );
            _ID42407::_ID25327( 5 );
            _func_1e9( 1 );
            _func_194( 1, level._ID53563 );
            _ID42237::_ID14413( "leaving_bathroom_vol2" );
            wait 2;
        case "rescue":
            _func_194( 1, level._ID53563 );
            _ID42237::_ID14413( "player_approaches_rescue_breach" );
            objective_state_nomessage( 1, "active" );
            objective_state( 5, "current" );
            _ID42367::_ID25325( 5, 3 );
            level waittill( "breaching" );
            _ID42237::_ID14413( "price_rescued" );
            _ID42237::_ID14413( "escape_the_gulag" );
            setsaveddvar( "compass", 1 );
            level._ID48534 = 0;
            _ID42407::_ID25327( 1 );
            objective_state_nomessage( 5, "done" );
        case "run":
        case "cafe":
        case "evac":
        case "ending":
            objective_add( 6, "current", &"GULAG_ESCAPE", ( 0, 0, 0 ) );
            _func_194( 6, level._ID53563 );
            _func_1e9( 6 );
            thread _ID50095();
            _ID42237::_ID14413( "exit_collapses" );
            wait 0.25;
            setsaveddvar( "compass", 0 );
            objective_current( 6, ( 0, 0, 0 ) );
            break;
    }

    endswitch( 16 )  case "bathroom" loc_43EC case "tunnel" loc_43EC case "rappel" loc_43EC case "armory" loc_439F case "control_room" loc_437F case "approach" loc_4309 case "intro" loc_4309 case "unload" loc_4309 case "f15" loc_4309 case "default" loc_4309 case "rescue" loc_44B6 case "ending" loc_452A case "evac" loc_452A case "cafe" loc_452A case "run" loc_452A default loc_458F
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

    setsaveddvar( "compass", "0" );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "hud_drawhud", 1 );

    if ( var_0 == "approach" )
        return;

    _ID42237::_ID14402( "player_heli_uses_modified_yaw" );
    maps\gulag_code::_ID54691();
    wait 0.05;
    var_1 = getent( "car_blows_up", "script_noteworthy" );
    radiusdamage( var_1._ID740, 800, 5000, 5000 );
    _ID42237::_ID14402( "approach_dialogue" );
    _ID42237::_ID14402( "slamraam_gets_players_attention" );
    _ID42237::_ID14402( "stab2_clear" );

    if ( var_0 == "unload" )
        return;

    if ( var_0 == "f15" )
        return;

    thread maps\gulag_code::_ID51013();
    setsaveddvar( "g_friendlyNameDist", 15000 );
    setsaveddvar( "compass", "1" );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "hud_drawhud", 1 );
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
        case "default":
        case "intro":
            var_0 = _ID42407::_ID24586( "mus_gulag_intro" );
            _ID42407::_ID24587( "mus_gulag_intro", 0 );
            wait(var_0);
        case "f15":
        case "unload":
        case "approach":
        case "control_room":
            var_0 = _ID42407::_ID24586( "mus_gulag_intro_repeatable" );
            _ID42407::_ID24577( "mus_gulag_intro_repeatable", var_0 );
            _ID42237::_ID14413( "start_armory_music" );
            level notify( "stop_music" );
            musicstop( 3 );
            wait 3;
        case "armory":
        case "rappel":
        case "tunnel":
            var_0 = _ID42407::_ID24586( "mus_gulag_armory" );
            _ID42407::_ID24577( "mus_gulag_armory", var_0 + 5 );
            _ID42237::_ID14413( "nearing_bathroom_breach" );
            level notify( "stop_music" );
            musicstop( 5 );
        case "bathroom":
            level waittill( "breaching" );
            wait 0.15;
            var_0 = _ID42407::_ID24586( "mus_gulag_showers" );
            _ID42407::_ID24577( "mus_gulag_showers", var_0 );
            _ID42237::_ID14413( "player_exited_bathroom" );
            level notify( "stop_music" );
            musicstop( 3.1 );
            wait 3.15;
            var_0 = _ID42407::_ID24586( "mus_gulag_sewer_loop" );
            _ID42407::_ID24577( "mus_gulag_sewer_loop", var_0 );
        case "rescue":
            _ID42237::_ID14413( "player_approaches_rescue_breach" );
            level notify( "stop_music" );
            musicstop( 5.5 );
            level waittill( "breaching" );
        case "run":
        case "cafe":
        case "ending":
            thread _ID42407::_ID24587( "mus_gulag_liftoff1of2", 0 );
        case "evac":
            _ID42237::_ID14413( "player_falls_down" );
            musicstop( 1 );
            _ID42237::_ID14413( "evac_begins" );
            thread _ID42407::_ID24587( "mus_gulag_liftoff2of2", 0 );
            break;
    }

    endswitch( 16 )  case "bathroom" loc_4925 case "tunnel" loc_48EF case "rappel" loc_48EF case "armory" loc_48EF case "control_room" loc_48B9 case "approach" loc_48B9 case "intro" loc_489D case "unload" loc_48B9 case "f15" loc_48B9 case "default" loc_489D case "rescue" loc_4986 case "ending" loc_49AA case "evac" loc_49B6 case "cafe" loc_49AA case "run" loc_49AA default loc_49E3
}

_ID50095()
{
    self endon( "exit_collapses" );
    var_0 = getent( "escape_refresh_objective", "targetname" );
    var_0 waittill( "trigger" );
    objective_current( 6, maps\gulag_code::_ID52773() );
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
    self setanim( var_0 );
}

charge_in_gulag()
{
    var_0 = getent( "entering_gulag_volume", "targetname" );
    var_1 = [];
    var_2 = 5;

    while ( var_1.size < var_2 )
    {
        if ( _func_2a5( var_0 ) )
            break;

        var_3 = getaiarray( "allies" );
        var_3 = _ID42407::_ID29506( var_3 );

        if ( var_3.size < var_2 )
            break;

        foreach ( var_5 in var_3 )
        {
            if ( var_5 istouching( var_0 ) && !_ID42407::_ID20542( var_1, var_5 ) )
                var_1[var_1.size] = var_5;
        }

        waittillframeend;
    }
}

disable_turn_in_gulag_stair()
{
    level endon( "cell_door1" );
    var_0 = getent( "no_turn_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );
        var_1 _ID42407::_ID10989();
    }
}

enable_turn_in_gulag_stair()
{
    level endon( "cell_door1" );
    var_0 = getent( "enable_turn_trigger", "targetname" );

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
    _ID42407::_ID52583( var_0, getentarray( "gulag_interior_fx_vol_group", "targetname" ) );
    var_0 = "transition_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_transition_fx_vol" );
    _ID42407::_ID52583( var_0, getentarray( "gulag_transition_fx_vol_group", "targetname" ) );
    var_0 = "exterior_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_exterior_fx_vol" );
    _ID42407::_ID52583( var_0, getentarray( "gulag_exterior_fx_vol_group", "targetname" ) );
    var_0 = "endlog_fx_vol";
    _ID42407::_ID53651( var_0, "enable_endlog_fx" );
    _ID42407::_ID52583( var_0, getent( "gulag_endlog_destructibles", "script_noteworthy" ) );
    var_0 = "shower_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_shower_fx_vol" );
    _ID42407::_ID52583( var_0, getentarray( "gulag_shower_fx_vol_group", "targetname" ) );
    var_0 = "cellblock_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_cellblock_fx_vol" );
    _ID42407::_ID52583( var_0, getentarray( "gulag_cellblock_fx_vol_group", "targetname" ) );
    var_0 = "tunnel_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_tunnel_fx_vol" );
    _ID42407::_ID52583( var_0, getentarray( "gulag_tunnel_fx_vol_group", "targetname" ) );
    var_0 = "ending_fx_vol";
    _ID42407::_ID53651( var_0, "gulag_enable_ending_fx_vol" );
    _ID42407::_ID52583( var_0, getentarray( "gulag_ending_fx_vol_group", "targetname" ) );
    _ID42407::_ID45871( undefined, "player_lands" );
    level notify( "fxvolume_grp_setup_done" );
}

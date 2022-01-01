// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\contingency_mission_select_cam::_ID50320();
        return;
    }

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\contingency_beautiful_corner::_ID616();
        return;
    }

    level._ID6720 = "delta";
    level._ID54236 = 0;
    setsaveddvar( "sm_sunShadowScale", 0.5 );
    setsaveddvar( "r_lightGridEnableTweaks", 1 );
    setsaveddvar( "r_lightGridIntensity", 1.24 );
    setsaveddvar( "r_lightGridContrast", 0 );
    precachemodel( "h2_foliage_contingency_pine_snow_lg_c_animated" );
    level._ID45903 = 400;
    level._ID54069 = 1500;
    level._ID10115 = 7200;
    level._ID47460 = 62500;
    level._ID8754 = 1;
    level._ID3650 = 7000;
    level._ID50703 = 24000;
    level._ID50627 = 1;
    precacheitem( "remote_missile_snow" );
    level._ID48753 = 1;
    level._ID46121 = "body_tf141_assault_a";
    level._ID49267 = "head_tf141_arctic_a";
    level._ID46718 = 5000;
    level._ID40576 = "contingency_thermal_inverted";
    level._ID43292 = "contingency_thermal_inverted";
    level._ID8760["60"] = cos( 60 );
    level._ID8760["70"] = cos( 70 );
    setthermalbodymaterial( "thermalbody_snowlevel" );
    level._ID14991 = loadfx( "fx/misc/thermal_tapereflect" );
    level._ID51882 = 1;
    precacheshader( "h1_ac130_screen_overlay" );
    precacheshader( "h1_ac130_distort" );
    precacherumble( "tank_rumble" );
    precacheitem( "remote_missile_not_player" );
    precachemodel( "com_computer_keyboard_obj" );
    precachemodel( "h2_foliage_contingency_pine_snow_lg_clean_animated" );
    precachemodel( "foliage_contingency_snow_tall_react_animated" );
    precachemodel( "h2_foliage_contingency_pine_snow_sm_b_animated" );
    precachemodel( "h2_prop_npc_cigar" );
    precachenightvisioncodeassets();
    _ID42407::_ID10126( ::_ID53221 );
    _ID42407::_ID1951( "start", ::_ID53221, "Start" );
    _ID42407::_ID1951( "slide", ::_ID43177, "Slide" );
    _ID42407::_ID1951( "woods", ::_ID52431, "Woods" );
    _ID42407::_ID1951( "midwoods", ::_ID47929, "mid woods" );
    _ID42407::_ID1951( "ridge", ::_ID53911, "ridge" );
    _ID42407::_ID1951( "base", ::_ID45524, "Base" );
    _ID42407::_ID1951( "defend_sub", ::_ID50272, "defend_sub" );
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
    precachestring( &"CONTINGENCY_TIME_TO_ENTER_SUB" );
    precachestring( &"CONTINGENCY_LINE1" );
    precachestring( &"CONTINGENCY_LINE2" );
    precachestring( &"CONTINGENCY_LINE3" );
    precachestring( &"CONTINGENCY_LINE4" );
    precachestring( &"CONTINGENCY_LINE5" );
    precachestring( &"CONTINGENCY_OBJ_SUB_BASE" );
    precachestring( &"CONTINGENCY_OBJ_SUB_DOCK" );
    precachestring( &"CONTINGENCY_OBJ_DEFEND_SUB" );
    precachestring( &"CONTINGENCY_OBJ_ENTER_SUB" );
    precachestring( &"CONTINGENCY_OBJ_CONTROL_SUB" );
    precachestring( &"CONTINGENCY_OBJ_TURN_KEY" );
    precachestring( &"CONTINGENCY_OBJ_EXIT_SUB" );
    precachestring( &"CONTINGENCY_OBJ_DEFEND" );
    precachestring( &"CONTINGENCY_SUB_TIMER_EXPIRED" );
    precachestring( &"CONTINGENCY_OBJ_ENTER_BASE" );
    precachestring( &"CONTINGENCY_OBJ_PRICE" );
    precachestring( &"CONTINGENCY_USE_DRONE" );
    precachestring( &"CONTINGENCY_TURN_KEY" );
    precachestring( &"CONTINGENCY_DONT_LEAVE" );
    precachestring( &"CONTINGENCY_DONT_LEAVE_FAILURE" );
    _ID42313::_ID54261();
    _ID42323::_ID616();
    _ID50289::_ID616();
    _ID42323::_ID32417( "viewhands_player_arctic_wind" );
    thread maps\contingency_aud::_ID616();
    _ID50736::_ID521();
    _ID42272::_ID33575( "compass_map_contingency" );
    createthreatbiasgroup( "bridge_guys" );
    createthreatbiasgroup( "truck_guys" );
    createthreatbiasgroup( "bridge_stealth_guys" );
    createthreatbiasgroup( "dogs" );
    createthreatbiasgroup( "price" );
    createthreatbiasgroup( "player" );
    createthreatbiasgroup( "end_patrol" );
    level._ID794 setthreatbiasgroup( "player" );
    setignoremegroup( "price", "dogs" );
    setthreatbias( "player", "bridge_stealth_guys", 1000 );
    setthreatbias( "player", "truck_guys", 1000 );
    precacheitem( "at4_straight" );
    precacheitem( "rpg_straight" );
    precacheitem( "zippy_rockets" );
    precacheitem( "zippy_rockets_inverted" );
    precacheitem( "zippy_rockets_persistent" );
    precacheitem( "facemask" );
    _ID49693();
    init_scope_fov_setup();
    setsaveddvar( "r_umbraAccurateOcclusionThreshold", 3100 );
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
    _ID46260();
    thread _ID48803();
    thread _ID44368();
    thread _ID51808();
    thread _ID43702();
    thread _ID48394();
    thread _ID46140();
    thread _ID44202();
    thread _ID45353();
    thread _ID45261();
    thread _ID51277();
    thread _ID48320();
    thread _ID50613();
    thread _ID45159();
    thread _ID51271();
    _ID42237::_ID3350( getentarray( "bush_trigger", "targetname" ), ::bush_trigger_manager );
    thread change_zfar_by_fov();
    thread reset_zfar_by_fov_to_default();
    thread static_model_group_think( "dynamic_zfar_flag", 1 );
    thread static_model_group_think( "starting_area_trees_flag", 6 );
    thread change_remote_missile_zfar();
    thread swap_to_base_uav();
    thread animated_trees_setup();
    thread animated_bushes_setup();
    thread safe_from_btr_failproof();
    level._ID794._ID29480 = 4;
    level._ID794.remotemissile_lowerbound_limit = ( -26160, -14240, -1000 );
    level._ID794.remotemissile_upperbound_limit = ( 5032, 12984, 11660 );
    level._ID794 thread _ID48289::_ID43866();
    level._ID794 _ID42389::_ID36343();
    level._ID794 thread _ID42407::_ID46142();
    _ID42407::_ID27683( 90 );
    var_0 = getentarray( "trigger_tree_explosion", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID44543();

    var_4 = getentarray( "truck_patrol", "targetname" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_ID52483 );
    var_5 = getentarray( "truck_guys", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_ID52114 );
    var_6 = getentarray( "rasta", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_ID46766 );
    var_7 = getentarray( "bricktop", "script_noteworthy" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, ::_ID49945 );
    var_8 = getentarray( "village_redshirt", "script_noteworthy" );

    if ( isdefined( var_8 ) )
        _ID42237::_ID3350( var_8, _ID42407::_ID1947, ::_ID49724 );

    var_9 = getentarray( "start_of_base_redshirt", "script_noteworthy" );

    if ( isdefined( var_9 ) )
        _ID42237::_ID3350( var_9, _ID42407::_ID1947, ::_ID43136 );

    level._ID45294 = 0;
    var_10 = getentarray( "village_defenders", "targetname" );
    _ID42237::_ID3350( var_10, _ID42407::_ID1947, ::_ID46451 );
    var_11 = getentarray( "base_starting_guys", "script_noteworthy" );
    _ID42237::_ID3350( var_11, _ID42407::_ID1947, ::_ID44216 );
    var_12 = getentarray( "base_vehicles", "script_noteworthy" );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_ID47254 );
    var_13 = getent( "base_troop_transport1", "targetname" );
    var_13 _ID42407::_ID1947( ::_ID47432 );
    var_13 _ID42407::_ID1947( ::_ID51766, "cont_cmt_goodkilltruck" );
    var_14 = getent( "base_troop_transport2", "targetname" );
    var_14 _ID42407::_ID1947( ::_ID47432 );
    var_14 _ID42407::_ID1947( ::_ID51766, "cont_cmt_goodkilltruck" );
    var_15 = getent( "base_truck2", "targetname" );
    var_15 _ID42407::_ID1947( ::_ID47432 );
    var_15 _ID42407::_ID1947( ::_ID51766, "cont_cmt_directhitjeep" );
    var_16 = getent( "price", "script_noteworthy" );
    var_16 _ID42407::_ID1947( ::_ID52660 );
    var_16 _ID42407::_ID1947( ::_ID50024, "price" );
    _ID42407::_ID1892( "axis", ::_ID53967 );
    _ID42407::_ID1892( "axis", ::_ID45351 );
    thread _ID53100();
    _ID42237::_ID14400( "base_troop_transport2_spawned" );
    var_14 = getent( "base_troop_transport2", "targetname" );
    var_14 _ID42407::_ID1947( _ID42237::_ID14402, "base_troop_transport2_spawned" );
    var_17 = getentarray( "village_truck_guys", "script_noteworthy" );
    _ID42237::_ID3350( var_17, _ID42407::_ID1947, ::_ID50485 );
    var_18 = getent( "sub_ladder", "targetname" );
    var_18._ID29164 = var_18._ID740;
    var_18._ID740 = var_18._ID740 + ( 0, 0, -10000 );
    thread _ID32982();
    thread _ID32983();
    _ID42407::_ID1895( "hint_dont_leave_price", &"CONTINGENCY_DONT_LEAVE", ::_ID33877, undefined, "small_background" );
    _ID42407::_ID1895( "hint_predator_drone", &"HELLFIRE_USE_DRONE", ::_ID48862 );
    _ID42407::_ID1895( "hint_steer_drone", &"SCRIPT_PLATFORM_STEER_DRONE", ::_ID45901 );
    thread _ID54550();
    _ID42411::_ID52468( "script_vehicle_uaz_winter_physics", _ID51074::_ID32550, ::_ID44501 );
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
    thread _ID43552();
    thread _ID50927();
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
    initialize_portal_flags();
    initialize_zfar_flags();
}

_ID54608()
{
    self._ID486 = 100000;
}

_ID53221()
{
    _ID42475::_ID34575( "start_start_checkpoint" );
    maps\contingency_lighting::_ID44761( "start" );
    thread _ID53118();
}

_ID45524()
{
    _ID42475::_ID34575( "start_base_checkpoint" );
    maps\contingency_lighting::_ID44761( "base" );
    var_0 = _ID42237::_ID16638( "base_start_player", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    var_1 = getentarray( "start_friendly", "targetname" );
    var_2 = getentarray( "rasta_and_bricktop", "targetname" );
    var_1 = _ID42237::_ID3296( var_1, var_2 );
    var_3 = _ID42237::_ID16640( "base_start_friendly", "targetname" );

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_1[var_4]._ID740 = var_3[var_4]._ID740;
        var_1[var_4]._ID65 = var_3[var_4]._ID65;
        var_1[var_4] _ID42407::_ID35014();
    }

    wait 0.1;
    level._ID28543._ID8274 = ::_ID43295;
    level._ID28543 _ID42407::_ID14803( "aug_scope_arctic", "primary" );
    thread _ID47737();
    _ID42237::_ID14402( "player_on_ridge" );
    _ID42237::_ID14402( "leaving_village" );
    thread _ID50655();
}

_ID50272()
{
    _ID42475::_ID34575( "start_defend_sub_checkpoint" );
    maps\contingency_lighting::_ID44761( "defend_sub" );
    var_0 = _ID42237::_ID16638( "defend_sub_start_player", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    var_1 = getentarray( "start_friendly", "targetname" );
    var_2 = getentarray( "rasta_and_bricktop", "targetname" );
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
    level._ID794 takeallweapons();
    level._ID794 giveweapon( "aa12" );
    level._ID794 giveweapon( "m240_heartbeat_reflex_arctic" );
    level._ID794 switchtoweapon( "m240_heartbeat_reflex_arctic" );
    level._ID794 setoffhandprimaryclass( "fraggrenade" );
    level._ID794 giveweapon( "fraggrenade" );
    level._ID794 setoffhandsecondaryclass( "flash_grenade" );
    level._ID794 giveweapon( "flash_grenade" );
    wait 0.1;
    level._ID53312 _ID42407::_ID32315( "g" );
    level._ID53312 _ID42407::_ID12445();
    level._ID47983 _ID42407::_ID32315( "g" );
    level._ID47983 _ID42407::_ID12445();
    level._ID28543 _ID42407::_ID32315( "g" );
    level._ID28543 _ID42407::_ID12445();
    level._ID28543 _ID42407::_ID14803( "aug_scope_arctic", "primary" );
    _ID42389::_ID10971();
    var_1 = getaiarray( "allies" );

    foreach ( var_6 in var_1 )
        var_6 thread _ID46649();

    thread _ID47737();
    _ID42237::_ID14402( "player_on_ridge" );
    _ID42237::_ID14402( "leaving_village" );
    _ID42237::_ID14402( "base_alerted" );
    thread _ID54176();
    thread _ID49314();
}

_ID47109()
{
    wait 4;
    thread _ID42407::_ID28864( "cont_cmt_barelysee" );
    _ID42475::_ID34575( "aud_start_mix_price_arriving" );
}

_ID53118()
{
    thread _ID47109();
    _ID42318::_ID50196();
    var_0 = getent( "price", "script_noteworthy" );
    var_0 _ID42407::_ID35014();
    thread _ID48240();
    thread _ID43336();
    setsaveddvar( "cg_gunDownAnimDelayTime", 250 );
    thread _ID48486();
    thread _ID48938();
    _ID42237::_ID14413( "start_first_patrol" );
    _ID42475::_ID34575( "aud_stop_mix_price_arriving" );
    _ID42407::_ID4422( "start_first_patrol" );
    var_1 = getentarray( "first_patrol", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3._ID170 == "actor_enemy_dog" )
            var_3.slowdog = 1;

        var_3 thread _ID54008();
    }

    _ID42237::_ID14413( "price_starts_moving" );
    _ID42237::_ID14413( "patrol_in_sight" );
    thread _ID49478();
    thread _ID45127();
    thread _ID50287();
    _ID42237::_ID14413( "start_truck_patrol" );
    _ID42475::_ID34575( "aud_start_mix_jeep_convoy" );

    if ( !_ID42237::_ID14385( "cross_bridge_patrol_dead" ) && !_ID42237::_ID14385( "first_stragglers_dead" ) && !_ID42237::_ID14385( "rightside_patrol_dead" ) )
        thread _ID42407::_ID4439();

    level._ID28543._ID507 = 1;
    var_5 = thread _ID42411::_ID35200( "truck_patrol" );
    var_5 thread maps\contingency_aud::_ID44372();
    wait 1;
    thread _ID44047();
    thread maps\contingency_aud::_ID45111();
    _ID42237::_ID14415( "last_truck_left", "player_is_crossing_bridge", "all_bridge_guys_dead" );
    level._ID28543 _meth_8583();
    level._ID28543 notify( "stop_smart_path_following" );
    var_6 = getnode( "price_rdy_vs_stragglers", "targetname" );
    level._ID28543 thread _ID43806( var_6 );
    level._ID28543 thread _ID54181();
    _ID42237::_ID14413( "price_slide_prep" );
    level._ID28543._ID507 = 0;
    thread _ID51258();
}

_ID43177()
{
    _ID42475::_ID34575( "start_slide_checkpoint" );
    maps\contingency_lighting::_ID44761( "slide" );
    var_0 = _ID42237::_ID16638( "slide_start_player", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    var_1 = getentarray( "start_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "slide_start_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    wait 0.1;
    level._ID28543 _ID42407::_ID12467();
    thread _ID51258();
}

_ID51258()
{
    var_0 = level._ID54236;
    thread _ID43660();
    level._ID28543 notify( "stop_smart_path_following" );
    thread _ID51836();
    _ID42237::_ID14413( "start_btr_slide" );
    _ID42475::_ID34575( "aud_start_mix_tank_attacks" );
    _ID42407::_ID4439();
    level._ID28543 notify( "stop_adjust_movement_speed" );
    thread _ID46845();
    level._ID52609 = _ID42411::_ID35195( "btr_slider" );
    level._ID52609 thread _ID42411::_ID40197( "spotlight spotlight_turret" );
    level._ID52609 thread _ID42413::_ID9604();
    level._ID52609 thread _ID44290();
    level._ID52609._ID3189 = "contingency_btr_slide";
    var_1 = _ID42237::_ID16638( "btr81_slide_node", "targetname" );
    var_1 thread _ID42259::_ID3111( level._ID52609, "contingency_btr_slide" );
    level._ID52609 thread btr_slider_check_collision_with_player();
    level._ID52609 _meth_85c3( 0 );
    level._ID52609 thread maps\contingency_aud::_ID51762();
    var_2 = 2.8;
    wait(var_2);
    thread _ID53705();
    thread _ID48739();
    thread _ID50238();
}

btr_slider_check_collision_with_player()
{
    self endon( "death" );
    var_0 = gettime() + 7000;

    while ( gettime() < var_0 )
    {
        var_1 = distance2dsquared( self._ID740, level._ID794._ID740 );

        if ( var_1 < 32400 )
        {
            var_2 = vectornormalize( level._ID794._ID740 - self._ID740 );
            var_3 = vectordot( var_2, anglestoforward( self._ID65 ) );
            var_4 = 60 + abs( var_3 ) * 120;

            if ( var_1 < var_4 * var_4 )
            {
                level._ID794 dodamage( level._ID794._ID486 + 1000, self._ID740, self );
                return;
            }
        }

        waittillframeend;
    }
}

_ID51836()
{
    var_0 = getent( "price_fire_loc_2", "targetname" );
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
                level._ID28543 _meth_83d4( level._ID28543 _ID42407::_ID16120( "pre_BTR" ), 2 );

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
            var_1 = getnode( "price_into_the_woods_path", "targetname" );
            thread _ID47590();
            level._ID28543 setgoalnode( var_1 );
        }

        level._ID28543 _meth_8582();
        level._ID28543 pushplayer( 1 );
        level._ID28543._ID35499 = 1;
        level._ID28543._ID24424 = 0.9;
        level._ID28543 thread _ID50656();
        var_2 = getnode( "price_into_the_woods_path", "targetname" );
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
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    var_1 = getentarray( "start_friendly", "targetname" );
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
    level._ID28543 setgoalpos( ( -28257.9, -8877.1, 840.5 ) );
    thread _ID50238();
}

_ID47929()
{
    _ID42475::_ID34575( "start_midwoods_checkpoint" );
    maps\contingency_lighting::_ID44761( "midwoods" );
    var_0 = _ID42237::_ID16638( "midwoods_start_player", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    var_1 = getentarray( "start_friendly", "targetname" );
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
    var_4 = getnode( "price_overlook_stream", "targetname" );
    level._ID28543 thread _ID43806( var_4 );
    level._ID43611 = 1600;
    thread _ID53148();
    thread _ID52247();
}

_ID50238()
{
    _ID42237::_ID14413( "safe_from_btrs" );
    thread hanging_parachute();
    level._ID28543 _ID42407::_ID7892();
    _ID42475::_ID34575( "aud_stop_mix_tank_attacks" );
    thread _ID45525();
    var_0 = getaispeciesarray( "axis", "all" );

    foreach ( var_2 in var_0 )
    {
        if ( distance( level._ID794._ID740, var_2._ID740 ) > 1500 )
            var_2 delete();
    }

    thread _ID53148();
    level._ID28543 notify( "_utility::follow_path" );
    level._ID28543 notify( "stop_going_to_node" );
    level._ID28543._ID24424 = 1;
    level._ID28543 pushplayer( 1 );
    _ID43573();
    level._ID43611 = 1600;
    level._ID28543._ID628 = level._ID43611;
    level._ID28543 thread _ID42407::_ID10805( "cont_pri_slowdown" );
    _ID42407::_ID4439();
    level._ID28543._ID35499 = undefined;
    level._ID28543 thread _ID42407::_ID12467();
    var_4 = getnode( "price_woods_path_start", "targetname" );
    level._ID28543 thread _ID43806( var_4 );
    thread _ID52247();
}

_ID52247()
{
    _ID43573();
    thread _ID48483();
    thread _ID44565();
    thread _ID48668();
    thread _ID54119();
    thread _ID53461();
    thread _ID54078();
    thread _ID47331();
}

_ID53911()
{
    _ID42475::_ID34575( "start_ridge_checkpoint" );
    maps\contingency_lighting::_ID44761( "ridge" );
    var_0 = _ID42237::_ID16638( "ridge_start_player", "targetname" );
    level._ID794 setorigin( var_0._ID740 );
    level._ID794 setplayerangles( var_0._ID65 );
    var_1 = getentarray( "start_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "ridge_start_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    wait 0.1;
    thread _ID47331();
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

    if ( isalive( level._ID50379 ) && isalive( level._ID52487 ) )
    {
        _ID42237::_ID14402( "first_uav_spawned" );
        thread _ID43434();
        thread angel_savior_achievement_think();
        level._ID49526 = _ID42411::_ID35196( "first_uav" );
        level._ID49526 playloopsound( "uav_engine_loop" );
        level._ID39406 = spawn( "script_model", level._ID49526._ID740 );
        level._ID39406 setmodel( "tag_origin" );
        thread _ID49309();
        level.uav_target = spawn( "script_origin", level._ID49526._ID740 );
        level.uav_target linkto( level._ID49526 );
    }

    _ID42237::_ID14413( "player_on_ridge" );

    if ( _ID42389::_ID36337() )
    {
        var_0 = getaispeciesarray( "axis", "all" );

        foreach ( var_2 in var_0 )
        {
            if ( !var_2 cansee( level._ID794 ) )
                var_2 delete();
        }

        _ID42389::_ID10971();
    }
    else
    {
        _ID42389::_ID10971();
        var_0 = getaispeciesarray( "axis", "all" );

        foreach ( var_2 in var_0 )
        {
            if ( distance( var_2._ID740, level._ID794._ID740 ) > 2300 )
            {
                var_2 delete();
                continue;
            }

            var_2 thread _ID44747();
        }

        var_0 = getaispeciesarray( "axis", "all" );
        level._ID44632 = var_0.size;

        while ( level._ID44632 > 0 )
            wait 1;
    }

    _ID42237::_ID14413( "price_on_ridge" );

    if ( isalive( level._ID50379 ) && isalive( level._ID52487 ) )
    {
        level._ID51129 = gettime();

        if ( !_ID42237::_ID14385( "going_down_ridge" ) )
            wait 3;

        if ( !_ID42237::_ID14385( "going_down_ridge" ) && !isdefined( level._ID794._ID20494 ) )
            wait 3;
    }
    else
    {
        level._ID51129 = gettime();
        level._ID794._ID46223 = 1;
        level._ID794 giveweapon( "remote_missile_detonator" );
        level._ID794 setactionslot( 4, "weapon", "remote_missile_detonator" );
        setomnvar( "ui_updateactionslot", 1 );
    }

    if ( isalive( level._ID50379 ) && isalive( level._ID52487 ) )
    {
        _ID42237::_ID14413( "allowDestructionOfUAV" );
        _ID42237::_ID14402( "first_uav_destroyed" );
        var_6 = getent( "gauntlet_west", "targetname" );
        var_7 = spawn( "script_origin", var_6._ID740 + ( 0, 0, 220 ) );
        var_8 = getent( "gauntlet_east", "targetname" );
        var_9 = spawn( "script_origin", var_8._ID740 + ( 0, 0, 220 ) );
        _ID51687( var_7, var_9 );
    }
}

_ID43938()
{
    var_0 = getent( "ridge_price_overlook_org", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "ridge_in" );

    if ( _ID42237::_ID14385( "leaving_village" ) )
        return;

    if ( _ID42237::_ID14385( "going_down_ridge" ) )
    {
        level._ID28543._ID7._ID28253 = "prone";
        level._ID28543 _meth_8582();
        var_0 _ID42259::_ID3074( level._ID28543, "running_slide" );

        if ( _ID42237::_ID14385( "leaving_village" ) && distance2dsquared( var_0._ID740, level._ID28543._ID740 ) > 100 )
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
    level._ID794 giveweapon( "remote_missile_detonator" );
    level._ID794 setactionslot( 4, "weapon", "remote_missile_detonator" );
    setomnvar( "ui_updateactionslot", 1 );
    level._ID794 thread _ID42407::_ID11085( "hint_predator_drone" );
    wait 5;
    _ID42237::_ID14402( "allowDestructionOfUAV" );
}

_ID47331()
{
    var_0 = getentarray( "rasta", "script_noteworthy" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_ID50774 );
    var_1 = getentarray( "bricktop", "script_noteworthy" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_ID47227 );
    level._ID28543 thread _ID42407::_ID12467();
    _ID42237::_ID14413( "approaching_ridge" );
    level._ID50379 = _ID42411::_ID35195( "gauntlet_east" );
    wait 1;
    level._ID52487 = _ID42411::_ID35195( "gauntlet_west" );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 notify( "stop_smart_path_following" );
    level._ID28543 notify( "stop_dynamic_run_speed" );
    thread _ID43938();
    thread _ID48891();
    _ID42237::_ID14413( "player_slid_down" );
    _ID42237::_ID14402( "stop_stealth_music" );
    _ID42475::_ID34575( "aud_start_mix_sam_explosion" );
    thread _ID48463();

    if ( isalive( level._ID52609 ) )
        level._ID52609 delete();

    if ( isalive( level._ID44806 ) )
        level._ID44806 delete();

    thread _ID45384();
    _ID42407::_ID4422( "village_fight" );
    thread _ID44934();
    var_2 = getentarray( "first_villagers", "targetname" );

    foreach ( var_4 in var_2 )
        var_4 _ID42407::_ID35014();

    _ID42389::_ID10971();
    _ID42237::_ID14388( "_stealth_spotted" );
    thread _ID52199();

    if ( isalive( level._ID50379 ) )
    {
        level._ID50379 waittill( "death" );
        level._ID50379 playloopsound( "fire_metal_large" );
    }

    if ( isalive( level._ID52487 ) )
    {
        level._ID52487 waittill( "death" );
        level._ID52487 playloopsound( "fire_metal_large" );
    }

    _ID42237::_ID14402( "both_gauntlets_destroyed" );
    var_6 = getent( "ai_missile_prevention", "targetname" );
    _ID42407::_ID10321( var_6 );
    _ID42475::_ID34575( "aud_stop_mix_sam_explosion" );
    _ID42407::_ID1985( _ID42237::_ID14413, "second_uav_in_position" );
    _ID42407::_ID1890( ::_ID47737 );
    thread _ID42407::_ID11231();
    _ID42407::_ID1985( _ID42407::_ID1687, 30 );
    _ID42407::_ID1890( _ID42237::_ID14402, "start_village_fight" );
    thread _ID42407::_ID11231();
    _ID50610();
    _ID42237::_ID14402( "rasta_and_bricktop_dialog_done" );
    _ID42237::_ID14402( "second_uav_in_position" );
    _ID42237::_ID14402( "start_village_fight" );
    _ID42407::_ID4422( "village_fight2" );
    wait 1;
    level._ID28543 thread _ID46649();
    var_7 = getentarray( "village_defenders", "targetname" );

    foreach ( var_4 in var_7 )
        var_4 _ID42407::_ID35014();

    _ID42237::_ID14413( "leaving_village" );
    level._ID28543 _ID42407::_ID10896();
    thread _ID50655();
}

_ID50655()
{
    level._ID52258 = 1;
    level._ID28543 thread _ID51376();
    level._ID53312 thread _ID51376();
    _ID42237::_ID3350( getentarray( "ice_chunk", "targetname" ), ::activate_ice_chunk );
    _ID42237::_ID3350( getentarray( "animated_buoy", "targetname" ), ::animated_buoy );
    var_0 = 0;
    var_1 = getaiarray( "allies" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3 == level._ID53312 || var_3 == level._ID28543 )
            continue;

        var_0++;
        var_3 thread _ID42407::_ID29701();
    }

    var_5 = 3 - var_0;
    var_6 = getentarray( "start_of_base_redshirt", "targetname" );

    for ( var_7 = 0; var_7 < var_5; var_7++ )
        var_6[var_7] _ID42407::_ID35014();

    thread _ID47724();
    thread _ID52262();
    thread _ID45699();
    var_8 = _ID42237::_ID16638( "village_enemies_retreat_pos", "targetname" )._ID740;
    var_9 = getaiarray( "axis" );

    foreach ( var_11 in var_9 )
        var_11 thread _ID46412( var_8 );

    _ID43573();
    var_13 = getentarray( "base_starting_guys", "targetname" );

    foreach ( var_15 in var_13 )
        var_15 _ID42407::_ID35014();

    thread _ID49729();
    thread _ID48393();
    _ID42407::_ID1985( ::_ID48780 );
    _ID42407::_ID1890( _ID42237::_ID14402, "base_alerted" );
    thread _ID42407::_ID11231();
    thread _ID47157();
    _ID42237::_ID14413( "base_alerted" );
    thread _ID54176();
    _ID42389::_ID10971();
    thread _ID47258();
    wait 1;
    thread _ID50226();
    thread _ID52205();
    _ID42407::_ID1805( "friendlies_enter_base" );
    thread _ID51922();
    var_17 = getaiarray( "allies" );

    foreach ( var_19 in var_17 )
        var_19 thread _ID46649();

    if ( isalive( level._ID52295 ) )
    {
        var_21 = 0;
        var_22 = 0;
        level._ID52295 thread _ID50761( var_21, var_22 );
    }

    if ( isalive( level._ID51916 ) )
        level._ID51916 thread _ID52124();

    wait 2;

    if ( isalive( level._ID49350 ) )
    {
        level._ID49350 thread maps\contingency_aud::_ID53857();
        thread _ID42411::_ID17021( level._ID49350 );
        level._ID49350._ID7544 = 1;
        level._ID49350._ID24819 = 1;
        level._ID49350 = thread _ID42508::_ID4977( level._ID49350 );
    }

    thread _ID49314();
}

_ID49314()
{
    _ID42237::_ID14413( "price_splits_off" );
    thread _ID53987();

    if ( isalive( level._ID52295 ) )
    {
        level._ID52295 kill();
        wait 3;
    }

    _ID42237::_ID14388( "respawn_friendlies" );
    _ID42407::_ID4422( "defend" );
    thread _ID54575( "gate1" );
    thread _ID54575( "gate2" );
    level._ID28543._ID8274 = undefined;
    level notify( "reached_sub" );
    _ID21428();
    thread _ID51231();
    level._ID28543 _ID42407::_ID10871();
    var_0 = getent( "submarine_node", "targetname" );
    var_0 _ID42259::_ID3074( level._ID28543, "submarine" );
    var_0 thread _ID42259::_ID3111( level._ID28543, "submarine" );
    var_1 = getent( "hatch_model", "targetname" );
    level._ID18258 = var_1;
    var_2 = getent( "hatch_anim_org", "targetname" );
    var_1 _ID42407::_ID3428( "hatch" );
    var_2 thread _ID42259::_ID3111( var_1, "hatch_anim" );
    var_3 = getent( "price_key_pos", "targetname" );
    level._ID28543 setgoalpos( var_3._ID740 );
    level._ID28543._ID452 = 64;
    wait 4;
    var_4 = _ID42407::_ID15741( "allies", "g" );
    _ID42237::_ID3350( var_4, _ID42407::_ID32315, "b" );
    _ID42407::_ID1805( "friendlies_go_to_guardhouse" );
    thread _ID43627();
    var_5 = getaiarray( "axis" );

    foreach ( var_7 in var_5 )
    {
        var_7._ID199 = "cover";
        var_7 setgoalpos( level._ID794._ID740 );
    }

    _ID42237::_ID14413( "price_inside_sub" );
    _ID42407::_ID28864( "cont_pri_insidesub" );
    _ID42237::_ID14425( "defend_sub_vehicle_guys_dead", 50 );
    _ID42237::_ID14413( "player_on_guardhouse" );
    thread _ID25868();
    var_9 = _ID42237::_ID16638( "sub_obj_enemies_flee", "targetname" )._ID740;
    var_5 = getaiarray( "axis" );

    foreach ( var_7 in var_5 )
        var_7 thread _ID52763( var_9 );

    var_12 = getent( "defend_sub_stinger_source", "targetname" );
    _ID51687( var_12 );
    thread _ID48101();
    wait 1;
    _ID42407::_ID4422( "defend2" );
    var_13 = getentarray( "defend_sub_final_guys", "targetname" );

    foreach ( var_7 in var_13 )
        var_7 _ID42407::_ID35014();

    wait 5;
    _ID42407::_ID1805( "contacts_south" );
    level._ID53312 _ID42407::_ID10871();
    var_16 = getnode( "ghost_final", "targetname" );
    level._ID53312 setgoalnode( var_16 );
    level._ID53312 _ID42407::_ID10805( "cont_gst_nexttosub" );
    _ID42237::_ID14402( "close_sub_hatch" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    wait 14;
    thread _ID51145();
    var_9 = _ID42237::_ID16638( "contacts_south_flee_pos", "targetname" )._ID740;
    var_5 = getaiarray( "axis" );

    foreach ( var_7 in var_5 )
    {
        if ( isdefined( var_7._ID1193 ) && issubstr( var_7._ID1193, "defend_sub_final_guys" ) )
            var_7 thread _ID52763( var_9 );
    }

    var_19 = getent( "ending_sequence", "targetname" );
    var_19 thread _ID42259::_ID3111( level._ID53312, "nuke_ending" );
    wait 6.4;
    wait 2.4;
    wait 3.9;
    wait 2;
    wait 9.6;
    wait 1;
    _ID42407::_ID28864( "cont_pri_good2" );
    thread _ID47805();
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
    level._ID794 playsound( "mus_contingency_breakforsub" );
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
    var_0 = getaispeciesarray( "axis", "all" );

    if ( var_0.size > 0 )
        var_0[0]._ID377 = level._ID794;
}

_ID48463()
{
    wait 4;
    var_0 = level._ID794 getcurrentweapon();

    if ( var_0 == level._ID43216 || var_0 == level._ID53133 )
        level._ID28543 _ID42407::_ID10805( "cont_pri_grabweapon" );
}

_ID52199()
{
    var_0 = getent( "bricktop", "script_noteworthy" );
    var_0 _ID42407::_ID35014();
    var_1 = getent( "rasta", "script_noteworthy" );
    var_1 _ID42407::_ID35014();

    if ( isalive( level._ID50379 ) )
        level._ID50379 waittill( "death" );

    var_2 = getentarray( "village_redshirt", "script_noteworthy" );

    foreach ( var_4 in var_2 )
        var_4 _ID42407::_ID35014();
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
    var_0 = gettime() + getanimlength( _ID42407::_ID16120( "contingency_btr_slide" ) ) * 1000;
    var_1 = "tag_origin";
    var_2 = self gettagorigin( var_1 );
    var_3 = 0.05;

    while ( gettime() + var_3 <= var_0 )
    {
        wait(var_3);
        var_4 = self gettagorigin( var_1 );
        var_5 = distance( var_4, var_2 ) / var_3;

        if ( var_5 < 20.0 )
        {
            var_2 = var_4;
            var_3 = 0.1;
            continue;
        }

        var_3 = 1 / var_5;
        var_3 = clamp( var_3 * 35, 0.1, 0.3 );
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

        if ( distance( level._ID794._ID740, level._ID28543._ID740 ) < 400 )
        {
            level._ID28543._ID24424 = 1;
            continue;
        }

        var_0 = vectornormalize( level._ID794._ID740 - level._ID28543._ID740 );
        var_1 = anglestoforward( level._ID28543._ID65 );
        var_2 = vectordot( var_1, var_0 );

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
    level._ID45845 thread _ID46519();
    level._ID45845 thread _ID51766( "cont_cmt_goodkilltruck" );
    wait 1;
    level._ID44075 = _ID42411::_ID35196( "defend_sub_truck3" );
    level._ID44075 thread _ID46519();
    level._ID44075 thread _ID51766( "cont_cmt_goodkilltruck" );
    wait 3;
    level._ID53312 thread _ID42407::_ID10805( "cont_gst_twotruckseast" );
    wait 15;
    level._ID54577 = _ID42411::_ID35196( "defend_sub_truck1" );
    level._ID54577 thread _ID46519();
    level._ID54577 thread _ID51766( "cont_cmt_goodkilltruck" );
    wait 3.25;
    level._ID52937 = _ID42411::_ID35196( "defend_sub_jeep1" );
    level._ID52937 thread _ID46519();
    level._ID52937 thread _ID51766( "cont_cmt_goodkilltruck" );
    level._ID52937 _meth_85c1( 0.5 );
    wait 1.75;
    level._ID53312 thread _ID42407::_ID10805( "cont_gst_morevehicleseast" );
}

_ID54575( var_0 )
{
    _ID42237::_ID14413( var_0 );
    var_1 = getentarray( var_0, "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = -160;

        if ( var_3._ID922 == "left" )
            var_4 = 160;

        var_3 movex( var_4, 2, 1, 0 );
    }

    for (;;)
    {
        _ID42237::_ID14388( var_0 );
        wait 0.2;

        if ( !_ID42237::_ID14385( var_0 ) )
            break;
    }

    foreach ( var_3 in var_1 )
    {
        var_4 = 160;

        if ( var_3._ID922 == "left" )
            var_4 = -160;

        var_3 movex( var_4, 2, 1, 0 );
    }
}

_ID46366()
{
    var_0 = getent( "sub_hatch_th", "targetname" );
    var_0 _ID42237::_ID38863();
    var_1 = getent( "hatch_model", "targetname" );
    var_2 = getent( "hatch_model_collision", "targetname" );
    var_2 linkto( var_1 );
    var_1 rotatepitch( 120, 0.05 );
    _ID42237::_ID14413( "close_sub_hatch" );
    var_1 rotatepitch( -120, 5 );
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
        var_6 = getentarray( var_3 + var_5, "targetname" );
        _ID42237::_ID3350( var_6, ::_ID43373, var_0, var_1 );
        _ID42234::_ID13611( var_4 );
        var_4++;
        wait(var_2);
    }
}

_ID43373( var_0, var_1 )
{
    var_2 = spawn( "script_origin", ( 0, 0, 1 ) );
    var_2._ID740 = self._ID740;
    var_2 playsound( "missile_hatch_slams_open", "sounddone" );
    var_3 = self;
    var_3 rotateroll( -60, var_0, 0.2 );
    wait(var_0);
    var_3 rotateroll( -1, var_1 );
    wait(var_1);
    var_3 rotateroll( 1, var_1 );
    wait(var_1);
    wait 1;
    var_2 playrumbleonentity();
    wait 1;
    var_2 delete();
}

_ID48483()
{
    _ID42237::_ID14413( "first_patrol_cqb" );
    var_0 = getentarray( "first_patrol_cqb", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 _ID42407::_ID35014();

    wait 6;
    _ID42407::_ID28864( "cont_pri_searchingforus" );
}

_ID47805()
{
    _ID42475::_ID34575( "aud_stop_mix_silo_doors" );
    _ID42475::_ID34575( "aud_start_mix_nuclear_launch" );
    var_0 = getent( "icbm_missile01", "targetname" );
    var_1 = getent( "missile01_start", "targetname" );
    var_2 = getent( "missile01_end", "targetname" );
    earthquake( 0.3, 12, var_0._ID740, 8000 );
    level._ID794 _meth_80b5( "tank_rumble" );
    level._ID794 _ID42237::_ID10192( 8.0, ::_meth_80b6, "tank_rumble" );
    var_0 playsound( "scn_con_icbm_ignition" );
    var_0 linkto( var_1 );
    var_1 moveto( var_2._ID740, 50, 10, 0 );
    playfxontag( level._ID1426["smoke_geotrail_icbm"], var_0, "TAG_NOZZLE" );
    _ID42234::_ID13611( "icbm_launch" );
    wait 1;

    if ( distance( level._ID794._ID740, var_1._ID740 ) < 1000 )
        level._ID794 dodamage( level._ID794._ID486 + 1000, var_1._ID740 );

    var_0 playloopsound( "scn_con_icbm_rocket_loop" );
    maps\contingency_lighting::_ID44761( "contingency_nukelaunch" );
    _ID42407::_ID10226( 3.5, maps\contingency_lighting::_ID44761, "contingency_post_nuke" );
    var_1 waittill( "movedone" );
    var_0 delete();
    _ID42475::_ID34575( "aud_stop_mix_nuclear_launch" );
}

_ID52997()
{
    var_0 = spawn( "trigger_radius", self gettagorigin( "tag_passenger" ) + ( 0, 0, -48 ), 0, 72, 72 );
    var_0 enablelinkto();
    var_0 linkto( self );
    var_0 waittill( "trigger" );
    level._ID794 allowprone( 0 );
    level._ID794 allowcrouch( 0 );
    level._ID794 allowstand( 1 );
    _ID42407::_ID12569( 0 );
    level._ID794._ID29975 = _ID42407::_ID35028( "player_rig" );
    level._ID794._ID29975 hide();
    level._ID794._ID29975 linkto( self, "tag_body" );
    thread _ID42259::_ID3111( level._ID794._ID29975, "boneyard_uaz_mount", "tag_body" );
    thread maps\contingency_anim::_ID53058();
    level._ID794 playerlinktoblend( level._ID794._ID29975, "tag_player", 0.5 );
    wait 0.5;
    level._ID794._ID29975 show();
    level._ID794 playerlinktodelta( level._ID794._ID29975, "tag_player", 0.5, 180, 180, 75, 25, 1 );
    self waittill( "boneyard_uaz_mount" );
    level._ID794._ID29975 hide();
    level._ID794 lerpviewangleclamp( 0.5, 0.5, 0, 180, 180, 75, 35 );
    _ID42237::_ID14402( "player_in_uaz" );
}

_ID45501()
{
    level endon( "stop_sub_enemies" );
    var_0 = getentarray( "sub_enemies", "targetname" );

    for (;;)
    {
        for ( var_1 = 1 + randomint( 3 ); var_1 > 0; var_1-- )
            var_0[var_1 - 1] _ID42407::_ID35014();

        wait(randomintrange( 4, 14 ));
    }
}

_ID46049()
{
    _ID42237::_ID14413( "player_on_sub" );
    var_0 = getent( "sub_ladder", "targetname" );
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
    var_0 = getent( "players_key", "targetname" );
    var_0 _ID42407::_ID16953();
    var_0 setcursorhint( "HINT_NOICON" );
    var_0 sethintstring( &"CONTINGENCY_TURN_KEY" );
    var_0 makeusable();
    var_0 waittill( "trigger",  var_1  );
    _ID42237::_ID14402( "player_turned_key" );
    var_0 _ID42407::_ID36591();
    var_0 makeunusable();
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
    var_0 = getentarray( "tear_gas_nodes", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        var_3 = getent( var_2._ID1191, "targetname" );
        var_4 = var_2._ID31039;
        var_3 _ID42407::_ID1947( ::_ID46737, var_4, var_2 );
        var_3 _ID42407::_ID35014();
    }
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
    level._ID794 disableweapons();
    level._ID794 giveweapon( "facemask" );
    level._ID794 switchtoweapon( "facemask" );
    level._ID794 _meth_80fa( "facemask", "nvg_down" );
    wait 2.0;
    level._ID794 thread _ID42407::_ID27001( "gas_mask_breath" );
    setsaveddvar( "hud_gasMaskOverlay", 1 );
    wait 2.5;
    level._ID794 takeweapon( "facemask" );
    level._ID794 enableweapons();
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
    level._ID51916 vehicle_setspeed( 0, 15 );
    level._ID51916 _ID42411::_ID40298();
    wait 1;

    if ( isdefined( level._ID51916._ID49554 ) )
    {
        level._ID51916._ID49554 = undefined;
        target_remove( level._ID51916 );
    }

    if ( isdefined( level._ID48408 ) )
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
    self pushplayer( 0 );
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
    var_2 = getent( "base_pa", "targetname" );
    var_3 = getentarray( "base_alarm_sound", "targetname" );
    wait 2.0;

    while ( !_ID42237::_ID14385( "price_splits_off" ) )
    {
        for (;;)
        {
            var_2 _ID42407::_ID27079( var_0[var_1] );
            var_1 = ( var_1 + 1 ) % var_0.size;
            wait 0.8;

            foreach ( var_5 in var_3 )
            {
                var_5 playloopsound( "emt_alarm_base_alert_echo" );
                var_5._ID809 = 1;
            }

            wait 10.5;

            foreach ( var_5 in var_3 )
            {
                var_5 stopsounds();
                var_5._ID809 = undefined;
            }

            wait 0.8;
        }
    }

    foreach ( var_5 in var_3 )
    {
        if ( isdefined( var_5._ID809 ) )
            var_5 stopsounds();
    }
}

_ID48780()
{
    level endon( "base_alerted" );
    level endon( "_stealth_spotted" );
    level._ID794 waittill( "projectile_impact",  var_0, var_1, var_2  );
}

_ID53967()
{
    if ( isdefined( self._ID29969 ) )
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

    if ( !isdefined( level._ID51269 ) )
        level._ID51269 = 1;
    else
        level._ID51269++;

    level._ID49384 = var_0;
}

_ID45351()
{
    self waittill( "death" );

    if ( isdefined( self._ID29969 ) )
        return;

    wait 0.05;

    if ( !isdefined( level._ID52353 ) )
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

        if ( isdefined( level._ID48964["ai"] ) )
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
    thread _ID46839();
    thread _ID45043();
    thread _ID48289::_ID53152();
    self waittill( "unloaded" );

    if ( isdefined( self._ID49554 ) )
    {
        self._ID49554 = undefined;
        target_remove( self );
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

        if ( gettime() - var_1 < 5000 )
            var_0++;
        else
        {
            var_0 = 0;
            var_1 = gettime();
        }

        if ( var_0 >= 9 )
        {
            var_0 = 0;

            foreach ( var_3 in level._ID44525 )
            {
                if ( isdefined( var_3 ) && !isalive( var_3 ) && distancesquared( var_3._ID740, self._ID740 ) < 90000 )
                    var_3 thread _ID54546();
            }
        }
    }
}

_ID54546()
{
    self notify( "stop_vehicle_enabled_paths" );
    self endon( "stop_vehicle_enabled_paths" );
    self._ID51003 = 1;
    self connectpaths();
    wait 5;
    self disconnectpaths();
    self._ID51003 = undefined;
}

_ID46839()
{
    self endon( "delete" );
    self waittill( "kill_badplace_forever" );
    level._ID44525[level._ID44525.size] = self;
    var_0 = 2500;
    var_1 = self._ID740;

    while ( isdefined( self ) )
    {
        if ( isdefined( self._ID51003 ) )
        {
            wait 0.5;
            continue;
        }

        if ( distancesquared( self._ID740, var_1 ) > var_0 )
        {
            var_1 = self._ID740;
            self connectpaths();

            for (;;)
            {
                if ( isdefined( self._ID51003 ) )
                {
                    wait 0.5;
                    continue;
                }

                wait 0.05;

                if ( !isdefined( self ) )
                    return;

                if ( distancesquared( self._ID740, var_1 ) < 1 )
                    break;

                var_1 = self._ID740;
            }

            self disconnectpaths();
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

        if ( self vehicle_getspeed() < 2 )
        {
            self vehicle_setspeed( 0, 15 );
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
    self vehicle_setspeed( 0, 15 );
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
    level._ID49350 thread _ID51766( "cont_cmt_directhitshelo" );
    level._ID52295 = _ID42411::_ID35195( "base_btr2" );
    level._ID52295 thread _ID48289::_ID53152();
    level._ID52295 thread _ID42411::_ID40197( "spotlight spotlight_turret" );
    level._ID52295 thread _ID51766( "cont_cmt_btrdestroyed" );
    level._ID51916 = _ID42411::_ID35195( "base_truck1" );
    level._ID51916 thread _ID48289::_ID53152();
    level._ID51916 thread _ID51766( "cont_cmt_directhitjeep" );
    thread _ID44899();
}

_ID45699()
{
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID12445();
        var_2 _ID42407::_ID32315( "g" );
        var_2._ID764 = 200;
        var_2._ID11575 = 1;
        var_2 _ID42407::_ID32226( 0 );
        var_2 _ID42407::_ID32324( 0 );
    }

    level._ID28543 _ID42407::_ID32315( "r" );
    _ID42237::_ID14413( "obj_base_entrance" );
    _ID42237::_ID14402( "everyone_set_green" );
    level._ID28543 _ID42407::_ID32315( "g" );
    _ID42237::_ID14413( "base_alerted" );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID11575 = undefined;
        var_2 _ID42407::_ID32226( 1 );
        var_2 _ID42407::_ID32324( 1 );
    }
}

_ID44899()
{
    while ( !isdefined( level._ID794._ID20494 ) && !_ID42237::_ID14385( "obj_base_entrance" ) )
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
    if ( !isdefined( level._ID43829 ) )
        level._ID43829 = gettime();
    else if ( gettime() < level._ID43829 + 15000 )
        return;

    level._ID43829 = gettime();
    var_1 = getaiarray( "allies" );
    var_1[randomint( var_1.size )] _ID42407::_ID9527( "order_move_combat" );
}

_ID52763( var_0 )
{
    self endon( "death" );
    self setgoalpos( var_0 );
    self._ID287 = 1;
    self._ID511 = 1;
    self._ID452 = 96;
    self waittill( "goal" );

    while ( self cansee( level._ID794 ) )
        wait 1;

    self kill();
}

_ID46412( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( "leaving_village" );
    self setgoalpos( var_0 );
    self._ID287 = 1;
    self._ID511 = 1;
    self._ID452 = 32;
    self waittill( "goal" );

    while ( self cansee( level._ID794 ) )
        wait 1;

    self kill();
}

_ID43828( var_0, var_1, var_2 )
{
    self notify( "stop_barney" );
    self endon( "stop_barney" );
    self endon( "death" );
    self cleargoalvolume();
    thread _ID54181();
    self._ID450 = 200;
    self._ID452 = 300;
    self._ID381 = 0;

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        var_3 = level._ID794._ID740;
        var_4 = vectornormalize( var_1 - var_3 );
        var_5 = var_4 * 400;
        var_6 = var_5 + var_3;
        self setgoalpos( var_6 );
        wait 0.5;
    }

    self notify( "stop_adjust_movement_speed" );
    self._ID24424 = 1.0;
    self setgoalpos( var_1 );

    if ( isdefined( var_2 ) )
        self setgoalvolume( var_2 );
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
        var_4 = level._ID28543 geteye();

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
    self makeentitysentient( "axis" );
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
    var_0 thread _ID44645();
    var_0 _ID42259::_ID3074( level._ID28543, "intro" );
    level._ID28543 _meth_8583();
    var_0 _ID42259::_ID3111( level._ID28543, "intro" );
    level._ID28543 _meth_8582();
    _ID42237::_ID14402( "price_starts_moving" );
    level._ID28543 notify( "_utility::follow_path" );
    level._ID28543 notify( "stop_going_to_node" );
    level._ID28543 _ID42407::_ID10871();
    level._ID28543 thread _ID42407::_ID12467();
    var_1 = getnode( "price_smart_path_to_road", "targetname" );
    level._ID28543 thread _ID43806( var_1 );
}

_ID44121()
{
    _ID42237::_ID14413( "price_on_ridge" );
    wait 3;
    _ID42237::_ID14413( "going_down_ridge" );
    var_0 = getent( "ridge_price_overlook_org", "targetname" );
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

    if ( !isalive( level._ID49350 ) )
        return;

    var_0 = ( -13500, 876, 749 );
    var_1 = _ID42237::_ID16638( "kill_heli_fail_safe", "targetname" );

    if ( isdefined( var_1 ) )
        var_0 = var_1._ID740;

    var_2 = magicbullet( "zippy_rockets", var_0, level._ID49350._ID740 );
    var_2 missile_settargetent( level._ID49350 );
}

_ID50664( var_0 )
{
    if ( !isdefined( level._ID49526 ) )
        return;

    var_1 = anglestoforward( level._ID49526._ID65 );
    var_2 = var_1 * 10000;
    var_3 = var_2 + level._ID49526._ID740;

    if ( isdefined( level._ID794._ID20494 ) )
    {
        playfx( _ID42237::_ID16299( "thermal_missle_flash_inverted" ), var_0._ID740 );
        var_4 = magicbullet( "zippy_rockets_persistent", var_0._ID740, var_3 );
    }
    else
    {
        playfx( _ID42237::_ID16299( "missle_flash" ), var_0._ID740 );
        var_4 = magicbullet( "zippy_rockets_persistent", var_0._ID740, var_3 );
    }

    var_0 playsound( "gauntlet_fires" );
    var_0 playsound( "gauntlet_ignition" );
    var_4 missile_settargetent( level.uav_target );
    thread stinger_think( var_4 );
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
    setdvar( "ui_deadquote", &"CONTINGENCY_DONT_LEAVE_FAILURE" );

    if ( isdefined( level._ID9455 ) )
    {
        level._ID9455 destroy();
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

    if ( isdefined( level._ID45535 ) )
        var_0 = 1;

    if ( !isalive( level._ID49526 ) )
        var_0 = 1;

    if ( isdefined( level._ID794._ID51771 ) )
        var_0 = 1;

    if ( _ID42237::_ID14385( "base_alerted" ) )
        var_0 = 1;

    if ( level._ID794 getcurrentweapon() == "remote_missile_detonator" )
        var_0 = 1;

    return var_0;
}

_ID45901()
{
    var_0 = 0;

    if ( level._ID794 getcurrentweapon() == "remote_missile_detonator" )
        var_0 = 1;

    if ( level._ID47334 + 5000 < gettime() )
        var_0 = 1;

    return var_0;
}

_ID51687( var_0, var_1 )
{
    _ID42475::_ID34575( "aud_start_mix_missile_uav" );

    if ( isdefined( var_1 ) )
    {
        var_2 = 184960000;
        var_3 = distancesquared( var_0._ID740, level._ID49526._ID740 );
        var_4 = clamp( var_3 / var_2, 0.1, 1 );
        _ID42407::_ID10226( var_4, ::_ID50664, var_1 );
    }

    _ID50664( var_0 );
}

stinger_think( var_0 )
{
    var_1 = level.uav_target._ID740;
    var_2 = 999999999;

    for (;;)
    {
        var_3 = distance( var_0._ID740, level.uav_target._ID740 );

        if ( var_3 <= 300 )
            break;

        var_1 = level.uav_target._ID740;
        wait 0.05;
    }

    var_0 delete();
    playfx( _ID42237::_ID16299( "uav_explosion" ), var_1 );
    level.uav_target thread _ID42407::_ID27080( "uav_explode" );
    level._ID45535 = 1;
    level._ID794 _ID50736::_ID50531( 0, 1 );

    if ( isdefined( level._ID49526 ) )
        level notify( "uav_destroyed" );

    _ID42475::_ID34575( "aud_stop_mix_missile_uav" );

    if ( isdefined( level._ID49526 ) )
        level._ID49526 delete();
}

_ID49309()
{
    if ( !isalive( level._ID49526 ) )
        return;

    if ( isdefined( level._ID45535 ) )
        return;

    var_0 = getentarray( "uav_focus_point", "targetname" );
    var_1 = getent( "village_focus_point", "script_noteworthy" );
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

        var_4 = vectortoangles( var_3 - level._ID49526._ID740 );
        level._ID39406 moveto( level._ID49526._ID740, 0.1, 0, 0 );
        level._ID39406 rotateto( var_4, 0.1, 0, 0 );
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

    if ( !isalive( level._ID49526 ) )
    {
        var_0 = 1;
        level._ID49526 = _ID42411::_ID35196( "second_uav" );
        level._ID49526 playloopsound( "uav_engine_loop" );
    }

    if ( !isdefined( level._ID39406 ) )
    {
        level._ID39406 = spawn( "script_model", level._ID49526._ID740 );
        level._ID39406 setmodel( "tag_origin" );
    }

    if ( !isdefined( level.uav_target ) )
        level.uav_target = spawn( "script_origin", level._ID49526._ID740 );

    level.uav_target._ID740 = level._ID49526._ID740;
    level.uav_target linkto( level._ID49526 );

    if ( var_0 )
        thread _ID49309();

    var_1 = level._ID794 getweaponslistall();
    var_2 = 0;

    foreach ( var_4 in var_1 )
    {
        if ( var_4 == "remote_missile_detonator" )
            var_2 = 1;
    }

    if ( !var_2 )
    {
        level._ID794 giveweapon( "remote_missile_detonator" );
        level._ID794 setactionslot( 4, "weapon", "remote_missile_detonator" );
        setomnvar( "ui_updateactionslot", 1 );
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
        wait(randomfloatrange( 2, 4 ));
        var_1 = getentarray( "cqb_patrol", "script_noteworthy" );
        var_1 = _ID42237::_ID3320( var_1 );

        foreach ( var_3 in var_1 )
        {
            if ( isalive( var_3 ) && !_ID42237::_ID14385( "_stealth_spotted" ) && !var_3 _ID42407::_ID13019( "_stealth_attack" ) )
            {
                var_4 = var_0[randomint( var_0.size )];
                var_3 playsound( var_4 );
                break;
            }
        }
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

    while ( !isalive( level._ID53312 ) )
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
    self setgoalnode( var_0 );

    if ( !isdefined( var_0._ID1191 ) )
        return;

    var_1 = getnode( var_0._ID1191, "targetname" );

    for (;;)
    {
        var_2 = undefined;
        var_3 = undefined;
        var_4 = getentarray( var_1._ID31273, "script_linkname" );

        foreach ( var_6 in var_4 )
        {
            if ( var_6._ID170 == "trigger_multiple_flag_set" )
                var_2 = var_6;

            if ( var_6._ID170 == "info_volume" )
                var_3 = var_6;
        }

        _ID42237::_ID14413( var_2._ID31190 );
        var_3 _ID42407::_ID41162();
        level notify( var_1._ID1193 );

        if ( _ID42237::_ID14385( "_stealth_spotted" ) )
            _ID42237::_ID14426( "_stealth_spotted" );

        self setgoalnode( var_1 );
        self._ID48051 = var_1;

        if ( !isdefined( var_1._ID1191 ) )
            break;

        var_1 = getnode( var_1._ID1191, "targetname" );
    }
}

_ID43998( var_0 )
{
    var_1 = var_0;

    for (;;)
    {
        if ( isdefined( var_1._ID31273 ) )
        {
            var_2 = getent( var_1._ID31273, "script_linkname" );
            var_2 notify( "explode" );
        }

        wait 0.2;

        if ( isdefined( var_1._ID916 ) )
            wait(var_1._ID916);

        if ( isdefined( var_1._ID1191 ) )
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
    level._ID44806 thread _ID53449();
    level._ID44806 thread _ID42413::_ID9604();
    level._ID44806 _meth_85c1( 0.1 );
    level._ID44806 _meth_85c5( 3.0 );
    level._ID44806 _meth_85c7( 0.3 );
    level._ID44806 thread _ID42407::_ID27079( "scn_con_bmp2_skid" );
}

_ID54181()
{
    self notify( "stop_adjust_movement_speed" );
    self endon( "death" );
    self endon( "stop_adjust_movement_speed" );

    for (;;)
    {
        wait(randomfloatrange( 0.5, 1.5 ));

        while ( _ID53164() )
        {
            self._ID24424 = 2.5;
            wait 0.05;
        }

        self._ID24424 = 1.0;
    }
}

_ID53164()
{
    if ( distancesquared( self._ID740, self._ID451 ) <= level._ID47460 )
        return 0;

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 getplayerangles(), self._ID740, level._ID8760["70"] ) )
        return 0;

    return 1;
}

_ID45525()
{
    level endon( "player_slid_down" );
    _ID42237::_ID14413( "returning_to_btrs" );
    level._ID44806 setturrettargetent( level._ID794 );
    var_0 = randomintrange( 2, 5 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        level._ID44806 fireweapon();
        wait 0.35;
    }

    level._ID52609 setturrettargetent( level._ID794 );
    wait(randomfloatrange( 0.2, 0.5 ));
    var_0 = randomintrange( 2, 4 );

    for ( var_1 = 0; var_1 < var_0; var_1++ )
    {
        level._ID52609 fireweapon();
        level._ID44806 fireweapon();
        wait 0.35;
    }

    level._ID794 dodamage( level._ID794._ID486 + 1000, level._ID44806._ID740 );
}

_ID53449()
{
    wait 10;
    level endon( "safe_from_btrs" );

    for (;;)
    {
        level._ID794 _ID42407::_ID41106( level._ID28543, 1000 );
        var_0 = vectornormalize( level._ID794._ID740 - level._ID28543._ID740 );
        var_1 = anglestoforward( level._ID28543._ID65 );
        var_2 = vectordot( var_1, var_0 );

        if ( var_2 < 0 )
            break;

        wait 0.1;
    }

    level notify( "shoot_at_player" );
    self setturrettargetent( level._ID794 );
    var_3 = randomintrange( 2, 5 );

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        self fireweapon();
        wait 0.35;
    }

    level._ID52609 setturrettargetent( level._ID794 );
    wait(randomfloatrange( 0.2, 0.5 ));
    var_3 = randomintrange( 2, 4 );

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        level._ID52609 fireweapon();
        self fireweapon();
        wait 0.35;
    }

    level._ID794 dodamage( level._ID794._ID486 + 1000, self._ID740 );
}

_ID48739()
{
    level endon( "shoot_at_player" );
    _ID42237::_ID14413( "end_of_tree_explosions" );
    wait 2;
    var_0 = getentarray( "trigger_tree_explosion", "targetname" );
    thread _ID51227( var_0 );
    level._ID44806 fireweapon();
    wait 0.2;
    thread _ID51227( var_0 );
    level._ID44806 fireweapon();
    wait 0.2;
    thread _ID51227( var_0 );
    level._ID44806 fireweapon();
    wait 1;
    thread _ID51227( var_0 );
    level._ID44806 fireweapon();
    wait 0.5;
    level._ID44806 fireweapon();
    wait 1;
    thread _ID51227( var_0 );
    level._ID44806 fireweapon();
    wait 0.2;
    thread _ID51227( var_0 );
    level._ID44806 fireweapon();
    wait 0.2;
    level._ID44806 fireweapon();
    wait 0.5;
    thread _ID51227( var_0 );
    level._ID44806 fireweapon();
    wait 0.8;
    level._ID44806 fireweapon();
    wait 1;
    level._ID44806 fireweapon();
    wait 1;
    level._ID44806 fireweapon();
    wait 2;
    level._ID44806 fireweapon();
    _ID42237::_ID14402( "done_with_exploding_trees" );
}

_ID51227( var_0 )
{
    var_1 = var_0[randomint( var_0.size )];
    var_1 playsound( "contingency_tree_impact" );
    var_1 playsound( "contingency_tree_fall" );
}

_ID44543()
{
    level endon( "shoot_at_player" );
    var_0 = getent( self._ID1191, "targetname" );

    if ( _ID50420( var_0 ) )
        return;
}

_ID50420( var_0 )
{
    level endon( "shoot_at_player" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _ID52925( var_0 );
    var_1 = var_4[0];
    var_2 = var_4[1];
    var_3 = var_4[2];
    var_clear_0

    if ( !isdefined( var_1 ) || !isdefined( var_2 ) )
        return 0;

    var_0 _ID42407::_ID3428();
    var_5 = [];

    if ( isdefined( var_0._ID1191 ) )
        var_5 = getentarray( var_0._ID1191, "targetname" );

    var_0.collision_ground = undefined;
    var_6 = [];

    foreach ( var_8 in var_5 )
    {
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

    foreach ( var_11 in var_6 )
    {
        var_12 = undefined;
        var_13 = _ID52925( var_11 );
        var_12 = var_13[0];
        var_14 = var_13[1];
        var_clear_2

        if ( !isdefined( var_12 ) )
            continue;

        var_11 thread _ID42259::_ID3044( var_11, var_12, "stop idle" );
    }

    var_16 = 0;

    if ( isdefined( var_0._ID922 ) && var_0._ID922 == "hits_the_ground" )
        var_16 = 1;

    if ( var_16 )
        var_0.collision_ground notsolid();

    var_0 thread _ID42259::_ID3044( var_0, var_1, "stop idle" );
    self waittill( "trigger" );
    var_17 = level._ID794 geteye();
    thread _ID42237::_ID27077( "scn_cont_btr_gun_whizby", var_17 );
    var_0 notify( "stop idle" );
    _ID42407::_ID3319( var_6, "stop idle" );
    var_0 setmodel( var_3 );
    var_0 _ID42259::_ID3018( var_0, var_2 );

    if ( _ID42407::_ID18252( var_0._ID669, "tag_target" ) )
    {
        var_18 = var_0 gettagorigin( "tag_attack" );

        if ( isalive( level._ID52609 ) )
        {
            level._ID52609 setturrettargetvec( var_18 );
            level._ID52609 fireweapon();
        }

        if ( isalive( level._ID44806 ) )
        {
            level._ID44806 setturrettargetvec( var_18 );
            level._ID44806 fireweapon();
        }
    }

    var_0 playsound( "contingency_tree_impact" );
    var_0 playsound( "contingency_tree_fall" );

    foreach ( var_11 in var_6 )
    {
        wait 1;
        var_20 = undefined;
        var_21 = _ID52925( var_11 );
        var_14 = var_21[0];
        var_20 = var_21[1];
        var_14 = var_21[2];
        var_clear_1

        if ( !isdefined( var_20 ) )
            continue;

        var_11 thread _ID42259::_ID3111( var_11, var_20 );
    }

    var_0 _ID42259::_ID3111( var_0, var_2 );
    waitframe;
    return 1;
}

h2_tree_hit_ground_check( var_0 )
{
    level endon( "shoot_at_player" );

    if ( level._ID794 istouching( var_0.collision_ground ) )
        level._ID794 kill();

    var_0.collision_ground solid();
    var_0 playsound( "contingency_tree_ground" );
}

_ID52925( var_0 )
{
    switch ( var_0._ID669 )
    {
        case "foliage_contingency_snow_tall_animated":
            var_0._ID3189 = "tree_snow_tall";
            return [ "idle_slow", "fall_broken", undefined ];
        case "h2_foliage_contingency_pine_snow_sm_b":
            var_0._ID3189 = "tree_snow_mid";
            return [ "idle_slow", var_0._ID70, "h2_foliage_contingency_pine_snow_sm_b" ];
        case "h2_foliage_contingency_pine_snow_lg_c":
            var_0._ID3189 = "tree_snow_tall";
            return [ "idle_slow", var_0._ID70, "h2_foliage_contingency_pine_snow_lg_c_animated" ];
        case "foliage_contingency_pine_snow_lg_b":
            var_0._ID3189 = "tree_snow_react";
            return [ "idle_slow", var_0._ID70, "h2_foliage_contingency_pine_snow_lg_clean_animated" ];
        case "foliage_contingency_snow_tall":
            var_0._ID3189 = "tree_snow_react";
            return [ "idle_slow", var_0._ID70, "foliage_contingency_snow_tall_react_animated" ];
        default:
            return [ undefined, undefined, undefined ];
    }
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

    if ( !isdefined( level._ID44250 ) )
        level._ID44250 = gettime();
    else if ( gettime() < level._ID44250 + 15000 )
        return;

    level._ID44250 = gettime();
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

        if ( isdefined( level._ID48026 ) )
        {
            if ( gettime() < level._ID48026 + 15000 )
                continue;
        }

        if ( !isdefined( level._ID44250 ) )
            level._ID44250 = gettime();
        else if ( gettime() < level._ID44250 + 3000 )
            continue;

        level._ID44250 = gettime();
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

        if ( isdefined( level._ID48026 ) )
        {
            if ( gettime() < level._ID48026 + 15000 )
                continue;
        }

        if ( !isdefined( level._ID44250 ) )
            level._ID44250 = gettime();
        else if ( gettime() < level._ID44250 + 3000 )
            continue;

        level._ID44250 = gettime();
        var_2 = var_1[var_0];
        _ID42407::_ID28864( var_2 );
        var_0++;

        if ( var_0 >= var_1.size )
            var_0 = 0;
    }
}

_ID51228()
{
    self waittill( "damage",  var_0, var_1  );

    if ( !isdefined( var_1 ) )
        return;

    if ( isplayernumber( var_1 ) && isdefined( self._ID31114 ) )
    {
        if ( self._ID31114 != "blocking_stationary_dead" )
            thread _ID52827( self._ID31114 );
    }
}

_ID48045()
{
    self waittill( "death",  var_0  );

    if ( !isdefined( var_0 ) )
        return;

    if ( isplayernumber( var_0 ) )
    {
        thread _ID45142();
        return;
    }

    if ( level._ID28543 == var_0 && !isdefined( self._ID45806 ) )
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
    level._ID28543 setlookatentity();

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
    thread _ID47365();
    _ID42407::_ID28864( "cont_pri_imready" );

    if ( _ID42237::_ID14385( "cross_bridge_patrol_dead" ) || _ID42237::_ID14385( "rightside_patrol_dead" ) )
        return;

    _ID42407::_ID28864( "cont_pri_twoonleft" );
}

_ID54008()
{
    if ( isdefined( self._ID916 ) )
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
    _ID40939( 1 );
    _ID42407::_ID4422( "first_stragglers" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    level endon( "someone_became_alert" );

    if ( _ID42237::_ID14385( "first_stragglers_dead" ) )
        return;

    level endon( "first_stragglers_dead" );
    thread _ID43375();
    wait 1;
    _ID42237::_ID14413( "they_have_split_up" );
    _ID42407::_ID28864( "cont_pri_forasmoke" );
}

_ID47365()
{
    var_0 = getaispeciesarray( "axis", "all" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID922 ) && var_2._ID922 == "rightside_patrol" )
            var_2._ID1204 = 20000;
    }

    level._ID28543._ID507 = 0;
    level._ID794 waittill( "weapon_fired" );
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    var_0 = getaispeciesarray( "axis", "all" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID45806 = 1;
        var_2._ID11566 = undefined;
        var_2._ID486 = 1;
    }

    _ID42237::_ID14413( "second_group_of_stragglers_are_dead" );
    _ID44446();
}

_ID43375()
{
    level._ID28543._ID507 = 0;
    level._ID794 waittill( "weapon_fired" );
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    var_0 = getaispeciesarray( "axis", "all" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID922 ) && var_2._ID922 == "first_stragglers" )
        {
            var_2._ID45806 = 1;
            var_2._ID11566 = undefined;
            level._ID28543._ID377 = var_2;
            var_2._ID486 = 1;
        }
    }

    _ID42237::_ID14413( "first_stragglers_dead" );
    _ID44446();
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
    var_1 = getaispeciesarray( "axis", "all" );

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        foreach ( var_3 in var_1 )
        {
            if ( !isalive( var_3 ) )
                continue;

            if ( isdefined( var_3._ID31114 ) && var_3._ID31114 == var_0 )
            {
                var_3._ID11566 = undefined;
                var_3._ID1204 = 5000;

                if ( !isalive( level._ID28543._ID322 ) )
                    level._ID28543._ID377 = var_3;

                var_3._ID486 = 1;
            }
        }

        wait 0.1;
    }

    _ID52400();
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
    thread _ID53765();
    level._ID28543._ID507 = 1;
    level endon( "_stealth_spotted" );
    _ID42237::_ID14425( "last_jeep_arrived", 20 );
    wait 4;
    _ID40939( 1 );
    _ID42407::_ID28864( "cont_pri_yourparachute" );
    _ID42237::_ID14402( "convoy_hide_section_complete" );
    _ID42407::_ID4439();
    thread _ID46294();
    level._ID28543._ID507 = 0;
    level._ID28543 thread _ID42407::_ID12467();
    var_0 = getnode( "price_goes_halfway_across_bridge", "targetname" );
    level._ID28543 thread _ID43806( var_0 );
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
    var_0 = getnode( "price_goes_halfway_across_bridge", "targetname" );
    level._ID28543 thread _ID43806( var_0 );
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
    var_0 = getaispeciesarray( "axis", "all" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID922 ) && var_2._ID922 == "cross_bridge_patrol" )
        {
            var_2._ID45806 = 1;
            var_2._ID11566 = undefined;
            level._ID28543._ID377 = var_2;
            var_2._ID486 = 1;
        }
    }
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
    var_0 = level._ID794 getcurrentweapon();

    if ( var_0 != level._ID43216 && var_0 != level._ID53133 )
        level._ID28543 _ID42407::_ID28864( "cont_pri_alertenemies" );

    level._ID28543 _ID42407::_ID28864( "cont_pri_yourcall" );
    level._ID48026 = gettime();
}

_ID44595()
{
    var_0 = getaispeciesarray( "axis", "all" );

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2._ID922 ) )
            continue;

        if ( var_2._ID922 == "blocking_group_left_two" )
            var_2._ID1204 = 20000;
    }

    level._ID794 waittill( "weapon_fired" );
    level._ID28543._ID628 = 64000000;
    wait 0.2;
    level._ID28543._ID11575 = undefined;
    level._ID28543._ID4867 = 5000000;
    var_0 = getaispeciesarray( "axis", "all" );

    while ( !_ID42237::_ID14385( "blocking_stationary_dead" ) )
    {
        foreach ( var_2 in var_0 )
        {
            if ( !isalive( var_2 ) )
                continue;

            if ( !isdefined( var_2._ID922 ) )
                continue;

            if ( var_2._ID922 == "blocking_group_left_two" )
            {
                if ( !isalive( level._ID28543._ID322 ) )
                    level._ID28543._ID377 = var_2;

                var_2._ID11566 = undefined;
                var_2._ID486 = 1;
            }
        }

        foreach ( var_2 in var_0 )
        {
            if ( !isalive( var_2 ) )
                continue;

            if ( !isdefined( var_2._ID922 ) )
                continue;

            if ( var_2._ID922 == "two_on_right" )
            {
                var_2._ID11566 = undefined;
                var_2._ID486 = 1;
            }
        }

        wait 0.1;
    }

    _ID52400();
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
    thread _ID44595();
    level._ID28543 _ID42407::_ID28864( "cont_pri_largepatrol12" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_cantslipby" );
    level._ID28543 _ID42407::_ID28864( "cont_pri_twoonright" );
    level._ID48026 = gettime();
}

_ID54119()
{
    _ID42237::_ID14413( "dialog_woods_second_dog_patrol" );

    if ( _ID42237::_ID14385( "someone_became_alert" ) )
        return;

    _ID42407::_ID4439();
    var_0 = getentarray( "end_patrol", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) )
            var_2._ID1204 = 10000;
    }

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
    thread _ID43569();
    wait 1;

    if ( _ID42237::_ID14385( "_stealth_spotted" ) )
        return;

    level notify( "dialog_someone_is_alert" );
}

_ID43569()
{
    _ID40939( 3 );
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

    if ( isalive( level._ID49350 ) )
    {
        level._ID28543 _ID42407::_ID10805( "cont_pri_takeoutheli" );
        level._ID49350 makeentitysentient( "axis" );
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
    var_1 = gettime();
    var_0 waittill( "death" );

    if ( gettime() > var_1 + 2000 )
        return;

    self setmodel( "vehicle_btr80_snow_d" );
    playfx( _ID42237::_ID16299( "btr_explosion" ), self._ID740 );
    stopfxontag( _ID42237::_ID16299( "btr_spotlight" ), self, "TAG_FRONT_LIGHT_RIGHT" );
    stopfxontag( _ID42237::_ID16299( "btr_spotlight" ), self, "TAG_TURRET_LIGHT" );
}

_ID47944()
{
    level endon( "saying_contact" );
    level._ID28543 setlookatentity( level._ID794 );
    _ID42407::_ID28864( "cont_cmt_barelysee" );
    level._ID28543 setlookatentity();
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
        thread _ID48846();
        _ID42237::_ID14413( "_stealth_spotted" );
        _ID42407::_ID24584( 0.2 );
        wait 0.5;
        thread _ID52010();
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
    var_0 = getentarray( "cargo_heli_group2", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = getentarray( var_2._ID922, "targetname" );

        foreach ( var_5 in var_3 )
            var_5 hide();

        var_2._ID48520 = var_3;
    }

    _ID42237::_ID14413( "cargo_choppers_2" );
    _ID42475::_ID34575( "aud_start_mix_2nd_heli_flyby" );
    thread _ID46016();
    var_8 = 0;

    for ( var_9 = 1; var_9 > 0; var_9-- )
    {
        for ( var_10 = var_0.size; var_10 > 0; var_10-- )
        {
            if ( var_8 >= var_0.size )
                var_8 = 0;

            thread _ID44493( var_0[var_8] );
            var_8++;
            wait(randomfloatrange( 1.3, 1.8 ));
        }
    }
}

_ID48240()
{
    _ID42475::_ID34575( "aud_start_heli_flyby_echo" );
    var_0 = getentarray( "cargo_heli", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = getentarray( var_2._ID922, "targetname" );

        foreach ( var_5 in var_3 )
            var_5 hide();

        var_2._ID48520 = var_3;
    }

    var_8 = 0;

    for ( var_9 = 1; var_9 > 0; var_9-- )
    {
        for ( var_10 = var_0.size; var_10 > 0; var_10-- )
        {
            if ( var_8 >= var_0.size )
                var_8 = 0;

            thread _ID44493( var_0[var_8] );
            var_8++;
            wait(randomfloatrange( 1.3, 1.8 ));
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
        var_3[var_4] = spawn( var_2[var_4]._ID170, var_2[var_4]._ID740 );
        var_3[var_4]._ID65 = var_2[var_4]._ID65;

        if ( var_3[var_4]._ID170 == "script_model" )
            var_3[var_4] setmodel( var_2[var_4]._ID669 );

        var_3[var_4] linkto( var_1 );
    }

    wait 0.1;
    thread _ID42411::_ID17021( var_1 );
    var_1 waittill( "death" );

    foreach ( var_6 in var_3 )
        var_6 delete();
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
    var_6 = self gettagorigin( var_4 );
    var_7 = magicbullet( "at4_straight", var_6, var_1._ID740 + var_2 );
    self waittill( "drop rocket" );
    var_8 = self gettagorigin( var_4 );
    var_9 = self gettagangles( var_4 );
    _ID42407::_ID26720( "at4", "none" );

    if ( self._ID922 == "rasta" )
    {
        var_10 = spawn( "script_model", var_8 + ( 0, 0, -3 ) );
        var_10 setmodel( "h2_weapon_at4" );
        var_10._ID65 = var_9 + ( 8, 0, 0 );
    }
    else
    {
        var_10 = spawn( "script_model", var_8 + ( 0, 0, -10 ) );
        var_10 setmodel( "h2_weapon_at4" );
        var_10._ID65 = var_9 + ( 10, 0, 0 );
    }

    var_0 waittill( "at4_fire" );
    self._ID52 = 1;

    if ( isalive( var_1 ) )
        var_1 kill();
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

    if ( isalive( level._ID50379 ) )
    {
        _ID42407::_ID26720( "at4", "back" );
        var_0 = getent( self._ID1191, "targetname" );
        var_1 = level._ID50379;
        var_2 = ( 0, 0, 64 );
        thread _ID46455( var_0, var_1, var_2 );
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
    if ( isalive( level._ID52487 ) )
    {
        _ID42407::_ID26720( "at4", "back" );
        var_0 = getent( self._ID1191, "targetname" );
        var_1 = level._ID52487;
        var_2 = ( 0, 0, 64 );
        thread _ID46455( var_0, var_1, var_2 );
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
    _ID42389::_ID36356( "bridge_area", ::_ID54432 );
    _ID42389::_ID36356( "woods", ::_ID49759 );
    _ID42389::_ID36356( "base", ::_ID45880 );
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

    if ( isplayernumber( self ) )
        return;

    switch ( self._ID1194 )
    {
        case "axis":
            if ( self._ID1244 == "dog" )
            {
                thread _ID48718();
                _ID50024( "dogs" );
            }
            else
            {
                thread _ID47494();
                self.preplaceweapononfunc = ::weaponswapcheckdetachflashlight;
                self.postplaceweapononfunc = ::weaponswapcheckattachflashlight;
                self.cheat._ID48626 = 1;
                self.cheat.wolfmode_presetmodelfunc = ::detach_flashlight_wolfmode;
                self.cheat.wolfmode_postsetmodelfunc = ::attach_flashlight_wolfmode;
            }

            self._ID764 = 0;
            _ID42389::_ID36352();
            _ID42389::_ID36353( ::_ID45230 );
            var_0["warning1"] = _ID42388::_ID12775;
            var_0["attack"] = ::_ID46061;
            _ID42389::_ID36369( var_0 );
            _ID42389::_ID36299();
            _ID42389::_ID36344();
            _ID42389::_ID36345();
            self._ID4867 = 2;
            self._ID411 = 0.5;
            self._ID412 = 0.1;
            thread _ID50697();
            thread _ID48045();
            thread _ID51228();
            _ID46697();

            if ( isdefined( self._ID922 ) && self._ID922 == "cqb_patrol" )
            {
                if ( isdefined( self._ID31391 ) )
                {
                    wait 0.05;
                    _ID42407::_ID7892();
                }

                thread _ID42407::_ID12467();
                self._ID38 = "alert";
                self._ID10998 = undefined;
                self._ID11025 = undefined;
                self._ID24424 = 0.8;
                thread _ID49888();
            }

            break;
    }

    endswitch( 2 )  case "allies" loc_6584 case "axis" loc_646B
}

weaponswapcheckdetachflashlight( var_0, var_1 )
{
    if ( !( isdefined( self._ID18273 ) && self._ID18273 ) )
        return;

    if ( var_0 == self._ID834 && var_1 != "right" )
        detach_flashlight();
}

weaponswapcheckattachflashlight( var_0, var_1 )
{
    if ( isdefined( self._ID18273 ) && self._ID18273 )
        return;

    if ( var_0 == self._ID834 && var_1 == "right" )
        _ID47494();
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

    if ( isplayernumber( self ) )
        return;

    switch ( self._ID1194 )
    {
        case "axis":
            if ( self._ID1244 == "dog" )
            {
                thread _ID48718();
                _ID50024( "dogs" );
            }

            if ( isdefined( self._ID922 ) && self._ID922 == "truck_guys" )
                _ID50024( "truck_guys" );
            else
                _ID50024( "bridge_stealth_guys" );

            _ID42389::_ID36352();
            self._ID764 = 0;
            var_0["warning1"] = _ID42388::_ID12775;
            var_0["attack"] = ::_ID46061;
            _ID42389::_ID36369( var_0 );
            _ID42389::_ID36299();
            _ID42389::_ID36344();
            _ID42389::_ID36345();
            self._ID4867 = 3;
            self._ID411 = 0.86;
            self._ID412 = 0.1;
            thread _ID48045();
            thread _ID50697();

            if ( isdefined( self._ID31496 ) && self._ID31496 == "cold_patrol" )
                _ID46697();

            break;
        case "allies":
            var_1 = [];
            var_1["hidden"] = ::_ID49638;
            var_1["spotted"] = ::_ID44138;
            _ID42389::_ID36247( var_1 );
    }
}

_ID45880()
{
    _ID42389::_ID36343();

    if ( isplayernumber( self ) )
        return;

    switch ( self._ID1194 )
    {
        case "axis":
            _ID42389::_ID36352();
            self._ID764 = 0;
            var_0["attack"] = ::_ID53493;
            _ID42389::_ID36369( var_0 );
            _ID42389::_ID36345();
            self._ID411 = 0.76;
            self._ID412 = 0.1;
            _ID42385::_ID36309( "doFlashBanged", ::base_flash_event_override_func );

            if ( isdefined( self._ID31496 ) && self._ID31496 == "cold_patrol" )
                _ID46697();

            break;
        case "allies":
            var_1 = [];
            var_1["hidden"] = ::_ID49638;
            var_1["spotted"] = ::_ID44138;
            _ID42389::_ID36247( var_1 );
    }
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

    if ( isdefined( self._ID22674 ) && self._ID22674 > 0 )
        return;

    while ( _ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
    {
        var_1 = "DRS_stop_idle";
        thread _ID42259::_ID3025( self, var_1 );

        if ( isdefined( level._ID30895["generic"]["signal_go"] ) )
            _ID42407::_ID18074( "go" );

        wait(randomfloatrange( 12, 20 ));

        if ( _ID42407::_ID13023( "_stealth_stance_handler" ) )
            _ID42407::_ID13031( "_stealth_stance_handler" );

        self notify( "stop_loop" );

        if ( !_ID42407::_ID13019( "dynamic_run_speed_stopped" ) )
            return;

        if ( isdefined( level._ID12262 ) )
        {
            var_2 = _ID42237::_ID28945( level._ID12262 );
            level thread _ID42407::_ID28871( var_2 );
        }

        if ( isdefined( level._ID30895["generic"]["signal_go"] ) )
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

    if ( isdefined( self._ID31463 ) )
        thread _ID42386::_ID12797( self._ID740 );

    self._ID452 = 400;
    self._ID377 = level._ID794;
    self setgoalentity( level._ID794 );
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

    while ( isdefined( self._ID322 ) && _ID42407::_ID13019( "_stealth_enabled" ) )
    {
        self setgoalpos( self._ID322._ID740 );
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
    self setgoalpos( self._ID740 );
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

        if ( isdefined( self._ID48051 ) )
        {
            thread _ID42407::_ID12467();
            thread _ID43806( self._ID48051 );
        }
    }

    self pushplayer( 1 );
    self._ID381 = 1;
    thread _ID42407::_ID32226( 0 );
    _ID42407::_ID32324( 0 );
    self._ID11575 = 1;
    self._ID464 = 0;
    self._ID14794 = undefined;
    self._ID511 = 1;
    self._ID513 = 1;
    setsaveddvar( "ai_friendlyfireblockduration", 0 );
    setsaveddvar( "ai_friendlysuppression", 0 );
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
    self pushplayer( 0 );
    self._ID513 = 0;
    setsaveddvar( "ai_friendlyfireblockduration", 2000 );
    setsaveddvar( "ai_friendlysuppression", 1 );
}

_ID46697()
{
    if ( !isdefined( level._ID49405 ) )
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
        self vehicle_setspeed( 0, 15 );
        return;
    }

    var_1 = _ID42237::_ID28945( var_0 );
    var_1 _ID42386::_ID12800();
    self vehicle_setspeed( 0, 15 );
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
    thread _ID51586();
    _ID42386::_ID2261( "animation", "wrapper", ::_ID46809 );
    var_0 = [];
    var_0["attack"] = ::_ID50854;
    _ID42389::_ID36369( var_0 );
    var_1 = [];
    var_1["explode"] = ::_ID48469;
    var_1["heard_scream"] = ::_ID48469;
    var_1["doFlashBanged"] = ::_ID48469;

    foreach ( var_4, var_3 in var_1 )
        _ID42385::_ID36309( var_4, var_3 );

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
    thread _ID43422();
    self._ID10998 = 0;
    self._ID11025 = 0;
    var_1 = distance( var_0._ID740, self._ID740 );
    self setgoalnode( var_0 );
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

        if ( isdefined( var_2 ) )
            thread _ID53246( var_2 );
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

        if ( isdefined( var_2 ) )
            thread _ID53246( var_2 );
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
    _ID46061();
}

_ID54116( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];

    if ( isdefined( var_1 ) )
        objective_setpointertextoverride( var_2._ID19286, var_1 );
    else
        objective_setpointertextoverride( var_2._ID19286 );
}

_ID48422( var_0, var_1, var_2, var_3 )
{
    _ID42237::_ID14400( var_0 );

    if ( !isdefined( level._ID25349 ) )
        level._ID25349 = [];

    var_4 = level._ID25349.size;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_5 = spawnstruct();
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
        objective_add( var_3._ID19286, var_3._ID36185, var_3._ID37557, var_3._ID740 );
        var_3._ID47886 = 1;
        objective_position( var_3._ID19286, var_3._ID49034 );
    }
    else if ( isdefined( var_2 ) && var_2 )
        objective_state_nomessage( var_3._ID19286, var_3._ID36185 );
    else
        objective_state( var_3._ID19286, var_3._ID36185 );

    if ( var_3._ID36185 == "done" )
        _ID42237::_ID14402( var_0 );
}

_ID45810( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID37557 = var_1;
    objective_string( var_2._ID19286, var_1 );
}

_ID54163( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];
    var_2._ID47623 = var_1;
    objective_current( var_2._ID19286, var_2._ID47623 );
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
        objective_string( var_3._ID19286, var_1 );
    else
        objective_string( var_3._ID19286, var_1, var_2 );
}

_ID54550()
{
    switch ( level._ID35897 )
    {
        case "start":
        case "default":
            _ID51242();
        case "slide":
        case "woods":
        case "midwoods":
        case "ridge":
        case "base":
        case "village":
            _ID49680();
            _ID48506();
        case "defend_sub":
            _ID43188();
    }
}

_ID51242()
{
    wait 15;
    _ID48422( "obj_sub_base", &"CONTINGENCY_OBJ_SUB_BASE", ( 0, 0, 0 ) );
    _ID51143( "obj_sub_base", "current" );
    _ID42237::_ID14413( "price_starts_moving" );
}

_ID49680()
{
    while ( !isdefined( level._ID28543 ) )
        wait 0.1;

    if ( level._ID35897 != "default" && level._ID35897 != "start" )
        _ID48422( "obj_sub_base", &"CONTINGENCY_OBJ_SUB_BASE", ( 0, 0, 0 ) );

    _ID51143( "obj_sub_base", "active", 1 );
    _ID48422( "obj_price", &"CONTINGENCY_OBJ_PRICE", level._ID28543._ID740, 1 );
    _ID51143( "obj_price", "current" );
    thread _ID48581( "obj_price", level._ID28543, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "base_entrance" );
    _ID51143( "obj_price", "done" );
    _ID51143( "obj_sub_base", "done", 1 );
}

_ID48506()
{
    _ID42237::_ID14413( "base_alerted" );
    wait 5;
    var_0 = ( -11742, 2368, 643 );
    var_1 = _ID42237::_ID16638( "obj_reach_split_off", "targetname" );

    if ( isdefined( var_1 ) )
        var_0 = var_1._ID740;

    _ID48422( "obj_reach", &"CONTINGENCY_OBJ_SUB_DOCK", var_0 );
    _ID51143( "obj_reach", "current" );
    _ID42237::_ID14413( "price_splits_off" );
    _ID51143( "obj_reach", "done" );
}

_ID43188()
{
    _ID42237::_ID14413( "price_splits_off" );
    var_0 = _ID42237::_ID16638( "obj_guard_house", "targetname" )._ID740;
    _ID48422( "obj_sub", &"CONTINGENCY_OBJ_DEFEND_SUB", var_0 + ( 0, 0, 48 ) );
    _ID51143( "obj_sub", "current" );
    _ID54116( "obj_sub", &"CONTINGENCY_OBJ_DEFEND" );
    _ID42237::_ID14413( "close_sub_hatch" );
    _ID51143( "obj_sub", "done" );
}

_ID52262()
{
    var_0 = 1;
    _ID42237::_ID14413( "base_entrance" );

    if ( isdefined( level._ID47678 ) )
    {
        var_1 = ( gettime() - level._ID47694 ) / 1000;
        var_2 = level._ID47678 - var_1;

        if ( var_2 < 90 )
            var_0 = 0;
        else
            var_0 = 1;
    }

    if ( var_0 )
        _ID42407::_ID4422( "partway1" );

    _ID42237::_ID14413( "player_is_halfway_to_sub" );

    if ( isdefined( level._ID47678 ) )
    {
        var_1 = ( gettime() - level._ID47694 ) / 1000;
        var_2 = level._ID47678 - var_1;

        if ( var_2 < 80 )
            var_0 = 0;
        else
            var_0 = 1;
    }

    if ( var_0 )
        _ID42407::_ID4422( "partway2" );

    _ID42237::_ID14413( "base_ending" );

    if ( isdefined( level._ID47678 ) )
    {
        var_1 = ( gettime() - level._ID47694 ) / 1000;
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
    if ( getdvar( "notimer" ) == "1" )
        return;

    var_0 = undefined;
    level._ID47678 = undefined;

    switch ( level._ID15361 )
    {
        case 0:
            return;
        case 1:
            return;
        case 2:
            level._ID47678 = 180;
            break;
        case 3:
            level._ID47678 = 120;
            break;
    }

    if ( isdefined( level._ID51109 ) )
        level._ID47678 = level._ID47678 - level._ID51109;

    thread _ID43270( level._ID47678 );
    level thread _ID49146( level._ID47678, &"CONTINGENCY_TIME_TO_ENTER_SUB" );
    level._ID47694 = gettime();
}

_ID49146( var_0, var_1, var_2 )
{
    if ( getdvar( "notimer" ) == "1" )
        return;

    thread _ID51530();
    level thread _ID43057( &"CONTINGENCY_SUB_TIMER_EXPIRED" );
    var_3 = 0;
    var_4 = _ID42237::_ID54738();

    switch ( var_4 )
    {
        case "LANGUAGE_PORTUGUESE":
        case "LANGUAGE_ITALIAN":
        case "LANGUAGE_FRENCH":
        case "LANGUAGE_RUSSIAN":
        case "LANGUAGE_RUSSIAN_PARTIAL":
            var_3 = 1;
            break;
    }

    _ID42313::_ID47327( var_0, var_1, var_2, var_3 );
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

        level._ID51109 = gettime() - level._ID36040;
        level._ID51109 = int( level._ID51109 * 0.001 );
        _ID21428();
        thread _ID51922();
        return;
    }

    while ( level._ID15361 > 1 )
        waittillframeend;

    _ID21428();
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
    level._ID794 freezecontrols( 1 );
    musicstop( 1 );
    setdvar( "ui_deadquote", var_0 );
    _ID42407::_ID23778();
    level notify( "kill_timer" );
}

_ID50024( var_0 )
{
    self setthreatbiasgroup( var_0 );
}

_ID51884()
{
    self endon( "death" );
    _ID42407::_ID13031( "_stealth_normal" );
    wait(randomfloatrange( 0.2, 0.8 ));
    playfxontag( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 1;
}

_ID47494()
{
    playfxontag( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = 1;
}

detach_flashlight()
{
    killfxontag( level._ID1426["flashlight"], self, "tag_flash" );
    self._ID18273 = undefined;
}

attach_flashlight_wolfmode()
{
    if ( isdefined( self._ID18273 ) && self._ID18273 )
    {
        waittillframeend;
        self.preplaceweapononfunc = ::weaponswapcheckdetachflashlight;
        self.postplaceweapononfunc = ::weaponswapcheckattachflashlight;
        playfxontag( level._ID1426["flashlight"], self, "tag_flash" );
    }
}

detach_flashlight_wolfmode()
{
    if ( isdefined( self._ID18273 ) && self._ID18273 )
    {
        self.preplaceweapononfunc = undefined;
        self.postplaceweapononfunc = undefined;
        killfxontag( level._ID1426["flashlight"], self, "tag_flash" );
        waittillframeend;
    }
}

_ID50761( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    self endon( "stop_shooting" );
    self endon( "death" );

    for (;;)
    {
        var_2 = _ID42407::_ID15617( self._ID740 );
        wait(randomfloatrange( 0.8, 1.3 ));

        while ( !_ID6739( var_2 ) )
            wait(randomfloatrange( 0.2, 0.6 ));

        if ( !var_1 )
        {
            _ID23693( var_2 );
            wait(randomfloatrange( 0.8, 2.4 ));
            _ID23693( var_2 );
            wait(randomfloatrange( 0.8, 2.4 ));
        }

        while ( _ID6739( var_2 ) )
        {
            _ID50256( var_2 );
            wait(randomfloatrange( 2, 3 ));
        }

        if ( var_0 )
        {
            if ( !_ID6739( var_2 ) )
            {
                self clearturrettargetent();
                self._ID48897 = 0;
                self notify( "stop_shooting" );
            }
        }
    }
}

_ID6739( var_0 )
{
    if ( distance( self._ID740, level._ID794._ID740 ) < level._ID45903 )
        return 0;

    var_1 = self gettagorigin( "tag_flash" );
    var_2 = var_0 geteye();

    if ( sighttracepassed( var_1, var_2, 0, self ) )
    {
        if ( isdefined( level._ID9847 ) )
        {

        }

        return 1;
    }
    else
        return 0;
}

_ID50256( var_0 )
{
    var_1 = randomintrange( 3, 5 );
    var_2 = 0.2;

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self setturrettargetent( var_0, _ID42237::_ID28976( 20 ) + ( 0, 0, 32 ) );
        self fireweapon();
        wait(var_2);
    }
}

_ID23693( var_0 )
{
    var_1 = anglestoforward( level._ID794._ID65 );
    var_2 = var_1 * 100;
    var_3 = var_2 + _ID42237::_ID28976( 50 );
    var_4 = randomintrange( 4, 6 );
    var_5 = 0.2;

    for ( var_6 = 0; var_6 < var_4; var_6++ )
    {
        var_7 = _ID42237::_ID28976( 15 ) + var_3 + ( 0, 0, 64 );
        self setturrettargetent( var_0, var_7 );
        self fireweapon();
        wait(var_5);
    }
}

_ID25868()
{
    var_0 = getent( "back_door_left", "targetname" );
    var_1 = getent( "door_clip_left", "targetname" );
    var_1 linkto( var_0 );
    var_2 = getent( "back_door_right", "targetname" );
    var_3 = getent( "door_clip_right", "targetname" );
    var_3 linkto( var_2 );
    var_0 rotateyaw( -125, 0.75, 0.25 );
    var_2 rotateyaw( 125, 0.75, 0.25 );
    var_1 connectpaths();
    var_3 connectpaths();
}

_ID45353()
{
    _ID42237::_ID14413( "open_hangar" );
    var_0 = getent( "door_l_1", "targetname" );
    var_1 = getent( "door_l_2", "targetname" );
    var_2 = getent( "door_r_1", "targetname" );
    var_3 = getent( "door_r_2", "targetname" );
    var_4 = getent( "col_l_1", "targetname" );
    var_5 = getent( "col_l_2", "targetname" );
    var_6 = getent( "col_r_1", "targetname" );
    var_7 = getent( "col_r_2", "targetname" );
    var_4 linkto( var_0 );
    var_5 linkto( var_1 );
    var_6 linkto( var_2 );
    var_7 linkto( var_3 );
    var_8 = 75;
    var_9 = -75;
    var_10 = -75;
    var_11 = 75;
    var_0 movey( var_8, 2, 0.5, 0.5 );
    var_2 movey( var_9, 2, 0.5, 0.5 );
    wait 2.5;
    var_0 linkto( var_1 );
    var_2 linkto( var_3 );
    var_1 movey( var_8, 2, 0.5, 0.5 );
    var_3 movey( var_9, 2, 0.5, 0.5 );
    _ID42237::_ID14413( "player_close" );
    var_12 = var_1._ID740 + ( 0, var_10 * 2, 75 );
    thread _ID42237::_ID27077( "scn_con_base_doors_close", var_12 );
    var_1 movey( var_10, 2, 0.5, 0.5 );
    var_3 movey( var_11, 2, 0.5, 0.5 );
    wait 2.5;
    var_0 unlink( var_1 );
    var_2 unlink( var_3 );
    var_0 movey( var_10, 2, 0.5, 0.5 );
    var_2 movey( var_11, 2, 0.5, 0.5 );
}

_ID45261()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = getent( "sat_dish", "targetname" );

    for (;;)
    {
        var_0 rotateyaw( 360, 25, 0.05, 0.05 );
        wait 25;
    }
}

_ID48486()
{
    level._ID794 endon( "death" );
    _ID42237::_ID14413( "gun_up" );
    setsaveddvar( "cg_gunDownAnimDelayTime", -1 );
}

_ID48320()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = getent( "propeller", "targetname" );

    for (;;)
    {
        var_0 rotateby( ( 360, 0, 0 ), 1 );
        wait 1;
    }
}

_ID50613()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = getent( "gyro", "targetname" );

    for (;;)
    {
        var_0 rotateyaw( 360, 1 );
        wait 1;
    }
}

_ID45159()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = getent( "intel_fan", "targetname" );

    for (;;)
    {
        var_0 rotateby( ( 360, 0, 0 ), 0.75 );
        wait 0.75;
    }
}

_ID51277()
{
    _ID42237::_ID14413( "player_on_ridge" );
    thread _ID51885();
    thread _ID45093();
    thread _ID43357();
}

_ID51885()
{
    var_0 = getent( "cabin1", "targetname" );
    var_1 = getent( "motor1", "targetname" );
    var_2 = getent( "animated_cable", "targetname" );
    var_2 linkto( var_0 );
    var_1 linkto( var_0 );
    wait 4;
    var_0 rotateyaw( -100, 10 );
    _ID42237::_ID14413( "base_entrance" );
    var_2 unlink( var_0 );
    var_2._ID3189 = "animated_cable";
    var_2 _ID42259::_ID32556();
    var_2 _ID42259::_ID3044( var_2, "crane_idle" );
}

_ID45093()
{
    var_0 = getent( "cabin2", "targetname" );
    var_1 = getent( "motor2", "targetname" );
    var_2 = getent( "hook2", "targetname" );
    var_3 = getent( "animated_cable_2", "targetname" );
    var_3 linkto( var_0 );
    var_1 linkto( var_0 );
    var_2 movez( 360, 7 );
    wait 13;
    var_2 linkto( var_0 );
    var_0 rotateyaw( -180, 27 );
    wait 35;
    var_0 rotateyaw( 180, 16 );
}

_ID43357()
{
    var_0 = getent( "cabin3", "targetname" );
    var_1 = getent( "motor3", "targetname" );
    var_2 = getent( "hook3", "targetname" );
    var_3 = getent( "animated_cable_3", "targetname" );
    var_3 linkto( var_0 );
    var_1 linkto( var_0 );
    var_2 linkto( var_0 );
    var_0 rotateyaw( -140, 19 );
    wait 19;
    var_2 unlink( var_0 );
    var_2 movez( -360, 7 );
    wait 14;
    var_2 movez( 360, 7 );
    var_2 linkto( var_0 );
    wait 10;
    var_0 rotateyaw( 140, 10 );
}

_ID51271()
{
    _ID42237::_ID14413( "turn_sat" );
    var_0 = getentarray( "roof_fan", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_3 = randomfloatrange( 0.5, 1.0 );
        var_2 thread _ID48657( var_3 );
    }
}

_ID48657( var_0 )
{
    for (;;)
    {
        self rotateyaw( 360, var_0 );
        wait(var_0);
    }
}

activate_ice_chunk()
{
    _ID42237::_ID14413( "player_close" );
    self._ID3189 = "ice_chunk";
    _ID42259::_ID32556();
    var_0 = "h2_gulag_ice_chunk_01_idle";

    if ( isdefined( self._ID70 ) )
        var_0 = self._ID70;

    var_1 = 0;

    if ( isdefined( self._ID922 ) )
        var_1 = float( self._ID922 );

    wait(var_1);
    _ID42259::_ID3044( self, var_0 );
}

animated_buoy()
{
    _ID42237::_ID14413( "player_close" );
    self._ID3189 = "animated_buoy";
    _ID42259::_ID32556();
    var_0 = "h2_contingency_buoy_idle";

    if ( isdefined( self._ID70 ) )
        var_0 = self._ID70;

    var_1 = 0;

    if ( isdefined( self._ID922 ) )
        var_1 = float( self._ID922 );

    wait(var_1);
    _ID42259::_ID3044( self, var_0 );
}

bush_trigger_manager()
{
    var_0 = getent( self._ID1191, "targetname" );
    var_0 _ID42407::_ID3428( "bushes" );
    var_1 = var_0 _ID42407::_ID16120( "bushes_idle" );
    var_0 setanim( var_1 );
    var_2 = randomfloat( 1 );
    var_0 setanimtime( var_1, var_2 );
    var_0 thread restoreidleanimation( var_1 );
    var_0 setanimlimited( var_0 _ID42407::_ID16120( "bushes_shuffle_add_loop_anim" ), 1.0, 0.0, 1.0 );
    var_3 = 75;
    var_4 = var_0 _ID42407::_ID16120( "bushes_shuffle_add_loop" );

    for (;;)
    {
        var_5 = undefined;
        self waittill( "trigger",  var_5  );

        if ( isplayernumber( var_5 ) || isai( var_5 ) )
        {
            playfx( _ID42237::_ID16299( "bushes_snow_reaction" ), self._ID740 );
            var_6 = 0.0;

            while ( var_5 istouching( self ) )
            {
                if ( isplayernumber( var_5 ) )
                    var_7 = length( var_5 getvelocity() );
                else
                    var_7 = length( var_5._ID1283 );

                var_6 = max( var_6 - 0.025, clamp( var_7, 0, var_3 ) / var_3 );
                var_0 setanim( var_4, var_6, 0.1 );
                waittillframeend;
            }
        }

        var_0 setanim( var_4, 0.0, 3.0 );
    }
}

restoreidleanimation( var_0 )
{
    for (;;)
    {
        self waittillmatch( "single anim",  "end"  );
        self setanim( var_0 );
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
        case "start":
            var_8 = var_1;
            break;
        case "slide":
            var_8 = var_2;
            break;
        case "woods":
            var_8 = var_3;
            break;
        case "midwoods":
            var_8 = var_4;
            break;
        case "ridge":
            var_8 = var_5;
            break;
        case "base":
            var_8 = var_6;
            break;
        case "defend_sub":
            var_8 = var_7;
            break;
        default:
            var_8 = var_0;
            break;
    }

    return var_8;
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
    var_0 = portal_group_start_point_initializer();

    foreach ( var_2 in var_0 )
        _ID42237::_ID14402( var_2 );
}

change_zfar_by_flags( var_0, var_1, var_2, var_3 )
{
    level endon( var_3 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        setculldist( var_1 );
        _ID42237::_ID14426( var_0 );
        setculldist( var_2 );
    }
}

reset_zfar_by_fov_to_default()
{
    _ID42237::_ID14413( "zfar_restore_default_flag" );
    level endon( "player_slid_down" );
    setsaveddvar( "r_lodFOVFixedScale", 1 );
    setculldist( 0 );
}

change_zfar_by_fov()
{
    _ID42237::_ID14413( "dynamic_zfar_flag" );
    level endon( "zfar_restore_default_flag" );
    setsaveddvar( "r_lodFOVFixedScale", 1.3 );
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

            var_3 = anglestoforward( level._ID794 getplayerangles() );
            var_4 = var_5._ID740 - level._ID794._ID740;
            var_3 = vectornormalize( _ID42407::_ID32530( var_3, 0 ) );
            var_4 = vectornormalize( _ID42407::_ID32530( var_4, 0 ) );
            var_6 = vectordot( var_3, var_4 );
            var_6 = float( ( var_6 + 1.0 ) * 0.5 );

            if ( var_6 >= 0.5 )
                var_7 = var_1;
            else
                var_7 = _ID42407::_ID22382( var_6, var_2, var_0 );

            setculldist( var_7 );
            waittillframeend;
        }

        setculldist( var_1 );
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
    setsaveddvar( "r_lodFOVScaleOverride", 1 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMaxAngle", 65 );
    setsaveddvar( "r_lodFOVScaleOverrideStartMinAngle", 55 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMaxAngle", 15 );
    setsaveddvar( "r_lodFOVScaleOverrideStopMinAngle", 0 );
    setsaveddvar( "r_lodFOVScaleOverrideAmount", 0.75 );
}

change_remote_missile_zfar()
{
    level endon( "death" );

    for (;;)
    {
        level._ID794 waittill( "player_is_controlling_UAV" );
        setsaveddvar( "r_lodFOVFixedScale", 0.2 );
        _ID42237::_ID14388( "portal_group_base_building_33_flag" );

        if ( _ID42237::_ID14385( "leaving_village" ) )
        {
            _func_31c( 1 );
            _func_31c( 5 );
            _func_31c( 6 );
        }

        _func_31c( 2 );
        _func_31c( 3 );
        var_0 = getentarray( "hanging_object", "targetname" );

        foreach ( var_2 in var_0 )
        {
            if ( isdefined( var_2._ID31529 ) && var_2._ID31529 == "icicle_hide" )
                var_2 hide();
        }

        level._ID794 waittill( "exiting_uav_control" );
        setsaveddvar( "r_lodFOVFixedScale", 1 );
        _ID42237::_ID14402( "portal_group_base_building_33_flag" );
        _func_31b( 2 );
        _func_31b( 3 );
        var_0 = getentarray( "hanging_object", "targetname" );

        foreach ( var_2 in var_0 )
        {
            if ( isdefined( var_2._ID31529 ) && var_2._ID31529 == "icicle_hide" )
                var_2 show();
        }
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
    _func_31c( var_1 );
    _ID42237::_ID14413( var_0 );
    _func_31b( var_1 );
}

hanging_parachute()
{
    var_0 = getent( "hanging_parachute", "targetname" );
    var_0._ID3189 = "parachute";
    var_0 _ID42259::_ID32556();
    var_1 = var_0 _ID42407::_ID16120( "hanging_idle" );
    var_0 setanim( var_1 );
}

swap_to_base_uav()
{
    _ID42237::_ID14413( "leaving_village" );
    level._ID794 waittill( "starting_predator_drone_control" );
    level._ID49526 delete();
    level._ID49526 = _ID42411::_ID35196( "third_uav" );
    level._ID49526 playloopsound( "uav_engine_loop" );

    if ( !isdefined( level._ID39406 ) )
    {
        level._ID39406 = spawn( "script_model", level._ID49526._ID740 );
        level._ID39406 setmodel( "tag_origin" );
    }

    thread _ID49309();

    if ( !isdefined( level.uav_target ) )
        level.uav_target = spawn( "script_origin", level._ID49526._ID740 );

    level.uav_target._ID740 = level._ID49526._ID740;
    level.uav_target linkto( level._ID49526 );
}

animated_bushes_setup()
{
    level endon( "player_slid_down" );
    var_0 = getentarray( "animated_bushes_start", "script_noteworthy" );
    var_1 = getentarray( "animated_bushes_forest", "script_noteworthy" );

    foreach ( var_3 in var_1 )
        var_3 hide();

    for (;;)
    {
        _ID42237::_ID14413( "animated_bushes_flag" );

        foreach ( var_3 in var_0 )
            var_3 hide();

        foreach ( var_3 in var_1 )
            var_3 show();

        _ID42237::_ID14426( "animated_bushes_flag" );

        foreach ( var_3 in var_0 )
            var_3 show();

        foreach ( var_3 in var_1 )
            var_3 hide();
    }
}

animated_trees_setup()
{
    level endon( "player_slid_down" );
    var_0 = [];
    var_1 = getentarray( "script_model", "classname" );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID31388 ) && var_3._ID31388 == "animated_trees" )
            var_0 = _ID42237::_ID3293( var_0, var_3 );
    }

    foreach ( var_6 in var_0 )
        var_6 hide();

    for (;;)
    {
        _ID42237::_ID14413( "animated_trees_flag" );

        foreach ( var_6 in var_0 )
            var_6 show();

        _ID42237::_ID14426( "animated_trees_flag" );

        foreach ( var_6 in var_0 )
            var_6 hide();
    }
}

safe_from_btr_failproof()
{
    var_0 = getent( "btr_hurt", "targetname" );
    var_1 = var_0._ID740;
    var_0._ID740 = var_0._ID740 + ( 0, 0, -1000 );
    _ID42237::_ID14413( "btr_hurt_flag" );
    var_0._ID740 = var_1;
}

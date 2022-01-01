// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\dcburning_mission_select_cam::_ID50320();
        return;
    }

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        maps\dcburning_beautiful_corner::_ID616();
        return;
    }

    _ID42411::_ID6235( "script_vehicle_btr80_low", "spotlight", "TAG_FRONT_LIGHT_RIGHT", "fx/misc/spotlight_btr80_dcburning", "spotlight", 0.2 );
    _ID44217();
    setsaveddvar( "fx_cast_shadow", 0 );
    var_0 = undefined;
    setdynamicdvar( "cheap_spot", "1" );
    _ID45768();
    _ID46668::_ID616();
    _ID54230::_ID616( "h2_vehicle_blackhawk_minigun_hero_exterior", undefined, "script_vehicle_blackhawk_minigun" );
    level._ID45155 = [];
    level._ID44271 = getentarray( "interior_bcs", "targetname" );
    level._ID48952 = getentarray( "exterior_bcs", "targetname" );
    _ID42237::_ID3350( level._ID48952, _ID42237::_ID38863 );
    _ID42237::_ID3350( level._ID44271, _ID42237::_ID38863 );
    level._ID53489 = getent( "monument_target", "targetname" );
    level._ID44323 = getentarray( "latvee_spotlight_targets", "targetname" );
    level._ID51057 = [];
    level._ID50946 = 4;
    level._ID43469 = 0;
    level._ID44957 = 6000;
    level._ID50161 = level._ID44957 * level._ID44957;
    level._ID47175 = 1;
    level._ID46370 = 3;
    level._ID50184 = 100;
    level._ID47460 = 90000;
    level._ID51365 = 0;
    level._ID47441 = 1;
    level._ID48957 = 0;
    level._ID52873 = [];
    level._ID49736 = 3;
    level._ID47026 = [];
    level._ID49081 = [];
    level._ID50122 = [];
    setdynamicdvar( "bog_camerashake", "1" );
    level._ID35278 = ::_ID53576;
    level._ID12029 = ::_ID46754;
    level._ID43315 = 262144;
    setdynamicdvar( "dc_debug", "0" );
    setdynamicdvar( "dc_dialog", "1" );
    level._ID8760["25"] = cos( 25 );
    level._ID8760["35"] = cos( 35 );
    level._ID8760["45"] = cos( 45 );
    level._ID8760["60"] = cos( 60 );
    level._ID8760["90"] = cos( 90 );
    level._ID8760["180"] = cos( 180 );
    level._ID48681 = level._ID8760["35"];
    var_1 = getentarray( "trigger_multiple", "classname" );
    level._ID46473 = [];

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID922 ) && getsubstr( var_3._ID922, 0, 10 ) == "colornodes" )
            level._ID46473 = _ID42237::_ID3293( level._ID46473, var_3 );
    }

    _ID46797();
    level._ID54335 = 2000;
    level._ID52661 = 0.05;
    level._ID43124 = 0.4;
    level._ID51047 = 1;
    level._ID44935 = _ID42260::_ID45726;
    _ID42407::_ID1951( "debug", ::_ID46468, "debug" );
    _ID42407::_ID1951( "elevator_bottom", ::_ID44920, "elevator_bottom" );
    _ID42407::_ID1951( "elevator_top", ::_ID43762, "elevator_top" );
    _ID42407::_ID1951( "crows_nest", ::_ID43208, "crows_nest" );
    _ID42407::_ID1951( "crows_nest_armor", ::_ID47843, "crows_nest_armor" );
    _ID42407::_ID1951( "barrett", ::_ID53971, "barrett" );
    _ID42407::_ID1951( "to_roof", ::_ID44006, "to_roof" );
    _ID42407::_ID1951( "roof", ::_ID35930, "roof" );
    _ID42407::_ID1951( "heliride2", ::_ID43871, "heliride2" );
    _ID42407::_ID1951( "crash", ::_ID35711, "crash" );
    _ID42407::_ID10126( ::_ID47474 );
    maps\dc_crashsite::_ID616();
    _ID53918::_ID616();
    _ID42265::_ID616();
    _ID42287::_ID521();
    _ID46630::_ID616();
    maps\dcburning_lighting::_ID616();
    _ID44311::_ID616();
    _ID54152::_ID616();
    _ID45306::_ID616();
    _ID52657::_ID616();
    _ID43691::_ID616();
    _ID42323::_ID616();
    _ID45285::_ID49852();
    _ID42337::_ID616();
    _ID44133::_ID521();
    _ID46436::_ID521();
    maps\dcburning_aud::_ID616();
    thread _ID45551::_ID51566();
    maps\dcburning_anim::_ID616();
    thread _ID54017::_ID49310( "explosion_mortar" );
    thread _ID54017::_ID53823();
    _ID42237::_ID3350( getentarray( "animated_vehicle", "script_noteworthy" ), ::_ID53415 );
    _ID42237::_ID3350( getentarray( "vehicles_crowsnest_defend", "targetname" ), ::vehicles_crowsnest_defend_animated_think );
    _ID42237::_ID3350( getvehiclenodearray( "plane_bomb", "script_noteworthy" ), _ID42549::_ID26737 );
    _ID49693();
    achievement_bird_hunter_init();
    thread performance_interior_exterior_transition();
    thread heli_ride_perf_helpers();
    thread misc_model_group_think();
    thread cloth_wibble_think();
    setsaveddvar( "r_corpseRemovalThreshold", "0.65" );
    _ID42407::_ID1895( "grenade_launcher", &"SCRIPT_LEARN_GRENADE_LAUNCHER", ::_ID51178 );
    _ID42407::_ID1895( "javelin_pickup", &"DCBURNING_HINT_JAVELIN_PICKUP", ::_ID48000 );
    _ID42407::_ID1895( "javelin_switch", &"DCBURNING_HINT_JAVELIN_SWITCH", ::_ID43218, undefined, "medium_background" );
    _ID42407::_ID1895( "javelin_shoot", &"DCBURNING_HINT_JAVELIN_FIRE", ::_ID51222, undefined, "medium_background" );
    _ID42237::_ID3350( getentarray( "destructible_trigger", "targetname" ), ::_ID48110 );
    thread _ID44211();
    _ID18542();
    _ID50972();
    setsaveddvar( "r_lightGridEnableTweaks", 0 );
    setsaveddvar( "r_lightGridIntensity", 1.2 );
    setsaveddvar( "r_lightGridContrast", 0 );
    thread _ID47940();
    thread _ID22343();
    _ID53488();
    _ID42237::_ID3350( getentarray( "ai_cleanup_trigger", "targetname" ), ::_ID43809 );
    _ID42237::_ID3350( getentarray( "redshirt_trigger", "targetname" ), ::_ID48960 );
    _ID42237::_ID3350( getentarray( "rpg_targets", "targetname" ), ::_ID50637 );
    _ID42237::_ID3350( getentarray( "dest_cheap", "targetname" ), ::_ID48611 );
    createthreatbiasgroup( "player" );
    createthreatbiasgroup( "ignored" );
    createthreatbiasgroup( "oblivious" );
    level._ID794 setthreatbiasgroup( "player" );
    setignoremegroup( "allies", "oblivious" );
    setignoremegroup( "axis", "oblivious" );
    setignoremegroup( "player", "oblivious" );
    setignoremegroup( "oblivious", "allies" );
    setignoremegroup( "oblivious", "axis" );
    setignoremegroup( "oblivious", "oblivious" );
    _ID42237::_ID3350( getentarray( "compassTriggers", "targetname" ), ::_ID48500 );
    var_5 = _ID42413::_ID1473();
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_ID47372 );
    _ID42237::_ID3350( getentarray( "ai_ambient", "script_noteworthy" ), _ID42407::_ID1947, ::_ID53409 );
    _ID42237::_ID3350( getentarray( "ai_ambient_prop", "script_noteworthy" ), _ID42407::_ID1947, ::_ID47783 );
    _ID42237::_ID3350( getentarray( "monitor_destruct1", "targetname" ), ::_ID46656 );
    _ID42237::_ID3350( getentarray( "monitor_destruct2", "targetname" ), ::_ID54547 );
    _ID42237::_ID3350( getentarray( "monitor_destruct_on1", "targetname" ), ::_ID48761 );
    _ID42237::_ID3350( getentarray( "monitor_destruct_on2", "targetname" ), ::_ID43437 );
    _ID42237::_ID3350( getentarray( "monitor_destruct_on3", "targetname" ), ::_ID50807 );
    _ID42237::_ID3350( getentarray( "wired_light", "targetname" ), ::scripted_anim_props, "light_idle", "wired_light" );
    _ID42237::_ID3350( getentarray( "wired_light_broken", "targetname" ), ::scripted_anim_props, "light_idle_broken", "wired_light" );
    getent( "suspended_light1", "targetname" ) thread scripted_anim_props( "light_idle1", "suspended_light" );
    getent( "suspended_light2", "targetname" ) thread scripted_anim_props( "light_idle2", "suspended_light" );
    getent( "suspended_light3", "targetname" ) thread scripted_anim_props( "light_idle3", "suspended_light" );
    getent( "suspended_light4", "targetname" ) thread scripted_anim_props( "light_idle4", "suspended_light" );
    getent( "suspended_light5", "targetname" ) thread scripted_anim_props( "light_idle5", "suspended_light" );
    _ID42237::_ID3350( getentarray( "curtain_red_wind", "targetname" ), ::scripted_anim_props, "curtains_wind", "curtains" );
    _ID42237::_ID3350( getentarray( "curtain_closed_wind", "targetname" ), ::scripted_anim_props, "curtains_closed_wind_calm", "curtains" );
    _ID42237::_ID3350( getentarray( "curtain_open_idle", "targetname" ), ::scripted_anim_props, "curtains_wind_calm", "curtains" );
    _ID42407::_ID3343( "door_breaker", ::_ID44403 );
    _ID42407::_ID3344( "hostiles_commerce_samsite", ::_ID44531 );
    _ID42407::_ID3344( "commerce_sector_2_guys", ::_ID49619 );
    _ID42407::_ID3344( "crowsnest_assault_guys_wave1", ::_ID53643 );
    _ID42407::_ID3344( "commerce_flare_guys", ::_ID52458 );
    _ID42407::_ID3344( "ww2_heli", ::_ID51816 );
    _ID42407::_ID3343( "no_suppress", ::_ID44297 );
    _ID42407::_ID3343( "friendly_fodder", ::_ID45378 );
    _ID42407::_ID3343( "enemy_spotter_prone", ::_ID48491 );
    _ID42407::_ID3343( "enemy_spotter_crouched", ::_ID48491 );
    _ID42407::_ID3343( "enemy_javelin", ::_ID48491 );
    _ID42407::_ID3343( "enemy_stinger", ::_ID48491 );
    _ID42407::_ID3343( "waittill_damaged_and_set_flag", ::_ID48566 );
    _ID42407::_ID3343( "invisible_patrol_fodder", ::_ID46951 );
    _ID42407::_ID3343( "at4_friendly", ::_ID48916 );
    _ID42407::_ID3343( "player_seek", ::_ID43811 );
    _ID42407::_ID3343( "roof_escape_redshirts", ::_ID47467 );
    _ID42407::_ID3343( "redshirt", ::_ID45840 );
    _ID42407::_ID3343( "glass_building_enemies", ::_ID49892 );
    _ID42407::_ID3343( "ambush", ::_ID53905 );
    _ID42407::_ID3343( "laatpv_gunner", ::_ID47521 );
    _ID42407::_ID3344( "commerce_rpg_upper", ::_ID49396 );
    _ID42407::_ID3344( "hostiles_courtyard", ::ai_hostiles_courtyard );
    var_6 = getspawnerteamarray( "axis" );
    var_7 = [];

    foreach ( var_9 in var_6 )
    {
        if ( !isdefined( var_9._ID31388 ) )
            continue;

        var_7[var_7.size] = var_9;
    }

    _ID42407::_ID3342( var_7, ::_ID53477 );
    thread ai_force_ignore_supression();
    thread ai_restore_ignore_supression();
    thread setsunlight_dcburning();
    thread moving_fire_lights_setup();
}

_ID49693()
{
    _ID42237::_ID14400( "slamraam_c4_detonated" );
    _ID42237::_ID14400( "stop_elevator_doors" );
    _ID42237::_ID14400( "difficulty_initialized" );
    _ID42237::_ID14400( "can_talk" );
    _ID42237::_ID14402( "can_talk" );
    _ID42272::_ID33575( "compass_map_dcburning" );
    _ID42237::_ID14400( "obj_follow_sgt_macey_given" );
    _ID42237::_ID14400( "obj_follow_sgt_macey_complete" );
    _ID42237::_ID14400( "obj_commerce_given" );
    _ID42237::_ID14400( "obj_commerce_complete" );
    _ID42237::_ID14400( "obj_commerce_defend_snipe_given" );
    _ID42237::_ID14400( "obj_commerce_defend_snipe_complete" );
    _ID42237::_ID14400( "obj_commerce_defend_crow_given" );
    _ID42237::_ID14400( "obj_commerce_defend_crow_complete" );
    _ID42237::_ID14400( "obj_commerce_defend_javelin_given" );
    _ID42237::_ID14400( "obj_commerce_defend_javelin_complete" );
    _ID42237::_ID14400( "obj_rooftop_given" );
    _ID42237::_ID14400( "obj_rooftop_complete" );
    _ID42237::_ID14400( "obj_heli_mount_given" );
    _ID42237::_ID14400( "obj_heli_mount_complete" );
    _ID42237::_ID14400( "obj_heli_ride_given" );
    _ID42237::_ID14400( "bunker_door_closed" );
    _ID42237::_ID14400( "delete_bunker_mortars" );
    _ID42237::_ID14400( "seaknight_drones_loaded" );
    _ID42237::_ID14400( "seaknight_drones2_loaded" );
    _ID42237::_ID14400( "bradley_can_start_firing" );
    _ID42237::_ID14400( "latvee_commerce_left_done_with_spotlight" );
    _ID42237::_ID14400( "javelin_is_owning_fools" );
    _ID42237::_ID14400( "second_abrams_killed" );
    _ID42237::_ID14400( "commerce_rappelers_inserting" );
    _ID42237::_ID14400( "commerce_rappelers_rappeling" );
    _ID42237::_ID14400( "commerce_rappelers_done" );
    _ID42237::_ID14400( "trenches_dialogue_done" );
    _ID42237::_ID14400( "lav_is_suppressing" );
    _ID42237::_ID14400( "leader_orders_everyone_across_street" );
    _ID42237::_ID14400( "atrium_guys_at_end_of_anim" );
    _ID42237::_ID14400( "commerce_first_floor_enemies_dead" );
    _ID42237::_ID14400( "courtyard_has_been_cleared" );
    _ID42237::_ID14400( "ask_bradley_to_stop_firing" );
    _ID42237::_ID14400( "mezzanine_top_has_been_cleared" );
    _ID42237::_ID14400( "floor_four_has_been_cleared" );
    _ID42237::_ID14400( "player_shot_at_samsite_guys" );
    _ID42237::_ID14400( "commerce_samsite_revealed" );
    _ID42237::_ID14400( "dead_tarp_guys" );
    _ID42237::_ID14400( "samsite_allow_C4_spawn" );
    _ID42237::_ID14400( "fifth_floor_guys_damaged" );
    _ID42237::_ID14400( "start_music_to_crowsnest" );
    _ID42237::_ID14400( "macey_tells_you_to_move_to_crows" );
    _ID42237::_ID14400( "foley_is_done_talking" );
    _ID42237::_ID14400( "player_shot_at_crowsnest_guys" );
    _ID42237::_ID14400( "crowsnest_has_been_cleared" );
    _ID42237::_ID14400( "make_seaknights_take_off" );
    _ID42237::_ID14400( "can_start_crow_nags" );
    _ID42237::_ID14400( "only_2_sniper_enemies_remaining" );
    _ID42237::_ID14400( "player_killed_enough" );
    _ID42237::_ID14400( "latvee_spotlight_deleted" );
    _ID42237::_ID14400( "perimeter_enemies_have_retreated" );
    _ID42237::_ID14400( "start_crow_armor_sequence" );
    _ID42237::_ID14400( "player_has_javelin" );
    _ID42237::_ID14400( "only_1_javelin_enemies_remaining" );
    _ID42237::_ID14400( "only_2_javelin_enemies_remaining" );
    _ID42237::_ID14400( "monument_dummy_target_setup" );
    _ID42237::_ID14400( "crowsnest_sequence_finished" );
    _ID42237::_ID14400( "player_has_killed_at_least_one_javelin_target" );
    _ID42237::_ID14400( "roof_breach_complete" );
    _ID42237::_ID14400( "roof_littlebird_lifted_off" );
    _ID42237::_ID14400( "player_heli_spawned" );
    _ID42237::_ID14400( "player_heli_ready_to_take_off" );
    _ID42237::_ID14400( "roof_heli_about_to_be_owned" );
    _ID42237::_ID14400( "roof_heli_owned" );
    _ID42237::_ID14400( "player_getting_on_minigun" );
    _ID42237::_ID14400( "player_has_used_minigun" );
    _ID42237::_ID14400( "blackhawk_landed" );
    _ID42237::_ID14400( "rooftop_run_dialogue_finished" );
    _ID42237::_ID14400( "littlebird_crash_path_end" );
    _ID42237::_ID14400( "littlebird_crash_path_end2" );
    _ID42237::_ID14400( "player_starting_fastrope" );
    _ID42237::_ID14400( "player_fastroped_out" );
    _ID42237::_ID14400( "player_facing_blackhawk" );
    _ID42237::_ID14400( "player_crash_starting" );
    _ID42237::_ID14400( "achievement_bird_hunter_done" );
    _ID42237::_ID14400( "flag_reduce_sunlight" );
}

_ID44217()
{
    var_0 = getentarray();

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2._ID170, "trigger_multiple_bcs" ) )
            var_2 delete();
    }
}

_ID53488()
{
    var_0 = getentarray( "script_origin", "classname" );
    var_1 = _ID42407::_ID3317( var_0, level._ID36707 );
    _ID42237::_ID3350( var_1, ::_ID44414 );
}

_ID44414()
{
    if ( !isdefined( self._ID31190 ) )
        return;

    _ID42237::_ID14400( self._ID31190 );

    if ( getdvar( "dc_debug" ) == "1" )
        thread _ID42407::_ID9904( self._ID31190, self._ID740, 9999 );

    self waittill( "trigger" );
    _ID42237::_ID14402( self._ID31190 );

    if ( getdvar( "dc_debug" ) == "1" )
        iprintlnbold( "flag: " + self._ID31190 + " has been set" );
}

_ID47474()
{
    _ID42475::_ID34575( "start_debug_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_bunker" );
    thread _ID48277();
}

_ID46468()
{
    _ID42475::_ID34575( "start_debug_checkpoint" );
    _ID45905( "elevator_bottom" );
    maps\dcburning_lighting::_ID51844( "dcburning_bunker" );
}

_ID44920()
{
    _ID42475::_ID34575( "start_elevator_bottom_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_commerce" );
    _ID45905( "elevator_bottom" );
    thread _ID49099();
    _ID42237::_ID14402( "obj_commerce_given" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID38942( "colornodes_commerce_bot_to_top", "script_noteworthy", 1 );
    thread _ID43857();
}

_ID43762()
{
    _ID42475::_ID34575( "start_elevator_top_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_commerce" );
    _ID45905( "elevator_top" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "player_at_commerce_crows_floor" );
    thread _ID46175();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID43208()
{
    _ID42475::_ID34575( "start_crows_nest_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _ID45905( "crows_nest" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "player_approaching_crowsnest" );
    _ID42237::_ID14402( "player_approaching_crowsnest2" );
    thread _ID43417();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID47843()
{
    _ID42475::_ID34575( "start_crows_nest_armor_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _ID45905( "crows_nest" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "start_crow_armor_sequence" );
    _ID42237::_ID14402( "player_approaching_crowsnest" );
    _ID42237::_ID14402( "player_approaching_crowsnest2" );
    thread _ID51890();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID53971()
{
    _ID42475::_ID34575( "start_barrett_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _ID45905( "crows_nest" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    var_0 = _ID51469();
    var_1 = var_0[0];
    var_2 = var_0[1];
    var_clear_2
    thread _ID47433( var_1, var_2 );
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID44006()
{
    _ID42475::_ID34575( "start_to_roof_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _ID45905( "to_roof" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "only_2_javelin_enemies_remaining" );
    _ID42237::_ID14402( "crowsnest_sequence_finished" );
    thread _ID43705();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID35930()
{
    _ID42475::_ID34575( "start_roof_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _ID45905( "Roof" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "off" );
    _ID42237::_ID14402( "player_headed_to_roof" );
    _ID42237::_ID14402( "player_approaching_outer_balcony" );
    _ID47491( "trigger_dummy_roof_colornode" );
    thread _ID50242();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID43871()
{
    _ID42475::_ID34575( "start_heli_ride2_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_heliride_takeoff" );
    var_0 = _ID42237::_ID16638( "player_heli_ww2_end", "script_noteworthy" );
    var_0._ID65 = ( 0, 256, 0 );
    _ID49059( var_0 );
    level._ID52945._ID50372 = level._ID794;
    level._ID52945._ID50372 disableweapons( 1 );
    level._ID52945 attach( level._ID30904["viewhands"], "tag_barrel" );
    level._ID52945 thread _ID54230::_ID43238();
    level._ID52945._ID23875 = _ID42407::_ID35028( "minigun_dummy", level._ID52945._ID740, level._ID52945._ID65 );
    level._ID52945._ID23875 hide();
    level._ID52945._ID23875 linkto( level._ID52945 );
    level._ID52945 thread _ID45306::_ID49378();
    thread _ID53939();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID35711()
{
    _ID42475::_ID34575( "start_crash_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_helicrash" );
    thread maps\dc_crashsite::_ID49092();
    thread maps\dcburning_aud::intro_heli_sequence_snd();
    wait 0.1;
    _ID42237::_ID14402( "player_crash_done" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID48277()
{
    var_0 = getent( "player_gun_down", "targetname" );
    var_0 thread _ID47051();
    thread _ID44336();
    _ID45905( "Bunker" );
    thread _ID52072();
    thread _ID43078();
    thread _ID47314();
    thread _ID52371();
    thread _ID53750();
    thread _ID49099();
    thread _ID44179();
    thread _ID51286();
    thread _ID54725();
    thread _ID43067();
    thread _ID43166();
    thread _ID50872();
    thread _ID43579();
    thread _ID45863();
    thread _ID54617();
    thread _ID47551();
    thread _ID43075();
    thread animate_wires();
    thread monitor_bunker_exit_no_team_move();
    _ID42237::_ID14413( "player_commerce_trench_02" );
    thread _ID43857();
}

monitor_bunker_exit_no_team_move()
{
    _ID42237::_ID14413( "player_bunker_walk_03" );
    level._ID44035._ID707 = 1;
    level._ID49792._ID707 = 1;
    level._ID48061._ID707 = 1;
    _ID42237::_ID14413( "player_leaving_bunker" );
    level._ID44035._ID707 = 0;
    level._ID49792._ID707 = 0;
    level._ID48061._ID707 = 0;
}

_ID47051()
{
    level endon( "bunker_door_closed" );

    for (;;)
    {
        _ID42237::_ID14413( "bunker_gun_down" );
        setsaveddvar( "cg_gunDownAnimDelayTime", 250 );
        _ID42237::_ID14426( "bunker_gun_down" );
        setsaveddvar( "cg_gunDownAnimDelayTime", -1 );
    }
}

_ID43078()
{
    thread _ID42407::_ID24577( "mus_dcburning_intropad", 87 );
    _ID42237::_ID14413( "player_bunker_walk_03" );
    _ID42407::_ID24584( 5 );
    wait 5.1;
    _ID42407::_ID24587( "mus_dcburning_intropeak" );
    _ID42475::_ID34575( "start_music_intropeak_mix" );
}

_ID47314()
{
    _ID42237::_ID14413( "player_commerce_past_desks" );
    level._ID52549 = _ID42411::_ID35200( "vehicles_commerce_ambient" );
}

_ID52371()
{
    if ( getdvarint( "r_dcburning_culldist" ) == 1 )
        setculldist( 28500 );

    thread _ID48994();
    _ID42407::_ID14543( "allies" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    level._ID44035 thread _ID51021( "bunker_radio_door_guy" );
    level._ID49792 thread _ID51021( "gun_toss_guy2" );
    level._ID48061 thread _ID51021( "gun_toss_guy1" );
    var_0 = _ID42407::_ID3339( getentarray( "bunker_laptop_guys", "targetname" ) );
    thread _ID45387();
    var_1 = _ID42407::_ID3339( getentarray( "bunker_hallway_injured_guys", "targetname" ) );
    var_2 = _ID42407::_ID3339( getentarray( "bunker_hallway_injured_guys2", "targetname" ) );
    var_3 = _ID42407::_ID3339( getentarray( "bunker_sleeping_guys", "targetname" ) );
    var_4 = _ID42407::_ID3339( getentarray( "bunker_doctor_and_patient", "targetname" ) );
    thread create_medic_props( var_4 );
    var_5 = getent( "bunker_hallway_injured_carrier", "targetname" );
    var_6 = var_5 _ID42407::_ID35014();
    var_7 = _ID42407::_ID3339( getentarray( "bunker_sitting_guys", "targetname" ) );
    var_8 = _ID42407::_ID3339( getentarray( "bunker_injured_soldier", "targetname" ) );
    var_9 = _ID42407::_ID3339( getentarray( "bunker_wounded_check", "targetname" ) );
    _ID42237::_ID14413( "introscreen_complete" );
    _ID42237::_ID14413( "player_bunker_comm_room" );
    _ID38942( "colornodes_trenches", "script_noteworthy", 1 );
    _ID42237::_ID14413( "player_approaching_bunker_exit_hall" );
    thread _ID50558();
    var_10 = getentarray( "drones_flood_monument", "targetname" );
    thread _ID52188( var_10, "drones_flood_monument" );
    thread _ID44875();

    if ( getdvarint( "r_dcburning_culldist" ) != 1 )
    {
        level._ID52924 = _ID42411::_ID35200( "helis_ambient_trenches" );
        level._ID46159 = _ID42411::_ID35200( "helis_ambient_capitol" );
    }

    level._ID50985 = 8;
    level._ID50128 = 10;
    thread _ID54017::_ID43738( 2 );
    thread _ID54017::_ID43738( 3 );
    thread _ID54017::_ID43738( 4 );
    var_11 = _ID42407::_ID12076( getent( "drone_warrior_hydrant", "targetname" ) );
    var_11 thread _ID44096();
    var_12 = getent( "seaknight_loader_start", "targetname" );
    var_12 notify( "spawn" );
    var_13 = getent( "seaknight_loader_start2", "targetname" );
    var_13 notify( "spawn" );
    var_12 thread maps\dcburning_aud::_ID46717( "scn_seaknight_loader_taking_off_02" );
    var_13 thread maps\dcburning_aud::_ID46717( "scn_seaknight_loader_taking_off_01" );
    var_14 = _ID42411::_ID35196( "littlebird_monument" );
    var_15 = _ID42407::_ID3339( getentarray( "littlebird_monument_riders_left", "targetname" ) );
    var_14 thread maps\dcburning_aud::littlebird_monument_idle_sound();
    _ID42237::_ID3350( var_15, ::_ID48332 );
    _ID42237::_ID3350( var_15, _ID42407::_ID22746 );
    var_16 = _ID42407::_ID3339( getentarray( "littlebird_monument_riders_right", "targetname" ) );
    _ID42237::_ID3350( var_16, ::_ID48332 );
    _ID42237::_ID3350( var_16, _ID42407::_ID22746 );
    var_17 = _ID42237::_ID16638( "pickup_node_before_stage_monument", "script_noteworthy" );
    var_14 _ID42411::_ID32450( var_17, var_15, "left" );
    var_14 _ID42411::_ID32450( var_17, var_16, "right" );
    var_18 = getentarray( "littlebird_monument_riders_pilot", "script_noteworthy" );
    _ID42237::_ID3350( var_18, _ID42407::_ID22746 );
    var_19 = [];
    var_20 = getentarray( "monument_spotters", "targetname" );
    var_21 = _ID42407::_ID3339( var_20, 1 );
    var_19 = _ID42407::_ID3317( var_19, var_21 );
    _ID42237::_ID14413( "player_approaching_monument" );
    var_5 = getent( "drones_seaknight", "targetname" );
    thread _ID47042( var_5, "seaknight_drones_loaded", "player_exiting_start_trench2" );
    var_5 = getent( "drones_seaknight2", "targetname" );
    thread _ID47042( var_5, "seaknight_drones2_loaded", "player_exiting_start_trench" );
    _ID42237::_ID14413( "player_exiting_start_trench" );
    thread ch46_takeoff_fire();
    thread _ID48591();
    var_12 thread _ID47828( "seaknight_drones_loaded", "load_riders" );
    var_12 thread _ID48998( "riders_loaded", "play_anim" );
    var_13 thread _ID47828( "seaknight_drones2_loaded", "load_riders" );
    var_13 thread _ID48998( "riders_loaded", "play_anim" );
    var_22 = getentarray( "spot_targets", "script_noteworthy" );
    _ID42237::_ID3350( var_22, ::_ID46576 );
    var_23 = getentarray( "bunker_door_up", "targetname" );

    foreach ( var_25 in var_23 )
        var_25 _ID42407::_ID18512();

    var_27 = getentarray( "bunker_door", "targetname" );
    _ID42237::_ID3350( var_27, _ID42407::_ID33997 );
    _ID42237::_ID14402( "bunker_door_closed" );
    var_28 = _ID42237::_ID16640( "mortar_bunker", "targetname" );
    var_29 = getentarray( "mortar_bunker", "targetname" );
    _ID42237::_ID3294( var_29, ::delete );
    thread _ID53157( var_28, "delete_bunker_mortars" );
    var_30 = getent( "bunker_radio_org_room2", "targetname" );
    var_30 delete();
    var_31 = getent( "volume_bunker", "targetname" );
    var_32 = var_31 _ID43959();
    var_33 = var_31 _ID42407::_ID15692( "allies" );
    var_32 = _ID42407::_ID3317( var_32, var_33 );
    _ID42237::_ID3350( var_32, ::_ID47688 );
    _ID42237::_ID3350( level._ID48904, _ID42237::_ID26402 );
    var_5 = getent( "monument_waver", "targetname" );
    var_34 = var_5 _ID42407::_ID35014( 1 );
    var_20 = getentarray( "friendlies_commerce_street", "targetname" );
    var_35 = [];

    foreach ( var_5 in var_20 )
        var_35[var_35.size] = var_5 _ID42407::_ID35014( 1 );

    _ID42237::_ID3350( var_35, ::_ID50012 );
    var_20 = getentarray( "friendlies_commerce_wall", "targetname" );
    var_38 = [];

    foreach ( var_5 in var_20 )
        var_38[var_38.size] = var_5 _ID42407::_ID35014( 1 );

    thread ai_commerce_reduce_sightrace( _ID42237::array_flatten( [ var_35, var_38 ] ) );
    level.battlechattermaxcanseeperframe = 5;
    _ID42237::_ID14413( "player_exiting_start_trench2" );
    var_20 = getentarray( "monument_mortarguys", "targetname" );
    var_41 = _ID42407::_ID3339( var_20, 1 );
    _ID42237::_ID14413( "commerce_enemy_javeling_failsafe" );
    var_19 = _ID42237::_ID3293( var_19, var_34 );
    thread _ID42407::_ID2265( var_19, 1024 );
    var_14 thread _ID42411::_ID22484( "left", var_15 );
    var_14 thread _ID42411::_ID22484( "right", var_16 );
    var_42 = _ID42237::_ID16638( "littlebird_monument_path", "targetname" );
    var_14 thread _ID51626( "player_exiting_start_trench", var_42 );
    var_43 = getentarray( "drones_flood_monument2", "targetname" );
    thread _ID52188( var_43, "drones_flood_monument2" );
    _ID42237::_ID14413( "player_trench_capitol_failsafe" );
    var_44 = _ID42411::_ID35196( "heli_trench" );
    var_45 = _ID42411::_ID35196( "heli_commerce_front" );
    var_44 thread maps\dcburning_aud::_ID50701();
    var_45 thread maps\dcburning_aud::_ID46244( "scn_mi28_commerce_01" );
    _ID42237::_ID14413( "player_commerce_trench_01" );
    level._ID794._ID511 = 0;
    level._ID794 _ID32474( 1500 );
    _ID42237::_ID14413( "player_commerce_trench_03" );
    _ID42237::_ID14421( "player_touching_commerce_wall_left", "player_touching_commerce_wall_right" );
    thread _ID42407::_ID4422( "commerce_wall" );
    thread _ID54322();
    thread bradley_commerce_targets();
    level._ID43166._ID49533 = 1;
    _ID42237::_ID3350( var_35, _ID42407::_ID36519 );
    _ID42237::_ID3350( var_35, ::_ID45840 );
    _ID42237::_ID14425( "player_approaching_commerce", 5 );
    _ID38942( "colornodes_commerce_approach", "script_noteworthy", 1 );
    var_46 = getentarray( "colornodes_commerce_approach", "script_noteworthy" );
    thread _ID53455();
    _ID42237::_ID14402( "lav_is_suppressing" );
    var_47 = getaiarray( "axis" );

    foreach ( var_49 in var_47 )
    {
        if ( !isdefined( var_49 ) )
            continue;

        var_49._ID513 = 0;
        var_49._ID2219 = 0;
    }

    _ID42237::_ID14415( "leader_orders_everyone_across_street", "player_entered_commerce_right", "player_entered_commerce_left" );

    if ( !_ID42237::_ID14385( "player_crossing_street" ) )
    {
        var_51 = _ID42237::_ID16182( level._ID794._ID740, var_46 );
        var_51 notify( "trigger",  level._ID794  );
    }

    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    _ID42237::_ID3350( level._ID35507, ::_ID48332 );
    thread ai_commerce_entrance_ignore_suppression();
    _ID42237::_ID14413( "player_entering_commerce" );
    level.battlechattermaxcanseeperframe = undefined;
    setdvar( "ai_GrenadeThrowAllowedInStairs", 0 );
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    _ID42237::_ID3350( level._ID35507, ::_ID43214 );

    foreach ( var_49 in level._ID35507 )
        var_49 _ID42407::_ID10973();

    var_54 = getent( "commerce_blocker_right", "targetname" );
    var_55 = getent( "commerce_blocker_left", "targetname" );
    var_56 = [];
    var_56[0] = var_54;
    var_56[1] = var_55;
    var_57 = _ID42237::_ID16276( level._ID794._ID740, var_56 );
    var_57 show();
    var_57 solid();
    var_57 disconnectpaths();
    _ID42237::_ID14421( "player_entered_commerce_left", "player_entered_commerce_right" );
    thread _ID48047( "drones_flood_monument" );
    thread _ID48047( "drones_flood_monument2" );
    _ID42237::_ID3350( level._ID48952, _ID42237::_ID38863 );
    _ID42237::_ID3350( level._ID44271, _ID42237::_ID38865 );
    _ID38942( "colornodes_commerce_bot_to_top", "script_noteworthy", 1 );
    _ID42237::_ID14388( "lav_is_suppressing" );
    var_47 = getaiarray( "axis" );

    foreach ( var_49 in var_47 )
    {
        if ( !isdefined( var_49 ) )
            continue;

        var_49._ID513 = 1;
        var_49._ID2219 = 1;
    }

    thread _ID42407::_ID4422( "commerce_entered" );
    _ID42237::_ID14402( "obj_follow_sgt_macey_complete" );
    _ID38942( "colornodes_elevators", "script_noteworthy", 1 );
    thread _ID42407::_ID2265( var_35, 1024 );
    thread _ID47359();
    var_60 = getent( "volume_commerce_lobby_upper", "targetname" );
    var_61 = var_60 _ID42407::_ID15547( "axis" );

    if ( isdefined( var_61 ) && var_61.size > 0 )
        level._ID48825 = var_61;

    wait 1;
    thread _ID49071();
    level._ID43166._ID43839 = 0;
    _ID42407::_ID10226( 4, ::_ID50622 );
    _ID42237::_ID14421( "commerce_first_floor_enemies_dead", "player_middle_commerce_first_floor" );
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );

    foreach ( var_49 in level._ID35507 )
        var_49 _ID42407::_ID12538();

    level._ID794 _ID47046();

    if ( !_ID42237::_ID14385( "player_middle_commerce_first_floor" ) )
    {
        var_51 = getent( "colornodes_elevators", "script_noteworthy" );
        var_51 notify( "trigger",  level._ID794  );
    }

    _ID42237::_ID14413( "player_heading_up_to_mezzanine" );
    thread _ID47411( "all", 1024, 1 );
    level._ID48825 = undefined;
    level._ID43166._ID49533 = 1;
    level._ID43166._ID43839 = 1;
    var_64 = getentarray( "mezzanine_blockers", "targetname" );
    _ID42237::_ID3350( var_64, _ID42407::_ID33997 );
    _ID42237::_ID14413( "ask_bradley_to_stop_firing" );
    level._ID43166._ID43839 = 0;
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    thread _ID52268( "all", 128 );
}

ai_commerce_reduce_sightrace( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2 ) )
            continue;

        var_2._ID967 = 1000;
        var_2._ID968 = 1000;
    }

    _ID42237::_ID14415( "leader_orders_everyone_across_street", "player_entered_commerce_right", "player_entered_commerce_left" );

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2 ) || !isalive( var_2 ) )
            continue;

        var_2._ID967 = 100;
        var_2._ID968 = 250;
    }
}

create_medic_props( var_0 )
{
    level.medic_clipboard = getent( "medic_clipboard", "targetname" );
    level.medic_pen = getent( "medic_pen", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2._ID172 == "actor_ally_us_army_paramedic" )
        {
            level.medic = var_2;
            break;
        }
    }
}

detach_syringe( var_0, var_1 )
{
    var_2 = spawn( "script_model", var_0 gettagorigin( var_1 ) );
    var_2._ID65 = var_0 gettagangles( var_1 );
    var_2 setmodel( "h2_adrenaline_syringe_phys" );
    var_2 physicslaunchclient( var_2._ID740, ( -500, 500, 0 ) );
}

attach_clipboard( var_0, var_1 )
{
    level.medic_clipboard delete();
    var_0 attach( "h2_com_clipboard_wpaper_anim", var_1 );
}

attach_pen( var_0, var_1 )
{
    level.medic_pen delete();
    var_0 attach( "h2_characters_accessories_pencil_anim", var_1 );
}

bradley_commerce_targets()
{
    var_0 = getent( "volume_commerce_lobby", "targetname" );
    var_1 = var_0 _ID42407::_ID15547( "axis" );

    if ( isdefined( var_1 ) && var_1.size > 0 )
        level._ID48825 = var_1;
}

ai_commerce_entrance_ignore_suppression()
{
    foreach ( var_1 in level._ID35507 )
        var_1._ID513 = 1;

    _ID42237::_ID14413( "player_crossing_street" );
    var_3 = getaiarray( "allies" );

    foreach ( var_1 in var_3 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        var_1._ID513 = 1;
    }

    _ID42237::_ID14413( "player_commerce_past_desks" );

    foreach ( var_1 in var_3 )
    {
        if ( !isdefined( var_1 ) || !isalive( var_1 ) )
            continue;

        var_1._ID513 = 0;
    }
}

_ID49396()
{
    self endon( "death" );
    self._ID7._ID11035 = 1;
    _ID42407::_ID32355( 1 );
    level endon( "player_approaching_commerce" );
    _ID42237::_ID14413( "player_commerce_trench_03" );
    var_0 = getnodearray( "commerce_lobby_teleport_nodes", "targetname" );
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    self forceteleport( var_1._ID740, var_1._ID65 );
    _ID42407::_ID32355( 0 );
    self setgoalpos( self._ID740 );
    self._ID86 = 0;
    var_2 = getent( "volume_commerce_front", "targetname" );
    self setgoalvolumeauto( var_2 );
    _ID42237::_ID14421( "player_crossing_street", "leader_orders_everyone_across_street" );
    wait(randomfloatrange( 0, 1 ));
    thread _ID52645( self._ID740 );
    self kill();
}

_ID50622()
{

}

_ID47042( var_0, var_1, var_2 )
{
    var_3 = 1;

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        var_4 = var_0 _ID42407::_ID12076();
        wait(randomfloatrange( 1, 2.5 ));
    }

    var_5 = _ID42407::_ID15693( var_0._ID1193 );
    var_5 = _ID42407::_ID29506( var_5 );
    _ID42407::_ID41089( var_5 );
    _ID42237::_ID14402( var_1 );
}

_ID51626( var_0, var_1 )
{
    while ( self._ID29965.size < 6 )
        wait 0.1;

    _ID42237::_ID14413( var_0 );
    thread _ID42411::_ID40218( var_1 );
    thread maps\dcburning_aud::littlebird_monument_taking_off_sound();
    self setmaxpitchroll( 20, 50 );
    wait 2;
    _ID42411::_ID40066( "idle_alert_to_casual" );
    self vehicle_setspeed( 25 );
    self._ID31507 = 1;
    wait 5;
    _ID42237::_ID3350( self._ID29965, _ID42407::_ID36519 );
    thread _ID50096();
}

_ID44096()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_mid_trench" );
    _ID42237::_ID27077( "mortar_incoming", self._ID740 );
    playfx( level._ID1426["mortar"]["dirt"], self._ID740 );
    earthquake( 0.25, 0.75, self._ID740, 1250 );
    thread _ID42237::_ID27077( level._ID30909["mortar"]["dirt"], self._ID740 );
    self notify( "stop_drone_fighting" );
    thread _ID42237::_ID27077( "generic_death_american_1", self._ID740 );
    self._ID9813 = level._ID30895["generic"]["deathanim_mortar_00"];
    self kill();
}

_ID46576()
{
    var_0 = 2.4;
    var_1 = 50;
    var_2 = 50;
    wait(var_0);

    while ( !_ID42237::_ID14385( "obj_commerce_defend_snipe_given" ) )
    {
        self moveto( self._ID740 + ( 0, 0, var_1 ), var_0, 1, 1 );
        wait(var_0);
        self moveto( self._ID740 + ( var_2, 0, 0 ), var_0, 1, 1 );
        wait(var_0);
        self moveto( self._ID740 + ( 0, 0, var_1 * -1 ), var_0, 1, 1 );
        wait(var_0);
        self moveto( self._ID740 + ( var_2 * -1, 0, 0 ), var_0, 1, 1 );
        wait(var_0);
    }

    self delete();
}

_ID52072()
{
    var_0 = 0;

    while ( !_ID42237::_ID14385( "bunker_door_closed" ) )
    {
        if ( !_ID42237::_ID14385( "player_inside_bunker" ) )
        {
            _ID54017::_ID43196( 0 );
            var_0 = 0;
        }
        else if ( var_0 == 0 )
        {
            _ID54017::_ID48266( 0 );
            var_0 = 1;
        }

        wait 3;
    }

    _ID54017::_ID43196( 0 );
    _ID42237::_ID14402( "delete_bunker_mortars" );
}

_ID45387()
{
    level._ID48827 = spawn( "script_origin", level._ID794._ID740 );
    level._ID48827 linkto( level._ID794 );
    level._ID48827._ID22409 = 1;
    level endon( "javelin_is_owning_fools" );
    _ID51656( "dcburn_rm1_report1dash3" );
    _ID51656( "dcburn_rm2_sendtraffic" );
    _ID51656( "dcburn_rm1_40personnel" );
    _ID51656( "dcburn_rm1_lineyankee" );
    _ID51656( "dcburn_rm1_linezulu" );
    _ID51656( "dcburn_rm1_linealpha" );
    _ID51656( "dcburn_rm2_sayagain" );
    _ID51656( "dcburn_rm1_sayagain" );
    _ID51656( "dcburn_rm2_remarks" );
    _ID51656( "dcburn_rm1_noremarks" );
    _ID51656( "dcburn_rm2_needintel" );
    _ID51656( "dcburn_rm3_engparatroop" );
    _ID51656( "dcburn_rm4_footmobiles" );
    _ID51656( "dcburn_rm5_thermlaws" );
    _ID51656( "dcburn_rm4_whattarget" );
    _ID51656( "dcburn_rm5_dropbuilding" );
    _ID51656( "dcburn_rm4_fedresbuild" );
    _ID51656( "dcburn_rm5_allover" );
    _ID51656( "dcburn_rm4_checkin" );
    _ID51656( "dcburn_rm5_roger" );
    _ID51656( "dcburn_rm4_thermlaws" );
    _ID51656( "dcburn_rm6_copiesall" );
    _ID51656( "dcburn_rm4_stndingby" );
    _ID51656( "dcburn_rm6_thermlawsauth" );
    _ID51656( "dcburn_rm4_approved" );
    _ID51656( "dcburn_rm5_solidcopy" );
    _ID51656( "dcburn_rm5_apprengage" );
    _ID51656( "dcburn_rm1_engagingtarg" );
    _ID51656( "dcburn_rm1_targetsupp" );
    _ID51656( "dcburn_rm4_saddleup" );
    _ID51656( "dcburn_rm5_btr60" );
    _ID51656( "dcburn_rm6_lawrocket" );
    _ID51656( "dcburn_rm1_logancircpark" );
    _ID51656( "dcburn_rm2_22isdown" );
    _ID51656( "dcburn_rm3_airsupport" );
    _ID51656( "dcburn_rm5_mark19down" );
    _ID51656( "dcburn_rm4_retrograde" );
    _ID51656( "dcburn_rm3_lowammo" );
    _ID51656( "dcburn_rm3_5btr60s" );
    _ID51656( "dcburn_rm2_callingitin" );
    _ID51656( "dcburn_ra2_standingby" );
    _ID51656( "dcburn_rm2_gridtomark" );
    _ID51656( "dcburn_ra2_gridtosuppress" );
    _ID51656( "dcburn_rm2_reqsplash" );
    _ID51656( "dcburn_ra2_dangerclose" );
    _ID51656( "dcburn_ra2_mess2ob" );
    _ID51656( "dcburn_rm2_2gunseffect" );
    _ID51656( "dcburn_ra2_shot" );
    _ID51656( "dcburn_rm2_shot" );
    _ID51656( "dcburn_rm2_splash" );
    _ID51656( "dcburn_ra2_splash" );
    _ID51656( "dcburn_rm3_takeitout" );
    _ID51656( "dcburn_rm2_linkup" );
    _ID51656( "dcburn_rm4_dugin" );
    _ID51656( "dcburn_rm2_sitrep" );
    _ID51656( "dcburn_rm4_brokenarrow" );
    _ID51656( "dcburn_rm2_brokearrow" );
    _ID51656( "dcburn_rm5_sitrep" );
    _ID51656( "dcburn_rm6_kia" );
    _ID51656( "dcburn_rm5_tacfreq" );
    _ID51656( "dcburn_rm6_switching" );
    _ID51656( "dcburn_rm1_12klicksnorth" );
    _ID51656( "dcburn_rm2_contactleft" );
    _ID51656( "dcburn_rm3_takingfire" );
    _ID51656( "dcburn_rm4_tookahit" );
    _ID51656( "dcburn_rm5_status" );
    _ID51656( "dcburn_rm1_heavyfire" );
    _ID51656( "dcburn_rm2_ambush" );
    _ID51656( "dcburn_rm3_contactleft" );
    _ID51656( "dcburn_rm4_rpg" );
    _ID51656( "dcburn_rm5_coversector" );
    _ID51656( "dcburn_rp1_tasking" );
    _ID51656( "dcburn_fac_pushtoipbuick" );
    _ID51656( "dcburn_rp1_mapgrid" );
    _ID51656( "dcburn_fac_2a10s" );
    _ID51656( "dcburn_rm2_stalkercopies" );
    _ID51656( "dcburn_rm2_standby" );
    _ID51656( "dcburn_rp1_stndingby" );
    _ID51656( "dcburn_rm2_talktotarg" );
    _ID51656( "dcburn_rp1_goahead" );
    _ID51656( "dcburn_rm2_ovaltrack" );
    _ID51656( "dcburn_rp1_contact" );
    _ID51656( "dcburn_rm2_ewaxis" );
    _ID51656( "dcburn_rp1_contact" );
    _ID51656( "dcburn_rm2_logancircpark" );
    _ID51656( "dcburn_rp1_contact" );
    _ID51656( "dcburn_rm2_yourtarget" );
    _ID51656( "dcburn_rp1_rollingin" );
    _ID51656( "dcburn_rm2_bringrain" );
    _ID51656( "dcburn_rp1_offsafe" );
    _ID51656( "dcburn_rp1_guns" );
    _ID51656( "dcburn_rp2_offsafe" );
    _ID51656( "dcburn_rp1_ejecting" );
    _ID51656( "dcburn_rp2_cantseeit" );
    _ID51656( "dcburn_rm2_onechute" );
    _ID51656( "dcburn_fac_southkstreet" );
}

_ID48922()
{
    level endon( "bunker_door_closed" );
    _ID42237::_ID14413( "player_bunker_walk_01" );
    var_0 = getent( "bunker_radio_org_room2", "targetname" );
    var_1 = _ID42237::_ID16638( "bunker_radio_org_room1", "targetname" );
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_0 _ID42237::_ID27077( "dcburn_gm5_gotwounded" );
    wait 1;
    var_1 _ID42237::_ID27077( "dcburn_gm3_allyoursdoc" );
    _ID42237::_ID14413( "player_bunker_walk_01a" );
    var_0 _ID42237::_ID27077( "dcburn_gm1_keepstill" );
    var_0 _ID42237::_ID27077( "dcburn_gm1_wherescanteen" );
    wait 1;
    var_0 _ID42237::_ID27077( "dcburn_gm2_righthere" );
    wait 2;
    var_1 _ID42237::_ID27077( "dcburn_gm6_stablefornow" );
    var_1 _ID42237::_ID27077( "dcburn_gm4_2stretchers" );
}

_ID51656( var_0 )
{
    if ( !isdefined( level._ID48827 ) )
        return;

    if ( isdefined( level._ID48827._ID10329 ) )
        level._ID48827 delete();

    level._ID48827 playsound( var_0, "done" );
    level._ID48827 waittill( "done" );
}

_ID53455()
{
    level endon( "player_entered_commerce_right" );
    level endon( "player_entered_commerce_left" );
    _ID42237::_ID14413( "trenches_dialogue_done" );

    for (;;)
    {
        if ( !_ID42237::_ID14385( "player_crossing_street" ) )
            level._ID44035 _ID10760( "dcburn_mcy_latveesupp" );

        if ( !_ID42237::_ID14385( "player_crossing_street" ) )
        {
            level._ID44035 _ID10760( "dcburn_mcy_ready" );
            level._ID44035 _ID10760( "dcburn_mcy_gomoveup" );
        }

        _ID42237::_ID14402( "leader_orders_everyone_across_street" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_lineoffire" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_movemove" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_50calsupp" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_sittingducks" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_blownoff" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_moveup" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_intotargbuilding" );
    }
}

_ID47359()
{
    var_0 = 0;
    level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_00" );
    _ID42237::_ID14402( "obj_commerce_given" );
    level endon( "player_approaching_bottom_elevators" );
    level endon( "stop_nag_get_to_elevator" );

    while ( !_ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
    {
        wait(randomintrange( 5, 8 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        if ( var_0 == 0 )
        {
            level._ID44035 _ID10760( "dcburn_mcy_grenadelaunch" );
            var_0 = 1;
            wait(randomintrange( 7, 11 ));
        }

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_01" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_02" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_03" );
        wait(randomintrange( 7, 11 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_04" );
        wait(randomintrange( 7, 11 ));
    }
}

_ID49071()
{
    var_0 = getent( "volume_commerce_lobby_lower", "targetname" );

    for ( var_1 = var_0 _ID42407::_ID15547( "axis" ); var_1.size > 0; var_1 = var_0 _ID42407::_ID15547( "axis" ) )
        wait 0.5;

    _ID42237::_ID14402( "commerce_first_floor_enemies_dead" );
}

_ID44179()
{
    var_0 = getent( "bunker_radio_org_room2", "targetname" );
    _ID42237::_ID14413( "player_bunker_walk_02" );
    _ID42237::_ID14413( "player_bunker_walk_03" );
    _ID42237::_ID14413( "player_approaching_bunker_exit_hall" );
    _ID42237::_ID14402( "obj_follow_sgt_macey_given" );
    _ID42237::_ID14413( "player_leaving_bunker" );
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
    _ID42237::_ID3350( level._ID48952, _ID42237::_ID38865 );
    _ID42407::_ID28864( "dcburn_hqr_uncoverengage" );
    thread _ID42407::_ID28864( "dcburn_cpd_opticsonus" );
    _ID42237::_ID14413( "javelin_is_owning_fools" );
    _ID42407::_ID14544( "allies" );
    level._ID48827._ID10329 = 1;
    wait 2;
    level._ID44035 _ID10760( "dcburn_mcy_reqairstrike" );
    _ID42407::_ID28864( "dcburn_hqr_alongpotomac" );
    wait 2;
    thread _ID50312();
    wait 0.75;
    thread _ID42407::_ID4422( "trench_start" );
    level._ID44035 _ID10760( "dcburn_mcy_buytime" );
    _ID42237::_ID14413( "player_trench_capitol_failsafe" );
    level._ID44035 _ID10760( "dcburn_mcy_haulingpastus" );
    thread _ID42407::_ID28864( "dcburn_hqr_latvee" );
    wait 3;
    _ID42237::_ID14402( "bradley_can_start_firing" );
    _ID42237::_ID14413( "commerce_rappelers_inserting" );
    wait 1;

    if ( !_ID42237::_ID14385( "player_commerce_trench_03" ) )
        _ID42407::_ID28864( "dcburn_hqr_linkup" );

    if ( !_ID42237::_ID14385( "player_commerce_trench_03" ) )
        level._ID44035 _ID10760( "dcburn_mcy_firelow" );

    _ID42237::_ID14402( "trenches_dialogue_done" );
}

_ID51286()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    thread _ID42407::_ID4422( "javelins_trench" );
    var_0 = _ID42411::_ID35195( "m1a1_trench" );
    _ID42237::_ID14413( "player_leaving_bunker" );
    _ID42411::_ID35200( "apache_01" );
    thread _ID43980();
    var_1 = getent( "javelin_source_org", "targetname" );
    var_2 = _ID42411::_ID35195( "monument_heli_owned" );
    var_2 vehicle_turnengineoff();
    var_3 = _ID42411::_ID35195( "m1a1_owned" );
    var_3 thread tank_player_collisions();
    var_4 = _ID42411::_ID35195( "m1a1_owned2" );
    var_4 _ID42411::_ID16988();
    var_5 = getentarray( "javelin_vehicle_targets", "targetname" );
    _ID42237::_ID3350( var_5, ::_ID46708 );
    var_3 thread maps\dcburning_aud::_ID47644();
    _ID42237::_ID14413( "player_exiting_start_trench" );
    _ID42411::_ID35200( "jets_monument_01" );
    wait 2;
    thread _ID42411::_ID17021( var_3 );
    var_3 thread maps\dcburning_aud::_ID46612();
    _ID42237::_ID14421( "looking_commerce_enemy_javelin", "commerce_enemy_javeling_failsafe" );
    var_6 = magicbullet( "javelin_noimpact", var_1._ID740, var_2._ID740 );
    playfx( _ID42237::_ID16299( "javelin_muzzle" ), var_1._ID740 );
    var_6 thread _ID52536();
    var_6 missile_settargetpos( var_2._ID740 );
    var_6 missile_setflightmodetop();
    var_7 = _ID42407::_ID16053( "seaknight_monument_takeoff_01", "script_noteworthy" );
    var_8 = _ID42237::_ID16638( "heli_monument_path_01", "targetname" );
    var_7 thread _ID42411::_ID40218( var_8 );
    var_7 thread _ID42407::_ID27001( "scn_seaknight_loader_taking_off_03", undefined, 1 );
    thread _ID42407::_ID14403( "javelin_is_owning_fools", 1 );
    wait 2.5;
    thread _ID42411::_ID17021( var_4 );
    var_4 _ID42411::_ID16987();
    var_3 setturrettargetent( var_1 );
    var_3 thread _ID51330( var_1 );
    var_3 thread _ID47570();

    for (;;)
    {
        var_2 waittill( "damage",  var_9, var_10  );

        if ( isdefined( var_10 ) && !isplayernumber( var_10 ) )
            break;
    }

    thread _ID44311::_ID49210( var_2 );
    wait 10;
    var_4 setturrettargetent( var_1 );
    var_4 thread _ID51330( var_1 );
    var_4 _ID42407::_ID10226( 0, ::_ID51869, var_1 );
    wait 8;
    var_0 _ID42407::_ID10226( 0, ::_ID51869, var_1 );
    _ID42237::_ID14402( "second_abrams_killed" );
    wait 8;
    var_11 = _ID42237::_ID16640( "javelin_targets_trench", "targetname" );
    var_12 = var_5;
    var_13 = undefined;
    var_14 = undefined;
    var_15 = 1;
    var_16 = spawn( "script_origin", ( 0, 0, 0 ) );

    while ( !_ID42237::_ID14385( "player_entering_top_elevator_area" ) )
    {
        wait(randomfloatrange( 5, 8 ));
        var_17 = randomint( var_11.size );
        var_14 = var_11[var_17];
        var_16._ID740 = var_14._ID740;
        var_6 = magicbullet( "javelin_dcburn", var_1._ID740, var_16._ID740 );
        playfx( _ID42237::_ID16299( "javelin_muzzle" ), var_1._ID740 );
        var_6 thread _ID52536();
        var_6 missile_settargetent( var_16 );
        var_6 missile_setflightmodetop();
        var_15 = 1;
        wait(randomfloatrange( 5, 10 ));
    }

    var_16 delete();
}

_ID43980()
{
    wait 2.0;
    var_0 = getentarray( "apache_rumble", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        if ( distance( var_2._ID740, level._ID794._ID740 ) < 2000 )
            level._ID794 _meth_80b5( "Heli_pass_above" );
    }

    wait 4.0;
    stopallrumbles();
}

_ID47570()
{
    wait 2;
    var_0 = getent( "javelin_source_org", "targetname" );
    self setturrettargetent( var_0, ( 0, 0, -60 ) );
    _ID42237::_ID41123( "turret_rotate_stopped", 1.0 );
    self notify( "turret_fire" );

    if ( distance( self._ID740, level._ID794._ID740 ) < 1500 )
        level._ID794 playrumblelooponentity( "damage_heavy" );

    _ID42234::_ID13611( "m1a1_fires" );
    _ID42237::_ID14421( "player_trench_capitol_failsafe", "blow_up_abrams" );
    thread _ID47575();
    _ID42407::_ID10226( 0, ::_ID51869, var_0 );
}

_ID47575()
{
    self waittill( "death" );

    if ( distance( self._ID740, level._ID794._ID740 ) < 1024 )
        level._ID794 dodamage( 50 / level._ID794._ID255, level._ID794._ID740 );
}

_ID44799()
{

}

_ID51330( var_0 )
{
    self endon( "death" );
    var_1 = self._ID23512[0];

    while ( isdefined( self ) )
    {
        var_1 settargetentity( var_0 );
        var_2 = randomfloatrange( 1.5, 3 );
        var_1 startfiring();
        wait(var_2);
        var_1 stopfiring();
        wait(randomfloatrange( 3, 6 ));
    }
}

_ID46491( var_0 )
{
    self endon( "death" );
    self notify( "stop_firing_turret" );
    self endon( "stop_firing_turret" );
    var_1 = 0.1;

    while ( isdefined( self ) )
    {
        var_2 = randomintrange( 10, 20 );

        if ( !self._ID14344 )
        {
            for ( var_3 = 0; var_3 < var_2; var_3++ )
            {
                self setturrettargetent( var_0, _ID42237::_ID28976( 50 ) + ( 0, 0, 32 ) );
                self fireweapon();
                wait(var_1);
            }
        }
        else
            wait 0.5;

        wait(randomfloatrange( 2, 3 ));
    }
}

_ID50558()
{
    var_0 = getent( "obelisk_chunk", "targetname" );
    _ID42237::_ID14413( "obelisk_destruction" );
    _ID42234::_ID13611( "obelisk_falling_dirt" );
    var_0 hide();
    var_1 = spawn( "script_model", var_0._ID740 );
    var_1._ID3189 = "obelisk";
    var_1 _ID42259::_ID32556();
    var_1 setmodel( "h2_dcburning_obelisk_break_a" );
    var_1._ID65 = var_0._ID65;
    var_1 thread _ID42259::_ID3111( var_1, "h2_dcburning_obelisk_break_a_anim" );
    var_2 = spawn( "script_model", var_0._ID740 );
    var_2._ID3189 = "obelisk";
    var_2 _ID42259::_ID32556();
    var_2 setmodel( "h2_dcburning_obelisk_break_b" );
    var_2._ID65 = var_0._ID65;
    var_2 thread _ID42259::_ID3111( var_2, "h2_dcburning_obelisk_break_b_anim" );
    thread _ID42237::_ID27077( "scn_obelisk_destruction_a", var_1._ID740 );
    var_0 delete();
    wait 10;
    var_1 delete();
    var_2 delete();
}

_ID48591()
{
    level endon( "leader_orders_everyone_across_street" );
    var_0 = getent( "destructible_trigger", "targetname" );
    var_1 = level._ID35507;
    var_0 waittill( "trigger" );

    foreach ( var_3 in var_1 )
    {
        var_3 _ID42407::_ID32628( 0 );
        var_4 = randomfloatrange( 4.5, 6.5 );

        if ( distancesquared( var_0._ID740, var_3._ID740 ) < 90000 )
            var_3 thread _ID42407::_ID14510( var_4 );

        var_3 _ID42407::_ID32628( 0 );
    }
}

ch46_takeoff_fire()
{
    wait 11;
    _ID42234::_ID13611( "ch46_takeoff_transition" );
}

_ID43579()
{
    _ID42237::_ID14413( "player_leaving_bunker" );
    var_0 = _ID42411::_ID35199( "helisquad_monument" );
    _ID42237::_ID14413( "player_approaching_monument" );
    _ID42237::_ID3294( var_0, ::vehicle_setspeed, 100 );
    _ID42237::_ID3350( var_0, _ID42411::_ID17021 );
    _ID42237::_ID3350( var_0, maps\dcburning_aud::heli_array_scripted_sound );
}

_ID45863()
{
    _ID42237::_ID14413( "player_leaving_bunker" );
    var_0 = _ID42411::_ID35199( "helisquad_monument_ground" );
    _ID42237::_ID3350( var_0, maps\dcburning_aud::_ID51203 );
    _ID42237::_ID3350( var_0, _ID42411::_ID16988 );
}

_ID54617()
{
    _ID42237::_ID14413( "player_leaving_bunker" );
    var_0 = _ID42411::_ID35199( "helis_monument_cargo" );
    var_1 = _ID42411::_ID35199( "helis_monument_cargo_noliftoff" );
    _ID42237::_ID3350( var_0, maps\dcburning_aud::heli_array_scripted_sound );
    _ID42237::_ID3350( var_1, maps\dcburning_aud::heli_array_scripted_sound );
    _ID42237::_ID14413( "player_approaching_monument" );
    _ID42237::_ID3350( var_0, ::_ID47735 );
    _ID42237::_ID3350( var_1, _ID42411::_ID17021 );
}

_ID43075()
{
    _ID42237::_ID14421( "player_trench_looking_capitol", "player_trench_capitol_failsafe" );
    var_0 = _ID42411::_ID35200( "jets_capitol_01" );
}

_ID54725()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    var_0 = _ID42411::_ID35195( "latvee_spotlight_left" );
    _ID42237::_ID14402( "latvee_commerce_left_done_with_spotlight" );
    var_0 thread _ID42411::_ID17021();
    var_0 waittill( "reached_end_node" );
    var_0 _ID44705();
}

_ID43067()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    var_0 = _ID42411::_ID35195( "latvee_spotlight" );
    var_0 _ID42411::_ID16988();
    var_1 = var_0._ID23512[0];
    var_2 = var_0._ID3575[1];
    var_2._ID507 = 0;
    var_2._ID511 = 1;
    var_2._ID54743 = 1;
    var_3 = getentarray( "ai_mezzanine_target", "targetname" );
    var_0 thread latvee_shoot( var_2, var_3, "player_entering_courtyard2" );
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    _ID42237::_ID14413( "player_in_crowsnest_room" );
    var_4 = var_0._ID29965;
    _ID42237::_ID3350( var_4, ::_ID47688 );
    var_0 _ID44705();
    _ID42237::_ID14402( "latvee_spotlight_deleted" );
}

_ID43166()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    level._ID43166 = _ID42411::_ID35195( "bradley_commerce" );
    level._ID43166 _ID42411::_ID16988();
    _ID42237::_ID14413( "bradley_can_start_firing" );
    var_0 = getentarray( "bradley_default_targets", "targetname" );
    level._ID43166 thread bradley_shoot( var_0, "player_entering_commerce" );
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    level._ID43166 _ID44705();
}

_ID52655( var_0 )
{
    var_0 endon( "death" );

    if ( !isdefined( var_0 ) || !isalive( var_0 ) )
        return;

    var_1 = var_0 gettagorigin( "tag_eye" );
    magicbullet( "m14_scoped", self._ID740, var_1 );
    bullettracer( self._ID740, var_1, 1 );
    playfxontag( _ID42237::_ID16299( "headshot" ), var_0, "tag_eye" );
}

_ID45022()
{
    var_0 = undefined;

    switch ( self._ID1282 )
    {
        case "zpu_antiair":
            var_0 = self._ID43820[randomint( self._ID43820.size )];
            break;
        case "bradley":
            var_0 = _ID42306::_ID16258( self._ID44150, level._ID8760["180"], 1, 0, 0, 1 );
            break;
        case "btr80":
            var_0 = _ID42306::_ID16258( level._ID44957, level._ID8760["180"], 1, 1, 0, 1 );
            break;
    }

    if ( isdefined( var_0 ) )
        return var_0;
}

_ID47551()
{
    _ID42237::_ID14413( "player_commerce_trench_01" );

    if ( getdvarint( "r_dcburning_culldist" ) == 1 )
    {
        _ID42237::_ID14402( "commerce_rappelers_inserting" );
        _ID42237::_ID14402( "commerce_rappelers_rappeling" );
        _ID42237::_ID14402( "commerce_rappelers_done" );
    }
    else
    {
        var_0 = _ID42411::_ID35196( "blackhawk_commerce_rappel" );
        level._ID44605 = var_0._ID29965;
        _ID42237::_ID3350( level._ID44605, ::_ID51752 );
        _ID42237::_ID14402( "commerce_rappelers_inserting" );
        _ID42237::_ID14413( "commerce_rappelers_rappeling" );
        var_0 thread maps\dcburning_aud::_ID46244( "scn_blackhawk_commerce_01" );
        wait 6;
        _ID42237::_ID14402( "commerce_rappelers_done" );
    }
}

_ID51752()
{
    self endon( "death" );
    self setthreatbiasgroup( "oblivious" );
    self._ID54743 = 1;
    var_0 = getent( self._ID1191, "targetname" );
    var_1 = var_0._ID70;
    self._ID54401 = undefined;

    if ( isdefined( var_0._ID1191 ) )
    {
        var_2 = getentarray( var_0._ID1191, "targetname" );

        foreach ( var_4 in var_2 )
        {
            if ( isdefined( var_4._ID31170 ) )
            {
                self._ID19357 = var_4._ID31170;
                self._ID44464 = var_4._ID740;
                break;
            }
        }
    }

    self waittill( "jumpedout" );
    var_0 _ID42259::_ID3023( self, var_1 );

    if ( !_ID42237::_ID14385( "commerce_rappelers_rappeling" ) )
        _ID42237::_ID14402( "commerce_rappelers_rappeling" );

    var_0 _ID42259::_ID3020( self, var_1 );
    self delete();
}

_ID50560( var_0 )
{
    var_1 = var_0._ID44464;
    _ID42234::_ID13611( var_0._ID19357 );
    thread _ID42237::_ID27077( "glass_break", var_1 );
    playfx( _ID42237::_ID16299( "commerce_window_shatter" ), var_1 );
}

_ID45636()
{
    self endon( "death" );
    self._ID47706 = undefined;
    thread _ID49057( self );
    _ID42237::_ID14421( "player_touching_commerce_lobby_right", "player_touching_commerce_lobby_left" );
    var_0 = getent( "volume_commerce_lobby_lower", "targetname" );
    var_1 = getent( "volume_commerce_lobby_upper", "targetname" );
    var_2 = var_0 _ID42407::_ID15547( "axis" );
    var_3 = var_1 _ID42407::_ID15547( "axis" );

    for ( var_4 = undefined; isdefined( self ) && !_ID42237::_ID14385( "player_entering_top_elevator_area" ); var_2 = var_0 _ID42407::_ID15547( "axis" ) )
    {
        var_4 = _ID42407::_ID3317( var_2, var_3 );
        var_4 = _ID42407::_ID29506( var_4 );

        if ( isdefined( level._ID46771 ) && _ID42407::_ID20542( var_4, level._ID46771 ) )
            self._ID47706 = level._ID46771;
        else if ( var_4.size > 0 )
            self._ID47706 = _ID42237::_ID16182( level._ID794._ID740, var_4 );

        if ( isdefined( self._ID47706 ) )
        {
            wait(randomfloatrange( 3, 5 ));
            continue;
        }

        wait 0.5;
    }

    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    var_5 = getentarray( "latvee_spotlight_targets_upper", "targetname" );

    for ( var_4 = undefined; isdefined( self ); self._ID47706 = var_5[randomint( var_5.size )] )
        wait(randomfloatrange( 2, 4 ));
}

_ID49057( var_0 )
{
    self endon( "death" );
    level._ID46771 = undefined;

    while ( isdefined( self ) )
    {
        level._ID794 waittill( "damage",  var_1, var_2  );

        if ( !isdefined( var_2 ) )
            continue;

        if ( isdefined( var_2._ID1194 ) && var_2._ID1194 == "axis" )
        {
            level._ID46771 = var_2;
            _ID46711( 4 );

            if ( level._ID46771 == self )
                level._ID46771 = undefined;
        }
    }
}

_ID45576( var_0, var_1 )
{
    self endon( "death" );

    while ( isdefined( var_1 ) )
    {
        foreach ( var_3 in var_0 )
        {
            var_1._ID53556 = var_3;
            wait(randomfloatrange( 3, 6 ));
        }
    }

    foreach ( var_3 in var_0 )
        var_3 delete();
}

_ID50872()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    var_0 = getentarray( "latvee_convoy_00", "targetname" );

    if ( getdvarint( "r_dcburning_culldist" ) == 1 )
        thread _ID50817( var_0, "latvee_convoy_00", 7, 10, 1 );
    else
        thread _ID50817( var_0, "latvee_convoy_00", 3.1, 4.8, 1 );

    _ID42237::_ID14413( "approaching_main_trench" );
    wait 2.5;
    _ID44742( "latvee_convoy_00" );
    wait 7.0;
    thread _ID44668();
    thread _ID54065();
    thread bradley_side();
    thread latvee_side();
}

_ID54695( var_0, var_1, var_2 )
{
    var_3 = magicbullet( "javelin_noimpact", var_0._ID740, var_1._ID740 );
    playfx( _ID42237::_ID16299( "javelin_muzzle" ), var_0._ID740 );
    var_3 thread _ID52536();
    var_3 missile_settargetent( var_2 );
    var_3 missile_setflightmodetop();
    var_2 waittill( "damage" );

    if ( isdefined( var_2 ) )
        var_2 notify( "death" );
}

_ID44668()
{
    level endon( "player_headed_to_atrium_side_hall" );
    var_0 = getent( "convoy_javelin_source_org", "targetname" );
    var_1 = getent( "latvee_goal1", "targetname" );
    var_2 = _ID42411::_ID35196( "latvee_convoy_owned1" );
    wait 26.0;
    _ID54695( var_0, var_1, var_2 );
}

_ID54065()
{
    level endon( "player_headed_to_atrium_side_hall" );
    var_0 = getent( "convoy_javelin_source_org", "targetname" );
    var_1 = getent( "latvee_goal2", "targetname" );
    wait 5.0;
    var_2 = _ID42411::_ID35196( "latvee_convoy_owned2" );
    wait 24.0;
    _ID54695( var_0, var_1, var_2 );
}

bradley_side()
{
    level endon( "player_headed_to_atrium_side_hall" );
    var_0 = getentarray( "tank_targets", "targetname" );
    wait 5;
    var_1 = _ID42411::_ID35196( "tank_convoy_shoot" );
    var_1 waittill( "reached_end_node" );
    wait 3.0;
    var_1 thread bradley_shoot( var_0, "player_entering_commerce" );
}

bradley_shoot( var_0, var_1 )
{
    if ( _ID42237::_ID14385( var_1 ) )
        return;

    level endon( var_1 );
    var_2 = spawn( "script_origin", ( -20919, 6628, -110 ) );
    self setturrettargetent( var_2 );

    for (;;)
    {
        var_3 = _ID42237::_ID3320( var_0 );

        foreach ( var_5 in var_3 )
        {
            var_2 moveto( var_5._ID740, 2 );
            wait 2.0;
            var_6 = randomintrange( 2, 6 );

            for ( var_7 = 0; var_7 < var_6; var_7++ )
            {
                var_8 = weaponfiretime( "bradley_turret" );
                wait(var_8);
                self fireweapon( undefined, undefined, undefined, 0.1 );
                earthquake( 0.25, 0.13, self._ID740, 1024 );
            }

            wait(randomfloatrange( 1.5, 5 ));
        }
    }
}

latvee_side()
{
    level endon( "player_headed_to_atrium_side_hall" );
    wait 8.0;
    var_0 = _ID42411::_ID35196( "latvee_convoy_shoot" );
    var_1 = var_0._ID3575[0];
    var_0 waittill( "reached_end_node" );
    var_0 _ID42411::_ID40298( "passengers_and_driver" );
    var_2 = getentarray( "ai_mezzanine_target", "targetname" );
    var_1._ID507 = 0;
    var_1._ID511 = 1;
    var_1._ID54743 = 1;
    var_0 thread latvee_shoot( var_1, var_2, "player_entering_courtyard2" );
}

latvee_shoot( var_0, var_1, var_2 )
{
    if ( _ID42237::_ID14385( var_2 ) )
        return;

    level endon( var_2 );
    var_3 = self._ID23512[0];

    for (;;)
    {
        var_1 = _ID42237::_ID3320( var_1 );

        foreach ( var_5 in var_1 )
        {
            var_3 setmode( "manual" );
            var_3 settargetentity( var_5 );
            wait 1;
            var_0._ID507 = 0;
            wait(randomintrange( 3, 5 ));
            var_0._ID507 = 1;
            wait(randomintrange( 3, 5 ));
        }
    }
}

_ID43857()
{
    thread _ID51285();
    thread _ID44560();
    thread _ID46687();
    thread _ID49939();
    thread _ID53946();
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    thread _ID46175();
}

_ID51285()
{
    _ID42237::_ID14413( "capitol_building_reveal" );
    _ID52268( "allies", 128 );
}

remove_latvee_gunners()
{
    var_0 = getentarray( "laatpv_gunner", "script_noteworthy" );

    if ( isdefined( var_0 ) )
    {
        foreach ( var_2 in var_0 )
        {
            if ( isdefined( var_2._ID22746 ) )
                var_2 _ID42407::_ID36519();

            var_2 delete();
        }
    }
}

_ID49939()
{
    level endon( "player_entering_top_elevator_area" );
    _ID42237::_ID14413( "player_near_samsite" );
    _ID42411::_ID35200( "jets_samsite" );
}

_ID53946()
{
    _ID42237::_ID14421( "player_touching_commerce_lobby_right", "player_touching_commerce_lobby_left" );
    thread _ID52395();
    var_0 = [];
    var_1 = undefined;

    if ( _ID42237::_ID14385( "player_touching_commerce_lobby_left" ) )
        var_1 = getentarray( "friendlies_commerce_lobby_left", "targetname" );
    else
        var_1 = getentarray( "friendlies_commerce_lobby_right", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_4 = var_3 _ID42407::_ID35014( 1 );

        if ( isdefined( var_4 ) )
            var_0 = _ID42237::_ID3293( var_0, var_4 );
    }

    _ID42237::_ID3350( var_0, ::_ID51434 );
    _ID42237::_ID3350( var_0, ::_ID50012 );

    foreach ( var_4 in var_0 )
    {
        if ( !isdefined( var_4 ) )
            continue;

        var_4._ID86 = 0;
    }

    thread _ID44433();
    _ID42237::_ID14413( "player_approaching_bottom_elevators" );
    setdvar( "ai_GrenadeThrowAllowedInStairs", 1 );
    thread _ID42407::_ID4422( "bottom_elevators" );
    _ID42237::_ID3350( var_0, _ID42407::_ID36519 );

    foreach ( var_4 in var_0 )
    {
        if ( !isdefined( var_4 ) )
            continue;

        var_4._ID86 = 0.1;
    }

    _ID42237::_ID3350( var_0, ::_ID45840 );
    _ID42237::_ID14413( "player_entering_courtyard" );

    if ( getdvarint( "r_dcburning_culldist" ) == 1 )
        setculldist( 0 );

    thread _ID43162( "volume_commerce_lobby_upper", "axis" );
    thread _ID43162( "volume_commerce_lobby_lower", "axis" );
    _ID42237::_ID14413( "player_headed_to_atrium_side_hall" );
    var_10 = getaiarray( "axis" );
    _ID42237::_ID3350( var_10, ::_ID53905 );
    _ID42237::_ID14413( "player_entering_commerce_side_hall" );
    thread ceiling_tile_fall();
    _ID42237::_ID14402( "stop_elevator_doors" );
    wait 8;
    thread _ID42407::_ID41152( "volume_courtyard_windows", "courtyard_has_been_cleared" );
    _ID42237::_ID14413( "player_heading_up_to_mezzanine" );
    _ID42237::_ID14413( "player_entering_mezzanine_top" );
    thread _ID42407::_ID41152( "volume_commerce_lobby_upper", "mezzanine_top_has_been_cleared" );
    _ID42411::_ID35200( "jets_mezz_01" );
    thread _ID44551();
    _ID42237::_ID14413( "player_approaching_pavlov_hole" );
    _ID42407::_ID10226( 0, _ID42411::_ID35200, "helis_mezzanine" );
    _ID42234::_ID13611( 60 );
    _ID42237::_ID14413( "player_at_bottom_of_pavlovs_ramp" );
    thread _ID54724( "axis" );
    thread remove_latvee_gunners();
    thread _ID48286();
    _ID42407::_ID4917( "allies" );
    var_11 = _ID42407::_ID3339( getentarray( "commerce_allied_fodder_4", "targetname" ), 1 );
    var_12 = _ID42407::_ID3339( getentarray( "hostiles_commerce_samsite", "targetname" ), 1 );
    var_13 = _ID48716( "samsite_commerce_01", "player_at_top_of_pavlovs_ramp", "commerce_samsite_revealed" );
    var_14 = getnodearray( "commerce_samsite_nodes", "targetname" );
    var_15 = _ID42237::_ID16182( var_13._ID50308._ID740, var_14 );
    var_14 = _ID42237::_ID3321( var_14, var_15 );
    var_13._ID50308 thread _ID43076( var_15 );
    var_13._ID52615 thread _ID43076( var_14[0] );
    var_13._ID39235 thread _ID52126();
    var_13 thread _ID45319();
    _ID42237::_ID14415( "player_entering_fourth_floor", "player_shot_at_samsite_guys", "player_gawking_at_fourth_floor_guys" );
    _ID42237::_ID14402( "player_shot_at_samsite_guys" );
    _ID42407::_ID4918( "allies" );

    if ( !_ID42237::_ID14385( "player_entering_fourth_floor" ) )
    {
        thread _ID47491( "dummy_colornodes_pavlov_end" );
        _ID42407::_ID1801( "spawner_hostiles_commerce_floor4", "targetname", level._ID794 );
    }

    _ID42237::_ID3350( var_11, ::_ID47688 );
    wait 4;
    thread _ID42407::_ID41152( "volume_commerce_fourth_floor", "floor_four_has_been_cleared" );
    _ID42237::_ID14421( "floor_four_has_been_cleared", "player_headed_to_fifth_floor" );
    _ID42237::_ID14413( "player_headed_to_fifth_floor" );
    _ID42407::_ID4917( "allies" );
    thread _ID52268( "all" );
}

ceiling_tile_fall()
{
    var_0 = getent( "ceiling_tile01", "targetname" );
    _ID42237::_ID14413( "ceiling_tile_trigger" );
    var_0 physicslaunchclient( var_0._ID740, ( 0, 0, 0 ) );
}

_ID44551()
{
    var_0 = getentarray( "mezzanine_trenches", "targetname" );
    var_1 = getentarray( "ai_mezzanine_target", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_ID51402, var_1 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    _ID52861();
    thread _ID53715( var_0 );
}

_ID51402( var_0 )
{
    level endon( "player_at_top_of_pavlovs_ramp" );
    var_1 = undefined;
    var_2 = var_0[randomint( var_0.size )];
    var_3 = 1;

    for (;;)
    {
        if ( !var_3 )
        {
            while ( var_2 == var_1 )
                var_2 = var_0[randomint( var_0.size )];
        }
        else
            var_3 = 0;

        if ( isalive( self ) )
            self setentitytarget( var_2 );

        var_1 = var_2;
        wait(randomintrange( 5, 8 ));
    }
}

_ID52861()
{
    var_0 = getentarray( "mezzanine_trenches_run", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    thread _ID53715( var_0 );
}

_ID53715( var_0 )
{
    _ID42237::_ID14413( "player_at_top_of_pavlovs_ramp" );
    _ID42407::_ID2265( var_0, 512 );
}

_ID45319()
{
    _ID42237::_ID14413( "samsite_allow_C4_spawn" );
    var_0 = getent( "tarp_collision", "script_noteworthy" );
    var_0 notsolid();
    var_0 connectpaths();
    var_1 = _ID42237::_ID16640( "c4_slamraam", "script_noteworthy" );
    level._ID46915 = self._ID4851;

    foreach ( var_3 in var_1 )
        level._ID45155[level._ID45155.size] = self._ID4851 _ID43691::_ID53929( undefined, undefined, undefined, var_3._ID740, undefined, undefined, var_3._ID70, ::_ID47942, var_3._ID31151, 30, undefined, var_3._ID65 );

    self._ID4851 waittill( "c4_detonation" );
    self._ID4851 notify( "death" );
    _ID42237::_ID14402( "slamraam_c4_detonated" );
    self._ID4851 setmodel( "vehicle_slamraam_destroyed" );
    playfx( _ID42237::_ID16299( "c4_slamraam_explosion" ), self._ID4851._ID740 );
    thread _ID42237::_ID27077( "exp_slamraam_destroyed", self._ID4851._ID740 );
    self._ID39235 delete();
    radiusdamage( self._ID4851._ID740 + ( 0, 0, 96 ), 180, 1000, 50 );
    var_5 = _ID42237::_ID16640( "damage_window", "targetname" );

    foreach ( var_7 in var_5 )
        radiusdamage( var_7._ID740, 50, 35, 35, level._ID794 );

    var_9 = spawnfx( _ID42237::_ID16299( "fire_tarp_dcburning" ), self._ID4851._ID740 );
    triggerfx( var_9 );
    earthquake( 0.6, 1.2, self._ID4851._ID740, 1600 );

    if ( distance( self._ID4851._ID740, level._ID794._ID740 ) < 2048 )
        level._ID794 playrumblelooponentity( "damage_heavy" );

    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    var_9 delete();
}

_ID47942()
{
    return level._ID46915;
}

_ID44560()
{
    _ID42237::_ID14413( "player_approaching_bottom_elevators" );
    var_0 = getentarray( "atrium_guys", "targetname" );
    var_1 = [];
    var_2 = undefined;
    var_3 = undefined;

    foreach ( var_5 in var_0 )
    {
        var_2 = var_5 _ID42407::_ID12076();
        var_2 thread _ID42407::_ID22746( 1 );
        var_2._ID24924 = 1;
        var_2._ID24866 = 1;
        var_2._ID511 = 1;
        var_2._ID29359 = var_5;
        var_2._ID11572 = 1;
        var_2._ID31276 = 0;
        var_2 _ID42407::_ID17509();
        var_2._ID9813 = level._ID30895["generic"][var_5._ID70 + "_death"];
        var_1[var_1.size] = var_2;
        var_2._ID52615 = 0;

        if ( var_5._ID70 == "airport_civ_dying_groupB_pull" )
            var_3 = var_2;

        var_2._ID70 = var_5._ID70;
        var_2._ID29359 _ID42259::_ID3023( var_2, var_2._ID70 );
    }

    _ID42237::_ID14413( "player_entering_courtyard" );
    var_1[0]._ID29359 thread _ID42259::_ID3020( var_1[0], var_1[0]._ID70 );
    var_1[1]._ID29359 thread _ID42259::_ID3020( var_1[1], var_1[1]._ID70 );
    var_3 thread _ID42407::_ID27081( "scn_dcburning_soldier_pull_wounded", "J_Head" );
    wait 0.05;
    var_1[0] setanimtime( level._ID30895["generic"][var_1[0]._ID70], 0.5 );
    var_1[1] setanimtime( level._ID30895["generic"][var_1[1]._ID70], 0.5 );
    _ID42237::_ID3350( var_1, ::_ID52454 );
    _ID42237::_ID14421( "atrium_guys_at_end_of_anim", "player_entering_courtyard2" );
    var_7 = getent( "atrium_bullet", "targetname" );
    var_8 = var_3 gettagorigin( "tag_eye" );
    thread _ID42237::_ID27077( "scn_dcburning_soldier_death", var_8 );
    var_9 = vectornormalize( var_8 - var_7._ID740 );
    thread _ID42237::_ID27077( "scn_dcburning_gunshot_npc_close", var_7._ID740 );
    playfx( _ID42237::_ID16299( "headshot" ), var_8, var_9 );
    magicbullet( "m14_scoped", var_7._ID740, var_8 );
    bullettracer( var_7._ID740, var_8, 1 );

    foreach ( var_2 in var_1 )
    {
        var_2 _ID42407::_ID36519();
        var_2 kill();
    }

    var_12 = getent( "atrium_drag_blocker", "targetname" );
    var_12 _ID42407::_ID18512();
    var_13 = undefined;
    var_14 = getentarray( "hostiles_courtyard", "targetname" );

    foreach ( var_16 in var_14 )
    {
        if ( ( var_16._ID170 == "actor_enemy_airborne_SMG" || var_16._ID170 == "actor_enemy_airborne_AR" ) && !_ID42407::_ID27291( var_16 ) )
        {
            var_13 = var_16;
            break;
        }
    }

    var_18 = getnode( "teleport_node", "script_noteworthy" );

    if ( isdefined( var_13 ) )
        var_13 _ID42407::_ID37393( var_18 );
}

ai_hostiles_courtyard()
{
    self._ID1193 = "hostiles_courtyard";
}

_ID52454()
{
    level endon( "player_entering_courtyard2" );
    level endon( "atrium_guys_at_end_of_anim" );
    self waittillmatch( "single anim",  "end"  );
    _ID42237::_ID14402( "atrium_guys_at_end_of_anim" );
}

_ID48286()
{
    var_0 = getent( "samsite_chater_org", "targetname" );
    var_1 = var_0._ID740;
    var_2 = "player_shot_at_samsite_guys";
    level endon( var_2 );

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        _ID44154( "dcburn_ra1_acquiredtwo", var_1, var_2 );
        _ID44154( "dcburn_ra2_lockon", var_1, var_2 );
        wait 1;
        _ID44154( "dcburn_ra3_missilelocked", var_1, var_2 );
        wait 0.5;
        _ID44154( "dcburn_ra1_2moresouthbound", var_1, var_2 );
        _ID44154( "dcburn_ra2_firemissile", var_1, var_2 );
        _ID44154( "dcburn_ra3_firingmissile", var_1, var_2 );
        wait 1.5;
        _ID44154( "dcburn_ra1_movingnorth", var_1, var_2 );
        wait 1;
        _ID44154( "dcburn_ra2_10degrees", var_1, var_2 );
    }
}

_ID43076( var_0 )
{
    self endon( "death" );
    self._ID512 = 1;
    thread _ID44531();
    _ID42237::_ID41098( "damage", "alerted" );
    _ID42407::_ID3136();
    self._ID512 = 0;
    self._ID511 = 0;
    self._ID511 = 0;
    self notify( "alerted" );
    self setgoalnode( var_0 );
}

_ID52126()
{
    self endon( "death" );
    _ID42237::_ID14413( "commerce_samsite_revealed" );
    thread maps\dcburning_aud::_ID48789();
    wait 2.5;

    if ( _ID42237::_ID14385( "dead_tarp_guys" ) )
        return;

    _ID42237::_ID14402( "samsite_allow_C4_spawn" );
    var_0 = 4.5;
    self rotateto( self._ID65 + ( 0, -50, 0 ), var_0, 2, 2 );
    thread maps\dcburning_aud::_ID47236();
    wait(var_0 / 2);
    var_1 = getent( "slamraam_missile_target", "targetname" );

    while ( !_ID42237::_ID14385( "player_approaching_fourth_floor_sam" ) )
    {
        self detach( "projectile_slamraam_missile", self._ID23757[0] );
        earthquake( 0.3, 0.5, self._ID740, 1600 );
        var_2 = magicbullet( "slamraam_missile_dcburning", self gettagorigin( self._ID23757[0] ), var_1._ID740 );
        thread maps\dcburning_aud::_ID53638( var_2 );
        self._ID23757 = _ID42237::_ID3321( self._ID23757, self._ID23757[0] );

        if ( self._ID23757.size < 1 )
            break;

        wait(randomfloatrange( 0.3, 2 ));
    }
}

_ID48716( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_0, "targetname" );
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = [];

    foreach ( var_9 in var_3 )
    {
        if ( isspawner( var_9 ) )
        {
            var_7[var_7.size] = var_9;
            continue;
        }

        if ( var_9._ID172 == "script_model" )
        {
            switch ( var_9._ID669 )
            {
                case "slamraam_tarp":
                    var_5 = var_9;
                    continue;
                case "vehicle_slamraam_launcher_no_spike":
                    var_6 = var_9;
                    continue;
                case "vehicle_slamraam_base":
                    var_4 = var_9;
                    continue;
            }
        }
    }

    var_11 = _ID42407::_ID3339( var_7, 1 );

    foreach ( var_13 in var_11 )
    {
        var_13._ID49 = 1;
        var_13._ID511 = 1;
        var_13._ID507 = 1;
    }

    var_5._ID3189 = "tarp";
    var_5 _ID42407::_ID3428();
    var_11[0]._ID3189 = "operator";
    var_11[1]._ID3189 = "puller";
    var_15 = var_11;
    var_6._ID23757 = [];
    var_6._ID23757[0] = "tag_missle1";
    var_6._ID23757[1] = "tag_missle2";
    var_6._ID23757[2] = "tag_missle3";
    var_6._ID23757[3] = "tag_missle4";
    var_6._ID23757[4] = "tag_missle5";
    var_6._ID23757[5] = "tag_missle6";
    var_6._ID23757[6] = "tag_missle7";
    var_6._ID23757[7] = "tag_missle8";

    foreach ( var_17 in var_6._ID23757 )
        var_6 attach( "projectile_slamraam_missile", var_17, 1 );

    var_19 = spawnstruct();
    var_19._ID50308 = var_11[0];
    var_19._ID52615 = var_11[1];
    var_19._ID39235 = var_6;
    var_19._ID4851 = var_4;
    var_20 = getent( "tarp_anim_node", "targetname" );
    var_20 thread _ID44010( var_15, var_1, var_2, var_5 );
    return var_19;
}

_ID44010( var_0, var_1, var_2, var_3 )
{
    var_4 = getent( "tarp_guys_anim_node", "targetname" );
    thread _ID42259::_ID3018( var_3, "pulldown" );
    var_4 _ID42259::_ID3016( var_0, "pulldown" );
    _ID42237::_ID14413( var_1 );
    var_3 _ID42407::_ID10226( 2, _ID42407::_ID31877, "no_return_tarp_removal" );
    thread _ID42259::_ID3111( var_3, "pulldown" );
    var_4 thread _ID42259::_ID3099( var_0, "pulldown" );
    thread _ID48630( var_3, var_0 );
    _ID42237::_ID14402( var_2 );
}

_ID48630( var_0, var_1 )
{
    var_0 endon( "no_return_tarp_removal" );
    _ID42237::_ID14413( "player_shot_at_samsite_guys" );
    _ID42237::_ID14402( "dead_tarp_guys" );
    var_0 stopanimscripted();

    foreach ( var_3 in var_1 )
        var_3 stopanimscripted();
}

_ID44531()
{
    self endon( "death" );
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID25510 = self._ID452;
    self._ID452 = 16;
    thread _ID46701( "player_shot_at_samsite_guys" );
    thread _ID46822();
    self waittill( "alerted" );
    self._ID452 = self._ID25510;
    self._ID199 = "ambush";
    self._ID507 = 0;
    self._ID511 = 0;
}

_ID46822()
{
    self endon( "death" );
    self endon( "alerted" );
    _ID42237::_ID14415( "player_entering_fourth_floor", "player_shot_at_samsite_guys", "player_gawking_at_fourth_floor_guys" );
    _ID42237::_ID14402( "player_shot_at_samsite_guys" );
    thread _ID48687();
}

_ID54189( var_0 )
{
    var_1 = "dcburning_elevator_corpse_idle_A";
    var_2 = "dcburning_elevator_corpse_bump_A";
    self._ID49 = 0;
    self._ID11572 = 1;
    self._ID31276 = 0;
    _ID42407::_ID17509();
    self setcontents( 0 );
    self._ID511 = 1;
    self setlookattext( "", &"" );
    var_3 = var_0;
    var_4 = 0;
    self stopanimscripted();

    while ( !_ID42237::_ID14385( "stop_elevator_doors" ) )
    {
        var_3 thread _ID42259::_ID3025( self, var_1, "stop_idle" );
        self waittill( "doors_closing" );
        var_3 notify( "stop_idle" );

        if ( _ID42237::_ID14385( "player_looking_at_elevator" ) && isdefined( var_4 ) )
        {
            var_4 = undefined;
            var_3 _ID42259::_ID3020( self, "dcburning_elevator_corpse_trans_A_2_B" );
            var_1 = "dcburning_elevator_corpse_idle_B";
            var_2 = "dcburning_elevator_corpse_bump_B";
        }

        var_3 _ID42259::_ID3020( self, var_2 );
    }

    self delete();
}

_ID44433()
{
    var_0 = getent( "elevator_dude", "targetname" );
    var_1 = var_0 _ID42407::_ID12076();
    var_1 thread _ID54189( var_0 );
    var_2 = getent( "elevator_door_left", "targetname" );
    var_3 = getent( "elevator_door_right", "targetname" );
    var_2._ID36155 = var_2._ID740;
    var_3._ID36155 = var_3._ID740;
    var_4 = getent( "elevator_clip_left", "targetname" );
    var_5 = getent( "elevator_clip_right", "targetname" );
    var_4._ID36155 = var_4._ID740;
    var_5._ID36155 = var_5._ID740;
    var_6 = 28;
    var_7 = -28;
    var_8 = 2;
    var_9 = getent( "musak_org", "targetname" );
    var_9 playloopsound( "elev_musak_loop" );

    while ( !_ID42237::_ID14385( "stop_elevator_doors" ) )
    {
        thread _ID42237::_ID27077( "elev_bell_ding", var_2._ID740 );
        thread _ID42237::_ID27077( "elev_door_close", var_2._ID740 );
        var_2 movey( var_6, var_8, var_8 / 2 );
        var_3 movey( var_7, var_8, var_8 / 2 );
        var_4 movey( var_6, var_8, var_8 / 2 );
        var_5 movey( var_7, var_8, var_8 / 2 );
        wait(var_8 - 0.25);
        var_1 notify( "doors_closing" );
        wait 0.25;
        thread _ID42237::_ID27077( "elev_door_open", var_2._ID740 );
        var_2 moveto( var_2._ID36155, var_8, var_8 / 2, var_8 / 2 );
        var_3 moveto( var_3._ID36155, var_8, var_8 / 2, var_8 / 2 );
        var_4 moveto( var_4._ID36155, var_8, var_8 / 2, var_8 / 2 );
        var_5 moveto( var_5._ID36155, var_8, var_8 / 2, var_8 / 2 );
        wait(var_8);
        wait 1.25;
    }

    var_9 stopsounds();
    var_9 delete();
}

_ID46687()
{
    _ID42237::_ID14413( "player_approaching_bottom_elevators" );
    _ID42407::_ID28864( "dcburn_mcy_upperfloors" );
    _ID42407::_ID28864( "dcburn_hqr_copiesall" );
    _ID42237::_ID14421( "courtyard_has_been_cleared", "player_heading_up_to_mezzanine" );

    if ( _ID42237::_ID14385( "courtyard_has_been_cleared" ) )
    {
        _ID42407::_ID28864( "dcburn_mcy_alldeadcourtyard" );
        _ID42407::_ID28864( "dcburn_hqr_solidcopy" );
    }

    thread _ID42407::_ID4422( "courtyard_has_been_cleared" );
    _ID42237::_ID14413( "player_heading_up_to_mezzanine" );
    _ID42407::_ID28864( "dcburn_mcy_tomezzanine" );
    _ID42407::_ID28864( "dcburn_hqr_goodhunt" );
    _ID42237::_ID14402( "ask_bradley_to_stop_firing" );
    _ID42237::_ID14413( "player_entering_mezzanine_top" );
    _ID42237::_ID14421( "mezzanine_top_has_been_cleared", "capitol_building_reveal" );

    if ( _ID42237::_ID14385( "mezzanine_top_has_been_cleared" ) )
    {
        _ID42407::_ID28864( "dcburn_mcy_alldeadmezzanine" );
        _ID42407::_ID28864( "dcburn_hqr_rogerthat" );
    }

    _ID42407::_ID14543( "allies" );
    level._ID49792 _ID10760( "dcburn_cpd_capitolbuild" );
    _ID42407::_ID28864( "dcburn_ar1_lincolnmemorial" );
    _ID42407::_ID14544( "allies" );
    _ID42237::_ID14413( "player_at_bottom_of_pavlovs_ramp" );
    _ID42407::_ID28864( "dcburn_hqr_crownag" );
    _ID42407::_ID28864( "dcburn_mcy_omwtofifth" );
    _ID42237::_ID14413( "player_at_top_of_pavlovs_ramp" );

    if ( !_ID42237::_ID14385( "player_shot_at_samsite_guys" ) )
    {
        thread _ID42407::_ID4422( "crow_sneak" );
        _ID42407::_ID28864( "dcburn_mcy_sby2engage" );
    }

    _ID42237::_ID14421( "floor_four_has_been_cleared", "player_headed_to_fifth_floor" );

    if ( _ID42237::_ID14385( "floor_four_has_been_cleared" ) )
    {
        _ID42407::_ID28864( "dcburn_mcy_alldeadfourth" );
        _ID42407::_ID28864( "dcburn_hqr_copythat" );
    }

    _ID42407::_ID14543( "allies" );
    _ID42407::_ID14544( "allies" );
}

_ID44211()
{
    thread _ID53278();
}

_ID53278()
{
    _ID42237::_ID14413( "obj_commerce_defend_snipe_complete" );
    var_0 = getentarray( "bmp_flood_south", "targetname" );
    thread _ID47598( var_0 );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_complete" );
}

_ID47598( var_0 )
{
    level endon( "obj_commerce_defend_javelin_complete" );

    for (;;)
    {
        foreach ( var_2 in var_0 )
            thread _ID52488( var_2 );

        wait(randomfloatrange( 40, 41 ));
    }
}

_ID52488( var_0 )
{
    if ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
        return;

    level endon( "obj_commerce_defend_javelin_complete" );
    wait(randomfloatrange( 40, 41 ));
    var_1 = var_0 _ID42411::_ID35194();
    target_set( var_1, ( 0, 0, 0 ) );
    target_setjavelinonly( var_1, 1 );
    target_setattackmode( var_1, "top" );
    var_1 thread _ID50671();
    var_1 endon( "death" );
    var_1 waittill( "reached_end_node" );
    var_1 notify( "deleted_through_script" );
    var_1 delete();
}

_ID46175()
{
    thread _ID45989();
    thread _ID51853();
    thread _ID44146();
    _ID42237::_ID14413( "player_approaching_crowsnest" );
    thread _ID43417();
}

_ID45989()
{
    _ID42237::_ID14413( "start_music_to_crowsnest" );
    thread _ID42407::_ID24577( "mus_dcburning_evilcrowsnest_approach", 198 );
}

_ID44146()
{
    _ID42237::_ID14413( "player_at_commerce_crows_floor" );
    _ID38942( "colornodes_commerce_to_crowsnest", "script_noteworthy", 1 );
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    thread _ID42407::_ID4422( "elevator_top" );
    thread _ID52268( "all" );

    if ( isdefined( level._ID52924 ) )
        _ID42237::_ID3350( level._ID52924, ::_ID44705 );

    if ( isdefined( level._ID52549 ) )
        _ID42237::_ID3350( level._ID52549, ::_ID44705 );

    var_0 = getent( "volume_commerce_sector_2", "targetname" );
    var_1 = getent( "volume_commerce_sector_3", "targetname" );
    var_2 = getent( "flare_dynamic_01", "targetname" );
    _ID42237::_ID14421( "player_approaching_flare_moment", "player_looking_at_flare_moment" );
    var_3 = _ID42407::_ID3339( getentarray( "commerce_flare_guys", "targetname" ), 1 );
    _ID42237::_ID14413( "player_approaching_crowsnest" );
    thread _ID43663();
    var_4 = _ID42411::_ID35200( "helis_ambient_crowsnest" );
    var_5 = _ID42411::_ID35200( "helis_crows_snipe" );
    _ID42237::_ID3350( var_5, ::_ID53471 );

    if ( isdefined( level._ID46159 ) )
        _ID42237::_ID3350( level._ID46159, ::_ID49450 );

    thread _ID52268( "allies", 128 );
}

animate_wires()
{
    self endon( "death" );
    var_0 = getentarray( "animated_wires", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID3189 = "wire";
        var_2 _ID42259::_ID32556();
        var_2 thread _ID42259::_ID3044( var_2, var_2._ID669 );
    }
}

_ID53471()
{
    self endon( "death" );
    _ID42237::_ID14413( "obj_commerce_defend_crow_given" );
    thread _ID44638( "start" );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    thread _ID54675();
}

_ID49450()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_shot_at_crowsnest_guys" );
    thread _ID44638( "start" );
}

_ID43663()
{
    var_0 = _ID42237::_ID16638( "obj_commerce_sector_3", "targetname" );
    var_1 = var_0._ID740;
    var_2 = "player_shot_at_crowsnest_guys";
    level endon( var_2 );

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        _ID44154( "dcburn_ra3_gridsquare", var_1, var_2 );
        _ID44154( "dcburn_ra1_dontworry", var_1, var_2 );
        wait 0.5;
        _ID44154( "dcburn_ra2_60kph", var_1, var_2 );
        _ID44154( "dcburn_ra3_standbyforlaunch", var_1, var_2 );
        wait 0.5;
        _ID44154( "dcburn_ra1_bygreencar", var_1, var_2 );
        _ID44154( "dcburn_ra2_trackingitnow", var_1, var_2 );
        wait 0.75;
        _ID44154( "dcburn_ra3_tooeasy", var_1, var_2 );
        _ID44154( "dcburn_ra1_confirmhostile", var_1, var_2 );
        _ID44154( "dcburn_ra2_25kph", var_1, var_2 );
        _ID44154( "dcburn_ra3_range572meters", var_1, var_2 );
        _ID44154( "dcburn_ra1_destroyit", var_1, var_2 );
        _ID44154( "dcburn_ra2_clearedtoengage", var_1, var_2 );
        _ID44154( "dcburn_ra3_runfromus", var_1, var_2 );
    }
}

_ID49619()
{
    self endon( "death" );
    _ID42237::_ID14413( "fifth_floor_guys_damaged" );
    self._ID199 = "ambush";
}

_ID51853()
{
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    _ID42237::_ID14402( "start_music_to_crowsnest" );
    _ID42407::_ID28864( "dcburn_mcy_onfifth" );

    if ( _ID42237::_ID14385( "player_approaching_flare_moment" ) || _ID42237::_ID14385( "player_approaching_flare_moment" ) )
    {

    }
    else
        _ID42407::_ID28864( "dcburn_hqr_copy21" );

    _ID42237::_ID14421( "player_approaching_flare_moment", "player_looking_at_flare_moment" );
    wait 0.2;
    _ID42407::_ID28864( "dcburn_cdn_movement" );
    wait 1;

    if ( !_ID42237::_ID14385( "fifth_floor_guys_damaged" ) )
        _ID42407::_ID28864( "dcburn_mcy_watchsectors" );

    wait 3;

    if ( !_ID42237::_ID14385( "fifth_floor_guys_damaged" ) )
        _ID42407::_ID28864( "dcburn_mcy_checkcorners" );

    _ID42237::_ID14413( "player_approaching_crowsnest2" );
    _ID42407::_ID28864( "dcburn_mcy_visoncrow" );
    _ID42407::_ID14543( "allies" );
    level._ID794 _ID42407::_ID27079( "dcburn_ar4_centcom" );
    _ID42407::_ID14544( "allies" );
    _ID42237::_ID14402( "macey_tells_you_to_move_to_crows" );
    wait 0.5;

    if ( !_ID42237::_ID14385( "player_shot_at_crowsnest_guys" ) )
    {
        thread _ID42407::_ID4422( "crow_sneak" );
        _ID42407::_ID28864( "dcburn_mcy_sby2engage" );
    }

    _ID42407::_ID14543( "allies" );
    _ID42407::_ID14544( "allies" );
}

_ID43417()
{
    thread _ID47006();
    thread _ID47149();
    thread _ID47819();
    thread _ID47909();
    thread _ID50265();
    _ID42237::_ID14413( "start_crow_armor_sequence" );
    thread _ID51890();
}

_ID47006()
{
    _ID38942( "colornodes_crowsnest", "script_noteworthy", 1 );
    var_0 = getent( "volume_crowsnest", "targetname" );
    _ID42237::_ID14413( "player_approaching_crowsnest" );
    var_1 = _ID42407::_ID3339( getentarray( "hostiles_crowsnest", "targetname" ), 1 );
    thread _ID44874();
    thread _ID46880( var_1, "crowsnest_has_been_cleared" );
    _ID42237::_ID3350( var_1, ::_ID46701, "player_shot_at_crowsnest_guys" );
    _ID42237::_ID3350( var_1, ::_ID44082 );
    _ID42237::_ID3350( level._ID35507, ::_ID46542 );
    _ID42237::_ID14413( "player_shot_at_crowsnest_guys" );
    thread _ID47136();
    var_2 = _ID42411::_ID35199( "tanks_crowsnest_wave1" );
    thread _ID51426( var_2 );
    _ID42237::_ID3350( var_2, ::_ID48557 );
    _ID42237::_ID3350( level._ID35507, ::_ID49771, "crowsnest_has_been_cleared" );
    _ID42237::_ID14413( "crowsnest_has_been_cleared" );
    thread _ID42407::_ID14403( "obj_commerce_complete", 1 );
    var_3 = getent( "colornodes_crowsnest", "script_noteworthy" );
    var_3 notify( "trigger",  level._ID794  );
    thread _ID47491( "dummy_colornodes_crows1" );
    thread _ID47491( "dummy_colornodes_crows2" );
    _ID42237::_ID14413( "latvee_spotlight_deleted" );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_given" );
    var_4 = _ID42411::_ID35200( "jets_crow_01" );
}

_ID47136()
{
    var_0 = getnode( "foley_crowsnest_radio", "script_noteworthy" );
    var_1 = _ID42237::_ID16638( "foley_anim_origin", "targetname" );
    level._ID44035 setgoalnode( var_0 );
    level._ID44035 waittill( "goal" );
    _ID42237::_ID14413( "crowsnest_has_been_cleared" );
    var_1 thread _ID42259::_ID3111( level._ID44035, "h2_dc_burning_crowsnest_foley_enter" );
    level._ID44035 _ID42259::_ID37173( 10.5 );
    wait 11.0;
    level._ID44035 _ID42259::_ID37173( 5 );

    if ( !_ID42237::_ID14385( "player_is_on_turret" ) )
    {
        var_1 thread _ID42259::_ID3111( level._ID44035, "h2_dc_burning_crowsnest_foley_enter_instr" );
        level._ID44035 _ID42259::_ID37173( 6 );
    }
    else
    {
        level._ID44035 thread _ID10760( "dcburn_mcy_scanfortargets" );
        level._ID44035 thread _ID42259::_ID37173( 6 );
    }

    _ID42237::_ID14402( "foley_is_done_talking" );
}

_ID46542()
{
    self endon( "death" );
    level endon( "player_shot_at_crowsnest_guys" );
    _ID42237::_ID14413( "player_approaching_crowsnest_door" );
    var_0 = getent( "player_in_crowsnest_room", "targetname" );

    while ( !_ID42237::_ID14385( "player_shot_at_crowsnest_guys" ) )
    {
        wait 0.1;

        if ( !isdefined( self ) )
            return;

        if ( self istouching( var_0 ) )
            break;
    }

    thread _ID43826();
    _ID42237::_ID14402( "player_shot_at_crowsnest_guys" );
}

_ID43826()
{
    var_0 = getaiarray( "axis" );

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2 ) )
            continue;

        var_2._ID511 = 0;
    }
}

_ID51469()
{
    var_0 = getent( "model_barrett", "targetname" );
    level._ID53428 = spawn( "script_origin", var_0._ID740 );
    var_1 = spawn( "script_model", var_0._ID740 );
    var_1 setmodel( "weapon_m82_MG_Setup_obj" );
    var_1._ID65 = var_0._ID65;
    var_0._ID3189 = "barrett";
    var_0 _ID42259::_ID32556();
    var_1._ID3189 = "barrett";
    var_1 _ID42259::_ID32556();
    level._ID53428 _ID42259::_ID3018( var_0, "barrett_in" );
    level._ID53428 _ID42259::_ID3018( var_1, "barrett_in" );
    var_1 hide();
    return [ var_0, var_1 ];
}

_ID47149()
{
    _ID42237::_ID14413( "player_approaching_crowsnest2" );
    thread _ID43835();
    var_0 = _ID51469();
    var_1 = var_0[0];
    var_2 = var_0[1];
    var_clear_2
    level._ID49081 = getentarray( "vehicles_crowsnest_defend", "targetname" );
    _ID42237::_ID3350( level._ID49081, ::_ID44131 );
    thread _ID52423();
    level._ID47026 = _ID42407::_ID3339( getentarray( "hostiles_ww2_barret", "targetname" ), 1 );
    _ID42237::_ID3350( level._ID47026, ::_ID54341 );
    _ID42237::_ID3350( level._ID47026, ::_ID45242 );

    foreach ( var_4 in level._ID47026 )
    {
        if ( !isdefined( var_4._ID22746 ) || !var_4._ID22746 )
            var_4 _ID42407::_ID22746();
    }

    _ID42237::_ID14413( "crowsnest_has_been_cleared" );
    _ID42237::_ID3350( level._ID47026, _ID42407::_ID36519 );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_given" );
    thread _ID47442();
    thread _ID47433( var_1, var_2 );
    thread _ID52094();
    _ID42237::_ID14425( "player_is_on_turret", 5 );
    thread _ID50319();
    _ID42237::_ID14413( "only_2_sniper_enemies_remaining" );
    thread _ID44695();
    _ID42237::_ID14388( "can_talk" );
    _ID42407::_ID28864( "dcburn_hqr_stayfrosty" );
    _ID42237::_ID14402( "can_talk" );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_complete" );
    thread _ID47057();
    thread _ID42407::_ID4433( 1 );
    thread _ID42407::_ID14403( "obj_commerce_defend_crow_given", 3 );
    _ID42237::_ID3350( level._ID35507, ::_ID49771, "perimeter_enemies_have_retreated" );
    _ID42407::_ID4918( "allies" );
    thread _ID47645( "dummy_spawner_crowsnest_assault_guys_wave1" );
    thread _ID53843();
    thread _ID45325();
    level._ID46720 = 0;
    _ID38942( "colornodes_crowsnest_surrounded", "script_noteworthy", 1 );
    var_6 = getent( "colornodes_crowsnest_surrounded", "script_noteworthy" );
    var_6 notify( "trigger",  level._ID794  );
    _ID42237::_ID14413( "player_killed_enough" );
    _ID42237::_ID14402( "start_crow_armor_sequence" );
    _ID42237::_ID14402( "obj_commerce_defend_crow_complete" );
    thread _ID42407::_ID4422( "defend_crow_complete" );
    _ID21376( 12 );
    var_7 = getaiarray( "axis" );
    thread _ID42407::_ID2265( var_7, 512 );
    _ID42237::_ID3350( var_7, ::_ID53876 );
}

_ID44695()
{
    level endon( "player_getting_on_minigun" );
    _ID42237::_ID14413( "player_abandoning_crowsnest" );
    setdvar( "ui_deadquote", &"DCBURNING_MISSIONFAIL_CROWSNEST_SNIPE" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID44874()
{
    level endon( "crowsnest_has_been_cleared" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_is_on_turret" ) )
        {
            level._ID794 dodamage( 20 / level._ID794._ID255, level._ID794._ID740 );
            level._ID794 playsound( "bullet_large_flesh_plr" );
        }

        wait(randomfloatrange( 2, 3 ));
    }
}

_ID45325()
{
    wait 3;
    var_0 = 0;

    while ( _ID42237::_ID14385( "player_is_on_turret" ) )
    {
        level._ID794 dodamage( 20 / level._ID794._ID255, level._ID794._ID740 );
        level._ID794 playsound( "bullet_large_flesh_plr" );
        wait(randomfloatrange( 1, 2 ));
        var_0++;

        if ( var_0 > 3 )
            break;
    }

    if ( _ID42237::_ID14385( "player_is_on_turret" ) )
    {
        var_1 = _ID42237::_ID16638( "obj_commerce_defend_javelin", "targetname" );
        magicgrenade( "fraggrenade", var_1._ID740 + ( 0, 0, 144 ), var_1._ID740 + ( 0, 0, 32 ) );
    }
}

_ID53876()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    self notify( "stop_seeking" );
    var_0 = _ID42237::_ID16638( "obj_commerce_sector_1d", "targetname" );
    self setgoalpos( var_0._ID740 );
}

_ID53643()
{
    level endon( "player_killed_enough" );

    if ( !isalive( self ) )
        return;

    while ( isalive( self ) )
    {
        self waittill( "death",  var_0  );

        if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
        {
            level._ID46720++;

            if ( level._ID46720 > 3 )
            {
                _ID42237::_ID14402( "player_killed_enough" );
                continue;
            }

            break;
        }
    }
}

_ID51944()
{
    var_0 = [];
    var_0[0] = level._ID44035;
    var_0[1] = level._ID49792;
    var_1 = getentarray( "friendlies_crowsnest_stage", "targetname" );
    var_0[0] thread _ID51115( var_1[0] );
    var_0[1] thread _ID51115( var_1[1] );
}

_ID51115( var_0 )
{
    self._ID50645 = [];
    var_1 = var_0 _ID42237::_ID15808();
    var_2 = var_0 _ID42407::_ID15811();
    _ID42237::_ID3350( var_2, ::_ID43306, self );
    var_3 = 0;

    while ( !_ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) )
    {
        wait 1;

        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_0._ID740 + ( 0, 0, 32 ), level._ID8760["90"] ) )
            continue;

        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740 + ( 0, 0, 32 ), level._ID8760["90"] ) )
            continue;

        break;
    }

    _ID44512();

    if ( _ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) )
        return;

    var_4 = undefined;
    self._ID29359 = var_0;
    var_5 = "stinger";
    var_6 = "weapon_stinger";
    var_7 = "javelin_muzzle";

    if ( var_0._ID70 == "stinger_idle" )
    {
        var_4 = getent( "volume_stinger_safezone", "targetname" );
        _ID47210();
    }
    else
    {
        var_4 = getent( "volume_javelin_safezone", "targetname" );
        var_3 = 1;
        self._ID70 = var_0._ID70;
        _ID46601();
        var_5 = "javelin_dcburn";
        var_7 = "javelin_muzzle";
        var_6 = "weapon_javelin_sp";
    }

    self hide();
    self._ID29359 _ID42259::_ID3023( self, self._ID44964 );
    self show();
    var_8 = undefined;
    var_9 = undefined;
    var_10 = undefined;
    self attach( var_6, "TAG_INHAND", 1 );
    var_11 = 8;
    self._ID511 = 1;

    while ( !_ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) )
    {
        var_11 = randomfloatrange( 6, 9 );
        self._ID29359 thread _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
        _ID42237::_ID41123( "new_target", var_11 );
        self._ID29359 notify( "stop_idle" );
        self._ID29359 thread _ID42259::_ID3020( self, self._ID50813 );
        self waittillmatch( "single anim",  "fire_weapon"  );
        var_8 = _ID43727( var_1 );

        if ( isdefined( var_8 ) && !level._ID794 istouching( var_4 ) )
        {
            var_10 = self gettagorigin( "tag_inhand" );
            var_9 = magicbullet( var_5, var_10, var_8._ID740 );
            var_9 missile_settargetent( var_8 );

            if ( var_3 )
            {
                var_9 missile_setflightmodetop();
                playfxontag( _ID42237::_ID16299( var_7 ), self, "TAG_FLASH" );
            }
        }

        self waittillmatch( "single anim",  "end"  );

        if ( _ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) || _ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
            break;
    }

    self._ID511 = 0;
    self notify( "stop_shooting_stingers_and_javs" );
    self notify( "stop_first_frame" );
    self._ID29359 notify( "stop_idle" );
    _ID42407::_ID3136();
    self detach( var_6, "TAG_INHAND" );
    self._ID29359 = undefined;
    self._ID50645 = undefined;
}

_ID48097( var_0 )
{
    if ( distance( var_0, level._ID794._ID740 ) > 64 )
        return 1;
    else
        return 0;
}

_ID45040()
{

}

_ID43727( var_0 )
{
    if ( !isdefined( self._ID50645 ) )
        return var_0[randomint( var_0.size )];

    if ( self._ID50645.size == 0 )
        return var_0[randomint( var_0.size )];

    self._ID50645 = _ID42407::_ID29506( self._ID50645 );

    if ( level._ID53717 > 0 && level._ID51365 && self._ID50645.size > 0 )
        return self._ID50645[0];
    else
        return var_0[randomint( var_0.size )];
}

_ID43306( var_0 )
{
    level endon( "obj_commerce_defend_javelin_complete" );
    var_0 endon( "stop_shooting_stingers_and_javs" );
    self endon( "death" );

    while ( !_ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) && isdefined( var_0._ID50645 ) )
    {
        self waittill( "trigger",  var_1  );

        if ( !isdefined( var_1 ) )
            break;

        if ( !isdefined( var_0._ID50645 ) )
            break;

        var_0._ID50645 = _ID42237::_ID3293( var_0._ID50645, var_1 );
        var_0 notify( "new_target" );
        wait 2;

        if ( isdefined( var_1 ) )
            var_0._ID50645 = _ID42237::_ID3321( var_0._ID50645, var_1 );

        if ( _ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) || _ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
            break;
    }
}

_ID47442()
{
    var_0 = getnodearray( "crow_nodes_drone_fire", "targetname" );
    var_1 = getent( "hostiles_fodder_crowsnest", "targetname" );
    level._ID48019 = var_1 _ID42407::_ID35014();
    var_2 = [];
    var_2[0] = level._ID44035;
    var_2[1] = level._ID49792;

    foreach ( var_4 in var_2 )
    {
        var_4 _ID42407::_ID10871();
        var_5 = _ID42237::_ID16276( level._ID794._ID740, var_0 );
        var_0 = _ID42237::_ID3321( var_0, var_5 );
        var_4._ID381 = 0;
        var_4._ID452 = 16;
        var_4 setgoalnode( var_5 );
    }

    _ID42237::_ID3350( var_2, ::_ID50457 );
}

_ID50457()
{
    self endon( "stop_shooting_at_drones" );

    for (;;)
    {
        wait(randomfloatrange( 3, 6 ));
        self._ID507 = 1;
        wait(randomfloatrange( 3, 6 ));
        self._ID507 = 0;
    }
}

_ID47057()
{
    if ( isdefined( level._ID48019 ) )
        level._ID48019 _ID47688();

    var_0 = [];
    var_0[0] = level._ID44035;
    var_0[1] = level._ID49792;
    _ID42237::_ID3350( var_0, ::_ID44512 );
}

_ID44512()
{
    self notify( "stop_shooting_at_drones" );
    wait 0.05;
    _ID42407::_ID12445();
    self._ID381 = 1;
    self._ID507 = 0;
}

_ID53843()
{
    level endon( "player_killed_enough" );

    while ( !_ID42237::_ID14385( "player_killed_enough" ) )
    {
        if ( _ID42237::_ID14385( "player_killed_enough" ) )
            break;

        level._ID49792 _ID10760( "dcburn_cpd_inperimeter" );
        wait(randomfloatrange( 8, 14 ));

        if ( _ID42237::_ID14385( "player_killed_enough" ) )
            break;

        level._ID49792 _ID10760( "dcburn_cpd_takingfire" );
        wait(randomfloatrange( 8, 14 ));

        if ( _ID42237::_ID14385( "player_killed_enough" ) )
            break;

        level._ID49792 _ID10760( "dcburn_cpd_hostatsix" );
        wait(randomfloatrange( 8, 14 ));
    }
}

_ID46701( var_0 )
{
    self endon( "alerted" );
    thread _ID47179();
    wait 0.5;
    _ID42237::_ID41068( "damage", "death", "shot_at" );
    _ID42237::_ID14402( var_0 );

    if ( isdefined( self ) )
        thread _ID48687();
}

_ID47179()
{
    var_0 = 262144;
    self endon( "death" );
    self endon( "alerted" );
    self addaieventlistener( "grenade danger" );
    self addaieventlistener( "gunshot" );
    self addaieventlistener( "silenced_shot" );
    self addaieventlistener( "bulletwhizby" );
    self addaieventlistener( "projectile_impact" );
    wait 0.5;

    while ( isalive( self ) )
    {
        self waittill( "ai_event",  var_1  );

        if ( var_1 == "grenade danger" || var_1 == "damage" || var_1 == "projectile_impact" || var_1 == "explode" )
            break;

        if ( distancesquared( self._ID740, level._ID794._ID740 ) > var_0 )
            continue;

        if ( var_1 == "grenade danger" || var_1 == "damage" || var_1 == "gunshot" || var_1 == "bulletwhizby" || var_1 == "projectile_impact" || var_1 == "explode" )
            break;
    }

    self notify( "shot_at" );
}

_ID44082()
{
    self endon( "death" );
    self endon( "alerted" );
    _ID42237::_ID14415( "player_entering_wall_hole", "player_shot_at_crowsnest_guys", "player_gawking_at_crowsnest_guys" );
    _ID42237::_ID14402( "player_shot_at_crowsnest_guys" );
    thread _ID48687();
}

_ID50319()
{
    level endon( "obj_commerce_defend_snipe_complete" );
    var_0 = 4;

    if ( level._ID15361 == 2 || level._ID15361 == 3 )
        var_0 = 0.1;

    foreach ( var_2 in level._ID47026 )
    {
        if ( isalive( var_2 ) )
        {
            var_2._ID53511 = 1;
            wait(var_0);
        }
    }
}

_ID52094()
{
    var_0 = getent( "volume_crowsnest", "targetname" );
    level._ID52350 = gettime();
    var_1 = 0;
    var_2 = 2;
    var_3 = 0;
    var_4 = 2;
    var_5 = 0;
    var_6 = 1;
    wait 0.5;

    while ( !_ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
    {
        if ( var_1 > var_2 )
            var_1 = 0;

        if ( var_3 > var_4 )
            var_3 = 0;

        if ( var_5 > var_6 )
            var_5 = 0;

        _ID49563();
        _ID42237::_ID14413( "can_start_crow_nags" );

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
            break;

        if ( !level._ID794 istouching( var_0 ) && _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "player_is_on_turret" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _ID10760( "stay_in_nest_nag_" + var_3 );
            var_3++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !_ID42237::_ID14385( "player_is_on_turret" ) && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _ID10760( "barret_nag_" + var_1 );
            var_1++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !_ID48407() && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _ID10760( "barret_shoot_nag_" + var_5 );
            var_5++;
            _ID42237::_ID14402( "can_talk" );
        }
    }
}

_ID43835()
{
    var_0 = getent( "crowsnest_seaknight_01", "targetname" );
    var_1 = getent( "crowsnest_seaknight_02", "targetname" );
    var_0 notify( "spawn" );
    var_1 notify( "spawn" );
    _ID42237::_ID14413( "player_in_crowsnest_room" );
    _ID42237::_ID14413( "make_seaknights_take_off" );
    var_0 notify( "play_anim" );
    var_0 thread _ID42407::_ID27081( "scn_dcburning_crowsnest_heli_01" );
    wait 3;
    var_1 notify( "play_anim" );
    var_1 thread _ID42407::_ID27081( "scn_dcburning_crowsnest_heli_02" );
}

_ID52423()
{
    var_0 = undefined;
    var_1 = ( 1, 1, 0 );
    level._ID51351 = level._ID49081.size;
    var_2 = _ID42313::_ID9220( "default", 1.5 );
    var_2 _ID42313::_ID32753( "TOP", undefined, -41, 30 );
    var_2._ID196 = var_1;
    var_2._ID55 = 0;
    _ID42237::_ID14413( "obj_commerce_defend_snipe_given" );
    var_2 settext( &"DCBURNING_INFO_EVAC_SITE_HEALTH" );
    var_3 = _ID42313::_ID9220( "default", 1.5 );
    var_3 _ID42313::_ID32753( "TOP", undefined, 45, 30 );
    var_3._ID196 = var_1;
    var_3._ID55 = 0;

    if ( getdvar( "dc_debug" ) == "1" )
    {
        var_3 fadeovertime( 1 );
        var_2 fadeovertime( 1 );
        var_2._ID55 = 1;
        var_3._ID55 = 1;
    }

    thread _ID44296();

    while ( !_ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
    {
        var_0 = _ID52038();

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
            break;

        level _ID42237::_ID41098( "evac_vehicle_owned", "obj_commerce_defend_snipe_complete" );

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
            break;

        if ( level._ID49081.size < 2 )
            thread _ID45079();
    }

    var_2 fadeovertime( 1 );
    var_3 fadeovertime( 1 );
    var_2._ID55 = 0;
    var_3._ID55 = 0;
    var_2 _ID42313::_ID10476();
    var_3 _ID42313::_ID10476();
}

_ID44296()
{
    var_0 = 0;
    _ID42237::_ID14413( "can_start_crow_nags" );

    while ( !_ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
    {
        _ID42237::_ID14413( "can_talk" );
        level waittill( "evac_vehicle_owned" );

        if ( level._ID48957 == 100 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_fail" );
            _ID42237::_ID14402( "can_talk" );
            return;
            continue;
        }

        if ( level._ID48957 > 25 && level._ID48957 < 50 && var_0 < 25 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_00" );
            var_0 = 25;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( level._ID48957 > 50 && level._ID48957 < 75 && var_0 < 50 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_01" );
            var_0 = 50;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( level._ID48957 > 75 && level._ID48957 < 90 && var_0 < 75 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_02" );
            var_0 = 75;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( level._ID48957 > 90 && level._ID48957 < 100 && var_0 < 90 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_03" );
            var_0 = 90;
            _ID42237::_ID14402( "can_talk" );
        }
    }
}

_ID45079()
{
    level._ID49081 = _ID42407::_ID29506( level._ID49081 );
}

_ID43182()
{
    setdvar( "ui_deadquote", &"DCBURNING_MISSIONFAIL_CROWSNEST_SNIPE" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID52885()
{
    setdvar( "ui_deadquote", &"DCBURNING_MISSIONFAIL_CROWSNEST_SNIPE" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID52038()
{
    var_0 = level._ID49081.size / level._ID51351 * 100;
    var_0 = _ID42407::_ID30292( var_0, 0 );
    var_1 = 100 - var_0;
    level._ID48957 = var_1;
    var_2 = _ID42407::_ID36694( var_1 ) + " percent";
    return var_2;
}

_ID47433( var_0, var_1 )
{
    if ( !_ID42237::_ID14385( "player_get_on_turret" ) && !_ID42237::_ID14385( "only_2_sniper_enemies_remaining" ) )
    {
        var_0 hide();
        var_1 show();
        _ID42237::_ID14413( "player_get_on_turret" );
        var_1 hide();
        var_0 show();
    }
}

_ID50265()
{
    _ID42237::_ID14413( "crowsnest_has_been_cleared" );
    thread _ID42407::_ID4422( "crowsnest_cleared" );
    wait 1;
    _ID42237::_ID14402( "make_seaknights_take_off" );
    _ID42475::_ID34575( "start_crowsnest_dialog_mix" );
    _ID42237::_ID14413( "foley_is_done_talking" );
    wait 2;
    _ID42237::_ID14402( "obj_commerce_defend_snipe_given" );

    if ( !_ID42237::_ID14385( "player_is_on_turret" ) )
        wait 4;

    _ID42407::_ID28864( "dcburn_evc_glassedenemieswest" );
    _ID42237::_ID14402( "can_start_crow_nags" );
    _ID42475::_ID34575( "stop_crowsnest_dialog_mix" );
}

_ID44131()
{
    level endon( "obj_commerce_defend_snipe_complete" );
    self setcandamage( 1 );
    var_0 = self._ID740;

    while ( isdefined( self ) )
    {
        self waittill( "damage",  var_1, var_2, var_3, var_4, var_5  );

        if ( !isdefined( var_5 ) )
            continue;

        if ( !isdefined( var_2 ) )
            continue;

        if ( isdefined( var_2._ID172 ) && var_2._ID172 == "misc_turret" )
            continue;

        if ( !isdefined( var_1 ) )
            continue;

        if ( isplayernumber( var_2 ) )
            continue;

        if ( isdefined( var_2._ID1194 ) && var_2._ID1194 != "axis" )
            continue;

        if ( var_5 == "MOD_PROJECTILE" && var_1 > 999 )
            break;

        if ( var_5 == "MOD_PROJECTILE_SPLASH" && var_1 >= 3000 )
            break;
    }

    if ( _ID42407::_ID20542( level._ID49081, self ) )
        level._ID49081 = _ID42237::_ID3321( level._ID49081, self );

    if ( _ID42407::_ID20542( level._ID52873, self ) )
        level._ID52873 = _ID42237::_ID3321( level._ID52873, self );

    self._ID263 = 1;
    level notify( "evac_vehicle_owned" );
    var_6 = undefined;
    var_7 = "large_vehicle_explosion";
    var_8 = "exp_tanker_vehicle";

    if ( isdefined( self._ID31273 ) )
    {
        var_6 = getent( self._ID31273, "script_linkname" );
        var_6 show();
        self delete();
    }
    else
    {
        switch ( self._ID669 )
        {
            case "vehicle_laatpv":
                var_6 = "vehicle_laatpv_destroyed";
                var_8 = "exp_armor_vehicle";
                break;
            case "vehicle_bradley_static_low":
            case "vehicle_bradley_static":
                var_6 = "vehicle_bradley_destroyed";
                var_8 = "exp_armor_vehicle";
                break;
            case "vehicle_ch46e_low":
                var_6 = "vehicle_ch46e_crash_site_dcburning";
                var_8 = "exp_armor_vehicle";
                break;
        }

        endswitch( 5 )  case "vehicle_ch46e_low" loc_6A90 case "vehicle_bradley_static" loc_6A7E case "vehicle_bradley_static_low" loc_6A7E case "vehicle_laatpv" loc_6A6C default loc_6AA2
        self setmodel( var_6 );
    }

    playfx( _ID42237::_ID16299( var_7 ), var_0 );
    thread _ID42237::_ID27077( var_8, var_0 );
}

_ID46708()
{
    self endon( "death" );
    self setcandamage( 1 );

    while ( isdefined( self ) )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isdefined( var_4 ) )
            continue;

        if ( !isdefined( var_1 ) )
            continue;

        if ( !isdefined( var_0 ) )
            continue;

        if ( isplayernumber( var_1 ) )
            continue;

        if ( var_4 == "MOD_PROJECTILE" && var_0 > 999 )
            break;

        if ( var_4 == "MOD_PROJECTILE_SPLASH" && var_0 == 4000 )
            break;
    }

    var_5 = undefined;
    var_6 = "large_vehicle_explosion";
    var_7 = "exp_tanker_vehicle";
    var_8 = "tanker_fire";
    var_9 = 0;

    if ( isdefined( self._ID31273 ) )
    {
        var_5 = getent( self._ID31273, "script_linkname" );
        var_5 show();
        self delete();
    }
    else
    {
        switch ( self._ID669 )
        {
            case "vehicle_laatpv":
                var_5 = "vehicle_laatpv_destroyed";
                var_7 = "exp_armor_vehicle";
                var_8 = undefined;
                break;
            case "vehicle_bradley":
                var_5 = "vehicle_bradley";
                var_7 = "exp_armor_vehicle";
                var_8 = undefined;
                break;
            case "vehicle_m1a1_abrams":
                var_5 = "vehicle_m1a1_abrams_dmg";
                var_7 = "exp_armor_vehicle";
                var_8 = undefined;
                break;
        }

        endswitch( 4 )  case "vehicle_m1a1_abrams" loc_6BED case "vehicle_bradley" loc_6BD7 case "vehicle_laatpv" loc_6BC1 default loc_6C03
        self setmodel( var_5 );
    }

    playfx( _ID42237::_ID16299( var_6 ), self._ID740 );
    thread _ID42237::_ID27077( var_7 );

    if ( isdefined( var_8 ) )
    {
        var_10 = spawn( "script_origin", self._ID740 + ( 0, 0, 0 ) );
        var_10._ID65 = self._ID65;
        var_11 = spawnfx( _ID42237::_ID16299( var_8 ), var_10._ID740 );
        triggerfx( var_11 );
        _ID42237::_ID14413( "player_heli_19" );
        var_11 delete();
        var_10 delete();
    }
}

_ID51890()
{
    thread _ID45220();
    thread _ID43995();
    thread _ID49126();
    thread _ID53962();
    thread _ID45013();
    thread _ID48485();
    thread _ID53827();
    _ID42237::_ID14413( "crowsnest_sequence_finished" );
    thread _ID43705();
}

_ID43995()
{
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    wait 5;

    if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
        return;

    while ( !_ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
    {
        wait 20;

        if ( _ID54283() )
            wait 10;

        if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
            return;

        if ( !_ID54283() )
        {
            level._ID794 thread _ID42407::_ID11085( "javelin_pickup" );
            continue;
        }

        if ( _ID54283() && _ID43952() )
        {
            level._ID794 thread _ID42407::_ID11085( "javelin_shoot" );
            continue;
        }

        level._ID794 thread _ID42407::_ID11085( "javelin_switch" );
    }
}

_ID51222()
{
    if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
        return 1;

    if ( !_ID54283() )
        return 1;

    if ( !_ID43952() )
        return 1;

    return _ID44133::_ID48317();
}

_ID43218()
{
    if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
        return 1;

    return _ID43952();
}

_ID48000()
{
    if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
        return 1;

    if ( _ID43952() )
        return 1;

    var_0 = level._ID794 getweaponslistprimaries();
    var_1 = 0;
    return _ID54283();
}

_ID54283()
{
    var_0 = level._ID794 getweaponslistall();

    if ( !isdefined( var_0 ) )
        return 0;

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2, "javelin" ) )
            return 1;
    }

    return 0;
}

_ID43952()
{
    var_0 = level._ID794 getcurrentweapon();

    if ( issubstr( var_0, "javelin" ) )
        return 1;
    else
        return 0;
}

_ID53962()
{
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    _ID42407::_ID24584();
    wait 0.1;
    thread _ID42407::_ID24577( "mus_dcburning_ordnance_and_run", 140 );
}

_ID49126()
{
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    thread _ID49062();
    wait 1;

    if ( level._ID51057.size < 5 )
    {
        var_0 = _ID42411::_ID35200( "tanks_crowsnest_wave2" );
        _ID42237::_ID3350( var_0, ::_ID50269 );
    }
}

_ID49062()
{
    if ( level._ID15361 > 1 )
        return;

    level._ID794 enableinvulnerability();
    _ID42237::_ID14413( "player_has_killed_at_least_one_javelin_target" );
    level._ID794 disableinvulnerability();
}

_ID45220()
{
    _ID42237::_ID14413( "start_crow_armor_sequence" );
    var_0 = getent( "barrett_trigger", "targetname" );
    var_0._ID740 = var_0._ID740 + ( 0, 0, -20 );
    var_0 usetriggerrequirelookat();
    var_0 notify( "stop_hint_text" );
    level._ID53489 thread _ID52024();
    var_1 = _ID42411::_ID35200( "helis_crowsnest" );
    var_2 = _ID42411::_ID35200( "helis_crowsnest_respawners" );
    _ID42237::_ID3350( var_1, ::_ID54675 );
    _ID42237::_ID3350( var_2, ::_ID54675 );
    thread _ID47894();
    var_3 = getent( "perimeter_enemies", "targetname" );
    thread _ID50922( var_3, "perimeter_enemies_have_retreated" );
    wait 25;
    level._ID51365 = 1;
    _ID42237::_ID14413( "only_2_javelin_enemies_remaining" );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_complete" );
    thread _ID42407::_ID4433();
    _ID42237::_ID14402( "crowsnest_sequence_finished" );
    _ID52795();
}

_ID47894()
{
    _ID42237::_ID14413( "perimeter_enemies_have_retreated" );
    thread _ID47442();
    thread _ID51944();
}

_ID52795()
{
    if ( !_ID54283() )
        return;

    var_0 = 0;
    var_1 = 0;
    var_2 = level._ID794 getweaponslistprimaries();
    var_3 = 0;

    foreach ( var_5 in var_2 )
    {
        if ( issubstr( var_5, "avelin" ) )
        {
            var_1 = 1;

            if ( issubstr( level._ID794 getcurrentweapon(), "avelin" ) )
            {
                var_3 = 1;
                level._ID794 disableweapons();
                wait 1.5;
            }

            level._ID794 takeweapon( var_5 );
            continue;
        }

        if ( var_5 == "m4m203_eotech" )
            var_0 = 1;
    }

    if ( !var_1 )
        return;

    level._ID794 enableweapons();

    if ( !var_0 )
        level._ID794 giveweapon( "m4m203_eotech" );

    if ( var_3 )
        level._ID794 switchtoweapon( "m4m203_eotech" );
}

_ID48485()
{
    _ID42237::_ID14413( "start_crow_armor_sequence" );
    _ID42407::_ID28864( "dcburn_hqr_clearout" );
    level._ID44035 _ID10760( "dcburn_mcy_negative" );
    _ID42237::_ID14402( "obj_commerce_defend_javelin_given" );
    level._ID44035 _ID10760( "dcburn_mcy_useordnance" );
    thread _ID49787();
    thread _ID48676();
}

_ID45585( var_0 )
{
    var_1 = spawn( "script_model", var_0._ID740 );
    var_1 setmodel( "h2_weapon_javelin_base_obj" );
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    var_1 show();

    for (;;)
    {
        if ( _ID54283() )
            break;

        wait 0.1;
    }

    _ID42237::_ID14402( "player_has_javelin" );
    var_1 delete();
}

_ID49787()
{
    var_0 = getent( "volume_crowsnest", "targetname" );
    level._ID52350 = gettime();
    var_1 = 0;
    var_2 = 3;
    var_3 = 0;
    var_4 = 2;
    var_5 = 0;
    var_6 = 2;
    wait 0.5;

    while ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
    {
        if ( var_1 > var_2 )
            var_1 = 0;

        if ( var_3 > var_4 )
            var_3 = 0;

        if ( var_5 > var_6 )
            var_5 = 0;

        _ID49563();

        if ( _ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
            break;

        if ( !level._ID794 istouching( var_0 ) && _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "player_is_on_turret" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _ID10760( "stay_in_nest_nag_" + var_3 );
            var_3++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !level._ID794 _ID42407::_ID27729() && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _ID10760( "rocket_nag_" + var_1 );
            var_1++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !_ID48407() && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _ID10760( "rocket_shoot_nag_" + var_5 );
            var_5++;
            _ID42237::_ID14402( "can_talk" );
        }
    }
}

_ID52024()
{
    level._ID48957 = 0;
    level endon( "mission failed" );
    level endon( "missionfailed" );
    self setcandamage( 1 );
    self._ID47357 = undefined;

    switch ( level._ID15361 )
    {
        case 0:
            self._ID47357 = 5000;
            break;
        case 1:
            self._ID47357 = 5000;
            break;
        case 2:
            self._ID47357 = 5000;
            break;
        case 3:
            self._ID47357 = 5000;
            break;
    }

    self._ID43720 = self._ID47357;
    _ID42237::_ID14402( "monument_dummy_target_setup" );

    while ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4  );

        if ( !isdefined( var_1 ) )
            continue;

        if ( !isdefined( var_0 ) )
            continue;

        if ( isplayernumber( var_1 ) )
            continue;

        if ( isdefined( var_1._ID1194 ) && var_1._ID1194 != "axis" )
            continue;

        if ( !isdefined( var_4 ) )
            continue;

        if ( var_4 == "MOD_PROJECTILE" )
        {
            _ID44908( 100 );

            if ( self._ID47357 < 1 )
                break;
        }

        if ( var_4 == "MOD_PROJECTILE_SPLASH" )
        {
            _ID44908( 50 );

            if ( self._ID47357 < 1 )
                break;
        }
    }

    if ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
        thread _ID52885();
}

_ID44908( var_0 )
{
    self._ID47357 = self._ID47357 - var_0;
    var_1 = self._ID47357 / self._ID43720 * 100;
    var_1 = _ID42407::_ID30292( var_1, 0 );
    var_2 = 100 - var_1;
    level._ID48957 = var_2;
    level notify( "monument_dummy_hit" );

    if ( getdvar( "dc_debug" ) == "1" )
        return;
}

_ID48676()
{
    _ID42237::_ID14413( "monument_dummy_target_setup" );
    var_0 = 0;
    var_1 = level._ID53489._ID47357;

    while ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
    {
        _ID42237::_ID14413( "can_talk" );
        level waittill( "monument_dummy_hit" );

        if ( level._ID48957 == 100 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_fail" );
            _ID42237::_ID14402( "can_talk" );
            return;
            continue;
        }

        if ( level._ID48957 > 25 && level._ID48957 < 50 && var_0 < 25 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_00" );
            var_0 = 25;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( level._ID48957 > 50 && level._ID48957 < 75 && var_0 < 50 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_01" );
            var_0 = 50;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( level._ID48957 > 75 && level._ID48957 < 90 && var_0 < 75 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_02" );
            var_0 = 75;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( level._ID48957 > 90 && level._ID48957 < 100 && var_0 < 90 )
        {
            _ID42237::_ID14388( "can_talk" );
            _ID42407::_ID28864( "dcburn_evc_damage_03" );
            var_0 = 90;
            _ID42237::_ID14402( "can_talk" );
        }
    }
}

_ID51426( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        wait 5;
        thread _ID42411::_ID17021( var_2 );
    }
}

_ID54675()
{
    self endon( "death" );
    thread _ID53631();
    thread _ID50671();
    var_0 = _ID42411::_ID40142();
    _ID42237::_ID3350( var_0, ::_ID43745, self );
}

_ID53631()
{
    if ( isdefined( self._ID922 ) && issubstr( self._ID922, "crow_heli_respawner_" ) )
    {
        var_0 = self._ID922;
        self waittill( "death" );
        wait 1;
        var_1 = getentarray( var_0, "script_noteworthy" );

        foreach ( var_3 in var_1 )
        {
            if ( !isdefined( var_3._ID40264 ) )
            {
                if ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
                {
                    var_4 = _ID42411::_ID40260( var_3 );
                    thread _ID42411::_ID17021( var_4 );
                    var_4 thread _ID54675();
                    break;
                }
            }
        }
    }
}

_ID43745( var_0 )
{
    var_0 endon( "death" );

    if ( !isdefined( self._ID922 ) )
        return;

    var_1 = undefined;
    var_2 = undefined;

    switch ( self._ID922 )
    {
        case "target_nothing":
            var_1 = undefined;
            break;
        case "target_evac":
            var_1 = getent( "monument_target", "targetname" );
            var_2 = var_1;
            break;
        case "target_crowsnest":
            var_1 = getent( "javelin_source_org", "targetname" );
            var_2 = level._ID794;
            break;
        default:
            return;
    }

    while ( isdefined( var_0 ) )
    {
        self waittill( "trigger" );

        if ( !isdefined( var_1 ) )
            var_0 clearlookatent();
        else
            var_0 setlookatent( var_1 );

        if ( isdefined( var_2 ) )
        {
            var_0 thread _ID46491( var_2 );
            continue;
        }

        var_0 notify( "stop_firing_turret" );
    }
}

_ID48557()
{
    self endon( "death" );
    _ID42407::_ID13024( "start_firing" );
    _ID42407::_ID13027( "start_firing" );
    thread _ID45600();
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    thread _ID50671();
}

_ID50269()
{
    self endon( "death" );
    _ID42407::_ID13024( "start_firing" );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    thread _ID50671();
    _ID42407::_ID13027( "start_firing" );
    thread _ID45600();
}

_ID45600()
{
    self endon( "death" );
    _ID42411::_ID40292();
    thread _ID51330( level._ID53489 );

    while ( isdefined( self ) )
    {
        self setturrettargetent( level._ID53489 );
        wait(randomfloatrange( 3, 6 ));
        self fireweapon();
    }
}

_ID43705()
{
    thread _ID54212();
    thread _ID53171();
    _ID42237::_ID14413( "player_approaching_outer_balcony" );
    thread _ID50242();
}

_ID52605()
{
    _ID42237::_ID14413( "roof_door_kicked" );
    var_0 = getent( "door_to_roof_swing", "targetname" );
    var_1 = getent( var_0._ID1191, "targetname" );
    var_1 linkto( var_0 );
    var_0._ID48297 = self._ID740;
    var_0._ID44067 = self._ID65;
    var_0 rotateyaw( -170, 0.5 );
    var_0 moveto( var_0._ID740 + ( 11, 0, 0 ), 0.1 );
    var_1 connectpaths();
}

_ID43041()
{
    self endon( "death" );
    thread _ID50012();
    self._ID24727 = 1;
    self._ID452 = 16;
    self._ID4867 = 1000;
    self._ID86 = 0;
    _ID42237::_ID14413( "player_roof_stairs_00" );
    self._ID486 = 1;
    self._ID4867 = 0.01;
    self._ID86 = 10;
    thread _ID42407::_ID36519();
}

_ID53827()
{
    _ID42237::_ID14413( "spawn_door_allies" );
    var_0 = getent( "trigger_volume_breach_stairwell", "targetname" );
    var_0 _ID42237::_ID38863();
    var_1 = getent( "volume_breach_stairwell", "targetname" );
    thread _ID53388( var_1 );
    var_2 = _ID42407::_ID3339( getentarray( "crowsnest_breachers", "targetname" ) );
    var_3 = _ID42407::_ID3339( getentarray( "friendlies_breach_defend", "targetname" ) );
    _ID42237::_ID3350( var_3, ::_ID43041 );
    var_4 = "shotgunhinges_breach_left";
    var_1 thread _ID42265::_ID6064( var_2, var_4 );

    foreach ( var_6 in var_2 )
    {
        var_6._ID47609 = getnode( var_6._ID1191, "targetname" );
        var_6 thread _ID48332();
    }

    _ID42237::_ID14413( "crowsnest_sequence_finished" );
    _ID38942( "colornodes_start_to_roof", "script_noteworthy", 1 );
    var_8 = getent( "colornodes_start_to_roof", "script_noteworthy" );
    var_8 notify( "trigger",  level._ID794  );
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    thread _ID52605();
    var_0 _ID42237::_ID38865();
    _ID42407::_ID10226( 3, ::_ID47645, "dummy_spawner_roof_wave_01" );
    _ID42237::_ID14413( "obj_rooftop_given" );

    if ( isdefined( level._ID51057 ) && level._ID51057.size > 0 )
        _ID42237::_ID3350( level._ID51057, ::_ID46349 );

    var_9 = getaiarray( "allies" );
    _ID42237::_ID3350( var_9, _ID42407::_ID8925, "off" );

    foreach ( var_6 in var_9 )
        var_6._ID24727 = 1;

    _ID42237::_ID14413( "roof_breach_complete" );

    foreach ( var_6 in var_2 )
    {
        var_6 setgoalnode( var_6._ID47609 );
        var_6._ID452 = 64;
    }

    _ID38942( "colornodes_to_roof", "script_noteworthy", 1 );
    setsaveddvar( "ai_friendlyFireBlockDuration", 0 );

    foreach ( var_6 in level._ID35507 )
    {
        if ( !isalive( var_6 ) )
            continue;

        var_6._ID7._ID11043 = 1;
        var_6._ID513 = 1;
        var_6._ID11014 = 1;
        var_6._ID465 = 0;
        var_6._ID452 = 32;

        if ( var_6 == level._ID44035 || var_6 == level._ID49792 )
        {
            self._ID86 = 0.01;
            self._ID4867 = 1000;
        }
    }

    wait 2;
    _ID42237::_ID3350( var_2, ::_ID47467 );

    foreach ( var_6 in var_2 )
        var_6 thread _ID43214();

    _ID47645( "dummy_spawner_roof_wave_02" );

    if ( !_ID42237::_ID14385( "player_roof_stairs_00" ) )
        thread _ID47491( "dummy_colornodes_to_roof" );

    _ID42237::_ID14413( "player_roof_stairs_01" );

    if ( isdefined( level._ID47026 ) && level._ID47026.size > 0 )
        _ID42237::_ID3350( level._ID47026, ::_ID47688 );

    thread _ID48047( "hostiles_drones_comm_south" );
    thread _ID44575();
    thread _ID47411( "all", 1024, 1 );
    _ID42237::_ID14413( "player_roof_stairs_02" );
    var_18 = _ID42411::_ID35200( "jets_tenches_01" );
    var_19 = getnode( "node_roof_leader", "targetname" );
    var_20 = getnode( "node_roof_friendly02", "targetname" );
    level._ID44035 thread _ID48609( var_19 );
    level._ID49792 thread _ID48609( var_20 );
    _ID42237::_ID14413( "player_top_floor_commerce" );
    level._ID50577 = getdvarfloat( "ai_pathNegotiationOverlapCost" );
    setsaveddvar( "ai_pathNegotiationOverlapCost", 5000 );
    var_21 = _ID42411::_ID35200( "jets_tenches_02" );
    _ID42237::_ID14413( "player_outer_balcony_top_commerce" );
    var_22 = _ID42411::_ID35195( "heli_deck2" );
    thread _ID42411::_ID17021( var_22 );
    var_22 thread _ID54411();
    var_22 thread _ID47925();
    _ID42237::_ID14413( "player_at_commerce_rooftop" );
    setsaveddvar( "ai_pathNegotiationOverlapCost", level._ID50577 );

    if ( isdefined( var_22 ) )
        var_22 delete();

    _ID42237::_ID14402( "obj_rooftop_complete" );
    thread _ID42407::_ID4422( "rooftop" );
}

_ID54411()
{
    self endon( "death" );
    self setlookatent( level._ID794 );
    _ID42237::_ID14413( "balcony_heli_raised_up" );
    self clearlookatent();
    _ID42237::_ID14413( "player_at_commerce_rooftop" );

    if ( isdefined( self ) )
        self delete();
}

_ID47925()
{
    var_0 = 2200;
    var_1 = 600;
    var_2 = 0.03;
    var_3 = 0.25;
    var_4 = 0.05;
    var_5 = 0.4;
    var_6 = 0.04;
    var_7 = 0.4;
    var_8 = 0.5;
    var_9 = var_3 - var_2;
    var_10 = var_5 - var_4;
    var_11 = var_7 - var_6;
    wait 0.8;

    while ( isdefined( self ) )
    {
        var_12 = distance( level._ID794._ID740, self._ID740 );

        if ( var_12 < var_1 )
            var_13 = 1;
        else if ( var_12 > var_0 )
            var_13 = 0;
        else
            var_13 = ( var_12 - var_0 ) / ( var_1 - var_0 );

        var_9 = var_2 + var_9 * var_13;
        var_10 = var_4 + var_10 * var_13;
        var_11 = var_6 + var_11 * var_13;
        screenshake( level._ID794._ID740, var_9, var_10, var_11, var_8, 0, 0, 0, 9, 11, 10 );
        wait 0.1;
    }
}

_ID46349()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_roof_stairs_01" );

    if ( isdefined( self ) )
        _ID44705();
}

_ID47467()
{
    self endon( "death" );
    self._ID24727 = 1;
    self._ID486 = 1;
    self._ID452 = 32;
    self._ID4867 = 0.01;
}

_ID47491( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_2 = getent( var_1._ID31273, "script_linkname" );

    if ( isdefined( var_2 ) )
        var_2 notify( "trigger",  level._ID794  );
}

_ID53388( var_0 )
{
    var_0 waittill( "breach_complete" );
    _ID42237::_ID14402( "roof_breach_complete" );
}

_ID54212()
{
    _ID42237::_ID14413( "crowsnest_sequence_finished" );
    _ID42407::_ID28864( "dcburn_hqr_roofasap" );
    _ID42237::_ID14402( "obj_rooftop_given" );
    level._ID44035 _ID10760( "dcburn_mcy_rooftop" );
    thread _ID53050( 90 );
    _ID42407::_ID28864( "dcburn_hqr_urgentsurgicals" );

    while ( !_ID42237::_ID14385( "roof_breach_complete" ) )
    {
        level._ID44035 _ID10760( "dcburn_mcy_rvwithseals" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_crawlin" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_letsmoveout" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_gettoroofnow" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_overrunningpos" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;
    }

    _ID42407::_ID28864( "dcburn_ar5_triplea" );
    _ID42407::_ID28864( "dcburn_ar2_backinseats" );

    while ( !_ID42237::_ID14385( "player_roof_stairs_00" ) )
    {
        level._ID44035 _ID10760( "dcburn_mcy_outnumbered" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "player_roof_stairs_00" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_upthestairsgo" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "player_roof_stairs_00" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_waitallday" );
        wait(randomfloatrange( 8, 12 ));

        if ( _ID42237::_ID14385( "player_roof_stairs_00" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_gettingoverrun" );
    }

    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-21956 1185 -235" );
    wait 2;
    level._ID44035 _ID10760( "dcburn_mcy_outoftimego" );
    wait 2;
    level._ID49792 _ID10760( "dcburn_cpd_closingin" );
    _ID42237::_ID14413( "player_roof_stairs_02" );
    level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_00" );
    _ID42407::_ID14543( "allies" );
    level._ID794 _ID42407::_ID27079( "dcburn_ar3_gottatouchdown" );
    _ID42407::_ID14544( "allies" );
    _ID42237::_ID14413( "player_outer_balcony_top_commerce" );

    while ( !_ID42237::_ID14385( "player_headed_to_roof" ) )
    {
        level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_02" );
        wait 2;
        level._ID44035 _ID10760( "dcburn_mcy_notime" );

        if ( _ID42237::_ID14385( "player_headed_to_roof" ) )
            break;

        wait 2;

        if ( _ID42237::_ID14385( "player_headed_to_roof" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_keepmoving" );
        wait 2;
    }

    _ID42237::_ID14413( "player_headed_to_roof" );
    _ID42407::_ID28864( "dcburn_bhp_whatsyourstatus" );
    level._ID44035 _ID10760( "dcburn_mcy_hostilesclose" );

    while ( !_ID42237::_ID14385( "player_at_commerce_rooftop" ) )
    {
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_overrun" );
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_lobby_move_nag_00" );
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_outoftimego" );
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _ID10760( "dcburn_mcy_outnumbered" );
    }

    _ID42237::_ID14402( "rooftop_run_dialogue_finished" );
}

_ID50242()
{
    thread _ID51605();
    thread _ID54302();
    thread _ID51518();
    thread _ID52592();
    thread _ID51737();
    thread _ID45588();
    thread _ID47952();
    thread _ID53654();
    thread enter_smoke_column();
    _ID42237::_ID14413( "player_heli_18" );
    _ID53939();
}

_ID51518()
{
    _ID42237::_ID14413( "roof_heli_about_to_be_owned" );
    _ID42237::_ID14425( "roof_heli_owned", 1.65 );
    _ID42407::_ID24587( "mus_dcburning_heli_ride3" );
}

_ID54302()
{
    _ID42237::_ID14413( "player_at_commerce_rooftop" );
    _ID42237::_ID14413( "blackhawk_landed" );
    _ID42237::_ID14402( "obj_heli_mount_given" );
    thread _ID53371();
    _ID42237::_ID14413( "player_getting_on_minigun" );
    setsaveddvar( "actionSlotsHide", "1" );
    level._ID794 setactionslot( 1, "" );
    level._ID794 nightvisiongogglesforceoff();

    while ( !_ID42237::_ID14385( "can_talk" ) )
        wait 0.5;

    _ID42407::_ID28864( "dcburn_mcy_bunkerevac" );
    _ID42407::_ID28864( "dcburn_hqr_stillpinned" );
    _ID42407::_ID28864( "dcburn_mcy_fromtheair" );
    _ID42237::_ID14402( "obj_heli_ride_given" );
    thread _ID42407::_ID4433( 1 );
    _ID42407::_ID28864( "dcburn_hqr_firstwave" );
    _ID42237::_ID14413( "player_heli_05" );
    _ID42407::_ID28868( "dcburn_lbp1_breakleftbreakleft" );
    _ID42237::_ID14413( "player_heli_07" );
    _ID42407::_ID28864( "dcburn_mcy_hitgoingdown" );
    _ID42237::_ID14413( "player_heli_09" );
    wait 1;
    _ID42407::_ID28864( "dcburn_bhp_dontgetup" );
    _ID42407::_ID28864( "dcburn_hqr_fallbacknow" );
    _ID42237::_ID14402( "player_has_used_minigun" );

    if ( !_ID42237::_ID14385( "player_has_used_minigun" ) )
        _ID42407::_ID28864( "dcburn_mcy_spinherup" );

    _ID42237::_ID14413( "player_heli_10c" );
    _ID42407::_ID28864( "dcburn_lbp1_gunshipliftingoff" );
    _ID42407::_ID28864( "dcburn_ar2_leavebehind" );
    _ID42237::_ID14413( "player_heli_14" );
    _ID42407::_ID28864( "dcburn_evc_mainroad" );
    _ID42407::_ID28864( "dcburn_hqr_orderirene" );
    _ID42407::_ID28864( "dcburn_ar1_weareleaving" );
    _ID42407::_ID28864( "dcburn_ar4_wearegoingdown" );
}

_ID53371()
{
    _ID42237::_ID14413( "rooftop_run_dialogue_finished" );
    _ID42237::_ID14402( "can_talk" );

    while ( !_ID42237::_ID14385( "player_getting_on_minigun" ) )
    {
        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _ID10760( "dcburn_mcy_moveminigun" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _ID10760( "dcburn_mcy_getonminigun" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _ID10760( "dcburn_mcy_getinchopper" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _ID10760( "dcburn_mcy_wayoutnumbered" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _ID10760( "dcburn_mcy_forgetaboutit" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _ID10760( "dcburn_mcy_brassontitanic" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;
    }
}

_ID49771( var_0 )
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    self._ID25499 = self._ID4867;
    self._ID4867 = 1000;
    _ID42237::_ID14413( var_0 );

    if ( isdefined( self ) )
        self._ID4867 = self._ID25499;
}

_ID52451()
{
    self endon( "death" );
    thread _ID50012();
    self._ID24727 = 1;
    self._ID452 = 16;
    self._ID4867 = 1000;
    self._ID86 = 0;
    _ID42237::_ID14413( "player_getting_on_minigun" );
    self._ID486 = 1;
    self._ID4867 = 0.01;
    self._ID86 = 10;
    thread _ID42407::_ID36519();
}

_ID51737()
{
    _ID42237::_ID14413( "player_headed_to_roof" );
    level._ID45204 = [];
    var_0 = getent( "rooftop_helirider", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();

    if ( isdefined( var_1 ) )
        var_1 thread _ID45823();

    var_0 = getent( "rooftop_defender", "targetname" );
    var_2 = var_0 _ID42407::_ID35014();

    if ( isdefined( var_2 ) )
        var_2 thread _ID52451();

    var_3 = getent( "turret2", "targetname" );

    if ( isdefined( var_3 ) )
        var_3 delete();

    _ID38942( "colornodes_roof", "script_noteworthy", 1 );
    var_4 = getentarray( "allied_drones_heliride_01", "targetname" );
    var_5 = getentarray( "allied_drones_heliride_02", "targetname" );
    var_6 = getentarray( "allied_drones_heliride_03", "targetname" );
    var_6 = getentarray( "allied_drones_heliride_04", "targetname" );
    thread _ID52188( var_4, "allied_drones_heliride_01" );
    thread _ID52188( var_5, "allied_drones_heliride_02" );
    thread _ID52188( var_6, "allied_drones_heliride_03" );
    thread _ID52188( var_6, "allied_drones_heliride_04" );
    _ID49059();
    level._ID52945 vehicle_setspeed( 5, 20 );
    var_7 = getent( "heli_roof_approach_01_end", "targetname" );
    level._ID52945 setlookatent( var_7 );
    level._ID52945.rooftop_helirider = var_1;
    _ID42237::_ID14413( "roof_littlebird_lifted_off" );
    thread heliblackhawk_deathvolume();
    level._ID52945 clearlookatent();
    var_8 = getent( "heli_roof_approach_01", "targetname" );
    level._ID52945 thread _ID42411::_ID40218( var_8 );
    level._ID52945 vehicle_setspeed( 100 );
    level._ID52945 thread _ID43426( getent( "heli_roof_land_01", "script_noteworthy" ) );
    level._ID52945 waittill( "landed" );
    _ID42237::_ID14402( "blackhawk_landed" );
    var_9 = level._ID52945 gettagorigin( "tag_player" );
    var_10 = 160;
    var_11 = 100;
    var_12 = 0;
    var_13 = spawn( "trigger_radius", var_9, var_12, var_10, var_11 );
    thread _ID44382( var_13 );
    var_9 = level._ID52945 gettagorigin( "tag_player" );
    var_10 = 40;
    var_11 = 100;
    var_12 = 0;
    level._ID52945._ID1224 = spawn( "trigger_radius", var_9, var_12, var_10, var_11 );
    var_14 = level._ID52945 gettagorigin( "TAG_ORIGIN" );

    for (;;)
    {
        level._ID52945._ID1224 waittill( "trigger" );

        if ( _ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), var_14, level._ID8760["90"] ) )
            break;
    }

    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    _ID42237::_ID14402( "player_getting_on_minigun" );

    if ( getdvarint( "r_dcburning_culldist" ) == 1 )
        setculldist( 20000 );

    _ID42237::_ID14402( "obj_heli_mount_complete" );
    _ID42313::_ID52053();
    thread _ID47930();
    level._ID52945 thread maps\dcburning_aud::_ID54551();
    maps\dcburning_lighting::_ID51844( "dcburning_heliride" );
    _ID42297::_ID39221();
    level._ID10901 = 1;
    _ID21376( 7 );
    _ID21376( 8 );
    _ID21376( 10 );
    var_15 = getent( "volume_roof", "targetname" );
    var_16 = var_15 _ID42407::_ID15547( "axis" );
    _ID42237::_ID3350( var_16, ::_ID47688 );
    _ID42407::_ID10226( 1.5, ::_ID52170 );
    var_17 = getent( "roof_seaknight_01", "targetname" );
    var_18 = getent( "roof_seaknight_02", "targetname" );
    var_17 notify( "spawn" );
    var_18 notify( "spawn" );
    var_17 thread _ID42407::_ID25088( "play_anim", 1 );
    var_18 thread _ID42407::_ID25088( "play_anim", 1 );
    _ID43870();
    _ID42407::_ID24584( 5 );
    _ID42237::_ID14413( "roof_heli_about_to_be_owned" );
    _ID42237::_ID14402( "player_heli_ready_to_take_off" );
    thread _ID42407::_ID4422( "heli_ride_01" );
    var_19 = _ID42411::_ID35195( "ww2_heli" );
    var_20 = _ID42237::_ID16638( "path_player_heli", "targetname" );
    level._ID52945 _ID42407::_ID40191( 76 );
    level._ID52945 _ID54208();
    level._ID52945 thread _ID54208();
    level._ID52945 thread _ID42411::_ID40218( var_20 );
    var_21 = getent( "abrams_street", "targetname" );
    var_21 delete();
    var_22 = _ID42411::_ID35196( "m1a1_heliride_01" );
    var_23 = _ID42411::_ID35196( "m1a1_heliride_02" );
    var_24 = getent( var_22._ID31273, "script_linkname" );
    var_25 = magicbullet( "javelin_dcburn", var_24._ID740, var_22._ID740 );
    var_25 thread _ID52536();
    var_25 missile_settargetent( var_22 );
    var_25 missile_setflightmodetop();
    var_26 = _ID42411::_ID35195( "latvee_heliride_01" );
    _ID42237::_ID14413( "player_heli_02" );
    level._ID52945 vehicle_setspeed( 75 );
    level._ID47577 vehicle_setspeed( 70 );
    _ID42237::_ID3350( level._ID44593, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID48904, _ID42237::_ID26402 );
    var_27 = _ID42237::_ID16638( "helipath_to_ww2_littlebird_wingman_armed", "targetname" );
    var_28 = "littlebird_wingman_armed";
    level._ID52695 = level._ID52695 _ID45307( var_28, var_27 );
    level._ID52695 vehicle_setspeed( 100 );
    level._ID47577 _ID44705();
    level._ID47577 = _ID42411::_ID35196( "littlebird_wingman_02_drone_roof" );
    var_27 = _ID42237::_ID16638( "helipath_to_ww2_littlebird_wingman_01", "targetname" );
    var_28 = "littlebird_wingman_01";
    level._ID48377 = level._ID48377 _ID45307( var_28, var_27 );
    level._ID48377 vehicle_setspeed( 55 );
    var_29 = getentarray( "axis_ww2_drones_01", "targetname" );
    var_30 = getentarray( "axis_ww2_drones_02", "targetname" );
    var_31 = getentarray( "axis_ww2_drones_03", "targetname" );
    var_32 = getentarray( "axis_ww2_drones_04", "targetname" );
    thread _ID52188( var_29, "axis_ww2_drones_01" );
    thread _ID52188( var_30, "axis_ww2_drones_02" );
    thread _ID52188( var_31, "axis_ww2_drones_03" );
    thread _ID52188( var_32, "axis_ww2_drones_04" );
    waitframe;
    var_33 = getaiarray();
    var_34 = level._ID47577._ID29965;
    var_34[var_34.size] = var_1;
    _ID42237::_ID3350( var_33, ::_ID47688, var_34 );
    _ID42407::_ID1801( "spawner_ww2_guys", "targetname", level._ID794 );
    _ID47645( "dummy_spawner_ww2_street_guys" );
    level._ID44303 = 1;
    level._ID49598 = ( 0, 40, 0 );
    level._ID1426["mortar"]["dirt"] = loadfx( "fx/explosions/artilleryExp_dirt_brown_2_dcburning" );
    _ID42407::_ID10226( 3, _ID54017::_ID43738, 2 );
    _ID42237::_ID14413( "player_heli_03a" );
    var_25 = magicbullet( "javelin_dcburn", var_24._ID740, var_26._ID740 );
    var_25 thread _ID52536();
    var_25 missile_settargetent( var_26 );
    var_25 missile_setflightmodetop();
    var_35 = _ID42237::_ID16638( "sam_launch_ww2", "targetname" );
    _ID42407::_ID10226( 1.5, ::_ID45728, 8, var_35, level._ID47577 );
    _ID42237::_ID14413( "player_heli_05" );
    level._ID52945 vehicle_setspeed( 90 );
    thread _ID42411::_ID17021( var_26 );
    level._ID48377 vehicle_setspeed( 100 );
    level._ID47577 vehicle_setspeed( 100 );
    level._ID52695 vehicle_setspeed( 150 );
    var_36 = _ID42237::_ID16638( "javelin_littlebird_monument", "targetname" );
    var_37 = magicbullet( "javelin_dcburn", var_36._ID740, level._ID47577._ID740 );
    var_37 missile_settargetent( level._ID47577 );
    var_38 = _ID42237::_ID16638( "littlebird_monument_crash", "targetname" );
    level._ID47577 thread _ID44311::_ID46706( var_38 );
    level._ID47577 thread maps\dcburning_aud::_ID50541();
    var_27 = _ID42237::_ID16638( "helipath_to_ww2_strafing_littlebird_wingman_armed", "targetname" );
    var_28 = "littlebird_wingman_armed";
    level._ID52695 = level._ID52695 _ID45307( var_28, var_27 );
    level._ID52695 vehicle_setspeed( 90 );
    _ID42237::_ID14413( "player_heli_06" );
    thread _ID48047( "allied_drones_heliride_01" );
    thread _ID48047( "allied_drones_heliride_02" );
    thread _ID48047( "allied_drones_heliride_03" );
    thread _ID48047( "allied_drones_heliride_04" );
    _ID42237::_ID14413( "player_heli_10" );
    level._ID794._ID511 = 1;
    level._ID52945 vehicle_setspeed( 25 );
    _ID42407::_ID1801( "spawner_ww2_guys_middle", "targetname", level._ID794 );
    level._ID52695 vehicle_setspeed( 120 );
    _ID42237::_ID14413( "player_heli_10a" );
    level._ID9277 = 0;
    var_39 = _ID42411::_ID35200( "bmps_heli_ride_ww2_02" );
    _ID42407::_ID1801( "spawner_ww2_guys_end", "targetname", level._ID794 );
    _ID42237::_ID14413( "player_heli_10b" );
    level._ID794._ID511 = 0;
    _ID42237::_ID14413( "player_heli_10c" );
    _ID42237::_ID3350( level._ID53293, _ID42237::_ID26402 );

    if ( isdefined( var_19 ) )
        var_19 thread _ID42407::_ID25088( "liftoff", 3 );

    _ID42237::_ID14413( "player_heli_14" );
    wait 0.5;
    level._ID52945 vehicle_setspeed( 50 );
    var_40 = _ID42407::_ID16057( "crows_nest_bmps", "script_noteworthy" );

    foreach ( var_42 in var_40 )
    {
        if ( isdefined( var_42 ) )
        {
            var_42 _ID42411::_ID16987();
            var_42 _ID44705();
        }
    }

    _ID42237::_ID14413( "player_heli_15" );
    level._ID52945 vehicle_setspeed( 30 );
    _ID21376( 11 );
    thread _ID48047( "axis_ww2_drones_01" );
    thread _ID48047( "axis_ww2_drones_02" );
    thread _ID48047( "axis_ww2_drones_03" );
    thread _ID48047( "axis_ww2_drones_04" );
    _ID42237::_ID14413( "player_heli_16" );
    level._ID52945 vehicle_setspeed( 20 );
}

_ID45728( var_0, var_1, var_2 )
{
    var_2 endon( "death" );
    var_3 = ( 0, 0, 250 );
    var_4 = spawn( "script_origin", var_2._ID740 );
    var_2 thread _ID42237::_ID10280( var_4 );
    var_4._ID740 = var_2._ID740;
    var_4._ID65 = var_2._ID65;
    var_4 linkto( var_2, "tag_origin", var_3, ( 0, 0, 0 ) );
    var_4 thread _ID51301( var_2 );

    for ( var_5 = missile_createattractorent( var_4, 8000, 3000 ); var_0 > 0; var_0-- )
    {
        var_6 = magicbullet( "slamraam_missile_dcburning", var_1._ID740, var_2._ID740 );
        var_1 thread maps\dcburning_aud::_ID53638( var_6 );
        wait 0.25;
    }

    if ( isdefined( var_4 ) )
        var_4 delete();
}

_ID52170()
{
    _ID42237::_ID3350( level._ID35507, ::_ID47688 );
}

_ID44382( var_0 )
{
    level._ID44035 endon( "death" );
    wait 2;
    var_1 = spawn( "script_origin", level._ID52945._ID740 );
    var_1._ID740 = level._ID52945._ID740;
    var_1._ID65 = level._ID52945._ID65;
    var_2 = spawnstruct();
    var_2._ID337 = var_1;
    var_2._ID1251 = -100;
    var_2._ID893 = -72;
    var_2._ID409 = -50;
    var_2._ID41911 = 180;
    var_2 _ID42407::_ID38694();
    var_1 linkto( level._ID52945 );
    level._ID44035 notify( "stop_teleport_hack" );
    var_1 _ID42259::_ID3027( level._ID44035, "leader_blackhawk_getin" );
    level._ID44035 setgoalpos( level._ID44035._ID740 );
    level._ID44035._ID452 = 16;
    var_0 waittill( "trigger" );
    var_1 _ID42259::_ID3027( level._ID44035, "leader_blackhawk_getin" );
    level._ID44035 linkto( var_1 );
    var_1 _ID42259::_ID3020( level._ID44035, "leader_blackhawk_getin" );
    var_1 thread _ID42259::_ID3025( level._ID44035, "leader_blackhawk_idle", "stop_idle" );
}

_ID45823()
{
    self endon( "death" );
    thread _ID50012();
    self._ID24727 = 1;
    self._ID452 = 16;
    self._ID4867 = 1000;
    self._ID86 = 0;
    _ID42237::_ID14413( "blackhawk_landed" );
    wait 1;
    var_0 = spawn( "script_origin", level._ID52945._ID740 );
    var_0._ID740 = level._ID52945._ID740;
    var_0._ID65 = level._ID52945._ID65;
    var_1 = spawnstruct();
    var_1._ID337 = var_0;
    var_1._ID1251 = -100;
    var_1._ID893 = 78;
    var_1._ID409 = 21;
    var_1 _ID42407::_ID38694();
    var_0 linkto( level._ID52945 );
    var_0 _ID42259::_ID3027( self, "redshirt_blackhawk_getin" );
    self linkto( var_0 );
    var_0 _ID42259::_ID3020( self, "redshirt_blackhawk_getin" );
    var_0 thread _ID42259::_ID3025( self, "redshirt_blackhawk_idle", "stop_idle" );
}

_ID43870( var_0 )
{
    level._ID794 allowcrouch( 0 );
    level._ID794 allowprone( 0 );
    level._ID794 _meth_830f( 0 );
    level._ID794 allowjump( 0 );
    level._ID794 thread _ID42407::_ID27079( "scn_player_mount_bh_minigun" );
    level._ID52945 _ID42407::_ID10226( 0.5, ::blackhawk_play_rotors_anim );
    level._ID52945 _ID54230::_ID49743( var_0 );
    setsaveddvar( "r_reactiveMotionHelicopterLimit", 0 );
    level._ID43469 = 1;
}

_ID48609( var_0 )
{
    level endon( "player_getting_on_minigun" );
    self endon( "death" );
    self endon( "stop_teleport_hack" );
    var_1 = 90000;

    while ( isdefined( self ) )
    {
        wait 0.1;

        if ( distancesquared( level._ID794._ID740, self._ID740 ) < var_1 )
            continue;

        var_2 = level._ID794 geteye();

        if ( _ID42237::_ID41802( var_2, level._ID794._ID65, self._ID740 + ( 0, 0, 32 ), level._ID8760["90"] ) )
        {
            continue;
            continue;
        }

        break;
    }

    self forceteleport( var_0._ID740, var_0._ID65 );
    self notify( "end_melee" );
    _ID42407::_ID10871();
    self setgoalnode( var_0 );
}

_ID49059( var_0 )
{
    level._ID52945 = _ID42411::_ID35196( "heli_player" );
    level._ID52945.spawn_extra_bullet = 1;
    level._ID52945 thread _ID47073();
    level._ID52945 thread maps\dcburning_aud::_ID50906();

    if ( isdefined( var_0 ) )
    {
        level._ID52945 vehicle_teleport( var_0._ID740, var_0._ID65 );
        level._ID52945 thread _ID42411::_ID40218( var_0 );
        level._ID52945 useby( level._ID794 );
        level._ID52945 _ID54208();
    }
}

_ID54208()
{
    level._ID52945 cleargoalyaw();
    level._ID52945 vehicle_setspeed( 30 );
    level._ID52945 sethoverparams( 32, 10, 3 );
    level._ID52945 setmaxpitchroll( 5, 10 );
}

_ID51816()
{
    self endon( "death" );
    var_0 = _ID42413::_ID16050();
    var_1 = _ID42237::_ID16182( self._ID740, var_0 );
    var_1._ID740 = self._ID740;
    self._ID26573 = var_1;
    self waittill( "liftoff" );
    thread _ID48984();
    var_2 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
    var_3 = distance( self._ID740, var_2._ID740 );
    self vehicle_setspeed( 10 );
    _ID42407::_ID40191( var_3 );
    self vehicle_setspeed( 50 );
    thread _ID42411::_ID40218( var_2 );
}

_ID48984()
{
    self endon( "death" );
    level._ID794 endon( "death" );
    _ID42407::_ID13024( "stop_firing" );

    while ( isalive( self ) && !_ID42407::_ID13019( "stop_firing" ) )
    {
        wait 0.5;
        self setlookatent( level._ID794 );

        if ( !_ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740 + ( 0, 0, 32 ), level._ID8760["35"] ) )
        {
            self notify( "stop_firing_turret" );
            continue;
        }

        thread _ID46491( level._ID794 );
    }

    self notify( "stop_firing_turret" );
    self clearlookatent();
}

_ID52592()
{
    _ID42237::_ID14413( "player_getting_on_minigun" );
    thread heli_ride_cinematic();
    var_0 = getent( "roof_rocket_guy", "targetname" );
    var_1 = var_0 _ID42407::_ID35014( 1 );
    var_1 thread _ID48332();
    var_1 thread _ID50012();
    var_2 = var_0;
    var_2 _ID42259::_ID3023( var_1, var_1._ID70 );
    var_1 attach( "weapon_stinger", "TAG_INHAND" );
    var_2 thread _ID42259::_ID3020( var_1, var_1._ID70 );
    var_1 setanimtime( level._ID30895["generic"][var_1._ID70], 0.6 );
    var_3 = _ID42411::_ID35196( "heli_roof" );
    var_3 thread _ID43089();
    var_3 setlookatent( level._ID794 );
    var_4 = spawn( "script_origin", var_3._ID740 + ( 0, 0, -20 ) );
    var_4 linkto( var_3 );
    var_4 thread _ID51301( var_3 );
    var_5 = missile_createattractorent( var_4, 2000, 10000, var_1 );
    var_1 waittillmatch( "single anim",  "fire"  );
    earthquake( 0.3, 0.5, level._ID794._ID740, 1600 );
    var_6 = var_1 gettagorigin( "TAG_INHAND" );
    magicbullet( "stinger", var_6, var_4._ID740 );
    _ID42237::_ID14402( "roof_heli_about_to_be_owned" );
    var_3 thread _ID46418();
    var_1 waittillmatch( "single anim",  "end"  );
    var_6 = var_1 gettagorigin( "TAG_INHAND" );
    var_7 = var_1 gettagangles( "TAG_INHAND" );
    var_1 detach( "weapon_stinger", "TAG_INHAND" );
    var_8 = spawn( "script_model", var_6 );
    var_8 setmodel( "weapon_stinger" );
    var_1 thread _ID42237::_ID10280( var_8 );
    var_8._ID65 = var_7;
    var_9 = getnode( "at4_guy_retreat", "targetname" );
    var_1 setgoalnode( var_9 );
    var_1 thread _ID42407::_ID36519();
    var_1 thread _ID43214();
    var_1._ID486 = 1;
}

heli_ride_cinematic()
{
    var_0 = _ID54167::_ID43386( "heli_ride_intro" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 22.0, 400, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 8.0 ) _ID54167::_ID50321( 5.8, 400, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 103.0 ) _ID54167::_ID50321( 22.0, 400, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 104.0 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.25 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 10.75 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.45 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 0.7 ) _ID54167::_ID47198( 0.04, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 1.8 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.0 ) _ID54167::_ID47198( 0.04, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 2.25 ) _ID54167::_ID47198( 0.04, 0.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48166();
}

_ID43089()
{
    self._ID52722 = 1;
    self waittill( "death" );
    _ID42237::_ID14402( "roof_heli_owned" );
    earthquake( 0.6, 1.2, level._ID794._ID740, 1600 );
    level._ID794 playrumblelooponentity( "damage_heavy" );
}

_ID46418()
{
    self endon( "death" );
    wait 1.5;
    self kill();
}

_ID47073()
{
    _ID42237::_ID14402( "player_heli_spawned" );
    _ID42411::_ID16988();
}

_ID45588()
{
    _ID42237::_ID14413( "player_approaching_outer_balcony" );
    var_0 = _ID42407::_ID3339( getentarray( "littlebird_roof_riders_left", "targetname" ) );
    _ID42237::_ID3350( var_0, ::_ID48332 );
    _ID42237::_ID3350( var_0, _ID42407::_ID22746 );
    var_1 = _ID42407::_ID3339( getentarray( "littlebird_roof_riders_right", "targetname" ) );
    _ID42237::_ID3350( var_1, ::_ID48332 );
    _ID42237::_ID3350( var_1, _ID42407::_ID22746 );
    level._ID47577 = _ID42411::_ID35195( "littlebird_wingman_02" );
    level._ID47577 thread _ID42411::_ID17021();
    var_2 = _ID42237::_ID16638( "pickup_node_before_stage", "script_noteworthy" );
    level._ID47577 _ID42411::_ID32450( var_2, var_0, "left" );
    level._ID47577 _ID42411::_ID32450( var_2, var_1, "right" );
    level._ID47577 waittill( "touch_down" );
    level._ID47577 thread _ID42411::_ID22484( "left", var_0 );
    level._ID47577 thread _ID42411::_ID22484( "right", var_1 );
    _ID42237::_ID14413( "player_approach_commerce_roof_01" );
    level._ID48377 = _ID42411::_ID35195( "littlebird_wingman_01" );
    level._ID48377 thread _ID42411::_ID40066( "idle_alert_to_casual" );
    thread _ID42411::_ID17021( level._ID48377 );

    while ( level._ID47577._ID29965.size < 6 )
        wait 0.1;

    thread _ID42237::_ID14402( "roof_littlebird_lifted_off" );
    level._ID47577 thread _ID42407::_ID40191( 3 );
    level._ID47577 thread _ID42407::_ID27081( "scn_dcburn_roof_ai_heli_liftoff" );
    var_3 = _ID42237::_ID16638( "heli_roof_loop_01", "targetname" );
    wait 1;
    level._ID47577 thread _ID42411::_ID40218( var_3 );
    level._ID47577 setmaxpitchroll( 20, 50 );
    wait 2;
    level._ID47577 _ID42411::_ID40066( "idle_alert_to_casual" );
    level._ID47577 vehicle_setspeed( 25 );
}

_ID47952()
{
    _ID42237::_ID14413( "player_approach_commerce_roof_02" );
    level._ID52695 = _ID42411::_ID35196( "littlebird_wingman_armed" );
    level._ID52695 vehicle_setspeed( 25 );
    var_0 = _ID42237::_ID16638( "wingman_roof_node_01", "script_noteworthy" );
    var_0 waittill( "trigger" );
    var_1 = getent( "roof_target_for_helis", "targetname" );
    level._ID52695 setlookatent( var_1 );
    level._ID52695 vehicle_setspeed( 10 );
    waitframe;

    foreach ( var_3 in level._ID52695._ID23512 )
        var_3 setmode( "auto_nonai" );

    _ID42237::_ID14413( "player_getting_on_minigun" );

    foreach ( var_3 in level._ID52695._ID23512 )
    {
        var_3 setmode( "manual" );
        var_3 stopfiring();
    }
}

_ID53939()
{
    thread _ID51048();
    thread _ID52144();
    _ID42237::_ID14413( "player_crash_starting" );
    thread maps\dc_crashsite::_ID49092();
    _ID42237::_ID14413( "player_crash_done" );
    _func_31c( 7 );
    level._ID794 setviewmodel( "viewhands_us_army_dmg" );
}

_ID52144()
{
    _ID42237::_ID14413( "player_heli_18a" );
    _ID42407::_ID28868( "dcburn_bhp_incoming" );
    _ID42237::_ID14413( "player_heli_18d" );
    _ID42407::_ID28864( "dcburn_mcy_stillintheair" );
    _ID42237::_ID14413( "player_heli_19" );
    _ID42407::_ID28864( "dcburn_bhp_attitudecontrol" );
    _ID42407::_ID28864( "dcburn_mcy_takeusup" );
    _ID42237::_ID14413( "player_heli_20" );
    _ID42407::_ID28864( "dcburn_lbp1_samlaunch" );
    _ID42237::_ID14413( "player_crash_starting" );
    wait 0.3;
    var_0 = _ID42237::_ID35164();
    var_0 linkto( level._ID794 );
    var_0 thread _ID42407::_ID27081( "dcburn_lbp1_maydaymayday", "tag_origin" );
    _ID42237::_ID14413( "player_heli_crash" );
    var_0 notify( "death" );
    var_0 delete();
}

_ID51048()
{
    _ID42237::_ID14413( "player_heli_18" );
    thread _ID42407::_ID4433();
    level._ID52945 vehicle_setspeed( 70 );

    if ( isdefined( level._ID52695 ) )
        level._ID52695 _ID44705();

    if ( isdefined( level._ID48377 ) )
        level._ID48377 _ID44705();

    if ( isdefined( level._ID47577 ) )
        level._ID47577 _ID44705();

    var_0 = getentarray( "vehicles_crowsnest_defend", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2 ) )
            var_2 delete();
    }

    var_4 = _ID42411::_ID35196( "littlebird_wingman_02_drone_crash" );
    var_4 vehicle_setspeed( 70 );
    var_5 = ( 0, 0, 250 );
    var_6 = spawn( "script_origin", var_4._ID740 );
    var_6._ID740 = var_4._ID740;
    var_6._ID65 = var_4._ID65;
    var_6 linkto( var_4, "tag_origin", var_5, ( 0, 0, 0 ) );
    var_6 thread _ID51301( var_4 );
    var_7 = missile_createattractorent( var_6, 8000, 3000 );
    var_8 = getent( "missile_org_lincoln", "targetname" );
    var_9 = magicbullet( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_9 );
    wait 0.5;
    var_10 = magicbullet( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_10 );
    wait 0.5;
    var_11 = magicbullet( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_11 );
    wait 0.5;
    var_12 = magicbullet( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_12 );
    wait 0.5;
    var_13 = magicbullet( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_13 );
    var_14 = magicbullet( "javelin_dcburn", var_8._ID740, var_4._ID740 );
    var_14 missile_settargetent( var_4 );
    var_15 = _ID42237::_ID16638( "littlebird_crash_ww2", "targetname" );
    var_4 thread _ID44311::_ID46706( var_15 );
    _ID42237::_ID14413( "player_heli_18b" );
    wait 2;
    earthquake( 0.5, 1.5, level._ID794._ID740, 1600 );
    level._ID52945 thread maps\dcburning_aud::_ID53429();
    _ID42237::_ID49667( level._ID1426["heli_hit"], level._ID52945, "side_door_r_jnt", ( -20, -10, 0 ) );
    level._ID794 playrumblelooponentity( "damage_heavy" );
    level._ID794 dodamage( 10, level._ID794._ID740 );
    thread _ID46730();
    thread _ID47877();
    level._ID52945 thread _ID44843();
    level._ID52945 thread _ID51029( "smoke_trail_black_heli" );
    wait 0.5;
    _ID42237::_ID14413( "player_heli_18d" );
    level._ID52945 vehicle_setspeed( 25, 60, 60 );
    _ID42237::_ID3350( level._ID52835, _ID42237::_ID26402 );
    thread _ID47411( "axis", undefined, 1 );
    thread _ID54724( "axis", undefined, 1 );
    var_16 = getentarray( "axis_window_drones_01", "targetname" );
    thread _ID52188( var_16, "axis_window_drones_01" );
    var_16 = getentarray( "axis_window_drones_02", "targetname" );
    thread _ID52188( var_16, "axis_window_drones_02" );
    _ID42407::_ID1801( "spawner_enemies_glass_02", "targetname", level._ID794 );
    _ID42407::_ID1801( "spawner_enemies_glass_03", "targetname", level._ID794 );
    var_16 = getentarray( "axis_lincoln_drones_01", "targetname" );
    thread _ID52188( var_16, "axis_lincoln_drones_01" );
    var_16 = getentarray( "axis_lincoln_drones_02", "targetname" );
    thread _ID52188( var_16, "axis_lincoln_drones_02" );
    var_16 = getentarray( "axis_lincoln_drones_03", "targetname" );
    thread _ID52188( var_16, "axis_lincoln_drones_03" );
    var_16 = getentarray( "axis_lincoln_drones_04", "targetname" );
    thread _ID52188( var_16, "axis_lincoln_drones_04" );
    _ID42237::_ID14413( "player_heli_19a" );
    _ID44864();
    thread _ID43162( "volume_enemies_glass_02", "axis" );
    thread _ID48047( "axis_window_drones_01" );
    _ID42407::_ID1801( "spawner_enemies_glass_04", "targetname", level._ID794 );
    _ID42237::_ID14413( "player_heli_19b" );
    thread _ID43162( "volume_enemies_glass_03", "axis" );
    _ID42237::_ID14413( "player_heli_19c" );
    var_17 = _ID42411::_ID35196( "littlebird_wingman_armed_lincoln" );
    var_17 vehicle_setspeed( 90 );
    thread _ID43162( "volume_enemies_glass_04a", "axis" );
    thread _ID43162( "volume_enemies_glass_04", "axis" );
    _ID42407::_ID1801( "spawner_enemies_balcony_01", "targetname", level._ID794 );
    var_18 = _ID42411::_ID35199( "slamraam_lincoln" );
    _ID42407::_ID1801( "spawner_axis_lincoln_01", "targetname", level._ID794 );
    _ID42237::_ID14413( "player_heli_19d" );
    level._ID52945 vehicle_setspeed( 80, 20, 20 );
    _ID42237::_ID14413( "player_heli_20" );
    var_18 = _ID42237::_ID15566( level._ID794._ID740, var_18 );
    var_19 = 0;

    foreach ( var_21 in var_18 )
    {
        if ( isdefined( var_21 ) )
        {
            var_21 thread _ID42407::_ID25088( "fire", var_19 );
            var_19 += 0.25;
        }
    }

    _ID42237::_ID14413( "player_heli_21" );
    var_18 = _ID42237::_ID15566( level._ID794._ID740, var_18 );
    var_19 = 0;

    foreach ( var_21 in var_18 )
    {
        if ( isdefined( var_21 ) )
        {
            var_21 thread _ID42407::_ID25088( "fire", var_19 );
            var_19 += 0.25;
        }
    }

    _ID42237::_ID14413( "player_heli_22" );
    _ID48047( "axis_lincoln_drones_01" );
    _ID48047( "axis_lincoln_drones_02" );
    _ID48047( "axis_lincoln_drones_03" );
    _ID48047( "axis_lincoln_drones_04" );
    _ID42237::_ID14402( "player_crash_starting" );
    level._ID52945 thread _ID42407::_ID27079( "scn_dcburning_plr_heli_missile_hit_02" );
    level._ID794 thread _ID42407::_ID27079( "scn_player_heli_hit_vo" );
    level._ID52945 vehicle_turnengineoff();
    level._ID52945 thread _ID42237::_ID27000( "scn_dcburning_plr_heli_dying_loop" );
    level._ID52945 thread maps\dcburning_aud::_ID45199();
    level._ID52945 vehicle_setspeed( 150, 50, 50 );
    _ID42237::_ID49667( level._ID1426["heli_hit_2"], level._ID52945, "side_door_r_jnt", ( -20, -10, 0 ) );
    level._ID52945 thread _ID51029( "smoke_trail_black_heli_fire" );
    level._ID794 playrumblelooponentity( "damage_heavy" );
    level._ID52945 useby( level._ID794 );
    level._ID794 unlink();
    level._ID794 disableweapons();
    level._ID52945 makeunusable();
    _ID42237::_ID14388( "player_on_minigun" );
    _ID42237::_ID14402( "player_off_minigun" );
    level notify( "player_off_blackhawk_gun" );
    level._ID52945 thread _ID48291();
    level._ID52945 thread _ID44785();
    earthquake( 0.7, 2.5, level._ID794._ID740, 1600 );
    level._ID52945 thread _ID52153();
    wait 1;
    _ID42407::_ID14543( "allies" );
    thread _ID54724( "all", undefined, 1 );
    thread _ID47411( "axis", undefined, 1 );
    _ID42237::_ID14413( "player_heli_crash" );
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
    earthquake( 0.7, 2.5, level._ID794._ID740, 1600 );
    level._ID794 playrumblelooponentity( "damage_heavy" );
    level._ID794 notify( "stop sounddcburning_heli_alarm" );
    wait 0.1;
    var_17 _ID44705();
    wait 0.3;
    _ID42407::_ID24584();
    _ID42475::_ID34575( "start_heli_crash_black_screen" );
    thread maps\dcburning_aud::crashsite_heli_rappel();
    level._ID5261 = _ID42313::_ID9125( "black", 1 );
    level._ID794 unlink();
    wait 0.1;
    level._ID52945 _ID44705();
    wait 2;
    maps\dcburning_lighting::_ID51844( "dcburning_helicrash" );
    var_25 = "-42263 6917 183";
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", 1 );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", var_25 );
    setsaveddvar( "r_useLightGridDefaultModelLightingLookup", 1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    setsaveddvar( "r_lightGridDefaultModelLightingLookup", var_25 );
    _ID42237::_ID14402( "player_crash_done" );
    level._ID794 setactionslot( 1, "nightvision" );

    if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
        level._ID1426["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_large_dcburning" );
    else
        level._ID1426["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_large" );
}

_ID44843()
{
    thread first_impact_cinematic();
    _ID42237::_ID14388( "player_on_minigun" );
    _ID42237::_ID14402( "player_off_minigun" );
    level._ID794 freezecontrols( 1 );
    self useby( level._ID794 );
    level._ID794 playerlinktodelta( self._ID23875, "tag_player", 1, 0, 0, 0, 0, 1 );
    level._ID794 dontinterpolate();
    self hide();
    self._ID23875 show();
    self._ID23875 blackhawk_play_rotors_anim();
    var_0 = self._ID23875 _ID42407::_ID16120( "minigun_first_impact" );
    self._ID23875 setflaggedanim( "minigun_first_impact", var_0, 1, 0 );
    self._ID23875 waittill( "minigun_first_impact" );
    self._ID23875 clearanim( var_0, 0.1 );
    self setanim( _ID42407::_ID16120( "minigun_idle" ), 0.1 );
    wait 0.05;
    self._ID23875 hide();
    self show();
    self useby( level._ID794 );
    level._ID794 dontinterpolate();
    level._ID794 freezecontrols( 0 );
    _ID42237::_ID14388( "player_off_minigun" );
    _ID42237::_ID14402( "player_on_minigun" );
    level._ID52945 thread _ID45306::_ID49378();
}

first_impact_cinematic()
{
    var_0 = _ID54167::_ID43386( "helicopter_first_impact" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48166();
}

_ID48291()
{
    thread second_impact_cinematic();
    level._ID794 freezecontrols( 1 );
    level._ID794 playerlinktodelta( self._ID23875, "tag_player", 1, 0, 0, 0, 0 );
    level._ID794 dontinterpolate();
    self hide();
    self._ID23875 show();
    self._ID23875 blackhawk_play_rotors_anim();

    if ( isdefined( self.rooftop_helirider ) )
        self.rooftop_helirider hide();

    var_0 = self._ID23875 _ID42407::_ID16120( "minigun_second_impact" );
    self._ID23875 setanim( var_0, 1, 0 );
    wait(getanimlength( var_0 ));

    if ( isdefined( self._ID23875 ) )
        self._ID23875 clearanim( var_0, 0 );

    level._ID794 unlink();
    level._ID794 freezecontrols( 0 );
}

second_impact_cinematic()
{
    var_0 = _ID54167::_ID43386( "helicopter_second_impact" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 7.5 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 22.0, 30, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.05 ) _ID54167::_ID50321( 14.0, 30, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 7.5 ) _ID54167::_ID46727() _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_init", 1 );
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID43376( ::setomnvar, undefined, "ui_consciousness_play", 1 );
    var_0 _ID54167::_ID48166();
}

_ID46730()
{
    var_0 = _ID42237::_ID35164();
    var_0 linkto( level._ID52945, "tag_guy5", ( 0, 0, 0 ), ( 0, 0, 0 ) );

    while ( !_ID42237::_ID14385( "player_crash_done" ) )
    {
        playfxontag( _ID42237::_ID16299( "dlight_red" ), var_0, "tag_origin" );
        wait 1;
        stopfxontag( _ID42237::_ID16299( "dlight_red" ), var_0, "tag_origin" );
        wait 0.5;
    }

    var_0 unlink();
    var_0 delete();
}

_ID47877()
{
    while ( !_ID42237::_ID14385( "player_crash_starting" ) )
    {
        earthquake( 0.18, 0.05, level._ID794._ID740, 80000 );
        wait 0.05;
    }
}

_ID51029( var_0 )
{
    self notify( "blackhawk_smoke_stop" );
    self endon( "blackhawk_smoke_stop" );
    self endon( "death" );

    for (;;)
    {
        playfxontag( _ID42237::_ID16299( var_0 ), level._ID52945, "tag_gun_r" );
        wait 0.05;
    }
}

_ID44785()
{
    while ( !_ID42237::_ID14385( "player_heli_crash" ) )
    {
        playfxontag( _ID42237::_ID16299( "heat_shimmer_door" ), self, "tag_player" );
        wait 0.1;
    }
}

_ID52153()
{
    self setmaxpitchroll( 50, 100 );
    self setturningability( 1 );
    var_0 = 1400;
    var_1 = 200;
    var_2 = undefined;

    while ( isdefined( self ) )
    {
        var_2 = self._ID65[1] + 100;
        self setyawspeed( var_0, var_1 );
        self settargetyaw( var_2 );
        wait 0.1;
    }
}

_ID53905()
{
    if ( !issentient( self ) )
        return;

    self._ID199 = "ambush";
}

_ID47521()
{
    self endon( "death" );
    thread _ID42407::_ID22746();
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID628 = 0;
    wait 0.2;
}

_ID49892()
{
    self._ID525 = 0;
    self._ID24727 = 1;
    self._ID465 = 0;
    self._ID513 = 1;
    self._ID2219 = 1;
}

_ID53477()
{
    if ( !isdefined( self._ID31388 ) )
        return;

    self._ID3189 = "enemy_death";
    thread _ID49892();

    if ( self._ID31388 == "windows" )
    {
        var_0 = [];
        var_0[0] = "h2_favela_backalleys_death_rooftop_A";
        var_0[1] = "h2_favela_backalleys_death_rooftop_B";
        var_0[2] = "h2_favela_backalleys_death_rooftop_C";
        var_0[3] = "h2_favela_backalleys_death_rooftop_D";
        _ID42407::_ID32265( var_0[randomintrange( 0, 3 )] );
    }
    else
        thread _ID46002();
}

_ID46002()
{
    var_0 = getnode( self._ID31388, "targetname" );
    thread _ID42407::_ID22746( 1 );
    self waittill( "damage" );
    self._ID24924 = undefined;

    if ( isdefined( self._ID31388 ) )
    {
        switch ( self._ID31388 )
        {
            case "balcony_fall1":
            case "balcony_fall3":
                _ID42407::_ID32265( "h2_favela_backalleys_death_window_B" );
                thread _ID47793( var_0 );
                self._ID256 = 0;
                self._ID35375 = ::_ID43962;
                self kill();
                break;
            case "balcony_fall2":
            case "balcony_fall4":
            case "balcony_fall6":
                self._ID9813 = undefined;
                thread _ID47793( var_0 );
                var_0 thread _ID42259::_ID3111( self, "h2_favela_backalleys_death_window_A" );
                wait 0.8;
                self._ID256 = 0;
                self._ID35375 = ::_ID43962;
                self kill();
                break;
        }
    }

    if ( isalive( self ) )
        _ID42407::_ID36519();
}

_ID43962()
{
    return 1;
}

_ID47793( var_0 )
{
    var_1 = 0.25;
    var_2 = 0;

    while ( var_2 != var_1 )
    {
        var_3 = vectorlerp( self._ID65, var_0._ID65, var_2 / var_1 );
        self teleport( self._ID740, var_3 );
        var_2 += 0.05;
        waittillframeend;
    }
}

_ID44336()
{
    wait 6;
    var_0 = 1;
    objective_add( var_0, "current", &"DCBURNING_OBJ_REGROUP_WITH_TEAM" );
}

_ID53750()
{
    _ID42237::_ID14413( "obj_follow_sgt_macey_given" );
    objective_string_nomessage( 1, &"DCBURNING_OBJ_MACRO_SECURE_DEPARTMENT_OF_COMMERCE_BUILDING" );
    var_0 = 2;
    var_1 = level._ID44035;
    objective_add( var_0, "active", &"DCBURNING_OBJ_FOLLOW_SGT_MACEY" );
    _func_1e9( var_0 );
    _func_194( var_0, level._ID44035, ( 0, 0, 70 ) );
    objective_position( var_0, 1 );
    _ID42237::_ID14413( "obj_follow_sgt_macey_complete" );
    objective_state_nomessage( var_0, "done" );
}

_ID49099()
{
    _ID42237::_ID14413( "obj_commerce_given" );
    var_0 = 2;
    var_1 = _ID42237::_ID16638( "obj_commerce_sector_1", "targetname" );
    objective_add( var_0, "active", &"DCBURNING_OBJ_COMMERCE" );
    _func_1e9( var_0 );
    _func_194( var_0, level._ID44035, ( 0, 0, 70 ) );
    objective_position( var_0, 1 );
    _ID42237::_ID14413( "player_around_corner_to_crows_nest" );
    objective_current( var_0, ( 0, 0, 0 ) );
    var_1 = _ID42237::_ID16638( "obj_commerce_sector_3", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_commerce_complete" );
    objective_state( var_0, "done" );
}

_ID47819()
{
    _ID42237::_ID14413( "obj_commerce_defend_snipe_given" );
    objective_add( 3, "invisible", &"DCBURNING_OBJ_COMMERCE_SUPPORT_EVAC_SITE" );
    objective_state_nomessage( 3, "active" );
    var_0 = 4;
    var_1 = _ID42237::_ID16638( "obj_commerce_defend_snipe", "targetname" );
    var_2 = ( 19, 0, -5 );
    var_3 = var_1._ID740 + var_2;
    objective_add( var_0, "active", &"DCBURNING_OBJ_COMMERCE_DEFEND_SNIPE", var_3 );
    _func_1e9( var_0 );
    objective_position( var_0, 1 );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_complete" );
    objective_state( var_0, "done" );
}

_ID54341()
{
    level endon( "obj_commerce_defend_snipe_complete" );
    self waittill( "death" );
    level._ID52350 = gettime();
    level._ID50946 = level._ID50946 - 1;

    if ( level._ID50946 < 3 )
        _ID42237::_ID14402( "only_2_sniper_enemies_remaining" );

    if ( level._ID50946 == 0 )
        _ID42237::_ID14402( "obj_commerce_defend_snipe_complete" );
}

_ID47909()
{
    _ID42237::_ID14413( "obj_commerce_defend_crow_given" );
    objective_delete( 3 );
    objective_delete( 4 );
    objective_add( 4, "invisible", &"DCBURNING_OBJ_COMMERCE_SUPPORT_EVAC_SITE" );
    objective_add( 5, "invisible", &"DCBURNING_OBJ_COMMERCE_DEFEND_SNIPE" );
    objective_position( 4, 0 );
    objective_position( 5, 1 );
    objective_state_nomessage( 4, "active" );
    objective_state_nomessage( 5, "done" );
    var_0 = 3;
    objective_add( var_0, "active", &"DCBURNING_OBJ_COMMERCE_DEFEND_CROW" );
    var_1 = getent( "crow_defend_obj1", "targetname" );
    var_2 = getent( "crow_defend_obj2", "targetname" );
    objective_additionalposition( var_0, 0, var_1._ID740 );
    objective_additionalposition( var_0, 1, var_2._ID740 );
    objective_setpointertextoverride( var_0, &"DCBURNING_OBJ_TEXT_DEFEND" );
    objective_state( var_0, "current" );
    objective_position( var_0, 1 );
    _ID42237::_ID14413( "obj_commerce_defend_crow_complete" );
    objective_state( var_0, "done" );
    objective_state_nomessage( 1, "done" );
}

_ID53452()
{
    var_0 = getent( "javelin_obj", "script_noteworthy" );

    if ( !isdefined( var_0 ) )
    {
        var_1 = getentarray( "javelins_crowsnest", "targetname" );

        if ( var_1.size )
            var_0 = _ID42237::_ID16182( level._ID794 getorigin(), var_1, 300 );
    }

    return var_0;
}

_ID45013()
{
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    wait 0.5;
    var_0 = 6;
    var_1 = _ID42237::_ID16638( "obj_defend_javelin", "targetname" );
    objective_add( var_0, "active", &"DCBURNING_OBJ_COMMERCE_DEFEND_JAVELIN" );
    _func_1e9( var_0 );
    objective_position( var_0, 1 );

    if ( !_ID43952() )
    {
        var_2 = _ID53452();

        if ( isdefined( var_2 ) )
        {
            var_3 = var_2._ID740 + ( 0, 0, 25 );
            thread _ID45585( var_2 );
            var_1._ID740 = var_3;
            objective_current( var_0, var_1._ID740 );
        }

        _ID42237::_ID14413( "player_has_javelin" );
        objective_current( var_0, ( 0, 0, 0 ) );
    }

    var_4 = level._ID794 getcurrentweapon();

    if ( !issubstr( var_4, "javelin" ) )
        level._ID794 thread _ID42407::_ID11085( "javelin_switch" );

    _ID42237::_ID14413( "obj_commerce_defend_javelin_complete" );
    objective_state( var_0, "done" );
}

_ID50671()
{
    level endon( "obj_commerce_defend_javelin_complete" );
    self endon( "deleted_through_script" );
    self endon( "killed_by_friendly" );
    self endon( "deleted_through_script" );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    level._ID51057 = _ID42237::_ID3293( level._ID51057, self );
    self waittill( "death",  var_0  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        level._ID52350 = gettime();

        if ( !_ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
            _ID42237::_ID14402( "player_has_killed_at_least_one_javelin_target" );

        level._ID53836 = level._ID53836 - 1;

        if ( level._ID53836 < 3 )
            _ID42237::_ID14402( "only_2_javelin_enemies_remaining" );

        if ( level._ID53836 < 2 )
            _ID42237::_ID14402( "only_1_javelin_enemies_remaining" );

        if ( level._ID53836 == 0 )
            _ID42237::_ID14402( "obj_commerce_defend_javelin_complete" );
    }

    level._ID51057 = _ID42237::_ID3321( level._ID51057, self );
    level._ID51057 = _ID42407::_ID29506( level._ID51057 );
}

_ID53171()
{
    _ID42237::_ID14413( "obj_rooftop_given" );
    objective_state_nomessage( 1, "done" );
    var_0 = 7;
    var_1 = _ID42237::_ID16638( "obj_commerce_roof", "targetname" );
    objective_add( var_0, "active", &"DCBURNING_OBJ_ROOFTOP", var_1._ID740 );
    _func_1e9( var_0 );
    objective_position( var_0, 1 );
    objective_position( 7, 1 );
    _ID42237::_ID14413( "player_roof_stairs_00" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof02", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_roof_stairs_01" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_roof_stairs_02" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03a", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_outer_balcony_top_commerce" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03b", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_headed_to_roof" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03c", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_approach_commerce_roof_01" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03d", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_approach_commerce_roof_02" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof04", "targetname" );
    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_rooftop_complete" );
    objective_state( var_0, "done" );
}

_ID51605()
{
    _ID42237::_ID14413( "obj_rooftop_complete" );
    var_0 = 8;
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_1._ID740 = level._ID52945 gettagorigin( "tag_player" );
    var_1 linkto( level._ID52945, "tag_player", ( 0, 0, 25 ), ( 0, 0, 0 ) );
    objective_add( var_0, "active", &"DCBURNING_OBJ_HELI_MOUNT", var_1._ID740 );
    _func_1e9( var_0 );
    objective_position( var_0, 1 );

    while ( !_ID42237::_ID14385( "blackhawk_landed" ) )
    {
        objective_current( var_0, var_1._ID740 );
        wait 0.05;
    }

    objective_current( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_heli_mount_complete" );
    objective_state( var_0, "done" );
}

_ID53654()
{
    _ID42237::_ID14413( "obj_heli_ride_given" );
    var_0 = 9;
    objective_add( var_0, "active", &"DCBURNING_OBJ_HELI_RIDE", level._ID794._ID740 );
    _func_1e9( var_0 );
    objective_position( 9, 1 );
    _ID42237::_ID14413( "obj_heli_ride_complete" );
    objective_state_nomessage( var_0, "done" );
    objective_state_nomessage( 4, "done" );
}

enter_smoke_column()
{
    _ID42237::_ID14413( "player_heli_07" );
    _ID42234::_ID13611( "smoke_column_cam" );
}

_ID54109()
{

}

_ID49488( var_0, var_1, var_2, var_3, var_4 )
{
    self setcandamage( 1 );

    for (;;)
    {
        self waittill( "damage",  var_5, var_6, var_7, var_8, var_9, var_10, var_11  );

        if ( var_5 <= 0 )
            continue;

        if ( isdefined( var_4 ) && var_4 )
        {
            var_12 = getent( self._ID1191, "targetname" );
            var_12 delete();
        }

        if ( isdefined( var_3 ) && var_3 )
            self physicslaunchclient( self._ID740, var_7 * var_5 );

        self setmodel( var_0 );
        var_13 = self getorigin();
        var_14 = var_13 + var_2;
        playfx( _ID42237::_ID16299( var_1 ), var_14 );
        break;
    }
}

_ID46656()
{
    _ID49488( "h1_mwr_com_widescreen_monitor_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
}

_ID54547()
{
    _ID49488( "h1_mwr_com_widescreen_monitor_2_des", "tv_explosion", ( 0, 0, 30 ), 1 );
}

_ID48761()
{
    _ID49488( "com_widescreen_monitor_on_1_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
}

_ID43437()
{
    _ID49488( "com_widescreen_monitor_on_2_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
}

_ID50807()
{
    _ID49488( "com_widescreen_monitor_on_3_des", "tv_explosion", ( 0, 0, 28 ), 1, 1 );
}

_ID43576()
{

}

_ID53576( var_0 )
{
    if ( var_0._ID1194 == "axis" )
        var_0 thread _ID52457();

    if ( var_0._ID1194 == "allies" )
        var_0 thread _ID45781();
}

_ID45781()
{

}

_ID52457()
{

}

_ID45242()
{
    while ( isalive( self ) )
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3  );

        if ( isdefined( var_1 ) && ( isdefined( var_1._ID170 ) && var_1._ID170 == "misc_turret" ) )
        {
            if ( !isdefined( var_3 ) )
                break;

            if ( !isdefined( var_2 ) )
                var_2 = ( 0, 0, 1 );

            playfx( _ID42237::_ID16299( "thermal_body_gib" ), var_3 );
        }
    }
}

_ID44297()
{
    self endon( "death" );

    if ( _ID42237::_ID14385( "lav_is_suppressing" ) )
        return;

    self._ID513 = 1;
    self._ID2219 = 1;
}

_ID45840()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    thread _ID50012( 1 );
    self._ID4867 = 0.01;
    self._ID86 = 10;
    self._ID2219 = 1;
    var_0 = undefined;
    var_1 = undefined;

    while ( isalive( self ) )
    {
        self waittill( "damage",  var_2, var_0, var_3, var_1, var_4, var_5  );

        if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
            continue;

        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740 + ( 0, 0, 32 ), level._ID8760["90"] ) )
            break;
    }

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    self kill( var_1, var_0 );
}

_ID50012( var_0 )
{
    self endon( "death" );

    while ( isdefined( self._ID23353 ) )
        wait 0.1;

    thread _ID42407::_ID22746( var_0 );
}

_ID48332()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID172 ) && self._ID172 == "script_model" )
        return;

    _ID42407::_ID32628( 1 );
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID465 = 0;
    self setthreatbiasgroup( "oblivious" );
}

_ID43214()
{
    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID172 ) && self._ID172 == "script_model" )
        return;

    self endon( "death" );
    _ID42407::_ID32628( 0 );
    self._ID511 = 0;
    self._ID507 = 0;
    self._ID465 = 1;
    self setthreatbiasgroup( "allies" );
}

_ID51434()
{
    if ( !isdefined( self ) )
        return;

    self._ID381 = 0;
}

_ID43163()
{
    if ( !isdefined( self ) )
        return;

    self._ID381 = 1;
}

_ID52458()
{
    self endon( "death" );
    self._ID511 = 1;
    self._ID11025 = 1;
    _ID42407::_ID8925( "on" );
    var_0 = getnode( self._ID1191, "targetname" );
    self._ID452 = 16;
    self setgoalnode( var_0 );
    wait 1;
    _ID42237::_ID41098( "goal", "damage" );
    self._ID511 = 0;
    self._ID11025 = 0;
    thread _ID53905();
    var_1 = [];
    var_1[0] = self;
    thread _ID42407::_ID2265( var_1, 512 );
}

_ID48491()
{
    self endon( "death" );
    self._ID49 = 1;
    self._ID511 = 1;
    self._ID29359 = self._ID988;
    self._ID44964 = undefined;
    self._ID49335 = undefined;
    self._ID50813 = undefined;
    self._ID52001 = undefined;
    self._ID53637 = undefined;
    self._ID53396 = undefined;
    self._ID53511 = 0;
    self._ID54201 = 0;
    self._ID52325 = undefined;
    self._ID25510 = self._ID452;
    self._ID452 = 16;
    var_0 = undefined;
    var_1 = undefined;

    if ( isdefined( self._ID1191 ) )
    {
        self._ID465 = 0;
        self._ID507 = 1;
        self._ID52325 = [];
        self._ID52325[0] = getnode( self._ID1191, "targetname" );
        var_0 = self._ID52325[0] _ID42237::_ID15808();
        var_2 = 1;

        for (;;)
        {
            if ( isdefined( self._ID52325[var_2 - 1]._ID1191 ) )
            {
                var_1 = getnode( self._ID52325[var_2 - 1]._ID1191, "targetname" );
                self._ID52325[var_2] = var_1;
                var_2++;
                continue;
            }

            break;
        }
    }
    else
        var_0 = _ID42237::_ID15808();

    self._ID50129 = var_0;
    self._ID48691 = [];

    foreach ( var_4 in var_0 )
    {
        if ( var_4._ID172 == "script_origin" )
        {
            self._ID50129 = _ID42237::_ID3321( self._ID50129, var_4 );
            self._ID48691 = _ID42237::_ID3293( self._ID48691, var_4 );
        }
    }

    if ( self._ID50129.size > 0 )
        level._ID52873 = _ID42407::_ID3317( level._ID52873, self._ID50129 );

    switch ( self._ID922 )
    {
        case "enemy_javelin":
            _ID42407::_ID17509();
            _ID46601();
            thread _ID47524();
            break;
        case "enemy_stinger":
            _ID47210();
            thread _ID43173();
            break;
        case "enemy_spotter_prone":
            _ID42407::_ID17509();
            self._ID49335 = "enemy_spotter_prone_idle";
            self._ID53396 = "enemy_spotter_prone_react";
            thread _ID53492();
            break;
        case "enemy_spotter_crouched":
            _ID42407::_ID17509();
            self._ID49335 = "enemy_spotter_crouched_idle";
            self._ID53396 = "enemy_spotter_crouched_react";
            thread _ID53492();
            break;
    }
}

_ID47210()
{
    self._ID44964 = "stinger_idle_start";
    self._ID49335 = "stinger_idle";
    self._ID50813 = "stinger_fire";
    self._ID53396 = "stinger_react_stand";
}

_ID46601()
{
    var_0 = "";

    if ( self._ID70 == "javelin_idle_B" )
        var_0 = "2";

    self._ID44964 = "javelin_idle_start" + var_0;
    self._ID49335 = "javelin_idle" + var_0;
    self._ID50813 = "javelin_fire" + var_0;
    self._ID53396 = "javelin_react" + var_0;
    self._ID52785 = level._ID30895["generic"]["javelin_death" + var_0];
    self._ID49082 = level._ID30895["generic"]["javelin_death_reloading" + var_0];

    if ( isdefined( self._ID52325 ) )
    {
        self._ID50813 = "javelin_fire_short";
        self._ID52785 = level._ID30895["generic"]["javelin_death_barrett"];
        self._ID49082 = level._ID30895["generic"]["javelin_death_barrett"];
    }
}

_ID43173()
{
    self endon( "death" );
    thread _ID54740();
    thread _ID44797();
    self endon( "alerted" );
    self._ID29359 _ID42259::_ID3023( self, self._ID44964 );
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;
    self attach( "weapon_stinger", "TAG_INHAND", 1 );
    self._ID54388 = 1;

    while ( isalive( self ) )
    {
        self._ID29359 thread _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
        wait(randomfloatrange( 2, 5 ));
        self._ID29359 notify( "stop_idle" );
        self._ID29359 thread _ID42259::_ID3020( self, self._ID50813 );
        self waittillmatch( "single anim",  "fire_weapon"  );
        var_0 = _ID54023();

        if ( isdefined( var_0 ) )
        {
            var_2 = self gettagorigin( "tag_inhand" );
            var_1 = magicbullet( "stinger", var_2, var_0._ID740 );
            var_1 missile_settargetent( var_0 );
        }

        self waittillmatch( "single anim",  "end"  );
    }
}

_ID44797()
{
    self waittill( "death" );
    self endon( "weapon_detached" );

    if ( isdefined( self._ID48667 ) && !isdefined( self._ID52603 ) )
        _ID42407::_ID41115( "deathanim", "end", 4 );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID54388 ) )
    {
        if ( isdefined( self ) )
        {
            self detach( "weapon_stinger", "TAG_INHAND" );
            self._ID54388 = undefined;
        }
    }
    else if ( isdefined( self._ID48667 ) )
    {
        if ( isdefined( self ) )
        {
            self detach( "weapon_javelin_sp", "TAG_INHAND" );
            self._ID48667 = undefined;
        }
    }
}

_ID47524()
{
    self endon( "death" );
    thread _ID54740();
    thread _ID44797();
    self endon( "alerted" );
    var_0 = getnodearray( "javelin_death_node", "targetname" );

    if ( !isdefined( self._ID52325 ) )
        self._ID29359 _ID42259::_ID3023( self, self._ID44964 );

    var_1 = undefined;
    var_2 = undefined;
    self attach( "weapon_javelin_sp", "TAG_INHAND", 1 );
    self._ID48667 = 1;
    var_3 = 0;

    while ( isalive( self ) )
    {
        if ( isdefined( self._ID52325 ) )
        {
            self._ID9813 = undefined;

            if ( var_3 + 1 > self._ID52325.size )
                var_3 = 0;

            self._ID452 = 16;

            if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) && !isdefined( self._ID31388 ) )
            {
                var_4 = _ID42237::_ID16182( self._ID740, var_0 );
                self setgoalnode( var_4 );
                self waittill( "goal" );
                self delete();
                return;
            }

            self setgoalnode( self._ID52325[var_3] );
            self._ID29359 = self._ID52325[var_3];
            var_3++;
            self waittill( "goal" );
        }

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) && isdefined( self._ID31388 ) )
        {
            var_5 = [];
            var_5[0] = self;
            thread _ID42407::_ID2265( var_5, 512 );
        }

        self._ID29359 thread _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
        self._ID9813 = self._ID52785;

        if ( isdefined( self._ID52325 ) )
            wait 0.25;
        else
            wait(randomfloatrange( 2, 7 ));

        self._ID29359 notify( "stop_idle" );
        thread _ID42259::_ID3020( self, self._ID50813 );
        self waittillmatch( "single anim",  "fire_weapon"  );
        var_1 = _ID54023();

        if ( isdefined( var_1 ) )
        {
            var_2 = magicbullet( "javelin_dcburn", self gettagorigin( "tag_inhand" ), var_1._ID740 );
            playfxontag( _ID42237::_ID16299( "javelin_muzzle" ), self, "TAG_FLASH" );
            var_2 missile_settargetent( var_1 );
            var_2 missile_setflightmodetop();
        }

        self waittillmatch( "single anim",  "end"  );
    }
}

_ID54023()
{
    self endon( "death" );
    self endon( "alerted" );
    self._ID50129 = _ID52455( self._ID50129 );
    level._ID52873 = _ID52455( level._ID52873 );
    var_0 = undefined;

    if ( self._ID54201 == 1 && self._ID53511 == 1 )
    {
        if ( self._ID50129.size > 0 )
            var_0 = self._ID50129[randomint( self._ID50129.size )];
        else if ( level._ID52873.size > 0 )
            var_0 = level._ID52873[randomint( level._ID52873.size )];
        else
            var_0 = self._ID48691[randomint( self._ID48691.size )];

        self._ID54201 = 0;
    }
    else
    {
        var_0 = self._ID48691[randomint( self._ID48691.size )];
        self._ID54201 = 1;
    }

    return var_0;
}

_ID53492()
{
    self endon( "death" );
    thread _ID54740();
    self endon( "alerted" );
    self._ID29359 _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
}

_ID54740()
{
    if ( isdefined( self._ID1194 ) && self._ID1194 == "allies" )
        return;

    self endon( "death" );
    self waittill( "alerted" );
    self._ID452 = self._ID25510;

    if ( isdefined( self._ID54388 ) )
    {
        if ( isdefined( self._ID7._ID28253 ) && self._ID7._ID28253 == "crouch" )
            self._ID53396 = "stinger_react_crouch";
    }

    if ( isdefined( self._ID29359 ) )
        self._ID29359 notify( "stop_idle" );

    self notify( "stop_idle" );
    _ID42407::_ID3136();
    _ID42259::_ID3020( self, self._ID53396 );
    self._ID9813 = undefined;

    if ( isdefined( self._ID54388 ) )
    {
        self detach( "weapon_stinger", "TAG_INHAND" );
        self notify( "weapon_detached" );
        self._ID54388 = undefined;
    }
    else if ( isdefined( self._ID48667 ) )
    {
        self detach( "weapon_javelin_sp", "TAG_INHAND" );
        self notify( "weapon_detached" );
        self._ID48667 = undefined;
    }

    _ID42407::_ID17508();
}

_ID48687()
{
    self endon( "death" );

    if ( isdefined( self ) && isalive( self ) && !isdefined( self._ID54440 ) )
    {
        self notify( "alerted" );
        wait 1;
        self._ID511 = 0;
    }
}

_ID48566()
{
    self endon( "death" );
    level endon( self._ID31190 );

    if ( !_ID42237::_ID14396( self._ID31190 ) )
        _ID42237::_ID14400( self._ID31190 );

    while ( isalive( self ) )
    {
        if ( _ID42237::_ID14385( self._ID31190 ) )
            break;

        self waittill( "damage" );

        if ( !_ID42237::_ID14385( self._ID31190 ) )
        {
            _ID42237::_ID14402( self._ID31190 );
            break;
        }
    }
}

_ID46754()
{
    self endon( "death" );
    thread _ID53895( 1 );
    self endon( "stop_default_drone_mi" );

    if ( isdefined( self._ID922 ) && self._ID922 == "drone_warrior_fodder" )
        self._ID24866 = 1;

    if ( isdefined( self._ID24866 ) )
        thread _ID47301();

    if ( isdefined( self._ID922 ) && self._ID922 == "ai_ambient" )
    {
        self._ID11572 = 1;
        self._ID31276 = 0;
    }

    self waittill( "goal" );

    if ( isdefined( self._ID922 ) )
    {
        switch ( self._ID922 )
        {
            case "death_by_mortar":
                thread _ID45664();
                break;
            case "drone_warrior":
                thread _ID52095();
                break;
            case "drone_warrior_fodder":
                thread _ID52107();
                break;
            default:
                self delete();
        }
    }
    else
        self delete();
}

_ID47301()
{
    if ( !isdefined( self ) )
        return;

    thread _ID42286::_ID11846();
    self waittill( "death" );
    wait 10;

    while ( isdefined( self ) )
    {
        if ( !_ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), self._ID740, level._ID8760["90"] ) )
            break;

        wait 5;
    }

    if ( isdefined( self ) )
        self delete();
}

_ID52095()
{

}

_ID52107()
{
    self endon( "death" );
    var_0 = self._ID740;
    var_1 = 100;
    var_2 = 0;
    var_3 = undefined;

    if ( _ID42237::_ID8201() )
    {
        var_4 = 720;
        var_3 = spawn( "trigger_radius", var_0, var_2, var_4, var_1 );
        thread _ID45664( var_3 );
    }
    else
    {
        var_4 = randomintrange( 400, 512 );
        var_3 = spawn( "trigger_radius", var_0, var_2, var_4, var_1 );
        thread _ID43260( var_3 );
    }
}

_ID43260( var_0 )
{
    self endon( "death" );

    if ( isdefined( var_0 ) )
        var_0 waittill( "trigger" );

    var_1 = _ID42237::_ID28945( level._ID44323 )._ID740;
    thread _ID42237::_ID27077( "h2_wpn_desert_eagle_npc_close", self._ID740 );
    thread _ID42237::_ID27077( "bullet_large_flesh", self._ID740 );
    var_2 = self gettagorigin( "tag_eye" );
    var_3 = vectornormalize( var_2 - var_1 );
    playfx( _ID42237::_ID16299( "headshot" ), var_2, var_3 );
    playfxontag( _ID42237::_ID16299( "bodyshot" ), self, "tag_eye" );
    self notify( "stop_drone_fighting" );

    if ( _ID42237::_ID8201() )
        thread _ID42237::_ID27077( "generic_death_american_1", self._ID740 );

    self kill();
}

_ID45664( var_0 )
{
    self endon( "death" );

    if ( isdefined( var_0 ) )
        var_0 waittill( "trigger" );

    if ( !level._ID43469 )
        _ID42237::_ID27077( "mortar_incoming", self._ID740 );

    thread _ID52645( self._ID740 );
    self notify( "stop_drone_fighting" );

    if ( _ID42237::_ID8201() )
        thread _ID42237::_ID27077( "generic_death_american_1", self._ID740 );

    if ( !isdefined( self._ID3203 ) )
        var_1 = level._ID30895["generic"]["deathanim_mortar_0" + randomint( 2 )];
    else if ( issubstr( self._ID3203, "stand" ) || issubstr( self._ID3203, "crouch" ) )
        var_1 = level._ID30895["generic"]["deathanim_mortar_01"];
    else
        var_1 = level._ID30895["generic"]["deathanim_mortar_0" + randomint( 2 )];

    if ( isdefined( self._ID9813 ) )
    {
        if ( _ID42237::_ID8201() )
            var_1 = self._ID9813;
    }

    self._ID9813 = var_1;
    self kill();
}

_ID53895( var_0 )
{
    self waittill( "death",  var_1, var_2  );

    if ( !isdefined( var_1 ) )
        return;

    if ( isdefined( var_1._ID1193 ) && var_1._ID1193 == "heli_player" && _ID42237::_ID14385( "player_on_minigun" ) )
    {
        self._ID34237 = 1;

        if ( isdefined( var_0 ) && var_0 == 1 )
            _ID42407::_ID54515( self._ID740, "explosive", 50 );
    }
}

_ID44534()
{
    self._ID511 = 1;
    self._ID452 = 16;
    thread _ID42407::_ID22746();
    self._ID4912 = 1;
}

_ID45768()
{
    precacherumble( "crash_heli_rumble" );
    precacherumble( "Heli_pass_above" );
    precacheitem( "missile_attackheli_dcburn" );
    precachemodel( "viewhands_us_army_dmg" );
    precacheitem( "slamraam_missile_dcburning" );
    precachemodel( "vehicle_slamraam_destroyed" );
    precachemodel( "vehicle_bradley_destroyed" );
    precachemodel( "mil_mre_chocolate01" );
    precachemodel( "weapon_binocular" );
    precacheitem( "slamraam_missile_dcburning" );
    precachemodel( "weapon_bullet_02" );
    precachemodel( "weapon_m82_MG_Setup_obj" );
    precachemodel( "projectile_cbu97_clusterbomb" );
    precachemodel( "weapon_m4m203_acog" );
    precachemodel( "weapon_stinger" );
    precachemodel( "weapon_javelin_sp" );
    precachemodel( "h2_weapon_javelin_base_obj" );
    precachemodel( "h2_dcburning_obelisk_break_a" );
    precachemodel( "h2_dcburning_obelisk_break_b" );
    precachemodel( "h2_dcburning_crutch_animated" );
    precachemodel( "com_blackhawk_spotlight_on_mg_setup" );
    precachestring( &"DCBURNING_INFO_EVAC_SITE_HEALTH" );
    precachestring( &"DCBURNING_OBJ_FOLLOW_SGT_MACEY" );
    precachestring( &"DCBURNING_OBJ_COMMERCE" );
    precachestring( &"DCBURNING_OBJ_ROOFTOP" );
    precachestring( &"DCBURNING_OBJ_HELI_RIDE" );
    precachestring( &"DCBURNING_OBJ_LINCOLN" );
    precachestring( &"DCBURNINGINFO_EVAC_SITE_HEALTH" );
    precachestring( &"DCBURNING_MISSIONFAIL_LEFT_CHOPPER" );
    precachestring( &"DCBURNING_RAN_OUT_OF_TIME" );
    precachestring( &"DCBURNING_TIME_REMAINING" );
    precachestring( &"DCBURNING_OBJ_REGROUP_WITH_TEAM" );
    precachestring( &"DCBURNING_OBJ_COMMERCE_SUPPORT_EVAC_SITE" );
    precachemodel( "adrenaline_syringe_animated" );
    precachemodel( "clotting_powder_animated" );
    precachemodel( "com_folding_chair" );
    precachemodel( "com_laptop_rugged_open" );
    precachemodel( "vehicle_mack_truck_short_destroy" );
    precachemodel( "vehicle_uaz_fabric_dsr" );
    precachemodel( "vehicle_luxurysedan_2008_destroy" );
    precacheitem( "javelin_dcburn" );
    precacheitem( "javelin_noimpact" );
    precacheitem( "stinger" );
    _ID42313::_ID54261();
    precachemodel( "h1_mwr_com_widescreen_monitor_des" );
    precachemodel( "h1_mwr_com_widescreen_monitor_2_des" );
    precachemodel( "com_widescreen_monitor_on_1_des" );
    precachemodel( "com_widescreen_monitor_on_2_des" );
    precachemodel( "com_widescreen_monitor_on_3_des" );
    precachemodel( "h2_adrenaline_syringe_phys" );
}

_ID47940()
{
    level._ID53717 = undefined;
    level._ID53836 = undefined;

    switch ( level._ID15361 )
    {
        case 0:
            level._ID53836 = 3;
            level._ID53717 = 1;
            break;
        case 1:
            level._ID53836 = 4;
            level._ID53717 = 1;
            break;
        case 2:
            level._ID53836 = 4;
            level._ID53717 = 1;
            break;
        case 3:
            level._ID53836 = 4;
            level._ID53717 = 1;
            break;
    }

    _ID42237::_ID14402( "difficulty_initialized" );
}

_ID46797()
{
    _ID42237::_ID3350( level._ID46473, _ID42237::_ID38863 );
}

_ID53561()
{
    for (;;)
    {
        wait(randomfloatrange( 0.05, 0.1 ));
        self setlightintensity( randomfloatrange( 1, 1.5 ) );
    }
}

_ID48168()
{
    for (;;)
    {
        wait(randomfloatrange( 0.05, 0.1 ));
        self setlightintensity( randomfloatrange( 0.8, 1.1 ) );
    }
}

_ID47332()
{
    for (;;)
    {
        self setlightintensity( 0 );
        wait 1;
        self setlightintensity( 1.4 );
        wait 0.1;
    }
}

_ID22343()
{
    var_0 = getentarray( "firelight_flicker", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID51970 );
    var_1 = getentarray( "flickerlight1", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 thread _ID47366();

    var_5 = getentarray( "fluorescentFlicker", "targetname" );

    foreach ( var_7 in var_5 )
        var_7 thread _ID53561();

    var_5 = getentarray( "fluorescentFlickerBig", "targetname" );

    foreach ( var_7 in var_5 )
        var_7 thread _ID48168();

    var_11 = getentarray( "strobe1", "targetname" );

    foreach ( var_13 in var_11 )
        var_13 thread _ID47332();
}

_ID45905( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    waitframe;

    if ( isdefined( var_1 ) && var_1 != 1 )
    {
        level._ID35507 = [];
        level._ID44035 = _ID42407::_ID35168( "teamLeader" );
        level._ID49792 = _ID42407::_ID35168( "friendly02" );
        level._ID48061 = _ID42407::_ID35168( "friendly03" );
        level._ID35507[0] = level._ID44035;
        level._ID35507[1] = level._ID49792;
        level._ID35507[2] = level._ID48061;
        _ID42237::_ID3350( level._ID35507, ::_ID46555 );
        level._ID13290 = [];
        level._ID13290[0] = level._ID44035;
    }

    level._ID47286 = level._ID35507;

    if ( var_0 == "Bunker" )
        return;

    if ( isdefined( var_2 ) && var_2 == 1 )
    {
        var_3 = getnodearray( "playerStart" + var_0, "targetname" );
        _ID42407::_ID37442( var_3 );
    }

    var_4 = level._ID35507;
    var_5 = getnodearray( "friendlyStart" + var_0, "targetname" );

    while ( var_4.size > 0 )
    {
        wait 0.05;

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            if ( isdefined( var_5[var_6]._ID922 ) )
            {
                switch ( var_5[var_6]._ID922 )
                {
                    case "nodeLeader":
                        level._ID44035 _ID42407::_ID37393( var_5[var_6] );
                        var_4 = _ID42237::_ID3321( var_4, level._ID44035 );
                        var_5 = _ID42237::_ID3321( var_5, var_5[var_6] );
                        continue;
                    case "nodeFriendly02":
                        level._ID49792 _ID42407::_ID37393( var_5[var_6] );
                        var_4 = _ID42237::_ID3321( var_4, level._ID49792 );
                        var_5 = _ID42237::_ID3321( var_5, var_5[var_6] );
                        continue;
                    case "nodeFriendly03":
                        level._ID48061 _ID42407::_ID37393( var_5[var_6] );
                        var_4 = _ID42237::_ID3321( var_4, level._ID48061 );
                        var_5 = _ID42237::_ID3321( var_5, var_5[var_6] );
                        continue;
                    default:
                        continue;
                }
            }
        }
    }
}

_ID46555()
{
    self._ID3189 = "generic";

    if ( self == level._ID44035 || self == level._ID49792 )
    {
        thread _ID42407::_ID22746();
        _ID42407::_ID32628( 1 );
    }
}

_ID52395()
{
    level._ID14382 = 128;

    foreach ( var_1 in level._ID35507 )
    {
        if ( isdefined( self ) )
            self._ID382 = level._ID14382;
    }
}

_ID44608()
{
    level._ID14382 = undefined;

    foreach ( var_1 in level._ID35507 )
    {
        if ( isdefined( self ) )
            self._ID382 = 64;
    }
}

_ID43426( var_0 )
{
    self endon( "death" );
    var_0 waittill( "trigger" );
    self notify( "landing" );
    _ID42407::_ID40118();
    self setgoalyaw( var_0._ID65[1] );
    _ID42544::_ID40185( undefined, var_0 );
    self notify( "landed" );
}

_ID47735()
{
    var_0 = _ID42237::_ID16638( self._ID922, "script_noteworthy" );
    var_1 = distance( self._ID740, var_0._ID740 );
    _ID42407::_ID40191( var_1 );
    thread _ID42411::_ID40218( var_0 );
}

_ID45307( var_0, var_1 )
{
    _ID44705();
    var_2 = _ID42407::_ID16728( var_0 );
    var_2._ID1191 = var_1._ID1193;
    var_2._ID740 = var_1._ID740;

    if ( isdefined( var_1._ID65 ) )
        var_2._ID65 = ( var_1._ID65[0], var_1._ID65[1], var_2._ID65[2] );

    var_3 = _ID42411::_ID35195( var_0 );
    var_3 thread _ID42411::_ID40218( var_1 );
    var_3 _ID42411::_ID40066( "idle_alert_to_casual" );
    return var_3;
}

achievement_bird_hunter_init()
{
    level.birdhunterkill = 0;
    thread achievement_bird_hunter_manager();
}

achievement_bird_hunter_manager()
{
    while ( level.birdhunterkill < 10 )
        waittillframeend;

    _ID42407::_ID16864( "BIRD_HUNTER" );
    _ID42237::_ID14402( "achievement_bird_hunter_done" );
    level notify( "achievement_bird_hunter_done" );
}

achievement_bird_hunter()
{
    level endon( "achievement_bird_hunter_done" );
    self waittill( "death",  var_0, var_1, var_2  );

    if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
    {
        if ( isdefined( var_1 ) && var_1 == "MOD_PROJECTILE" )
        {
            if ( isdefined( var_2 ) && var_2 == "javelin_dcburn" )
                level.birdhunterkill++;
        }
    }
}

_ID47372()
{
    if ( getdvar( "dc_debug" ) == "1" && isdefined( self._ID988._ID1193 ) )
        thread _ID42407::_ID9904( self._ID988._ID1193, self._ID740, 9999, self );

    if ( _ID42413::_ID20706() )
        thread _ID42413::_ID15010();

    if ( _ID42411::_ID20763() && !_ID42237::_ID14385( "achievement_bird_hunter_done" ) )
        thread achievement_bird_hunter();

    switch ( self._ID1282 )
    {
        case "latvee":
        case "laatpv_minigun":
        case "laatpv":
            thread _ID53799();
            break;
        case "mi17":
            thread _ID43334();
            break;
        case "littlebird":
            thread _ID47879();
            break;
        case "m1a1":
            thread _ID48430();
            break;
        case "btr80":
            thread _ID54076();
            break;
        case "cobra":
            thread _ID44060();
            break;
        case "mi28":
            thread _ID45533();
            break;
        case "slamraam":
            thread _ID54210();
            break;
    }
}

_ID54210()
{
    self endon( "death" );
    self setturrettargetent( level._ID794 );

    foreach ( var_1 in self._ID23757 )
        self attach( self._ID23746, var_1 );

    self._ID51170 = 3;
    thread _ID51046();
    var_3 = undefined;
    var_1 = undefined;
    var_4 = level._ID794;

    while ( isdefined( self ) && self._ID23757.size > 0 )
    {
        self waittill( "fire" );
        var_1 = _ID42237::_ID28945( self._ID23757 );
        self._ID23757 = _ID42237::_ID3321( self._ID23757, var_1 );
        self detach( self._ID23746, var_1 );
        var_3 = magicbullet( "slamraam_missile_dcburning", self gettagorigin( var_1 ), var_4._ID740 );
        thread maps\dcburning_aud::_ID53638( var_3 );

        if ( self._ID23757.size < 1 )
            break;
    }

    self clearturrettargetent();
}

_ID46808()
{
    var_0 = spawn( "script_origin", self._ID740 + ( 0, 0, 0 ) );
    var_0 linkto( self );

    while ( isdefined( self ) )
    {
        var_0 playrumblelooponentity( "crash_heli_rumble" );
        wait 0.4;
    }

    var_0 delete();
}

_ID45533()
{
    self setmaxpitchroll( 20, 40 );

    if ( isdefined( self._ID31388 ) && self._ID31388 == "custom_rumble" )
        thread _ID46808();

    if ( isdefined( self._ID1193 ) && issubstr( self._ID1193, "ambient" ) )
    {
        thread _ID52944();
        return;
    }

    self._ID14344 = 0;
    self._ID12571 = 1;
    self._ID10149 = "havoc_turret";
    self._ID51170 = 3;
    thread _ID42508::_ID18360( "missile_attackheli_dcburn" );

    if ( isdefined( self._ID922 ) && self._ID922 == "ambient" )
    {

    }
    else if ( isdefined( self._ID922 ) && self._ID922 == "ambient_attacker" )
    {

    }
    else
    {
        target_set( self, ( 0, 0, -80 ) );
        target_setjavelinonly( self, 1 );
    }

    if ( isdefined( self._ID922 ) && self._ID922 == "regular" )
        return;

    thread _ID51046();
}

_ID52944()
{
    self._ID14344 = 0;
    self._ID10149 = "havoc_turret";
    thread _ID42508::_ID18360( "missile_attackheli_dcburn" );
}

_ID53799()
{
    self endon( "death" );
}

_ID43334()
{
    self endon( "death" );
}

_ID47879()
{
    self endon( "death" );
    _ID42411::_ID16988();

    if ( self._ID170 == "script_vehicle_littlebird_armed" )
    {
        thread _ID42508::_ID18360( "missile_attackheli_dcburn" );
        waitframe;

        foreach ( var_1 in self._ID23512 )
        {
            var_1 setmode( "manual" );
            var_1 stopfiring();
        }
    }
}

_ID44705()
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );

    if ( isdefined( self._ID29965 ) && self._ID29965.size )
        _ID42237::_ID3350( self._ID29965, ::_ID47688 );

    if ( isdefined( self._ID23512 ) )
    {
        foreach ( var_1 in self._ID23512 )
        {
            if ( isdefined( var_1 ) )
                var_1 delete();
        }
    }

    _ID42411::_ID16987();
    self delete();
}

_ID48430()
{
    self endon( "death" );
}

_ID54076()
{
    if ( isdefined( self._ID1193 ) && self._ID1193 == "btr80s_end" )
        return;

    self._ID51170 = 3;
    target_set( self, ( 0, 0, 0 ) );
    target_setjavelinonly( self, 1 );
    target_setattackmode( self, "top" );
    thread _ID51046();

    if ( isdefined( self._ID922 ) && self._ID922 == "no_ai" )
        return;

    if ( isdefined( self._ID922 ) && self._ID922 == "crows_nest_bmps" )
        return;

    if ( !level._ID43469 )
        return;
    else
        thread _ID44442();
}

_ID44060()
{
    self endon( "death" );
}

_ID53213()
{
    self endon( "death" );
}

_ID51046()
{
    self endon( "death" );
    _ID42411::_ID16988();
    var_0 = undefined;
    var_1 = undefined;

    while ( isdefined( self ) )
    {
        self waittill( "damage",  var_2, var_0, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10  );

        if ( !isdefined( var_0 ) )
            continue;

        if ( isstring( var_0 ) )
            continue;

        if ( isdefined( var_0._ID172 ) && var_0._ID172 == "misc_turret" )
            continue;

        if ( isdefined( var_0._ID31474 ) && var_0._ID31474 == "axis" )
            continue;

        if ( isdefined( var_0._ID1194 ) && var_0._ID1194 == "axis" )
            continue;

        if ( isdefined( level._ID52945 ) && var_0 == level._ID52945 )
        {
            if ( isdefined( self._ID52722 ) )
                continue;

            self._ID51170--;

            if ( self._ID51170 <= 0 )
                break;
            else
                continue;
        }

        if ( !isdefined( var_5 ) || !isdefined( var_10 ) )
            continue;

        if ( var_5 == "MOD_PROJECTILE" && issubstr( var_10, "javelin" ) )
        {
            if ( isplayernumber( var_0 ) )
            {
                var_1 = 1;
                self.attackerweaponname = var_10;
                self.attackertype = var_5;
            }

            break;
        }
    }

    if ( isdefined( level._ID52945 ) && var_0 == level._ID52945 )
    {

    }
    else if ( !isplayernumber( var_0 ) )
    {
        self notify( "killed_by_friendly" );

        if ( getdvar( "dc_debug" ) == "1" )
            iprintlnbold( "friendly just owned a vehicle" );

        level._ID53717--;
        thread _ID50856();
    }

    thread _ID40100( var_1 );
}

_ID44442()
{
    self endon( "death" );
    thread _ID42411::_ID23509();
    self._ID48977 = 0;
    var_0 = undefined;

    while ( isdefined( self ) )
    {
        if ( level._ID794._ID511 )
        {
            wait 1;
            continue;
        }

        wait 0.05;

        if ( distancesquared( level._ID794._ID740, self._ID740 ) > level._ID50161 )
            var_0 = undefined;
        else
            var_0 = level._ID794;

        if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
        {
            var_1 = 0;
            var_1 = sighttracepassed( self._ID740, level._ID794._ID740 + ( 0, 0, 0 ), 0, self );

            if ( !var_1 )
                var_0 = undefined;
        }

        if ( !isdefined( var_0 ) )
            var_0 = _ID45022();

        if ( isdefined( var_0 ) && isalive( var_0 ) )
        {
            var_2 = var_0._ID740 + ( 0, 0, 32 );
            self setturrettargetvec( var_2 );
            var_3 = randomfloatrange( 2, 3 );
            _ID42237::_ID41123( "turret_rotate_stopped", var_3 );

            if ( isdefined( var_0 ) && isplayernumber( var_0 ) )
            {
                var_4 = level._ID794 geteye();
                var_5 = _ID42237::_ID41802( var_4, level._ID52945._ID65 + ( 0, -90, 0 ), self._ID740, level._ID8760["45"] );

                if ( var_5 )
                {
                    if ( !self._ID48977 )
                        thread _ID45058();
                }
            }

            if ( isdefined( var_0 ) && !isplayernumber( var_0 ) )
            {
                if ( !self._ID48977 )
                    thread _ID45058();
            }
        }
    }
}

_ID45058()
{
    self endon( "death" );
    var_0 = undefined;
    var_1 = undefined;

    switch ( self._ID1282 )
    {
        case "btr80":
            var_0 = 0.5;
            var_1 = randomintrange( 3, 6 );
            break;
    }

    endswitch( 2 )  case "btr80" loc_CD04 default loc_CD18
    self._ID48977 = 1;
    var_2 = 0;

    while ( var_2 < var_1 )
    {
        var_2++;
        wait(var_0);
        self fireweapon();
    }

    self._ID48977 = 0;
}

_ID50856()
{
    if ( _ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
    {
        level._ID51365 = undefined;
        return;
    }

    self notify( "cooldown_started" );
    self endon( "cooldown_started" );
    level._ID51365 = 0;
    wait 10;
    level._ID51365 = 1;
}

_ID40100( var_0 )
{
    if ( !level._ID43469 )
    {
        if ( target_istarget( self ) )
            target_remove( self );
    }

    _ID42411::_ID16987();
    self notify( "death",  level._ID794, self.attackertype, self.attackerweaponname  );

    if ( isdefined( var_0 ) )
    {
        earthquake( 0.25, 0.75, level._ID794._ID740, 1250 );
        level._ID794 playrumblelooponentity( "damage_light" );
    }
}

_ID47783()
{
    self endon( "death" );
    var_0 = getent( self._ID1191, "targetname" );
    thread _ID42237::_ID10280( var_0 );
    var_1 = self._ID70;
    self._ID12293 = spawn( "script_origin", var_0._ID740 );
    thread _ID42237::_ID10280( self._ID12293 );
    var_2 = undefined;

    switch ( var_0._ID669 )
    {
        case "com_folding_table":
            if ( isdefined( self._ID31388 ) )
                self._ID12293._ID740 = self._ID12293._ID740 + ( 0, -40, 0 );

            self._ID12293._ID65 = var_0._ID65 + ( 0, 0, 0 );
            self._ID12293 _ID42259::_ID3023( self, var_1 + "_start" );
            var_3 = spawn( "script_model", self._ID740 );
            var_3 setmodel( "weapon_uav_control_unit" );
            thread _ID42237::_ID10280( var_3 );
            var_3._ID65 = self._ID65 + ( 0, 0, 0 );
            var_4 = spawnstruct();
            var_4._ID337 = var_3;
            var_4._ID409 = 23;
            var_4._ID1251 = 33.5;
            var_4._ID893 = 1;
            var_4._ID41911 = 0;
            var_4 _ID42407::_ID38694();
            var_5 = spawn( "script_model", self._ID740 );
            var_5 setmodel( "com_folding_chair" );
            var_5._ID65 = self._ID65 + ( 0, 0, 0 );
            thread _ID42237::_ID10280( var_5 );
            var_4 = spawnstruct();
            var_4._ID337 = var_5;
            var_4._ID409 = -5;
            var_4 _ID42407::_ID38694();

            if ( var_1 == "laptop_officer_idle" )
            {
                var_5 delete();
                var_3 delete();
            }

            break;
        case "mil_bunker_bed2":
            _ID42407::_ID17509();
            self._ID12293._ID65 = var_0._ID65 + ( 0, 90, 0 );
            var_4 = spawnstruct();
            var_4._ID337 = self._ID12293;
            var_4._ID1251 = 28;
            var_4 _ID42407::_ID38694();
            self._ID12293 _ID42259::_ID3023( self, var_1 + "_start" );
            break;
        case "bc_cot":
            _ID42407::_ID17509();
            var_4 = spawnstruct();
            var_4._ID337 = self._ID12293;

            if ( var_1 == "cargoship_sleeping_guy_idle_1" || var_1 == "cargoship_sleeping_guy_idle_2" )
            {
                var_4._ID1251 = 22;
                var_4._ID41911 = 180;
                var_4._ID409 = 4;
                var_4 _ID42407::_ID38694();
            }
            else if ( var_1 == "afgan_caves_sleeping_guard_idle" )
            {
                var_4._ID41911 = 180;
                var_4 _ID42407::_ID38694();
            }
            else if ( var_1 == "DC_Burning_CPR_wounded" || var_1 == "DC_Burning_CPR_medic" )
            {
                var_2 = "player_bunker_walk_01";
                var_4._ID41911 = 195;
                var_4 _ID42407::_ID38694();
            }
            else
            {
                var_4._ID41911 = 90;
                var_4 _ID42407::_ID38694();
            }

            break;
        case "stretcher_animated":
            _ID42407::_ID17509();
            self._ID12293._ID65 = var_0._ID65 + ( 0, 90, 0 );
            var_4 = spawnstruct();
            var_4._ID337 = self._ID12293;
            var_4._ID1251 = -1;
            var_4 _ID42407::_ID38694();
            self._ID12293 _ID42259::_ID3023( self, var_1 + "_start" );
            break;
        case "bc_stretcher":
            _ID42407::_ID17509();
            self._ID12293._ID65 = var_0._ID65 + ( 0, 0, 0 );

            if ( var_1 == "afgan_caves_sleeping_guard_idle" )
            {
                var_4 = spawnstruct();
                var_4._ID337 = self._ID12293;
                var_4._ID1251 = -12;
                var_4._ID893 = 2;
                var_4 _ID42407::_ID38694();
            }
            else
            {
                var_4 = spawnstruct();
                var_4._ID337 = self._ID12293;
                var_4._ID1251 = 8;
                var_4 _ID42407::_ID38694();
            }

            self._ID12293 _ID42259::_ID3023( self, var_1 + "_start" );
            break;
        default:
            _ID42407::_ID17509();
            self._ID12293._ID65 = var_0._ID65;
            break;
    }

    thread _ID48033( var_1, var_2 );
}

_ID51288()
{
    self waittill( "death" );

    if ( isdefined( self._ID12293 ) && !isspawner( self._ID12293 ) )
        self._ID12293 delete();
}

_ID51021( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    self._ID31190 = var_1._ID31190;
    self._ID70 = var_1._ID70;
    self._ID12293 = var_1;
    self._ID1191 = var_1._ID1191;
    var_2 = self._ID70;
    var_3 = undefined;
    thread _ID48033( var_2, var_3 );
}

_ID53409()
{
    self endon( "death" );
    var_0 = self._ID70;
    var_1 = 0;

    if ( !isdefined( self._ID12293 ) )
        self._ID12293 = self._ID988;

    var_2 = "player_bunker_walk_01";

    switch ( var_0 )
    {
        case "death_explosion_run_F_v1":
        case "civilian_run_2_crawldeath":
            _ID42407::_ID17509();
            self._ID34237 = 1;
            self._ID24924 = 1;
            break;
        case "DC_Burning_artillery_reaction_v1_idle":
        case "DC_Burning_artillery_reaction_v2_idle":
        case "DC_Burning_artillery_reaction_v3_idle":
        case "DC_Burning_artillery_reaction_v4_idle":
        case "h2_dc_burning_bunker_stumble":
        case "training_latvee_wounded":
        case "training_latvee_soldier":
            var_2 = "player_bunker_walk_01";
            _ID42407::_ID17509();
            break;
        case "bunker_toss_idle_guy1":
            _ID42407::_ID8925( "on" );
            break;
        case "unarmed_panickedrun_loop_V2":
            _ID42407::_ID32328( "unarmed_panickedrun_loop_V2" );
            _ID42407::_ID17509();
            self._ID10998 = 1;
            self._ID11025 = 1;
            self._ID452 = 16;
            self waittill( "goal" );
            _ID42407::_ID7892();
            wait 1;
            _ID42407::_ID17508();
            var_1 = 1;
            return;
        case "roadkill_cover_radio_soldier2":
            break;
        case "roadkill_cover_spotter":
            self attach( "weapon_binocular", "TAG_INHAND", 1 );
            break;
        case "roadkill_cover_radio_soldier3":
            self._ID12293._ID740 = self._ID12293._ID740 + ( 0, 0, 8 );
            self attach( "mil_mre_chocolate01", "TAG_INHAND", 1 );
            break;
        case "favela_run_and_wave":
            break;
        case "h2_dcburning_controlroom_ranger05":
            self._ID12293 _ID42259::_ID3023( self, var_0 );
            wait 9.5;
            break;
        case "h2_dcburning_controlroom_ranger06":
            _ID42407::_ID17509();
            self._ID12293 _ID42259::_ID3023( self, var_0 );
            wait 9.5;
            break;
        case "h2_dcburning_medicalbay_soldier_B":
            _ID42407::_ID17509();
            _ID32651( "head_us_army_d" );
            break;
        case "h2_dc_burning_carrying_Injured_wounded":
            _ID42407::_ID17509();
            _ID32651( "head_us_army_a" );
            break;
        case "h2_dcburning_medicalbay_soldier_J_idle":
            _ID42407::_ID17509();
            self attach( "h2_weapon_m4_base", "tag_weapon_left" );
            break;
        case "h2_dcburning_controlroom_ranger01":
            _ID42407::_ID17509();
            self attach( "h2_dcburning_crutch_animated", "tag_weapon_right" );
            break;
        default:
            _ID42407::_ID17509();
            break;
    }

    thread _ID48033( var_0, var_2 );
}

_ID32651( var_0 )
{
    if ( isdefined( self._ID18304 ) )
        self detach( self._ID18304 );

    self attach( var_0, "", 1 );
    self._ID18304 = var_0;
}

scripted_anim_props( var_0, var_1 )
{
    self._ID3189 = var_1;
    _ID42407::_ID3428();
    var_2 = randomint( 3 );
    _ID42407::_ID10226( var_2, _ID42259::_ID3044, self, var_0 );
}

_ID53834( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        thread _ID42237::_ID27077( var_0 );
        self waittillmatch( "looping anim",  "end"  );
    }
}

_ID48033( var_0, var_1 )
{
    self endon( "death" );
    _ID48332();
    var_2 = undefined;
    var_3 = undefined;
    var_4 = 0;

    if ( isdefined( self._ID1191 ) )
        var_2 = getnode( self._ID1191, "targetname" );

    thread _ID51288();

    if ( isarray( level._ID30895["generic"][var_0] ) )
    {
        var_4 = 1;
        self._ID12293 thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        var_3 = var_0 + "_go";

        if ( _ID3012( var_3 ) )
            var_0 = var_3;
        else
            var_3 = undefined;
    }
    else
        self._ID12293 _ID42259::_ID3023( self, var_0 );

    if ( isdefined( self._ID31190 ) )
    {
        if ( isdefined( var_1 ) )
            _ID42237::_ID14421( self._ID31190, var_1 );
        else
            _ID42237::_ID14413( self._ID31190 );
    }

    switch ( var_0 )
    {
        case "death_explosion_run_F_v1":
        case "civilian_run_2_crawldeath":
            thread _ID52645( self._ID740 );
            break;
    }

    if ( isdefined( var_2 ) )
    {
        self._ID10998 = 1;
        self._ID11025 = 1;
    }

    if ( !var_4 )
        self._ID12293 _ID42259::_ID3020( self, var_0 );

    if ( isdefined( var_3 ) )
    {
        self._ID12293 notify( "stop_idle" );
        self._ID12293 _ID42259::_ID3020( self, var_3 );
    }

    switch ( var_0 )
    {
        case "civilian_run_2_crawldeath":
            self kill();
            break;
    }

    if ( isdefined( var_2 ) )
    {
        self setgoalnode( var_2 );
        wait 1;
        self._ID10998 = 0;
        self._ID11025 = 0;
        self waittill( "goal" );

        if ( isdefined( self._ID8931 ) && self._ID8931 )
            _ID42407::_ID8925( "off" );
    }
    else if ( isdefined( level._ID30895["generic"][var_0 + "_idle"] ) )
        self._ID12293 thread _ID42259::_ID3025( self, var_0 + "_idle", "stop_idle" );

    if ( _ID3012( var_0 + "_react" ) )
    {
        if ( !var_4 )
            var_0 += "_idle";

        var_5 = var_0 + "_react";

        if ( _ID3012( var_0 + "_react2" ) )
            var_6 = var_0 + "_react2";
        else
            var_6 = var_5;

        while ( isdefined( self ) )
        {
            level waittill( "mortar_hit" );
            self._ID12293 notify( "stop_idle" );
            self notify( "stop_idle" );
            waitframe;

            if ( randomint( 100 ) > 50 )
                self._ID12293 _ID42259::_ID3020( self, var_5 );
            else
                self._ID12293 _ID42259::_ID3020( self, var_6 );

            self._ID12293 thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        }
    }
}

_ID52645( var_0 )
{
    playfx( level._ID1426["mortar"]["dirt"], var_0 );
    thread _ID42237::_ID27077( level._ID30909["mortar"]["dirt"], var_0 );
    earthquake( 0.25, 0.75, var_0, 1250 );
}

_ID50312()
{
    var_0 = randomint( 2 );
    _ID44278( "dcburn_javelins_incoming_0" + var_0 );
}

_ID52536()
{
    var_0 = spawn( "script_origin", self._ID740 );
    var_0 linkto( self );
    self waittill( "death" );
    earthquake( 1.2, 1.5, var_0._ID740, 1600 );
    wait 0.05;
    var_0 delete();
}

_ID51869( var_0 )
{
    var_1 = magicbullet( "javelin_noimpact", var_0._ID740, self._ID740 );
    playfx( _ID42237::_ID16299( "javelin_muzzle" ), var_0._ID740 );
    var_1 thread _ID52536();
    var_1 missile_settargetent( self );
    var_1 missile_setflightmodetop();

    for (;;)
    {
        self waittill( "damage",  var_2, var_3, var_4, var_5, var_6  );

        if ( isdefined( var_3._ID170 ) && var_3._ID170 == "worldspawn" && isdefined( var_2 ) && var_2 > 24 )
            break;
    }

    if ( isdefined( self ) )
        self notify( "death" );
}

_ID48994()
{
    level._ID794._ID511 = 1;
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );

    for ( var_0 = 0; var_0 < level._ID35507.size; var_0++ )
    {
        if ( !isdefined( level._ID35507[var_0] ) )
            continue;

        level._ID35507[var_0]._ID511 = 1;
        level._ID35507[var_0] setthreatbiasgroup( "oblivious" );
    }
}

_ID54322()
{
    level._ID794._ID511 = 0;
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );

    for ( var_0 = 0; var_0 < level._ID35507.size; var_0++ )
    {
        if ( !isdefined( level._ID35507[var_0] ) )
            continue;

        level._ID35507[var_0]._ID511 = 0;
        level._ID35507[var_0] setthreatbiasgroup( "allies" );
    }
}

_ID45378()
{
    thread _ID50012();
    _ID42407::_ID32628( 1 );
    self._ID4867 = 0.1;
    self._ID507 = 1;
    var_0 = getnode( self._ID1191, "targetname" );

    if ( isdefined( var_0 ) )
    {
        self setgoalnode( var_0 );
        self._ID452 = 16;
    }
}

_ID47366()
{
    while ( isdefined( self ) )
    {
        wait(randomfloatrange( 0.05, 0.1 ));
        self setlightintensity( randomfloatrange( 0.6, 1.8 ) );
    }
}

_ID51970()
{
    while ( isdefined( self ) )
    {
        wait(randomfloatrange( 0.05, 0.1 ));
        self setlightintensity( randomfloatrange( 1.2, 2.2 ) );
    }
}

_ID45102( var_0, var_1, var_2 )
{
    var_3 = getent( self._ID1191, "targetname" );
    playfxontag( _ID42237::_ID16299( "flare_ambient" ), self, "TAG_FIRE_FX" );
    thread _ID42237::_ID27077( "flare_ignite", self._ID740 );
    var_3 _ID53117( var_0, var_2 );
    var_3 _ID47752( var_1 );
    thread _ID48656();
}

_ID53117( var_0, var_1 )
{
    self setlightintensity( 0 );
    var_2 = 0;
    var_3 = ( var_1 - 0 ) / ( var_0 / 0.05 );
    var_4 = 0;
    var_5 = undefined;

    while ( var_4 < var_0 )
    {
        var_2 += var_3;
        var_5 = randomfloatrange( -0.05, 0.05 );
        var_2 += var_5;

        if ( var_2 < 0 )
            break;

        self setlightintensity( var_2 );
        var_4 += 0.05;
        wait 0.05;
    }
}

_ID47752( var_0 )
{
    var_1 = self getlightintensity();
    var_2 = ( var_1 - 0 ) / ( var_0 / 0.05 );
    var_3 = 0;
    var_4 = undefined;

    while ( var_3 < var_0 )
    {
        var_1 -= var_2;
        var_4 = randomfloatrange( -0.05, 0.05 );
        var_1 += var_4;

        if ( var_1 < 2 )
            break;

        self setlightintensity( var_1 );
        var_3 += 0.05;
        wait 0.05;
    }
}

_ID48656( var_0, var_1 )
{
    var_2 = getent( self._ID1191, "targetname" );

    if ( !isdefined( var_0 ) )
        var_0 = 0.6;

    if ( !isdefined( var_1 ) )
        var_1 = 1.8;

    thread _ID42237::_ID27000( "flare_burn_loop" );

    while ( isdefined( self ) )
    {
        wait(randomfloatrange( 0.05, 0.1 ));
        var_2 setlightintensity( randomfloatrange( var_0, var_1 ) );
    }
}

_ID3012( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "generic";

    if ( isdefined( level._ID30895[var_1][var_0] ) )
        return 1;
    else
        return 0;
}

_ID44278( var_0 )
{
    var_1 = _ID42407::_ID15602( level._ID794._ID740, "allies", level._ID13290 );

    if ( isdefined( var_1 ) )
        var_1 _ID42237::_ID27077( level._ID30909[var_0] );
    else
        iprintln( "unable to play random friendly dialogue " + var_0 + " because couldn't find an AI" );
}

_ID38942( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_0, var_1 );

    if ( var_2 == 1 )
        _ID42237::_ID3350( var_3, _ID42237::_ID38865 );
    else
        _ID42237::_ID3350( var_3, _ID42237::_ID38863 );
}

_ID18542( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = getentarray( "hide", "script_noteworthy" );

    _ID42237::_ID3350( var_0, _ID42407::_ID18512 );
}

_ID47688( var_0 )
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( var_0 ) && var_0.size > 0 )
    {
        if ( _ID42407::_ID20542( var_0, self ) )
            return;
    }

    if ( isdefined( self._ID22746 ) )
        _ID42407::_ID36519();

    if ( !issentient( self ) )
    {

    }

    self delete();
}

_ID32474( var_0 )
{
    self._ID51636 = level._ID794._ID1204;
    self._ID1204 = var_0;
}

_ID47046()
{
    if ( isdefined( self._ID51636 ) )
        self._ID1204 = self._ID51636;
}

_ID46880( var_0, var_1 )
{
    _ID42407::_ID41090( var_0 );
    _ID42237::_ID14402( var_1 );
}

_ID10760( var_0 )
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );
    _ID42407::_ID10805( var_0 );
}

_ID49522( var_0 )
{
    if ( getdvar( "dc_dialog" ) == "1" )
        _ID52910( level._ID30909[var_0], level._ID49736 );
}

_ID52910( var_0, var_1 )
{
    var_2 = 0.5;
    level endon( "clearing_hints" );

    if ( isdefined( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -40 );
    level._ID48851._ID196 = ( 1, 1, 1 );
    level._ID48851 settext( var_0 );
    level._ID48851._ID55 = 0;
    level._ID48851 fadeovertime( 0.5 );
    level._ID48851._ID55 = 1;
    level._ID48851._ID983 = 1;
    wait 0.5;
    level._ID48851 endon( "death" );

    if ( isdefined( var_1 ) )
        wait(var_1);
    else
        return;

    level._ID48851 fadeovertime( var_2 );
    level._ID48851._ID55 = 0;
    wait(var_2);
    level._ID48851 _ID42313::_ID10476();
}

vehicles_crowsnest_defend_animated_think()
{
    if ( !isdefined( self._ID669 ) || self._ID669 != "vehicle_ch46e_low" )
        return;

    _ID42407::_ID3428( "seaknight" );
    self _meth_8571();
    thread _ID44590();
}

_ID53415()
{
    self hide();
    var_0 = undefined;

    if ( isdefined( self._ID1191 ) )
        var_0 = getentarray( self._ID1191, "targetname" );

    var_1 = spawn( "script_origin", self._ID740 );
    thread _ID42237::_ID10280( var_1 );
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65;
    var_2 = undefined;
    var_3 = "sniper_escape_ch46_take_off_idle";
    var_4 = spawn( "script_origin", self._ID740 );
    var_1 thread _ID51301( self );
    var_4 thread _ID51301( self );
    var_5 = undefined;
    var_6 = undefined;
    var_7 = 0;

    switch ( self._ID70 )
    {
        case "h2_sniper_escape_ch46_takeoff":
            self._ID3189 = "seaknight";
            var_5 = self._ID43356;
            var_6 = "ch46_take_off";
            var_7 = 1;
            break;
    }

    _ID42407::_ID3428( self._ID3189 );
    var_1 _ID42259::_ID3018( self, self._ID70 );
    self waittill( "spawn" );

    if ( isdefined( var_0 ) )
    {
        var_8 = [];

        foreach ( var_10 in var_0 )
            var_8[var_8.size] = thread _ID42407::_ID12076( var_10 );

        _ID42407::_ID10226( 0.05, ::_ID49810, var_8 );
    }

    self show();

    if ( _ID3012( var_3, self._ID3189 ) )
        var_1 thread _ID42259::_ID3044( self, var_3, "stop_idle" );

    if ( var_7 )
        thread _ID44590();

    if ( isdefined( var_5 ) )
        thread _ID42237::_ID27000( var_5, undefined, 0.5, 3 );

    if ( isdefined( var_6 ) )
        thread _ID43602( var_4, var_6 );

    self waittill( "play_anim" );
    _ID42407::_ID25088( "taking_off", 4 );
    var_1 notify( "stop_idle" );

    if ( isdefined( self._ID1193 ) && self._ID1193 == "seaknight_loader_start2" )
    {
        self linkto( var_1 );
        var_1 thread _ID49136();
    }

    var_1 _ID42259::_ID3111( self, self._ID70 );
    self delete();
}

_ID49136()
{
    wait 5;
    self moveto( self._ID740 + ( 0, 0, 550 ), 10 );
}

_ID49810( var_0 )
{
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        var_1++;
        var_3._ID11572 = 1;
        var_3._ID47750 = var_1;
        _ID42259::_ID3023( var_3, "ch46_load_" + var_3._ID47750, "tag_detach" );
    }

    self waittill( "load_riders" );
    var_5 = undefined;
    self notify( "stop_rider_idle" );

    foreach ( var_3 in var_0 )
    {
        thread _ID42259::_ID3020( var_3, "ch46_load_" + var_3._ID47750, "tag_detach" );
        var_3 thread _ID54477();
        var_5 = "ch46_load_" + var_3._ID47750;
    }

    var_8 = getanimlength( level._ID30895["generic"][var_5] );
    wait(var_8 - 2);
    self notify( "riders_loaded" );
}

_ID54477()
{
    self endon( "death" );
    self waittillmatch( "single anim",  "end"  );
    _ID47688();
}

_ID43602( var_0, var_1 )
{
    self endon( "death" );
    self endon( "taking_off" );

    while ( isdefined( var_0 ) )
    {
        playfx( _ID42237::_ID16299( var_1 ), var_0._ID740 );
        wait 0.1;
    }
}

_ID44590()
{
    self endon( "death" );
    var_0 = _ID42407::_ID16120( "rotors" );
    var_1 = getanimlength( var_0 );

    for (;;)
    {
        if ( !isdefined( self ) )
            break;

        self setanim( var_0 );
        wait(var_1);
    }
}

_ID46711( var_0 )
{
    self endon( "death" );
    wait(var_0);
}

_ID54724( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( var_0 == "all" )
        var_3 = getaiarray();
    else
        var_3 = getaiarray( var_0 );

    if ( isdefined( var_2 ) )
        _ID42237::_ID3350( var_3, ::_ID47688 );
    else
    {
        if ( !isdefined( var_1 ) )
            var_1 = 1024;

        thread _ID42407::_ID2265( var_3, var_1 );
    }
}

_ID47411( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "all";

    var_3 = [];

    if ( var_0 == "all" )
    {
        var_3 = _ID42407::_ID3317( level._ID12061["allies"]._ID3291, level._ID12061["axis"]._ID3291 );
        var_3 = _ID42407::_ID3317( var_3, level._ID12061["neutral"]._ID3291 );
    }
    else
        var_3 = level._ID12061[var_0]._ID3291;

    if ( isdefined( var_2 ) )
        _ID42237::_ID3350( var_3, ::_ID47688 );
    else
    {
        if ( !isdefined( var_1 ) )
            var_1 = 1024;

        thread _ID42407::_ID2265( var_3, var_1 );
    }
}

_ID44403()
{
    self endon( "death" );
    thread _ID42407::_ID22746();
    self setgoalpos( self._ID740 );
    var_0 = getentarray( "roof_door", "targetname" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = getnode( self._ID1191, "targetname" );
    var_5 = undefined;

    foreach ( var_7 in var_0 )
    {
        if ( var_7._ID172 == "script_origin" )
        {
            var_2 = var_7;
            continue;
            continue;
        }

        if ( var_7._ID172 == "trigger_multiple" )
        {
            var_1 = var_7;
            continue;
            continue;
        }

        if ( var_7._ID172 == "script_brushmodel" )
        {
            var_5 = var_7;
            continue;
            continue;
        }

        if ( var_7._ID172 == "script_model" )
        {
            var_3 = var_7;
            continue;
            continue;
        }

        var_4 = var_7;
    }

    for (;;)
    {
        wait 0.05;

        if ( level._ID794 istouching( var_1 ) )
            continue;

        if ( _ID42237::_ID14385( "door_being_blocked" ) )
            continue;

        break;
    }

    var_5 linkto( var_3 );
    var_5 connectpaths();
    var_2._ID65 = var_3._ID65;
    self playsoundatviewheight( "scn_npc_scream", "dialogue_done", 1 );
    var_3 thread _ID11592( var_2 );
    thread _ID42407::_ID36519();
    self._ID452 = 16;
    self setgoalnode( var_4 );
    wait 4;
    thread _ID43811();
}

_ID11592( var_0 )
{
    var_1 = anglestoforward( var_0._ID65 );
    thread _ID42237::_ID27077( "door_wood_double_kick" );
    playfx( _ID42237::_ID16299( "door_kick_dust" ), var_0._ID740, var_1 );
    earthquake( 0.2, 0.75, self._ID740, 1024 );
    _ID42407::_ID3428( "breakable_door" );
    var_0 thread _ID42259::_ID3111( self, "door_breaking" );
}

_ID43811()
{
    self endon( "death" );
    self endon( "stop_seeking" );
    _ID42407::_ID12471( 3 );
    self._ID24727 = 1;
    self._ID465 = 0;
    self._ID513 = 1;
    self._ID450 = 100;
    self._ID2219 = 1;
    var_0 = distance( self._ID740, level._ID794._ID740 );

    while ( isalive( self ) )
    {
        wait 1;
        self._ID452 = var_0;
        self setgoalentity( level._ID794 );
        var_0 -= 175;

        if ( var_0 < 512 )
        {
            var_0 = 512;
            return;
        }
    }
}

_ID52268( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 1024;

    if ( var_0 == "all" )
        var_2 = getaiarray();
    else
        var_2 = getaiarray( var_0 );

    if ( var_0 == "allies" || var_0 == "all" )
    {
        foreach ( var_4 in level._ID35507 )
        {
            if ( _ID42407::_ID20542( var_2, var_4 ) )
                var_2 = _ID42237::_ID3321( var_2, var_4 );
        }

        foreach ( var_4 in var_2 )
        {
            if ( isdefined( var_4._ID922 ) && var_4._ID922 == "laatpv_gunner" )
                var_2 = _ID42237::_ID3321( var_2, var_4 );
        }
    }

    thread _ID42407::_ID2265( var_2, var_1 );
}

_ID43162( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1024;

    var_3 = getent( var_0, "targetname" );
    var_4 = var_3 _ID42407::_ID15547( var_1 );

    if ( var_1 != "axis" )
    {
        level._ID35507 = _ID42407::_ID29506( level._ID35507 );

        foreach ( var_6 in level._ID35507 )
        {
            if ( _ID42407::_ID20542( var_4, var_6 ) )
                var_4 = _ID42237::_ID3321( var_4, var_6 );
        }
    }

    thread _ID42407::_ID2265( var_4, var_2 );
}

_ID51301( var_0 )
{
    var_0 waittill( "death" );
    var_0 endon( "death" );

    if ( isdefined( self ) )
        self delete();
}

_ID49563()
{
    wait(randomfloatrange( 13, 19 ));
}

_ID48407()
{
    var_0 = gettime();
    var_1 = var_0 - level._ID52350;

    if ( var_0 == level._ID52350 )
        return 1;
    else if ( var_1 > 10000 )
        return 0;
    else
        return 1;
}

_ID52188( var_0, var_1 )
{
    level endon( "stop_drone_flood" + var_1 );

    for (;;)
    {
        foreach ( var_3 in var_0 )
            _ID42407::_ID10226( randomfloatrange( 5, 6 ), _ID42407::_ID12076, var_3 );

        wait(randomfloatrange( 5, 6 ));
    }
}

_ID48047( var_0 )
{
    level notify( "stop_drone_flood" + var_0 );
}

_ID50817( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "stop_drone_vehicle_flood" + var_1 );
    var_5 = undefined;

    for (;;)
    {
        foreach ( var_7 in var_0 )
        {
            var_5 = var_7 thread _ID42411::_ID35194();
            var_5 = undefined;
            wait(randomfloatrange( var_2, var_3 ));
        }

        var_0 = _ID42237::_ID3320( var_0 );
    }
}

_ID44742( var_0 )
{
    level notify( "stop_drone_vehicle_flood" + var_0 );
}

_ID46951()
{
    self endon( "death" );
    self hide();
    thread _ID42407::_ID22746();
    self._ID7._ID11043 = 1;
    self._ID507 = 1;
    self._ID1298 = 1000;
    self._ID10998 = 1;
    self clearenemy();
    wait 0.1;
    thread _ID42338::_ID26367();
}

_ID48916()
{

}

_ID47645( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_2 = getent( var_1._ID31273, "script_linkname" );
    var_2 notify( "trigger",  level._ID794  );
}

_ID50236()
{
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    _ID42237::_ID3350( level._ID35507, ::_ID54181 );
}

_ID51102()
{
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );

    foreach ( var_1 in level._ID35507 )
    {
        var_1 notify( "stop_adjust_movement_speed" );
        var_1._ID24424 = 1.0;
    }
}

_ID54181()
{
    self notify( "stop_adjust_movement_speed" );
    self endon( "death" );
    self endon( "stop_adjust_movement_speed" );

    while ( isalive( self ) )
    {
        wait(randomfloatrange( 0.5, 1.5 ));

        while ( _ID53164() )
        {
            self._ID24424 = 3.5;
            wait 0.05;
        }

        self._ID24424 = 1.0;
    }
}

_ID53164()
{
    self endon( "death" );

    if ( !isdefined( self._ID451 ) )
        return 0;

    if ( distancesquared( self._ID740, self._ID451 ) <= level._ID47460 )
        return 0;

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 getplayerangles(), self._ID740, level._ID8760["90"] ) )
        return 0;

    return 1;
}

_ID43959()
{
    var_0 = _ID42407::_ID15547();

    foreach ( var_2 in level._ID35507 )
    {
        if ( _ID42407::_ID20542( var_0, var_2 ) )
            var_0 = _ID42237::_ID3321( var_0, var_2 );
    }

    return var_0;
}

_ID43809()
{
    var_0 = _ID42237::_ID15808();
    self waittill( "trigger" );
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        var_1 = var_3 _ID42407::_ID15547( "axis" );

        if ( !var_1.size )
            continue;

        _ID42237::_ID3294( var_1, ::delete );
    }

    self delete();
}

_ID48960()
{
    for (;;)
    {
        self waittill( "trigger" );
        var_0 = undefined;
        var_1 = undefined;
        level._ID35507 = _ID42407::_ID29506( level._ID35507 );
        var_2 = undefined;

        if ( level._ID35507.size < level._ID46370 )
        {
            var_1 = getentarray( self._ID1191, "targetname" );
            var_0 = level._ID46370 - level._ID35507.size;

            for ( var_3 = 0; var_3 < var_0; var_3++ )
            {
                var_2 = var_1[var_3] _ID42407::_ID35014();

                if ( isdefined( var_2 ) )
                {
                    var_2 _ID42407::_ID32315( "p" );
                    level._ID35507 = _ID42237::_ID3293( level._ID35507, var_2 );
                    var_2 thread _ID46555();
                }
            }
        }

        wait 10;
    }
}

_ID48500()
{
    for (;;)
    {
        wait 1;
        self waittill( "trigger" );
        setsaveddvar( "ui_hidemap", 0 );
        _ID42272::_ID33575( self._ID922 );
    }
}

_ID21376( var_0 )
{
    thread _ID42372::_ID21309( var_0 );
}

_ID50637()
{
    var_0 = getent( self._ID31273, "script_linkname" );
    var_1 = getent( self._ID1191, "targetname" );
    var_2 = self._ID31190;
    level endon( var_2 );

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        var_0 waittill( "trigger" );

        if ( level._ID47175 == 0 )
        {
            wait 1;
            continue;
        }

        if ( _ID42237::_ID41802( level._ID794 geteye(), level._ID794 getplayerangles(), self._ID740, level._ID8760["60"] ) )
        {
            magicbullet( "rpg", var_1._ID740, self._ID740 );
            level._ID47175 = 0;
            wait 4;
            level._ID47175 = 1;
            break;
            continue;
        }

        wait 1;
    }
}

_ID50972()
{
    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
        return;

    level._ID44593 = [];
    level._ID53293 = [];
    level._ID48904 = [];
    level._ID52835 = [];
    level._ID45412 = [];
    var_0 = getentarray( "triggered_fx_volumes", "targetname" );

    foreach ( var_2 in var_0 )
        var_2._ID15142 = [];

    var_4 = getent( "effects_commerce", "script_noteworthy" );
    var_5 = getent( "effects_trenches", "script_noteworthy" );
    var_6 = getent( "effects_bunker", "script_noteworthy" );
    var_7 = getent( "effects_ww2", "script_noteworthy" );
    var_8 = getent( "effects_lincoln", "script_noteworthy" );
    var_9 = spawn( "script_origin", ( 0, 0, 0 ) );

    for ( var_10 = 0; var_10 < level._ID9242.size; var_10++ )
    {
        var_11 = level._ID9242[var_10];
        var_9._ID740 = var_11._ID40005["origin"];

        foreach ( var_2 in var_0 )
        {
            if ( var_9 istouching( var_2 ) )
                var_2._ID15142[var_2._ID15142.size] = var_11;
        }

        if ( var_9 istouching( var_4 ) )
        {
            level._ID44593[level._ID44593.size] = var_11;
            continue;
        }

        if ( var_9 istouching( var_5 ) )
        {
            level._ID53293[level._ID53293.size] = var_11;
            continue;
        }

        if ( var_9 istouching( var_6 ) )
        {
            level._ID48904[level._ID48904.size] = var_11;
            continue;
        }

        if ( var_9 istouching( var_7 ) )
        {
            level._ID52835[level._ID52835.size] = var_11;
            continue;
        }

        if ( var_9 istouching( var_8 ) )
        {
            level._ID45412[level._ID45412.size] = var_11;
            continue;
        }
    }

    var_9 delete();

    foreach ( var_2 in var_0 )
    {
        var_15 = getentarray( var_2._ID1191, "targetname" );

        if ( var_15[0]._ID922 == "stopFx" )
        {
            var_15[0] thread _ID47624( var_2 );
            var_15[1] thread _ID44547( var_2 );
            continue;
        }

        var_15[1] thread _ID47624( var_2 );
        var_15[0] thread _ID44547( var_2 );
    }
}

restarteffectsafe()
{
    if ( !isdefined( self._ID22654 ) || _func_2a5( self._ID22654 ) )
        _ID42407::_ID29840();
}

pauseeffectsafe()
{
    if ( isdefined( self._ID22654 ) )
        _ID42237::_ID26402();
}

_ID44547( var_0 )
{
    for (;;)
    {
        self waittill( "trigger" );
        _ID42237::_ID3350( var_0._ID15142, ::restarteffectsafe );
        wait 1;
    }
}

_ID47624( var_0 )
{
    wait 1;
    _ID42237::_ID3350( var_0._ID15142, ::pauseeffectsafe );

    for (;;)
    {
        self waittill( "trigger" );
        _ID42237::_ID3350( var_0._ID15142, ::pauseeffectsafe );
        wait 1;
    }
}

_ID48611()
{
    _ID42237::_ID14413( "player_heli_10a" );
    self setcandamage( 1 );
    var_0 = 5;
    var_1 = "cheap_vehicle_explosion";
    var_2 = undefined;
    var_3 = 0;
    var_4 = "car_explode";
    var_5 = undefined;
    var_6 = ( 0, 0, 0 );
    var_7 = 0;

    switch ( self._ID669 )
    {
        case "vehicle_mack_truck_short_green":
            var_0 = 10;
            var_2 = "vehicle_mack_truck_short_destroy";
            var_1 = "cheap_mack_truck_explosion";
            var_4 = "exp_tanker_vehicle";
            var_5 = "tanker_fire";
            var_6 = ( 0, 0, 110 );
            var_3 = 1;
            break;
        case "vehicle_uaz_fabric_static":
            var_2 = "vehicle_uaz_fabric_dsr";
            break;
        case "vehicle_luxurysedan_2008_destructible":
            var_2 = "vehicle_luxurysedan_2008_destroy";
            break;
        case "vehicle_pickup_technical":
            var_2 = "vehicle_pickup_technical_destroyed";
            break;
    }

    for (;;)
    {
        self waittill( "damage",  var_8, var_9  );

        if ( !isdefined( var_9 ) )
            continue;

        if ( isdefined( level._ID52945 ) && var_9 != level._ID52945 )
            continue;

        var_0--;

        if ( var_0 <= 0 )
            break;
    }

    playfx( _ID42237::_ID16299( var_1 ), self._ID740 );
    thread _ID42237::_ID27077( var_4 );

    if ( var_3 )
        earthquake( 0.4, 1.53, self._ID740, 1024 );

    if ( isdefined( var_2 ) )
        self setmodel( var_2 );
    else
        self delete();

    if ( isdefined( var_5 ) )
    {
        var_10 = spawn( "script_origin", self._ID740 + var_6 );
        var_10._ID65 = self._ID65;
        var_11 = spawnfx( _ID42237::_ID16299( var_5 ), var_10._ID740 );
        triggerfx( var_11 );
        _ID42237::_ID14413( "player_heli_19" );
        var_11 delete();
        var_10 delete();
    }
}

_ID44864()
{
    var_0 = level._ID40317["axis"];
    var_1 = level._ID40317["allies"];
    var_1 = _ID42237::_ID3321( var_1, level._ID52945 );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        if ( isdefined( var_3._ID1282 ) && getsubstr( var_3._ID1282, 0 ) == "littlebird" )
            var_1 = _ID42237::_ID3321( var_1, var_3 );
    }

    var_5 = _ID42407::_ID3317( var_0, var_1 );
    var_5 = _ID42407::_ID29506( var_5 );

    foreach ( var_3 in var_5 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        var_3 _ID42411::_ID16987();
        var_3 delete();
    }
}

_ID44575()
{
    var_0 = level._ID40317["axis"];
    var_1 = level._ID40317["allies"];
    var_2 = _ID42407::_ID3317( var_0, var_1 );

    foreach ( var_4 in var_2 )
    {
        if ( !isdefined( var_4 ) )
            continue;

        var_4 _ID42411::_ID16987();
        var_4 _ID44705();
    }
}

_ID46739()
{
    var_0 = level._ID40317["axis"];

    foreach ( var_2 in var_0 )
    {
        if ( !isdefined( var_2 ) )
            continue;

        var_2 _ID42411::_ID16987();
        var_2 _ID44705();
    }
}

_ID51178( var_0 )
{
    var_1 = _ID42407::_ID15912();

    if ( gettime() > level._ID47637 )
        return 1;

    var_2 = var_1 getcurrentweapon();
    var_3 = getsubstr( var_2, 0, 4 );

    if ( var_3 == "m203" )
        return 1;

    var_4 = var_1 getweaponslistall();

    foreach ( var_2 in var_4 )
    {
        var_3 = getsubstr( var_2, 0, 4 );

        if ( var_3 != "m203" )
            continue;

        var_6 = var_1 getweaponammoclip( var_2 );

        if ( var_6 > 0 )
            return 0;
    }

    return 1;
}

_ID44875()
{
    var_0 = getentarray( "drone_warriors_trenches", "targetname" );

    foreach ( var_2 in var_0 )
        thread _ID42407::_ID12076( var_2 );
}

_ID53157( var_0, var_1 )
{
    _ID42237::_ID14413( var_1 );

    foreach ( var_3 in var_0 )
        var_3 = undefined;
}

_ID44154( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID35164();
    var_3._ID740 = var_1;
    var_3 thread _ID21288( var_2 );
    var_3 _ID42407::_ID27081( var_0, "tag_origin" );

    if ( isdefined( var_3 ) )
        var_3 delete();
}

_ID21288( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );

    if ( isdefined( self ) )
        self delete();
}

_ID52455( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        if ( !isdefined( var_3._ID263 ) )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID48110()
{
    self waittill( "trigger" );
    playfx( level._ID1426["mortar"]["dirt"], self._ID740 );
    earthquake( 0.25, 0.75, self._ID740, 1250 );
    thread _ID42237::_ID27077( level._ID30909["mortar"]["dirt"], self._ID740 );
    radiusdamage( self._ID740, self._ID382, 1000, 1000 );
}

_ID53050( var_0 )
{
    level endon( "obj_heli_mount_complete" );
    level endon( "kill_timer" );
    level._ID37750 = _ID42313::_ID47327( var_0, &"DCBURNING_TIME_REMAINING", 1, 1 );
    level thread _ID43057();
}

_ID43057()
{
    level._ID794 endon( "death" );
    level endon( "kill_timer" );
    level notify( "mission failed" );
    musicstop( 1 );
    setdvar( "ui_deadquote", &"DCBURNING_RAN_OUT_OF_TIME" );
    _ID42407::_ID23778();
    level notify( "kill_timer" );
}

_ID44638( var_0 )
{
    self endon( "death" );
    var_1 = _ID42411::_ID40142();
    var_2 = undefined;

    foreach ( var_4 in var_1 )
    {
        if ( isdefined( var_4._ID922 ) && var_4._ID922 == var_0 )
        {
            var_2 = var_4;
            break;
        }
    }

    var_2 waittill( "trigger" );
    self notify( "deleted_through_script" );
    wait 0.05;
    thread _ID44705();
}

_ID50096()
{
    if ( !isdefined( self ) )
        return;

    self endon( "death" );

    while ( isdefined( self ) )
    {
        wait 2;

        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740, level._ID8760["90"] ) )
            continue;

        break;
    }

    thread _ID44705();
}

_ID48998( var_0, var_1 )
{
    self endon( "death" );
    self waittill( var_0 );
    self notify( var_1 );
}

_ID47828( var_0, var_1 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );
    self notify( var_1 );
}

_ID47930()
{
    level._ID794 enableinvulnerability();
}

_ID50922( var_0, var_1 )
{
    for (;;)
    {
        wait 1;
        var_2 = var_0 _ID42407::_ID15547( "axis" );

        if ( !isdefined( var_2 ) )
            break;

        if ( var_2.size )
        {
            continue;
            continue;
        }

        break;
    }

    _ID42237::_ID14402( var_1 );
}

ai_force_ignore_supression()
{
    var_0 = getent( "force_supression_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1._ID1194 == "allies" && !isplayernumber( var_1 ) )
            var_1._ID513 = 1;
    }
}

ai_restore_ignore_supression()
{
    var_0 = getent( "remove_force_supression_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1._ID1194 == "allies" && !isplayernumber( var_1 ) )
            var_1._ID513 = 0;
    }
}

performance_interior_exterior_transition()
{
    level endon( "player_getting_on_minigun" );

    for (;;)
    {
        level waittill( "player_interior_transition" );
        setsaveddvar( "fx_marks_nearlimit", "1" );

        while ( _ID42237::_ID14385( "player_interior_transition" ) )
        {
            waittillframeend;
            continue;
        }

        setsaveddvar( "fx_marks_nearlimit", "5" );
    }
}

heli_ride_perf_helpers()
{
    _func_31c( 2 );
    _ID42237::_ID14413( "player_getting_on_minigun" );
    setsaveddvar( "fx_marks_nearlimit", "1" );
    _func_31b( 2 );
    _func_31c( 9 );
    _ID42237::_ID14413( "player_crash_done" );
    _func_31c( 2 );
}

misc_model_group_think()
{
    level endon( "player_getting_on_minigun" );
    var_0 = getentarray( "misc_model_group_togglers", "targetname" );
    level.static_model_group_states = [];

    foreach ( var_2 in var_0 )
    {
        var_3 = var_2._ID922;

        if ( !isdefined( level.static_model_group_states[var_3] ) )
            level.static_model_group_states[var_3] = 0;

        thread static_model_group_trigger_count( var_3, var_2 );
    }

    foreach ( var_3, var_6 in level.static_model_group_states )
    {
        _func_31c( int( var_3 ) );
        _ID42237::_ID14400( "static_model_group_flag_" + var_3 );
        thread misc_model_group_monitor( var_3 );
    }

    for (;;)
    {
        self waittill( "model_group_count_changed" );

        foreach ( var_3, var_6 in level.static_model_group_states )
        {
            if ( var_6 == 0 )
            {
                _ID42237::_ID14388( "static_model_group_flag_" + var_3 );
                continue;
            }

            _ID42237::_ID14402( "static_model_group_flag_" + var_3 );
        }
    }
}

misc_model_group_monitor( var_0 )
{
    level endon( "player_getting_on_minigun" );
    var_1 = "static_model_group_flag_" + var_0;

    for (;;)
    {
        _ID42237::_ID14413( var_1 );
        _func_31b( int( var_0 ) );
        _ID42237::_ID14426( var_1 );
        _func_31c( int( var_0 ) );
    }
}

static_model_group_trigger_count( var_0, var_1 )
{
    for (;;)
    {
        var_2 = undefined;

        while ( !isplayernumber( var_2 ) )
            var_1 waittill( "trigger",  var_2  );

        level.static_model_group_states[var_0]++;
        level notify( "model_group_count_changed" );

        while ( var_2 istouching( var_1 ) )
            waittillframeend;

        level.static_model_group_states[var_0]--;
        level notify( "model_group_count_changed" );
        waittillframeend;
    }
}

setsunlight_dcburning()
{
    var_0 = _func_46();
    var_1 = 0.04;
    var_2 = var_0[0] * var_1;
    var_3 = var_0[1] * var_1 * 0.6;
    var_4 = var_0[2] * var_1 * 0.4;
    var_5 = "-23057 3727 -213";
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", 1 );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", var_5 );
    setsaveddvar( "r_useLightGridDefaultModelLightingLookup", 1 );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    setsaveddvar( "r_lightGridDefaultModelLightingLookup", var_5 );
    _ID42237::_ID14413( "flag_reduce_sunlight" );
    _func_47( var_2, var_3, var_4 );
    _ID42237::_ID14426( "flag_reduce_sunlight" );
    _func_48();
    setsunlight_dcburning();
}
#using_animtree("vehicles");

blackhawk_play_rotors_anim()
{
    self setanim( %bh_rotors, 1, 0, 1 );
}

heliblackhawk_deathvolume()
{
    wait 3.9;
    var_0 = getent( "blackhawk_deathvolume", "targetname" );

    while ( !_ID42237::_ID14385( "blackhawk_landed" ) )
    {
        if ( level._ID794 istouching( var_0 ) )
        {
            level._ID794 kill();
            level._ID52945 vehicle_setspeed( 0.05 );
            break;
        }

        waittillframeend;
    }
}

cloth_wibble_think()
{
    for (;;)
    {
        _ID42237::_ID14413( "player_roof_wibble" );
        _ID52897::_ID54172( 1.0 );

        for (;;)
        {
            if ( !_ID42237::_ID14385( "player_roof_wibble" ) )
            {
                _ID52897::_ID54172( 0.0 );
                break;
            }
            else if ( _ID42237::_ID14385( "player_crash_done" ) )
            {
                _ID52897::_ID54172( 0.0 );
                return;
            }

            waittillframeend;
        }
    }
}

moving_fire_lights_setup()
{
    var_0 = _ID42237::_ID16640( "moving_fire_lights", "script_noteworthy" );
    _ID42237::_ID14413( "player_middle_commerce_first_floor" );

    foreach ( var_2 in var_0 )
        _ID42237::_ID3350( getentarray( var_2._ID1191, "targetname" ), ::move_fire_light );
}

move_fire_light()
{
    var_0 = self._ID740;
    var_1 = self._ID65;
    var_2 = 0.05;
    var_3 = 0.28;

    for (;;)
    {
        var_4 = randomfloatrange( var_2, var_3 );
        var_5 = randomfloatrange( 0.1, 1 );
        var_6 = randomfloatrange( 0.045, 1.35 );
        var_7 = randomfloatrange( 0.035, 0.95 );
        var_8 = randomfloatrange( 0.25, 1.45 );
        var_9 = var_0 + ( var_6, var_7, var_8 );
        self moveto( var_9, var_4, 0.018, 0.027 );
        wait(var_4);
    }
}

tank_player_collisions()
{
    var_0 = getent( "tank_turret_clip", "targetname" );
    var_0._ID740 = self gettagorigin( "tag_turret" ) + ( 15, -25, -10 );
    var_0._ID65 = self gettagangles( "tag_turret" );
    var_0 linkto( self, "tag_turret" );
    var_1 = getent( "tank_gun_clip", "targetname" );
    var_1._ID740 = self gettagorigin( "tag_barrel" ) + ( -45, 75, 0 );
    var_1._ID65 = self gettagangles( "tag_barrel" );
    var_1 linkto( self, "tag_barrel" );
    self waittill( "death" );
    var_0 unlink();
    var_1 unlink();
}

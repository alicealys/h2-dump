// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\dcburning_mission_select_cam::_ID50320();
        return;
    }

    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        maps\dcburning_beautiful_corner::_ID616();
        return;
    }

    _ID42411::_ID6235( "script_vehicle_btr80_low", "spotlight", "TAG_FRONT_LIGHT_RIGHT", "fx/misc/spotlight_btr80_dcburning", "spotlight", 0.2 );
    _unknown_0395();
    _func_0DB( "fx_cast_shadow", 0 );
    var_0 = undefined;
    _func_036( "cheap_spot", "1" );
    _unknown_2FF2();
    _ID46668::_ID616();
    _ID54230::_ID616( "h2_vehicle_blackhawk_minigun_hero_exterior", undefined, "script_vehicle_blackhawk_minigun" );
    level._ID45155 = [];
    level._ID44271 = _func_1A2( "interior_bcs", "targetname" );
    level._ID48952 = _func_1A2( "exterior_bcs", "targetname" );
    _ID42237::_ID3350( level._ID48952, _ID42237::_ID38863 );
    _ID42237::_ID3350( level._ID44271, _ID42237::_ID38863 );
    level._ID53489 = _func_1A1( "monument_target", "targetname" );
    level._ID44323 = _func_1A2( "latvee_spotlight_targets", "targetname" );
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
    _func_036( "bog_camerashake", "1" );
    level._ID35278 = ::_unknown_2D1B;
    level._ID12029 = ::_unknown_2FBE;
    level._ID43315 = 262144;
    _func_036( "dc_debug", "0" );
    _func_036( "dc_dialog", "1" );
    level._ID8760["25"] = _func_0BC( 25 );
    level._ID8760["35"] = _func_0BC( 35 );
    level._ID8760["45"] = _func_0BC( 45 );
    level._ID8760["60"] = _func_0BC( 60 );
    level._ID8760["90"] = _func_0BC( 90 );
    level._ID8760["180"] = _func_0BC( 180 );
    level._ID48681 = level._ID8760["35"];
    var_1 = _func_1A2( "trigger_multiple", "classname" );
    level._ID46473 = [];
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3._ID922 ) && _func_127( var_3._ID922, 0, 10 ) == "colornodes" )
            level._ID46473 = _ID42237::_ID3293( level._ID46473, var_3 );
    }

    var_clear_2
    var_clear_0
    _unknown_31E1();
    level._ID54335 = 2000;
    level._ID52661 = 0.05;
    level._ID43124 = 0.4;
    level._ID51047 = 1;
    level._ID44935 = _ID42260::_ID45726;
    _ID42407::_ID1951( "debug", ::_unknown_056B, "debug" );
    _ID42407::_ID1951( "elevator_bottom", ::_unknown_0583, "elevator_bottom" );
    _ID42407::_ID1951( "elevator_top", ::_unknown_05AA, "elevator_top" );
    _ID42407::_ID1951( "crows_nest", ::_unknown_05D2, "crows_nest" );
    _ID42407::_ID1951( "crows_nest_armor", ::_unknown_05FE, "crows_nest_armor" );
    _ID42407::_ID1951( "barrett", ::_unknown_062C, "barrett" );
    _ID42407::_ID1951( "to_roof", ::_unknown_0657, "to_roof" );
    _ID42407::_ID1951( "roof", ::_unknown_0683, "roof" );
    _ID42407::_ID1951( "heliride2", ::_unknown_06AE, "heliride2" );
    _ID42407::_ID1951( "crash", ::_unknown_06F3, "crash" );
    _ID42407::_ID10126( ::_unknown_05F6 );
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
    _ID42237::_ID3350( _func_1A2( "animated_vehicle", "script_noteworthy" ), ::_unknown_3A0F );
    _ID42237::_ID3350( _func_1A2( "vehicles_crowsnest_defend", "targetname" ), ::_unknown_3A14 );
    _ID42237::_ID3350( _func_1F3( "plane_bomb", "script_noteworthy" ), _ID42549::_ID26737 );
    _unknown_056F();
    _unknown_344E();
    thread _unknown_3FA6();
    thread _unknown_3FBC();
    thread _unknown_3FD0();
    thread _unknown_406E();
    _func_0DB( "r_corpseRemovalThreshold", "0.65" );
    _ID42407::_ID1895( "grenade_launcher", &"SCRIPT_LEARN_GRENADE_LAUNCHER", ::_unknown_3EC0 );
    _ID42407::_ID1895( "javelin_pickup", &"DCBURNING_HINT_JAVELIN_PICKUP", ::_unknown_1EA6 );
    _ID42407::_ID1895( "javelin_switch", &"DCBURNING_HINT_JAVELIN_SWITCH", ::_unknown_1EB4, undefined, "medium_background" );
    _ID42407::_ID1895( "javelin_shoot", &"DCBURNING_HINT_JAVELIN_FIRE", ::_unknown_1EBD, undefined, "medium_background" );
    _ID42237::_ID3350( _func_1A2( "destructible_trigger", "targetname" ), ::_unknown_3F6A );
    thread _unknown_177A();
    _unknown_3A4A();
    _unknown_3DB5();
    _func_0DB( "r_lightGridEnableTweaks", 0 );
    _func_0DB( "r_lightGridIntensity", 1.2 );
    _func_0DB( "r_lightGridContrast", 0 );
    thread _unknown_33A6();
    thread _unknown_33E6();
    _unknown_070A();
    _ID42237::_ID3350( _func_1A2( "ai_cleanup_trigger", "targetname" ), ::_unknown_3D76 );
    _ID42237::_ID3350( _func_1A2( "redshirt_trigger", "targetname" ), ::_unknown_3D9E );
    _ID42237::_ID3350( _func_1A2( "rpg_targets", "targetname" ), ::_unknown_3DDE );
    _ID42237::_ID3350( _func_1A2( "dest_cheap", "targetname" ), ::_unknown_3EBB );
    _func_10C( "player" );
    _func_10C( "ignored" );
    _func_10C( "oblivious" );
    level._ID794 _meth_8183( "player" );
    _func_111( "allies", "oblivious" );
    _func_111( "axis", "oblivious" );
    _func_111( "player", "oblivious" );
    _func_111( "oblivious", "allies" );
    _func_111( "oblivious", "axis" );
    _func_111( "oblivious", "oblivious" );
    _ID42237::_ID3350( _func_1A2( "compassTriggers", "targetname" ), ::_unknown_3E51 );
    var_5 = _ID42413::_ID1473();
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_unknown_35D2 );
    _ID42237::_ID3350( _func_1A2( "ai_ambient", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_38ED );
    _ID42237::_ID3350( _func_1A2( "ai_ambient_prop", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_3801 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct1", "targetname" ), ::_unknown_3086 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct2", "targetname" ), ::_ID44799 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on1", "targetname" ), ::_unknown_30BA );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on2", "targetname" ), ::_unknown_30D4 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on3", "targetname" ), ::_unknown_30EE );
    _ID42237::_ID3350( _func_1A2( "wired_light", "targetname" ), ::_unknown_3A07, "light_idle", "wired_light" );
    _ID42237::_ID3350( _func_1A2( "wired_light_broken", "targetname" ), ::_unknown_3A1F, "light_idle_broken", "wired_light" );
    _func_1A1( "suspended_light1", "targetname" ) thread _unknown_3A41( "light_idle1", "suspended_light" );
    _func_1A1( "suspended_light2", "targetname" ) thread _unknown_3A57( "light_idle2", "suspended_light" );
    _func_1A1( "suspended_light3", "targetname" ) thread _unknown_3A6D( "light_idle3", "suspended_light" );
    _func_1A1( "suspended_light4", "targetname" ) thread _unknown_3A82( "light_idle4", "suspended_light" );
    _func_1A1( "suspended_light5", "targetname" ) thread _unknown_3A98( "light_idle5", "suspended_light" );
    _ID42237::_ID3350( _func_1A2( "curtain_red_wind", "targetname" ), ::_unknown_3AA5, "curtains_wind", "curtains" );
    _ID42237::_ID3350( _func_1A2( "curtain_closed_wind", "targetname" ), ::_unknown_3ABE, "curtains_closed_wind_calm", "curtains" );
    _ID42237::_ID3350( _func_1A2( "curtain_open_idle", "targetname" ), ::_unknown_3AD6, "curtains_wind_calm", "curtains" );
    _ID42407::_ID3343( "door_breaker", ::_unknown_3E19 );
    _ID42407::_ID3344( "hostiles_commerce_samsite", ::_unknown_18CA );
    _ID42407::_ID3344( "commerce_sector_2_guys", ::_unknown_1AE4 );
    _ID42407::_ID3344( "crowsnest_assault_guys_wave1", ::_unknown_1CEC );
    _ID42407::_ID3344( "commerce_flare_guys", ::_unknown_32B2 );
    _ID42407::_ID3344( "ww2_heli", ::_unknown_2AB1 );
    _ID42407::_ID3343( "no_suppress", ::_unknown_325F );
    _ID42407::_ID3343( "friendly_fodder", ::_unknown_3C4B );
    _ID42407::_ID3343( "enemy_spotter_prone", ::_unknown_32F9 );
    _ID42407::_ID3343( "enemy_spotter_crouched", ::_unknown_3304 );
    _ID42407::_ID3343( "enemy_javelin", ::_unknown_330F );
    _ID42407::_ID3343( "enemy_stinger", ::_unknown_331A );
    _ID42407::_ID3343( "waittill_damaged_and_set_flag", ::_unknown_34FE );
    _ID42407::_ID3343( "invisible_patrol_fodder", ::_unknown_3FC8 );
    _ID42407::_ID3343( "at4_friendly", ::_unknown_3FE3 );
    _ID42407::_ID3343( "player_seek", ::_unknown_3F2B );
    _ID42407::_ID3343( "roof_escape_redshirts", ::_unknown_25F8 );
    _ID42407::_ID3343( "redshirt", ::_unknown_32E3 );
    _ID42407::_ID3343( "glass_building_enemies", ::_unknown_3033 );
    _ID42407::_ID3343( "ambush", ::_unknown_3031 );
    _ID42407::_ID3343( "laatpv_gunner", ::_unknown_3041 );
    _ID42407::_ID3344( "commerce_rpg_upper", ::_unknown_0EF5 );
    _ID42407::_ID3344( "hostiles_courtyard", ::_unknown_1880 );
    var_6 = _func_0E2( "axis" );
    var_7 = [];
    var_8 = var_6;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( !_func_02F( var_9._ID31388 ) )
            continue;

        var_7[var_7.size] = var_9;
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID3342( var_7, ::_unknown_30A6 );
    thread _unknown_4394();
    thread _unknown_43A9();
    thread _unknown_443B();
    thread _unknown_4493();
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
    var_0 = _func_1A2();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( var_2._ID170, "trigger_multiple_bcs" ) )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID53488()
{
    var_0 = _func_1A2( "script_origin", "classname" );
    var_1 = _ID42407::_ID3317( var_0, level._ID36707 );
    _ID42237::_ID3350( var_1, ::_unknown_0D7D );
}

_ID44414()
{
    if ( !_func_02F( self._ID31190 ) )
        return;

    _ID42237::_ID14400( self._ID31190 );

    if ( _func_039( "dc_debug" ) == "1" )
        thread _ID42407::_ID9904( self._ID31190, self._ID740, 9999 );

    self waittill( "trigger" );
    _ID42237::_ID14402( self._ID31190 );

    if ( _func_039( "dc_debug" ) == "1" )
        _func_19F( "flag: " + self._ID31190 + " has been set" );
}

_ID47474()
{
    _ID42475::_ID34575( "start_debug_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_bunker" );
    thread _unknown_0F1A();
}

_ID46468()
{
    _ID42475::_ID34575( "start_debug_checkpoint" );
    _unknown_3B10( "elevator_bottom" );
    maps\dcburning_lighting::_ID51844( "dcburning_bunker" );
}

_ID44920()
{
    _ID42475::_ID34575( "start_elevator_bottom_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_commerce" );
    _unknown_3B32( "elevator_bottom" );
    thread _unknown_34C6();
    _ID42237::_ID14402( "obj_commerce_given" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _unknown_4199( "colornodes_commerce_bot_to_top", "script_noteworthy", 1 );
    thread _unknown_1A16();
}

_ID43762()
{
    _ID42475::_ID34575( "start_elevator_top_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_commerce" );
    _unknown_3B79( "elevator_top" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "player_at_commerce_crows_floor" );
    thread _unknown_1F54();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID43208()
{
    _ID42475::_ID34575( "start_crows_nest_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _unknown_3BC6( "crows_nest" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "player_approaching_crowsnest" );
    _ID42237::_ID14402( "player_approaching_crowsnest2" );
    thread _unknown_20B7();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID47843()
{
    _ID42475::_ID34575( "start_crows_nest_armor_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _unknown_3C1C( "crows_nest" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "start_crow_armor_sequence" );
    _ID42237::_ID14402( "player_approaching_crowsnest" );
    _ID42237::_ID14402( "player_approaching_crowsnest2" );
    thread _unknown_26FB();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID53971()
{
    _ID42475::_ID34575( "start_barrett_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _unknown_3C79( "crows_nest" );
    _ID42407::_ID4917( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    var_0 = _unknown_220A();
    var_1 = var_0[0];
    var_2 = var_0[1];
    var_clear_2
    thread _unknown_2642( var_1, var_2 );
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID44006()
{
    _ID42475::_ID34575( "start_to_roof_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _unknown_3CCE( "to_roof" );
    _ID42407::_ID4918( "allies" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "on" );
    _ID42237::_ID14402( "only_2_javelin_enemies_remaining" );
    _ID42237::_ID14402( "crowsnest_sequence_finished" );
    thread _unknown_2A6B();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID35930()
{
    _ID42475::_ID34575( "start_roof_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_rooftops" );
    _unknown_3D24( "Roof" );
    _ID42237::_ID3350( level._ID35507, _ID42407::_ID8925, "off" );
    _ID42237::_ID14402( "player_headed_to_roof" );
    _ID42237::_ID14402( "player_approaching_outer_balcony" );
    _unknown_2C3E( "trigger_dummy_roof_colornode" );
    thread _unknown_2D49();
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14402( "flag_reduce_sunlight" );
}

_ID43871()
{
    _ID42475::_ID34575( "start_heli_ride2_checkpoint" );
    maps\dcburning_lighting::_ID51844( "dcburning_heliride_takeoff" );
    var_0 = _ID42237::_ID16638( "player_heli_ww2_end", "script_noteworthy" );
    var_0._ID65 = ( 0, 256, 0 );
    _unknown_318F( var_0 );
    level._ID52945._ID50372 = level._ID794;
    level._ID52945._ID50372 _meth_8328( 1 );
    level._ID52945 _meth_801D( level._ID30904["viewhands"], "tag_barrel" );
    level._ID52945 thread _ID54230::_ID43238();
    level._ID52945._ID23875 = _ID42407::_ID35028( "minigun_dummy", level._ID52945._ID740, level._ID52945._ID65 );
    level._ID52945._ID23875 _meth_805A();
    level._ID52945._ID23875 _meth_8053( level._ID52945 );
    level._ID52945 thread _ID45306::_ID49378();
    thread _unknown_33D4();
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
    var_0 = _func_1A1( "player_gun_down", "targetname" );
    var_0 thread _unknown_129D();
    thread _unknown_37B6();
    _unknown_3E4F( "Bunker" );
    thread _unknown_169F();
    thread _unknown_12C1();
    thread _unknown_12D5();
    thread _unknown_12E0();
    thread _unknown_37DB();
    thread _unknown_37F9();
    thread _unknown_18CE();
    thread _unknown_192B();
    thread _unknown_1AEF();
    thread _unknown_1B02();
    thread _unknown_1B2F();
    thread _unknown_1C5F();
    thread _unknown_1AC5();
    thread _unknown_1ADB();
    thread _unknown_1AEC();
    thread _unknown_1B91();
    thread _unknown_1B0C();
    thread _unknown_22B0();
    thread _unknown_12EB();
    _ID42237::_ID14413( "player_commerce_trench_02" );
    thread _unknown_1D68();
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
        _func_0DB( "cg_gunDownAnimDelayTime", 250 );
        _ID42237::_ID14426( "bunker_gun_down" );
        _func_0DB( "cg_gunDownAnimDelayTime", -1 );
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
    if ( _func_03A( "r_dcburning_culldist" ) == 1 )
        _func_08E( 28500 );

    thread _unknown_44EA();
    _ID42407::_ID14543( "allies" );
    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    level._ID44035 thread _unknown_4380( "bunker_radio_door_guy" );
    level._ID49792 thread _unknown_438A( "gun_toss_guy2" );
    level._ID48061 thread _unknown_4395( "gun_toss_guy1" );
    var_0 = _ID42407::_ID3339( _func_1A2( "bunker_laptop_guys", "targetname" ) );
    thread _unknown_181C();
    var_1 = _ID42407::_ID3339( _func_1A2( "bunker_hallway_injured_guys", "targetname" ) );
    var_2 = _ID42407::_ID3339( _func_1A2( "bunker_hallway_injured_guys2", "targetname" ) );
    var_3 = _ID42407::_ID3339( _func_1A2( "bunker_sleeping_guys", "targetname" ) );
    var_4 = _ID42407::_ID3339( _func_1A2( "bunker_doctor_and_patient", "targetname" ) );
    thread _unknown_173C( var_4 );
    var_5 = _func_1A1( "bunker_hallway_injured_carrier", "targetname" );
    var_6 = var_5 _ID42407::_ID35014();
    var_7 = _ID42407::_ID3339( _func_1A2( "bunker_sitting_guys", "targetname" ) );
    var_8 = _ID42407::_ID3339( _func_1A2( "bunker_injured_soldier", "targetname" ) );
    var_9 = _ID42407::_ID3339( _func_1A2( "bunker_wounded_check", "targetname" ) );
    _ID42237::_ID14413( "introscreen_complete" );
    _ID42237::_ID14413( "player_bunker_comm_room" );
    _unknown_4697( "colornodes_trenches", "script_noteworthy", 1 );
    _ID42237::_ID14413( "player_approaching_bunker_exit_hall" );
    thread _unknown_1C47();
    var_10 = _func_1A2( "drones_flood_monument", "targetname" );
    thread _unknown_4924( var_10, "drones_flood_monument" );
    thread _unknown_4BBA();

    if ( _func_03A( "r_dcburning_culldist" ) != 1 )
    {
        level._ID52924 = _ID42411::_ID35200( "helis_ambient_trenches" );
        level._ID46159 = _ID42411::_ID35200( "helis_ambient_capitol" );
    }

    level._ID50985 = 8;
    level._ID50128 = 10;
    thread _ID54017::_ID43738( 2 );
    thread _ID54017::_ID43738( 3 );
    thread _ID54017::_ID43738( 4 );
    var_11 = _ID42407::_ID12076( _func_1A1( "drone_warrior_hydrant", "targetname" ) );
    var_11 thread _unknown_18D2();
    var_12 = _func_1A1( "seaknight_loader_start", "targetname" );
    var_12 notify( "spawn" );
    var_13 = _func_1A1( "seaknight_loader_start2", "targetname" );
    var_13 notify( "spawn" );
    var_12 thread maps\dcburning_aud::_ID46717( "scn_seaknight_loader_taking_off_02" );
    var_13 thread maps\dcburning_aud::_ID46717( "scn_seaknight_loader_taking_off_01" );
    var_14 = _ID42411::_ID35196( "littlebird_monument" );
    var_15 = _ID42407::_ID3339( _func_1A2( "littlebird_monument_riders_left", "targetname" ) );
    var_14 thread maps\dcburning_aud::littlebird_monument_idle_sound();
    _ID42237::_ID3350( var_15, ::_unknown_3D23 );
    _ID42237::_ID3350( var_15, _ID42407::_ID22746 );
    var_16 = _ID42407::_ID3339( _func_1A2( "littlebird_monument_riders_right", "targetname" ) );
    _ID42237::_ID3350( var_16, ::_unknown_3D42 );
    _ID42237::_ID3350( var_16, _ID42407::_ID22746 );
    var_17 = _ID42237::_ID16638( "pickup_node_before_stage_monument", "script_noteworthy" );
    var_14 _ID42411::_ID32450( var_17, var_15, "left" );
    var_14 _ID42411::_ID32450( var_17, var_16, "right" );
    var_18 = _func_1A2( "littlebird_monument_riders_pilot", "script_noteworthy" );
    _ID42237::_ID3350( var_18, _ID42407::_ID22746 );
    var_19 = [];
    var_20 = _func_1A2( "monument_spotters", "targetname" );
    var_21 = _ID42407::_ID3339( var_20, 1 );
    var_19 = _ID42407::_ID3317( var_19, var_21 );
    _ID42237::_ID14413( "player_approaching_monument" );
    var_5 = _func_1A1( "drones_seaknight", "targetname" );
    thread _unknown_1999( var_5, "seaknight_drones_loaded", "player_exiting_start_trench2" );
    var_5 = _func_1A1( "drones_seaknight2", "targetname" );
    thread _unknown_19B1( var_5, "seaknight_drones2_loaded", "player_exiting_start_trench" );
    _ID42237::_ID14413( "player_exiting_start_trench" );
    thread _unknown_1E1B();
    thread _unknown_1DFE();
    var_12 thread _unknown_4DDA( "seaknight_drones_loaded", "load_riders" );
    var_12 thread _unknown_4DE2( "riders_loaded", "play_anim" );
    var_13 thread _unknown_4DF5( "seaknight_drones2_loaded", "load_riders" );
    var_13 thread _unknown_4DFD( "riders_loaded", "play_anim" );
    var_22 = _func_1A2( "spot_targets", "script_noteworthy" );
    _ID42237::_ID3350( var_22, ::_unknown_1A5A );
    var_23 = _func_1A2( "bunker_door_up", "targetname" );
    var_24 = var_23;

    for ( var_26 = _func_1DA( var_24 ); _func_02F( var_26 ); var_26 = _func_1BF( var_24, var_26 ) )
    {
        var_25 = var_24[var_26];
        var_25 _ID42407::_ID18512();
    }

    var_clear_2
    var_clear_0
    var_27 = _func_1A2( "bunker_door", "targetname" );
    _ID42237::_ID3350( var_27, _ID42407::_ID33997 );
    _ID42237::_ID14402( "bunker_door_closed" );
    var_28 = _ID42237::_ID16640( "mortar_bunker", "targetname" );
    var_29 = _func_1A2( "mortar_bunker", "targetname" );
    _ID42237::_ID3294( var_29, ::_meth_80B7 );
    thread _unknown_4DEB( var_28, "delete_bunker_mortars" );
    var_30 = _func_1A1( "bunker_radio_org_room2", "targetname" );
    var_30 _meth_80B7();
    var_31 = _func_1A1( "volume_bunker", "targetname" );
    var_32 = var_31 _unknown_4BF7();
    var_33 = var_31 _ID42407::_ID15692( "allies" );
    var_32 = _ID42407::_ID3317( var_32, var_33 );
    _ID42237::_ID3350( var_32, ::_unknown_4929 );
    _ID42237::_ID3350( level._ID48904, _ID42237::_ID26402 );
    var_5 = _func_1A1( "monument_waver", "targetname" );
    var_34 = var_5 _ID42407::_ID35014( 1 );
    var_20 = _func_1A2( "friendlies_commerce_street", "targetname" );
    var_35 = [];
    var_36 = var_20;

    for ( var_37 = _func_1DA( var_36 ); _func_02F( var_37 ); var_37 = _func_1BF( var_36, var_37 ) )
    {
        var_5 = var_36[var_37];
        var_35[var_35.size] = var_5 _ID42407::_ID35014( 1 );
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID3350( var_35, ::_unknown_3F26 );
    var_20 = _func_1A2( "friendlies_commerce_wall", "targetname" );
    var_38 = [];
    var_39 = var_20;

    for ( var_40 = _func_1DA( var_39 ); _func_02F( var_40 ); var_40 = _func_1BF( var_39, var_40 ) )
    {
        var_5 = var_39[var_40];
        var_38[var_38.size] = var_5 _ID42407::_ID35014( 1 );
    }

    var_clear_1
    var_clear_0
    thread _unknown_1A85( _ID42237::array_flatten( [ var_35, var_38 ] ) );
    level.battlechattermaxcanseeperframe = 5;
    _ID42237::_ID14413( "player_exiting_start_trench2" );
    var_20 = _func_1A2( "monument_mortarguys", "targetname" );
    var_41 = _ID42407::_ID3339( var_20, 1 );
    _ID42237::_ID14413( "commerce_enemy_javeling_failsafe" );
    var_19 = _ID42237::_ID3293( var_19, var_34 );
    thread _ID42407::_ID2265( var_19, 1024 );
    var_14 thread _ID42411::_ID22484( "left", var_15 );
    var_14 thread _ID42411::_ID22484( "right", var_16 );
    var_42 = _ID42237::_ID16638( "littlebird_monument_path", "targetname" );
    var_14 thread _unknown_1BC2( "player_exiting_start_trench", var_42 );
    var_43 = _func_1A2( "drones_flood_monument2", "targetname" );
    thread _unknown_4C93( var_43, "drones_flood_monument2" );
    _ID42237::_ID14413( "player_trench_capitol_failsafe" );
    var_44 = _ID42411::_ID35196( "heli_trench" );
    var_45 = _ID42411::_ID35196( "heli_commerce_front" );
    var_44 thread maps\dcburning_aud::_ID50701();
    var_45 thread maps\dcburning_aud::_ID46244( "scn_mi28_commerce_01" );
    _ID42237::_ID14413( "player_commerce_trench_01" );
    level._ID794._ID511 = 0;
    level._ID794 _unknown_4A8D( 1500 );
    _ID42237::_ID14413( "player_commerce_trench_03" );
    _ID42237::_ID14421( "player_touching_commerce_wall_left", "player_touching_commerce_wall_right" );
    thread _ID42407::_ID4422( "commerce_wall" );
    thread _unknown_49D9();
    thread _unknown_1BC1();
    level._ID43166._ID49533 = 1;
    _ID42237::_ID3350( var_35, _ID42407::_ID36519 );
    _ID42237::_ID3350( var_35, ::_unknown_402F );
    _ID42237::_ID14425( "player_approaching_commerce", 5 );
    _unknown_4ABD( "colornodes_commerce_approach", "script_noteworthy", 1 );
    var_46 = _func_1A2( "colornodes_commerce_approach", "script_noteworthy" );
    thread _unknown_1E3C();
    _ID42237::_ID14402( "lav_is_suppressing" );
    var_47 = _func_0DE( "axis" );
    var_48 = var_47;

    for ( var_50 = _func_1DA( var_48 ); _func_02F( var_50 ); var_50 = _func_1BF( var_48, var_50 ) )
    {
        var_49 = var_48[var_50];

        if ( !_func_02F( var_49 ) )
            continue;

        var_49._ID513 = 0;
        var_49._ID2219 = 0;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14415( "leader_orders_everyone_across_street", "player_entered_commerce_right", "player_entered_commerce_left" );

    if ( !_ID42237::_ID14385( "player_crossing_street" ) )
    {
        var_51 = _ID42237::_ID16182( level._ID794._ID740, var_46 );
        var_51 notify( "trigger",  level._ID794  );
    }

    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    _ID42237::_ID3350( level._ID35507, ::_unknown_410A );
    thread _unknown_1C91();
    _ID42237::_ID14413( "player_entering_commerce" );
    level.battlechattermaxcanseeperframe = undefined;
    _func_034( "ai_GrenadeThrowAllowedInStairs", 0 );
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    _ID42237::_ID3350( level._ID35507, ::_unknown_4145 );
    var_52 = level._ID35507;

    for ( var_53 = _func_1DA( var_52 ); _func_02F( var_53 ); var_53 = _func_1BF( var_52, var_53 ) )
    {
        var_49 = var_52[var_53];
        var_49 _ID42407::_ID10973();
    }

    var_clear_1
    var_clear_0
    var_54 = _func_1A1( "commerce_blocker_right", "targetname" );
    var_55 = _func_1A1( "commerce_blocker_left", "targetname" );
    var_56 = [];
    var_56[0] = var_54;
    var_56[1] = var_55;
    var_57 = _ID42237::_ID16276( level._ID794._ID740, var_56 );
    var_57 _meth_8059();
    var_57 _meth_82C8();
    var_57 _meth_805E();
    _ID42237::_ID14421( "player_entered_commerce_left", "player_entered_commerce_right" );
    thread _unknown_4E5F( "drones_flood_monument" );
    thread _unknown_4E67( "drones_flood_monument2" );
    _ID42237::_ID3350( level._ID48952, _ID42237::_ID38863 );
    _ID42237::_ID3350( level._ID44271, _ID42237::_ID38865 );
    _unknown_4C07( "colornodes_commerce_bot_to_top", "script_noteworthy", 1 );
    _ID42237::_ID14388( "lav_is_suppressing" );
    var_47 = _func_0DE( "axis" );
    var_58 = var_47;

    for ( var_59 = _func_1DA( var_58 ); _func_02F( var_59 ); var_59 = _func_1BF( var_58, var_59 ) )
    {
        var_49 = var_58[var_59];

        if ( !_func_02F( var_49 ) )
            continue;

        var_49._ID513 = 1;
        var_49._ID2219 = 1;
    }

    var_clear_1
    var_clear_0
    thread _ID42407::_ID4422( "commerce_entered" );
    _ID42237::_ID14402( "obj_follow_sgt_macey_complete" );
    _unknown_4C64( "colornodes_elevators", "script_noteworthy", 1 );
    thread _ID42407::_ID2265( var_35, 1024 );
    thread _unknown_203C();
    var_60 = _func_1A1( "volume_commerce_lobby_upper", "targetname" );
    var_61 = var_60 _ID42407::_ID15547( "axis" );

    if ( _func_02F( var_61 ) && var_61.size > 0 )
        level._ID48825 = var_61;

    wait 1;
    thread _unknown_20AB();
    level._ID43166._ID43839 = 0;
    _ID42407::_ID10226( 4, ::_unknown_1E43 );
    _ID42237::_ID14421( "commerce_first_floor_enemies_dead", "player_middle_commerce_first_floor" );
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    var_62 = level._ID35507;

    for ( var_63 = _func_1DA( var_62 ); _func_02F( var_63 ); var_63 = _func_1BF( var_62, var_63 ) )
    {
        var_49 = var_62[var_63];
        var_49 _ID42407::_ID12538();
    }

    var_clear_1
    var_clear_0
    level._ID794 _unknown_4D11();

    if ( !_ID42237::_ID14385( "player_middle_commerce_first_floor" ) )
    {
        var_51 = _func_1A1( "colornodes_elevators", "script_noteworthy" );
        var_51 notify( "trigger",  level._ID794  );
    }

    _ID42237::_ID14413( "player_heading_up_to_mezzanine" );
    thread _unknown_4E78( "all", 1024, 1 );
    level._ID48825 = undefined;
    level._ID43166._ID49533 = 1;
    level._ID43166._ID43839 = 1;
    var_64 = _func_1A2( "mezzanine_blockers", "targetname" );
    _ID42237::_ID3350( var_64, _ID42407::_ID33997 );
    _ID42237::_ID14413( "ask_bradley_to_stop_firing" );
    level._ID43166._ID43839 = 0;
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    thread _unknown_4F66( "all", 128 );
}

ai_commerce_reduce_sightrace( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2 ) )
            continue;

        var_2._ID967 = 1000;
        var_2._ID968 = 1000;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14415( "leader_orders_everyone_across_street", "player_entered_commerce_right", "player_entered_commerce_left" );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];

        if ( !_func_02F( var_2 ) || !_func_1A7( var_2 ) )
            continue;

        var_2._ID967 = 100;
        var_2._ID968 = 250;
    }

    var_clear_1
    var_clear_0
}

create_medic_props( var_0 )
{
    level.medic_clipboard = _func_1A1( "medic_clipboard", "targetname" );
    level.medic_pen = _func_1A1( "medic_pen", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2._ID172 == "actor_ally_us_army_paramedic" )
        {
            level.medic = var_2;
            break;
        }
    }

    var_clear_2
    var_clear_0
}

detach_syringe( var_0, var_1 )
{
    var_2 = _func_06A( "script_model", var_0 _meth_818C( var_1 ) );
    var_2._ID65 = var_0 _meth_818D( var_1 );
    var_2 _meth_80B8( "h2_adrenaline_syringe_phys" );
    var_2 _meth_82CC( var_2._ID740, ( -500, 500, 0 ) );
}

attach_clipboard( var_0, var_1 )
{
    level.medic_clipboard _meth_80B7();
    var_0 _meth_801D( "h2_com_clipboard_wpaper_anim", var_1 );
}

attach_pen( var_0, var_1 )
{
    level.medic_pen _meth_80B7();
    var_0 _meth_801D( "h2_characters_accessories_pencil_anim", var_1 );
}

bradley_commerce_targets()
{
    var_0 = _func_1A1( "volume_commerce_lobby", "targetname" );
    var_1 = var_0 _ID42407::_ID15547( "axis" );

    if ( _func_02F( var_1 ) && var_1.size > 0 )
        level._ID48825 = var_1;
}

ai_commerce_entrance_ignore_suppression()
{
    var_0 = level._ID35507;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID513 = 1;
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_crossing_street" );
    var_3 = _func_0DE( "allies" );
    var_4 = var_3;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_1 = var_4[var_5];

        if ( !_func_02F( var_1 ) )
            continue;

        var_1._ID513 = 1;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "player_commerce_past_desks" );
    var_6 = var_3;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_1 = var_6[var_7];

        if ( !_func_02F( var_1 ) || !_func_1A7( var_1 ) )
            continue;

        var_1._ID513 = 0;
    }

    var_clear_1
    var_clear_0
}

_ID49396()
{
    self endon( "death" );
    self._ID7._ID11035 = 1;
    _ID42407::_ID32355( 1 );
    level endon( "player_approaching_commerce" );
    _ID42237::_ID14413( "player_commerce_trench_03" );
    var_0 = _func_0C9( "commerce_lobby_teleport_nodes", "targetname" );
    var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    self _meth_81D2( var_1._ID740, var_1._ID65 );
    _ID42407::_ID32355( 0 );
    self _meth_81B2( self._ID740 );
    self._ID86 = 0;
    var_2 = _func_1A1( "volume_commerce_front", "targetname" );
    self _meth_81B5( var_2 );
    _ID42237::_ID14421( "player_crossing_street", "leader_orders_everyone_across_street" );
    wait(_func_0BA( 0, 1 ));
    thread _unknown_4E97( self._ID740 );
    self _meth_8058();
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
        wait(_func_0BA( 1, 2.5 ));
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
    self _meth_829E( 20, 50 );
    wait 2;
    _ID42411::_ID40066( "idle_alert_to_casual" );
    self _meth_828D( 25 );
    self._ID31507 = 1;
    wait 5;
    _ID42237::_ID3350( self._ID29965, _ID42407::_ID36519 );
    thread _unknown_55BE();
}

_ID44096()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_mid_trench" );
    _ID42237::_ID27077( "mortar_incoming", self._ID740 );
    _func_156( level._ID1426["mortar"]["dirt"], self._ID740 );
    _func_192( 0.25, 0.75, self._ID740, 1250 );
    thread _ID42237::_ID27077( level._ID30909["mortar"]["dirt"], self._ID740 );
    self notify( "stop_drone_fighting" );
    thread _ID42237::_ID27077( "generic_death_american_1", self._ID740 );
    self._ID9813 = level._ID30895["generic"]["deathanim_mortar_00"];
    self _meth_8058();
}

_ID46576()
{
    var_0 = 2.4;
    var_1 = 50;
    var_2 = 50;
    wait(var_0);

    while ( !_ID42237::_ID14385( "obj_commerce_defend_snipe_given" ) )
    {
        self _meth_82B8( self._ID740 + ( 0, 0, var_1 ), var_0, 1, 1 );
        wait(var_0);
        self _meth_82B8( self._ID740 + ( var_2, 0, 0 ), var_0, 1, 1 );
        wait(var_0);
        self _meth_82B8( self._ID740 + ( 0, 0, var_1 * -1 ), var_0, 1, 1 );
        wait(var_0);
        self _meth_82B8( self._ID740 + ( var_2 * -1, 0, 0 ), var_0, 1, 1 );
        wait(var_0);
    }

    self _meth_80B7();
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
    level._ID48827 = _func_06A( "script_origin", level._ID794._ID740 );
    level._ID48827 _meth_8053( level._ID794 );
    level._ID48827._ID22409 = 1;
    level endon( "javelin_is_owning_fools" );
    _unknown_24C9( "dcburn_rm1_report1dash3" );
    _unknown_24D1( "dcburn_rm2_sendtraffic" );
    _unknown_24D9( "dcburn_rm1_40personnel" );
    _unknown_24E1( "dcburn_rm1_lineyankee" );
    _unknown_24EA( "dcburn_rm1_linezulu" );
    _unknown_24F2( "dcburn_rm1_linealpha" );
    _unknown_24FA( "dcburn_rm2_sayagain" );
    _unknown_2502( "dcburn_rm1_sayagain" );
    _unknown_250B( "dcburn_rm2_remarks" );
    _unknown_2513( "dcburn_rm1_noremarks" );
    _unknown_251B( "dcburn_rm2_needintel" );
    _unknown_2523( "dcburn_rm3_engparatroop" );
    _unknown_252C( "dcburn_rm4_footmobiles" );
    _unknown_2534( "dcburn_rm5_thermlaws" );
    _unknown_253C( "dcburn_rm4_whattarget" );
    _unknown_2544( "dcburn_rm5_dropbuilding" );
    _unknown_254D( "dcburn_rm4_fedresbuild" );
    _unknown_2555( "dcburn_rm5_allover" );
    _unknown_255D( "dcburn_rm4_checkin" );
    _unknown_2565( "dcburn_rm5_roger" );
    _unknown_256E( "dcburn_rm4_thermlaws" );
    _unknown_2576( "dcburn_rm6_copiesall" );
    _unknown_257E( "dcburn_rm4_stndingby" );
    _unknown_2586( "dcburn_rm6_thermlawsauth" );
    _unknown_258F( "dcburn_rm4_approved" );
    _unknown_2597( "dcburn_rm5_solidcopy" );
    _unknown_259F( "dcburn_rm5_apprengage" );
    _unknown_25A7( "dcburn_rm1_engagingtarg" );
    _unknown_25B0( "dcburn_rm1_targetsupp" );
    _unknown_25B8( "dcburn_rm4_saddleup" );
    _unknown_25C0( "dcburn_rm5_btr60" );
    _unknown_25C8( "dcburn_rm6_lawrocket" );
    _unknown_25D1( "dcburn_rm1_logancircpark" );
    _unknown_25D9( "dcburn_rm2_22isdown" );
    _unknown_25E1( "dcburn_rm3_airsupport" );
    _unknown_25E9( "dcburn_rm5_mark19down" );
    _unknown_25F2( "dcburn_rm4_retrograde" );
    _unknown_25FA( "dcburn_rm3_lowammo" );
    _unknown_2602( "dcburn_rm3_5btr60s" );
    _unknown_260A( "dcburn_rm2_callingitin" );
    _unknown_2613( "dcburn_ra2_standingby" );
    _unknown_261B( "dcburn_rm2_gridtomark" );
    _unknown_2623( "dcburn_ra2_gridtosuppress" );
    _unknown_262B( "dcburn_rm2_reqsplash" );
    _unknown_2634( "dcburn_ra2_dangerclose" );
    _unknown_263C( "dcburn_ra2_mess2ob" );
    _unknown_2644( "dcburn_rm2_2gunseffect" );
    _unknown_264C( "dcburn_ra2_shot" );
    _unknown_2655( "dcburn_rm2_shot" );
    _unknown_265D( "dcburn_rm2_splash" );
    _unknown_2665( "dcburn_ra2_splash" );
    _unknown_266D( "dcburn_rm3_takeitout" );
    _unknown_2676( "dcburn_rm2_linkup" );
    _unknown_267E( "dcburn_rm4_dugin" );
    _unknown_2686( "dcburn_rm2_sitrep" );
    _unknown_268E( "dcburn_rm4_brokenarrow" );
    _unknown_2697( "dcburn_rm2_brokearrow" );
    _unknown_269F( "dcburn_rm5_sitrep" );
    _unknown_26A7( "dcburn_rm6_kia" );
    _unknown_26AF( "dcburn_rm5_tacfreq" );
    _unknown_26B8( "dcburn_rm6_switching" );
    _unknown_26C0( "dcburn_rm1_12klicksnorth" );
    _unknown_26C8( "dcburn_rm2_contactleft" );
    _unknown_26D0( "dcburn_rm3_takingfire" );
    _unknown_26D9( "dcburn_rm4_tookahit" );
    _unknown_26E1( "dcburn_rm5_status" );
    _unknown_26E9( "dcburn_rm1_heavyfire" );
    _unknown_26F1( "dcburn_rm2_ambush" );
    _unknown_26FA( "dcburn_rm3_contactleft" );
    _unknown_2702( "dcburn_rm4_rpg" );
    _unknown_270A( "dcburn_rm5_coversector" );
    _unknown_2712( "dcburn_rp1_tasking" );
    _unknown_271B( "dcburn_fac_pushtoipbuick" );
    _unknown_2723( "dcburn_rp1_mapgrid" );
    _unknown_272B( "dcburn_fac_2a10s" );
    _unknown_2733( "dcburn_rm2_stalkercopies" );
    _unknown_273C( "dcburn_rm2_standby" );
    _unknown_2744( "dcburn_rp1_stndingby" );
    _unknown_274C( "dcburn_rm2_talktotarg" );
    _unknown_2754( "dcburn_rp1_goahead" );
    _unknown_275D( "dcburn_rm2_ovaltrack" );
    _unknown_2765( "dcburn_rp1_contact" );
    _unknown_276D( "dcburn_rm2_ewaxis" );
    _unknown_2775( "dcburn_rp1_contact" );
    _unknown_277E( "dcburn_rm2_logancircpark" );
    _unknown_2786( "dcburn_rp1_contact" );
    _unknown_278E( "dcburn_rm2_yourtarget" );
    _unknown_2796( "dcburn_rp1_rollingin" );
    _unknown_279F( "dcburn_rm2_bringrain" );
    _unknown_27A7( "dcburn_rp1_offsafe" );
    _unknown_27AF( "dcburn_rp1_guns" );
    _unknown_27B7( "dcburn_rp2_offsafe" );
    _unknown_27C0( "dcburn_rp1_ejecting" );
    _unknown_27C8( "dcburn_rp2_cantseeit" );
    _unknown_27D0( "dcburn_rm2_onechute" );
    _unknown_27D8( "dcburn_fac_southkstreet" );
}

_ID48922()
{
    level endon( "bunker_door_closed" );
    _ID42237::_ID14413( "player_bunker_walk_01" );
    var_0 = _func_1A1( "bunker_radio_org_room2", "targetname" );
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
    if ( !_func_02F( level._ID48827 ) )
        return;

    if ( _func_02F( level._ID48827._ID10329 ) )
        level._ID48827 _meth_80B7();

    level._ID48827 _meth_80A1( var_0, "done" );
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
            level._ID44035 _unknown_557E( "dcburn_mcy_latveesupp" );

        if ( !_ID42237::_ID14385( "player_crossing_street" ) )
        {
            level._ID44035 _unknown_5593( "dcburn_mcy_ready" );
            level._ID44035 _unknown_559D( "dcburn_mcy_gomoveup" );
        }

        _ID42237::_ID14402( "leader_orders_everyone_across_street" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_lineoffire" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_movemove" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_50calsupp" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_sittingducks" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_blownoff" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_moveup" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_entering_commerce" ) )
            break;

        _ID42407::_ID28864( "dcburn_mcy_intotargbuilding" );
    }
}

_ID47359()
{
    var_0 = 0;
    level._ID44035 _unknown_5678( "dcburn_mcy_lobby_move_nag_00" );
    _ID42237::_ID14402( "obj_commerce_given" );
    level endon( "player_approaching_bottom_elevators" );
    level endon( "stop_nag_get_to_elevator" );

    while ( !_ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
    {
        wait(_func_0B9( 5, 8 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        if ( var_0 == 0 )
        {
            level._ID44035 _unknown_56B7( "dcburn_mcy_grenadelaunch" );
            var_0 = 1;
            wait(_func_0B9( 7, 11 ));
        }

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _unknown_56D7( "dcburn_mcy_lobby_move_nag_01" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _unknown_56F5( "dcburn_mcy_lobby_move_nag_02" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _unknown_5713( "dcburn_mcy_lobby_move_nag_03" );
        wait(_func_0B9( 7, 11 ));

        if ( _ID42237::_ID14385( "player_approaching_bottom_elevators" ) )
            break;

        level._ID44035 _unknown_5731( "dcburn_mcy_lobby_move_nag_04" );
        wait(_func_0B9( 7, 11 ));
    }
}

_ID49071()
{
    var_0 = _func_1A1( "volume_commerce_lobby_lower", "targetname" );

    for ( var_1 = var_0 _ID42407::_ID15547( "axis" ); var_1.size > 0; var_1 = var_0 _ID42407::_ID15547( "axis" ) )
        wait 0.5;

    _ID42237::_ID14402( "commerce_first_floor_enemies_dead" );
}

_ID44179()
{
    var_0 = _func_1A1( "bunker_radio_org_room2", "targetname" );
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
    level._ID44035 _unknown_57F3( "dcburn_mcy_reqairstrike" );
    _ID42407::_ID28864( "dcburn_hqr_alongpotomac" );
    wait 2;
    thread _unknown_56CF();
    wait 0.75;
    thread _ID42407::_ID4422( "trench_start" );
    level._ID44035 _unknown_5819( "dcburn_mcy_buytime" );
    _ID42237::_ID14413( "player_trench_capitol_failsafe" );
    level._ID44035 _unknown_582C( "dcburn_mcy_haulingpastus" );
    thread _ID42407::_ID28864( "dcburn_hqr_latvee" );
    wait 3;
    _ID42237::_ID14402( "bradley_can_start_firing" );
    _ID42237::_ID14413( "commerce_rappelers_inserting" );
    wait 1;

    if ( !_ID42237::_ID14385( "player_commerce_trench_03" ) )
        _ID42407::_ID28864( "dcburn_hqr_linkup" );

    if ( !_ID42237::_ID14385( "player_commerce_trench_03" ) )
        level._ID44035 _unknown_586F( "dcburn_mcy_firelow" );

    _ID42237::_ID14402( "trenches_dialogue_done" );
}

_ID51286()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    thread _ID42407::_ID4422( "javelins_trench" );
    var_0 = _ID42411::_ID35195( "m1a1_trench" );
    _ID42237::_ID14413( "player_leaving_bunker" );
    _ID42411::_ID35200( "apache_01" );
    thread _unknown_2D9A();
    var_1 = _func_1A1( "javelin_source_org", "targetname" );
    var_2 = _ID42411::_ID35195( "monument_heli_owned" );
    var_2 _meth_8295();
    var_3 = _ID42411::_ID35195( "m1a1_owned" );
    var_3 thread _unknown_5F81();
    var_4 = _ID42411::_ID35195( "m1a1_owned2" );
    var_4 _ID42411::_ID16988();
    var_5 = _func_1A2( "javelin_vehicle_targets", "targetname" );
    _ID42237::_ID3350( var_5, ::_unknown_3CBB );
    var_3 thread maps\dcburning_aud::_ID47644();
    _ID42237::_ID14413( "player_exiting_start_trench" );
    _ID42411::_ID35200( "jets_monument_01" );
    wait 2;
    thread _ID42411::_ID17021( var_3 );
    var_3 thread maps\dcburning_aud::_ID46612();
    _ID42237::_ID14421( "looking_commerce_enemy_javelin", "commerce_enemy_javeling_failsafe" );
    var_6 = _func_1C8( "javelin_noimpact", var_1._ID740, var_2._ID740 );
    _func_156( _ID42237::_ID16299( "javelin_muzzle" ), var_1._ID740 );
    var_6 thread _unknown_5813();
    var_6 _meth_81E6( var_2._ID740 );
    var_6 _meth_81E9();
    var_7 = _ID42407::_ID16053( "seaknight_monument_takeoff_01", "script_noteworthy" );
    var_8 = _ID42237::_ID16638( "heli_monument_path_01", "targetname" );
    var_7 thread _ID42411::_ID40218( var_8 );
    var_7 thread _ID42407::_ID27001( "scn_seaknight_loader_taking_off_03", undefined, 1 );
    thread _ID42407::_ID14403( "javelin_is_owning_fools", 1 );
    wait 2.5;
    thread _ID42411::_ID17021( var_4 );
    var_4 _ID42411::_ID16987();
    var_3 _meth_826C( var_1 );
    var_3 thread _unknown_2ED9( var_1 );
    var_3 thread _unknown_2EAD();

    for (;;)
    {
        var_2 waittill( "damage",  var_10, var_9  );

        if ( _func_02F( var_10 ) && !_func_1B3( var_10 ) )
            break;
    }

    thread _ID44311::_ID49210( var_2 );
    wait 10;
    var_4 _meth_826C( var_1 );
    var_4 thread _unknown_2F13( var_1 );
    var_4 _ID42407::_ID10226( 0, ::_unknown_58BE, var_1 );
    wait 8;
    var_0 _ID42407::_ID10226( 0, ::_unknown_58CB, var_1 );
    _ID42237::_ID14402( "second_abrams_killed" );
    wait 8;
    var_11 = _ID42237::_ID16640( "javelin_targets_trench", "targetname" );
    var_12 = var_5;
    var_13 = undefined;
    var_14 = undefined;
    var_15 = 1;
    var_16 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    while ( !_ID42237::_ID14385( "player_entering_top_elevator_area" ) )
    {
        wait(_func_0BA( 5, 8 ));
        var_17 = _func_0B7( var_11.size );
        var_14 = var_11[var_17];
        var_16._ID740 = var_14._ID740;
        var_6 = _func_1C8( "javelin_dcburn", var_1._ID740, var_16._ID740 );
        _func_156( _ID42237::_ID16299( "javelin_muzzle" ), var_1._ID740 );
        var_6 thread _unknown_5939();
        var_6 _meth_81E5( var_16 );
        var_6 _meth_81E9();
        var_15 = 1;
        wait(_func_0BA( 5, 10 ));
    }

    var_16 _meth_80B7();
}

_ID43980()
{
    wait 2.0;
    var_0 = _func_1A2( "apache_rumble", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_0F3( var_2._ID740, level._ID794._ID740 ) < 2000 )
            level._ID794 _meth_80B5( "Heli_pass_above" );
    }

    var_clear_2
    var_clear_0
    wait 4.0;
    _func_1CF();
}

_ID47570()
{
    wait 2;
    var_0 = _func_1A1( "javelin_source_org", "targetname" );
    self _meth_826C( var_0, ( 0, 0, -60 ) );
    _ID42237::_ID41123( "turret_rotate_stopped", 1.0 );
    self notify( "turret_fire" );

    if ( _func_0F3( self._ID740, level._ID794._ID740 ) < 1500 )
        level._ID794 _meth_80B4( "damage_heavy" );

    _ID42234::_ID13611( "m1a1_fires" );
    _ID42237::_ID14421( "player_trench_capitol_failsafe", "blow_up_abrams" );
    thread _unknown_305B();
    _ID42407::_ID10226( 0, ::_unknown_5A14, var_0 );
}

_ID47575()
{
    self waittill( "death" );

    if ( _func_0F3( self._ID740, level._ID794._ID740 ) < 1024 )
        level._ID794 _meth_8057( 50 / level._ID794._ID255, level._ID794._ID740 );
}

_ID44799()
{

}

_ID51330( var_0 )
{
    self endon( "death" );
    var_1 = self._ID23512[0];

    while ( _func_02F( self ) )
    {
        var_1 _meth_810F( var_0 );
        var_2 = _func_0BA( 1.5, 3 );
        var_1 _meth_80E9();
        wait(var_2);
        var_1 _meth_80EA();
        wait(_func_0BA( 3, 6 ));
    }
}

_ID46491( var_0 )
{
    self endon( "death" );
    self notify( "stop_firing_turret" );
    self endon( "stop_firing_turret" );
    var_1 = 0.1;

    while ( _func_02F( self ) )
    {
        var_2 = _func_0B9( 10, 20 );

        if ( !self._ID14344 )
        {
            for ( var_3 = 0; var_3 < var_2; var_3++ )
            {
                self _meth_826C( var_0, _ID42237::_ID28976( 50 ) + ( 0, 0, 32 ) );
                self _meth_8272();
                wait(var_1);
            }
        }
        else
            wait 0.5;

        wait(_func_0BA( 2, 3 ));
    }
}

_ID50558()
{
    var_0 = _func_1A1( "obelisk_chunk", "targetname" );
    _ID42237::_ID14413( "obelisk_destruction" );
    _ID42234::_ID13611( "obelisk_falling_dirt" );
    var_0 _meth_805A();
    var_1 = _func_06A( "script_model", var_0._ID740 );
    var_1._ID3189 = "obelisk";
    var_1 _ID42259::_ID32556();
    var_1 _meth_80B8( "h2_dcburning_obelisk_break_a" );
    var_1._ID65 = var_0._ID65;
    var_1 thread _ID42259::_ID3111( var_1, "h2_dcburning_obelisk_break_a_anim" );
    var_2 = _func_06A( "script_model", var_0._ID740 );
    var_2._ID3189 = "obelisk";
    var_2 _ID42259::_ID32556();
    var_2 _meth_80B8( "h2_dcburning_obelisk_break_b" );
    var_2._ID65 = var_0._ID65;
    var_2 thread _ID42259::_ID3111( var_2, "h2_dcburning_obelisk_break_b_anim" );
    thread _ID42237::_ID27077( "scn_obelisk_destruction_a", var_1._ID740 );
    var_0 _meth_80B7();
    wait 10;
    var_1 _meth_80B7();
    var_2 _meth_80B7();
}

_ID48591()
{
    level endon( "leader_orders_everyone_across_street" );
    var_0 = _func_1A1( "destructible_trigger", "targetname" );
    var_1 = level._ID35507;
    var_0 waittill( "trigger" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_3 _ID42407::_ID32628( 0 );
        var_4 = _func_0BA( 4.5, 6.5 );

        if ( _func_0F5( var_0._ID740, var_3._ID740 ) < 90000 )
            var_3 thread _ID42407::_ID14510( var_4 );

        var_3 _ID42407::_ID32628( 0 );
    }

    var_clear_3
    var_clear_0
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
    _ID42237::_ID3294( var_0, ::_meth_828D, 100 );
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
    _ID42237::_ID3350( var_0, ::_unknown_57C3 );
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
    var_0 _unknown_5934();
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
    var_3 = _func_1A2( "ai_mezzanine_target", "targetname" );
    var_0 thread _unknown_3653( var_2, var_3, "player_entering_courtyard2" );
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    _ID42237::_ID14413( "player_in_crowsnest_room" );
    var_4 = var_0._ID29965;
    _ID42237::_ID3350( var_4, ::_unknown_5E29 );
    var_0 _unknown_59A5();
    _ID42237::_ID14402( "latvee_spotlight_deleted" );
}

_ID43166()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    level._ID43166 = _ID42411::_ID35195( "bradley_commerce" );
    level._ID43166 _ID42411::_ID16988();
    _ID42237::_ID14413( "bradley_can_start_firing" );
    var_0 = _func_1A2( "bradley_default_targets", "targetname" );
    level._ID43166 thread _unknown_3669( var_0, "player_entering_commerce" );
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    level._ID43166 _unknown_59F5();
}

_ID52655( var_0 )
{
    var_0 endon( "death" );

    if ( !_func_02F( var_0 ) || !_func_1A7( var_0 ) )
        return;

    var_1 = var_0 _meth_818C( "tag_eye" );
    _func_1C8( "m14_scoped", self._ID740, var_1 );
    _func_01E( self._ID740, var_1, 1 );
    _func_157( _ID42237::_ID16299( "headshot" ), var_0, "tag_eye" );
}

_ID45022()
{
    var_0 = undefined;

    switch ( self._ID1282 )
    {

    }

    if ( _func_02F( var_0 ) )
    {
        return var_0;
        return;
        case "btr80":
        case "zpu_antiair":
    }
}

_ID47551()
{
    _ID42237::_ID14413( "player_commerce_trench_01" );

    if ( _func_03A( "r_dcburning_culldist" ) == 1 )
    {
        _ID42237::_ID14402( "commerce_rappelers_inserting" );
        _ID42237::_ID14402( "commerce_rappelers_rappeling" );
        _ID42237::_ID14402( "commerce_rappelers_done" );
    }
    else
    {
        var_0 = _ID42411::_ID35196( "blackhawk_commerce_rappel" );
        level._ID44605 = var_0._ID29965;
        _ID42237::_ID3350( level._ID44605, ::_unknown_362A );
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
    self _meth_8183( "oblivious" );
    self._ID54743 = 1;
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_1 = var_0._ID70;
    self._ID54401 = undefined;

    if ( _func_02F( var_0._ID1191 ) )
    {
        var_2 = _func_1A2( var_0._ID1191, "targetname" );
        var_3 = var_2;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( _func_02F( var_4._ID31170 ) )
            {
                self._ID19357 = var_4._ID31170;
                self._ID44464 = var_4._ID740;
                break;
            }
        }

        var_clear_2
        var_clear_0
    }

    self waittill( "jumpedout" );
    var_0 _ID42259::_ID3023( self, var_1 );

    if ( !_ID42237::_ID14385( "commerce_rappelers_rappeling" ) )
        _ID42237::_ID14402( "commerce_rappelers_rappeling" );

    var_0 _ID42259::_ID3020( self, var_1 );
    self _meth_80B7();
}

_ID50560( var_0 )
{
    var_1 = var_0._ID44464;
    _ID42234::_ID13611( var_0._ID19357 );
    thread _ID42237::_ID27077( "glass_break", var_1 );
    _func_156( _ID42237::_ID16299( "commerce_window_shatter" ), var_1 );
}

_ID45636()
{
    self endon( "death" );
    self._ID47706 = undefined;
    thread _unknown_37A1( self );
    _ID42237::_ID14421( "player_touching_commerce_lobby_right", "player_touching_commerce_lobby_left" );
    var_0 = _func_1A1( "volume_commerce_lobby_lower", "targetname" );
    var_1 = _func_1A1( "volume_commerce_lobby_upper", "targetname" );
    var_2 = var_0 _ID42407::_ID15547( "axis" );
    var_3 = var_1 _ID42407::_ID15547( "axis" );

    for ( var_4 = undefined; _func_02F( self ) && !_ID42237::_ID14385( "player_entering_top_elevator_area" ); var_2 = var_0 _ID42407::_ID15547( "axis" ) )
    {
        var_4 = _ID42407::_ID3317( var_2, var_3 );
        var_4 = _ID42407::_ID29506( var_4 );

        if ( _func_02F( level._ID46771 ) && _ID42407::_ID20542( var_4, level._ID46771 ) )
            self._ID47706 = level._ID46771;
        else if ( var_4.size > 0 )
            self._ID47706 = _ID42237::_ID16182( level._ID794._ID740, var_4 );

        if ( _func_02F( self._ID47706 ) )
        {
            wait(_func_0BA( 3, 5 ));
            continue;
        }

        wait 0.5;
    }

    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    var_5 = _func_1A2( "latvee_spotlight_targets_upper", "targetname" );

    for ( var_4 = undefined; _func_02F( self ); self._ID47706 = var_5[_func_0B7( var_5.size )] )
        wait(_func_0BA( 2, 4 ));
}

_ID49057( var_0 )
{
    self endon( "death" );
    level._ID46771 = undefined;

    while ( _func_02F( self ) )
    {
        level._ID794 waittill( "damage",  var_2, var_1  );

        if ( !_func_02F( var_2 ) )
            continue;

        if ( _func_02F( var_2._ID1194 ) && var_2._ID1194 == "axis" )
        {
            level._ID46771 = var_2;
            _unknown_6293( 4 );

            if ( level._ID46771 == self )
                level._ID46771 = undefined;
        }
    }
}

_ID45576( var_0, var_1 )
{
    self endon( "death" );

    while ( _func_02F( var_1 ) )
    {
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            var_1._ID53556 = var_3;
            wait(_func_0BA( 3, 6 ));
        }

        var_clear_2
        var_clear_0
    }

    var_5 = var_0;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3 _meth_80B7();
    }

    var_clear_1
    var_clear_0
}

_ID50872()
{
    _ID42237::_ID14413( "player_approaching_bunker_exit" );
    var_0 = _func_1A2( "latvee_convoy_00", "targetname" );

    if ( _func_03A( "r_dcburning_culldist" ) == 1 )
        thread _unknown_645B( var_0, "latvee_convoy_00", 7, 10, 1 );
    else
        thread _unknown_6471( var_0, "latvee_convoy_00", 3.1, 4.8, 1 );

    _ID42237::_ID14413( "approaching_main_trench" );
    wait 2.5;
    _unknown_649E( "latvee_convoy_00" );
    wait 7.0;
    thread _unknown_39E2();
    thread _unknown_39F7();
    thread _unknown_3A0D();
    thread _unknown_3A56();
}

_ID54695( var_0, var_1, var_2 )
{
    var_3 = _func_1C8( "javelin_noimpact", var_0._ID740, var_1._ID740 );
    _func_156( _ID42237::_ID16299( "javelin_muzzle" ), var_0._ID740 );
    var_3 thread _unknown_6147();
    var_3 _meth_81E5( var_2 );
    var_3 _meth_81E9();
    var_2 waittill( "damage" );

    if ( _func_02F( var_2 ) )
        var_2 notify( "death" );
}

_ID44668()
{
    level endon( "player_headed_to_atrium_side_hall" );
    var_0 = _func_1A1( "convoy_javelin_source_org", "targetname" );
    var_1 = _func_1A1( "latvee_goal1", "targetname" );
    var_2 = _ID42411::_ID35196( "latvee_convoy_owned1" );
    wait 26.0;
    _unknown_3A4E( var_0, var_1, var_2 );
}

_ID54065()
{
    level endon( "player_headed_to_atrium_side_hall" );
    var_0 = _func_1A1( "convoy_javelin_source_org", "targetname" );
    var_1 = _func_1A1( "latvee_goal2", "targetname" );
    wait 5.0;
    var_2 = _ID42411::_ID35196( "latvee_convoy_owned2" );
    wait 24.0;
    _unknown_3A84( var_0, var_1, var_2 );
}

bradley_side()
{
    level endon( "player_headed_to_atrium_side_hall" );
    var_0 = _func_1A2( "tank_targets", "targetname" );
    wait 5;
    var_1 = _ID42411::_ID35196( "tank_convoy_shoot" );
    var_1 waittill( "reached_end_node" );
    wait 3.0;
    var_1 thread _unknown_3AFE( var_0, "player_entering_commerce" );
}

bradley_shoot( var_0, var_1 )
{
    if ( _ID42237::_ID14385( var_1 ) )
        return;

    level endon( var_1 );
    var_2 = _func_06A( "script_origin", ( -20919, 6628, -110 ) );
    self _meth_826C( var_2 );

    for (;;)
    {
        var_3 = _ID42237::_ID3320( var_0 );
        var_4 = var_3;

        for ( var_9 = _func_1DA( var_4 ); _func_02F( var_9 ); var_9 = _func_1BF( var_4, var_9 ) )
        {
            var_5 = var_4[var_9];
            var_2 _meth_82B8( var_5._ID740, 2 );
            wait 2.0;
            var_6 = _func_0B9( 2, 6 );

            for ( var_7 = 0; var_7 < var_6; var_7++ )
            {
                var_8 = _func_1B6( "bradley_turret" );
                wait(var_8);
                self _meth_8272( undefined, undefined, undefined, 0.1 );
                _func_192( 0.25, 0.13, self._ID740, 1024 );
            }

            wait(_func_0BA( 1.5, 5 ));
        }

        var_clear_5
        var_clear_0
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
    var_2 = _func_1A2( "ai_mezzanine_target", "targetname" );
    var_1._ID507 = 0;
    var_1._ID511 = 1;
    var_1._ID54743 = 1;
    var_0 thread _unknown_3C39( var_1, var_2, "player_entering_courtyard2" );
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
        var_4 = var_1;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_3 _meth_806C( "manual" );
            var_3 _meth_810F( var_5 );
            wait 1;
            var_0._ID507 = 0;
            wait(_func_0B9( 3, 5 ));
            var_0._ID507 = 1;
            wait(_func_0B9( 3, 5 ));
        }

        var_clear_2
        var_clear_0
    }
}

_ID43857()
{
    thread _unknown_3CCA();
    thread _unknown_3E8B();
    thread _unknown_412A();
    thread _unknown_3CF3();
    thread _unknown_3CFF();
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    thread _unknown_41DE();
}

_ID51285()
{
    _ID42237::_ID14413( "capitol_building_reveal" );
    _unknown_667F( "allies", 128 );
}

remove_latvee_gunners()
{
    var_0 = _func_1A2( "laatpv_gunner", "script_noteworthy" );

    if ( _func_02F( var_0 ) )
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( _func_02F( var_2._ID22746 ) )
                var_2 _ID42407::_ID36519();

            var_2 _meth_80B7();
        }

        var_clear_2
        var_clear_0
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
    thread _unknown_5F17();
    var_0 = [];
    var_1 = undefined;

    if ( _ID42237::_ID14385( "player_touching_commerce_lobby_left" ) )
        var_1 = _func_1A2( "friendlies_commerce_lobby_left", "targetname" );
    else
        var_1 = _func_1A2( "friendlies_commerce_lobby_right", "targetname" );

    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = var_3 _ID42407::_ID35014( 1 );

        if ( _func_02F( var_4 ) )
            var_0 = _ID42237::_ID3293( var_0, var_4 );
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID3350( var_0, ::_unknown_5B21 );
    _ID42237::_ID3350( var_0, ::_unknown_5AFD );
    var_6 = var_0;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];

        if ( !_func_02F( var_4 ) )
            continue;

        var_4._ID86 = 0;
    }

    var_clear_1
    var_clear_0
    thread _unknown_41E8();
    _ID42237::_ID14413( "player_approaching_bottom_elevators" );
    _func_034( "ai_GrenadeThrowAllowedInStairs", 1 );
    thread _ID42407::_ID4422( "bottom_elevators" );
    _ID42237::_ID3350( var_0, _ID42407::_ID36519 );
    var_8 = var_0;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_4 = var_8[var_9];

        if ( !_func_02F( var_4 ) )
            continue;

        var_4._ID86 = 0.1;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID3350( var_0, ::_unknown_5B50 );
    _ID42237::_ID14413( "player_entering_courtyard" );

    if ( _func_03A( "r_dcburning_culldist" ) == 1 )
        _func_08E( 0 );

    thread _unknown_6821( "volume_commerce_lobby_upper", "axis" );
    thread _unknown_682D( "volume_commerce_lobby_lower", "axis" );
    _ID42237::_ID14413( "player_headed_to_atrium_side_hall" );
    var_10 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_10, ::_unknown_58CF );
    _ID42237::_ID14413( "player_entering_commerce_side_hall" );
    thread _unknown_3FA9();
    _ID42237::_ID14402( "stop_elevator_doors" );
    wait 8;
    thread _ID42407::_ID41152( "volume_courtyard_windows", "courtyard_has_been_cleared" );
    _ID42237::_ID14413( "player_heading_up_to_mezzanine" );
    _ID42237::_ID14413( "player_entering_mezzanine_top" );
    thread _ID42407::_ID41152( "volume_commerce_lobby_upper", "mezzanine_top_has_been_cleared" );
    _ID42411::_ID35200( "jets_mezz_01" );
    thread _unknown_3FF6();
    _ID42237::_ID14413( "player_approaching_pavlov_hole" );
    _ID42407::_ID10226( 0, _ID42411::_ID35200, "helis_mezzanine" );
    _ID42234::_ID13611( 60 );
    _ID42237::_ID14413( "player_at_bottom_of_pavlovs_ramp" );
    thread _unknown_67D1( "axis" );
    thread _unknown_3F15();
    thread _unknown_418C();
    _ID42407::_ID4917( "allies" );
    var_11 = _ID42407::_ID3339( _func_1A2( "commerce_allied_fodder_4", "targetname" ), 1 );
    var_12 = _ID42407::_ID3339( _func_1A2( "hostiles_commerce_samsite", "targetname" ), 1 );
    var_13 = _unknown_423E( "samsite_commerce_01", "player_at_top_of_pavlovs_ramp", "commerce_samsite_revealed" );
    var_14 = _func_0C9( "commerce_samsite_nodes", "targetname" );
    var_15 = _ID42237::_ID16182( var_13._ID50308._ID740, var_14 );
    var_14 = _ID42237::_ID3321( var_14, var_15 );
    var_13._ID50308 thread _unknown_4218( var_15 );
    var_13._ID52615 thread _unknown_4222( var_14[0] );
    var_13._ID39235 thread _unknown_423C();
    var_13 thread _unknown_40D9();
    _ID42237::_ID14415( "player_entering_fourth_floor", "player_shot_at_samsite_guys", "player_gawking_at_fourth_floor_guys" );
    _ID42237::_ID14402( "player_shot_at_samsite_guys" );
    _ID42407::_ID4918( "allies" );

    if ( !_ID42237::_ID14385( "player_entering_fourth_floor" ) )
    {
        thread _unknown_4FEE( "dummy_colornodes_pavlov_end" );
        _ID42407::_ID1801( "spawner_hostiles_commerce_floor4", "targetname", level._ID794 );
    }

    _ID42237::_ID3350( var_11, ::_unknown_6761 );
    wait 4;
    thread _ID42407::_ID41152( "volume_commerce_fourth_floor", "floor_four_has_been_cleared" );
    _ID42237::_ID14421( "floor_four_has_been_cleared", "player_headed_to_fifth_floor" );
    _ID42237::_ID14413( "player_headed_to_fifth_floor" );
    _ID42407::_ID4917( "allies" );
    thread _unknown_6989( "all" );
}

ceiling_tile_fall()
{
    var_0 = _func_1A1( "ceiling_tile01", "targetname" );
    _ID42237::_ID14413( "ceiling_tile_trigger" );
    var_0 _meth_82CC( var_0._ID740, ( 0, 0, 0 ) );
}

_ID44551()
{
    var_0 = _func_1A2( "mezzanine_trenches", "targetname" );
    var_1 = _func_1A2( "ai_mezzanine_target", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID1947, ::_unknown_4175, var_1 );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    _unknown_419C();
    thread _unknown_41AA( var_0 );
}

_ID51402( var_0 )
{
    level endon( "player_at_top_of_pavlovs_ramp" );
    var_1 = undefined;
    var_2 = var_0[_func_0B7( var_0.size )];
    var_3 = 1;

    for (;;)
    {
        if ( !var_3 )
        {
            while ( var_2 == var_1 )
                var_2 = var_0[_func_0B7( var_0.size )];
        }
        else
            var_3 = 0;

        if ( _func_1A7( self ) )
            self _meth_8173( var_2 );

        var_1 = var_2;
        wait(_func_0B9( 5, 8 ));
    }
}

_ID52861()
{
    var_0 = _func_1A2( "mezzanine_trenches_run", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
    thread _unknown_4202( var_0 );
}

_ID53715( var_0 )
{
    _ID42237::_ID14413( "player_at_top_of_pavlovs_ramp" );
    _ID42407::_ID2265( var_0, 512 );
}

_ID45319()
{
    _ID42237::_ID14413( "samsite_allow_C4_spawn" );
    var_0 = _func_1A1( "tarp_collision", "script_noteworthy" );
    var_0 _meth_82C9();
    var_0 _meth_805F();
    var_1 = _ID42237::_ID16640( "c4_slamraam", "script_noteworthy" );
    level._ID46915 = self._ID4851;
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        level._ID45155[level._ID45155.size] = self._ID4851 _ID43691::_ID53929( undefined, undefined, undefined, var_3._ID740, undefined, undefined, var_3._ID70, ::_unknown_42D7, var_3._ID31151, 30, undefined, var_3._ID65 );
    }

    var_clear_2
    var_clear_0
    self._ID4851 waittill( "c4_detonation" );
    self._ID4851 notify( "death" );
    _ID42237::_ID14402( "slamraam_c4_detonated" );
    self._ID4851 _meth_80B8( "vehicle_slamraam_destroyed" );
    _func_156( _ID42237::_ID16299( "c4_slamraam_explosion" ), self._ID4851._ID740 );
    thread _ID42237::_ID27077( "exp_slamraam_destroyed", self._ID4851._ID740 );
    self._ID39235 _meth_80B7();
    _func_18F( self._ID4851._ID740 + ( 0, 0, 96 ), 180, 1000, 50 );
    var_5 = _ID42237::_ID16640( "damage_window", "targetname" );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        _func_18F( var_7._ID740, 50, 35, 35, level._ID794 );
    }

    var_clear_2
    var_clear_0
    var_9 = _func_15B( _ID42237::_ID16299( "fire_tarp_dcburning" ), self._ID4851._ID740 );
    _func_15C( var_9 );
    _func_192( 0.6, 1.2, self._ID4851._ID740, 1600 );

    if ( _func_0F3( self._ID4851._ID740, level._ID794._ID740 ) < 2048 )
        level._ID794 _meth_80B4( "damage_heavy" );

    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    var_9 _meth_80B7();
}

_ID47942()
{
    return level._ID46915;
}

_ID44560()
{
    _ID42237::_ID14413( "player_approaching_bottom_elevators" );
    var_0 = _func_1A2( "atrium_guys", "targetname" );
    var_1 = [];
    var_2 = undefined;
    var_3 = undefined;
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
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

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_entering_courtyard" );
    var_1[0]._ID29359 thread _ID42259::_ID3020( var_1[0], var_1[0]._ID70 );
    var_1[1]._ID29359 thread _ID42259::_ID3020( var_1[1], var_1[1]._ID70 );
    var_3 thread _ID42407::_ID27081( "scn_dcburning_soldier_pull_wounded", "J_Head" );
    wait 0.05;
    var_1[0] _meth_8120( level._ID30895["generic"][var_1[0]._ID70], 0.5 );
    var_1[1] _meth_8120( level._ID30895["generic"][var_1[1]._ID70], 0.5 );
    _ID42237::_ID3350( var_1, ::_unknown_45A6 );
    _ID42237::_ID14421( "atrium_guys_at_end_of_anim", "player_entering_courtyard2" );
    var_7 = _func_1A1( "atrium_bullet", "targetname" );
    var_8 = var_3 _meth_818C( "tag_eye" );
    thread _ID42237::_ID27077( "scn_dcburning_soldier_death", var_8 );
    var_9 = _func_119( var_8 - var_7._ID740 );
    thread _ID42237::_ID27077( "scn_dcburning_gunshot_npc_close", var_7._ID740 );
    _func_156( _ID42237::_ID16299( "headshot" ), var_8, var_9 );
    _func_1C8( "m14_scoped", var_7._ID740, var_8 );
    _func_01E( var_7._ID740, var_8, 1 );
    var_10 = var_1;

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_2 = var_10[var_11];
        var_2 _ID42407::_ID36519();
        var_2 _meth_8058();
    }

    var_clear_1
    var_clear_0
    var_12 = _func_1A1( "atrium_drag_blocker", "targetname" );
    var_12 _ID42407::_ID18512();
    var_13 = undefined;
    var_14 = _func_1A2( "hostiles_courtyard", "targetname" );
    var_15 = var_14;

    for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
    {
        var_16 = var_15[var_17];

        if ( var_16._ID170 == "actor_enemy_airborne_SMG" || var_16._ID170 == "actor_enemy_airborne_AR" && !_ID42407::_ID27291( var_16 ) )
        {
            var_13 = var_16;
            break;
        }
    }

    var_clear_2
    var_clear_0
    var_18 = _func_0C8( "teleport_node", "script_noteworthy" );

    if ( _func_02F( var_13 ) )
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
    var_0 = _func_1A1( "samsite_chater_org", "targetname" );
    var_1 = var_0._ID740;
    var_2 = "player_shot_at_samsite_guys";
    level endon( var_2 );

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        _unknown_7115( "dcburn_ra1_acquiredtwo", var_1, var_2 );
        _unknown_711F( "dcburn_ra2_lockon", var_1, var_2 );
        wait 1;
        _unknown_712B( "dcburn_ra3_missilelocked", var_1, var_2 );
        wait 0.5;
        _unknown_7139( "dcburn_ra1_2moresouthbound", var_1, var_2 );
        _unknown_7143( "dcburn_ra2_firemissile", var_1, var_2 );
        _unknown_714C( "dcburn_ra3_firingmissile", var_1, var_2 );
        wait 1.5;
        _unknown_715B( "dcburn_ra1_movingnorth", var_1, var_2 );
        wait 1;
        _unknown_7167( "dcburn_ra2_10degrees", var_1, var_2 );
    }
}

_ID43076( var_0 )
{
    self endon( "death" );
    self._ID512 = 1;
    thread _unknown_4888();
    _ID42237::_ID41098( "damage", "alerted" );
    _ID42407::_ID3136();
    self._ID512 = 0;
    self._ID511 = 0;
    self._ID511 = 0;
    self notify( "alerted" );
    self _meth_81B1( var_0 );
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
    self _meth_82BF( self._ID65 + ( 0, -50, 0 ), var_0, 2, 2 );
    thread maps\dcburning_aud::_ID47236();
    wait(var_0 / 2);
    var_1 = _func_1A1( "slamraam_missile_target", "targetname" );

    while ( !_ID42237::_ID14385( "player_approaching_fourth_floor_sam" ) )
    {
        self _meth_802A( "projectile_slamraam_missile", self._ID23757[0] );
        _func_192( 0.3, 0.5, self._ID740, 1600 );
        var_2 = _func_1C8( "slamraam_missile_dcburning", self _meth_818C( self._ID23757[0] ), var_1._ID740 );
        thread maps\dcburning_aud::_ID53638( var_2 );
        self._ID23757 = _ID42237::_ID3321( self._ID23757, self._ID23757[0] );

        if ( self._ID23757.size < 1 )
            break;

        wait(_func_0BA( 0.3, 2 ));
    }
}

_ID48716( var_0, var_1, var_2 )
{
    var_3 = _func_1A2( var_0, "targetname" );
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    var_7 = [];
    var_8 = var_3;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( _func_1A8( var_9 ) )
        {
            var_7[var_7.size] = var_9;
            continue;
        }

        if ( var_9._ID172 == "script_model" )
        {
            switch ( var_9._ID669 )
            {

            }

            case "vehicle_slamraam_base":
            case "vehicle_slamraam_launcher_no_spike":
            case "slamraam_tarp":
        }
    }

    var_clear_2
    var_clear_0
    var_11 = _ID42407::_ID3339( var_7, 1 );
    var_12 = var_11;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13._ID49 = 1;
        var_13._ID511 = 1;
        var_13._ID507 = 1;
    }

    var_clear_2
    var_clear_0
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
    var_16 = var_6._ID23757;

    for ( var_18 = _func_1DA( var_16 ); _func_02F( var_18 ); var_18 = _func_1BF( var_16, var_18 ) )
    {
        var_17 = var_16[var_18];
        var_6 _meth_801D( "projectile_slamraam_missile", var_17, 1 );
    }

    var_clear_2
    var_clear_0
    var_19 = _func_1A5();
    var_19._ID50308 = var_11[0];
    var_19._ID52615 = var_11[1];
    var_19._ID39235 = var_6;
    var_19._ID4851 = var_4;
    var_20 = _func_1A1( "tarp_anim_node", "targetname" );
    var_20 thread _unknown_4AB2( var_15, var_1, var_2, var_5 );
    return var_19;
}

_ID44010( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A1( "tarp_guys_anim_node", "targetname" );
    thread _ID42259::_ID3018( var_3, "pulldown" );
    var_4 _ID42259::_ID3016( var_0, "pulldown" );
    _ID42237::_ID14413( var_1 );
    var_3 _ID42407::_ID10226( 2, _ID42407::_ID31877, "no_return_tarp_removal" );
    thread _ID42259::_ID3111( var_3, "pulldown" );
    var_4 thread _ID42259::_ID3099( var_0, "pulldown" );
    thread _unknown_4B21( var_3, var_0 );
    _ID42237::_ID14402( var_2 );
}

_ID48630( var_0, var_1 )
{
    var_0 endon( "no_return_tarp_removal" );
    _ID42237::_ID14413( "player_shot_at_samsite_guys" );
    _ID42237::_ID14402( "dead_tarp_guys" );
    var_0 _meth_814B();
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_814B();
    }

    var_clear_2
    var_clear_0
}

_ID44531()
{
    self endon( "death" );
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID25510 = self._ID452;
    self._ID452 = 16;
    thread _unknown_5119( "player_shot_at_samsite_guys" );
    thread _unknown_4BAD();
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
    thread _unknown_6784();
}

_ID54189( var_0 )
{
    var_1 = "dcburning_elevator_corpse_idle_A";
    var_2 = "dcburning_elevator_corpse_bump_A";
    self._ID49 = 0;
    self._ID11572 = 1;
    self._ID31276 = 0;
    _ID42407::_ID17509();
    self _meth_80C5( 0 );
    self._ID511 = 1;
    self _meth_8041( "", &"" );
    var_3 = var_0;
    var_4 = 0;
    self _meth_814B();

    while ( !_ID42237::_ID14385( "stop_elevator_doors" ) )
    {
        var_3 thread _ID42259::_ID3025( self, var_1, "stop_idle" );
        self waittill( "doors_closing" );
        var_3 notify( "stop_idle" );

        if ( _ID42237::_ID14385( "player_looking_at_elevator" ) && _func_02F( var_4 ) )
        {
            var_4 = undefined;
            var_3 _ID42259::_ID3020( self, "dcburning_elevator_corpse_trans_A_2_B" );
            var_1 = "dcburning_elevator_corpse_idle_B";
            var_2 = "dcburning_elevator_corpse_bump_B";
        }

        var_3 _ID42259::_ID3020( self, var_2 );
    }

    self _meth_80B7();
}

_ID44433()
{
    var_0 = _func_1A1( "elevator_dude", "targetname" );
    var_1 = var_0 _ID42407::_ID12076();
    var_1 thread _unknown_4C9B( var_0 );
    var_2 = _func_1A1( "elevator_door_left", "targetname" );
    var_3 = _func_1A1( "elevator_door_right", "targetname" );
    var_2._ID36155 = var_2._ID740;
    var_3._ID36155 = var_3._ID740;
    var_4 = _func_1A1( "elevator_clip_left", "targetname" );
    var_5 = _func_1A1( "elevator_clip_right", "targetname" );
    var_4._ID36155 = var_4._ID740;
    var_5._ID36155 = var_5._ID740;
    var_6 = 28;
    var_7 = -28;
    var_8 = 2;
    var_9 = _func_1A1( "musak_org", "targetname" );
    var_9 _meth_807C( "elev_musak_loop" );

    while ( !_ID42237::_ID14385( "stop_elevator_doors" ) )
    {
        thread _ID42237::_ID27077( "elev_bell_ding", var_2._ID740 );
        thread _ID42237::_ID27077( "elev_door_close", var_2._ID740 );
        var_2 _meth_82BA( var_6, var_8, var_8 / 2 );
        var_3 _meth_82BA( var_7, var_8, var_8 / 2 );
        var_4 _meth_82BA( var_6, var_8, var_8 / 2 );
        var_5 _meth_82BA( var_7, var_8, var_8 / 2 );
        wait(var_8 - 0.25);
        var_1 notify( "doors_closing" );
        wait 0.25;
        thread _ID42237::_ID27077( "elev_door_open", var_2._ID740 );
        var_2 _meth_82B8( var_2._ID36155, var_8, var_8 / 2, var_8 / 2 );
        var_3 _meth_82B8( var_3._ID36155, var_8, var_8 / 2, var_8 / 2 );
        var_4 _meth_82B8( var_4._ID36155, var_8, var_8 / 2, var_8 / 2 );
        var_5 _meth_82B8( var_5._ID36155, var_8, var_8 / 2, var_8 / 2 );
        wait(var_8);
        wait 1.25;
    }

    var_9 _meth_80B2();
    var_9 _meth_80B7();
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
    level._ID49792 _unknown_7247( "dcburn_cpd_capitolbuild" );
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
    thread _unknown_4FDD();
}

_ID53278()
{
    _ID42237::_ID14413( "obj_commerce_defend_snipe_complete" );
    var_0 = _func_1A2( "bmp_flood_south", "targetname" );
    thread _unknown_5003( var_0 );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_complete" );
}

_ID47598( var_0 )
{
    level endon( "obj_commerce_defend_javelin_complete" );

    for (;;)
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            thread _unknown_503D( var_2 );
        }

        var_clear_2
        var_clear_0
        wait(_func_0BA( 40, 41 ));
    }
}

_ID52488( var_0 )
{
    if ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
        return;

    level endon( "obj_commerce_defend_javelin_complete" );
    wait(_func_0BA( 40, 41 ));
    var_1 = var_0 _ID42411::_ID35194();
    _func_0A2( var_1, ( 0, 0, 0 ) );
    _func_0AD( var_1, 1 );
    _func_0AC( var_1, "top" );
    var_1 thread _unknown_6759();
    var_1 endon( "death" );
    var_1 waittill( "reached_end_node" );
    var_1 notify( "deleted_through_script" );
    var_1 _meth_80B7();
}

_ID46175()
{
    thread _unknown_50CC();
    thread _unknown_518C();
    thread _unknown_50DC();
    _ID42237::_ID14413( "player_approaching_crowsnest" );
    thread _unknown_51E7();
}

_ID45989()
{
    _ID42237::_ID14413( "start_music_to_crowsnest" );
    thread _ID42407::_ID24577( "mus_dcburning_evilcrowsnest_approach", 198 );
}

_ID44146()
{
    _ID42237::_ID14413( "player_at_commerce_crows_floor" );
    _unknown_738A( "colornodes_commerce_to_crowsnest", "script_noteworthy", 1 );
    _ID42234::_ID13611( "battlefield_smk" );
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    thread _ID42407::_ID4422( "elevator_top" );
    thread _unknown_75B1( "all" );

    if ( _func_02F( level._ID52924 ) )
        _ID42237::_ID3350( level._ID52924, ::_unknown_6F3D );

    if ( _func_02F( level._ID52549 ) )
        _ID42237::_ID3350( level._ID52549, ::_unknown_6F4E );

    var_0 = _func_1A1( "volume_commerce_sector_2", "targetname" );
    var_1 = _func_1A1( "volume_commerce_sector_3", "targetname" );
    var_2 = _func_1A1( "flare_dynamic_01", "targetname" );
    _ID42237::_ID14421( "player_approaching_flare_moment", "player_looking_at_flare_moment" );
    var_3 = _ID42407::_ID3339( _func_1A2( "commerce_flare_guys", "targetname" ), 1 );
    _ID42237::_ID14413( "player_approaching_crowsnest" );
    thread _unknown_5213();
    var_4 = _ID42411::_ID35200( "helis_ambient_crowsnest" );
    var_5 = _ID42411::_ID35200( "helis_crows_snipe" );
    _ID42237::_ID3350( var_5, ::_unknown_5216 );

    if ( _func_02F( level._ID46159 ) )
        _ID42237::_ID3350( level._ID46159, ::_unknown_5231 );

    thread _unknown_7651( "allies", 128 );
}

animate_wires()
{
    self endon( "death" );
    var_0 = _func_1A2( "animated_wires", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID3189 = "wire";
        var_2 _ID42259::_ID32556();
        var_2 thread _ID42259::_ID3044( var_2, var_2._ID669 );
    }

    var_clear_2
    var_clear_0
}

_ID53471()
{
    self endon( "death" );
    _ID42237::_ID14413( "obj_commerce_defend_crow_given" );
    thread _unknown_7A17( "start" );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    thread _unknown_5B62();
}

_ID49450()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_shot_at_crowsnest_guys" );
    thread _unknown_7A3B( "start" );
}

_ID43663()
{
    var_0 = _ID42237::_ID16638( "obj_commerce_sector_3", "targetname" );
    var_1 = var_0._ID740;
    var_2 = "player_shot_at_crowsnest_guys";
    level endon( var_2 );

    while ( !_ID42237::_ID14385( var_2 ) )
    {
        _unknown_7A0F( "dcburn_ra3_gridsquare", var_1, var_2 );
        _unknown_7A19( "dcburn_ra1_dontworry", var_1, var_2 );
        wait 0.5;
        _unknown_7A27( "dcburn_ra2_60kph", var_1, var_2 );
        _unknown_7A31( "dcburn_ra3_standbyforlaunch", var_1, var_2 );
        wait 0.5;
        _unknown_7A3F( "dcburn_ra1_bygreencar", var_1, var_2 );
        _unknown_7A49( "dcburn_ra2_trackingitnow", var_1, var_2 );
        wait 0.75;
        _unknown_7A57( "dcburn_ra3_tooeasy", var_1, var_2 );
        _unknown_7A61( "dcburn_ra1_confirmhostile", var_1, var_2 );
        _unknown_7A6A( "dcburn_ra2_25kph", var_1, var_2 );
        _unknown_7A74( "dcburn_ra3_range572meters", var_1, var_2 );
        _unknown_7A7E( "dcburn_ra1_destroyit", var_1, var_2 );
        _unknown_7A88( "dcburn_ra2_clearedtoengage", var_1, var_2 );
        _unknown_7A91( "dcburn_ra3_runfromus", var_1, var_2 );
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
    thread _unknown_5508();
    thread _unknown_55D5();
    thread _unknown_69F5();
    thread _unknown_6A2D();
    thread _unknown_59F7();
    _ID42237::_ID14413( "start_crow_armor_sequence" );
    thread _unknown_5B01();
}

_ID47006()
{
    _unknown_76A2( "colornodes_crowsnest", "script_noteworthy", 1 );
    var_0 = _func_1A1( "volume_crowsnest", "targetname" );
    _ID42237::_ID14413( "player_approaching_crowsnest" );
    var_1 = _ID42407::_ID3339( _func_1A2( "hostiles_crowsnest", "targetname" ), 1 );
    thread _unknown_56B8();
    thread _unknown_7702( var_1, "crowsnest_has_been_cleared" );
    _ID42237::_ID3350( var_1, ::_unknown_5888, "player_shot_at_crowsnest_guys" );
    _ID42237::_ID3350( var_1, ::_unknown_58DF );
    _ID42237::_ID3350( level._ID35507, ::_unknown_55FB );
    _ID42237::_ID14413( "player_shot_at_crowsnest_guys" );
    thread _unknown_55DD();
    var_2 = _ID42411::_ID35199( "tanks_crowsnest_wave1" );
    thread _unknown_5DAF( var_2 );
    _ID42237::_ID3350( var_2, ::_unknown_5E1D );
    _ID42237::_ID3350( level._ID35507, ::_unknown_61CE, "crowsnest_has_been_cleared" );
    _ID42237::_ID14413( "crowsnest_has_been_cleared" );
    thread _ID42407::_ID14403( "obj_commerce_complete", 1 );
    var_3 = _func_1A1( "colornodes_crowsnest", "script_noteworthy" );
    var_3 notify( "trigger",  level._ID794  );
    thread _unknown_6005( "dummy_colornodes_crows1" );
    thread _unknown_600D( "dummy_colornodes_crows2" );
    _ID42237::_ID14413( "latvee_spotlight_deleted" );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_given" );
    var_4 = _ID42411::_ID35200( "jets_crow_01" );
}

_ID47136()
{
    var_0 = _func_0C8( "foley_crowsnest_radio", "script_noteworthy" );
    var_1 = _ID42237::_ID16638( "foley_anim_origin", "targetname" );
    level._ID44035 _meth_81B1( var_0 );
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
        level._ID44035 thread _unknown_7822( "dcburn_mcy_scanfortargets" );
        level._ID44035 thread _ID42259::_ID37173( 6 );
    }

    _ID42237::_ID14402( "foley_is_done_talking" );
}

_ID46542()
{
    self endon( "death" );
    level endon( "player_shot_at_crowsnest_guys" );
    _ID42237::_ID14413( "player_approaching_crowsnest_door" );
    var_0 = _func_1A1( "player_in_crowsnest_room", "targetname" );

    while ( !_ID42237::_ID14385( "player_shot_at_crowsnest_guys" ) )
    {
        wait 0.1;

        if ( !_func_02F( self ) )
            return;

        if ( self _meth_80B0( var_0 ) )
            break;
    }

    thread _unknown_576B();
    _ID42237::_ID14402( "player_shot_at_crowsnest_guys" );
}

_ID43826()
{
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2 ) )
            continue;

        var_2._ID511 = 0;
    }

    var_clear_2
    var_clear_0
}

_ID51469()
{
    var_0 = _func_1A1( "model_barrett", "targetname" );
    level._ID53428 = _func_06A( "script_origin", var_0._ID740 );
    var_1 = _func_06A( "script_model", var_0._ID740 );
    var_1 _meth_80B8( "weapon_m82_MG_Setup_obj" );
    var_1._ID65 = var_0._ID65;
    var_0._ID3189 = "barrett";
    var_0 _ID42259::_ID32556();
    var_1._ID3189 = "barrett";
    var_1 _ID42259::_ID32556();
    level._ID53428 _ID42259::_ID3018( var_0, "barrett_in" );
    level._ID53428 _ID42259::_ID3018( var_1, "barrett_in" );
    var_1 _meth_805A();
    return [ var_0, var_1 ];
}

_ID47149()
{
    _ID42237::_ID14413( "player_approaching_crowsnest2" );
    thread _unknown_5B71();
    var_0 = _unknown_5835();
    var_1 = var_0[0];
    var_2 = var_0[1];
    var_clear_2
    level._ID49081 = _func_1A2( "vehicles_crowsnest_defend", "targetname" );
    _ID42237::_ID3350( level._ID49081, ::_unknown_5CA8 );
    thread _unknown_5BB6();
    level._ID47026 = _ID42407::_ID3339( _func_1A2( "hostiles_ww2_barret", "targetname" ), 1 );
    _ID42237::_ID3350( level._ID47026, ::_unknown_6CD2 );
    _ID42237::_ID3350( level._ID47026, ::_unknown_6EA9 );
    var_3 = level._ID47026;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !_func_02F( var_4._ID22746 ) || !var_4._ID22746 )
            var_4 _ID42407::_ID22746();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "crowsnest_has_been_cleared" );
    _ID42237::_ID3350( level._ID47026, _ID42407::_ID36519 );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_given" );
    thread _unknown_5ADA();
    thread _unknown_5CFD( var_1, var_2 );
    thread _unknown_5BC0();
    _ID42237::_ID14425( "player_is_on_turret", 5 );
    thread _unknown_5BB8();
    _ID42237::_ID14413( "only_2_sniper_enemies_remaining" );
    thread _unknown_599E();
    _ID42237::_ID14388( "can_talk" );
    _ID42407::_ID28864( "dcburn_hqr_stayfrosty" );
    _ID42237::_ID14402( "can_talk" );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_complete" );
    thread _unknown_5B56();
    thread _ID42407::_ID4433( 1 );
    thread _ID42407::_ID14403( "obj_commerce_defend_crow_given", 3 );
    _ID42237::_ID3350( level._ID35507, ::_unknown_64AA, "perimeter_enemies_have_retreated" );
    _ID42407::_ID4918( "allies" );
    thread _unknown_7CBE( "dummy_spawner_crowsnest_assault_guys_wave1" );
    thread _unknown_5B9C();
    thread _unknown_5A17();
    level._ID46720 = 0;
    _unknown_7A29( "colornodes_crowsnest_surrounded", "script_noteworthy", 1 );
    var_6 = _func_1A1( "colornodes_crowsnest_surrounded", "script_noteworthy" );
    var_6 notify( "trigger",  level._ID794  );
    _ID42237::_ID14413( "player_killed_enough" );
    _ID42237::_ID14402( "start_crow_armor_sequence" );
    _ID42237::_ID14402( "obj_commerce_defend_crow_complete" );
    thread _ID42407::_ID4422( "defend_crow_complete" );
    _unknown_7DAF( 12 );
    var_7 = _func_0DE( "axis" );
    thread _ID42407::_ID2265( var_7, 512 );
    _ID42237::_ID3350( var_7, ::_unknown_5A9E );
}

_ID44695()
{
    level endon( "player_getting_on_minigun" );
    _ID42237::_ID14413( "player_abandoning_crowsnest" );
    _func_034( "ui_deadquote", &"DCBURNING_MISSIONFAIL_CROWSNEST_SNIPE" );
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
            level._ID794 _meth_8057( 20 / level._ID794._ID255, level._ID794._ID740 );
            level._ID794 _meth_80A1( "bullet_large_flesh_plr" );
        }

        wait(_func_0BA( 2, 3 ));
    }
}

_ID45325()
{
    wait 3;
    var_0 = 0;

    while ( _ID42237::_ID14385( "player_is_on_turret" ) )
    {
        level._ID794 _meth_8057( 20 / level._ID794._ID255, level._ID794._ID740 );
        level._ID794 _meth_80A1( "bullet_large_flesh_plr" );
        wait(_func_0BA( 1, 2 ));
        var_0++;

        if ( var_0 > 3 )
            break;
    }

    if ( _ID42237::_ID14385( "player_is_on_turret" ) )
    {
        var_1 = _ID42237::_ID16638( "obj_commerce_defend_javelin", "targetname" );
        _func_074( "fraggrenade", var_1._ID740 + ( 0, 0, 144 ), var_1._ID740 + ( 0, 0, 32 ) );
    }
}

_ID53876()
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    self notify( "stop_seeking" );
    var_0 = _ID42237::_ID16638( "obj_commerce_sector_1d", "targetname" );
    self _meth_81B2( var_0._ID740 );
}

_ID53643()
{
    level endon( "player_killed_enough" );

    if ( !_func_1A7( self ) )
        return;

    while ( _func_1A7( self ) )
    {
        self waittill( "death",  var_0  );

        if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
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
    var_1 = _func_1A2( "friendlies_crowsnest_stage", "targetname" );
    var_0[0] thread _unknown_5C2F( var_1[0] );
    var_0[1] thread _unknown_5C39( var_1[1] );
}

_ID51115( var_0 )
{
    self._ID50645 = [];
    var_1 = var_0 _ID42237::_ID15808();
    var_2 = var_0 _ID42407::_ID15811();
    _ID42237::_ID3350( var_2, ::_unknown_5D0F, self );
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

    _unknown_5DE5();

    if ( _ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) )
        return;

    var_4 = undefined;
    self._ID29359 = var_0;
    var_5 = "stinger";
    var_6 = "weapon_stinger";
    var_7 = "javelin_muzzle";

    if ( var_0._ID70 == "stinger_idle" )
    {
        var_4 = _func_1A1( "volume_stinger_safezone", "targetname" );
        _unknown_7317();
    }
    else
    {
        var_4 = _func_1A1( "volume_javelin_safezone", "targetname" );
        var_3 = 1;
        self._ID70 = var_0._ID70;
        _unknown_733B();
        var_5 = "javelin_dcburn";
        var_7 = "javelin_muzzle";
        var_6 = "weapon_javelin_sp";
    }

    self _meth_805A();
    self._ID29359 _ID42259::_ID3023( self, self._ID44964 );
    self _meth_8059();
    var_8 = undefined;
    var_9 = undefined;
    var_10 = undefined;
    self _meth_801D( var_6, "TAG_INHAND", 1 );
    var_11 = 8;
    self._ID511 = 1;

    while ( !_ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) )
    {
        var_11 = _func_0BA( 6, 9 );
        self._ID29359 thread _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
        _ID42237::_ID41123( "new_target", var_11 );
        self._ID29359 notify( "stop_idle" );
        self._ID29359 thread _ID42259::_ID3020( self, self._ID50813 );
        self waittillmatch( "single anim",  "fire_weapon"  );
        var_8 = _unknown_5E3B( var_1 );

        if ( _func_02F( var_8 ) && !level._ID794 _meth_80B0( var_4 ) )
        {
            var_10 = self _meth_818C( "tag_inhand" );
            var_9 = _func_1C8( var_5, var_10, var_8._ID740 );
            var_9 _meth_81E5( var_8 );

            if ( var_3 )
            {
                var_9 _meth_81E9();
                _func_157( _ID42237::_ID16299( var_7 ), self, "TAG_FLASH" );
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
    self _meth_802A( var_6, "TAG_INHAND" );
    self._ID29359 = undefined;
    self._ID50645 = undefined;
}

_ID48097( var_0 )
{
    if ( _func_0F3( var_0, level._ID794._ID740 ) > 64 )
        return 1;
    else
        return 0;
}

_ID45040()
{

}

_ID43727( var_0 )
{
    if ( !_func_02F( self._ID50645 ) )
        return var_0[_func_0B7( var_0.size )];

    if ( self._ID50645.size == 0 )
        return var_0[_func_0B7( var_0.size )];

    self._ID50645 = _ID42407::_ID29506( self._ID50645 );

    if ( level._ID53717 > 0 && level._ID51365 && self._ID50645.size > 0 )
        return self._ID50645[0];
    else
        return var_0[_func_0B7( var_0.size )];
}

_ID43306( var_0 )
{
    level endon( "obj_commerce_defend_javelin_complete" );
    var_0 endon( "stop_shooting_stingers_and_javs" );
    self endon( "death" );

    while ( !_ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) && _func_02F( var_0._ID50645 ) )
    {
        self waittill( "trigger",  var_1  );

        if ( !_func_02F( var_1 ) )
            break;

        if ( !_func_02F( var_0._ID50645 ) )
            break;

        var_0._ID50645 = _ID42237::_ID3293( var_0._ID50645, var_1 );
        var_0 notify( "new_target" );
        wait 2;

        if ( _func_02F( var_1 ) )
            var_0._ID50645 = _ID42237::_ID3321( var_0._ID50645, var_1 );

        if ( _ID42237::_ID14385( "only_1_javelin_enemies_remaining" ) || _ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
            break;
    }
}

_ID47442()
{
    var_0 = _func_0C9( "crow_nodes_drone_fire", "targetname" );
    var_1 = _func_1A1( "hostiles_fodder_crowsnest", "targetname" );
    level._ID48019 = var_1 _ID42407::_ID35014();
    var_2 = [];
    var_2[0] = level._ID44035;
    var_2[1] = level._ID49792;
    var_3 = var_2;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];
        var_4 _ID42407::_ID10871();
        var_5 = _ID42237::_ID16276( level._ID794._ID740, var_0 );
        var_0 = _ID42237::_ID3321( var_0, var_5 );
        var_4._ID381 = 0;
        var_4._ID452 = 16;
        var_4 _meth_81B1( var_5 );
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID3350( var_2, ::_unknown_6080 );
}

_ID50457()
{
    self endon( "stop_shooting_at_drones" );

    for (;;)
    {
        wait(_func_0BA( 3, 6 ));
        self._ID507 = 1;
        wait(_func_0BA( 3, 6 ));
        self._ID507 = 0;
    }
}

_ID47057()
{
    if ( _func_02F( level._ID48019 ) )
        level._ID48019 _unknown_7F57();

    var_0 = [];
    var_0[0] = level._ID44035;
    var_0[1] = level._ID49792;
    _ID42237::_ID3350( var_0, ::_unknown_60D4 );
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

        level._ID49792 _unknown_7FCA( "dcburn_cpd_inperimeter" );
        wait(_func_0BA( 8, 14 ));

        if ( _ID42237::_ID14385( "player_killed_enough" ) )
            break;

        level._ID49792 _unknown_7FE8( "dcburn_cpd_takingfire" );
        wait(_func_0BA( 8, 14 ));

        if ( _ID42237::_ID14385( "player_killed_enough" ) )
            break;

        level._ID49792 _unknown_8006( "dcburn_cpd_hostatsix" );
        wait(_func_0BA( 8, 14 ));
    }
}

_ID46701( var_0 )
{
    self endon( "alerted" );
    thread _unknown_61A3();
    wait 0.5;
    _ID42237::_ID41068( "damage", "death", "shot_at" );
    _ID42237::_ID14402( var_0 );

    if ( _func_02F( self ) )
        thread _unknown_77DE();
}

_ID47179()
{
    var_0 = 262144;
    self endon( "death" );
    self endon( "alerted" );
    self _meth_8043( "grenade danger" );
    self _meth_8043( "gunshot" );
    self _meth_8043( "silenced_shot" );
    self _meth_8043( "bulletwhizby" );
    self _meth_8043( "projectile_impact" );
    wait 0.5;

    while ( _func_1A7( self ) )
    {
        self waittill( "ai_event",  var_1  );

        if ( var_1 == "grenade danger" || var_1 == "damage" || var_1 == "projectile_impact" || var_1 == "explode" )
            break;

        if ( _func_0F5( self._ID740, level._ID794._ID740 ) > var_0 )
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
    thread _unknown_78C2();
}

_ID50319()
{
    level endon( "obj_commerce_defend_snipe_complete" );
    var_0 = 4;

    if ( level._ID15361 == 2 || level._ID15361 == 3 )
        var_0 = 0.1;

    var_1 = level._ID47026;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_1A7( var_2 ) )
        {
            var_2._ID53511 = 1;
            wait(var_0);
        }
    }

    var_clear_2
    var_clear_0
}

_ID52094()
{
    var_0 = _func_1A1( "volume_crowsnest", "targetname" );
    level._ID52350 = _func_03D();
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

        _unknown_83DB();
        _ID42237::_ID14413( "can_start_crow_nags" );

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
            break;

        if ( !level._ID794 _meth_80B0( var_0 ) && _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "player_is_on_turret" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _unknown_81F8( "stay_in_nest_nag_" + var_3 );
            var_3++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !_ID42237::_ID14385( "player_is_on_turret" ) && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _unknown_8230( "barret_nag_" + var_1 );
            var_1++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !_unknown_8471() && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _unknown_8264( "barret_shoot_nag_" + var_5 );
            var_5++;
            _ID42237::_ID14402( "can_talk" );
        }
    }
}

_ID43835()
{
    var_0 = _func_1A1( "crowsnest_seaknight_01", "targetname" );
    var_1 = _func_1A1( "crowsnest_seaknight_02", "targetname" );
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
    var_2 _meth_80D1( &"DCBURNING_INFO_EVAC_SITE_HEALTH" );
    var_3 = _ID42313::_ID9220( "default", 1.5 );
    var_3 _ID42313::_ID32753( "TOP", undefined, 45, 30 );
    var_3._ID196 = var_1;
    var_3._ID55 = 0;

    if ( _func_039( "dc_debug" ) == "1" )
    {
        var_3 _meth_808B( 1 );
        var_2 _meth_808B( 1 );
        var_2._ID55 = 1;
        var_3._ID55 = 1;
    }

    thread _unknown_660C();

    while ( !_ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
    {
        var_0 = _unknown_6688();

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
            break;

        level _ID42237::_ID41098( "evac_vehicle_owned", "obj_commerce_defend_snipe_complete" );

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) )
            break;

        if ( level._ID49081.size < 2 )
            thread _unknown_66AA();
    }

    var_2 _meth_808B( 1 );
    var_3 _meth_808B( 1 );
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
    _func_034( "ui_deadquote", &"DCBURNING_MISSIONFAIL_CROWSNEST_SNIPE" );
    level notify( "mission failed" );
    _ID42407::_ID23778();
}

_ID52885()
{
    _func_034( "ui_deadquote", &"DCBURNING_MISSIONFAIL_CROWSNEST_SNIPE" );
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
        var_0 _meth_805A();
        var_1 _meth_8059();
        _ID42237::_ID14413( "player_get_on_turret" );
        var_1 _meth_805A();
        var_0 _meth_8059();
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
    self _meth_82CA( 1 );
    var_0 = self._ID740;

    while ( _func_02F( self ) )
    {
        self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( !_func_02F( var_5 ) )
            continue;

        if ( !_func_02F( var_2 ) )
            continue;

        if ( _func_02F( var_2._ID172 ) && var_2._ID172 == "misc_turret" )
            continue;

        if ( !_func_02F( var_1 ) )
            continue;

        if ( _func_1B3( var_2 ) )
            continue;

        if ( _func_02F( var_2._ID1194 ) && var_2._ID1194 != "axis" )
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

    if ( _func_02F( self._ID31273 ) )
    {
        var_6 = _func_1A1( self._ID31273, "script_linkname" );
        var_6 _meth_8059();
        self _meth_80B7();
    }
    else
    {
        switch ( self._ID669 )
        {

        }

        endswitch( 5 )  case "vehicle_ch46e_low" loc_6AA2 case "vehicle_bradley_static" loc_6AA3 case "vehicle_bradley_static_low" loc_6AA8 case "vehicle_laatpv" loc_6AA9 default loc_6ABC
        self _meth_80B8( var_6 );
    }

    _func_156( _ID42237::_ID16299( var_7 ), var_0 );
    thread _ID42237::_ID27077( var_8, var_0 );
    case "vehicle_bradley_static":
    case "vehicle_bradley_static_low":
    case "vehicle_laatpv":
    default:
}

_ID46708()
{
    self endon( "death" );
    self _meth_82CA( 1 );

    while ( _func_02F( self ) )
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_02F( var_4 ) )
            continue;

        if ( !_func_02F( var_1 ) )
            continue;

        if ( !_func_02F( var_0 ) )
            continue;

        if ( _func_1B3( var_1 ) )
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

    if ( _func_02F( self._ID31273 ) )
    {
        var_5 = _func_1A1( self._ID31273, "script_linkname" );
        var_5 _meth_8059();
        self _meth_80B7();
    }
    else
    {
        switch ( self._ID669 )
        {

        }

        self _meth_80B8( var_5 );
    }

    _func_156( _ID42237::_ID16299( var_6 ), self._ID740 );
    thread _ID42237::_ID27077( var_7 );

    if ( _func_02F( var_8 ) )
    {
        var_10 = _func_06A( "script_origin", self._ID740 + ( 0, 0, 0 ) );
        var_10._ID65 = self._ID65;
        var_11 = _func_15B( _ID42237::_ID16299( var_8 ), var_10._ID740 );
        _func_15C( var_11 );
        _ID42237::_ID14413( "player_heli_19" );
        var_11 _meth_80B7();
        var_10 _meth_80B7();
        return;
        case "vehicle_laatpv":
        case "vehicle_bradley":
        case "vehicle_m1a1_abrams":
        default:
    }
}

_ID51890()
{
    thread _unknown_6D1D();
    thread _unknown_6CA8();
    thread _unknown_6D0F();
    thread _unknown_6D0A();
    thread _unknown_7C2C();
    thread _unknown_6D9C();
    thread _unknown_6FAB();
    _ID42237::_ID14413( "crowsnest_sequence_finished" );
    thread _unknown_6F82();
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

        if ( _unknown_6D32() )
            wait 10;

        if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
            return;

        if ( !_unknown_6D44() )
        {
            level._ID794 thread _ID42407::_ID11085( "javelin_pickup" );
            continue;
        }

        if ( _unknown_6D58() && _unknown_6D6F() )
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

    if ( !_unknown_6D8C() )
        return 1;

    if ( !_ID48000() )
        return 1;

    return _ID44133::_ID48317();
}

_ID43218()
{
    if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
        return 1;

    return _unknown_6DBE();
}

_ID48000()
{
    if ( _ID42237::_ID14385( "player_has_killed_at_least_one_javelin_target" ) )
        return 1;

    if ( _unknown_6DCF() )
        return 1;

    var_0 = level._ID794 _meth_8317();
    var_1 = 0;
    return _unknown_6DCD();
}

_ID54283()
{
    var_0 = level._ID794 _meth_8316();

    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( var_2, "javelin" ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID43952()
{
    var_0 = level._ID794 _meth_831C();

    if ( _func_125( var_0, "javelin" ) )
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
    thread _unknown_6E71();
    wait 1;

    if ( level._ID51057.size < 5 )
    {
        var_0 = _ID42411::_ID35200( "tanks_crowsnest_wave2" );
        _ID42237::_ID3350( var_0, ::_unknown_70B5 );
    }
}

_ID49062()
{
    if ( level._ID15361 > 1 )
        return;

    level._ID794 _meth_80F6();
    _ID42237::_ID14413( "player_has_killed_at_least_one_javelin_target" );
    level._ID794 _meth_80F7();
}

_ID45220()
{
    _ID42237::_ID14413( "start_crow_armor_sequence" );
    var_0 = _func_1A1( "barrett_trigger", "targetname" );
    var_0._ID740 = var_0._ID740 + ( 0, 0, -20 );
    var_0 _meth_8187();
    var_0 notify( "stop_hint_text" );
    level._ID53489 thread _unknown_6FD2();
    var_1 = _ID42411::_ID35200( "helis_crowsnest" );
    var_2 = _ID42411::_ID35200( "helis_crowsnest_respawners" );
    _ID42237::_ID3350( var_1, ::_unknown_70B9 );
    _ID42237::_ID3350( var_2, ::_unknown_70C2 );
    thread _unknown_6F45();
    var_3 = _func_1A1( "perimeter_enemies", "targetname" );
    thread _unknown_8FDD( var_3, "perimeter_enemies_have_retreated" );
    wait 25;
    level._ID51365 = 1;
    _ID42237::_ID14413( "only_2_javelin_enemies_remaining" );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_complete" );
    thread _ID42407::_ID4433();
    _ID42237::_ID14402( "crowsnest_sequence_finished" );
    _unknown_6F87();
}

_ID47894()
{
    _ID42237::_ID14413( "perimeter_enemies_have_retreated" );
    thread _unknown_6BA7();
    thread _unknown_6AB2();
}

_ID52795()
{
    if ( !_unknown_6F2C() )
        return;

    var_0 = 0;
    var_1 = 0;
    var_2 = level._ID794 _meth_8317();
    var_3 = 0;
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_125( var_5, "avelin" ) )
        {
            var_1 = 1;

            if ( _func_125( level._ID794 _meth_831C(), "avelin" ) )
            {
                var_3 = 1;
                level._ID794 _meth_8328();
                wait 1.5;
            }

            level._ID794 _meth_831A( var_5 );
            continue;
        }

        if ( var_5 == "m4m203_eotech" )
            var_0 = 1;
    }

    var_clear_2
    var_clear_0

    if ( !var_1 )
        return;

    level._ID794 _meth_8329();

    if ( !var_0 )
        level._ID794 _meth_8319( "m4m203_eotech" );

    if ( var_3 )
        level._ID794 _meth_8320( "m4m203_eotech" );
}

_ID48485()
{
    _ID42237::_ID14413( "start_crow_armor_sequence" );
    _ID42407::_ID28864( "dcburn_hqr_clearout" );
    level._ID44035 _unknown_8B44( "dcburn_mcy_negative" );
    _ID42237::_ID14402( "obj_commerce_defend_javelin_given" );
    level._ID44035 _unknown_8B57( "dcburn_mcy_useordnance" );
    thread _unknown_70B0();
    thread _unknown_716F();
}

_ID45585( var_0 )
{
    var_1 = _func_06A( "script_model", var_0._ID740 );
    var_1 _meth_80B8( "h2_weapon_javelin_base_obj" );
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65;
    var_1 _meth_8059();

    for (;;)
    {
        if ( _unknown_7017() )
            break;

        wait 0.1;
    }

    _ID42237::_ID14402( "player_has_javelin" );
    var_1 _meth_80B7();
}

_ID49787()
{
    var_0 = _func_1A1( "volume_crowsnest", "targetname" );
    level._ID52350 = _func_03D();
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

        _unknown_8E18();

        if ( _ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
            break;

        if ( !level._ID794 _meth_80B0( var_0 ) && _ID42237::_ID14385( "can_talk" ) && !_ID42237::_ID14385( "player_is_on_turret" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _unknown_8C2D( "stay_in_nest_nag_" + var_3 );
            var_3++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !level._ID794 _ID42407::_ID27729() && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _unknown_8C64( "rocket_nag_" + var_1 );
            var_1++;
            _ID42237::_ID14402( "can_talk" );
            continue;
        }

        if ( !_unknown_8EA5() && _ID42237::_ID14385( "can_talk" ) )
        {
            _ID42237::_ID14388( "can_talk" );
            level._ID44035 _unknown_8C98( "rocket_shoot_nag_" + var_5 );
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
    self _meth_82CA( 1 );
    self._ID47357 = undefined;

    switch ( level._ID15361 )
    {

    }

    self._ID43720 = self._ID47357;
    _ID42237::_ID14402( "monument_dummy_target_setup" );

    while ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_02F( var_1 ) )
            continue;

        if ( !_func_02F( var_0 ) )
            continue;

        if ( _func_1B3( var_1 ) )
            continue;

        if ( _func_02F( var_1._ID1194 ) && var_1._ID1194 != "axis" )
            continue;

        if ( !_func_02F( var_4 ) )
            continue;

        if ( var_4 == "MOD_PROJECTILE" )
        {
            _unknown_736E( 100 );

            if ( self._ID47357 < 1 )
                break;
        }

        if ( var_4 == "MOD_PROJECTILE_SPLASH" )
        {
            _unknown_7386( 50 );

            if ( self._ID47357 < 1 )
                break;
        }
    }

    if ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
    {
        thread _unknown_70BA();
        return;
        case 3:
        case 2:
        case 1:
        case 0:
    }
}

_ID44908( var_0 )
{
    self._ID47357 = self._ID47357 - var_0;
    var_1 = self._ID47357 / self._ID43720 * 100;
    var_1 = _ID42407::_ID30292( var_1, 0 );
    var_2 = 100 - var_1;
    level._ID48957 = var_2;
    level notify( "monument_dummy_hit" );

    if ( _func_039( "dc_debug" ) == "1" )
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
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        wait 5;
        thread _ID42411::_ID17021( var_2 );
    }

    var_clear_2
    var_clear_0
}

_ID54675()
{
    self endon( "death" );
    thread _unknown_75A6();
    thread _unknown_831D();
    var_0 = _ID42411::_ID40142();
    _ID42237::_ID3350( var_0, ::_unknown_75D9, self );
}

_ID53631()
{
    if ( _func_02F( self._ID922 ) && _func_125( self._ID922, "crow_heli_respawner_" ) )
    {
        var_0 = self._ID922;
        self waittill( "death" );
        wait 1;
        var_1 = _func_1A2( var_0, "script_noteworthy" );
        var_2 = var_1;

        for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
        {
            var_3 = var_2[var_5];

            if ( !_func_02F( var_3._ID40264 ) )
            {
                if ( !_ID42237::_ID14385( "obj_commerce_defend_javelin_complete" ) )
                {
                    var_4 = _ID42411::_ID40260( var_3 );
                    thread _ID42411::_ID17021( var_4 );
                    var_4 thread _unknown_760A();
                    break;
                }
            }
        }

        var_clear_2
        var_clear_0
    }
}

_ID43745( var_0 )
{
    var_0 endon( "death" );

    if ( !_func_02F( self._ID922 ) )
        return;

    var_1 = undefined;
    var_2 = undefined;

    switch ( self._ID922 )
    {

    }

    while ( _func_02F( var_0 ) )
    {
        self waittill( "trigger" );

        if ( !_func_02F( var_1 ) )
            var_0 _meth_8270();
        else
            var_0 _meth_826F( var_1 );

        if ( _func_02F( var_2 ) )
        {
            var_0 thread _unknown_656F( var_2 );
            continue;
        }

        var_0 notify( "stop_firing_turret" );
    }

    case "target_evac":
    case "target_nothing":
    default:
}

_ID48557()
{
    self endon( "death" );
    _ID42407::_ID13024( "start_firing" );
    _ID42407::_ID13027( "start_firing" );
    thread _unknown_773B();
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    thread _unknown_844C();
}

_ID50269()
{
    self endon( "death" );
    _ID42407::_ID13024( "start_firing" );
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    thread _unknown_8468();
    _ID42407::_ID13027( "start_firing" );
    thread _unknown_7770();
}

_ID45600()
{
    self endon( "death" );
    _ID42411::_ID40292();
    thread _unknown_65CD( level._ID53489 );

    while ( _func_02F( self ) )
    {
        self _meth_826C( level._ID53489 );
        wait(_func_0BA( 3, 6 ));
        self _meth_8272();
    }
}

_ID43705()
{
    thread _unknown_793F();
    thread _unknown_84DA();
    _ID42237::_ID14413( "player_approaching_outer_balcony" );
    thread _unknown_7A45();
}

_ID52605()
{
    _ID42237::_ID14413( "roof_door_kicked" );
    var_0 = _func_1A1( "door_to_roof_swing", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_1 _meth_8053( var_0 );
    var_0._ID48297 = self._ID740;
    var_0._ID44067 = self._ID65;
    var_0 _meth_82C1( -170, 0.5 );
    var_0 _meth_82B8( var_0._ID740 + ( 11, 0, 0 ), 0.1 );
    var_1 _meth_805F();
}

_ID43041()
{
    self endon( "death" );
    thread _unknown_86A3();
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
    var_0 = _func_1A1( "trigger_volume_breach_stairwell", "targetname" );
    var_0 _ID42237::_ID38863();
    var_1 = _func_1A1( "volume_breach_stairwell", "targetname" );
    thread _unknown_79FE( var_1 );
    var_2 = _ID42407::_ID3339( _func_1A2( "crowsnest_breachers", "targetname" ) );
    var_3 = _ID42407::_ID3339( _func_1A2( "friendlies_breach_defend", "targetname" ) );
    _ID42237::_ID3350( var_3, ::_unknown_78B9 );
    var_4 = "shotgunhinges_breach_left";
    var_1 thread _ID42265::_ID6064( var_2, var_4 );
    var_5 = var_2;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6._ID47609 = _func_0C8( var_6._ID1191, "targetname" );
        var_6 thread _unknown_8757();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "crowsnest_sequence_finished" );
    _unknown_91B3( "colornodes_start_to_roof", "script_noteworthy", 1 );
    var_8 = _func_1A1( "colornodes_start_to_roof", "script_noteworthy" );
    var_8 notify( "trigger",  level._ID794  );
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    thread _unknown_790F();
    var_0 _ID42237::_ID38865();
    _ID42407::_ID10226( 3, ::_unknown_9491, "dummy_spawner_roof_wave_01" );
    _ID42237::_ID14413( "obj_rooftop_given" );

    if ( _func_02F( level._ID51057 ) && level._ID51057.size > 0 )
        _ID42237::_ID3350( level._ID51057, ::_unknown_7AA6 );

    var_9 = _func_0DE( "allies" );
    _ID42237::_ID3350( var_9, _ID42407::_ID8925, "off" );
    var_10 = var_9;

    for ( var_11 = _func_1DA( var_10 ); _func_02F( var_11 ); var_11 = _func_1BF( var_10, var_11 ) )
    {
        var_6 = var_10[var_11];
        var_6._ID24727 = 1;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "roof_breach_complete" );
    var_12 = var_2;

    for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
    {
        var_6 = var_12[var_13];
        var_6 _meth_81B1( var_6._ID47609 );
        var_6._ID452 = 64;
    }

    var_clear_1
    var_clear_0
    _unknown_9276( "colornodes_to_roof", "script_noteworthy", 1 );
    _func_0DB( "ai_friendlyFireBlockDuration", 0 );
    var_14 = level._ID35507;

    for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
    {
        var_6 = var_14[var_15];

        if ( !_func_1A7( var_6 ) )
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

    var_clear_1
    var_clear_0
    wait 2;
    _ID42237::_ID3350( var_2, ::_unknown_7B8F );
    var_16 = var_2;

    for ( var_17 = _func_1DA( var_16 ); _func_02F( var_17 ); var_17 = _func_1BF( var_16, var_17 ) )
    {
        var_6 = var_16[var_17];
        var_6 thread _unknown_88D1();
    }

    var_clear_1
    var_clear_0
    _unknown_95BD( "dummy_spawner_roof_wave_02" );

    if ( !_ID42237::_ID14385( "player_roof_stairs_00" ) )
        thread _unknown_7BD4( "dummy_colornodes_to_roof" );

    _ID42237::_ID14413( "player_roof_stairs_01" );

    if ( _func_02F( level._ID47026 ) && level._ID47026.size > 0 )
        _ID42237::_ID3350( level._ID47026, ::_unknown_934F );

    thread _unknown_95C9( "hostiles_drones_comm_south" );
    thread _unknown_97FE();
    thread _unknown_94B8( "all", 1024, 1 );
    _ID42237::_ID14413( "player_roof_stairs_02" );
    var_18 = _ID42411::_ID35200( "jets_tenches_01" );
    var_19 = _func_0C8( "node_roof_leader", "targetname" );
    var_20 = _func_0C8( "node_roof_friendly02", "targetname" );
    level._ID44035 thread _unknown_811B( var_19 );
    level._ID49792 thread _unknown_8123( var_20 );
    _ID42237::_ID14413( "player_top_floor_commerce" );
    level._ID50577 = _func_03B( "ai_pathNegotiationOverlapCost" );
    _func_0DB( "ai_pathNegotiationOverlapCost", 5000 );
    var_21 = _ID42411::_ID35200( "jets_tenches_02" );
    _ID42237::_ID14413( "player_outer_balcony_top_commerce" );
    var_22 = _ID42411::_ID35195( "heli_deck2" );
    thread _ID42411::_ID17021( var_22 );
    var_22 thread _unknown_7C30();
    var_22 thread _unknown_7C44();
    _ID42237::_ID14413( "player_at_commerce_rooftop" );
    _func_0DB( "ai_pathNegotiationOverlapCost", level._ID50577 );

    if ( _func_02F( var_22 ) )
        var_22 _meth_80B7();

    _ID42237::_ID14402( "obj_rooftop_complete" );
    thread _ID42407::_ID4422( "rooftop" );
}

_ID54411()
{
    self endon( "death" );
    self _meth_826F( level._ID794 );
    _ID42237::_ID14413( "balcony_heli_raised_up" );
    self _meth_8270();
    _ID42237::_ID14413( "player_at_commerce_rooftop" );

    if ( _func_02F( self ) )
        self _meth_80B7();
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

    while ( _func_02F( self ) )
    {
        var_12 = _func_0F3( level._ID794._ID740, self._ID740 );

        if ( var_12 < var_1 )
            var_13 = 1;
        else if ( var_12 > var_0 )
            var_13 = 0;
        else
            var_13 = var_12 - var_0 / var_1 - var_0;

        var_9 = var_2 + var_9 * var_13;
        var_10 = var_4 + var_10 * var_13;
        var_11 = var_6 + var_11 * var_13;
        _func_241( level._ID794._ID740, var_9, var_10, var_11, var_8, 0, 0, 0, 9, 11, 10 );
        wait 0.1;
    }
}

_ID46349()
{
    self endon( "death" );
    _ID42237::_ID14413( "player_roof_stairs_01" );

    if ( _func_02F( self ) )
        _unknown_9063();
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
    var_1 = _func_1A1( var_0, "targetname" );
    var_2 = _func_1A1( var_1._ID31273, "script_linkname" );

    if ( _func_02F( var_2 ) )
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
    level._ID44035 _unknown_9583( "dcburn_mcy_rooftop" );
    thread _unknown_9AAC( 90 );
    _ID42407::_ID28864( "dcburn_hqr_urgentsurgicals" );

    while ( !_ID42237::_ID14385( "roof_breach_complete" ) )
    {
        level._ID44035 _unknown_95A6( "dcburn_mcy_rvwithseals" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _unknown_95C4( "dcburn_mcy_crawlin" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _unknown_95E2( "dcburn_mcy_letsmoveout" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _unknown_9600( "dcburn_mcy_gettoroofnow" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;

        level._ID44035 _unknown_961E( "dcburn_mcy_overrunningpos" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "roof_breach_complete" ) )
            break;
    }

    _ID42407::_ID28864( "dcburn_ar5_triplea" );
    _ID42407::_ID28864( "dcburn_ar2_backinseats" );

    while ( !_ID42237::_ID14385( "player_roof_stairs_00" ) )
    {
        level._ID44035 _unknown_9658( "dcburn_mcy_outnumbered" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "player_roof_stairs_00" ) )
            break;

        level._ID44035 _unknown_9676( "dcburn_mcy_upthestairsgo" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "player_roof_stairs_00" ) )
            break;

        level._ID44035 _unknown_9694( "dcburn_mcy_waitallday" );
        wait(_func_0BA( 8, 12 ));

        if ( _ID42237::_ID14385( "player_roof_stairs_00" ) )
            break;

        level._ID44035 _unknown_96B2( "dcburn_mcy_gettingoverrun" );
    }

    _func_0DB( "r_useLightGridDefaultFXLightingLookup", "1" );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", "-21956 1185 -235" );
    wait 2;
    level._ID44035 _unknown_96D6( "dcburn_mcy_outoftimego" );
    wait 2;
    level._ID49792 _unknown_96E3( "dcburn_cpd_closingin" );
    _ID42237::_ID14413( "player_roof_stairs_02" );
    level._ID44035 _unknown_96F6( "dcburn_mcy_lobby_move_nag_00" );
    _ID42407::_ID14543( "allies" );
    level._ID794 _ID42407::_ID27079( "dcburn_ar3_gottatouchdown" );
    _ID42407::_ID14544( "allies" );
    _ID42237::_ID14413( "player_outer_balcony_top_commerce" );

    while ( !_ID42237::_ID14385( "player_headed_to_roof" ) )
    {
        level._ID44035 _unknown_972D( "dcburn_mcy_lobby_move_nag_02" );
        wait 2;
        level._ID44035 _unknown_973A( "dcburn_mcy_notime" );

        if ( _ID42237::_ID14385( "player_headed_to_roof" ) )
            break;

        wait 2;

        if ( _ID42237::_ID14385( "player_headed_to_roof" ) )
            break;

        level._ID44035 _unknown_9762( "dcburn_mcy_keepmoving" );
        wait 2;
    }

    _ID42237::_ID14413( "player_headed_to_roof" );
    _ID42407::_ID28864( "dcburn_bhp_whatsyourstatus" );
    level._ID44035 _unknown_9781( "dcburn_mcy_hostilesclose" );

    while ( !_ID42237::_ID14385( "player_at_commerce_rooftop" ) )
    {
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _unknown_97B5( "dcburn_mcy_overrun" );
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _unknown_97DF( "dcburn_mcy_lobby_move_nag_00" );
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _unknown_9809( "dcburn_mcy_outoftimego" );
        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        wait 1;

        if ( _ID42237::_ID14385( "player_at_commerce_rooftop" ) )
            break;

        level._ID44035 _unknown_9833( "dcburn_mcy_outnumbered" );
    }

    _ID42237::_ID14402( "rooftop_run_dialogue_finished" );
}

_ID50242()
{
    thread _unknown_8CC8();
    thread _unknown_81EC();
    thread _unknown_81E6();
    thread _unknown_863E();
    thread _unknown_82F0();
    thread _unknown_8738();
    thread _unknown_879C();
    thread _unknown_8D17();
    thread _unknown_8D31();
    _ID42237::_ID14413( "player_heli_18" );
    _unknown_87E6();
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
    thread _unknown_82B2();
    _ID42237::_ID14413( "player_getting_on_minigun" );
    _func_0DB( "actionSlotsHide", "1" );
    level._ID794 _meth_8313( 1, "" );
    level._ID794 _meth_80F5();

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
        level._ID44035 _unknown_99D9( "dcburn_mcy_moveminigun" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _unknown_9A12( "dcburn_mcy_getonminigun" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _unknown_9A4A( "dcburn_mcy_getinchopper" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _unknown_9A82( "dcburn_mcy_wayoutnumbered" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _unknown_9ABA( "dcburn_mcy_forgetaboutit" );
        _ID42237::_ID14402( "can_talk" );

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        wait 30;

        if ( _ID42237::_ID14385( "player_getting_on_minigun" ) )
            break;

        _ID42237::_ID14388( "can_talk" );
        level._ID44035 _unknown_9AF3( "dcburn_mcy_brassontitanic" );
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

    if ( !_func_02F( self ) )
        return;

    self._ID25499 = self._ID4867;
    self._ID4867 = 1000;
    _ID42237::_ID14413( var_0 );

    if ( _func_02F( self ) )
        self._ID4867 = self._ID25499;
}

_ID52451()
{
    self endon( "death" );
    thread _unknown_90D2();
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
    var_0 = _func_1A1( "rooftop_helirider", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();

    if ( _func_02F( var_1 ) )
        var_1 thread _unknown_88B6();

    var_0 = _func_1A1( "rooftop_defender", "targetname" );
    var_2 = var_0 _ID42407::_ID35014();

    if ( _func_02F( var_2 ) )
        var_2 thread _unknown_8643();

    var_3 = _func_1A1( "turret2", "targetname" );

    if ( _func_02F( var_3 ) )
        var_3 _meth_80B7();

    _unknown_9BA8( "colornodes_roof", "script_noteworthy", 1 );
    var_4 = _func_1A2( "allied_drones_heliride_01", "targetname" );
    var_5 = _func_1A2( "allied_drones_heliride_02", "targetname" );
    var_6 = _func_1A2( "allied_drones_heliride_03", "targetname" );
    var_6 = _func_1A2( "allied_drones_heliride_04", "targetname" );
    thread _unknown_9E49( var_4, "allied_drones_heliride_01" );
    thread _unknown_9E52( var_5, "allied_drones_heliride_02" );
    thread _unknown_9E5B( var_6, "allied_drones_heliride_03" );
    thread _unknown_9E64( var_6, "allied_drones_heliride_04" );
    _unknown_89BB();
    level._ID52945 _meth_828D( 5, 20 );
    var_7 = _func_1A1( "heli_roof_approach_01_end", "targetname" );
    level._ID52945 _meth_826F( var_7 );
    level._ID52945.rooftop_helirider = var_1;
    _ID42237::_ID14413( "roof_littlebird_lifted_off" );
    thread _unknown_A2B0();
    level._ID52945 _meth_8270();
    var_8 = _func_1A1( "heli_roof_approach_01", "targetname" );
    level._ID52945 thread _ID42411::_ID40218( var_8 );
    level._ID52945 _meth_828D( 100 );
    level._ID52945 thread _unknown_96AC( _func_1A1( "heli_roof_land_01", "script_noteworthy" ) );
    level._ID52945 waittill( "landed" );
    _ID42237::_ID14402( "blackhawk_landed" );
    var_9 = level._ID52945 _meth_818C( "tag_player" );
    var_10 = 160;
    var_11 = 100;
    var_12 = 0;
    var_13 = _func_06A( "trigger_radius", var_9, var_12, var_10, var_11 );
    thread _unknown_899C( var_13 );
    var_9 = level._ID52945 _meth_818C( "tag_player" );
    var_10 = 40;
    var_11 = 100;
    var_12 = 0;
    level._ID52945._ID1224 = _func_06A( "trigger_radius", var_9, var_12, var_10, var_11 );
    var_14 = level._ID52945 _meth_818C( "TAG_ORIGIN" );

    for (;;)
    {
        level._ID52945._ID1224 waittill( "trigger" );

        if ( _ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), var_14, level._ID8760["90"] ) )
            break;
    }

    _ID42407::_ID4917( "allies" );
    _ID42407::_ID4917( "axis" );
    _ID42237::_ID14402( "player_getting_on_minigun" );

    if ( _func_03A( "r_dcburning_culldist" ) == 1 )
        _func_08E( 20000 );

    _ID42237::_ID14402( "obj_heli_mount_complete" );
    _ID42313::_ID52053();
    thread _unknown_A2C1();
    level._ID52945 thread maps\dcburning_aud::_ID54551();
    maps\dcburning_lighting::_ID51844( "dcburning_heliride" );
    _ID42297::_ID39221();
    level._ID10901 = 1;
    _unknown_A07D( 7 );
    _unknown_A083( 8 );
    _unknown_A089( 10 );
    var_15 = _func_1A1( "volume_roof", "targetname" );
    var_16 = var_15 _ID42407::_ID15547( "axis" );
    _ID42237::_ID3350( var_16, ::_unknown_9D6B );
    _ID42407::_ID10226( 1.5, ::_unknown_8A6E );
    var_17 = _func_1A1( "roof_seaknight_01", "targetname" );
    var_18 = _func_1A1( "roof_seaknight_02", "targetname" );
    var_17 notify( "spawn" );
    var_18 notify( "spawn" );
    var_17 thread _ID42407::_ID25088( "play_anim", 1 );
    var_18 thread _ID42407::_ID25088( "play_anim", 1 );
    _unknown_8B1E();
    _ID42407::_ID24584( 5 );
    _ID42237::_ID14413( "roof_heli_about_to_be_owned" );
    _ID42237::_ID14402( "player_heli_ready_to_take_off" );
    thread _ID42407::_ID4422( "heli_ride_01" );
    var_19 = _ID42411::_ID35195( "ww2_heli" );
    var_20 = _ID42237::_ID16638( "path_player_heli", "targetname" );
    level._ID52945 _ID42407::_ID40191( 76 );
    level._ID52945 _unknown_8BBC();
    level._ID52945 thread _unknown_8BC2();
    level._ID52945 thread _ID42411::_ID40218( var_20 );
    var_21 = _func_1A1( "abrams_street", "targetname" );
    var_21 _meth_80B7();
    var_22 = _ID42411::_ID35196( "m1a1_heliride_01" );
    var_23 = _ID42411::_ID35196( "m1a1_heliride_02" );
    var_24 = _func_1A1( var_22._ID31273, "script_linkname" );
    var_25 = _func_1C8( "javelin_dcburn", var_24._ID740, var_22._ID740 );
    var_25 thread _unknown_9D3A();
    var_25 _meth_81E5( var_22 );
    var_25 _meth_81E9();
    var_26 = _ID42411::_ID35195( "latvee_heliride_01" );
    _ID42237::_ID14413( "player_heli_02" );
    level._ID52945 _meth_828D( 75 );
    level._ID47577 _meth_828D( 70 );
    _ID42237::_ID3350( level._ID44593, _ID42237::_ID26402 );
    _ID42237::_ID3350( level._ID48904, _ID42237::_ID26402 );
    var_27 = _ID42237::_ID16638( "helipath_to_ww2_littlebird_wingman_armed", "targetname" );
    var_28 = "littlebird_wingman_armed";
    level._ID52695 = level._ID52695 _unknown_98F7( var_28, var_27 );
    level._ID52695 _meth_828D( 100 );
    level._ID47577 _unknown_9A1E();
    level._ID47577 = _ID42411::_ID35196( "littlebird_wingman_02_drone_roof" );
    var_27 = _ID42237::_ID16638( "helipath_to_ww2_littlebird_wingman_01", "targetname" );
    var_28 = "littlebird_wingman_01";
    level._ID48377 = level._ID48377 _unknown_9929( var_28, var_27 );
    level._ID48377 _meth_828D( 55 );
    var_29 = _func_1A2( "axis_ww2_drones_01", "targetname" );
    var_30 = _func_1A2( "axis_ww2_drones_02", "targetname" );
    var_31 = _func_1A2( "axis_ww2_drones_03", "targetname" );
    var_32 = _func_1A2( "axis_ww2_drones_04", "targetname" );
    thread _unknown_A165( var_29, "axis_ww2_drones_01" );
    thread _unknown_A16E( var_30, "axis_ww2_drones_02" );
    thread _unknown_A177( var_31, "axis_ww2_drones_03" );
    thread _unknown_A180( var_32, "axis_ww2_drones_04" );
    waitframe;
    var_33 = _func_0DE();
    var_34 = level._ID47577._ID29965;
    var_34[var_34.size] = var_1;
    _ID42237::_ID3350( var_33, ::_unknown_9F3D, var_34 );
    _ID42407::_ID1801( "spawner_ww2_guys", "targetname", level._ID794 );
    _unknown_A1F3( "dummy_spawner_ww2_street_guys" );
    level._ID44303 = 1;
    level._ID49598 = ( 0, 40, 0 );
    level._ID1426["mortar"]["dirt"] = _func_155( "fx/explosions/artilleryExp_dirt_brown_2_dcburning" );
    _ID42407::_ID10226( 3, _ID54017::_ID43738, 2 );
    _ID42237::_ID14413( "player_heli_03a" );
    var_25 = _func_1C8( "javelin_dcburn", var_24._ID740, var_26._ID740 );
    var_25 thread _unknown_9E93();
    var_25 _meth_81E5( var_26 );
    var_25 _meth_81E9();
    var_35 = _ID42237::_ID16638( "sam_launch_ww2", "targetname" );
    _ID42407::_ID10226( 1.5, ::_unknown_8C8E, 8, var_35, level._ID47577 );
    _ID42237::_ID14413( "player_heli_05" );
    level._ID52945 _meth_828D( 90 );
    thread _ID42411::_ID17021( var_26 );
    level._ID48377 _meth_828D( 100 );
    level._ID47577 _meth_828D( 100 );
    level._ID52695 _meth_828D( 150 );
    var_36 = _ID42237::_ID16638( "javelin_littlebird_monument", "targetname" );
    var_37 = _func_1C8( "javelin_dcburn", var_36._ID740, level._ID47577._ID740 );
    var_37 _meth_81E5( level._ID47577 );
    var_38 = _ID42237::_ID16638( "littlebird_monument_crash", "targetname" );
    level._ID47577 thread _ID44311::_ID46706( var_38 );
    level._ID47577 thread maps\dcburning_aud::_ID50541();
    var_27 = _ID42237::_ID16638( "helipath_to_ww2_strafing_littlebird_wingman_armed", "targetname" );
    var_28 = "littlebird_wingman_armed";
    level._ID52695 = level._ID52695 _unknown_9AA5( var_28, var_27 );
    level._ID52695 _meth_828D( 90 );
    _ID42237::_ID14413( "player_heli_06" );
    thread _unknown_A2D0( "allied_drones_heliride_01" );
    thread _unknown_A2D8( "allied_drones_heliride_02" );
    thread _unknown_A2E0( "allied_drones_heliride_03" );
    thread _unknown_A2E9( "allied_drones_heliride_04" );
    _ID42237::_ID14413( "player_heli_10" );
    level._ID794._ID511 = 1;
    level._ID52945 _meth_828D( 25 );
    _ID42407::_ID1801( "spawner_ww2_guys_middle", "targetname", level._ID794 );
    level._ID52695 _meth_828D( 120 );
    _ID42237::_ID14413( "player_heli_10a" );
    level._ID9277 = 0;
    var_39 = _ID42411::_ID35200( "bmps_heli_ride_ww2_02" );
    _ID42407::_ID1801( "spawner_ww2_guys_end", "targetname", level._ID794 );
    _ID42237::_ID14413( "player_heli_10b" );
    level._ID794._ID511 = 0;
    _ID42237::_ID14413( "player_heli_10c" );
    _ID42237::_ID3350( level._ID53293, _ID42237::_ID26402 );

    if ( _func_02F( var_19 ) )
        var_19 thread _ID42407::_ID25088( "liftoff", 3 );

    _ID42237::_ID14413( "player_heli_14" );
    wait 0.5;
    level._ID52945 _meth_828D( 50 );
    var_40 = _ID42407::_ID16057( "crows_nest_bmps", "script_noteworthy" );
    var_41 = var_40;

    for ( var_43 = _func_1DA( var_41 ); _func_02F( var_43 ); var_43 = _func_1BF( var_41, var_43 ) )
    {
        var_42 = var_41[var_43];

        if ( _func_02F( var_42 ) )
        {
            var_42 _ID42411::_ID16987();
            var_42 _unknown_9CB1();
        }
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_heli_15" );
    level._ID52945 _meth_828D( 30 );
    _unknown_A494( 11 );
    thread _unknown_A3D0( "axis_ww2_drones_01" );
    thread _unknown_A3D9( "axis_ww2_drones_02" );
    thread _unknown_A3E1( "axis_ww2_drones_03" );
    thread _unknown_A3E9( "axis_ww2_drones_04" );
    _ID42237::_ID14413( "player_heli_16" );
    level._ID52945 _meth_828D( 20 );
}

_ID45728( var_0, var_1, var_2 )
{
    var_2 endon( "death" );
    var_3 = ( 0, 0, 250 );
    var_4 = _func_06A( "script_origin", var_2._ID740 );
    var_2 thread _ID42237::_ID10280( var_4 );
    var_4._ID740 = var_2._ID740;
    var_4._ID65 = var_2._ID65;
    var_4 _meth_8053( var_2, "tag_origin", var_3, ( 0, 0, 0 ) );
    var_4 thread _unknown_A420( var_2 );

    for ( var_5 = _func_1A9( var_4, 8000, 3000 ); var_0 > 0; var_0-- )
    {
        var_6 = _func_1C8( "slamraam_missile_dcburning", var_1._ID740, var_2._ID740 );
        var_1 thread maps\dcburning_aud::_ID53638( var_6 );
        wait 0.25;
    }

    if ( _func_02F( var_4 ) )
        var_4 _meth_80B7();
}

_ID52170()
{
    _ID42237::_ID3350( level._ID35507, ::_unknown_A21B );
}

_ID44382( var_0 )
{
    level._ID44035 endon( "death" );
    wait 2;
    var_1 = _func_06A( "script_origin", level._ID52945._ID740 );
    var_1._ID740 = level._ID52945._ID740;
    var_1._ID65 = level._ID52945._ID65;
    var_2 = _func_1A5();
    var_2._ID337 = var_1;
    var_2._ID1251 = -100;
    var_2._ID893 = -72;
    var_2._ID409 = -50;
    var_2._ID41911 = 180;
    var_2 _ID42407::_ID38694();
    var_1 _meth_8053( level._ID52945 );
    level._ID44035 notify( "stop_teleport_hack" );
    var_1 _ID42259::_ID3027( level._ID44035, "leader_blackhawk_getin" );
    level._ID44035 _meth_81B2( level._ID44035._ID740 );
    level._ID44035._ID452 = 16;
    var_0 waittill( "trigger" );
    var_1 _ID42259::_ID3027( level._ID44035, "leader_blackhawk_getin" );
    level._ID44035 _meth_8053( var_1 );
    var_1 _ID42259::_ID3020( level._ID44035, "leader_blackhawk_getin" );
    var_1 thread _ID42259::_ID3025( level._ID44035, "leader_blackhawk_idle", "stop_idle" );
}

_ID45823()
{
    self endon( "death" );
    thread _unknown_987F();
    self._ID24727 = 1;
    self._ID452 = 16;
    self._ID4867 = 1000;
    self._ID86 = 0;
    _ID42237::_ID14413( "blackhawk_landed" );
    wait 1;
    var_0 = _func_06A( "script_origin", level._ID52945._ID740 );
    var_0._ID740 = level._ID52945._ID740;
    var_0._ID65 = level._ID52945._ID65;
    var_1 = _func_1A5();
    var_1._ID337 = var_0;
    var_1._ID1251 = -100;
    var_1._ID893 = 78;
    var_1._ID409 = 21;
    var_1 _ID42407::_ID38694();
    var_0 _meth_8053( level._ID52945 );
    var_0 _ID42259::_ID3027( self, "redshirt_blackhawk_getin" );
    self _meth_8053( var_0 );
    var_0 _ID42259::_ID3020( self, "redshirt_blackhawk_getin" );
    var_0 thread _ID42259::_ID3025( self, "redshirt_blackhawk_idle", "stop_idle" );
}

_ID43870( var_0 )
{
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    level._ID794 _meth_830F( 0 );
    level._ID794 _meth_830C( 0 );
    level._ID794 thread _ID42407::_ID27079( "scn_player_mount_bh_minigun" );
    level._ID52945 _ID42407::_ID10226( 0.5, ::_unknown_A9F7 );
    level._ID52945 _ID54230::_ID49743( var_0 );
    _func_0DB( "r_reactiveMotionHelicopterLimit", 0 );
    level._ID43469 = 1;
}

_ID48609( var_0 )
{
    level endon( "player_getting_on_minigun" );
    self endon( "death" );
    self endon( "stop_teleport_hack" );
    var_1 = 90000;

    while ( _func_02F( self ) )
    {
        wait 0.1;

        if ( _func_0F5( level._ID794._ID740, self._ID740 ) < var_1 )
            continue;

        var_2 = level._ID794 _meth_80AF();

        if ( _ID42237::_ID41802( var_2, level._ID794._ID65, self._ID740 + ( 0, 0, 32 ), level._ID8760["90"] ) )
        {
            continue;
            continue;
        }

        break;
    }

    self _meth_81D2( var_0._ID740, var_0._ID65 );
    self notify( "end_melee" );
    _ID42407::_ID10871();
    self _meth_81B1( var_0 );
}

_ID49059( var_0 )
{
    level._ID52945 = _ID42411::_ID35196( "heli_player" );
    level._ID52945.spawn_extra_bullet = 1;
    level._ID52945 thread _unknown_9339();
    level._ID52945 thread maps\dcburning_aud::_ID50906();

    if ( _func_02F( var_0 ) )
    {
        level._ID52945 _meth_8286( var_0._ID740, var_0._ID65 );
        level._ID52945 thread _ID42411::_ID40218( var_0 );
        level._ID52945 _meth_80A0( level._ID794 );
        level._ID52945 _unknown_9232();
    }
}

_ID54208()
{
    level._ID52945 _meth_8267();
    level._ID52945 _meth_828D( 30 );
    level._ID52945 _meth_825D( 32, 10, 3 );
    level._ID52945 _meth_829E( 5, 10 );
}

_ID51816()
{
    self endon( "death" );
    var_0 = _ID42413::_ID16050();
    var_1 = _ID42237::_ID16182( self._ID740, var_0 );
    var_1._ID740 = self._ID740;
    self._ID26573 = var_1;
    self waittill( "liftoff" );
    thread _unknown_929F();
    var_2 = _ID42237::_ID16638( self._ID31273, "script_linkname" );
    var_3 = _func_0F3( self._ID740, var_2._ID740 );
    self _meth_828D( 10 );
    _ID42407::_ID40191( var_3 );
    self _meth_828D( 50 );
    thread _ID42411::_ID40218( var_2 );
}

_ID48984()
{
    self endon( "death" );
    level._ID794 endon( "death" );
    _ID42407::_ID13024( "stop_firing" );

    while ( _func_1A7( self ) && !_ID42407::_ID13019( "stop_firing" ) )
    {
        wait 0.5;
        self _meth_826F( level._ID794 );

        if ( !_ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740 + ( 0, 0, 32 ), level._ID8760["35"] ) )
        {
            self notify( "stop_firing_turret" );
            continue;
        }

        thread _unknown_7AB1( level._ID794 );
    }

    self notify( "stop_firing_turret" );
    self _meth_8270();
}

_ID52592()
{
    _ID42237::_ID14413( "player_getting_on_minigun" );
    thread _unknown_93D5();
    var_0 = _func_1A1( "roof_rocket_guy", "targetname" );
    var_1 = var_0 _ID42407::_ID35014( 1 );
    var_1 thread _unknown_9B24();
    var_1 thread _unknown_9B20();
    var_2 = var_0;
    var_2 _ID42259::_ID3023( var_1, var_1._ID70 );
    var_1 _meth_801D( "weapon_stinger", "TAG_INHAND" );
    var_2 thread _ID42259::_ID3020( var_1, var_1._ID70 );
    var_1 _meth_8120( level._ID30895["generic"][var_1._ID70], 0.6 );
    var_3 = _ID42411::_ID35196( "heli_roof" );
    var_3 thread _unknown_94A1();
    var_3 _meth_826F( level._ID794 );
    var_4 = _func_06A( "script_origin", var_3._ID740 + ( 0, 0, -20 ) );
    var_4 _meth_8053( var_3 );
    var_4 thread _unknown_A825( var_3 );
    var_5 = _func_1A9( var_4, 2000, 10000, var_1 );
    var_1 waittillmatch( "single anim",  "fire"  );
    _func_192( 0.3, 0.5, level._ID794._ID740, 1600 );
    var_6 = var_1 _meth_818C( "TAG_INHAND" );
    _func_1C8( "stinger", var_6, var_4._ID740 );
    _ID42237::_ID14402( "roof_heli_about_to_be_owned" );
    var_3 thread _unknown_951F();
    var_1 waittillmatch( "single anim",  "end"  );
    var_6 = var_1 _meth_818C( "TAG_INHAND" );
    var_7 = var_1 _meth_818D( "TAG_INHAND" );
    var_1 _meth_802A( "weapon_stinger", "TAG_INHAND" );
    var_8 = _func_06A( "script_model", var_6 );
    var_8 _meth_80B8( "weapon_stinger" );
    var_1 thread _ID42237::_ID10280( var_8 );
    var_8._ID65 = var_7;
    var_9 = _func_0C8( "at4_guy_retreat", "targetname" );
    var_1 _meth_81B1( var_9 );
    var_1 thread _ID42407::_ID36519();
    var_1 thread _unknown_9C4B();
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
    _func_192( 0.6, 1.2, level._ID794._ID740, 1600 );
    level._ID794 _meth_80B4( "damage_heavy" );
}

_ID46418()
{
    self endon( "death" );
    wait 1.5;
    self _meth_8058();
}

_ID47073()
{
    _ID42237::_ID14402( "player_heli_spawned" );
    _ID42411::_ID16988();
}

_ID45588()
{
    _ID42237::_ID14413( "player_approaching_outer_balcony" );
    var_0 = _ID42407::_ID3339( _func_1A2( "littlebird_roof_riders_left", "targetname" ) );
    _ID42237::_ID3350( var_0, ::_unknown_9DED );
    _ID42237::_ID3350( var_0, _ID42407::_ID22746 );
    var_1 = _ID42407::_ID3339( _func_1A2( "littlebird_roof_riders_right", "targetname" ) );
    _ID42237::_ID3350( var_1, ::_unknown_9E0D );
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
    level._ID47577 _meth_829E( 20, 50 );
    wait 2;
    level._ID47577 _ID42411::_ID40066( "idle_alert_to_casual" );
    level._ID47577 _meth_828D( 25 );
}

_ID47952()
{
    _ID42237::_ID14413( "player_approach_commerce_roof_02" );
    level._ID52695 = _ID42411::_ID35196( "littlebird_wingman_armed" );
    level._ID52695 _meth_828D( 25 );
    var_0 = _ID42237::_ID16638( "wingman_roof_node_01", "script_noteworthy" );
    var_0 waittill( "trigger" );
    var_1 = _func_1A1( "roof_target_for_helis", "targetname" );
    level._ID52695 _meth_826F( var_1 );
    level._ID52695 _meth_828D( 10 );
    waitframe;
    var_2 = level._ID52695._ID23512;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_806C( "auto_nonai" );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_getting_on_minigun" );
    var_5 = level._ID52695._ID23512;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_3 = var_5[var_6];
        var_3 _meth_806C( "manual" );
        var_3 _meth_80EA();
    }

    var_clear_1
    var_clear_0
}

_ID53939()
{
    thread _unknown_99AC();
    thread _unknown_9986();
    _ID42237::_ID14413( "player_crash_starting" );
    thread maps\dc_crashsite::_ID49092();
    _ID42237::_ID14413( "player_crash_done" );
    _func_31C( 7 );
    level._ID794 _meth_834E( "viewhands_us_army_dmg" );
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
    var_0 _meth_8053( level._ID794 );
    var_0 thread _ID42407::_ID27081( "dcburn_lbp1_maydaymayday", "tag_origin" );
    _ID42237::_ID14413( "player_heli_crash" );
    var_0 notify( "death" );
    var_0 _meth_80B7();
}

_ID51048()
{
    _ID42237::_ID14413( "player_heli_18" );
    thread _ID42407::_ID4433();
    level._ID52945 _meth_828D( 70 );

    if ( _func_02F( level._ID52695 ) )
        level._ID52695 _unknown_A61F();

    if ( _func_02F( level._ID48377 ) )
        level._ID48377 _unknown_A62C();

    if ( _func_02F( level._ID47577 ) )
        level._ID47577 _ID53477();

    var_0 = _func_1A2( "vehicles_crowsnest_defend", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2 ) )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_4 = _ID42411::_ID35196( "littlebird_wingman_02_drone_crash" );
    var_4 _meth_828D( 70 );
    var_5 = ( 0, 0, 250 );
    var_6 = _func_06A( "script_origin", var_4._ID740 );
    var_6._ID740 = var_4._ID740;
    var_6._ID65 = var_4._ID65;
    var_6 _meth_8053( var_4, "tag_origin", var_5, ( 0, 0, 0 ) );
    var_6 thread _unknown_AD86( var_4 );
    var_7 = _func_1A9( var_6, 8000, 3000 );
    var_8 = _func_1A1( "missile_org_lincoln", "targetname" );
    var_9 = _func_1C8( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_9 );
    wait 0.5;
    var_10 = _func_1C8( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_10 );
    wait 0.5;
    var_11 = _func_1C8( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_11 );
    wait 0.5;
    var_12 = _func_1C8( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_12 );
    wait 0.5;
    var_13 = _func_1C8( "slamraam_missile_dcburning", var_8._ID740, var_6._ID740 );
    var_8 thread maps\dcburning_aud::_ID53638( var_13 );
    var_14 = _func_1C8( "javelin_dcburn", var_8._ID740, var_4._ID740 );
    var_14 _meth_81E5( var_4 );
    var_15 = _ID42237::_ID16638( "littlebird_crash_ww2", "targetname" );
    var_4 thread _ID44311::_ID46706( var_15 );
    _ID42237::_ID14413( "player_heli_18b" );
    wait 2;
    _func_192( 0.5, 1.5, level._ID794._ID740, 1600 );
    level._ID52945 thread maps\dcburning_aud::_ID53429();
    _ID42237::_ID49667( level._ID1426["heli_hit"], level._ID52945, "side_door_r_jnt", ( -20, -10, 0 ) );
    level._ID794 _meth_80B4( "damage_heavy" );
    level._ID794 _meth_8057( 10, level._ID794._ID740 );
    thread _unknown_9EAE();
    thread _unknown_9ED1();
    level._ID52945 thread _unknown_9E1A();
    level._ID52945 thread _unknown_9EEF( "smoke_trail_black_heli" );
    wait 0.5;
    _ID42237::_ID14413( "player_heli_18d" );
    level._ID52945 _meth_828D( 25, 60, 60 );
    _ID42237::_ID3350( level._ID52835, _ID42237::_ID26402 );
    thread _unknown_ADDE( "axis", undefined, 1 );
    thread _unknown_ADD5( "axis", undefined, 1 );
    var_16 = _func_1A2( "axis_window_drones_01", "targetname" );
    thread _unknown_AF09( var_16, "axis_window_drones_01" );
    var_16 = _func_1A2( "axis_window_drones_02", "targetname" );
    thread _unknown_AF1D( var_16, "axis_window_drones_02" );
    _ID42407::_ID1801( "spawner_enemies_glass_02", "targetname", level._ID794 );
    _ID42407::_ID1801( "spawner_enemies_glass_03", "targetname", level._ID794 );
    var_16 = _func_1A2( "axis_lincoln_drones_01", "targetname" );
    thread _unknown_AF4D( var_16, "axis_lincoln_drones_01" );
    var_16 = _func_1A2( "axis_lincoln_drones_02", "targetname" );
    thread _unknown_AF60( var_16, "axis_lincoln_drones_02" );
    var_16 = _func_1A2( "axis_lincoln_drones_03", "targetname" );
    thread _unknown_AF74( var_16, "axis_lincoln_drones_03" );
    var_16 = _func_1A2( "axis_lincoln_drones_04", "targetname" );
    thread _unknown_AF87( var_16, "axis_lincoln_drones_04" );
    _ID42237::_ID14413( "player_heli_19a" );
    _unknown_B1A9();
    thread _unknown_AF6B( "volume_enemies_glass_02", "axis" );
    thread _unknown_AFBC( "axis_window_drones_01" );
    _ID42407::_ID1801( "spawner_enemies_glass_04", "targetname", level._ID794 );
    _ID42237::_ID14413( "player_heli_19b" );
    thread _unknown_AF96( "volume_enemies_glass_03", "axis" );
    _ID42237::_ID14413( "player_heli_19c" );
    var_17 = _ID42411::_ID35196( "littlebird_wingman_armed_lincoln" );
    var_17 _meth_828D( 90 );
    thread _unknown_AFB8( "volume_enemies_glass_04a", "axis" );
    thread _unknown_AFC4( "volume_enemies_glass_04", "axis" );
    _ID42407::_ID1801( "spawner_enemies_balcony_01", "targetname", level._ID794 );
    var_18 = _ID42411::_ID35199( "slamraam_lincoln" );
    _ID42407::_ID1801( "spawner_axis_lincoln_01", "targetname", level._ID794 );
    _ID42237::_ID14413( "player_heli_19d" );
    level._ID52945 _meth_828D( 80, 20, 20 );
    _ID42237::_ID14413( "player_heli_20" );
    var_18 = _ID42237::_ID15566( level._ID794._ID740, var_18 );
    var_19 = 0;
    var_20 = var_18;

    for ( var_22 = _func_1DA( var_20 ); _func_02F( var_22 ); var_22 = _func_1BF( var_20, var_22 ) )
    {
        var_21 = var_20[var_22];

        if ( _func_02F( var_21 ) )
        {
            var_21 thread _ID42407::_ID25088( "fire", var_19 );
            var_19 += 0.25;
        }
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "player_heli_21" );
    var_18 = _ID42237::_ID15566( level._ID794._ID740, var_18 );
    var_19 = 0;
    var_23 = var_18;

    for ( var_24 = _func_1DA( var_23 ); _func_02F( var_24 ); var_24 = _func_1BF( var_23, var_24 ) )
    {
        var_21 = var_23[var_24];

        if ( _func_02F( var_21 ) )
        {
            var_21 thread _ID42407::_ID25088( "fire", var_19 );
            var_19 += 0.25;
        }
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14413( "player_heli_22" );
    _unknown_B0DF( "axis_lincoln_drones_01" );
    _unknown_B0E7( "axis_lincoln_drones_02" );
    _unknown_B0F0( "axis_lincoln_drones_03" );
    _unknown_B0F8( "axis_lincoln_drones_04" );
    _ID42237::_ID14402( "player_crash_starting" );
    level._ID52945 thread _ID42407::_ID27079( "scn_dcburning_plr_heli_missile_hit_02" );
    level._ID794 thread _ID42407::_ID27079( "scn_player_heli_hit_vo" );
    level._ID52945 _meth_8295();
    level._ID52945 thread _ID42237::_ID27000( "scn_dcburning_plr_heli_dying_loop" );
    level._ID52945 thread maps\dcburning_aud::_ID45199();
    level._ID52945 _meth_828D( 150, 50, 50 );
    _ID42237::_ID49667( level._ID1426["heli_hit_2"], level._ID52945, "side_door_r_jnt", ( -20, -10, 0 ) );
    level._ID52945 thread _unknown_A174( "smoke_trail_black_heli_fire" );
    level._ID794 _meth_80B4( "damage_heavy" );
    level._ID52945 _meth_80A0( level._ID794 );
    level._ID794 _meth_8055();
    level._ID794 _meth_8328();
    level._ID52945 _meth_80C7();
    _ID42237::_ID14388( "player_on_minigun" );
    _ID42237::_ID14402( "player_off_minigun" );
    level notify( "player_off_blackhawk_gun" );
    level._ID52945 thread _unknown_A12F();
    level._ID52945 thread _unknown_A1C6();
    _func_192( 0.7, 2.5, level._ID794._ID740, 1600 );
    level._ID52945 thread _unknown_A1EA();
    wait 1;
    _ID42407::_ID14543( "allies" );
    thread _unknown_B098( "all", undefined, 1 );
    thread _unknown_B0B5( "axis", undefined, 1 );
    _ID42237::_ID14413( "player_heli_crash" );
    _ID42407::_ID4918( "allies" );
    _ID42407::_ID4918( "axis" );
    _func_192( 0.7, 2.5, level._ID794._ID740, 1600 );
    level._ID794 _meth_80B4( "damage_heavy" );
    level._ID794 notify( "stop sounddcburning_heli_alarm" );
    wait 0.1;
    var_17 _unknown_AB23();
    wait 0.3;
    _ID42407::_ID24584();
    _ID42475::_ID34575( "start_heli_crash_black_screen" );
    thread maps\dcburning_aud::crashsite_heli_rappel();
    level._ID5261 = _ID42313::_ID9125( "black", 1 );
    level._ID794 _meth_8055();
    wait 0.1;
    level._ID52945 _unknown_AB54();
    wait 2;
    maps\dcburning_lighting::_ID51844( "dcburning_helicrash" );
    var_25 = "-42263 6917 183";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_25 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_25 );
    _ID42237::_ID14402( "player_crash_done" );
    level._ID794 _meth_8313( 1, "nightvision" );

    if ( _func_03A( "sm_enable" ) && _func_039( "r_zfeather" ) != "0" )
        level._ID1426["_attack_heli_spotlight"] = _func_155( "fx/misc/spotlight_large_dcburning" );
    else
        level._ID1426["_attack_heli_spotlight"] = _func_155( "fx/misc/spotlight_large" );
}

_ID44843()
{
    thread _unknown_A25D();
    _ID42237::_ID14388( "player_on_minigun" );
    _ID42237::_ID14402( "player_off_minigun" );
    level._ID794 _meth_8334( 1 );
    self _meth_80A0( level._ID794 );
    level._ID794 _meth_8084( self._ID23875, "tag_player", 1, 0, 0, 0, 0, 1 );
    level._ID794 _meth_8099();
    self _meth_805A();
    self._ID23875 _meth_8059();
    self._ID23875 _unknown_B715();
    var_0 = self._ID23875 _ID42407::_ID16120( "minigun_first_impact" );
    self._ID23875 _meth_811A( "minigun_first_impact", var_0, 1, 0 );
    self._ID23875 waittill( "minigun_first_impact" );
    self._ID23875 _meth_814C( var_0, 0.1 );
    self _meth_8155( _ID42407::_ID16120( "minigun_idle" ), 0.1 );
    wait 0.05;
    self._ID23875 _meth_805A();
    self _meth_8059();
    self _meth_80A0( level._ID794 );
    level._ID794 _meth_8099();
    level._ID794 _meth_8334( 0 );
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
    thread _unknown_A362();
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_8084( self._ID23875, "tag_player", 1, 0, 0, 0, 0 );
    level._ID794 _meth_8099();
    self _meth_805A();
    self._ID23875 _meth_8059();
    self._ID23875 _unknown_B7D3();

    if ( _func_02F( self.rooftop_helirider ) )
        self.rooftop_helirider _meth_805A();

    var_0 = self._ID23875 _ID42407::_ID16120( "minigun_second_impact" );
    self._ID23875 _meth_8155( var_0, 1, 0 );
    wait(_func_067( var_0 ));

    if ( _func_02F( self._ID23875 ) )
        self._ID23875 _meth_814C( var_0, 0 );

    level._ID794 _meth_8055();
    level._ID794 _meth_8334( 0 );
}

second_impact_cinematic()
{
    var_0 = _ID54167::_ID43386( "helicopter_second_impact" );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 7.5 ) _ID54167::_ID47844( 0 );
    var_0 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 22.0, 30, 32, 32 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 0.05 ) _ID54167::_ID50321( 14.0, 30, 2.0, 2.0 );
    var_0 _ID54167::_ID48800( 7.5 ) _ID54167::_ID46727() _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID43376( ::_func_032, undefined, "ui_consciousness_init", 1 );
    var_0 _ID54167::_ID48800( 0.5 ) _ID54167::_ID43376( ::_func_032, undefined, "ui_consciousness_play", 1 );
    var_0 _ID54167::_ID48166();
}

_ID46730()
{
    var_0 = _ID42237::_ID35164();
    var_0 _meth_8053( level._ID52945, "tag_guy5", ( 0, 0, 0 ), ( 0, 0, 0 ) );

    while ( !_ID42237::_ID14385( "player_crash_done" ) )
    {
        _func_157( _ID42237::_ID16299( "dlight_red" ), var_0, "tag_origin" );
        wait 1;
        _func_158( _ID42237::_ID16299( "dlight_red" ), var_0, "tag_origin" );
        wait 0.5;
    }

    var_0 _meth_8055();
    var_0 _meth_80B7();
}

_ID47877()
{
    while ( !_ID42237::_ID14385( "player_crash_starting" ) )
    {
        _func_192( 0.18, 0.05, level._ID794._ID740, 80000 );
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
        _func_157( _ID42237::_ID16299( var_0 ), level._ID52945, "tag_gun_r" );
        wait 0.05;
    }
}

_ID44785()
{
    while ( !_ID42237::_ID14385( "player_heli_crash" ) )
    {
        _func_157( _ID42237::_ID16299( "heat_shimmer_door" ), self, "tag_player" );
        wait 0.1;
    }
}

_ID52153()
{
    self _meth_829E( 50, 100 );
    self _meth_82A0( 1 );
    var_0 = 1400;
    var_1 = 200;
    var_2 = undefined;

    while ( _func_02F( self ) )
    {
        var_2 = self._ID65[1] + 100;
        self _meth_829C( var_0, var_1 );
        self _meth_8268( var_2 );
        wait 0.1;
    }
}

_ID53905()
{
    if ( !_func_0D6( self ) )
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
    if ( !_func_02F( self._ID31388 ) )
        return;

    self._ID3189 = "enemy_death";
    thread _unknown_A642();

    if ( self._ID31388 == "windows" )
    {
        var_0 = [];
        var_0[0] = "h2_favela_backalleys_death_rooftop_A";
        var_0[1] = "h2_favela_backalleys_death_rooftop_B";
        var_0[2] = "h2_favela_backalleys_death_rooftop_C";
        var_0[3] = "h2_favela_backalleys_death_rooftop_D";
        _ID42407::_ID32265( var_0[_func_0B9( 0, 3 )] );
    }
    else
        thread _unknown_A698();
}

_ID46002()
{
    var_0 = _func_0C8( self._ID31388, "targetname" );
    thread _ID42407::_ID22746( 1 );
    self waittill( "damage" );
    self._ID24924 = undefined;

    if ( _func_02F( self._ID31388 ) )
    {
        switch ( self._ID31388 )
        {

        }
    }

    if ( _func_1A7( self ) )
    {
        _ID42407::_ID36519();
        return;
        case "balcony_fall6":
        case "balcony_fall4":
        case "balcony_fall1":
        case "balcony_fall2":
        case "balcony_fall3":
    }
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
        var_3 = _func_11C( self._ID65, var_0._ID65, var_2 / var_1 );
        self _meth_81D1( self._ID740, var_3 );
        var_2 += 0.05;
        waittillframeend;
    }
}

_ID44336()
{
    wait 6;
    var_0 = 1;
    _func_1E3( var_0, "current", &"DCBURNING_OBJ_REGROUP_WITH_TEAM" );
}

_ID53750()
{
    _ID42237::_ID14413( "obj_follow_sgt_macey_given" );
    _func_116( 1, &"DCBURNING_OBJ_MACRO_SECURE_DEPARTMENT_OF_COMMERCE_BUILDING" );
    var_0 = 2;
    var_1 = level._ID44035;
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_FOLLOW_SGT_MACEY" );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID44035, ( 0, 0, 70 ) );
    _func_1E7( var_0, 1 );
    _ID42237::_ID14413( "obj_follow_sgt_macey_complete" );
    _func_114( var_0, "done" );
}

_ID49099()
{
    _ID42237::_ID14413( "obj_commerce_given" );
    var_0 = 2;
    var_1 = _ID42237::_ID16638( "obj_commerce_sector_1", "targetname" );
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_COMMERCE" );
    _func_1E9( var_0 );
    _func_194( var_0, level._ID44035, ( 0, 0, 70 ) );
    _func_1E7( var_0, 1 );
    _ID42237::_ID14413( "player_around_corner_to_crows_nest" );
    _func_1E8( var_0, ( 0, 0, 0 ) );
    var_1 = _ID42237::_ID16638( "obj_commerce_sector_3", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_commerce_complete" );
    _func_1E5( var_0, "done" );
}

_ID47819()
{
    _ID42237::_ID14413( "obj_commerce_defend_snipe_given" );
    _func_1E3( 3, "invisible", &"DCBURNING_OBJ_COMMERCE_SUPPORT_EVAC_SITE" );
    _func_114( 3, "active" );
    var_0 = 4;
    var_1 = _ID42237::_ID16638( "obj_commerce_defend_snipe", "targetname" );
    var_2 = ( 19, 0, -5 );
    var_3 = var_1._ID740 + var_2;
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_COMMERCE_DEFEND_SNIPE", var_3 );
    _func_1E9( var_0 );
    _func_1E7( var_0, 1 );
    _ID42237::_ID14413( "obj_commerce_defend_snipe_complete" );
    _func_1E5( var_0, "done" );
}

_ID54341()
{
    level endon( "obj_commerce_defend_snipe_complete" );
    self waittill( "death" );
    level._ID52350 = _func_03D();
    level._ID50946 = level._ID50946 - 1;

    if ( level._ID50946 < 3 )
        _ID42237::_ID14402( "only_2_sniper_enemies_remaining" );

    if ( level._ID50946 == 0 )
        _ID42237::_ID14402( "obj_commerce_defend_snipe_complete" );
}

_ID47909()
{
    _ID42237::_ID14413( "obj_commerce_defend_crow_given" );
    _func_1E4( 3 );
    _func_1E4( 4 );
    _func_1E3( 4, "invisible", &"DCBURNING_OBJ_COMMERCE_SUPPORT_EVAC_SITE" );
    _func_1E3( 5, "invisible", &"DCBURNING_OBJ_COMMERCE_DEFEND_SNIPE" );
    _func_1E7( 4, 0 );
    _func_1E7( 5, 1 );
    _func_114( 4, "active" );
    _func_114( 5, "done" );
    var_0 = 3;
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_COMMERCE_DEFEND_CROW" );
    var_1 = _func_1A1( "crow_defend_obj1", "targetname" );
    var_2 = _func_1A1( "crow_defend_obj2", "targetname" );
    _func_117( var_0, 0, var_1._ID740 );
    _func_117( var_0, 1, var_2._ID740 );
    _func_0C7( var_0, &"DCBURNING_OBJ_TEXT_DEFEND" );
    _func_1E5( var_0, "current" );
    _func_1E7( var_0, 1 );
    _ID42237::_ID14413( "obj_commerce_defend_crow_complete" );
    _func_1E5( var_0, "done" );
    _func_114( 1, "done" );
}

_ID53452()
{
    var_0 = _func_1A1( "javelin_obj", "script_noteworthy" );

    if ( !_func_02F( var_0 ) )
    {
        var_1 = _func_1A2( "javelins_crowsnest", "targetname" );

        if ( var_1.size )
            var_0 = _ID42237::_ID16182( level._ID794 _meth_809C(), var_1, 300 );
    }

    return var_0;
}

_ID45013()
{
    _ID42237::_ID14413( "obj_commerce_defend_javelin_given" );
    wait 0.5;
    var_0 = 6;
    var_1 = _ID42237::_ID16638( "obj_defend_javelin", "targetname" );
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_COMMERCE_DEFEND_JAVELIN" );
    _func_1E9( var_0 );
    _func_1E7( var_0, 1 );

    if ( !_unknown_9BB8() )
    {
        var_2 = _unknown_AAD2();

        if ( _func_02F( var_2 ) )
        {
            var_3 = var_2._ID740 + ( 0, 0, 25 );
            thread _unknown_9C7A( var_2 );
            var_1._ID740 = var_3;
            _func_1E8( var_0, var_1._ID740 );
        }

        _ID42237::_ID14413( "player_has_javelin" );
        _func_1E8( var_0, ( 0, 0, 0 ) );
    }

    var_4 = level._ID794 _meth_831C();

    if ( !_func_125( var_4, "javelin" ) )
        level._ID794 thread _ID42407::_ID11085( "javelin_switch" );

    _ID42237::_ID14413( "obj_commerce_defend_javelin_complete" );
    _func_1E5( var_0, "done" );
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

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
    {
        level._ID52350 = _func_03D();

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
    _func_114( 1, "done" );
    var_0 = 7;
    var_1 = _ID42237::_ID16638( "obj_commerce_roof", "targetname" );
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_ROOFTOP", var_1._ID740 );
    _func_1E9( var_0 );
    _func_1E7( var_0, 1 );
    _func_1E7( 7, 1 );
    _ID42237::_ID14413( "player_roof_stairs_00" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof02", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_roof_stairs_01" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_roof_stairs_02" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03a", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_outer_balcony_top_commerce" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03b", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_headed_to_roof" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03c", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_approach_commerce_roof_01" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof03d", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "player_approach_commerce_roof_02" );
    var_1 = _ID42237::_ID16638( "obj_commerce_roof04", "targetname" );
    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_rooftop_complete" );
    _func_1E5( var_0, "done" );
}

_ID51605()
{
    _ID42237::_ID14413( "obj_rooftop_complete" );
    var_0 = 8;
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_1._ID740 = level._ID52945 _meth_818C( "tag_player" );
    var_1 _meth_8053( level._ID52945, "tag_player", ( 0, 0, 25 ), ( 0, 0, 0 ) );
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_HELI_MOUNT", var_1._ID740 );
    _func_1E9( var_0 );
    _func_1E7( var_0, 1 );

    while ( !_ID42237::_ID14385( "blackhawk_landed" ) )
    {
        _func_1E8( var_0, var_1._ID740 );
        wait 0.05;
    }

    _func_1E8( var_0, var_1._ID740 );
    _ID42237::_ID14413( "obj_heli_mount_complete" );
    _func_1E5( var_0, "done" );
}

_ID53654()
{
    _ID42237::_ID14413( "obj_heli_ride_given" );
    var_0 = 9;
    _func_1E3( var_0, "active", &"DCBURNING_OBJ_HELI_RIDE", level._ID794._ID740 );
    _func_1E9( var_0 );
    _func_1E7( 9, 1 );
    _ID42237::_ID14413( "obj_heli_ride_complete" );
    _func_114( var_0, "done" );
    _func_114( 4, "done" );
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
    self _meth_82CA( 1 );

    for (;;)
    {
        self waittill( "damage",  var_11, var_10, var_9, var_8, var_7, var_6, var_5  );

        if ( var_5 <= 0 )
            continue;

        if ( _func_02F( var_4 ) && var_4 )
        {
            var_12 = _func_1A1( self._ID1191, "targetname" );
            var_12 _meth_80B7();
        }

        if ( _func_02F( var_3 ) && var_3 )
            self _meth_82CC( self._ID740, var_7 * var_5 );

        self _meth_80B8( var_0 );
        var_13 = self _meth_809C();
        var_14 = var_13 + var_2;
        _func_156( _ID42237::_ID16299( var_1 ), var_14 );
        break;
    }
}

_ID46656()
{
    _unknown_AF80( "h1_mwr_com_widescreen_monitor_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
}

_ID54547()
{
    _unknown_AF98( "h1_mwr_com_widescreen_monitor_2_des", "tv_explosion", ( 0, 0, 30 ), 1 );
}

_ID48761()
{
    _unknown_AFB3( "com_widescreen_monitor_on_1_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
}

_ID43437()
{
    _unknown_AFCD( "com_widescreen_monitor_on_2_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
}

_ID50807()
{
    _unknown_AFE7( "com_widescreen_monitor_on_3_des", "tv_explosion", ( 0, 0, 28 ), 1, 1 );
}

_ID43576()
{

}

_ID53576( var_0 )
{
    if ( var_0._ID1194 == "axis" )
        var_0 thread _unknown_B05D();

    if ( var_0._ID1194 == "allies" )
        var_0 thread _unknown_B06C();
}

_ID45781()
{

}

_ID52457()
{

}

_ID45242()
{
    while ( _func_1A7( self ) )
    {
        self waittill( "damage",  var_3, var_2, var_1, var_0  );

        if ( _func_02F( var_1 ) && _func_02F( var_1._ID170 ) && var_1._ID170 == "misc_turret" )
        {
            if ( !_func_02F( var_3 ) )
                break;

            if ( !_func_02F( var_2 ) )
                var_2 = ( 0, 0, 1 );

            _func_156( _ID42237::_ID16299( "thermal_body_gib" ), var_3 );
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

    if ( !_func_02F( self ) )
        return;

    thread _unknown_B149( 1 );
    self._ID4867 = 0.01;
    self._ID86 = 10;
    self._ID2219 = 1;
    var_0 = undefined;
    var_1 = undefined;

    while ( _func_1A7( self ) )
    {
        self waittill( "damage",  var_5, var_4, var_1, var_3, var_0, var_2  );

        if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
            continue;

        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740 + ( 0, 0, 32 ), level._ID8760["90"] ) )
            break;
    }

    if ( _func_02F( self._ID22746 ) )
        _ID42407::_ID36519();

    self _meth_8058( var_1, var_0 );
}

_ID50012( var_0 )
{
    self endon( "death" );

    while ( _func_02F( self._ID23353 ) )
        wait 0.1;

    thread _ID42407::_ID22746( var_0 );
}

_ID48332()
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID172 ) && self._ID172 == "script_model" )
        return;

    _ID42407::_ID32628( 1 );
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID465 = 0;
    self _meth_8183( "oblivious" );
}

_ID43214()
{
    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID172 ) && self._ID172 == "script_model" )
        return;

    self endon( "death" );
    _ID42407::_ID32628( 0 );
    self._ID511 = 0;
    self._ID507 = 0;
    self._ID465 = 1;
    self _meth_8183( "allies" );
}

_ID51434()
{
    if ( !_func_02F( self ) )
        return;

    self._ID381 = 0;
}

_ID43163()
{
    if ( !_func_02F( self ) )
        return;

    self._ID381 = 1;
}

_ID52458()
{
    self endon( "death" );
    self._ID511 = 1;
    self._ID11025 = 1;
    _ID42407::_ID8925( "on" );
    var_0 = _func_0C8( self._ID1191, "targetname" );
    self._ID452 = 16;
    self _meth_81B1( var_0 );
    wait 1;
    _ID42237::_ID41098( "goal", "damage" );
    self._ID511 = 0;
    self._ID11025 = 0;
    thread _unknown_AFA5();
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

    if ( _func_02F( self._ID1191 ) )
    {
        self._ID465 = 0;
        self._ID507 = 1;
        self._ID52325 = [];
        self._ID52325[0] = _func_0C8( self._ID1191, "targetname" );
        var_0 = self._ID52325[0] _ID42237::_ID15808();
        var_2 = 1;

        for (;;)
        {
            if ( _func_02F( self._ID52325[var_2 - 1]._ID1191 ) )
            {
                var_1 = _func_0C8( self._ID52325[var_2 - 1]._ID1191, "targetname" );
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
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4._ID172 == "script_origin" )
        {
            self._ID50129 = _ID42237::_ID3321( self._ID50129, var_4 );
            self._ID48691 = _ID42237::_ID3293( self._ID48691, var_4 );
        }
    }

    var_clear_2
    var_clear_0

    if ( self._ID50129.size > 0 )
        level._ID52873 = _ID42407::_ID3317( level._ID52873, self._ID50129 );

    switch ( self._ID922 )
    {

    }

    case "enemy_javelin":
    case "enemy_stinger":
    case "enemy_spotter_crouched":
    case "enemy_spotter_prone":
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

    if ( _func_02F( self._ID52325 ) )
    {
        self._ID50813 = "javelin_fire_short";
        self._ID52785 = level._ID30895["generic"]["javelin_death_barrett"];
        self._ID49082 = level._ID30895["generic"]["javelin_death_barrett"];
    }
}

_ID43173()
{
    self endon( "death" );
    thread _unknown_B67B();
    thread _unknown_B5C0();
    self endon( "alerted" );
    self._ID29359 _ID42259::_ID3023( self, self._ID44964 );
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;
    self _meth_801D( "weapon_stinger", "TAG_INHAND", 1 );
    self._ID54388 = 1;

    while ( _func_1A7( self ) )
    {
        self._ID29359 thread _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
        wait(_func_0BA( 2, 5 ));
        self._ID29359 notify( "stop_idle" );
        self._ID29359 thread _ID42259::_ID3020( self, self._ID50813 );
        self waittillmatch( "single anim",  "fire_weapon"  );
        var_0 = _unknown_B6AF();

        if ( _func_02F( var_0 ) )
        {
            var_2 = self _meth_818C( "tag_inhand" );
            var_1 = _func_1C8( "stinger", var_2, var_0._ID740 );
            var_1 _meth_81E5( var_0 );
        }

        self waittillmatch( "single anim",  "end"  );
    }
}

_ID44797()
{
    self waittill( "death" );
    self endon( "weapon_detached" );

    if ( _func_02F( self._ID48667 ) && !_func_02F( self._ID52603 ) )
        _ID42407::_ID41115( "deathanim", "end", 4 );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID54388 ) )
    {
        if ( _func_02F( self ) )
        {
            self _meth_802A( "weapon_stinger", "TAG_INHAND" );
            self._ID54388 = undefined;
        }
    }
    else if ( _func_02F( self._ID48667 ) )
    {
        if ( _func_02F( self ) )
        {
            self _meth_802A( "weapon_javelin_sp", "TAG_INHAND" );
            self._ID48667 = undefined;
        }
    }
}

_ID47524()
{
    self endon( "death" );
    thread _unknown_B77D();
    thread _unknown_B6C2();
    self endon( "alerted" );
    var_0 = _func_0C9( "javelin_death_node", "targetname" );

    if ( !_func_02F( self._ID52325 ) )
        self._ID29359 _ID42259::_ID3023( self, self._ID44964 );

    var_1 = undefined;
    var_2 = undefined;
    self _meth_801D( "weapon_javelin_sp", "TAG_INHAND", 1 );
    self._ID48667 = 1;
    var_3 = 0;

    while ( _func_1A7( self ) )
    {
        if ( _func_02F( self._ID52325 ) )
        {
            self._ID9813 = undefined;

            if ( var_3 + 1 > self._ID52325.size )
                var_3 = 0;

            self._ID452 = 16;

            if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) && !_func_02F( self._ID31388 ) )
            {
                var_4 = _ID42237::_ID16182( self._ID740, var_0 );
                self _meth_81B1( var_4 );
                self waittill( "goal" );
                self _meth_80B7();
                return;
            }

            self _meth_81B1( self._ID52325[var_3] );
            self._ID29359 = self._ID52325[var_3];
            var_3++;
            self waittill( "goal" );
        }

        if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_complete" ) && _func_02F( self._ID31388 ) )
        {
            var_5 = [];
            var_5[0] = self;
            thread _ID42407::_ID2265( var_5, 512 );
        }

        self._ID29359 thread _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
        self._ID9813 = self._ID52785;

        if ( _func_02F( self._ID52325 ) )
            wait 0.25;
        else
            wait(_func_0BA( 2, 7 ));

        self._ID29359 notify( "stop_idle" );
        thread _ID42259::_ID3020( self, self._ID50813 );
        self waittillmatch( "single anim",  "fire_weapon"  );
        var_1 = _unknown_B84B();

        if ( _func_02F( var_1 ) )
        {
            var_2 = _func_1C8( "javelin_dcburn", self _meth_818C( "tag_inhand" ), var_1._ID740 );
            _func_157( _ID42237::_ID16299( "javelin_muzzle" ), self, "TAG_FLASH" );
            var_2 _meth_81E5( var_1 );
            var_2 _meth_81E9();
        }

        self waittillmatch( "single anim",  "end"  );
    }
}

_ID54023()
{
    self endon( "death" );
    self endon( "alerted" );
    self._ID50129 = _unknown_C65C( self._ID50129 );
    level._ID52873 = _unknown_C665( level._ID52873 );
    var_0 = undefined;

    if ( self._ID54201 == 1 && self._ID53511 == 1 )
    {
        if ( self._ID50129.size > 0 )
            var_0 = self._ID50129[_func_0B7( self._ID50129.size )];
        else if ( level._ID52873.size > 0 )
            var_0 = level._ID52873[_func_0B7( level._ID52873.size )];
        else
            var_0 = self._ID48691[_func_0B7( self._ID48691.size )];

        self._ID54201 = 0;
    }
    else
    {
        var_0 = self._ID48691[_func_0B7( self._ID48691.size )];
        self._ID54201 = 1;
    }

    return var_0;
}

_ID53492()
{
    self endon( "death" );
    thread _unknown_B934();
    self endon( "alerted" );
    self._ID29359 _ID42259::_ID3025( self, self._ID49335, "stop_idle" );
}

_ID54740()
{
    if ( _func_02F( self._ID1194 ) && self._ID1194 == "allies" )
        return;

    self endon( "death" );
    self waittill( "alerted" );
    self._ID452 = self._ID25510;

    if ( _func_02F( self._ID54388 ) )
    {
        if ( _func_02F( self._ID7._ID28253 ) && self._ID7._ID28253 == "crouch" )
            self._ID53396 = "stinger_react_crouch";
    }

    if ( _func_02F( self._ID29359 ) )
        self._ID29359 notify( "stop_idle" );

    self notify( "stop_idle" );
    _ID42407::_ID3136();
    _ID42259::_ID3020( self, self._ID53396 );
    self._ID9813 = undefined;

    if ( _func_02F( self._ID54388 ) )
    {
        self _meth_802A( "weapon_stinger", "TAG_INHAND" );
        self notify( "weapon_detached" );
        self._ID54388 = undefined;
    }
    else if ( _func_02F( self._ID48667 ) )
    {
        self _meth_802A( "weapon_javelin_sp", "TAG_INHAND" );
        self notify( "weapon_detached" );
        self._ID48667 = undefined;
    }

    _ID42407::_ID17508();
}

_ID48687()
{
    self endon( "death" );

    if ( _func_02F( self ) && _func_1A7( self ) && !_func_02F( self._ID54440 ) )
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

    while ( _func_1A7( self ) )
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
    thread _ID47301( 1 );
    self endon( "stop_default_drone_mi" );

    if ( _func_02F( self._ID922 ) && self._ID922 == "drone_warrior_fodder" )
        self._ID24866 = 1;

    if ( _func_02F( self._ID24866 ) )
        thread _unknown_BB17();

    if ( _func_02F( self._ID922 ) && self._ID922 == "ai_ambient" )
    {
        self._ID11572 = 1;
        self._ID31276 = 0;
    }

    self waittill( "goal" );

    if ( _func_02F( self._ID922 ) )
    {
        switch ( self._ID922 )
        {

        }

        return;
    }

    self _meth_80B7();
    return;
    case "drone_warrior":
    case "death_by_mortar":
    case "drone_warrior_fodder":
    default:
}

_ID47301()
{
    if ( !_func_02F( self ) )
        return;

    thread _ID42286::_ID11846();
    self waittill( "death" );
    wait 10;

    while ( _func_02F( self ) )
    {
        if ( !_ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), self._ID740, level._ID8760["90"] ) )
            break;

        wait 5;
    }

    if ( _func_02F( self ) )
        self _meth_80B7();
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
        var_3 = _func_06A( "trigger_radius", var_0, var_2, var_4, var_1 );
        thread _unknown_BC3F( var_3 );
    }
    else
    {
        var_4 = _func_0B9( 400, 512 );
        var_3 = _func_06A( "trigger_radius", var_0, var_2, var_4, var_1 );
        thread _unknown_BC30( var_3 );
    }
}

_ID43260( var_0 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
        var_0 waittill( "trigger" );

    var_1 = _ID42237::_ID28945( level._ID44323 )._ID740;
    thread _ID42237::_ID27077( "h2_wpn_desert_eagle_npc_close", self._ID740 );
    thread _ID42237::_ID27077( "bullet_large_flesh", self._ID740 );
    var_2 = self _meth_818C( "tag_eye" );
    var_3 = _func_119( var_2 - var_1 );
    _func_156( _ID42237::_ID16299( "headshot" ), var_2, var_3 );
    _func_157( _ID42237::_ID16299( "bodyshot" ), self, "tag_eye" );
    self notify( "stop_drone_fighting" );

    if ( _ID42237::_ID8201() )
        thread _ID42237::_ID27077( "generic_death_american_1", self._ID740 );

    self _meth_8058();
}

_ID45664( var_0 )
{
    self endon( "death" );

    if ( _func_02F( var_0 ) )
        var_0 waittill( "trigger" );

    if ( !level._ID43469 )
        _ID42237::_ID27077( "mortar_incoming", self._ID740 );

    thread _unknown_C36A( self._ID740 );
    self notify( "stop_drone_fighting" );

    if ( _ID42237::_ID8201() )
        thread _ID42237::_ID27077( "generic_death_american_1", self._ID740 );

    if ( !_func_02F( self._ID3203 ) )
        var_1 = level._ID30895["generic"]["deathanim_mortar_0" + _func_0B7( 2 )];
    else if ( _func_125( self._ID3203, "stand" ) || _func_125( self._ID3203, "crouch" ) )
        var_1 = level._ID30895["generic"]["deathanim_mortar_01"];
    else
        var_1 = level._ID30895["generic"]["deathanim_mortar_0" + _func_0B7( 2 )];

    if ( _func_02F( self._ID9813 ) )
    {
        if ( _ID42237::_ID8201() )
            var_1 = self._ID9813;
    }

    self._ID9813 = var_1;
    self _meth_8058();
}

_ID53895( var_0 )
{
    self waittill( "death",  var_2, var_2  );

    if ( !_func_02F( var_1 ) )
        return;

    if ( _func_02F( var_1._ID1193 ) && var_1._ID1193 == "heli_player" && _ID42237::_ID14385( "player_on_minigun" ) )
    {
        self._ID34237 = 1;

        if ( _func_02F( var_0 ) && var_0 == 1 )
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
    _func_152( "crash_heli_rumble" );
    _func_152( "Heli_pass_above" );
    _func_14E( "missile_attackheli_dcburn" );
    _func_14C( "viewhands_us_army_dmg" );
    _func_14E( "slamraam_missile_dcburning" );
    _func_14C( "vehicle_slamraam_destroyed" );
    _func_14C( "vehicle_bradley_destroyed" );
    _func_14C( "mil_mre_chocolate01" );
    _func_14C( "weapon_binocular" );
    _func_14E( "slamraam_missile_dcburning" );
    _func_14C( "weapon_bullet_02" );
    _func_14C( "weapon_m82_MG_Setup_obj" );
    _func_14C( "projectile_cbu97_clusterbomb" );
    _func_14C( "weapon_m4m203_acog" );
    _func_14C( "weapon_stinger" );
    _func_14C( "weapon_javelin_sp" );
    _func_14C( "h2_weapon_javelin_base_obj" );
    _func_14C( "h2_dcburning_obelisk_break_a" );
    _func_14C( "h2_dcburning_obelisk_break_b" );
    _func_14C( "h2_dcburning_crutch_animated" );
    _func_14C( "com_blackhawk_spotlight_on_mg_setup" );
    _func_150( &"DCBURNING_INFO_EVAC_SITE_HEALTH" );
    _func_150( &"DCBURNING_OBJ_FOLLOW_SGT_MACEY" );
    _func_150( &"DCBURNING_OBJ_COMMERCE" );
    _func_150( &"DCBURNING_OBJ_ROOFTOP" );
    _func_150( &"DCBURNING_OBJ_HELI_RIDE" );
    _func_150( &"DCBURNING_OBJ_LINCOLN" );
    _func_150( &"DCBURNINGINFO_EVAC_SITE_HEALTH" );
    _func_150( &"DCBURNING_MISSIONFAIL_LEFT_CHOPPER" );
    _func_150( &"DCBURNING_RAN_OUT_OF_TIME" );
    _func_150( &"DCBURNING_TIME_REMAINING" );
    _func_150( &"DCBURNING_OBJ_REGROUP_WITH_TEAM" );
    _func_150( &"DCBURNING_OBJ_COMMERCE_SUPPORT_EVAC_SITE" );
    _func_14C( "adrenaline_syringe_animated" );
    _func_14C( "clotting_powder_animated" );
    _func_14C( "com_folding_chair" );
    _func_14C( "com_laptop_rugged_open" );
    _func_14C( "vehicle_mack_truck_short_destroy" );
    _func_14C( "vehicle_uaz_fabric_dsr" );
    _func_14C( "vehicle_luxurysedan_2008_destroy" );
    _func_14E( "javelin_dcburn" );
    _func_14E( "javelin_noimpact" );
    _func_14E( "stinger" );
    _ID42313::_ID54261();
    _func_14C( "h1_mwr_com_widescreen_monitor_des" );
    _func_14C( "h1_mwr_com_widescreen_monitor_2_des" );
    _func_14C( "com_widescreen_monitor_on_1_des" );
    _func_14C( "com_widescreen_monitor_on_2_des" );
    _func_14C( "com_widescreen_monitor_on_3_des" );
    _func_14C( "h2_adrenaline_syringe_phys" );
}

_ID47940()
{
    level._ID53717 = undefined;
    level._ID53836 = undefined;

    switch ( level._ID15361 )
    {

    }

    _ID42237::_ID14402( "difficulty_initialized" );
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID46797()
{
    _ID42237::_ID3350( level._ID46473, _ID42237::_ID38863 );
}

_ID53561()
{
    for (;;)
    {
        wait(_func_0BA( 0.05, 0.1 ));
        self _meth_81EB( _func_0BA( 1, 1.5 ) );
    }
}

_ID48168()
{
    for (;;)
    {
        wait(_func_0BA( 0.05, 0.1 ));
        self _meth_81EB( _func_0BA( 0.8, 1.1 ) );
    }
}

_ID47332()
{
    for (;;)
    {
        self _meth_81EB( 0 );
        wait 1;
        self _meth_81EB( 1.4 );
        wait 0.1;
    }
}

_ID22343()
{
    var_0 = _func_1A2( "firelight_flicker", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_C6EB );
    var_1 = _func_1A2( "flickerlight1", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _unknown_C705();
    }

    var_clear_2
    var_clear_0
    var_5 = _func_1A2( "fluorescentFlicker", "targetname" );
    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 thread _unknown_C123();
    }

    var_clear_2
    var_clear_0
    var_5 = _func_1A2( "fluorescentFlickerBig", "targetname" );
    var_9 = var_5;

    for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
    {
        var_7 = var_9[var_10];
        var_7 thread _unknown_C155();
    }

    var_clear_1
    var_clear_0
    var_11 = _func_1A2( "strobe1", "targetname" );
    var_12 = var_11;

    for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
    {
        var_13 = var_12[var_14];
        var_13 thread _unknown_C189();
    }

    var_clear_2
    var_clear_0
}

_ID45905( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    waitframe;

    if ( _func_02F( var_1 ) && var_1 != 1 )
    {
        level._ID35507 = [];
        level._ID44035 = _ID42407::_ID35168( "teamLeader" );
        level._ID49792 = _ID42407::_ID35168( "friendly02" );
        level._ID48061 = _ID42407::_ID35168( "friendly03" );
        level._ID35507[0] = level._ID44035;
        level._ID35507[1] = level._ID49792;
        level._ID35507[2] = level._ID48061;
        _ID42237::_ID3350( level._ID35507, ::_unknown_C2A2 );
        level._ID13290 = [];
        level._ID13290[0] = level._ID44035;
    }

    level._ID47286 = level._ID35507;

    if ( var_0 == "Bunker" )
        return;

    if ( _func_02F( var_2 ) && var_2 == 1 )
    {
        var_3 = _func_0C9( "playerStart" + var_0, "targetname" );
        _ID42407::_ID37442( var_3 );
    }

    var_4 = level._ID35507;
    var_5 = _func_0C9( "friendlyStart" + var_0, "targetname" );

    while ( var_4.size > 0 )
    {
        wait 0.05;

        for ( var_6 = 0; var_6 < var_5.size; var_6++ )
        {
            if ( _func_02F( var_5[var_6]._ID922 ) )
            {
                switch ( var_5[var_6]._ID922 )
                {

                }

                case "nodeFriendly03":
                case "nodeFriendly02":
                case "nodeLeader":
                default:
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
    var_0 = level._ID35507;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( self ) )
            self._ID382 = level._ID14382;
    }

    var_clear_2
    var_clear_0
}

_ID44608()
{
    level._ID14382 = undefined;
    var_0 = level._ID35507;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( self ) )
            self._ID382 = 64;
    }

    var_clear_2
    var_clear_0
}

_ID43426( var_0 )
{
    self endon( "death" );
    var_0 waittill( "trigger" );
    self notify( "landing" );
    _ID42407::_ID40118();
    self _meth_8266( var_0._ID65[1] );
    _ID42544::_ID40185( undefined, var_0 );
    self notify( "landed" );
}

_ID47735()
{
    var_0 = _ID42237::_ID16638( self._ID922, "script_noteworthy" );
    var_1 = _func_0F3( self._ID740, var_0._ID740 );
    _ID42407::_ID40191( var_1 );
    thread _ID42411::_ID40218( var_0 );
}

_ID45307( var_0, var_1 )
{
    _unknown_C5AF();
    var_2 = _ID42407::_ID16728( var_0 );
    var_2._ID1191 = var_1._ID1193;
    var_2._ID740 = var_1._ID740;

    if ( _func_02F( var_1._ID65 ) )
        var_2._ID65 = ( var_1._ID65[0], var_1._ID65[1], var_2._ID65[2] );

    var_3 = _ID42411::_ID35195( var_0 );
    var_3 thread _ID42411::_ID40218( var_1 );
    var_3 _ID42411::_ID40066( "idle_alert_to_casual" );
    return var_3;
}

achievement_bird_hunter_init()
{
    level.birdhunterkill = 0;
    thread _unknown_C509();
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
    self waittill( "death",  var_2, var_2, var_2  );

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
    {
        if ( _func_02F( var_1 ) && var_1 == "MOD_PROJECTILE" )
        {
            if ( _func_02F( var_2 ) && var_2 == "javelin_dcburn" )
                level.birdhunterkill++;
        }
    }
}

_ID47372()
{
    if ( _func_039( "dc_debug" ) == "1" && _func_02F( self._ID988._ID1193 ) )
        thread _ID42407::_ID9904( self._ID988._ID1193, self._ID740, 9999, self );

    if ( _ID42413::_ID20706() )
        thread _ID42413::_ID15010();

    if ( _ID42411::_ID20763() && !_ID42237::_ID14385( "achievement_bird_hunter_done" ) )
        thread _unknown_C5BF();

    switch ( self._ID1282 )
    {

    }

    case "m1a1":
    case "laatpv":
    case "laatpv_minigun":
    case "slamraam":
    case "latvee":
    case "btr80":
    case "mi28":
    case "littlebird":
    case "cobra":
    case "mi17":
}

_ID54210()
{
    self endon( "death" );
    self _meth_826C( level._ID794 );
    var_0 = self._ID23757;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        self _meth_801D( self._ID23746, var_1 );
    }

    var_clear_2
    var_clear_0
    self._ID51170 = 3;
    thread _unknown_C7A8();
    var_3 = undefined;
    var_1 = undefined;
    var_4 = level._ID794;

    while ( _func_02F( self ) && self._ID23757.size > 0 )
    {
        self waittill( "fire" );
        var_1 = _ID42237::_ID28945( self._ID23757 );
        self._ID23757 = _ID42237::_ID3321( self._ID23757, var_1 );
        self _meth_802A( self._ID23746, var_1 );
        var_3 = _func_1C8( "slamraam_missile_dcburning", self _meth_818C( var_1 ), var_4._ID740 );
        thread maps\dcburning_aud::_ID53638( var_3 );

        if ( self._ID23757.size < 1 )
            break;
    }

    self _meth_826D();
}

_ID46808()
{
    var_0 = _func_06A( "script_origin", self._ID740 + ( 0, 0, 0 ) );
    var_0 _meth_8053( self );

    while ( _func_02F( self ) )
    {
        var_0 _meth_80B4( "crash_heli_rumble" );
        wait 0.4;
    }

    var_0 _meth_80B7();
}

_ID45533()
{
    self _meth_829E( 20, 40 );

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "custom_rumble" )
        thread _unknown_C7A3();

    if ( _func_02F( self._ID1193 ) && _func_125( self._ID1193, "ambient" ) )
    {
        thread _unknown_C7FF();
        return;
    }

    self._ID14344 = 0;
    self._ID12571 = 1;
    self._ID10149 = "havoc_turret";
    self._ID51170 = 3;
    thread _ID42508::_ID18360( "missile_attackheli_dcburn" );

    if ( _func_02F( self._ID922 ) && self._ID922 == "ambient" )
    {

    }
    else if ( _func_02F( self._ID922 ) && self._ID922 == "ambient_attacker" )
    {

    }
    else
    {
        _func_0A2( self, ( 0, 0, -80 ) );
        _func_0AD( self, 1 );
    }

    if ( _func_02F( self._ID922 ) && self._ID922 == "regular" )
        return;

    thread _unknown_C8D0();
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
        var_0 = self._ID23512;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];
            var_1 _meth_806C( "manual" );
            var_1 _meth_80EA();
        }

        var_clear_2
        var_clear_0
    }
}

_ID44705()
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );

    if ( _func_02F( self._ID29965 ) && self._ID29965.size )
        _ID42237::_ID3350( self._ID29965, ::_unknown_CD9B );

    if ( _func_02F( self._ID23512 ) )
    {
        var_0 = self._ID23512;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];

            if ( _func_02F( var_1 ) )
                var_1 _meth_80B7();
        }

        var_clear_2
        var_clear_0
    }

    _ID42411::_ID16987();
    self _meth_80B7();
}

_ID48430()
{
    self endon( "death" );
}

_ID54076()
{
    if ( _func_02F( self._ID1193 ) && self._ID1193 == "btr80s_end" )
        return;

    self._ID51170 = 3;
    _func_0A2( self, ( 0, 0, 0 ) );
    _func_0AD( self, 1 );
    _func_0AC( self, "top" );
    thread _unknown_C9C8();

    if ( _func_02F( self._ID922 ) && self._ID922 == "no_ai" )
        return;

    if ( _func_02F( self._ID922 ) && self._ID922 == "crows_nest_bmps" )
        return;

    if ( !level._ID43469 )
        return;
    else
        thread _unknown_CA5C();
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

    while ( _func_02F( self ) )
    {
        self waittill( "damage",  var_10, var_9, var_8, var_7, var_6, var_5, var_4, var_3, var_0, var_2  );

        if ( !_func_02F( var_0 ) )
            continue;

        if ( _func_031( var_0 ) )
            continue;

        if ( _func_02F( var_0._ID172 ) && var_0._ID172 == "misc_turret" )
            continue;

        if ( _func_02F( var_0._ID31474 ) && var_0._ID31474 == "axis" )
            continue;

        if ( _func_02F( var_0._ID1194 ) && var_0._ID1194 == "axis" )
            continue;

        if ( _func_02F( level._ID52945 ) && var_0 == level._ID52945 )
        {
            if ( _func_02F( self._ID52722 ) )
                continue;

            self._ID51170--;

            if ( self._ID51170 <= 0 )
                break;
            else
                continue;
        }

        if ( !_func_02F( var_5 ) || !_func_02F( var_10 ) )
            continue;

        if ( var_5 == "MOD_PROJECTILE" && _func_125( var_10, "javelin" ) )
        {
            if ( _func_1B3( var_0 ) )
            {
                var_1 = 1;
                self.attackerweaponname = var_10;
                self.attackertype = var_5;
            }

            break;
        }
    }

    if ( _func_02F( level._ID52945 ) && var_0 == level._ID52945 )
    {

    }
    else if ( !_func_1B3( var_0 ) )
    {
        self notify( "killed_by_friendly" );

        if ( _func_039( "dc_debug" ) == "1" )
            _func_19F( "friendly just owned a vehicle" );

        level._ID53717--;
        thread _unknown_CC02();
    }

    thread _unknown_CC13( var_1 );
}

_ID44442()
{
    self endon( "death" );
    thread _ID42411::_ID23509();
    self._ID48977 = 0;
    var_0 = undefined;

    while ( _func_02F( self ) )
    {
        if ( level._ID794._ID511 )
        {
            wait 1;
            continue;
        }

        wait 0.05;

        if ( _func_0F5( level._ID794._ID740, self._ID740 ) > level._ID50161 )
            var_0 = undefined;
        else
            var_0 = level._ID794;

        if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
        {
            var_1 = 0;
            var_1 = _func_090( self._ID740, level._ID794._ID740 + ( 0, 0, 0 ), 0, self );

            if ( !var_1 )
                var_0 = undefined;
        }

        if ( !_func_02F( var_0 ) )
            var_0 = _unknown_A67C();

        if ( _func_02F( var_0 ) && _func_1A7( var_0 ) )
        {
            var_2 = var_0._ID740 + ( 0, 0, 32 );
            self _meth_826B( var_2 );
            var_3 = _func_0BA( 2, 3 );
            _ID42237::_ID41123( "turret_rotate_stopped", var_3 );

            if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
            {
                var_4 = level._ID794 _meth_80AF();
                var_5 = _ID42237::_ID41802( var_4, level._ID52945._ID65 + ( 0, -90, 0 ), self._ID740, level._ID8760["45"] );

                if ( var_5 )
                {
                    if ( !self._ID48977 )
                        thread _unknown_CCCF();
                }
            }

            if ( _func_02F( var_0 ) && !_func_1B3( var_0 ) )
            {
                if ( !self._ID48977 )
                    thread _unknown_CCE5();
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

    }

    endswitch( 2 )  case "btr80" loc_CD18 default loc_CD22
    self._ID48977 = 1;
    var_2 = 0;

    while ( var_2 < var_1 )
    {
        var_2++;
        wait(var_0);
        self _meth_8272();
    }

    self._ID48977 = 0;
    default:
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
        if ( _func_0AB( self ) )
            _func_0A3( self );
    }

    _ID42411::_ID16987();
    self notify( "death",  level._ID794, self.attackertype, self.attackerweaponname  );

    if ( _func_02F( var_0 ) )
    {
        _func_192( 0.25, 0.75, level._ID794._ID740, 1250 );
        level._ID794 _meth_80B4( "damage_light" );
    }
}

_ID47783()
{
    self endon( "death" );
    var_0 = _func_1A1( self._ID1191, "targetname" );
    thread _ID42237::_ID10280( var_0 );
    var_1 = self._ID70;
    self._ID12293 = _func_06A( "script_origin", var_0._ID740 );
    thread _ID42237::_ID10280( self._ID12293 );
    var_2 = undefined;

    switch ( var_0._ID669 )
    {

    }

    thread _unknown_D227( var_1, var_2 );
    case "bc_stretcher":
    case "stretcher_animated":
    case "bc_cot":
    case "mil_bunker_bed2":
    case "com_folding_table":
    default:
}

_ID51288()
{
    self waittill( "death" );

    if ( _func_02F( self._ID12293 ) && !_func_1A8( self._ID12293 ) )
        self._ID12293 _meth_80B7();
}

_ID51021( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    self._ID31190 = var_1._ID31190;
    self._ID70 = var_1._ID70;
    self._ID12293 = var_1;
    self._ID1191 = var_1._ID1191;
    var_2 = self._ID70;
    var_3 = undefined;
    thread _unknown_D270( var_2, var_3 );
}

_ID53409()
{
    self endon( "death" );
    var_0 = self._ID70;
    var_1 = 0;

    if ( !_func_02F( self._ID12293 ) )
        self._ID12293 = self._ID988;

    var_2 = "player_bunker_walk_01";

    switch ( var_0 )
    {

    }

    thread _unknown_D40E( var_0, var_2 );
    case "h2_dcburning_controlroom_ranger01":
    case "roadkill_cover_radio_soldier2":
    case "h2_dcburning_controlroom_ranger06":
    case "h2_dcburning_controlroom_ranger05":
    case "favela_run_and_wave":
    case "bunker_toss_idle_guy1":
    case "training_latvee_soldier":
    case "training_latvee_wounded":
    case "h2_dc_burning_bunker_stumble":
    case "DC_Burning_artillery_reaction_v4_idle":
    case "DC_Burning_artillery_reaction_v3_idle":
    case "DC_Burning_artillery_reaction_v2_idle":
    case "civilian_run_2_crawldeath":
    case "DC_Burning_artillery_reaction_v1_idle":
    case "death_explosion_run_F_v1":
    default:
}

_ID32651( var_0 )
{
    if ( _func_02F( self._ID18304 ) )
        self _meth_802A( self._ID18304 );

    self _meth_801D( var_0, "", 1 );
    self._ID18304 = var_0;
}

scripted_anim_props( var_0, var_1 )
{
    self._ID3189 = var_1;
    _ID42407::_ID3428();
    var_2 = _func_0B7( 3 );
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
    _unknown_CBCF();
    var_2 = undefined;
    var_3 = undefined;
    var_4 = 0;

    if ( _func_02F( self._ID1191 ) )
        var_2 = _func_0C8( self._ID1191, "targetname" );

    thread _unknown_D3CC();

    if ( _func_0D3( level._ID30895["generic"][var_0] ) )
    {
        var_4 = 1;
        self._ID12293 thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        var_3 = var_0 + "_go";

        if ( _unknown_D634( var_3 ) )
            var_0 = var_3;
        else
            var_3 = undefined;
    }
    else
        self._ID12293 _ID42259::_ID3023( self, var_0 );

    if ( _func_02F( self._ID31190 ) )
    {
        if ( _func_02F( var_1 ) )
            _ID42237::_ID14421( self._ID31190, var_1 );
        else
            _ID42237::_ID14413( self._ID31190 );
    }

    switch ( var_0 )
    {

    }

    if ( _func_02F( var_2 ) )
    {
        self._ID10998 = 1;
        self._ID11025 = 1;
    }

    if ( !var_4 )
        self._ID12293 _ID42259::_ID3020( self, var_0 );

    if ( _func_02F( var_3 ) )
    {
        self._ID12293 notify( "stop_idle" );
        self._ID12293 _ID42259::_ID3020( self, var_3 );
    }

    switch ( var_0 )
    {

    }

    if ( _func_02F( var_2 ) )
    {
        self _meth_81B1( var_2 );
        wait 1;
        self._ID10998 = 0;
        self._ID11025 = 0;
        self waittill( "goal" );

        if ( _func_02F( self._ID8931 ) && self._ID8931 )
            _ID42407::_ID8925( "off" );
    }
    else if ( _func_02F( level._ID30895["generic"][var_0 + "_idle"] ) )
        self._ID12293 thread _ID42259::_ID3025( self, var_0 + "_idle", "stop_idle" );

    if ( _unknown_D720( var_0 + "_react" ) )
    {
        if ( !var_4 )
            var_0 += "_idle";

        var_5 = var_0 + "_react";

        if ( _unknown_D73B( var_0 + "_react2" ) )
            var_6 = var_0 + "_react2";
        else
            var_6 = var_5;

        while ( _func_02F( self ) )
        {
            level waittill( "mortar_hit" );
            self._ID12293 notify( "stop_idle" );
            self notify( "stop_idle" );
            waitframe;

            if ( _func_0B7( 100 ) > 50 )
                self._ID12293 _ID42259::_ID3020( self, var_5 );
            else
                self._ID12293 _ID42259::_ID3020( self, var_6 );

            self._ID12293 thread _ID42259::_ID3025( self, var_0, "stop_idle" );
        }

        return;
        case "civilian_run_2_crawldeath":
        case "death_explosion_run_F_v1":
        case "civilian_run_2_crawldeath":
    }
}

_ID52645( var_0 )
{
    _func_156( level._ID1426["mortar"]["dirt"], var_0 );
    thread _ID42237::_ID27077( level._ID30909["mortar"]["dirt"], var_0 );
    _func_192( 0.25, 0.75, var_0, 1250 );
}

_ID50312()
{
    var_0 = _func_0B7( 2 );
    _unknown_D7DA( "dcburn_javelins_incoming_0" + var_0 );
}

_ID52536()
{
    var_0 = _func_06A( "script_origin", self._ID740 );
    var_0 _meth_8053( self );
    self waittill( "death" );
    _func_192( 1.2, 1.5, var_0._ID740, 1600 );
    wait 0.05;
    var_0 _meth_80B7();
}

_ID51869( var_0 )
{
    var_1 = _func_1C8( "javelin_noimpact", var_0._ID740, self._ID740 );
    _func_156( _ID42237::_ID16299( "javelin_muzzle" ), var_0._ID740 );
    var_1 thread _unknown_D743();
    var_1 _meth_81E5( self );
    var_1 _meth_81E9();

    for (;;)
    {
        self waittill( "damage",  var_6, var_5, var_4, var_3, var_2  );

        if ( _func_02F( var_3._ID170 ) && var_3._ID170 == "worldspawn" && _func_02F( var_2 ) && var_2 > 24 )
            break;
    }

    if ( _func_02F( self ) )
        self notify( "death" );
}

_ID48994()
{
    level._ID794._ID511 = 1;
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );

    for ( var_0 = 0; var_0 < level._ID35507.size; var_0++ )
    {
        if ( !_func_02F( level._ID35507[var_0] ) )
            continue;

        level._ID35507[var_0]._ID511 = 1;
        level._ID35507[var_0] _meth_8183( "oblivious" );
    }
}

_ID54322()
{
    level._ID794._ID511 = 0;
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );

    for ( var_0 = 0; var_0 < level._ID35507.size; var_0++ )
    {
        if ( !_func_02F( level._ID35507[var_0] ) )
            continue;

        level._ID35507[var_0]._ID511 = 0;
        level._ID35507[var_0] _meth_8183( "allies" );
    }
}

_ID45378()
{
    thread _unknown_CEC6();
    _ID42407::_ID32628( 1 );
    self._ID4867 = 0.1;
    self._ID507 = 1;
    var_0 = _func_0C8( self._ID1191, "targetname" );

    if ( _func_02F( var_0 ) )
    {
        self _meth_81B1( var_0 );
        self._ID452 = 16;
    }
}

_ID47366()
{
    while ( _func_02F( self ) )
    {
        wait(_func_0BA( 0.05, 0.1 ));
        self _meth_81EB( _func_0BA( 0.6, 1.8 ) );
    }
}

_ID51970()
{
    while ( _func_02F( self ) )
    {
        wait(_func_0BA( 0.05, 0.1 ));
        self _meth_81EB( _func_0BA( 1.2, 2.2 ) );
    }
}

_ID45102( var_0, var_1, var_2 )
{
    var_3 = _func_1A1( self._ID1191, "targetname" );
    _func_157( _ID42237::_ID16299( "flare_ambient" ), self, "TAG_FIRE_FX" );
    thread _ID42237::_ID27077( "flare_ignite", self._ID740 );
    var_3 _unknown_D944( var_0, var_2 );
    var_3 _unknown_D963( var_1 );
    thread _unknown_D97F();
}

_ID53117( var_0, var_1 )
{
    self _meth_81EB( 0 );
    var_2 = 0;
    var_3 = var_1 - 0 / var_0 / 0.05;
    var_4 = 0;
    var_5 = undefined;

    while ( var_4 < var_0 )
    {
        var_2 += var_3;
        var_5 = _func_0BA( -0.05, 0.05 );
        var_2 += var_5;

        if ( var_2 < 0 )
            break;

        self _meth_81EB( var_2 );
        var_4 += 0.05;
        wait 0.05;
    }
}

_ID47752( var_0 )
{
    var_1 = self _meth_81EA();
    var_2 = var_1 - 0 / var_0 / 0.05;
    var_3 = 0;
    var_4 = undefined;

    while ( var_3 < var_0 )
    {
        var_1 -= var_2;
        var_4 = _func_0BA( -0.05, 0.05 );
        var_1 += var_4;

        if ( var_1 < 2 )
            break;

        self _meth_81EB( var_1 );
        var_3 += 0.05;
        wait 0.05;
    }
}

_ID48656( var_0, var_1 )
{
    var_2 = _func_1A1( self._ID1191, "targetname" );

    if ( !_func_02F( var_0 ) )
        var_0 = 0.6;

    if ( !_func_02F( var_1 ) )
        var_1 = 1.8;

    thread _ID42237::_ID27000( "flare_burn_loop" );

    while ( _func_02F( self ) )
    {
        wait(_func_0BA( 0.05, 0.1 ));
        var_2 _meth_81EB( _func_0BA( var_0, var_1 ) );
    }
}

_ID3012( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = "generic";

    if ( _func_02F( level._ID30895[var_1][var_0] ) )
        return 1;
    else
        return 0;
}

_ID44278( var_0 )
{
    var_1 = _ID42407::_ID15602( level._ID794._ID740, "allies", level._ID13290 );

    if ( _func_02F( var_1 ) )
        var_1 _ID42237::_ID27077( level._ID30909[var_0] );
    else
        _func_19E( "unable to play random friendly dialogue " + var_0 + " because couldn't find an AI" );
}

_ID38942( var_0, var_1, var_2 )
{
    var_3 = _func_1A2( var_0, var_1 );

    if ( var_2 == 1 )
        _ID42237::_ID3350( var_3, _ID42237::_ID38865 );
    else
        _ID42237::_ID3350( var_3, _ID42237::_ID38863 );
}

_ID18542( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = _func_1A2( "hide", "script_noteworthy" );

    _ID42237::_ID3350( var_0, _ID42407::_ID18512 );
}

_ID47688( var_0 )
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( var_0 ) && var_0.size > 0 )
    {
        if ( _ID42407::_ID20542( var_0, self ) )
            return;
    }

    if ( _func_02F( self._ID22746 ) )
        _ID42407::_ID36519();

    if ( !_func_0D6( self ) )
    {

    }

    self _meth_80B7();
}

_ID32474( var_0 )
{
    self._ID51636 = level._ID794._ID1204;
    self._ID1204 = var_0;
}

_ID47046()
{
    if ( _func_02F( self._ID51636 ) )
        self._ID1204 = self._ID51636;
}

_ID46880( var_0, var_1 )
{
    _ID42407::_ID41090( var_0 );
    _ID42237::_ID14402( var_1 );
}

_ID10760( var_0 )
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );
    _ID42407::_ID10805( var_0 );
}

_ID49522( var_0 )
{
    if ( _func_039( "dc_dialog" ) == "1" )
        _unknown_DBE2( level._ID30909[var_0], level._ID49736 );
}

_ID52910( var_0, var_1 )
{
    var_2 = 0.5;
    level endon( "clearing_hints" );

    if ( _func_02F( level._ID48851 ) )
        level._ID48851 _ID42313::_ID10476();

    level._ID48851 = _ID42313::_ID9220( "default", 1.5 );
    level._ID48851 _ID42313::_ID32753( "BOTTOM", undefined, 0, -40 );
    level._ID48851._ID196 = ( 1, 1, 1 );
    level._ID48851 _meth_80D1( var_0 );
    level._ID48851._ID55 = 0;
    level._ID48851 _meth_808B( 0.5 );
    level._ID48851._ID55 = 1;
    level._ID48851._ID983 = 1;
    wait 0.5;
    level._ID48851 endon( "death" );

    if ( _func_02F( var_1 ) )
        wait(var_1);
    else
        return;

    level._ID48851 _meth_808B( var_2 );
    level._ID48851._ID55 = 0;
    wait(var_2);
    level._ID48851 _ID42313::_ID10476();
}

vehicles_crowsnest_defend_animated_think()
{
    if ( !_func_02F( self._ID669 ) || self._ID669 != "vehicle_ch46e_low" )
        return;

    _ID42407::_ID3428( "seaknight" );
    self _meth_8571();
    thread _unknown_DD97();
}

_ID53415()
{
    self _meth_805A();
    var_0 = undefined;

    if ( _func_02F( self._ID1191 ) )
        var_0 = _func_1A2( self._ID1191, "targetname" );

    var_1 = _func_06A( "script_origin", self._ID740 );
    thread _ID42237::_ID10280( var_1 );
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65;
    var_2 = undefined;
    var_3 = "sniper_escape_ch46_take_off_idle";
    var_4 = _func_06A( "script_origin", self._ID740 );
    var_1 thread _unknown_DEFD( self );
    var_4 thread _unknown_DF03( self );
    var_5 = undefined;
    var_6 = undefined;
    var_7 = 0;

    switch ( self._ID70 )
    {

    }

    _ID42407::_ID3428( self._ID3189 );
    var_1 _ID42259::_ID3018( self, self._ID70 );
    self waittill( "spawn" );

    if ( _func_02F( var_0 ) )
    {
        var_8 = [];
        var_9 = var_0;

        for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
        {
            var_10 = var_9[var_11];
            var_8[var_8.size] = thread _ID42407::_ID12076( var_10 );
        }

        var_clear_2
        var_clear_0
        _ID42407::_ID10226( 0.05, ::_unknown_DE11, var_8 );
    }

    self _meth_8059();

    if ( _unknown_DD15( var_3, self._ID3189 ) )
        var_1 thread _ID42259::_ID3044( self, var_3, "stop_idle" );

    if ( var_7 )
        thread _unknown_DE80();

    if ( _func_02F( var_5 ) )
        thread _ID42237::_ID27000( var_5, undefined, 0.5, 3 );

    if ( _func_02F( var_6 ) )
        thread _unknown_DE8F( var_4, var_6 );

    self waittill( "play_anim" );
    _ID42407::_ID25088( "taking_off", 4 );
    var_1 notify( "stop_idle" );

    if ( _func_02F( self._ID1193 ) && self._ID1193 == "seaknight_loader_start2" )
    {
        self _meth_8053( var_1 );
        var_1 thread _unknown_DE7E();
    }

    var_1 _ID42259::_ID3111( self, self._ID70 );
    self _meth_80B7();
    case "h2_sniper_escape_ch46_takeoff":
}

_ID49136()
{
    wait 5;
    self _meth_82B8( self._ID740 + ( 0, 0, 550 ), 10 );
}

_ID49810( var_0 )
{
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1++;
        var_3._ID11572 = 1;
        var_3._ID47750 = var_1;
        _ID42259::_ID3023( var_3, "ch46_load_" + var_3._ID47750, "tag_detach" );
    }

    var_clear_2
    var_clear_0
    self waittill( "load_riders" );
    var_5 = undefined;
    self notify( "stop_rider_idle" );
    var_6 = var_0;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_3 = var_6[var_7];
        thread _ID42259::_ID3020( var_3, "ch46_load_" + var_3._ID47750, "tag_detach" );
        var_3 thread _unknown_DF50();
        var_5 = "ch46_load_" + var_3._ID47750;
    }

    var_clear_1
    var_clear_0
    var_8 = _func_067( level._ID30895["generic"][var_5] );
    wait(var_8 - 2);
    self notify( "riders_loaded" );
}

_ID54477()
{
    self endon( "death" );
    self waittillmatch( "single anim",  "end"  );
    _unknown_DE7A();
}

_ID43602( var_0, var_1 )
{
    self endon( "death" );
    self endon( "taking_off" );

    while ( _func_02F( var_0 ) )
    {
        _func_156( _ID42237::_ID16299( var_1 ), var_0._ID740 );
        wait 0.1;
    }
}

_ID44590()
{
    self endon( "death" );
    var_0 = _ID42407::_ID16120( "rotors" );
    var_1 = _func_067( var_0 );

    for (;;)
    {
        if ( !_func_02F( self ) )
            break;

        self _meth_8155( var_0 );
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
        var_3 = _func_0DE();
    else
        var_3 = _func_0DE( var_0 );

    if ( _func_02F( var_2 ) )
        _ID42237::_ID3350( var_3, ::_unknown_DEF3 );
    else
    {
        if ( !_func_02F( var_1 ) )
            var_1 = 1024;

        thread _ID42407::_ID2265( var_3, var_1 );
    }
}

_ID47411( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "all";

    var_3 = [];

    if ( var_0 == "all" )
    {
        var_3 = _ID42407::_ID3317( level._ID12061["allies"]._ID3291, level._ID12061["axis"]._ID3291 );
        var_3 = _ID42407::_ID3317( var_3, level._ID12061["neutral"]._ID3291 );
    }
    else
        var_3 = level._ID12061[var_0]._ID3291;

    if ( _func_02F( var_2 ) )
        _ID42237::_ID3350( var_3, ::_unknown_DF5E );
    else
    {
        if ( !_func_02F( var_1 ) )
            var_1 = 1024;

        thread _ID42407::_ID2265( var_3, var_1 );
    }
}

_ID44403()
{
    self endon( "death" );
    thread _ID42407::_ID22746();
    self _meth_81B2( self._ID740 );
    var_0 = _func_1A2( "roof_door", "targetname" );
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;
    var_4 = _func_0C8( self._ID1191, "targetname" );
    var_5 = undefined;
    var_6 = var_0;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

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

    var_clear_2
    var_clear_0

    for (;;)
    {
        wait 0.05;

        if ( level._ID794 _meth_80B0( var_1 ) )
            continue;

        if ( _ID42237::_ID14385( "door_being_blocked" ) )
            continue;

        break;
    }

    var_5 _meth_8053( var_3 );
    var_5 _meth_805F();
    var_2._ID65 = var_3._ID65;
    self _meth_8071( "scn_npc_scream", "dialogue_done", 1 );
    var_3 thread _unknown_E218( var_2 );
    thread _ID42407::_ID36519();
    self._ID452 = 16;
    self _meth_81B1( var_4 );
    wait 4;
    thread _unknown_E241();
}

_ID11592( var_0 )
{
    var_1 = _func_11F( var_0._ID65 );
    thread _ID42237::_ID27077( "door_wood_double_kick" );
    _func_156( _ID42237::_ID16299( "door_kick_dust" ), var_0._ID740, var_1 );
    _func_192( 0.2, 0.75, self._ID740, 1024 );
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
    var_0 = _func_0F3( self._ID740, level._ID794._ID740 );

    while ( _func_1A7( self ) )
    {
        wait 1;
        self._ID452 = var_0;
        self _meth_81B3( level._ID794 );
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
    if ( !_func_02F( var_1 ) )
        var_1 = 1024;

    if ( var_0 == "all" )
        var_2 = _func_0DE();
    else
        var_2 = _func_0DE( var_0 );

    if ( var_0 == "allies" || var_0 == "all" )
    {
        var_3 = level._ID35507;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( _ID42407::_ID20542( var_2, var_4 ) )
                var_2 = _ID42237::_ID3321( var_2, var_4 );
        }

        var_clear_2
        var_clear_0
        var_6 = var_2;

        for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
        {
            var_4 = var_6[var_7];

            if ( _func_02F( var_4._ID922 ) && var_4._ID922 == "laatpv_gunner" )
                var_2 = _ID42237::_ID3321( var_2, var_4 );
        }

        var_clear_1
        var_clear_0
    }

    thread _ID42407::_ID2265( var_2, var_1 );
}

_ID43162( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1024;

    var_3 = _func_1A1( var_0, "targetname" );
    var_4 = var_3 _ID42407::_ID15547( var_1 );

    if ( var_1 != "axis" )
    {
        level._ID35507 = _ID42407::_ID29506( level._ID35507 );
        var_5 = level._ID35507;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( _ID42407::_ID20542( var_4, var_6 ) )
                var_4 = _ID42237::_ID3321( var_4, var_6 );
        }

        var_clear_2
        var_clear_0
    }

    thread _ID42407::_ID2265( var_4, var_2 );
}

_ID51301( var_0 )
{
    var_0 waittill( "death" );
    var_0 endon( "death" );

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID49563()
{
    wait(_func_0BA( 13, 19 ));
}

_ID48407()
{
    var_0 = _func_03D();
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
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];
            _ID42407::_ID10226( _func_0BA( 5, 6 ), _ID42407::_ID12076, var_3 );
        }

        var_clear_2
        var_clear_0
        wait(_func_0BA( 5, 6 ));
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
        var_6 = var_0;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_5 = var_7 thread _ID42411::_ID35194();
            var_5 = undefined;
            wait(_func_0BA( var_2, var_3 ));
        }

        var_clear_2
        var_clear_0
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
    self _meth_805A();
    thread _ID42407::_ID22746();
    self._ID7._ID11043 = 1;
    self._ID507 = 1;
    self._ID1298 = 1000;
    self._ID10998 = 1;
    self _meth_8172();
    wait 0.1;
    thread _ID42338::_ID26367();
}

_ID48916()
{

}

_ID47645( var_0 )
{
    var_1 = _func_1A1( var_0, "targetname" );
    var_2 = _func_1A1( var_1._ID31273, "script_linkname" );
    var_2 notify( "trigger",  level._ID794  );
}

_ID50236()
{
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    _ID42237::_ID3350( level._ID35507, ::_unknown_E5E2 );
}

_ID51102()
{
    level._ID35507 = _ID42407::_ID29506( level._ID35507 );
    var_0 = level._ID35507;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 notify( "stop_adjust_movement_speed" );
        var_1._ID24424 = 1.0;
    }

    var_clear_2
    var_clear_0
}

_ID54181()
{
    self notify( "stop_adjust_movement_speed" );
    self endon( "death" );
    self endon( "stop_adjust_movement_speed" );

    while ( _func_1A7( self ) )
    {
        wait(_func_0BA( 0.5, 1.5 ));

        while ( _unknown_E654() )
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

    if ( !_func_02F( self._ID451 ) )
        return 0;

    if ( _func_0F5( self._ID740, self._ID451 ) <= level._ID47460 )
        return 0;

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), self._ID740, level._ID8760["90"] ) )
        return 0;

    return 1;
}

_ID43959()
{
    var_0 = _ID42407::_ID15547();
    var_1 = level._ID35507;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _ID42407::_ID20542( var_0, var_2 ) )
            var_0 = _ID42237::_ID3321( var_0, var_2 );
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID43809()
{
    var_0 = _ID42237::_ID15808();
    self waittill( "trigger" );
    var_1 = undefined;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1 = var_3 _ID42407::_ID15547( "axis" );

        if ( !var_1.size )
            continue;

        _ID42237::_ID3294( var_1, ::_meth_80B7 );
    }

    var_clear_2
    var_clear_0
    self _meth_80B7();
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
            var_1 = _func_1A2( self._ID1191, "targetname" );
            var_0 = level._ID46370 - level._ID35507.size;

            for ( var_3 = 0; var_3 < var_0; var_3++ )
            {
                var_2 = var_1[var_3] _ID42407::_ID35014();

                if ( _func_02F( var_2 ) )
                {
                    var_2 _ID42407::_ID32315( "p" );
                    level._ID35507 = _ID42237::_ID3293( level._ID35507, var_2 );
                    var_2 thread _unknown_DEC0();
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
        _func_0DB( "ui_hidemap", 0 );
        _ID42272::_ID33575( self._ID922 );
    }
}

_ID21376( var_0 )
{
    thread _ID42372::_ID21309( var_0 );
}

_ID50637()
{
    var_0 = _func_1A1( self._ID31273, "script_linkname" );
    var_1 = _func_1A1( self._ID1191, "targetname" );
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

        if ( _ID42237::_ID41802( level._ID794 _meth_80AF(), level._ID794 _meth_8346(), self._ID740, level._ID8760["60"] ) )
        {
            _func_1C8( "rpg", var_1._ID740, self._ID740 );
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
    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
        return;

    level._ID44593 = [];
    level._ID53293 = [];
    level._ID48904 = [];
    level._ID52835 = [];
    level._ID45412 = [];
    var_0 = _func_1A2( "triggered_fx_volumes", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID15142 = [];
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A1( "effects_commerce", "script_noteworthy" );
    var_5 = _func_1A1( "effects_trenches", "script_noteworthy" );
    var_6 = _func_1A1( "effects_bunker", "script_noteworthy" );
    var_7 = _func_1A1( "effects_ww2", "script_noteworthy" );
    var_8 = _func_1A1( "effects_lincoln", "script_noteworthy" );
    var_9 = _func_06A( "script_origin", ( 0, 0, 0 ) );

    for ( var_10 = 0; var_10 < level._ID9242.size; var_10++ )
    {
        var_11 = level._ID9242[var_10];
        var_9._ID740 = var_11._ID40005["origin"];
        var_12 = var_0;

        for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
        {
            var_2 = var_12[var_13];

            if ( var_9 _meth_80B0( var_2 ) )
                var_2._ID15142[var_2._ID15142.size] = var_11;
        }

        var_clear_1
        var_clear_0

        if ( var_9 _meth_80B0( var_4 ) )
        {
            level._ID44593[level._ID44593.size] = var_11;
            continue;
        }

        if ( var_9 _meth_80B0( var_5 ) )
        {
            level._ID53293[level._ID53293.size] = var_11;
            continue;
        }

        if ( var_9 _meth_80B0( var_6 ) )
        {
            level._ID48904[level._ID48904.size] = var_11;
            continue;
        }

        if ( var_9 _meth_80B0( var_7 ) )
        {
            level._ID52835[level._ID52835.size] = var_11;
            continue;
        }

        if ( var_9 _meth_80B0( var_8 ) )
        {
            level._ID45412[level._ID45412.size] = var_11;
            continue;
        }
    }

    var_9 _meth_80B7();
    var_14 = var_0;

    for ( var_16 = _func_1DA( var_14 ); _func_02F( var_16 ); var_16 = _func_1BF( var_14, var_16 ) )
    {
        var_2 = var_14[var_16];
        var_15 = _func_1A2( var_2._ID1191, "targetname" );

        if ( var_15[0]._ID922 == "stopFx" )
        {
            var_15[0] thread _unknown_EAAB( var_2 );
            var_15[1] thread _unknown_EAAB( var_2 );
            continue;
        }

        var_15[1] thread _unknown_EAC0( var_2 );
        var_15[0] thread _unknown_EAC0( var_2 );
    }

    var_clear_2
    var_clear_0
}

restarteffectsafe()
{
    if ( !_func_02F( self._ID22654 ) || _func_2A5( self._ID22654 ) )
        _ID42407::_ID29840();
}

pauseeffectsafe()
{
    if ( _func_02F( self._ID22654 ) )
        _ID42237::_ID26402();
}

_ID44547( var_0 )
{
    for (;;)
    {
        self waittill( "trigger" );
        _ID42237::_ID3350( var_0._ID15142, ::_unknown_EAEE );
        wait 1;
    }
}

_ID47624( var_0 )
{
    wait 1;
    _ID42237::_ID3350( var_0._ID15142, ::_unknown_EB0A );

    for (;;)
    {
        self waittill( "trigger" );
        _ID42237::_ID3350( var_0._ID15142, ::_unknown_EB1B );
        wait 1;
    }
}

_ID48611()
{
    _ID42237::_ID14413( "player_heli_10a" );
    self _meth_82CA( 1 );
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

    }

    for (;;)
    {
        self waittill( "damage",  var_9, var_8  );

        if ( !_func_02F( var_9 ) )
            continue;

        if ( _func_02F( level._ID52945 ) && var_9 != level._ID52945 )
            continue;

        var_0--;

        if ( var_0 <= 0 )
            break;
    }

    _func_156( _ID42237::_ID16299( var_1 ), self._ID740 );
    thread _ID42237::_ID27077( var_4 );

    if ( var_3 )
        _func_192( 0.4, 1.53, self._ID740, 1024 );

    if ( _func_02F( var_2 ) )
        self _meth_80B8( var_2 );
    else
        self _meth_80B7();

    if ( _func_02F( var_5 ) )
    {
        var_10 = _func_06A( "script_origin", self._ID740 + var_6 );
        var_10._ID65 = self._ID65;
        var_11 = _func_15B( _ID42237::_ID16299( var_5 ), var_10._ID740 );
        _func_15C( var_11 );
        _ID42237::_ID14413( "player_heli_19" );
        var_11 _meth_80B7();
        var_10 _meth_80B7();
        return;
        case "vehicle_pickup_technical":
        case "vehicle_luxurysedan_2008_destructible":
        case "vehicle_uaz_fabric_static":
        case "vehicle_mack_truck_short_green":
    }
}

_ID44864()
{
    var_0 = level._ID40317["axis"];
    var_1 = level._ID40317["allies"];
    var_1 = _ID42237::_ID3321( var_1, level._ID52945 );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( _func_02F( var_3._ID1282 ) && _func_127( var_3._ID1282, 0 ) == "littlebird" )
            var_1 = _ID42237::_ID3321( var_1, var_3 );
    }

    var_clear_2
    var_clear_0
    var_5 = _ID42407::_ID3317( var_0, var_1 );
    var_5 = _ID42407::_ID29506( var_5 );
    var_6 = var_5;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_3 = var_6[var_7];

        if ( !_func_02F( var_3 ) )
            continue;

        var_3 _ID42411::_ID16987();
        var_3 _meth_80B7();
    }

    var_clear_1
    var_clear_0
}

_ID44575()
{
    var_0 = level._ID40317["axis"];
    var_1 = level._ID40317["allies"];
    var_2 = _ID42407::_ID3317( var_0, var_1 );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !_func_02F( var_4 ) )
            continue;

        var_4 _ID42411::_ID16987();
        var_4 _unknown_E4AE();
    }

    var_clear_2
    var_clear_0
}

_ID46739()
{
    var_0 = level._ID40317["axis"];
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( !_func_02F( var_2 ) )
            continue;

        var_2 _ID42411::_ID16987();
        var_2 _unknown_E4E6();
    }

    var_clear_2
    var_clear_0
}

_ID51178( var_0 )
{
    var_1 = _ID42407::_ID15912();

    if ( _func_03D() > level._ID47637 )
        return 1;

    var_2 = var_1 _meth_831C();
    var_3 = _func_127( var_2, 0, 4 );

    if ( var_3 == "m203" )
        return 1;

    var_4 = var_1 _meth_8316();
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_2 = var_5[var_7];
        var_3 = _func_127( var_2, 0, 4 );

        if ( var_3 != "m203" )
            continue;

        var_6 = var_1 _meth_8303( var_2 );

        if ( var_6 > 0 )
            return 0;
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID44875()
{
    var_0 = _func_1A2( "drone_warriors_trenches", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        thread _ID42407::_ID12076( var_2 );
    }

    var_clear_2
    var_clear_0
}

_ID53157( var_0, var_1 )
{
    _ID42237::_ID14413( var_1 );
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 = undefined;
    }

    var_clear_2
    var_clear_0
}

_ID44154( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID35164();
    var_3._ID740 = var_1;
    var_3 thread _unknown_EF5C( var_2 );
    var_3 _ID42407::_ID27081( var_0, "tag_origin" );

    if ( _func_02F( var_3 ) )
        var_3 _meth_80B7();
}

_ID21288( var_0 )
{
    self endon( "death" );
    _ID42237::_ID14413( var_0 );

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID52455( var_0 )
{
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( !_func_02F( var_3._ID263 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID48110()
{
    self waittill( "trigger" );
    _func_156( level._ID1426["mortar"]["dirt"], self._ID740 );
    _func_192( 0.25, 0.75, self._ID740, 1250 );
    thread _ID42237::_ID27077( level._ID30909["mortar"]["dirt"], self._ID740 );
    _func_18F( self._ID740, self._ID382, 1000, 1000 );
}

_ID53050( var_0 )
{
    level endon( "obj_heli_mount_complete" );
    level endon( "kill_timer" );
    level._ID37750 = _ID42313::_ID47327( var_0, &"DCBURNING_TIME_REMAINING", 1, 1 );
    level thread _unknown_F05E();
}

_ID43057()
{
    level._ID794 endon( "death" );
    level endon( "kill_timer" );
    level notify( "mission failed" );
    _func_078( 1 );
    _func_034( "ui_deadquote", &"DCBURNING_RAN_OUT_OF_TIME" );
    _ID42407::_ID23778();
    level notify( "kill_timer" );
}

_ID44638( var_0 )
{
    self endon( "death" );
    var_1 = _ID42411::_ID40142();
    var_2 = undefined;
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4._ID922 ) && var_4._ID922 == var_0 )
        {
            var_2 = var_4;
            break;
        }
    }

    var_clear_2
    var_clear_0
    var_2 waittill( "trigger" );
    self notify( "deleted_through_script" );
    wait 0.05;
    thread _unknown_E703();
}

_ID50096()
{
    if ( !_func_02F( self ) )
        return;

    self endon( "death" );

    while ( _func_02F( self ) )
    {
        wait 2;

        if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740, level._ID8760["90"] ) )
            continue;

        break;
    }

    thread _unknown_E73F();
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
    level._ID794 _meth_80F6();
}

_ID50922( var_0, var_1 )
{
    for (;;)
    {
        wait 1;
        var_2 = var_0 _ID42407::_ID15547( "axis" );

        if ( !_func_02F( var_2 ) )
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
    var_0 = _func_1A1( "force_supression_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1._ID1194 == "allies" && !_func_1B3( var_1 ) )
            var_1._ID513 = 1;
    }
}

ai_restore_ignore_supression()
{
    var_0 = _func_1A1( "remove_force_supression_trigger", "targetname" );

    for (;;)
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1._ID1194 == "allies" && !_func_1B3( var_1 ) )
            var_1._ID513 = 0;
    }
}

performance_interior_exterior_transition()
{
    level endon( "player_getting_on_minigun" );

    for (;;)
    {
        level waittill( "player_interior_transition" );
        _func_0DB( "fx_marks_nearlimit", "1" );

        while ( _ID42237::_ID14385( "player_interior_transition" ) )
        {
            waittillframeend;
            continue;
        }

        _func_0DB( "fx_marks_nearlimit", "5" );
    }
}

heli_ride_perf_helpers()
{
    _func_31C( 2 );
    _ID42237::_ID14413( "player_getting_on_minigun" );
    _func_0DB( "fx_marks_nearlimit", "1" );
    _func_31B( 2 );
    _func_31C( 9 );
    _ID42237::_ID14413( "player_crash_done" );
    _func_31C( 2 );
}

misc_model_group_think()
{
    level endon( "player_getting_on_minigun" );
    var_0 = _func_1A2( "misc_model_group_togglers", "targetname" );
    level.static_model_group_states = [];
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = var_2._ID922;

        if ( !_func_02F( level.static_model_group_states[var_3] ) )
            level.static_model_group_states[var_3] = 0;

        thread _unknown_F35D( var_3, var_2 );
    }

    var_clear_3
    var_clear_0
    var_5 = level.static_model_group_states;

    for ( var_3 = _func_1DA( var_5 ); _func_02F( var_3 ); var_3 = _func_1BF( var_5, var_3 ) )
    {
        var_6 = var_5[var_3];
        _func_31C( _func_0C1( var_3 ) );
        _ID42237::_ID14400( "static_model_group_flag_" + var_3 );
        thread _unknown_F380( var_3 );
    }

    var_clear_1

    for (;;)
    {
        self waittill( "model_group_count_changed" );
        var_7 = level.static_model_group_states;

        for ( var_3 = _func_1DA( var_7 ); _func_02F( var_3 ); var_3 = _func_1BF( var_7, var_3 ) )
        {
            var_6 = var_7[var_3];

            if ( var_6 == 0 )
            {
                _ID42237::_ID14388( "static_model_group_flag_" + var_3 );
                continue;
            }

            _ID42237::_ID14402( "static_model_group_flag_" + var_3 );
        }

        var_clear_0
    }
}

misc_model_group_monitor( var_0 )
{
    level endon( "player_getting_on_minigun" );
    var_1 = "static_model_group_flag_" + var_0;

    for (;;)
    {
        _ID42237::_ID14413( var_1 );
        _func_31B( _func_0C1( var_0 ) );
        _ID42237::_ID14426( var_1 );
        _func_31C( _func_0C1( var_0 ) );
    }
}

static_model_group_trigger_count( var_0, var_1 )
{
    for (;;)
    {
        var_2 = undefined;

        while ( !_func_1B3( var_2 ) )
            var_1 waittill( "trigger",  var_2  );

        level.static_model_group_states[var_0]++;
        level notify( "model_group_count_changed" );

        while ( var_2 _meth_80B0( var_1 ) )
            waittillframeend;

        level.static_model_group_states[var_0]--;
        level notify( "model_group_count_changed" );
        waittillframeend;
    }
}

setsunlight_dcburning()
{
    var_0 = _func_046();
    var_1 = 0.04;
    var_2 = var_0[0] * var_1;
    var_3 = var_0[1] * var_1 * 0.6;
    var_4 = var_0[2] * var_1 * 0.4;
    var_5 = "-23057 3727 -213";
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", 1 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", var_5 );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", 1 );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", 1 );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", var_5 );
    _ID42237::_ID14413( "flag_reduce_sunlight" );
    _func_047( var_2, var_3, var_4 );
    _ID42237::_ID14426( "flag_reduce_sunlight" );
    _func_048();
    _unknown_F4B7();
}
#using_animtree("vehicles");

blackhawk_play_rotors_anim()
{
    self _meth_8155( %bh_rotors, 1, 0, 1 );
}

heliblackhawk_deathvolume()
{
    wait 3.9;
    var_0 = _func_1A1( "blackhawk_deathvolume", "targetname" );

    while ( !_ID42237::_ID14385( "blackhawk_landed" ) )
    {
        if ( level._ID794 _meth_80B0( var_0 ) )
        {
            level._ID794 _meth_8058();
            level._ID52945 _meth_828D( 0.05 );
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
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42237::_ID3350( _func_1A2( var_2._ID1191, "targetname" ), ::_unknown_F5D7 );
    }

    var_clear_2
    var_clear_0
}

move_fire_light()
{
    var_0 = self._ID740;
    var_1 = self._ID65;
    var_2 = 0.05;
    var_3 = 0.28;

    for (;;)
    {
        var_4 = _func_0BA( var_2, var_3 );
        var_5 = _func_0BA( 0.1, 1 );
        var_6 = _func_0BA( 0.045, 1.35 );
        var_7 = _func_0BA( 0.035, 0.95 );
        var_8 = _func_0BA( 0.25, 1.45 );
        var_9 = var_0 + ( var_6, var_7, var_8 );
        self _meth_82B8( var_9, var_4, 0.018, 0.027 );
        wait(var_4);
    }
}

tank_player_collisions()
{
    var_0 = _func_1A1( "tank_turret_clip", "targetname" );
    var_0._ID740 = self _meth_818C( "tag_turret" ) + ( 15, -25, -10 );
    var_0._ID65 = self _meth_818D( "tag_turret" );
    var_0 _meth_8053( self, "tag_turret" );
    var_1 = _func_1A1( "tank_gun_clip", "targetname" );
    var_1._ID740 = self _meth_818C( "tag_barrel" ) + ( -45, 75, 0 );
    var_1._ID65 = self _meth_818D( "tag_barrel" );
    var_1 _meth_8053( self, "tag_barrel" );
    self waittill( "death" );
    var_0 _meth_8055();
    var_1 _meth_8055();
}

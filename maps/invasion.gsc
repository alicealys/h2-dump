// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( getdvar( "mission_select_cam" ) == "1" )
    {
        maps\invasion_mission_select_cam::_ID50320();
        return;
    }

    if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
        return;

    if ( maps\invasion_beautiful_corner::_ID50786() )
        return;

    level._ID40576 = "invasion_thermal_scope";
    level._ID50703 = 4000;
    level._ID53339 = undefined;
    level._ID45903 = 400;
    level._ID3650 = 7000;
    level._ID50569 = [];
    level._ID47460 = 90000;
    level._ID8760["90"] = cos( 90 );
    level._ID8760["60"] = cos( 60 );
    level._ID8760["25"] = cos( 25 );
    level._ID50964 = 0;
    level._ID12150 = 0;
    level._ID47818 = 0;
    level._ID47738 = 3500;
    level._ID49601 = 1;
    level._ID46121 = "body_us_army_shotgun";
    level._ID49267 = "head_us_army_a";
    precacheitem( "remote_missile_invasion" );
    level._ID46684 = 1;
    precachestring( &"INVASION_LINE1" );
    precachestring( &"INVASION_LINE2" );
    precachestring( &"INVASION_LINE3" );
    precachestring( &"INVASION_LINE4" );
    precachestring( &"INVASION_LINE5" );
    precachestring( &"INVASION_DRONE_PICKUP" );
    precachestring( &"INVASION_DRONE_PICKUP_PC" );
    _func_260( "h2_invasion" );
    _func_260( "h2_invasion_nvg_laser" );
    precacheshader( "h1_hud_tutorial_blur" );
    precacheshader( "h1_hud_tutorial_border" );
    precacheshader( "h1_ac130_screen_overlay" );
    precacheshader( "h1_ac130_distort" );
    level._ID51248 = [];
    level._ID51248[0] = "weapon_scar_h_clip";
    level._ID51248[1] = "weapon_ak47_clip";
    level._ID51248[2] = "weapon_ump45_clip";
    level._ID51248[3] = "weapon_fn2000_clip";
    level._ID51248[4] = "weapon_mp5_clip";
    level._ID51248[5] = "weapon_saw_clip";
    level._ID51248[6] = "weapon_mp44_clip";
    level._ID51248[7] = "weapon_m16_clip";
    _ID42411::_ID6235( "script_vehicle_btr80", "spotlight", "TAG_FRONT_LIGHT_RIGHT", "fx/misc/spotlight_btr80_daytime_invasion", "spotlight", 0.2 );
    _ID42411::_ID6235( "script_vehicle_btr80", "spotlight_turret", "TAG_TURRET_LIGHT", "fx/misc/spotlight_btr80_daytime_invasion", "spotlight_turret", 0.0 );
    _ID54687::main( "vehicle_mi-28_flying", "mi28", "script_vehicle_mi28" );
    _ID53327::main( "vehicle_ucav", "ucav", "script_vehicle_ucav" );
    _ID54469::main();
    _ID51039::main();
    _ID47059::main();
    maps\invasion_lighting::main();
    thread _ID53625();
    precacheitem( "smoke_grenade_american" );
    precacheitem( "remote_missile_not_player_invasion" );
    precachemodel( "h1_weapon_stinger_obj" );
    precachemodel( "weapon_uav_control_unit_obj" );
    precacheitem( "flash_grenade" );
    precachemodel( "h2_arc_foliage_tree_oak_01" );
    precachemodel( "h2_foliage_tree_oak_1_burnt" );
    precacheitem( "zippy_rockets" );
    precacheitem( "stinger_speedy" );
    precacherumble( "tank_rumble" );
    precachemodel( "h1_mwr_com_widescreen_monitor_des" );
    precachemodel( "com_widescreen_monitor_on_1_des" );
    precachemodel( "com_widescreen_monitor_on_2_des" );
    precachemodel( "ma_flatscreen_tv_wallmount_broken_02" );
    _ID49693();
    _ID42407::_ID10126( ::_ID50832 );
    _ID42407::_ID1951( "latvee", ::_ID50832 );
    _ID42407::_ID1951( "yards", ::_ID46964 );
    _ID42407::_ID1951( "bmp", ::_ID44993 );
    _ID42407::_ID1951( "pizza", ::_ID47636 );
    _ID42407::_ID1951( "gas_station", ::_ID46963 );
    _ID42407::_ID1951( "crash", ::_ID35711 );
    _ID42407::_ID1951( "nates_roof", ::_ID48562 );
    _ID42407::_ID1951( "attack_diner", ::_ID53424 );
    _ID42407::_ID1951( "defend_diner", ::_ID52684 );
    _ID42407::_ID1951( "diner", ::_ID53368 );
    _ID42407::_ID1951( "burgertown", ::_ID47009 );
    _ID42407::_ID1951( "vip_escort", ::_ID53807 );
    _ID42407::_ID1951( "defend_BT", ::_ID46130 );
    _ID42407::_ID1951( "helis", ::_ID52113 );
    _ID42407::_ID1951( "convoy", ::_ID44873 );
    _ID42407::_ID1951( "start_btr80_smash", ::_ID44097 );
    _ID42508::_ID28414();
    _ID42287::init();
    maps\invasion_anim::_ID43266();
    _ID42323::main();
    _ID44597::_ID44237();
    maps\invasion_aud::main();
    _ID53924::main();
    _ID42237::_ID3350( getvehiclenodearray( "plane_sound", "script_noteworthy" ), _ID42549::_ID26746 );
    _ID46436::init();
    level._ID51882 = 1;
    level._ID43292 = "invasion_uav";
    level._ID43461 = "invasion_uav";
    _ID50736::init();
    thread _ID52750();
    thread _ID45196();
    thread _ID53476();
    level._ID46718 = 1500;
    level._ID47738 = 5000;

    if ( level._ID35897 == "no_game" )
        return;

    thread _ID47818();
    _ID42272::_ID33575( "compass_map_invasion" );
    var_0 = getent( "roof_parachute_landing_guy_yards", "targetname" );
    var_1 = getent( "latvee_ride_roof_landing", "targetname" );
    var_0 _ID42407::_ID1947( maps\invasion_anim::_ID50748 );
    var_1 _ID42407::_ID1947( maps\invasion_anim::_ID50748, "latvee_guy" );
    _ID42237::_ID3350( getentarray( "nova_tv", "targetname" ), ::_ID49488, "h1_mwr_com_widescreen_monitor_des", "tv_explosion", ( 0, 0, -15 ), 0, 1 );
    _ID42237::_ID3350( getentarray( "monitor_destruct1", "targetname" ), ::_ID49488, "h1_mwr_com_widescreen_monitor_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
    _ID42237::_ID3350( getentarray( "monitor_destruct_on1", "targetname" ), ::_ID49488, "com_widescreen_monitor_on_1_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
    _ID42237::_ID3350( getentarray( "monitor_destruct_2_on", "targetname" ), ::_ID49488, "com_widescreen_monitor_on_2_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
    _ID42237::_ID3350( getentarray( "commander", "script_noteworthy" ), _ID42407::_ID1947, ::_ID50126 );
    _ID42237::_ID3350( getentarray( "taco", "script_noteworthy" ), _ID42407::_ID1947, ::_ID43184 );
    _ID42237::_ID3350( getentarray( "worm", "script_noteworthy" ), _ID42407::_ID1947, ::_ID46252 );
    _ID42237::_ID3350( getentarray( "alley_nates_attackers", "script_noteworthy" ), _ID42407::_ID1947, ::_ID54103 );
    _ID42237::_ID3350( getentarray( "wells", "script_noteworthy" ), _ID42407::_ID1947, ::_ID44389 );
    _ID42237::_ID3350( getentarray( "BT_nates_attackers", "script_noteworthy" ), _ID42407::_ID1947, ::_ID48163 );
    var_2 = getentarray( "wounded_carry_attackers", "script_noteworthy" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_ID48090 );
    var_3 = getentarray( "BT_enemy_defenders", "script_noteworthy" );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, ::_ID49684 );
    var_4 = getentarray( "nates_defenders", "script_noteworthy" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_ID46610 );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_ID50024, "nates_defenders" );
    var_5 = getentarray( "president", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_ID44220 );
    var_6 = getentarray( "truck_group_enemies", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_ID43401 );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_ID43330 );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_ID53305 );
    var_7 = getentarray( "bank_nates_attackers", "targetname" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, ::_ID47794 );
    var_8 = getentarray( "diner_enemy_defenders_mobile", "script_noteworthy" );
    _ID42237::_ID3350( var_8, _ID42407::_ID1947, ::_ID48431 );
    var_9 = getentarray( "gas_station_truck_guys", "targetname" );
    _ID42237::_ID3350( var_9, _ID42407::_ID1947, ::_ID50024, "gas_station_truck_enemies" );
    _ID42237::_ID3350( getentarray( "tangled_parachute_guy", "script_noteworthy" ), _ID42407::_ID1947, maps\invasion_anim::_ID43872 );
    _ID42407::_ID1892( "axis", ::_ID45351 );
    _ID42407::_ID1892( "axis", ::_ID53967 );
    var_10 = getent( "predator_drone_control", "targetname" );
    var_10 hide();
    _ID42237::_ID3350( getentarray( "animated_parachute", "targetname" ), ::animate_hanging_parachute );
    thread _ID50070();
    thread _ID50706();
    var_11 = getentarray( "paradrop_plane_trigger", "targetname" );
    _ID42237::_ID3350( var_11, ::_ID52532 );
    thread _ID45557();
    level._ID49526 = _ID42411::_ID35196( "uav" );
    level._ID49526 playloopsound( "uav_engine_loop" );
    level._ID39406 = spawn( "script_model", level._ID49526.origin );
    level._ID39406 setmodel( "tag_origin" );
    thread _ID49309();
    thread change_remote_missile_zfar();
    level._ID43847 = getent( "obj_sentry", "script_noteworthy" );
    level._ID43847 thread _ID47532();
    thread _ID47653();
    createthreatbiasgroup( "nates_defenders" );
    createthreatbiasgroup( "gas_station_truck_enemies" );
    createthreatbiasgroup( "players_group" );
    level.player setthreatbiasgroup( "players_group" );
    _ID42407::_ID19382( "nates_defenders", "gas_station_truck_enemies" );
    var_12 = getentarray( "friendly_redshirt_rpg", "script_noteworthy" );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_ID51214 );
    _ID42407::_ID1895( "hint_predator_drone_vs_bmps_4", &"HELLFIRE_USE_DRONE", ::_ID46563, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_predator_drone_vs_bmps_2", &"HELLFIRE_USE_DRONE_2", ::_ID46563, undefined, "medium_background" );
    _ID42407::_ID1865( "hint_steer_drone", &"SCRIPT_PLATFORM_STEER_DRONE", ::_ID45901, &"SCRIPT_PLATFORM_STEER_DRONE_PC", undefined, "small_background" );
    _ID42407::_ID1895( "hint_throw_smoke", &"INVASION_THROW_SMOKE", ::_ID49766, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_get_smoke", &"INVASION_GET_SMOKE", ::_ID49501 );
    _ID42407::_ID1895( "hint_smoke_too_far", &"INVASION_SMOKE_TOO_FAR", ::_ID46289, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_ads_with_stinger", &"INVASION_ADS_WITH_STINGER", ::_ID52869, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_toggle_ads_with_stinger", &"INVASION_TOGGLE_ADS_WITH_STINGER", ::_ID52869, undefined, "medium_background" );
    waitframe;
    level.smokegrenadesarray = [];
    level.smoke_normal = _ID42237::_ID16299( "smoke_grenade_american" );
    level.smoke_low = _ID42237::_ID16299( "smoke_grenade_low" );
    level.smoke_dud = _ID42237::_ID16299( "smoke_grenade_dud" );
    level.player thread smoke_grenade_listener();
    thread staticmodelgroup_init();
    _ID42237::_ID14402( "flag_staticmodelgroup_5" );
    _ID42237::_ID14402( "flag_staticmodelgroup_7" );
    _ID42237::_ID14402( "flag_staticmodelgroup_8" );
    _ID42237::_ID14402( "flag_staticmodelgroup_10" );
    _ID42237::_ID14402( "player_outside_nates_killzone" );
    thread hide_destructible_vehicles( "flag_destructible_vehicles", "volume_destructible_vehicles" );
    thread hide_destructible_vehicles( "flag_vehicle_road", "volume_vehicle_road", 1 );
    thread monitor_nates_portal();
    setsaveddvar( "ai_busyEventDistDeath", "400" );
    setsaveddvar( "ai_busyEventDistGunShot", "800" );
    setsaveddvar( "r_useLightGridDefaultModelLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultModelLightingLookup", " 2550 8000 2375 " );
    setsaveddvar( "r_useLightGridDefaultModelLightingSmoothing", "1" );
    thread _ID54550();
    thread _ID53562();
    thread start_hides_map();
    var_13 = getent( "destructible_notify", "script_noteworthy" );
    var_13 thread exploding_car();
    thread show_tree();
    setsaveddvar( "ai_perf_disableStairsSteepMetrics", "1" );
    thread monitor_sentry_badplace();
    setsaveddvar( "missileRemoteSteerPitchRange", "9 87" );

    if ( _ID42407::_ID20505() )
        level._ID43135.greenberet_disabled = 1;
}

_ID49693()
{
    _ID42237::_ID14400( "flag_portal_beginning_east_wall" );
    _ID42237::_ID14400( "flag_portal_beginning_wall" );
    _ID42237::_ID14400( "flag_portal_suburban_east_wall" );
    _ID42237::_ID14400( "flag_portal_beginning_south_wall" );
    _ID42237::_ID14400( "flag_portal_road_east_wall" );
    _ID42237::_ID14400( "notetrack_gimmesitrep" );
    _ID42237::_ID14400( "notetrack_status" );
    _ID42237::_ID14400( "notetrack_whatelse" );
    _ID42237::_ID14400( "notetrack_sentrygunsouth" );
    _ID42237::_ID14400( "notetrack_checkout" );
    _ID42237::_ID14400( "notetrack_meatlocker" );
    _ID42237::_ID14400( "notetrack_unconscious" );
    _ID42237::_ID14400( "notetrack_supplydrop" );
    _ID42237::_ID14400( "house_destroyer_moving_back" );
    _ID42237::_ID14400( "btr_backed_away" );
    _ID42237::_ID14400( "btr_smoke_starting" );
    _ID42237::_ID14400( "btr_smoked" );
    _ID42237::_ID14400( "follow_foley" );
    _ID42237::_ID14400( "northside_roof" );
    _ID42237::_ID14400( "smoke_screen_starting" );
    _ID42237::_ID14400( "bmp_out_of_sight" );
    _ID42237::_ID14400( "player_goto_roof" );
    _ID42237::_ID14400( "wells_intro_done" );
    _ID42237::_ID14400( "truck_guys_retreat" );
    _ID42237::_ID14400( "diner_attack" );
    _ID42237::_ID14400( "time_to_go_get_UAV_control" );
    _ID42237::_ID14400( "time_to_clear_burgertown" );
    _ID42237::_ID14400( "time_to_destroy_bmps" );
    _ID42237::_ID14400( "taco_goes_to_roof" );
    _ID42237::_ID14400( "player_defended_burgertown" );
    _ID42237::_ID14400( "player_at_convoy" );
    _ID42237::_ID14400( "bmp_north_left_dead" );
    _ID42237::_ID14400( "bmp_north_mid_dead" );
    _ID42237::_ID14400( "move_president_to_prep" );
    _ID42237::_ID14400( "bmp1_spotted_player" );
    _ID42237::_ID14400( "bmp2_spotted_player" );
    _ID42237::_ID14400( "juggernaut_dead" );
    _ID42237::_ID14400( "nates_bomb_incoming" );
    _ID42237::_ID14400( "nates_bombed" );
    _ID42237::_ID14400( "bank_guys_retreat" );
    _ID42237::_ID14400( "back_door_attack_start" );
    _ID42237::_ID14400( "nates_after_bombing_setup_done" );
    _ID42237::_ID14400( "static_model_initialized" );
    _ID42237::_ID14400( "bmps_from_north_dead" );
    _ID42237::_ID14400( "player_in_pos_to_cover_vip" );
    _ID42237::_ID14400( "convoy_is_here" );
    _ID42237::_ID14400( "threw_semtex" );
    _ID42237::_ID14400( "threw_smoke" );
    _ID42237::_ID14400( "first_attack_heli_spawned" );
    _ID42237::_ID14400( "second_attack_heli_spawned" );
    _ID42237::_ID14400( "first_attack_heli_dead" );
    _ID42237::_ID14400( "second_attack_heli_dead" );
    _ID42237::_ID14400( "time_to_goto_convoy" );
    _ID42237::_ID14400( "bmp_has_spotted_player" );
    _ID42237::_ID14400( "diner_door_opened" );
    _ID42237::_ID14400( "obj_regroup_nates_bombed" );
    _ID42237::_ID14400( "playerStartConvoy" );
    _ID42237::_ID14400( "sentry_in_position" );
    _ID42237::_ID14400( "player_has_predator_drones" );
    _ID42237::_ID14400( "player_in_latvee" );
}

exploding_car()
{
    var_0 = getentarray( "exploding_car_spot", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID45911 = var_2 getlightintensity();
        var_2 setlightintensity( 0 );
    }

    self waittill( "exploded" );
    _ID42234::_ID13611( "burning_tree" );
    thread swap_burning_tree();
    thread _ID51039::_ID45637();

    foreach ( var_2 in var_0 )
        var_2 setlightintensity( var_2._ID45911 );

    _ID42322::_ID46386( "h2_flickering_intense_fire", _ID42237::_ID16640( "exploding_car_spot_struct", "targetname" ) );
}

_ID53625()
{
    var_0 = getentarray( "nate_dest", "script_noteworthy" );
    var_1 = getent( "nate_dest_location", "targetname" );
    var_2 = getent( "nate_dest_start_location", "targetname" );
    var_3 = var_2.origin - var_1.origin;

    foreach ( var_5 in var_0 )
    {
        var_5.origin = var_5.origin - var_3;

        if ( isdefined( var_5._ID31388 ) && var_5._ID31388 == "switch_light_grid" )
            var_5 retargetscriptmodellighting( var_1 );
    }
}

start_hides_map()
{
    level endon( "gas_station_truck_spawned" );

    for (;;)
    {
        _ID42237::_ID14413( "hide_map" );
        setsaveddvar( "ui_hidemap", 1 );
        _ID42237::_ID14426( "hide_map" );
        setsaveddvar( "ui_hidemap", 0 );
    }
}

_ID47532()
{
    wait 0.5;
    var_0 = spawn( "script_origin", self.origin );
    var_0.targetname = "fake_sentry_owner";
    self.owner = var_0;

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( isplayernumber( var_1 ) )
            break;
    }

    self.owner = var_1;
}

_ID50715()
{
    _ID42411::_ID40197( "spotlight spotlight_turret" );
}

_ID50832()
{
    _ID42475::_ID34575( "start_latvee_checkpoint" );
    maps\invasion_lighting::_ID47921( "latvee" );
    thread _ID43204();
}

_ID48210()
{
    _ID42475::_ID34575( "start_bmp_checkpoint" );
    var_0 = _ID42237::_ID16638( "start_yards", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level._ID44703 = 1;
}

_ID46964()
{
    _ID42475::_ID34575( "start_yards_checkpoint" );
    maps\invasion_lighting::_ID47921( "yards" );
    var_0 = _ID42237::_ID16638( "start_yards", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_yards_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    thread _ID51360();
}

_ID44993()
{
    _ID42475::_ID34575( "start_bmp_checkpoint" );
    maps\invasion_lighting::_ID47921( "bmp" );
    var_0 = _ID42237::_ID16638( "start_bmp", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_bmp_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    thread _ID51420();
}

_ID47636()
{
    _ID42475::_ID34575( "start_pizza_checkpoint" );
    maps\invasion_lighting::_ID47921( "pizza" );
    var_0 = _ID42237::_ID16638( "start_pizza", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_pizza_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "spawn_nates_attackers_in_alley" );
    thread _ID51632();
    thread _ID51617();
}

_ID46963()
{
    _ID42475::_ID34575( "start_gas_checkpoint" );
    maps\invasion_lighting::_ID47921( "gas_station" );
    var_0 = _ID42237::_ID16638( "start_gas_station", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_gas_station_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42407::_ID1805( "BT_attackers_trigger" );
    thread _ID52718();
}

_ID35711()
{
    _ID42475::_ID34575( "start_crash_checkpoint" );
    maps\invasion_lighting::_ID47921( "crash" );
    var_0 = _ID42237::_ID16638( "start_crash", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_crash_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    thread monitor_nates_roof_interior();
    thread _ID35139();
    level._ID48510 _ID42407::_ID32315( "g" );
    level._ID52761 _ID42407::_ID32315( "y" );
    _ID42407::_ID1805( "move_to_wells_intro" );
    _ID42237::_ID14402( "leaving_gas_station" );
    wait 1;
    thread _ID50117();
}

_ID48562()
{
    _ID42475::_ID34575( "start_nates_roof_checkpoint" );
    maps\invasion_lighting::_ID47921( "nates_roof" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    thread _ID35139();
    thread _ID52164();
    thread _ID46795();
    thread monitor_nates_roof_interior();
}

_ID44827()
{
    _ID42475::_ID34575( "start_nates_roof_checkpoint" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "sentry_in_position" );
    _ID42237::_ID14402( "crash_objective" );
    thread _ID35139();
    thread _ID52164();
    var_4 = getentarray( "magic_smoke_grenade", "targetname" );
    _ID42237::_ID3350( var_4, ::_ID45388 );
    thread _ID51897();
    thread _ID53064();
}

_ID53424()
{
    _ID42475::_ID34575( "start_attack_dinner_checkpoint" );
    maps\invasion_lighting::_ID47921( "attack_diner" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    thread _ID35139();
    thread _ID52164();
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID51897();
    thread monitor_nates_roof_interior();
    wait 0.1;
    thread _ID54570();
}

_ID44097()
{
    _ID42475::_ID34575( "start_btr80_smash_checkpoint" );
    maps\invasion_lighting::_ID47921( "start_btr80_smash" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getentarray( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3].origin = var_2[var_3].origin;
        var_1[var_3].angles = var_2[var_3].angles;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    thread _ID35139();
    thread _ID52164();
    level._ID43847 kill();
    level._ID44042 = 1;
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID51897();
    thread _ID54570();
}

_ID52684()
{
    _ID42475::_ID34575( "start_diner_defend_checkpoint" );
    maps\invasion_lighting::_ID47921( "defend_diner" );
    var_0 = _ID42237::_ID16638( "start_diner", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_diner_taco", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_1 _ID42407::_ID35014();
    var_3 = getent( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3.origin = var_4[0].origin;
    var_3.angles = var_4[0].angles;
    var_3 _ID42407::_ID35014();
    thread _ID35139();
    thread _ID52164();
    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID47707();
    level._ID43847 kill();
    thread monitor_nates_roof_interior();
    wait 0.1;
    thread _ID45679();
    thread _ID44915();
}

_ID53368()
{
    _ID42475::_ID34575( "start_diner_checkpoint" );
    _ID42237::_ID14400( "player_is_near_houses" );
    maps\invasion_lighting::_ID47921( "diner" );
    var_0 = _ID42237::_ID16638( "start_diner", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_diner_taco", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_1 _ID42407::_ID35014();
    var_3 = getent( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3.origin = var_4[0].origin;
    var_3.angles = var_4[0].angles;
    var_3 _ID42407::_ID35014();
    thread _ID35139();
    thread _ID52164();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID47707();
    thread _ID46772();
    level._ID43847 kill();
    _ID42237::_ID14402( "nates_bomb_incoming" );
    _ID42407::_ID1805( "burger_town_enemy_defenders_trigger" );
    thread _ID53430();
    thread _ID52369();
}

_ID47009()
{
    _ID42475::_ID34575( "start_bergertown_checkpoint" );
    maps\invasion_lighting::_ID47921( "burgertown" );
    var_0 = _ID42237::_ID16638( "start_BT", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_1 _ID42407::_ID35014();
    var_3 = getent( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3.origin = var_4[0].origin;
    var_3.angles = var_4[0].angles;
    var_3 _ID42407::_ID35014();
    thread _ID35139();
    thread _ID52164();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID47707();
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _ID46772();
    level._ID43847 kill();
    _ID48419();
    _ID42234::_ID13611( 333 );
    thread _ID45464();
}

_ID53807()
{
    _ID42475::_ID34575( "start_vip_escort_checkpoint" );
    maps\invasion_lighting::_ID47921( "vip_escort" );
    var_0 = _ID42237::_ID16638( "start_vip_escort", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_1 _ID42407::_ID35014();
    var_3 = getent( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3.origin = var_4[0].origin;
    var_3.angles = var_4[0].angles;
    var_3 _ID42407::_ID35014();
    thread _ID35139();
    thread _ID52164();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID47707();
    _ID48419();
    _ID42234::_ID13611( 333 );
    thread _ID52206();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    var_5 = getnode( "wells_in_bushes", "targetname" );
    level._ID51681 setgoalnode( var_5 );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _ID46772();
    level._ID43847 kill();
    thread _ID45201();
}

_ID46130()
{
    _ID42475::_ID34575( "start_defend_BT_checkpoint" );
    maps\invasion_lighting::_ID47921( "defend_BT" );
    var_0 = _ID42237::_ID16638( "start_BT", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_1 _ID42407::_ID35014();
    var_3 = getent( "commander", "script_noteworthy" );
    var_4 = getent( "president_in_burgertown_meat_locker", "targetname" );
    var_3.origin = var_4.origin;
    var_3.angles = var_4.angles;
    var_3 _ID42407::_ID35014();
    var_5 = getent( "president_BT_checkpoint", "script_noteworthy" );
    var_6 = getnode( "BT_node_vip", "targetname" );
    level._ID28454 = var_5 _ID42407::_ID35014();
    level._ID28454 _ID44597::_ID52372( var_6 );
    thread _ID44292();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID47707();
    _ID48419();
    _ID42234::_ID13611( 333 );
    thread _ID52206();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _ID46772();
    level._ID43847 kill();
    _ID42237::_ID14402( "president_in_BT_meat_locker" );
    thread _ID50037();
}

_ID52113()
{
    _ID42475::_ID34575( "start_helis_checkpoint" );
    maps\invasion_lighting::_ID47921( "helis" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_1 _ID42407::_ID35014();
    var_3 = getent( "commander", "script_noteworthy" );
    var_4 = getent( "president_in_burgertown_meat_locker", "targetname" );
    var_3.origin = var_4.origin;
    var_3.angles = var_4.angles;
    var_3 _ID42407::_ID35014();
    var_5 = getent( "president_BT_checkpoint", "script_noteworthy" );
    var_6 = getnode( "BT_node_vip", "targetname" );
    level._ID28454 = var_5 _ID42407::_ID35014();
    level._ID28454 _ID44597::_ID52372( var_6 );
    thread _ID44292();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _ID47707();
    _ID48419();
    _ID42234::_ID13611( 333 );
    thread _ID52206();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _ID46772();
    level._ID43847 kill();
    _ID42237::_ID14402( "president_in_BT_meat_locker" );
    level._ID53096 = 3;
    _ID42237::_ID14402( "first_attack_heli_spawned" );
    thread _ID50037();
}

_ID44873()
{
    _ID42475::_ID34575( "start_convoy_checkpoint" );
    maps\invasion_lighting::_ID47921( "convoy" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    var_1 = getent( "commander", "script_noteworthy" );
    var_2 = getent( "president_in_burgertown_meat_locker", "targetname" );
    var_1.origin = var_2.origin;
    var_1.angles = var_2.angles;
    var_1 _ID42407::_ID35014();
    var_3 = getent( "president_BT_checkpoint", "script_noteworthy" );
    var_4 = getnode( "BT_node_vip", "targetname" );
    level._ID28454 = var_3 _ID42407::_ID35014();
    level._ID28454 _ID44597::_ID52372( var_4 );
    thread _ID44292();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    _ID48419();
    _ID42234::_ID13611( 333 );
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _ID46772();
    level._ID43847 kill();
    _ID42237::_ID14402( "president_in_BT_meat_locker" );
    thread _ID49731();
}

_ID45232()
{
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    level.player freezecontrols( 1 );
    thread _ID42318::_ID20372( 5.3, 1 );
    var_0 = [];
    var_0[var_0.size] = &"INVASION_LINE1";
    var_0["date"] = &"INVASION_LINE2";
    var_0[var_0.size] = &"INVASION_LINE3";
    var_0[var_0.size] = &"INVASION_LINE4";
    var_0[var_0.size] = &"INVASION_LINE5";
    _ID42318::_ID20371( var_0 );
    wait 5;
    level.player setplayerangles( ( 0, 180, 0 ) );
    level.player freezecontrols( 0 );
    wait 1.8;
    level notify( "introscreen_complete" );
    wait 2;
    _ID42407::_ID4422( "levelstart" );
}

_ID43204()
{
    level._ID40793 = "vehicle_laatpv_viewmodel";
    level._ID40830 = "latvee";
    level._ID40791 = "script_vehicle_laatpv_viewmodel";
    _ID42411::_ID6245( ( 0, 0, 53 ), 512, 90, 20, 0 );
    thread _ID45232();
    _ID42407::_ID4917( "allies" );
    thread _ID47944();
    thread _ID42407::_ID24587( "mus_invasion_intro" );
    _ID42237::_ID14402( "flag_portal_beginning_east_wall" );
    _ID42237::_ID14402( "flag_portal_beginning_wall" );
    _ID42237::_ID14402( "flag_portal_suburban_east_wall" );
    _ID42237::_ID14402( "flag_portal_beginning_south_wall" );
    _ID42237::_ID14402( "flag_portal_road_east_wall" );
    wait 2.5;
    var_0 = getent( "first_flight", "script_noteworthy" );
    var_0 notify( "trigger" );
    var_0 _ID42237::_ID38863();
    wait 1.5;
    level.player disableweapons();
    level._ID51121 = _ID42411::_ID35196( "latvee_front" );
    level._ID51121._ID11584 = 1;
    var_1 = spawn( "script_origin", level._ID51121 gettagorigin( "tag_guy1" ) + ( 0, 0, 1 ) );
    var_1.angles = level._ID51121 gettagangles( "tag_guy1" );
    var_1 linkto( level._ID51121, "tag_guy1" );
    var_2 = spawn( "script_origin", level._ID51121 gettagorigin( "tag_passenger" ) + ( 0, 0, 1 ) );
    var_2.angles = level._ID51121 gettagangles( "tag_passenger" );
    var_2 linkto( level._ID51121, "tag_passenger" );
    var_3 = getent( "shotgun", "script_noteworthy" );
    var_3 _ID42407::_ID1947( maps\invasion_anim::_ID43813, var_1 );
    var_4 = getent( "backseat_right", "script_noteworthy" );
    var_4 _ID42407::_ID1947( maps\invasion_anim::_ID53447, var_2 );
    var_5 = getentarray( "latvee_blows_up_riders", "targetname" );
    _ID42237::_ID3350( var_5, _ID42407::_ID35014 );
    level._ID51831 = _ID42411::_ID35196( "latvee_player" );
    level._ID51831._ID11584 = 1;
    level._ID51831 thread maps\invasion_aud::_ID51834();
    level._ID51831 thread maps\invasion_aud::_ID48725( "scn_invasion_plr_laatpv_explode_01" );
    level._ID51121 thread maps\invasion_aud::_ID48725( "scn_invasion_npc_laatpv_explode_01" );
    thread jeep_ride_intro_vehicle();
    thread jeep_ride_intro_team_members();
    thread jeep_ride_intro_player();
    thread jeep_ride_intro_unlink();
    thread jeep_ride_intro_cinematic();
    _ID42237::_ID14413( "latvee_ride_roof_landing" );
    thread _ID45394();
    _ID42237::_ID14413( "start_latvee_destroyer" );
    level._ID52761 pushplayer( 1 );
    level._ID48510 pushplayer( 1 );
    level._ID48076 pushplayer( 1 );
    level._ID48076 thread _ID42407::_ID22746();
    level._ID53691 = _ID42411::_ID35196( "latvee_destroyer" );
    level._ID53691.veh_pathtype = "constrained";
    level._ID53691 thread _ID51105();
    level._ID53691 thread maps\invasion_aud::_ID51834();
    wait 2;
    level._ID52761 thread _ID42407::_ID10805( "inv_six_gotbmp" );
    level._ID51831 vehicle_setspeed( 0, 10 );
    _ID42475::_ID34575( "stop_plr_latvee_engine" );
    wait 1;
    _ID42407::_ID1805( "flee_latvee" );
    wait 1;
    level._ID52761 pushplayer( 1 );
    level._ID48510 pushplayer( 1 );
    level._ID48076 pushplayer( 1 );
    _ID42474::_ID4669( "exterior0" );
    thread _ID44734();
    wait 1;
    setsaveddvar( "compass", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    level._ID52761 pushplayer( 1 );
    level._ID48510 pushplayer( 1 );
    level._ID48076 pushplayer( 1 );
    thread _ID51360();
}

jeep_ride_intro_cinematic()
{
    var_0 = _ID54167::_ID43386( "jeep_ride_intro" );
    var_0 _ID54167::_ID48800( 24.0 ) _ID54167::_ID50321( 3.5, -1, 8.0, 8.0 ) _ID54167::_ID52391( level.player.m_player_rig1, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 29.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.1 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.0, 0.0, 0.0, -7, 7, 2, -2 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.0, 0.0, 0.0, 70, 88, 17, 30 ) _ID54167::_ID43376( ::_meth_85aa, level.player, 90, -6, 0, 180 ) _ID54167::_ID43376( ::setviewangleresistance, level.player, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 21.5 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 1.0, 0.5, 0.5, -5, 35, 0.0, 0.0 );
    var_0 _ID54167::_ID48800( 24.0 ) _ID54167::_ID43376( ::lerpviewangleclamp, level.player, 0.5, 0.25, 0.25, 0.0, 0.0, 0.0, 0.0 );
    var_0 _ID54167::_ID48800( 0.15 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 24.0 ) _ID54167::_ID47844( 0 );
    var_1 = 0.075;
    var_2 = 2.0;
    var_3 = 10000;
    var_4 = level.player;
    var_5 = 26.5;

    for ( var_6 = 0.0; var_6 <= var_5; var_6 += 0.5 )
        var_0 _ID54167::_ID48800( var_6 ) _ID54167::_ID47198( var_1, var_2, var_4, var_3 );

    var_0 _ID54167::_ID48800( 21.45 ) _ID54167::_ID47198( 0.08, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 22.0 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 23.4 ) _ID54167::_ID47198( 0.14, 1.5, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.25 );
    var_0 _ID54167::_ID48800( 24.15 ) _ID54167::_ID47198( 0.08, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.1 );
    var_0 _ID54167::_ID48800( 24.85 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_0 _ID54167::_ID48800( 26.55 ) _ID54167::_ID47198( 0.1, 0.7, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
    var_0 _ID54167::_ID48166();
}

jeep_ride_intro_team_members()
{
    level._ID48510 = _ID42407::_ID35150( "taco", 1 );
    level._ID52761 = _ID42407::_ID35150( "commander", 1 );
    level._ID48076 = _ID42407::_ID35150( "worm", 1 );
    var_0 = [ level._ID48510, level._ID52761, level._ID48076 ];
    level._ID51831 _ID42259::_ID3016( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    _ID42237::_ID3294( var_0, ::linkto, level._ID51831, "body_animate_jnt" );
    level._ID51831 thread _ID42259::_ID3099( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    level._ID51831 waittill( "jeep_ride_intro_unlink" );
    _ID42237::_ID3294( var_0, ::unlink );
}

jeep_ride_intro_player()
{
    level.player enableinvulnerability();
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    var_0 = _ID42407::_ID35028( "viewbody", level.player.origin, level.player.angles );
    level.player.m_player_rig1 = var_0;
    level._ID51831 _ID42259::_ID3018( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    var_0 linkto( level._ID51831, "body_animate_jnt" );
    _ID42407::_ID3567( var_0 );
    level.player playerlinktodelta( var_0, "tag_player", 1.0, 0, 0, 0, 0 );
    level._ID51831 thread _ID42259::_ID3111( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    level._ID51831 _ID42407::_ID1985( _ID42407::_ID41116, "jeep_ride_intro_unlink" );
    var_0 _ID42407::_ID1855( ::unlink );
    thread _ID42407::_ID11231();
    var_1 = 0.5;
    var_2 = var_0 _ID42407::_ID16120( "invasion_intro_jeepride" );
    wait(getanimlength( var_2 ) - var_1);
    var_3 = spawn( "script_origin", level._ID51831 gettagorigin( "body_animate_jnt" ) );
    var_3.angles = level._ID51831 gettagangles( "body_animate_jnt" );
    var_0 thread _ID42259::_ID46741( "player_anim_height", var_2, 0.0, var_3 );
    wait(var_1);
    var_0 notify( "player_anim_height" );
    level.player unlink();
    var_0 delete();
    level._ID43135.greenberet_disabled = undefined;
    thread _ID49347::weapons_specialfeatures( 1 );
    level.player enabledeathshield( 0 );
    level.player allowcrouch( 1 );
    level.player allowprone( 1 );
    level.player enableweapons();
}

jeep_ride_intro_unlink()
{
    while ( level._ID51831.veh_speed == 0.0 )
        waittillframeend;

    while ( level._ID51831.veh_speed > 0.0 )
        waittillframeend;

    level._ID51831 notify( "jeep_ride_intro_unlink" );
}

_ID51360()
{
    _ID42407::_ID4917( "allies" );
    var_0 = getent( "roof_parachute_landing_guy_yards", "targetname" );
    _ID42237::_ID14413( "entering_yards" );
    _ID42407::_ID4422( "yards" );

    if ( isalive( level._ID48076 ) )
    {
        if ( isdefined( level._ID48076._ID22746 ) )
            level._ID48076 thread _ID42407::_ID36519();
    }

    level._ID52761 pushplayer( 0 );
    level._ID48510 pushplayer( 0 );

    if ( isalive( level._ID48076 ) )
        level._ID48076 pushplayer( 0 );

    thread _ID53256();
    level._ID51302 = var_0 _ID42407::_ID35014();
    level._ID51302.ignoreme = 1;
    thread _ID52818();
    thread _ID51420();
}

_ID51420()
{
    _ID42237::_ID14413( "start_house_destroyer" );
    _ID42407::_ID4422( "hd" );
    thread _ID51632();
    _ID42237::_ID14400( "house_destroyer_unloading" );
    level._ID44615 = _ID42411::_ID35195( "house_destroyer" );
    level._ID44615 thread _ID43048();
    thread _ID53475();
    _ID42237::_ID14413( "got_visual_on_crash" );
    level._ID52761 _ID42407::_ID10805( "inv_six_viscrashsite" );
    _ID42407::_ID4918( "allies" );
    thread _ID44535();
    thread _ID45672( "house_destroyer_unloading" );
    thread _ID51994();
    thread _ID46342();
    thread _ID44745();
    thread _ID49896();
    thread _ID51617();
}

_ID51617()
{
    thread _ID43960();
    _ID42237::_ID14402( "flag_staticmodelgroup_6" );
    _ID42237::_ID14413( "gas_station_truck_spawned" );
    thread _ID42407::_ID32188( "invasion_ext3" );
    thread _ID44817();
    thread _ID45672( "leaving_gas_station" );
    setsaveddvar( "ai_perf_maximumPathfGenerationLookaheadAttempts", "1" );
    level.battlechattermaxcanseeperframe = 5;
    thread _ID52718();
}

_ID52718()
{
    _ID42237::_ID14413( "leaving_gas_station" );
    thread h2_inv_footik_disable();
    thread animated_wires_taco();
    thread animate_nates_beams();
    thread monitor_nates_roof_interior();
    var_0 = getent( "burning_tree", "script_noteworthy" );
    var_0 notify( "stop_burning_tree" );
    level._ID53339 = "north";
    thread _ID48976();
    thread _ID49133();
    thread _ID54533();
    thread _ID48899();
    thread _ID50130();
    thread _ID35139();

    if ( !isdefined( level._ID51681 ) )
    {
        var_1 = getent( "wells", "script_noteworthy" );
        var_1 _ID42407::_ID35014();
    }

    _ID42407::_ID1805( "advance_towards_nates" );
    _ID42237::_ID14413( "goto_wells_intro" );
    thread _ID43774();
    thread _ID50117();
}

_ID50117()
{
    if ( !isdefined( level._ID51681 ) )
    {
        var_0 = getent( "wells", "script_noteworthy" );
        var_0 _ID42407::_ID35014();
    }

    thread _ID47840();
    level._ID48510 _ID42407::_ID32315( "g" );
    _ID42407::_ID1805( "move_to_wells_intro" );
    var_1 = getentarray( "bank_nates_attackers", "targetname" );

    foreach ( var_3 in var_1 )
        var_4 = var_3 _ID42407::_ID35014();

    _ID42237::_ID14413( "crash_objective" );
    _ID42407::_ID4422( "crash_site" );
    level._ID53339 = "north";
    thread _ID46391();
    thread _ID46795();
}

_ID47840()
{
    var_0 = _ID42237::_ID16638( "police_car_moment", "script_noteworthy" );
    badplace_cylinder( "police_car_moment", -1, var_0.origin, 600, 300, "axis" );
    var_0 thread _ID42259::_ID3025( level._ID51681, "invasion_vehicle_cover_dialogue_guy1_idle", "stop_invasion_vehicle_cover_dialogue_guy1_idle" );
    level._ID52761 _ID42407::_ID10871();
    var_0 _ID42259::_ID3027( level._ID52761, "invasion_vehicle_cover_dialogue_guy2" );
    level._ID52761.goalradius = 15;
    _ID42237::_ID14413( "crash_objective" );

    while ( distance2dsquared( level._ID52761.origin, level._ID52761.goalpos ) > level._ID52761.goalradius * level._ID52761.goalradius )
        waittillframeend;

    level._ID52761.goalradius = level._ID10115;
    thread _ID51573();
    var_0 notify( "stop_invasion_vehicle_cover_dialogue_guy1_idle" );
    var_0 thread _ID42259::_ID3020( level._ID51681, "invasion_vehicle_cover_dialogue_guy1" );
    var_0 _ID42259::_ID3020( level._ID52761, "invasion_vehicle_cover_dialogue_guy2" );
    thread _ID43039();
    badplace_delete( "police_car_moment" );
}

_ID51573()
{
    if ( _ID42237::_ID14385( "player_on_roof" ) )
        return;

    level endon( "player_on_roof" );
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "notetrack_gimmesitrep" );
    level._ID52761 playsound( "inv_six_gimmesitrep" );
    _ID42237::_ID14413( "notetrack_meatlocker" );
    level._ID51681 playsound( "inv_sgw_meatlocker" );
    _ID42237::_ID14413( "notetrack_status" );
    level._ID52761 playsound( "inv_six_status" );
    _ID42237::_ID14413( "notetrack_unconscious" );
    level._ID51681 playsound( "inv_sgw_unconscious" );
    _ID42237::_ID14413( "notetrack_whatelse" );
    level._ID52761 playsound( "inv_six_whatelse" );
    _ID42237::_ID14413( "notetrack_checkout" );
    thread _ID52312();
    _ID42237::_ID14413( "notetrack_supplydrop" );
    level._ID51681 playsound( "inv_sgw_supplydrop" );
    _ID42237::_ID14413( "notetrack_sentrygunsouth" );
    level._ID52761 playsound( "inv_six_sentrygunsouth" );
    wait 3;
    _ID42237::_ID14402( "player_goto_roof" );
    thread _ID42407::_ID4918( "allies" );
    wait 12;
    level._ID52761 _ID42407::_ID10805( "inv_six_antitank" );
    level._ID51681 _ID42407::_ID10805( "inv_sgw_allout" );
    wait 1;
    level._ID52761 _ID42407::_ID10805( "inv_six_rogerthat" );
    _ID42237::_ID14402( "wells_intro_done" );
}

_ID46795()
{
    thread _ID44295();
    thread _ID49839();
    thread _ID52410();
    _ID42237::_ID14413( "player_on_roof" );
    thread _ID42407::_ID4918( "allies" );
    level._ID53339 = "south";
    var_0 = getent( "nates_roof_volume_south", "targetname" );
    var_1 = getaiarray( "allies" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_2 == 5 )
            break;

        var_1[var_2].goalheight = 80;
        var_1[var_2].goalradius = 500;
        var_1[var_2].fixednode = 0;
        var_1[var_2] setgoalpos( var_0.origin );
        var_1[var_2] setgoalvolume( var_0 );
    }

    setsaveddvar( "ai_pathReduceLookaheadBadplaceOnPathCreation", 1 );
    setsaveddvar( "ai_pathAlwaysCheckBadplace", 1 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_1[var_2]._ID43561 = var_1[var_2].coversearchinterval;
        var_1[var_2].coversearchinterval = 4000;
    }

    level._ID52761.goalheight = 80;
    level._ID52761.goalradius = 500;
    level._ID52761.fixednode = 0;
    level._ID52761 setgoalpos( var_0.origin );
    level._ID52761 setgoalvolume( var_0 );
    level._ID48510.goalheight = 80;
    level._ID48510.goalradius = 500;
    level._ID48510.fixednode = 0;
    level._ID48510 setgoalpos( var_0.origin );
    level._ID48510 setgoalvolume( var_0 );
    thread safe_saving_roof();
    _ID42237::_ID14402( "bank_guys_retreat" );
    wait 3;
    var_3 = getaiarray( "axis" );

    foreach ( var_5 in var_3 )
        var_5 thread _ID44509();

    level._ID52202 = 0;
    level._ID44194 = 0;
    level._ID53305 = 0;
    var_7 = thread _ID42411::_ID35196( "truck_group_left" );
    var_7.veh_pathtype = "constrained";
    var_7 thread maps\invasion_aud::_ID51834();
    wait 0.1;
    var_8 = thread _ID42411::_ID35196( "truck_group_right" );
    var_8.veh_pathtype = "constrained";
    var_8 thread maps\invasion_aud::_ID51834();
    var_9 = getentarray( "magic_smoke_grenade", "targetname" );
    _ID42237::_ID3350( var_9, ::_ID45388 );
    thread _ID49271();
    _ID42407::_ID28864( "inv_six_headsupladies" );
    thread _ID52958();
    wait 1;

    while ( level._ID44194 > 5 )
        wait 1;

    _ID42407::_ID4422( "trucks_to_north" );
    thread _ID53064();
}

_ID53064()
{
    level._ID53339 = "north";
    var_0 = getentarray( "magic_smoke_grenade_north", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID45388 );
    level._ID52202 = 0;
    level._ID53305 = 0;
    var_1 = thread _ID42411::_ID35196( "truck_north_right" );
    var_1.veh_pathtype = "constrained";
    wait 0.1;
    var_2 = thread _ID42411::_ID35196( "truck_north_left" );
    var_2.veh_pathtype = "constrained";
    thread _ID43160();
    _ID42407::_ID28864( "inv_tco_incomingnorth" );
    _ID42407::_ID28864( "inv_six_rogerthat" );
    thread _ID45478();
    _ID42237::_ID14402( "northside_roof" );
    wait 6;
    _ID42407::_ID28864( "inv_tco_contactnorth" );
    _ID42407::_ID28864( "inv_six_contactsn" );
    _ID42407::_ID28864( "inv_six_shiftfiren" );
    thread _ID51897();

    while ( level._ID44194 > 5 )
        wait 1;

    level._ID53339 = "west";
    _ID42237::_ID14402( "truck_guys_retreat" );
    wait 6;
    _ID42407::_ID4422( "truck_retreat" );
    var_3 = getnodearray( "south_side_nodes", "targetname" );
    var_4 = 0;
    var_5 = getent( "nates_roof_volume_south", "targetname" );
    var_6 = getaiarray( "allies" );

    for ( var_7 = 0; var_7 < var_6.size; var_7++ )
    {
        if ( _ID42237::_ID8201() )
        {
            if ( var_4 >= var_3.size )
                break;

            var_6[var_7].fixednode = 0;
            var_6[var_7] setgoalnode( var_3[var_4] );
            var_6[var_7] setgoalvolume( var_5 );
            var_4++;
        }
    }

    _ID42407::_ID28864( "inv_six_hadenough" );
    _ID42407::_ID28864( "inv_six_sitreponraptor" );
    _ID42407::_ID28864( "inv_tco_secureandstable" );
    _ID42407::_ID28864( "inv_six_checkammo" );
    _ID47307();
    thread diner_door_clip();
    thread _ID54570();
}

_ID54570()
{
    level._ID53339 = "west";

    if ( isdefined( level._ID44042 ) )
        thread _ID44042();

    thread _ID50099();
    thread _ID44268();
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        var_2 cleargoalvolume();
        var_2.coversearchinterval = var_2._ID43561;
    }

    thread _ID43535();
    var_4 = getnode( "taco_scopes_diner", "targetname" );

    if ( isdefined( var_4 ) )
        level._ID48510 setgoalnode( var_4 );

    thread _ID44487();
    _ID42237::_ID14426( "player_on_roof" );
    _ID42237::_ID14402( "diner_attack" );
    var_5 = _ID45679();
    thread _ID46320();
    thread _ID53618();
    level _ID42407::_ID1985( _ID42237::_ID14413, "player_inside_nates" );
    level _ID42407::_ID1890( _ID42407::_ID4422, "go_to_diner" );
    level thread _ID42407::_ID11231();
    thread _ID45982();
    thread _ID43685();
    thread _ID44915();
}

_ID44915()
{
    _ID42237::_ID14413( "player_has_predator_drones" );
    level._ID53339 = "east";
    thread _ID48382();
    _ID42407::_ID4422( "has_drones" );
    _ID42407::_ID1805( "burger_town_enemy_defenders_trigger" );
    thread _ID53430();
    thread _ID48345();
    thread _ID49281();
    _ID42237::_ID14413( "bmp_north_left_dead" );
    _ID42237::_ID14413( "bmp_north_mid_dead" );
    thread _ID50086();
    thread _ID52369();
    _ID42237::_ID14421( "player_outside_nates_killzone", "move_president_to_prep" );
    wait 1;
    _ID42407::_ID4422( "bmps_destroyed" );
}

_ID52369()
{
    _ID42237::_ID14413( "leaving_diner" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread monitor_nates_roof_portal();
    _ID49000();
    level._ID53339 = "south";
    var_0 = getnode( "taco_in_BT", "script_noteworthy" );
    var_1 = var_0.origin;
    var_2 = getent( "BT_goal_volume", "targetname" );
    var_3 = 3;
    level._ID50569 = _ID47367( var_3 );

    foreach ( var_5 in level._ID50569 )
        var_5 thread _ID43828( "player_in_burgertown", var_1, var_2 );

    _ID42237::_ID14402( "move_president_to_prep" );
    thread _ID43944();
    thread _ID51931();
    level _ID42407::_ID1985( _ID42237::_ID14413, "player_in_burgertown" );
    level _ID42407::_ID1890( _ID42407::_ID4422, "player_in_burgertown" );
    level thread _ID42407::_ID11231();
    _ID42237::_ID14413( "burger_town_lower_cleared" );
    _ID42407::_ID4422( "burgertown_cleared" );
    thread _ID45464();
}

_ID45464()
{
    _ID42237::_ID14402( "move_president_to_prep" );
    level._ID53339 = undefined;
    wait 3;
    thread _ID52206();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "time_to_clear_burgertown" );
    var_0 = getnode( "wells_in_bushes", "targetname" );
    level._ID51681 setgoalnode( var_0 );
    var_1 = getentarray( "nates_regroup_enemies", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );
    thread _ID45201();
}

_ID45201()
{
    _ID42237::_ID14402( "move_president_to_prep" );
    var_0 = getent( "BT_goal_volume", "targetname" );
    var_1 = getent( "president_in_burgertown_meat_locker", "targetname" ).origin;
    var_2 = 3;
    level._ID50569 = _ID47367( var_2 );

    foreach ( var_4 in level._ID50569 )
    {
        var_4.offsetdirection = undefined;
        var_4 thread _ID47534( var_1, var_0 );
    }

    _ID42407::_ID4422( "defend_prez" );
    wait 1;
    _ID42407::_ID28864( "inv_six_lockandload" );
    wait 5;
    _ID42237::_ID14430( "player_in_burgertown", 6 );
    thread _ID52013();
    var_6 = getent( "president_in_burgertown_meat_locker", "targetname" );
    level._ID28454 invisiblenotsolid();
    level._ID52761 pushplayer( 1 );
    level._ID52761._ID11568 = 1;
    var_7 = level._ID52761.badplaceawareness;
    level._ID52761.badplaceawareness = 0;
    setsaveddvar( "ai_ignoreBadPlaceDuringPathing", 1 );
    var_8 = getent( "wounded_carry_path", "targetname" );
    level._ID52761 thread president_move_wrapper( var_8 );
    level._ID52187 = 1;
    level._ID28454 thread _ID42407::_ID27081( "scn_invasion_raptor_civ_grab", undefined );
    _ID42407::_ID28864( "inv_six_onthree" );
    wait 1;
    _ID42407::_ID28864( "inv_six_one" );
    wait 1;
    _ID42407::_ID28864( "inv_six_two" );
    wait 1;
    _ID42407::_ID28864( "inv_six_three" );
    wait 1;
    _ID42407::_ID28864( "inv_six_gogogo2" );
    level._ID51681 thread _ID42407::_ID36519();
    level._ID52761 thread _ID46005();
    thread _ID52562();
    thread _ID51601();
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    thread _ID45312();
    thread restore_raptor_state( var_7 );
    level._ID52187 = undefined;
    thread _ID50037();
}

restore_raptor_state( var_0 )
{
    wait 5;
    level._ID52761.badplaceawareness = var_0;
    setsaveddvar( "ai_ignoreBadPlaceDuringPathing", 0 );
}

_ID50037()
{
    thread _ID46372();
    thread _ID44292();
    _ID43096();
    thread _ID53162();
    thread _ID48677();
    _ID42237::_ID14413( "first_attack_heli_spawned" );
    var_0 = _ID42411::_ID35196( "kill_heli" );
    var_0._ID7544 = 1;
    var_0._ID24819 = 1;
    level._ID47105 = thread _ID42508::_ID4977( var_0 );
    level._ID47105 thread _ID42407::_ID27081( "scn_havok_heli_arrival_01" );
    thread _ID48719();
    thread _ID50584();
    var_1 = undefined;

    if ( isalive( level._ID47105 ) )
        level._ID47105 waittill( "death",  var_1  );

    _ID42237::_ID14402( "first_attack_heli_dead" );

    if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
        thread _ID47397();

    thread _ID42407::_ID4422( "heli_death" );
    _ID42237::_ID14413( "second_attack_heli_spawned" );
    var_0 = _ID42411::_ID35196( "kill_heli" );
    var_0._ID7544 = 1;
    var_0._ID24819 = 1;
    level._ID47105 = thread _ID42508::_ID4977( var_0 );
    level._ID47105 thread _ID42407::_ID27081( "scn_havok_heli_arrival_02" );
    thread _ID50584();
    thread _ID52492();
    var_1 = undefined;

    if ( isalive( level._ID47105 ) )
        level._ID47105 waittill( "death",  var_1  );

    _ID42237::_ID14402( "second_attack_heli_dead" );

    if ( isdefined( var_1 ) && isplayernumber( var_1 ) )
        thread _ID47397();

    thread _ID42407::_ID4422( "heli_death" );
    wait 12;
    thread _ID49731();
}

president_move_wrapper( var_0 )
{
    level._ID52761 _ID44597::_ID44201( level._ID28454, var_0 );
    _ID42407::_ID32336( self.origin );
}

_ID44741()
{
    thread _ID49917();
    _ID42237::_ID14413( "player_at_convoy" );
    _ID42407::_ID24584( 3 );
    level.player playsound( "mus_invasion_ending" );
    _ID42407::_ID24587( "mus_invasion_ending" );
}

_ID49917()
{
    if ( _ID42237::_ID14385( "player_at_convoy" ) )
        return;

    var_0 = _ID42407::_ID24586( "mus_invasion_regroup" );
    level endon( "player_at_convoy" );

    for (;;)
    {
        _ID42407::_ID24587( "mus_invasion_regroup" );
        wait(var_0);
    }
}

_ID49731()
{
    wait 1;
    level._ID53339 = "south";
    var_0 = undefined;
    var_1 = getentarray( "convoy", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3.script_noteworthy ) )
            continue;

        if ( var_3.script_noteworthy == "obj_vehicle" )
            var_0 = var_3;
    }

    if ( isdefined( var_0 ) )
    {
        while ( _ID42407::_ID27540( var_0.origin, 0, 1 ) && _ID42237::_ID14385( "player_on_roof" ) )
            wait 1;
    }

    thread _ID44741();
    maps\invasion_anim::convoy_latvee_remap_dismount_anims();
    var_5 = _ID42237::_ID16640( "convoy_targets", "targetname" );
    var_6 = [];
    thread _ID44943();

    foreach ( var_3 in var_1 )
    {
        var_8 = var_3 thread _ID42411::_ID35194();
        var_8 thread _ID43568( var_5 );
        var_8 thread _ID50151();
        var_8 thread maps\invasion_aud::_ID51834();

        if ( isdefined( var_3.script_noteworthy ) )
        {
            var_6[var_6.size] = var_8;

            if ( var_3.script_noteworthy == "obj_vehicle" )
                level._ID47128 = var_8;

            var_8 _ID42411::vehicle_set_random_unload_delays( 0, 0.5 );

            if ( var_3.script_noteworthy == "latvee" )
            {
                foreach ( var_10 in var_8._ID3575 )
                    var_10.vehicle_anim_ends_on_finish = 1;
            }

            if ( isdefined( var_3._ID31388 ) && var_3._ID31388 == "convoy_unload" )
                var_8 thread minigun_laatpv_unload();
        }
    }

    setsaveddvar( "ai_count", 64 );
    thread prepareplayerlaatpv();
    level._ID47128 thread h2_ending_spawn_weapon();
    _ID42237::_ID14402( "time_to_goto_convoy" );
    var_13 = getaiarray( "axis" );
    var_14 = var_13.size;

    if ( var_14 < 12 )
    {
        var_15 = getentarray( "wounded_carry_attackers_TC", "targetname" );
        _ID42237::_ID3350( var_15, _ID42407::_ID35014 );
    }

    if ( var_14 < 6 )
    {
        var_16 = getentarray( "wounded_carry_attackers_gas", "targetname" );
        _ID42237::_ID3350( var_16, _ID42407::_ID35014 );
    }

    _ID42237::_ID14413( "convoy_has_arrived" );

    if ( !isdefined( level._ID47128._ID39936 ) )
        level._ID47128._ID39936 = [];

    level._ID47128._ID39936[0] = 1;
    level._ID47128._ID39936[3] = 1;
    _ID42237::_ID14402( "convoy_in_position" );
    _ID42237::_ID14413( "player_at_convoy" );
    thread _ID54237( var_6 );
    thread _ID45869();
    _ID42407::_ID32515( "invasion_near_convoy", 3 );
    thread vip_escort_convoy();
    _ID42407::_ID28864( "inv_hqr_sitrep" );
    _ID42407::_ID28864( "inv_six_cargosecure" );
    _ID42407::_ID28864( "inv_hqr_goodjob" );
    wait 1;
    _ID42407::_ID28864( "inv_fly_2kcivvies" );
    _ID42407::_ID24793();
}

minigun_laatpv_unload()
{
    self waittill( "reached_end_node" );
    _ID42411::_ID40298( "passengers" );
}

_ID46372()
{
    _ID42237::_ID14413( "first_attack_heli_spawned" );

    for (;;)
    {
        level.player waittill( "begin_firing" );
        var_0 = level.player getcurrentweapon();

        if ( var_0 == "stinger" )
        {
            if ( level.player playerads() == 1.0 )
            {
                return;
                continue;
            }

            if ( _ID42407::_ID20493( "+toggleads_throw" ) )
            {
                _ID42407::_ID11090( "hint_toggle_ads_with_stinger", 5 );
                continue;
            }

            _ID42407::_ID11090( "hint_ads_with_stinger", 5 );
        }
    }
}

_ID52869()
{
    var_0 = level.player getcurrentweapon();

    if ( var_0 == "stinger" )
    {
        if ( level.player playerads() == 1.0 )
            return 1;
        else
            return 0;
    }
    else
        return 1;
}

h2_ending_spawn_weapon()
{
    self.weapon_convoy = _ID42407::_ID35028( "h2_laatpv_ending_weapon", self gettagorigin( "tag_guy1" ), self gettagangles( "tag_guy1" ) );
    _ID42259::_ID3018( self.weapon_convoy, "h2_laatpv_outro_in", "tag_guy1" );
    self.weapon_convoy linkto( self, "tag_guy1" );
}

prepareplayerlaatpv()
{
    var_0 = getent( "convoy_driver", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_1 _ID42407::_ID17509();
    var_1 forceteleport( level._ID47128 gettagorigin( "tag_driver" ), level._ID47128.angles );
    var_1 linkto( level._ID47128, "tag_driver" );
    var_1._ID3189 = "generic";
    var_1 thread _ID42259::_ID3044( var_1, "convoy_driver_idle", "player_enter" );
    _ID42237::_ID14413( "playerStartConvoy" );
    var_1 notify( "player_enter" );
    var_1 _ID42259::_ID3111( var_1, "convoy_driver_nod" );
    var_1 thread _ID42259::_ID3044( var_1, "convoy_driver_idle" );
}

_ID45869()
{
    var_0 = level._ID47128;

    for (;;)
    {
        if ( var_0.veh_speed == 0 )
            break;

        wait 0.5;
    }

    var_1 = var_0 gettagorigin( "tag_guy1" );
    var_2 = 7225;

    for (;;)
    {
        var_3 = distancesquared( var_1, level.player.origin );

        if ( var_3 <= var_2 )
            break;

        wait 0.05;
    }

    level.player playsound( "scn_invasion_plr_get_in_laatpv" );
    level.player setmovespeedscale( 0 );
    level.player allowcrouch( 0 );
    level.player allowprone( 0 );
    wait 0.25;
    level.player disableweapons( 1 );

    for (;;)
    {
        var_4 = getgroundposition( level.player.origin, 2 );

        if ( distancesquared( var_4, level.player.origin ) < 4 )
            break;

        waittillframeend;
    }

    _ID51143( "obj_convoy", "done" );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "actionSlotsHide", "1" );
    setsaveddvar( "ammoCounterHide", "1" );
    var_5 = var_0.weapon_convoy;
    var_6 = _ID42407::_ID35028( "viewbody", var_0 gettagorigin( "tag_guy1" ), var_0 gettagangles( "tag_guy1" ) );
    var_6 hide();
    var_6 dontcastshadows();
    var_0 _ID42259::_ID3018( var_6, "h2_laatpv_outro_in", "tag_guy1" );
    var_6 linkto( var_0, "tag_guy1" );
    var_6 _ID42407::_ID22172( level.player, "tag_player", 0.5, 1, 0, 0, 0, 0 );
    level.player playerlinktodelta( var_6, "tag_player", 1, 0, 0, 0, 0, 1 );
    thread player_at_convoy_cinematic( var_6 );
    var_6 show();
    _ID42237::_ID14402( "playerStartConvoy" );
    var_0 thread _ID42259::_ID3111( var_5, "h2_laatpv_outro_in", "tag_guy1" );
    var_0 _ID42259::_ID3111( var_6, "h2_laatpv_outro_in", "tag_guy1" );
    level.player playerlinktodelta( var_6, "tag_player", 1, 50, 30, 30, 30, 1 );
    level.player setviewangleresistance( 50, 50, 20, 20 );
    level.player _meth_85aa( 90, -12, 0, 180 );
    var_5 delete();
    var_6 attach( "h2_weapon_scar_h_reflex", "tag_weapon_right" );
    var_0 thread _ID42259::_ID3044( var_6, "h2_laatpv_outro_loop", undefined, "tag_guy1" );
    _ID42237::_ID14402( "player_in_latvee" );
}

player_at_convoy_cinematic( var_0 )
{
    var_1 = _ID54167::_ID43386( "player_at_convoy" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.0, -1, 32, 32 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 2.95 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.4 ) _ID54167::_ID47198( 0.06, 0.4, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_1 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.06, 0.4, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_1 _ID54167::_ID48800( 1.95 ) _ID54167::_ID47198( 0.06, 0.4, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
    var_1 _ID54167::_ID48166();
}

vip_escort_convoy()
{
    var_0 = getentarray( "ending_convoy_friendly", "targetname" );
    _ID42237::_ID14426( "player_is_near_BT_locker_door" );
    thread _ID50070();
    level._ID28454 invisiblenotsolid();
    level._ID52761 pushplayer( 1 );
    level._ID52761._ID11568 = 1;
    var_1 = getent( "wounded_carry_path_convoy", "targetname" );
    level._ID52761 _ID42407::_ID17509();
    level._ID52761 thread _ID44597::_ID44201( level._ID28454, var_1 );
    level._ID52761._ID24424 = 1.0;
    level._ID52187 = 1;
    level._ID28454 thread _ID42407::_ID27081( "scn_invasion_raptor_civ_grab", undefined );
    _ID42237::_ID3350( var_0, ::soldiers_escort_president, var_1 );
    _ID42237::_ID14413( "player_in_latvee" );
    var_2 = getent( "foley_outside_playerview", "targetname" );

    if ( level._ID52761 istouching( var_2 ) )
    {
        var_3 = getnode( "foley_teleport_convoy", "targetname" );
        level._ID52761 _ID42407::_ID37393( var_3 );
    }
}

_ID50151()
{
    _ID42407::_ID13024( "apply_brakes" );
    _ID42407::_ID13027( "apply_brakes" );
    self.veh_brake = 1;
}

_ID54237( var_0 )
{
    var_1 = getentarray( "friendly_redshirt", "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        if ( !isai( var_3 ) )
        {
            if ( isspawner( var_3 ) )
            {
                var_3 _ID42407::_ID29571( ::_ID46535 );
                var_3 _ID42407::_ID29571( ::_ID46277 );
            }
        }
    }

    level._ID47128._ID39936[3] = 1;
    var_5 = 54;
    var_6 = 4;
    var_7 = getaicount();

    for ( var_8 = var_0.size; var_8; var_7 = getaicount() )
    {
        if ( var_7 + var_6 > var_5 )
            return;

        var_9 = _ID46603();

        foreach ( var_11 in var_9 )
            thread _ID42407::_ID17584( var_11, var_0[var_8 - 1] );

        var_8--;
        wait 3;
    }
}

_ID46603()
{
    var_0 = "redshirt_spawn_group_BT";
    var_1 = _ID42237::_ID16640( var_0, "targetname" );
    var_2 = _ID42237::_ID16276( level.player.origin, var_1 );
    var_3 = getentarray( var_2.target, "targetname" );
    var_4 = [];

    foreach ( var_6 in var_3 )
    {
        if ( var_4.size < 3 )
        {
            var_6.count = 1;

            if ( getaicount() < 54 )
            {
                var_4[var_4.size] = var_6 _ID42407::_ID35014();
                continue;
            }

            break;
        }
    }

    return var_4;
}

_ID52410()
{
    _ID42237::_ID14413( "player_on_roof" );
    level endon( "diner_attack" );
    var_0 = [];
    var_0[var_0.size] = "inv_six_roofbehind";
    var_0[var_0.size] = "inv_six_enemiesonroof";
    var_0[var_0.size] = "inv_six_insideperim";
    var_0[var_0.size] = "inv_six_turnaround";
    var_1 = 0;
    var_2 = getent( "enemies_on_roof", "targetname" );

    for (;;)
    {
        var_2 waittill( "trigger",  var_3  );
        level._ID52761 _ID42407::_ID10805( var_0[var_1] );
        var_1++;

        if ( var_1 >= var_0.size )
            var_1 = 0;

        wait 10;
    }
}

_ID51897()
{
    _ID42237::_ID14413( "player_on_roof" );
    _ID42237::_ID14426( "player_on_roof" );
    _ID42407::_ID1805( "diner_enemy_defenders_trigger" );
}

_ID53967()
{
    if ( isdefined( self.script_noteworthy ) )
    {
        if ( self.script_noteworthy == "paradrop_guy_left" )
            return;

        if ( self.script_noteworthy == "paradrop_guy_right" )
            return;
    }

    if ( isdefined( self._ID29969 ) )
    {
        self endon( "death" );
        self waittill( "jumpedout" );
    }

    if ( !isdefined( self._ID39468 ) )
        return;

    _ID48289::_ID53152();
}

_ID48382()
{
    var_0 = getent( "nates_roof_volume_south", "targetname" );
    var_1 = getent( "destroyed_nates_inaccessable_volume", "targetname" );
    var_2 = getent( "destroyed_nates_safe_volume", "targetname" );
    var_3 = getent( "raptor_in_nates_prep", "targetname" );
    var_4 = getaiarray( "allies" );

    foreach ( var_6 in var_4 )
    {
        if ( var_6 istouching( var_1 ) || var_6 istouching( var_0 ) )
        {
            var_6.goalradius = 500;
            var_6 setgoalpos( var_3.origin );
            var_6 setgoalvolume( var_2 );
            var_6.fixednode = 0;
        }
    }

    badplace_brush( "destroyed_nates_inaccessable_volume", -1, var_1, "allies", "axis" );
    badplace_brush( "nates_roof_volume_south", -1, var_0, "allies", "axis" );
    _ID42237::_ID14413( "nates_bomb_incoming" );
    badplace_delete( "destroyed_nates_inaccessable_volume" );
    badplace_delete( "nates_roof_volume_south" );
}

_ID44295()
{
    level endon( "player_on_roof" );
    var_0 = getent( "roof_volume", "targetname" );
    var_1 = getaiarray( "allies" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3 istouching( var_0 ) )
        {
            if ( isdefined( var_3._ID22746 ) )
                var_3 _ID42407::_ID36519();

            var_3 kill();
            wait 0.5;
        }
    }
}

_ID44042()
{
    var_0 = getent( "btr80_smash", "targetname" );
    var_0.origin = ( 805.9, -1688.8, 2309.7 );
    var_0.angles = ( 0, 149, 0 );
    level.player _ID42407::_ID41112( var_0.origin, 1350 );
    var_1 = _ID42407::_ID35028( "btr_ground_smash" );
    var_2 = _ID42407::_ID35028( "btr_squashedcar" );
    var_1 playsound( "scn_invasion_btr_drop" );
    var_0 thread _ID42259::_ID3111( var_2, "btr_squashedcar" );
    var_0 thread _ID42259::_ID3111( var_1, "btr_ground_smash" );
}

_ID45478()
{
    var_0 = getnodearray( "north_side_nodes", "targetname" );
    var_1 = getent( "nates_roof_volume_north", "targetname" );
    var_2 = getaiarray( "allies" );
    level._ID52761.goalheight = 80;
    level._ID52761.goalradius = 500;
    level._ID52761.fixednode = 0;
    level._ID52761 setgoalnode( var_0[0] );
    level._ID52761 setgoalvolume( var_1 );
    var_3 = 1;

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        if ( var_3 >= var_0.size )
            break;

        if ( !isalive( var_2[var_4] ) )
        {
            continue;
            continue;
        }

        var_2[var_4].goalheight = 80;
        var_2[var_4].goalradius = 500;
        var_2[var_4].fixednode = 0;
        var_2[var_4] setgoalnode( var_0[var_3] );
        var_2[var_4] setgoalvolume( var_1 );
        var_3++;
        wait 1;
    }
}

_ID53562()
{
    _ID42237::_ID14413( "leaving_gas_station" );

    if ( _ID42237::_ID14385( "nates_bomb_incoming" ) )
        return;

    var_0 = getentarray( "nates_defenders", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 _ID42407::_ID35014();
}

_ID51632()
{
    _ID42237::_ID14413( "spawn_nates_attackers_in_alley" );
    var_0 = getentarray( "alley_nates_attackers", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 _ID42407::_ID35014();
}

_ID49281()
{
    level waittill( "player_is_controlling_UAV" );
    var_0 = getentarray( "uav_ambient_battle", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID43568( var_0 )
{
    if ( self.classname == "script_vehicle_laatpv_minigun" )
    {
        var_1 = self._ID23512[0];
        var_1 waittill( "turret_ready" );
        var_2 = var_1 getturretowner();
        var_2.ignoreall = 1;
        var_1 thread animscripts\laatpv_turret\common::_ID32371( level.player, 1, 6 );
        var_2.ignoreall = 0;
    }
    else
    {
        while ( !_ID42237::_ID14385( "player_at_convoy" ) )
        {
            var_0 = _ID42237::_ID3320( var_0 );

            foreach ( var_4 in var_0 )
            {
                self setturrettargetvec( var_4.origin );
                self waittill( "turret_on_target" );
                self fireweapon();
                wait(randomfloatrange( 0.2, 0.6 ));
            }
        }
    }
}

_ID47397()
{
    wait 3;
    _ID42407::_ID28864( "inv_six_niceoneheli" );
}

_ID44943()
{
    level endon( "player_at_convoy" );
    wait 10;
    _ID42407::_ID28864( "inv_six_convoyshere" );
    wait 4;
    _ID42407::_ID28864( "inv_six_southofbtown" );
    wait 4;
    _ID42407::_ID28864( "inv_tco_backtoconvoy" );

    for (;;)
    {
        wait 15;
        _ID42407::_ID28864( "inv_six_convoyshere" );
        wait 15;
        _ID42407::_ID28864( "inv_six_southofbtown" );
        wait 15;
        _ID42407::_ID28864( "inv_tco_backtoconvoy" );
    }
}

_ID44388()
{
    wait 8;

    if ( isdefined( level.player._ID20494 ) )
        return;

    level endon( "player_is_controlling_UAV" );

    if ( _ID42237::_ID8201() )
        _ID42407::_ID28864( "inv_six_theinfantry" );
    else
        _ID42407::_ID28864( "inv_six_theinfantry2" );

    wait 5;
    level.player thread _ID42407::_ID11085( level.player _ID48260( "hint_predator_drone" ) );
}

_ID48719()
{
    _ID42407::_ID28864( "inv_hqr_enemyhelo" );
    _ID42407::_ID28864( "inv_six_takedown" );
    thread _ID49080();
}

_ID49080()
{
    level._ID47105 endon( "death" );
    wait 3;
    var_0 = 0;
    var_1 = [];
    var_1[var_1.size] = "inv_tco_roofofnates";
    var_1[var_1.size] = "inv_tco_killthathelo";
    var_1[var_1.size] = "inv_six_checktheroof";
    var_1[var_1.size] = "inv_six_supplydroponroof";
    var_2 = 0;
    var_3 = [];
    var_3[var_3.size] = "inv_tco_dispatchchopper";
    var_3[var_3.size] = "inv_tco_insidediner";
    var_3[var_3.size] = "inv_tco_nexttostation";
    var_3[var_3.size] = "inv_tco_dineruav";

    for (;;)
    {
        var_4 = 1;
        var_5 = level.player getweaponslistall();

        foreach ( var_7 in var_5 )
        {
            if ( var_7 == "stinger" )
                var_4 = 0;
        }

        if ( !var_4 )
        {
            wait 3;
            continue;
        }

        var_9 = getent( "diner", "script_noteworthy" );

        if ( isdefined( var_9 ) )
        {
            var_10 = var_3[var_2];
            _ID42407::_ID28864( var_10 );

            if ( var_10 == "inv_tco_roofofnates" )
                _ID42407::_ID28864( "inv_tco_roofofnates2" );

            if ( var_10 == "inv_tco_killthathelo" )
                _ID42407::_ID28864( "inv_tco_killthathelo2" );

            var_2++;

            if ( var_2 >= var_3.size )
                var_2 = 0;
        }
        else
        {
            var_10 = var_1[var_0];
            _ID42407::_ID28864( var_10 );

            if ( var_10 == "inv_tco_dispatchchopper" )
                _ID42407::_ID28864( "inv_tco_dispatchchopper2" );

            if ( var_10 == "inv_tco_insidediner" )
                _ID42407::_ID28864( "inv_tco_insidediner2" );

            var_0++;

            if ( var_0 >= var_1.size )
                var_0 = 0;
        }

        wait 50;
    }
}

_ID53140()
{
    level waittill( "bmp_died" );

    if ( isdefined( level.player._ID49913 ) )
    {
        wait 3;

        if ( _ID42237::_ID14385( "bmps_from_north_dead" ) )
            return;

        _ID42407::_ID28864( "inv_six_onemore" );
    }
}

_ID52492()
{
    _ID42407::_ID28864( "inv_hqr_relaygol1" );
    _ID42407::_ID28864( "inv_tco_eyesup" );
    _ID42407::_ID28864( "inv_six_anotherhelo" );
    thread _ID49080();
}

_ID51687()
{
    if ( isdefined( level._ID45535 ) )
        return;

    level._ID49526 _ID42411::_ID16987();
    level._ID49526.health = 400;
    level waittill( "player_is_controlling_UAV" );
    wait 2;
    thread _ID43457();
    var_0 = anglestoforward( level._ID49526.angles );
    var_1 = var_0 * 10000;
    var_2 = var_1 + level._ID49526.origin;
    var_3 = missile_createattractorent( level._ID49526, 100000, 60000 );
    var_4 = magicbullet( "zippy_rockets", ( 497.8, -3564.4, 2346 ), var_2 );
    var_4 missile_settargetent( level._ID49526 );
    var_5 = level._ID49526.origin;
    var_6 = 999999999;

    while ( isdefined( var_4 ) )
    {
        if ( !isalive( level._ID49526 ) )
            break;

        var_7 = distance( var_4.origin, level._ID49526.origin );

        if ( var_7 <= 200 )
            break;

        if ( var_7 > var_6 + 100 )
            break;

        var_6 = var_7;
        var_5 = level._ID49526.origin;
        wait 0.05;
    }

    missile_deleteattractor( var_3 );

    if ( isdefined( var_4 ) )
        var_4 delete();

    playfx( _ID42237::_ID16299( "uav_explosion" ), var_5 );
    level._ID45535 = 1;
    level.player _ID50736::_ID50882();

    if ( isdefined( level._ID49526 ) )
        level._ID49526 delete();

    level notify( "uav_destroyed" );
    wait 2;
    _ID42407::_ID28865();
    _ID42407::_ID28864( "inv_tco_uavoffline" );
}

_ID43457()
{
    wait 2;
    _ID42407::_ID28865();
    _ID42407::_ID28864( "inv_tco_firedmissile" );
}

_ID48070()
{
    _ID42407::_ID28864( "inv_hqr_enemyhelo" );
    _ID42407::_ID28864( "inv_hqr_relaygol1" );
    _ID42407::_ID28864( "inv_hqr_capunavail" );
    _ID42407::_ID28864( "inv_tco_eyesup" );
}

_ID48677()
{
    var_0 = getentarray( "friendly_redshirt", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        if ( isai( var_2 ) )
        {
            if ( isalive( var_2 ) )
            {
                var_2 thread _ID46535();
                var_2 thread _ID46277();
            }

            continue;
        }

        if ( isspawner( var_2 ) )
        {
            var_2 _ID42407::_ID1947( ::_ID46535 );
            var_2 _ID42407::_ID1947( ::_ID46277 );
        }
    }

    if ( !isdefined( level._ID50569 ) )
        level._ID50569 = [];

    level endon( "time_to_goto_convoy" );

    for (;;)
    {
        wait 1;
        var_4 = 3;
        level._ID50569 = _ID47367( var_4 );
    }
}

_ID46535()
{
    self endon( "death" );
    self._ID19381 = 1;
    thread _ID42407::_ID22746();
    _ID42407::_ID41104( level.player, 600 );
    self._ID19381 = undefined;
    thread _ID42407::_ID36519();
}

smart_barney_goal( var_0, var_1 )
{
    self cleargoalvolume();
    var_2 = vectornormalize( var_1 - var_0 );
    var_3 = self.offsetdirection * 45 - 90;
    var_2 = rotatevector( var_2, ( 0, var_3, 0 ) ) * 300;
    var_4 = var_2 + var_0;
    self setgoalpos( var_4 );
}

smart_barney_goal_offset( var_0 )
{
    if ( !isdefined( level.offsetdirection ) )
        level.offsetdirection = 0;

    if ( !isdefined( self.offsetdirection ) )
    {
        if ( isdefined( var_0 ) && var_0 && level.offsetdirection == 2 )
            level.offsetdirection++;

        self.offsetdirection = level.offsetdirection;
        level.offsetdirection = ( level.offsetdirection + 1 ) % 5;
    }
}

_ID43828( var_0, var_1, var_2 )
{
    self endon( "stop_barney" );
    self endon( "death" );
    self cleargoalvolume();
    thread _ID54181();
    self.goalheight = 80;
    self.goalradius = 250;
    self.usechokepoints = 0;
    self.fixednode = 0;
    var_3 = getent( "nates_roof_goal_volume", "targetname" );
    var_4 = getent( "BT_roof_goal_volume", "targetname" );

    if ( !isdefined( self.favoriteenemy ) )
    {
        var_5 = var_2 _ID42407::_ID15547( "axis" );

        if ( var_5.size )
            self.favoriteenemy = var_5[0];
    }

    smart_barney_goal_offset();

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        if ( _ID42237::_ID14385( "player_on_burgertown_roof" ) )
        {
            self setgoalpos( var_4.origin );
            self setgoalvolume( var_4 );
        }
        else if ( _ID42237::_ID14385( "player_on_roof" ) )
        {
            self setgoalpos( var_3.origin );
            self setgoalvolume( var_3 );
        }
        else
            smart_barney_goal( level.player.origin, var_1 );

        wait 2;
        self.favoriteenemy = undefined;
    }

    self notify( "stop_adjust_movement_speed" );
    self._ID24424 = 1.0;
    self setgoalpos( var_1 );
    self setgoalvolume( var_2 );
}

_ID46277()
{
    self notify( "stop_barney" );
    self endon( "stop_barney" );
    self endon( "death" );
    self cleargoalvolume();
    thread _ID54181();
    self.goalheight = 80;
    self.usechokepoints = 0;

    if ( !isdefined( self._ID51540 ) )
        self.goalradius = 200;
    else
        self.goalradius = 1000;

    self.fixednode = 0;
    var_0 = getent( "nates_roof_goal_volume", "targetname" );
    var_1 = getent( "BT_roof_goal_volume", "targetname" );
    smart_barney_goal_offset();

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_on_burgertown_roof" ) )
        {
            self setgoalpos( var_1.origin );
            self setgoalvolume( var_1 );
        }
        else if ( _ID42237::_ID14385( "player_on_roof" ) )
        {
            self setgoalpos( var_0.origin );
            self setgoalvolume( var_0 );
        }
        else
        {
            self cleargoalvolume();

            if ( isdefined( level._ID49672 ) )
            {
                var_2 = level._ID49672;
                smart_barney_goal( level.player.origin, var_2 );
            }
            else
            {
                var_3 = level.player.origin;
                self setgoalpos( var_3 );
            }
        }

        wait 2;
    }

    self notify( "stop_adjust_movement_speed" );
    self._ID24424 = 1.0;
}

_ID53162()
{
    if ( !isdefined( level._ID53096 ) )
        level._ID53096 = 0;

    level._ID52881[0] = "taco_enemies";
    level._ID52881[1] = "gas_station_enemies";
    level._ID52881[2] = "bank_enemies";
    level._ID10730 = [];
    level._ID10730["bank_enemies"][0] = "inv_hqr_enemynorth";
    level._ID10730["bank_enemies"][1] = "inv_hqr_banktonorth";
    level._ID10730["bank_enemies"][2] = "inv_hqr_footmobiles";
    level._ID10730["taco_enemies"][0] = "inv_hqr_southeast";
    level._ID10730["taco_enemies"][1] = "inv_hqr_visualse";
    level._ID10730["taco_enemies"][2] = "inv_hqr_tacojoint";
    level._ID10730["gas_station_enemies"][0] = "inv_hqr_novagasstation";
    level._ID10730["gas_station_enemies"][1] = "inv_hqr_enemywest";
    level._ID10730["gas_station_enemies"][2] = "inv_hqr_dinerwest";
    level._ID12880 = 0;
    level._ID52881 = _ID42237::_ID3320( level._ID52881 );
    level._ID51689 = 0;
    level._ID48762 = getentarray( "enemy_groups", "targetname" );

    for (;;)
    {
        var_0 = getaiarray( "axis" );
        var_1 = var_0.size;
        var_2 = var_1;

        if ( var_2 < 7 )
        {
            if ( _ID42237::_ID14385( "first_attack_heli_dead" ) )
            {
                level._ID53096++;
                level notify( "enemy_group_spawning" );
                _ID35055();
                wait 9;
                _ID42237::_ID14402( "second_attack_heli_spawned" );
                thread _ID42407::_ID4422( "reinforcements" );
                _ID42237::_ID14413( "second_attack_heli_dead" );
                thread _ID42407::_ID4422( "reinforcements" );
                return;
            }

            if ( level._ID53096 == 3 && !_ID42237::_ID14385( "first_attack_heli_spawned" ) )
            {
                wait 12;
                thread _ID42407::_ID4422( "reinforcements" );
                _ID42237::_ID14402( "first_attack_heli_spawned" );
                _ID42237::_ID14413( "first_attack_heli_dead" );
                wait 5;
                continue;
            }

            if ( level._ID53096 >= 2 )
                thread _ID51687();

            level._ID53096++;
            level notify( "enemy_group_spawning" );

            if ( level._ID53096 == 1 )
                thread _ID44388();

            if ( level._ID53096 == 2 )
                thread _ID44388();

            _ID35055();
        }

        wait 1;
    }
}

_ID35055()
{
    var_0 = _ID42237::_ID16182( level.player.origin, level._ID48762 );

    if ( var_0.target == level._ID52881[level._ID51689] )
        level._ID51689++;

    if ( level._ID51689 >= level._ID52881.size )
        level._ID51689 = 0;

    var_1 = level._ID52881[level._ID51689];
    level._ID51689++;

    if ( level._ID51689 >= level._ID52881.size )
        level._ID51689 = 0;

    if ( var_1 == "bank_enemies" )
        level._ID53339 = "north";

    if ( var_1 == "gas_station_enemies" )
        level._ID53339 = "west";

    if ( var_1 == "taco_enemies" )
        level._ID53339 = "east";

    wait 1;
    thread _ID42407::_ID4422( "reinforcements" );
    wait 3;
    var_2 = getentarray( var_1, "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( getaicount() >= 54 )
            break;

        var_2[var_3].count = 1;
        var_4 = var_2[var_3] _ID42407::_ID35014();
        wait 0.1;
    }

    wait 1;
    var_5 = randomint( level._ID10730[var_1].size );
    thread _ID42407::_ID28864( level._ID10730[var_1][var_5] );
    wait 3;

    if ( !isdefined( level._ID49090 ) )
    {
        if ( level._ID53096 < 3 )
        {
            foreach ( var_7 in level._ID48762 )
            {
                if ( var_7.target == var_1 )
                    level._ID49090 = var_7.origin;
            }
        }
    }
}

_ID45312()
{
    _ID42407::_ID28864( "inv_six_gotthepresident" );
    _ID42407::_ID28864( "inv_six_friedlyconvoy" );
}

_ID48694()
{
    level endon( "convoy_is_here" );

    for (;;)
    {
        _ID42237::_ID14426( "player_is_close_to_BT" );
        thread _ID53287();
        _ID42237::_ID14413( "player_is_close_to_BT" );
    }
}

_ID53287()
{
    level endon( "convoy_is_here" );
    level endon( "player_is_close_to_BT" );
    level notify( "warning_player_is_leaving_BT" );
    wait 2;
    level notify( "warning_player_is_leaving_BT" );
    wait 2;
    level notify( "warning_player_is_leaving_BT" );
    wait 1;
    setdvar( "ui_deadquote", &"INVASION_FAIL_ABANDONED" );
    _ID42407::_ID23778();
}

_ID50706()
{
    var_0 = getent( "nates_meat_locker_door", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_1 linkto( var_0 );
    var_0 rotateyaw( -82, 0.1, 0, 0 );
    var_0 connectpaths();
    _ID42237::_ID14413( "player_on_roof" );
    wait 3;
    _ID42237::_ID14413( "player_on_roof" );
    var_0 rotateyaw( 82, 0.1, 0, 0 );
    var_0 disconnectpaths();
}

_ID50070()
{
    var_0 = getent( "BT_locker_door", "targetname" );
    var_1 = getent( var_0.target, "targetname" );
    var_1 linkto( var_0 );
    var_0 rotateyaw( -172, 0.1, 0, 0 );
    var_0 connectpaths();
}

_ID44292()
{
    wait 1;
    _ID42237::_ID14426( "player_is_near_BT_locker_door" );
    var_0 = getent( "BT_locker_door", "targetname" );
    var_0 rotateyaw( 172, 0.1, 0, 0 );
    var_0 disconnectpaths();
    thread _ID42407::_ID28864( "inv_six_gotthepresident2" );
}

_ID46005()
{
    var_0 = getent( "vip_escort_bad_place1", "targetname" );
    var_1 = getent( "vip_escort_bad_place2", "targetname" );
    var_2 = getent( "vip_escort_bad_place3", "targetname" );
    badplace_brush( "vip_escort_bad_place1", -1, var_0, "axis" );
    badplace_brush( "vip_escort_bad_place2", -1, var_1, "axis" );
    badplace_brush( "vip_escort_bad_place3", -1, var_2, "axis" );
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    badplace_delete( "vip_escort_bad_place1" );
    badplace_delete( "vip_escort_bad_place2" );
    badplace_delete( "vip_escort_bad_place3" );
}

_ID44734()
{
    wait 2;
    _ID42237::_ID14402( "follow_foley" );
    level._ID52761 _ID42407::_ID10805( "inv_six_teamthisway" );
}

_ID52818()
{
    level endon( "dialog_bmp_hasnt_spotted_us" );
    level._ID52761 _ID42407::_ID10805( "inv_six_reqairsupport" );
    level._ID52761 _ID42407::_ID10805( "inv_hqr_engaged" );
    level._ID52761 _ID42407::_ID10805( "inv_hqr_engaged2" );
    level._ID52761 _ID42407::_ID10805( "inv_six_onfoot" );
    level._ID52761 _ID42407::_ID10805( "inv_six_onfoot2" );
    level._ID52761 _ID42407::_ID10805( "inv_hqr_goodluck" );
    wait 2;
    level._ID52761 _ID42407::_ID10805( "inv_tco_fourselves" );
    level._ID48510 _ID42407::_ID10805( "inv_six_prettymuch" );
    wait 4;
    level._ID52761 _ID42407::_ID10805( "inv_six_300meast" );
    level._ID48510 _ID42407::_ID10805( "inv_tco_rogerthat" );
}

_ID49000()
{
    var_0 = _ID42411::_ID35200( "bomb_nates" );
    thread _ID42407::_ID28864( "inv_six_fastmovers" );
    wait 3.4;
    _ID42234::_ID13611( 3331 );
    wait 0.1;
    _ID48419();
    _ID42234::_ID13611( 333 );
    thread _ID49225();
    var_1 = ( 257.2, -4669.1, 2381 );

    if ( distance( level.player.origin, var_1 ) < 500 )
        level.player dodamage( level.player.health + 1000, var_1 );

    _ID42407::_ID10226( 2, ::_ID53865 );
}

_ID49225()
{
    earthquake( 0.45, 0.4, level.player.origin, 10000 );
    setblur( 5.2, 0.1 );
    wait 0.1;
    setblur( 0, 0.35 );
    wait 0.3;
    earthquake( 0.15, 2.5, level.player.origin, 10000 );
}

_ID53865()
{
    var_0 = getentarray( "player", "classname" )[0];
    var_1 = 22;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        playfx( level._ID1426["falling_debris_player"], var_0.origin + ( 0, 0, 500 ) );
        wait 0.2;
    }
}

_ID48419()
{
    var_0 = getentarray( "exploder_tv_333", "script_noteworthy" );

    foreach ( var_3, var_2 in var_0 )
        var_2 delete();
}

_ID53256()
{
    var_0 = getaiarray( "allies" );
}

_ID43535()
{
    wait 5;
    var_0 = getnodearray( "off_roof", "targetname" );
    var_1 = 0;
    var_2 = getent( "roof_volume", "targetname" );
    var_3 = getaiarray( "allies" );

    foreach ( var_5 in var_3 )
    {
        if ( var_5 == level._ID48510 )
            continue;

        if ( var_5 istouching( var_2 ) )
        {
            var_5 setgoalnode( var_0[var_1] );
            var_1++;
            var_5.goalradius = 96;
            var_5.goalheight = 64;
        }
    }
}

_ID45351()
{
    self waittill( "death" );
    wait 0.05;

    if ( !isdefined( level._ID52353 ) )
        level._ID52353 = 1;
    else
        level._ID52353++;
}

_ID53100()
{
    var_0 = [];
    var_0[var_0.size] = "inv_hqr_tenpluskia";
    var_0[var_0.size] = "inv_hqr_tenmoreconfirms";
    var_0[var_0.size] = "inv_hqr_fivenotenkills";
    var_1 = 0;
    var_2 = [];
    var_2[var_2.size] = "inv_hqr_fiveplus";
    var_2[var_2.size] = "inv_hqr_another5plus";
    var_2[var_2.size] = "inv_hqr_morethanfive";
    var_3 = 0;
    var_4 = 0;
    var_5 = 0;
    level._ID52353 = 0;
    var_6 = 0;

    for (;;)
    {
        level waittill( "remote_missile_exploded" );
        var_7 = level._ID52353;
        wait 0.1;

        if ( isdefined( level._ID48964["ai"] ) )
            var_6 = level._ID48964["ai"];
        else
            var_6 = 0;

        if ( var_6 == 0 )
            continue;

        wait 0.5;

        if ( isdefined( level._ID45535 ) )
            return;

        if ( var_6 == 1 )
        {
            if ( var_4 )
            {
                _ID42407::_ID28864( "inv_hqr_yougotem" );
                var_4 = 0;
            }
            else
            {
                _ID42407::_ID28864( "inv_hqr_hesdown" );
                var_4 = 1;
            }

            continue;
        }

        if ( var_6 >= 10 )
        {
            _ID42407::_ID28864( var_0[var_1] );
            var_1++;

            if ( var_1 >= var_0.size )
                var_1 = 0;

            continue;
        }

        if ( var_6 >= 5 )
        {
            _ID42407::_ID28864( var_2[var_3] );
            var_3++;

            if ( var_3 >= var_2.size )
                var_3 = 0;

            continue;
            continue;
        }

        if ( var_5 )
        {
            _ID42407::_ID28864( "inv_hqr_goodkills" );
            var_5 = 0;
        }
        else
        {
            _ID42407::_ID28864( "inv_hqr_directhit" );
            var_5 = 1;
        }

        continue;
    }
}

_ID43685()
{
    _ID42237::_ID14413( "player_in_diner" );
    _ID42407::_ID4422( "at_diner" );
    wait 2;
    _ID42237::_ID14413( "player_in_diner" );
    level._ID48510 _ID42407::_ID10805( "inv_tco_incoming" );
    thread _ID46772();
    var_0 = getent( "diner_enemy_counter_attack_trigger", "targetname" );
    var_1 = getentarray( var_0.target, "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_ID48431 );
    _ID42407::_ID1805( "diner_enemy_counter_attack_trigger" );
    _ID42237::_ID14402( "back_door_attack_start" );
    level._ID48510 _ID42407::_ID10805( "inv_tco_backdoor" );
}

_ID46772()
{
    var_0 = getent( "diner_back_door", "targetname" );
    var_1 = getent( "back_door_col", "targetname" );
    var_1 linkto( var_0 );
    var_0 rotateyaw( 85, 0.3 );
    var_0 playsound( "diner_backdoor_slams_open" );
    var_1 connectpaths();
    wait 1;
    _ID42237::_ID14402( "diner_door_opened" );
}

_ID43160()
{
    _ID42237::_ID14388( "smoke_screen_starting" );
    _ID42237::_ID14413( "smoke_screen_starting" );
    wait 4;
    _ID42407::_ID28864( "inv_tco_smokescrnth" );
    _ID42407::_ID28864( "inv_six_switchthermal" );
}

_ID46057()
{
    var_0 = getent( "wells_in_nates_prep", "targetname" );
    level._ID51681 setgoalpos( var_0.origin );
    var_1 = getent( "raptor_in_nates_prep", "targetname" );
    level._ID52761 _ID44597::_ID44201( level._ID28454, var_1 );
}

_ID51601()
{
    while ( getaiarray( "axis" ).size > 4 )
        wait 1;

    var_0 = getentarray( "wounded_carry_attackers_gas", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );

    while ( getaiarray( "axis" ).size > 4 )
        wait 1;

    var_1 = getentarray( "wounded_carry_attackers_bus", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );

    while ( getaiarray( "axis" ).size > 4 )
        wait 1;

    var_2 = getentarray( "wounded_carry_attackers_TC", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
}

_ID52013()
{
    level._ID52761 endon( "death" );
    level._ID51681 endon( "death" );
    var_0 = getnode( "wells_cover_path", "script_noteworthy" );
    level._ID51681 setgoalnode( var_0 );
    level._ID51681 waittill( "goal" );
    var_1 = var_0;

    for (;;)
    {
        while ( distance( level._ID51681.origin, level._ID52761.origin ) > 300 )
            wait 0.1;

        if ( !isdefined( var_1.target ) )
            break;

        var_2 = getnode( var_1.target, "targetname" );
        level._ID51681 setgoalnode( var_2 );
        var_1 = var_2;
        level._ID51681 waittill( "goal" );
    }
}

_ID52562()
{
    level endon( "president_in_BT_meat_locker" );
    level._ID52761 endon( "death" );
    wait 6;
    level._ID52761 _ID42407::_ID10805( "inv_six_teamthisway" );
    wait 5;
    level._ID52761 _ID42407::_ID10805( "inv_six_keepoffme" );
    wait 1;
    level._ID48510 _ID42407::_ID10805( "inv_tco_hesdown" );
    wait 5;
    level._ID52761 _ID42407::_ID10805( "inv_six_onme" );
    level._ID52761 _ID42407::_ID10805( "inv_six_gogogo" );
    wait 4;
}

_ID50086()
{
    _ID42237::_ID14413( "bmp_north_left_dead" );
    _ID42237::_ID14413( "bmp_north_mid_dead" );
    var_0 = getent( "diner_backdoor_fight_area", "targetname" );
    var_0 _ID42407::_ID41162();

    if ( _ID42237::_ID14385( "leaving_diner" ) )
        return;

    level endon( "leaving_diner" );

    for (;;)
    {
        wait 2;
        _ID42407::_ID28864( "inv_six_regroup" );
        wait 15;
        _ID42407::_ID28864( "inv_six_regroupinrest" );
        wait 15;
    }
}

_ID52164( var_0 )
{
    if ( isdefined( level._ID51681 ) )
        return;

    var_1 = getent( "wells", "script_noteworthy" );
    level._ID51681 = var_1 _ID42407::_ID35014();

    if ( isdefined( var_0 ) )
    {
        wait 0.5;
        level._ID51681 _ID42407::_ID37404( var_0 );
        level._ID51681 setgoalpos( var_0.origin );
    }
}

_ID35139()
{
    if ( isdefined( level._ID28454 ) )
        return;

    var_0 = getent( "president", "script_noteworthy" );
    level._ID28454 = var_0 _ID42407::_ID35014();
}

_ID44220()
{
    self._ID18169 = 1;
    level._ID28454 = self;
    thread _ID42407::_ID22746();
    var_0 = getent( "president_in_nates_meat_locker", "targetname" );
    thread _ID44597::_ID52372( var_0 );
    _ID42237::_ID14413( "move_president_to_prep" );
    var_0 notify( "stop_wounded_idle" );
    var_0 = getent( "president_in_nates_prep", "targetname" );
    _ID44597::_ID52372( var_0 );
}

_ID44535()
{
    _ID42237::_ID14413( "house_destroyer_unloading" );
    _ID42407::_ID4422( "unloading" );
    level._ID52761 _ID42407::_ID10805( "inv_six_grabrpg" );
}

_ID50681()
{
    _ID42407::_ID28864( "inv_tco_incomingnorth" );
    _ID42407::_ID28864( "inv_tco_contactnorth" );
}

_ID52460()
{
    _ID42407::_ID28864( "inv_tco_incomingsouth" );
    _ID42407::_ID28864( "inv_tco_contactsouth" );
}

_ID52958()
{
    wait 12;
    _ID42407::_ID28864( "inv_six_2dozen" );
}

_ID47944()
{
    maps\invasion_aud::_ID51157();
    maps\invasion_aud::_ID47461( "inv_gm1_eastof95" );
    maps\invasion_aud::_ID47461( "inv_gm2_airsupport" );
    maps\invasion_aud::_ID47461( "inv_gm3_cutoff" );
    maps\invasion_aud::_ID47461( "inv_gm4_brokenarrow" );
    maps\invasion_aud::_ID47461( "inv_gm1_495and50" );
}

_ID50130()
{
    level endon( "player_on_roof" );
    level endon( "crash_objective" );
    _ID42237::_ID14413( "player_shooting_nates" );
    level._ID52761 thread _ID42407::_ID10805( "inv_six_purplebuilding" );
}

_ID48976()
{
    _ID42407::_ID28864( "inv_six_onme" );
    _ID42407::_ID28864( "inv_six_gogogo" );
}

_ID48899()
{
    var_0 = 1;
    level endon( "crash_objective" );
    _ID42237::_ID14413( "raptor_at_crash_site" );

    for (;;)
    {
        wait 10;

        if ( var_0 )
        {
            _ID42407::_ID28864( "inv_six_crashsite" );
            var_0 = 0;
            continue;
        }

        _ID42407::_ID28864( "inv_six_northofnates" );
        var_0 = 1;
    }
}

_ID54239()
{
    wait 1;
    var_0 = getaiarray( "allies" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] thread _ID52969( "bmp_out_of_sight" );

    wait 5;
    _ID42237::_ID14402( "bmp_out_of_sight" );
}

_ID52969( var_0 )
{
    self endon( "death" );
    wait(randomfloatrange( 0, 0.5 ));
    self allowedstances( "prone" );
    var_1 = self.goalpos;
    _ID42259::_ID3021( self, "gravity", "pronehide_dive" );
    _ID42237::_ID14413( var_0 );
    wait(randomfloatrange( 0, 0.5 ));
    self allowedstances( "stand", "prone", "crouch" );
}

_ID49896()
{
    var_0 = getvehiclenode( "friendlies_move_to_alley", "script_noteworthy" );
    var_0 waittill( "trigger" );
    _ID42237::_ID14402( "btr_backed_away" );
    level._ID44615 notify( "backed_away" );
    _ID42407::_ID1805( "friendlies_hide_in_alley" );
}

_ID49774()
{
    while ( !_ID42237::_ID14385( "bmps_from_north_dead" ) )
    {
        level waittill( "player_fired_remote_missile" );
        var_0 = level._ID47818;
        level waittill( "remote_missile_exploded" );
        wait 1;

        if ( !( level._ID47818 > var_0 ) )
        {
            level._ID47334 = gettime();
            level.player thread _ID42407::_ID18684( "hint_steer_drone" );
        }
    }
}

_ID52275()
{
    level endon( "leaving_diner" );
    var_0 = getent( "diner_backdoor_fight_area", "targetname" );
    var_0 _ID42407::_ID41162();
    wait 2;
}

_ID48345()
{
    level endon( "bmps_from_north_dead" );
    _ID52275();

    if ( _ID42237::_ID14385( "bmps_from_north_dead" ) )
        return;

    _ID42407::_ID28864( "inv_six_neutralizearmor" );
    level.player thread _ID42407::_ID11085( level.player _ID48260( "hint_predator_drone_vs_bmps" ) );
    thread _ID49774();
    wait 25;

    for (;;)
    {
        if ( _ID42237::_ID14385( "bmp_north_left_dead" ) || _ID42237::_ID14385( "bmp_north_mid_dead" ) )
        {
            var_0 = randomint( 3 );

            if ( var_0 == 0 )
            {
                _ID53440( "inv_six_stillonebmp" );
                level.player thread _ID42407::_ID11085( level.player _ID48260( "hint_predator_drone_vs_bmps" ) );
            }
            else if ( var_0 == 1 )
            {
                _ID53440( "inv_six_wastethatbmpnow" );
                level.player thread _ID42407::_ID11085( level.player _ID48260( "hint_predator_drone_vs_bmps" ) );
            }
            else
            {
                _ID53440( "inv_six_neutralizearmor" );
                level.player thread _ID42407::_ID11085( level.player _ID48260( "hint_predator_drone_vs_bmps" ) );
            }
        }
        else if ( _ID42237::_ID8201() )
        {
            _ID53440( "inv_six_wastebmpsnow" );
            level.player thread _ID42407::_ID11085( level.player _ID48260( "hint_predator_drone_vs_bmps" ) );
        }
        else
        {
            _ID53440( "inv_six_destroyapcs" );
            level.player thread _ID42407::_ID11085( level.player _ID48260( "hint_predator_drone_vs_bmps" ) );
        }

        wait 25;
    }
}

_ID53440( var_0 )
{
    if ( _ID42237::_ID14385( "nates_bomb_incoming" ) && !_ID42237::_ID14385( "nates_bombed" ) )
        return;

    _ID42407::_ID28864( var_0 );
}

_ID54533()
{
    level endon( "crash_objective" );
    var_0 = getvehiclenode( "dont_engage_dialog", "script_noteworthy" );
    var_0 waittill( "trigger",  var_1  );
    var_1 _ID42407::_ID41136( 0.4, 0.99 );
    level._ID52761 thread _ID42407::_ID10805( "inv_six_dontengageapc" );
}

_ID47307()
{
    _ID42407::_ID28864( "inv_six_bmpsfromnorth" );
    _ID42407::_ID28864( "inv_tco_rogerthat" );
}

_ID51931()
{
    if ( _ID42237::_ID14385( "burger_town_lower_cleared" ) )
        return;

    level endon( "burger_town_lower_cleared" );
    wait 60;

    for (;;)
    {
        _ID42237::_ID14426( "player_in_burgertown" );
        _ID42407::_ID28864( "inv_six_hostilesinbt" );
        wait 20;
        _ID42237::_ID14426( "player_in_burgertown" );
        _ID42407::_ID28864( "inv_six_needtomove" );
        wait 20;
        _ID42237::_ID14426( "player_in_burgertown" );
        _ID42407::_ID28864( "inv_six_whatsholdup" );
        wait 20;
    }
}

_ID50584()
{
    var_0 = "friendly_redshirt_rpg_BT_spawners";
    var_1 = getentarray( var_0, "targetname" );
    var_2 = 5;

    while ( var_2 > 0 )
    {
        var_3 = _ID42237::_ID16276( level.player.origin, var_1 );
        var_3.count = 1;
        var_4 = var_3 _ID42407::_ID35014();
        var_2--;

        if ( isalive( var_4 ) )
        {
            var_4 waittill( "death" );
            continue;
        }

        wait 1;
    }
}

_ID51214()
{
    self._ID51540 = 1;
    thread _ID46277();
    self._ID19381 = 1;
    thread _ID42407::_ID22746();
    _ID42407::_ID41104( level.player, 600 );
    self._ID19381 = undefined;
    thread _ID42407::_ID36519();
    self endon( "death" );

    while ( !isalive( level._ID47105 ) )
        wait 1;

    self.combatmode = "no_cover";
    self setentitytarget( level._ID47105 );
    wait 1;
    self.combatmode = "no_cover";

    while ( isalive( level._ID47105 ) )
        wait 1;

    self clearentitytarget();
}

_ID43512( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 3;

    if ( _ID42237::_ID14385( "president_in_BT_meat_locker" ) )
        var_1 = "redshirt_spawn_group_BT";
    else
        var_1 = "redshirt_spawn_group";

    var_2 = _ID42237::_ID16640( var_1, "targetname" );
    var_3 = _ID42237::_ID16276( level.player.origin, var_2 );
    var_4 = getentarray( var_3.target, "targetname" );
    var_5 = [];

    foreach ( var_7 in var_4 )
    {
        if ( var_5.size < var_0 )
        {
            var_7.count = 1;
            var_5[var_5.size] = var_7 _ID42407::_ID35014();
        }
    }

    return var_5;
}

_ID47367( var_0 )
{
    var_1 = [];

    foreach ( var_3 in level._ID50569 )
    {
        if ( isalive( var_3 ) )
            var_1[var_1.size] = var_3;
    }

    var_5 = var_0 - var_1.size;
    var_6 = [];

    if ( var_5 > 0 )
        var_6 = _ID43512( var_5 );

    var_7 = _ID42407::_ID3317( var_1, var_6 );
    return var_7;
}

_ID53430()
{
    _ID42237::_ID14413( "leaving_diner" );
    var_0 = getnode( "taco_in_BT", "script_noteworthy" );
    var_1 = var_0.origin;
    var_2 = getent( "BT_goal_volume", "targetname" );
    level._ID48510 thread _ID43828( "player_in_burgertown", var_1, var_2 );
    var_3 = 3;
    level._ID50569 = _ID47367( var_3 );

    foreach ( var_5 in level._ID50569 )
        var_5 thread _ID43828( "player_in_burgertown", var_1, var_2 );
}

_ID53618()
{
    _ID42237::_ID14426( "player_on_roof" );
    wait 2;
    _ID42237::_ID14426( "player_inside_nates" );
    var_0 = getent( "diner_goal_volume", "targetname" );
    var_1 = getent( "predator_drone_control", "targetname" ).origin;
    level._ID48510 thread _ID43828( "player_in_diner", var_1, var_0 );
    level._ID50569 = _ID43512( 3 );

    foreach ( var_3 in level._ID50569 )
        var_3 thread _ID43828( "player_in_diner", var_1, var_0 );
}

_ID47534( var_0, var_1 )
{
    self endon( "stop_barney" );
    self endon( "death" );
    self cleargoalvolume();
    self.goalheight = 80;
    self.goalradius = 100;
    self.fixednode = 0;
    smart_barney_goal_offset( 1 );

    while ( !_ID42237::_ID14385( "president_in_BT_meat_locker" ) )
    {
        var_2 = level._ID52761.origin;
        smart_barney_goal( var_2, var_0 );

        if ( !isdefined( self.favoriteenemy ) )
            self.favoriteenemy = _ID42407::_ID15601( self.origin, "axis" );

        wait 0.5;
    }

    self setgoalpos( var_0 );
    self setgoalvolume( var_1 );
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
    if ( distancesquared( self.origin, self.goalpos ) <= level._ID47460 )
        return 0;

    if ( _ID42237::_ID41802( level.player.origin, level.player getplayerangles(), self.origin, level._ID8760["60"] ) )
        return 0;

    return 1;
}

_ID52206()
{
    level._ID48510.goalradius = 128;
    level._ID48510.goalheight = 64;
    level._ID48510 setgoalnode( getnode( "taco_on_BT_roof", "script_noteworthy" ) );
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    level._ID48510.goalradius = 1024;
}

_ID50099()
{
    var_0 = getent( "predator_drone_control", "targetname" );
    var_0 show();
    var_0 _ID42407::_ID16953();
    var_0 setcursorhint( "HINT_NOICON" );
    var_0 thread _ID42237::_ID44574( level.player, &"INVASION_DRONE_PICKUP", &"INVASION_DRONE_PICKUP_PC", "trigger" );
    var_0 makeusable();
    var_0 waittill( "trigger",  var_1  );
    var_0 playsound( "scn_invasion_controlrig_pickup" );
    thread _ID47707();
    var_0 _ID42407::_ID36591();
}

_ID47707()
{
    _ID42237::_ID14402( "player_has_predator_drones" );
    thread _ID53100();
    level.player.remotemissile_lowerbound_limit = ( -16640, -12320, 1120 );
    level.player.remotemissile_upperbound_limit = ( 17168, 3896, 14920 );
    level.player _ID50736::_ID44738( "remote_missile_detonator" );
    var_0 = getent( "predator_drone_control", "targetname" );
    var_0 hide();
    var_0 makeunusable();
}

_ID45388()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "smoke_screen_starting" );
    playfx( _ID42237::_ID16299( "smokescreen" ), self.origin );
    thread _ID42237::_ID27077( "h1_wpn_smoke_pop" );
}

_ID49271()
{
    _ID42237::_ID14413( "smoke_screen_starting" );
    wait 7;
    _ID42407::_ID28864( "inv_tco_usingsmoke" );
    wait 1;
    _ID42407::_ID28864( "inv_six_thermaloptics" );
}

_ID45982()
{
    var_0 = 1;
    _ID42237::_ID14413( "player_in_diner" );
    _ID42237::_ID14413( "back_door_attack_start" );
    wait 4;
    var_1 = getent( "diner_backdoor_fight_area", "targetname" );
    var_1 _ID42407::_ID41162();
    wait 4;

    while ( !_ID42237::_ID14385( "player_has_predator_drones" ) )
    {
        if ( var_0 )
        {
            level._ID48510 _ID42407::_ID10805( "inv_tco_controlrig" );
            var_0 = 0;
        }
        else
        {
            level._ID48510 _ID42407::_ID10805( "inv_tco_pickupcontrolrig" );
            var_0 = 1;
        }

        wait 15;
    }
}

_ID43944()
{
    if ( _ID42237::_ID14385( "taco_goes_to_roof" ) )
        return;

    level endon( "taco_goes_to_roof" );
    _ID42237::_ID14402( "obj_regroup_nates_bombed" );
    wait 3;
    _ID42407::_ID28864( "inv_tco_stillthere" );
    wait 1;
    _ID42407::_ID28864( "inv_six_newplan" );
    _ID42407::_ID28864( "inv_six_secureburgertown" );
    _ID42237::_ID14402( "time_to_clear_burgertown" );
    _ID42407::_ID28864( "inv_six_listenup" );
    _ID42407::_ID28864( "inv_six_anotherpass" );
    _ID42237::_ID14402( "nates_bombed" );
}

_ID44487()
{
    wait 4.5;

    if ( _ID42237::_ID14385( "player_on_roof" ) )
        _ID42407::_ID28864( "inv_wrm_whatwasthat" );

    wait 1;

    while ( _ID42237::_ID14385( "player_on_roof" ) )
    {
        var_0 = randomint( 3 );

        if ( var_0 == 0 )
            _ID42407::_ID28864( "inv_six_offtheroof" );

        if ( var_0 == 1 )
            _ID42407::_ID28864( "inv_six_getoffroof2" );

        if ( var_0 == 2 )
            _ID42407::_ID28864( "inv_six_getoffroofnow" );

        wait(randomfloatrange( 1, 2 ));
    }
}

_ID44268()
{
    thread _ID52877();
    level endon( "player_on_roof" );
    level.player endon( "death" );
    var_0 = getentarray( "hellfire_attack_target", "targetname" );
    var_1 = _ID42407::_ID15625( var_0 );
    var_2 = _ID44050( var_1.origin );
    wait(randomfloatrange( 3, 5 ));
    var_3 = _ID42237::_ID3321( var_0, var_1 );
    var_4 = _ID42407::_ID15625( var_3 );
    var_2 = _ID44050( var_4.origin );
    wait(randomfloatrange( 3, 5 ));
    var_3 = _ID42237::_ID3321( var_0, var_4 );
    var_4 = var_3[randomint( var_3.size )];
    var_2 = _ID44050( var_4.origin );
    wait(randomfloatrange( 3, 5 ));
    var_3 = _ID42237::_ID3321( var_0, var_4 );
    var_4 = var_3[randomint( var_3.size )];
    var_2 = _ID44050( var_4.origin );
    wait(randomfloatrange( 3, 5 ));

    if ( _ID42237::_ID14385( "player_on_roof" ) )
    {
        var_5 = level.player.origin;
        var_2 = _ID44050( var_5 );

        while ( isdefined( var_2 ) )
            wait 0.05;

        if ( _ID42237::_ID14385( "player_on_roof" ) )
            level.player dodamage( level.player.health + 1000, var_5 );
    }
}

_ID44050( var_0 )
{
    var_1 = magicbullet( "remote_missile_not_player_invasion", level._ID49526.origin + ( 0, 0, -128 ), var_0 );
    var_1 thread _ID42407::_ID27081( "move_remotemissile_proj_flame" );
    return var_1;
}

_ID52877()
{
    wait 0.2;
    _ID42237::_ID14426( "player_on_roof" );
    var_0 = getentarray( "ceiling_dust", "targetname" );

    if ( _ID47633() )
    {
        level waittill( "hellfire" );
        var_1 = level._ID43847.origin;
        var_2 = magicbullet( "remote_missile_not_player_invasion", level._ID49526.origin + ( 0, 0, -128 ), var_1 );
        _ID42237::_ID3350( var_0, ::_ID54497 );

        while ( isdefined( var_2 ) )
            wait 0.05;

        level._ID43847 notify( "deleted" );
        level._ID43847 delete();
    }

    var_3 = getentarray( "hellfire_attack_target_roof", "targetname" );

    for (;;)
    {
        level waittill( "hellfire" );
        var_4 = var_3[randomint( var_3.size )];
        var_5 = var_4.origin;
        var_2 = _ID44050( var_5 );
        _ID42237::_ID3350( var_0, ::_ID54497 );
    }
}

_ID47633()
{
    if ( isdefined( level.player._ID26734 ) )
        return 0;

    if ( !isdefined( level._ID43847 ) )
        return 0;

    var_0 = getent( "roof_volume", "targetname" );

    if ( level._ID43847 istouching( var_0 ) )
        return 1;
    else
        return 0;
}

_ID54497()
{
    wait 3;
    playfx( _ID42237::_ID16299( "ceiling_dust" ), self.origin );
}

_ID46320()
{
    level notify( "hellfire" );
    wait 4;
    _ID42407::_ID28864( "inv_tco_uavop" );
    _ID42407::_ID28864( "inv_tco_uavop2" );
    _ID42407::_ID28864( "inv_six_killthatsob" );
    _ID42407::_ID28864( "inv_six_killthatsob2" );
    level notify( "hellfire" );
    _ID42237::_ID14402( "time_to_go_get_UAV_control" );

    if ( _ID42237::_ID14385( "player_inside_nates" ) )
        _ID42407::_ID4422( "go_to_diner2" );

    wait 3;
    level notify( "hellfire" );
    wait 4;
}

_ID44817()
{
    var_0 = _ID42411::_ID35196( "gas_station_truck" );
    var_0 _meth_85c1( 0.05 );
    var_0 thread maps\invasion_aud::_ID51834();
    wait 4;
    level._ID52761 _ID42407::_ID10805( "inv_six_truck12" );
}

_ID53475()
{
    wait 2;

    if ( isalive( level._ID44615 ) )
    {
        level notify( "dialog_bmp_hasnt_spotted_us" );
        level._ID52761 _ID42407::_ID10805( "inv_six_hangright" );
    }

    if ( isalive( level._ID44615 ) )
        level._ID52761 _ID42407::_ID10805( "inv_six_staybehind" );
}

_ID43960()
{
    _ID42237::_ID14413( "take_point" );
    var_0 = getent( "tangled_parachute_guy", "script_noteworthy" );
    var_1 = var_0 _ID42407::_ID35014();
}

_ID49839()
{
    _ID42237::_ID14413( "wells_intro_done" );
    level endon( "player_on_roof" );
    wait 5;

    while ( !_ID42237::_ID14385( "player_on_roof" ) )
    {
        if ( _ID42237::_ID14385( "truck_guys_retreat" ) )
            return;

        if ( _ID42237::_ID8201() )
            _ID42407::_ID28864( "inv_six_ladderinkitchen" );
        else
            _ID42407::_ID28864( "inv_six_gettoroof" );

        wait 15;
    }
}

_ID52312()
{
    var_0 = getnode( "meat_locker_taco", "script_noteworthy" );
    level._ID48510 _ID42407::_ID10871();
    level._ID48510 setgoalnode( var_0 );
    level._ID48510.goalradius = 16;
}

_ID43039()
{
    var_0 = getnode( "wells_kitchen", "targetname" );

    if ( isalive( level._ID51681 ) )
    {
        level._ID51681 _ID42407::_ID10871();
        level._ID51681 setgoalnode( var_0 );
        level._ID51681.goalradius = 64;
        level._ID51681.fixednode = 1;
    }

    var_1 = getnode( "raptor_kitchen", "targetname" );
    level._ID52761 _ID42407::_ID10871();
    level._ID52761 setgoalnode( var_1 );
    level._ID52761.goalradius = 64;
    level._ID52761.fixednode = 1;

    if ( isalive( level._ID48076 ) )
    {
        var_2 = getnode( "worm_inside", "script_noteworthy" );
        level._ID48076 _ID42407::_ID10871();
        level._ID48076 setgoalnode( var_2 );
        level._ID48076.goalradius = 190;
        level._ID48076.fixednode = 0;
    }
}

_ID49501()
{
    var_0 = level.player getweaponammostock( "smoke_grenade_american" );

    if ( var_0 < 1 )
        return 0;
    else
        return 1;
}

_ID49766()
{
    if ( _ID42237::_ID14385( "threw_smoke" ) )
        return 1;
    else
        return 0;
}

_ID44745()
{
    level endon( "btr_smoke_starting" );
    level endon( "entered_alley" );
    var_0 = [];
    var_0[var_0.size] = "inv_six_rpgsupplydrop";
    var_0[var_0.size] = "inv_six_pickup";
    var_0[var_0.size] = "inv_six_getmore";
    var_1 = 0;
    var_2 = [];
    var_2[var_2.size] = "inv_six_throwsemtex";
    var_2[var_2.size] = "inv_six_getsemtex";
    var_2[var_2.size] = "inv_six_destroy";
    var_3 = 0;
    _ID42237::_ID14413( "house_destroyer_unloading" );
    wait 4;
    level._ID44615 endon( "backed_away" );

    for (;;)
    {
        var_4 = level.player getweaponammostock( "smoke_grenade_american" );

        if ( var_4 )
        {
            if ( !_ID42237::_ID14385( "threw_smoke" ) )
            {
                thread _ID46342();
                level._ID52761 _ID42407::_ID10805( var_2[var_3] );
                var_3++;

                if ( var_3 >= var_2.size )
                    var_3 = 0;

                level.player thread _ID42407::_ID11090( "hint_throw_smoke", 5 );
            }
        }
        else
        {
            level.player thread _ID42407::_ID11090( "hint_get_smoke", 5 );
            level._ID52761 _ID42407::_ID10805( var_0[var_1] );
            var_1++;

            if ( var_1 >= var_0.size )
                var_1 = 0;
        }

        wait 10;
    }
}

_ID46342()
{
    _ID42237::_ID14388( "threw_smoke" );

    for (;;)
    {
        level.player waittill( "grenade_fire",  var_0, var_1  );

        if ( var_1 == "smoke_grenade_american" )
            break;
    }

    _ID42237::_ID14402( "threw_smoke" );
    wait 5;
    _ID42237::_ID14388( "threw_smoke" );
}

_ID51994()
{
    level endon( "btr_smoke_starting" );
    thread _ID44028();
    var_0 = getvehiclenode( "house_destroyer_backwards_path", "targetname" ).origin;

    for (;;)
    {
        level.player waittill( "grenade_fire",  var_1, var_2  );

        if ( var_2 == "smoke_grenade_american" )
        {
            var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
            var_1 thread _ID50337( var_3 );
            var_1 thread _ID43712( var_3, var_0 );
        }
    }
}

_ID50337( var_0 )
{
    level endon( "btr_smoked" );
    self endon( "death" );

    for (;;)
    {
        var_0.origin = self.origin;
        wait 0.05;
    }
}

_ID43712( var_0, var_1 )
{
    level endon( "btr_smoke_starting" );
    self waittill( "death" );

    if ( distance( var_0.origin, var_1 ) < 400 )
        thread _ID50187();
    else
        level notify( "btr_smoke_too_far" );
}

_ID44028()
{
    if ( _ID42237::_ID14385( "house_destroyer_moving_back" ) )
        return;

    level endon( "house_destroyer_moving_back" );
    level waittill( "btr_smoke_too_far" );

    if ( !_ID42237::_ID14385( "btr_smoke_starting" ) )
        _ID42407::_ID11090( "hint_smoke_too_far", 5 );
}

_ID46289()
{
    if ( _ID42237::_ID14385( "btr_smoke_starting" ) )
        return 1;
    else
        return 0;
}

_ID50187()
{
    _ID42237::_ID14402( "btr_smoke_starting" );
    wait 10;
    _ID42407::_ID4422( "btr_smoked" );
    _ID42237::_ID14402( "btr_smoked" );
    _ID42407::_ID1805( "friendlies_hide_in_alley" );
    level._ID52761 _ID42407::_ID10805( "inv_six_coverofsmoke" );
    wait 5;

    if ( _ID42237::_ID14385( "entered_alley" ) )
        return;

    level._ID52761 _ID42407::_ID10805( "inv_six_cometoalley" );
}

_ID47653()
{
    var_0 = getent( "diner_window_traverses", "targetname" );

    if ( !isdefined( var_0 ) )
        return;

    var_0 disconnectpaths();
    _ID42237::_ID14413( "crash_objective" );
    var_0 movez( -1000, 0.1, 0, 0 );
    var_0 connectpaths();
}

_ID53305()
{
    level._ID52202++;
    level._ID44194++;
    self waittill( "death" );
    level._ID53305++;
    level._ID44194--;
    level notify( "truck_guy_died" );
}

_ID43330()
{
    self endon( "death" );
    _ID42237::_ID14413( "truck_guys_retreat" );

    if ( isdefined( self.target ) )
        self setgoalpos( getent( self.target, "targetname" ).origin );
    else
        self setgoalpos( getent( "truck_guy_retreat_goal", "targetname" ).origin );

    self.goalradius = 32;
    self waittill( "goal" );

    while ( self cansee( level.player ) )
        wait 1;

    self kill();
}

_ID47794()
{
    self endon( "death" );
    _ID42237::_ID14413( "bank_guys_retreat" );
    self setgoalpos( getent( "north_trucks_retreat_point", "targetname" ).origin );
    self.ignoreme = 1;
    self.goalradius = 32;
    self waittill( "goal" );

    while ( self cansee( level.player ) )
        wait 1;

    self kill();
}

_ID54678()
{
    level endon( "sentry_in_position" );
    self waittill( "death" );
    setdvar( "ui_deadquote", &"INVASION_FAIL_SENTRY" );
    _ID42407::_ID23778();
}

_ID43774()
{
    var_0 = _ID42411::_ID35200( "first_fast_movers" );
    wait 7;
    _ID42237::_ID14413( "wells_intro_done" );
    var_0 = _ID42411::_ID35200( "first_fast_movers" );
}

_ID49133()
{
    var_0 = thread _ID42411::_ID35196( "crash_objective_bmp" );
    var_0 _ID42411::_ID16988();
    var_0 thread _ID50715();
    var_0 thread _ID42413::_ID9604();
    var_0 endon( "death" );
    var_1 = getent( "west_side", "targetname" );
    var_0 setturrettargetvec( var_1.origin );
    var_2 = getvehiclenode( "first_volley_at_nates", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_0 _ID50173();
    var_2 = getvehiclenode( "crash_obj_bmp_in_pos", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_0 vehicle_setspeed( 0, 15, 3 );
    var_0 _ID46036();
    var_0 resumespeed( 3 );
    var_0 _ID42411::_ID16987();
    var_0 thread _ID43304();
    var_0 waittill( "reached_end_node" );
    var_0 thread _ID50761( 0, 0 );
    _ID42237::_ID14413( "crash_objective" );
    var_0 delete();
}

_ID45679()
{
    level._ID54042 = _ID42411::_ID35196( "nate_attacker_mid" );
    level._ID50295 = _ID42411::_ID35196( "nate_attacker_left" );
    _ID42237::_ID3350( getvehiclenodearray( "new_target", "script_noteworthy" ), ::_ID44148 );
    var_0 = [];
    var_0[var_0.size] = level._ID54042;
    var_0[var_0.size] = level._ID50295;
    level.btr_kill_no_predator = 0;
    _ID42237::_ID3350( var_0, ::btr_silent_skies_monitor_damage );
    thread btr_silent_skies_manager();
    thread _ID53280();
    thread _ID45471();
    thread _ID53140();

    foreach ( var_2 in var_0 )
    {
        var_2 thread _ID49899();
        var_2 thread _ID48289::_ID53152();
        var_2 thread _ID52344();
        var_2 thread _ID42407::_ID13024( "spotted_player" );
        var_2 thread _ID50715();
        var_2 thread _ID42413::_ID9604();
    }

    return var_0;
}

_ID53280()
{
    for (;;)
    {
        level waittill( "starting_predator_drone_control" );
        var_0 = [];

        if ( isalive( level._ID54042 ) )
            var_0[var_0.size] = level._ID54042;

        if ( isalive( level._ID50295 ) )
            var_0[var_0.size] = level._ID50295;

        if ( var_0.size == 0 )
        {
            level._ID52466 = undefined;
            return;
        }

        if ( var_0.size > 1 )
        {
            level._ID52466 = _ID42407::_ID15625( var_0 );
            continue;
        }

        level._ID52466 = var_0[0];
    }
}

_ID52344()
{
    self waittill( "death" );

    if ( _ID42407::_ID13019( "spotted_player" ) )
        _ID42237::_ID14388( "bmp_has_spotted_player" );

    level notify( "bmp_died" );
    level._ID47818++;
}

_ID45471()
{
    level endon( "player_has_predator_drones" );
    var_0 = randomint( 3 );

    for (;;)
    {
        _ID42237::_ID14413( "bmp_has_spotted_player" );

        switch ( var_0 )
        {
            case 0:
                _ID53881( "inv_six_bmpspottedyou" );
                break;
            case 1:
                _ID53881( "inv_six_bmphasavisual" );
                break;
            case 2:
                _ID53881( "inv_six_behindsolid" );
                break;
        }

        var_0++;

        if ( var_0 > 2 )
            var_0 = 0;

        wait 10;
    }
}

_ID53881( var_0 )
{
    if ( _ID42237::_ID14385( "player_in_diner" ) )
        return;

    if ( _ID42237::_ID14385( "player_in_burgertown" ) )
        return;

    if ( _ID42237::_ID14385( "player_on_burgertown_roof" ) )
        return;

    _ID42407::_ID28864( var_0 );
}

_ID53840()
{
    level endon( "player_has_predator_drones" );
    level.player endon( "death" );
    var_0 = 10;

    for (;;)
    {
        _ID42237::_ID14413( "bmp_has_spotted_player" );
        _ID51135( "inv_six_bmplostyou" );
        wait(var_0);
        _ID42237::_ID14413( "bmp_has_spotted_player" );
        _ID51135( "inv_six_bmplostyoumove" );
        wait(var_0);
        _ID42237::_ID14413( "bmp_has_spotted_player" );
        _ID51135( "inv_six_bmplostyougo" );
        wait(var_0);
    }
}

_ID51135( var_0 )
{
    level endon( "bmp_died" );
    _ID42237::_ID14426( "bmp_has_spotted_player" );
    wait 4;
    _ID42237::_ID14426( "bmp_has_spotted_player" );
    _ID42407::_ID28864( var_0 );
}

_ID49899()
{
    self endon( "death" );
    self._ID48897 = 0;

    for (;;)
    {
        wait 0.05;

        if ( _ID42237::_ID14385( "player_inside_nates" ) )
            continue;

        if ( _ID42237::_ID14385( "player_in_diner" ) )
            continue;

        if ( _ID42237::_ID14385( "bmp_has_spotted_player" ) )
            continue;

        if ( distance( self.origin, level.player.origin ) > 2400 )
            continue;

        if ( distance( self.origin, level.player.origin ) < level._ID45903 )
            continue;

        var_0 = self gettagangles( "tag_flash" );

        if ( !_ID42237::_ID41802( self.origin, var_0, level.player.origin, level._ID8760["25"] ) )
            continue;

        if ( !_ID6739( level.player ) )
            continue;

        _ID42237::_ID14402( "bmp_has_spotted_player" );
        self notify( "new_target" );
        self._ID48897 = 1;
        _ID42407::_ID13025( "spotted_player" );
        _ID23693( level.player );
        wait(randomfloatrange( 0.8, 2.4 ));
        _ID23693( level.player );
        wait(randomfloatrange( 0.8, 2.4 ));

        while ( _ID6739( level.player ) )
        {
            _ID50256( level.player );
            wait(randomfloatrange( 2, 3 ));
        }

        self clearturrettargetent();
        self._ID48897 = 0;
        _ID42407::_ID13021( "spotted_player" );
        _ID42237::_ID14388( "bmp_has_spotted_player" );
    }
}

_ID44148()
{
    level endon( "bmps_from_north_dead" );
    var_0 = getentarray( self._ID31273, "script_linkname" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !isalive( var_1 ) )
            return;

        if ( var_1._ID48897 )
            continue;

        var_1 notify( "new_target" );
        var_1 setturrettargetent( var_0[0] );
        thread _ID43818( var_1 );
    }
}

_ID43818( var_0 )
{
    var_0 endon( "new_target" );
    var_0 endon( "death" );
    var_0 waittill( "turret_on_target" );

    for (;;)
    {
        var_1 = randomintrange( 4, 6 );

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0 fireweapon();
            wait 0.2;
        }

        wait(randomfloatrange( 1, 2 ));
    }
}

_ID44509()
{
    self endon( "death" );
    var_0 = getent( "nates_restaurant_goal", "targetname" );
    self cleargoalvolume();
    self.goalheight = 100;
    _ID42407::_ID12471( 5 );
    self setgoalpos( var_0.origin );
    self.goalradius = 4000;
    self._ID2219 = 1;
    _ID42237::_ID14413( "truck_guys_retreat" );
    self setgoalpos( getent( "truck_guy_retreat_goal", "targetname" ).origin );
    self.goalradius = 32;
    self waittill( "goal" );

    while ( self cansee( level.player ) )
        wait 1;

    self kill();
}

_ID43401()
{
    self waittill( "jumpedout" );
    self.keepgoalonunload = 1;
    level endon( "truck_guys_retreat" );
    self endon( "death" );
    var_0 = getent( "nates_restaurant_goal", "targetname" );
    self.goalheight = 100;
    _ID42407::_ID12471( 5 );

    if ( randomint( 3 ) > 0 )
    {
        self setgoalpos( var_0.origin );
        self.goalradius = var_0.radius;
        var_1 = randomintrange( 1, 22 );
        wait(var_1);
        self setgoalpos( self.origin );
        self.goalradius = 900;
        wait(randomfloatrange( 2, 4 ));
        self setgoalpos( var_0.origin );
        self.goalradius = var_0.radius;
    }
    else
    {
        self setgoalpos( var_0.origin );
        self.goalradius = 4000;
        thread truck_group_enemies_setup_stay_on_roof( randomfloatrange( 32, 38 ) );
    }
}

truck_group_enemies_setup_stay_on_roof( var_0 )
{
    self endon( "death" );
    self._ID31212 = 1;
    self.ignoresuppression = 1;
    wait(var_0);
    self._ID31212 = undefined;
    self.ignoresuppression = 0;

    if ( self.goalradius > level._ID10115 )
        self.goalradius = level._ID10115;
}

_ID48163()
{
    for (;;)
    {
        self waittill( "enemy" );

        if ( isplayernumber( self.enemy ) )
        {
            self.goalradius = 3000;
            break;
        }
    }
}

_ID54103()
{
    for (;;)
    {
        self waittill( "enemy" );

        if ( isplayernumber( self.enemy ) )
        {
            self.goalradius = 3000;
            break;
        }
    }
}

_ID43096()
{
    var_0 = getentarray( "closest_goal_radius", "targetname" );
    level._ID53226 = _ID42237::_ID16182( level.player.origin, var_0 );
    level._ID43948 = [];
    var_1 = getaiarray( "axis" );
    _ID42237::_ID3350( var_1, ::_ID46209 );
    var_2 = getentarray( "bank_enemies", "targetname" );
    var_3 = getentarray( "gas_station_enemies", "targetname" );
    var_4 = getentarray( "taco_enemies", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_ID46209 );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, ::_ID46209 );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_ID46209 );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_ID44421 );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, ::_ID44421 );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_ID44421 );
    thread _ID50465( var_0 );
}

_ID54425()
{
    if ( isdefined( self.damagemod ) && self.damagemod == "MOD_PROJECTILE_SPLASH" && isdefined( self.lastattacker ) && isdefined( self.lastattacker._ID49913 ) )
        self._ID34237 = 1;

    return 0;
}

_ID44421()
{
    self._ID9827 = ::_ID54425;
}

_ID50465( var_0 )
{
    for (;;)
    {
        var_1 = _ID42237::_ID16182( level.player.origin, var_0 );

        if ( level._ID53226 != var_1 )
        {
            level._ID53226 = var_1;
            _ID52050( var_1 );
        }

        wait 1;
    }
}

_ID46209()
{
    self.goalradius = 2048;
    self.goalheight = 512;
    level._ID43948[self._ID39468] = self;
    self.keepgoalonunload = 1;
    self setgoalpos( level._ID53226.origin );
    self.pathrandompercent = 200;
    _ID42407::_ID12471( 5 );
    self waittill( "death" );
    level._ID43948[self._ID39468] = undefined;
}

_ID52050( var_0 )
{
    waitframe;

    foreach ( var_2 in level._ID43948 )
        var_2 setgoalpos( var_0.origin );
}

_ID44242()
{
    self waittill( "death" );
    level._ID51660++;
}

_ID48090()
{
    self endon( "death" );
    self._ID2219 = 1;
    self.usechokepoints = 0;
    self waittill( "goal" );
    self.goalradius = 2000;
    self waittill( "goal" );
    self.goalradius = 2000;
}

_ID48431()
{
    self endon( "death" );
    self._ID2219 = 1;
    self.usechokepoints = 0;
    wait 12;
    self.goalradius = 100;
    self.favoriteenemy = level.player;
    self setgoalentity( level.player );
}

_ID49684()
{
    self endon( "death" );
    self.combatmode = "ambush";
    self.grenadeawareness = 0.9;
    _ID42237::_ID14413( "player_in_burgertown" );
    wait 8;
    self.combatmode = "cover";
    self setgoalentity( level.player );
    self.goalradius = 100;
}

_ID46610()
{
    self endon( "death" );
    thread _ID42407::_ID22746();
    _ID42237::_ID14413( "player_on_roof" );
    _ID42407::_ID36519();
}

_ID44389()
{
    level._ID51681 = self;
    self._ID3189 = "wells";
    thread _ID42407::_ID22746();
    level._ID51681 setgoalnode( getnode( "wells_intro_node", "targetname" ) );
    level._ID51681.goalradius = 16;
    _ID42237::_ID14413( "move_president_to_prep" );
    var_0 = getent( "wells_in_nates_prep", "targetname" );
    level._ID51681 setgoalpos( var_0.origin );
}

_ID46252()
{
    level._ID48076 = self;
    self._ID3189 = "worm";
}

_ID43184()
{
    level._ID48510 = self;
    self._ID3189 = "taco";
    thread _ID42407::_ID22746();
}

_ID50126()
{
    level._ID52761 = self;
    self._ID3189 = "raptor";
    thread _ID42407::_ID22746();
    _ID42237::_ID14413( "move_president_to_prep" );
    level._ID52761.goalradius = 64;
    var_0 = getent( "raptor_in_nates_prep", "targetname" );
    level._ID52761 setgoalpos( var_0.origin );
}

_ID52990( var_0 )
{
    if ( var_0 == "ambient_paradrop3" )
        return 1;

    if ( var_0 == "ambient_west_group3" )
        return 1;

    if ( var_0 == "ambient_west_group2" )
        return 1;

    return 0;
}

_ID45557()
{
    _ID42237::_ID14421( "leaving_gas_station", "crash_objective" );
    var_0 = [];
    var_0[var_0.size] = "ambient_paradrop1";
    var_0[var_0.size] = "ambient_paradrop2";
    var_0[var_0.size] = "ambient_paradrop3";
    var_0[var_0.size] = "ambient_west_group3";
    var_0[var_0.size] = "ambient_west_group2";
    var_0[var_0.size] = "ambient_south_group2";
    var_0[var_0.size] = "ambient_south_group3";
    var_0[var_0.size] = "ambient_east_group2";
    var_0[var_0.size] = "ambient_east_group3";
    var_0[var_0.size] = "ambient_north_group1";
    var_0[var_0.size] = "ambient_north_group2";
    var_0[var_0.size] = "ambient_north_group3";
    var_0[var_0.size] = "curved_mig_flight1";
    var_0[var_0.size] = "paradrop_escort";
    var_0 = _ID42237::_ID3320( var_0 );
    var_1 = 0;
    var_2 = [];
    var_2[var_2.size] = "ambient_north_group1";
    var_2[var_2.size] = "ambient_north_group2";
    var_2[var_2.size] = "ambient_north_group3";
    var_3 = [];
    var_3[var_3.size] = "ambient_paradrop2";
    var_3[var_3.size] = "ambient_south_group2";
    var_3[var_3.size] = "ambient_south_group3";
    var_4 = [];
    var_4[var_4.size] = "ambient_paradrop3";
    var_4[var_4.size] = "ambient_west_group3";
    var_4[var_4.size] = "ambient_west_group2";
    var_5 = [];
    var_5[var_5.size] = "ambient_paradrop1";
    var_5[var_5.size] = "ambient_east_group2";
    var_5[var_5.size] = "ambient_east_group3";

    for (;;)
    {
        var_6 = undefined;
        var_7 = undefined;
        var_8 = undefined;

        if ( isdefined( level._ID53339 ) )
        {
            if ( level._ID53339 == "east" )
                var_7 = var_5[randomint( var_5.size )];

            if ( level._ID53339 == "north" )
                var_7 = var_2[randomint( var_2.size )];

            if ( level._ID53339 == "south" )
                var_7 = var_3[randomint( var_3.size )];

            if ( level._ID53339 == "west" && !_ID42237::_ID14385( "player_is_near_houses" ) )
                var_7 = var_4[randomint( var_4.size )];

            if ( isdefined( var_7 ) )
                var_6 = getentarray( var_7, "targetname" );
        }

        if ( !isdefined( var_6 ) )
        {
            if ( var_1 >= var_0.size )
                var_1 = 0;

            var_9 = var_0[var_1];

            if ( _ID42237::_ID14385( "player_is_near_houses" ) && _ID52990( var_9 ) )
            {
                var_1++;
                continue;
            }

            var_6 = getentarray( var_0[var_1], "targetname" );
            var_8 = var_1;
            var_1++;
        }

        var_10 = 1;
        var_11 = 0;

        foreach ( var_13 in var_6 )
        {
            if ( var_13.classname == "script_vehicle_antonov" )
                var_11 = 1;

            if ( var_11 )
            {
                if ( var_10 )
                {
                    var_13 thread _ID43930( var_10 );
                    var_10 = 0;
                }
                else
                    var_13 thread _ID43930();

                continue;
            }

            var_13 thread _ID42411::_ID35194();
        }

        if ( !var_11 )
            var_0 = _ID42237::_ID3321( var_0, var_0[var_8] );

        wait 20;

        if ( getdvar( "invasion_minspec" ) == "1" )
            wait 80;
    }
}

_ID52532()
{
    var_0 = undefined;
    self waittill( "trigger" );
    var_1 = getentarray( self.target, "targetname" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_2 == 0 )
        {
            var_3 = 1;
            var_1[var_2] thread _ID43930( var_3 );
            continue;
        }

        var_1[var_2] thread _ID43930();
    }
}

animate_hanging_parachute()
{
    self._ID3189 = "chute";
    _ID42259::_ID32556();
    self setanim( _ID42407::_ID16120( "idle" ), 1 );
}

_ID45550()
{
    var_0 = _ID42407::_ID35028( "bmp_chute_paradrop" );
    var_1 = _ID42407::_ID35028( "paradrop_cargo_tank_chuteA" );
    var_2 = _ID42407::_ID35028( "paradrop_cargo_tank_chuteB" );
    var_3 = _ID42407::_ID35028( "paradrop_cargo_tank_chuteC" );
    var_4 = _ID42407::_ID35028( "bmp_paradrop" );
    var_4 linkto( self );
    var_0 linkto( self );
    var_1 linkto( self );
    var_2 linkto( self );
    var_3 linkto( self );
    thread _ID42259::_ID3111( var_0, "bmp_chute_paradrop" );
    thread _ID42259::_ID3111( var_1, "paradrop_cargo_tank_chuteA" );
    thread _ID42259::_ID3111( var_2, "paradrop_cargo_tank_chuteB" );
    thread _ID42259::_ID3111( var_3, "paradrop_cargo_tank_chuteC" );
    _ID42259::_ID3111( var_4, "bmp_paradrop" );
    var_0 delete();
    var_1 delete();
    var_2 delete();
    var_3 delete();
    var_4 delete();
}

_ID43930( var_0 )
{
    var_1 = thread _ID42411::_ID35194();

    if ( isdefined( var_0 ) )
        var_1 maps\invasion_aud::_ID47993();

    var_1._ID31507 = 1;
    var_1 _ID42407::_ID13024( "start_drop" );
    var_1 _ID42407::_ID13024( "stop_drop" );
    var_1 endon( "stop_drop" );
    var_2 = 25;
    var_1 _ID42407::_ID13027( "start_drop" );

    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "drop_bmp" )
    {
        var_1 thread _ID45550();
        wait 2;
    }

    for (;;)
    {
        var_3 = _ID42407::_ID35028( "distant_parachute_guy" );
        var_3 thread _ID48754( var_1, var_2 );
        var_4 = _ID42407::_ID35028( "distant_parachute_guy" );
        var_4 thread _ID49564( var_1, var_2 );
        wait(randomfloatrange( 0.4, 0.8 ));
    }
}

_ID48754( var_0, var_1 )
{
    self linkto( var_0 );

    if ( _ID42237::_ID8201() )
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_left1" );
    else
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_left2" );

    wait(var_1);

    if ( isdefined( self ) )
        self delete();
}

_ID49564( var_0, var_1 )
{
    self linkto( var_0 );

    if ( _ID42237::_ID8201() )
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_right1" );
    else
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_right2" );

    wait(var_1);

    if ( isdefined( self ) )
        self delete();
}

_ID51940( var_0 )
{
    level._ID53691 fireweapon();
    level notify( "latvee_destroyer_fired" );
}

_ID52817( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        self setturrettargetvec( var_0.origin );
        _ID44617( var_0.origin );
        var_1 = undefined;

        if ( isdefined( var_0.target ) )
            var_1 = getent( var_0.target, "targetname" );

        _ID42234::_ID13611( var_0._ID31401 );
        wait 0.15;

        if ( !isdefined( var_1 ) )
            break;

        var_0 = var_1;
    }
}

_ID50173()
{
    self endon( "death" );
    var_0 = getent( "north_side_low", "targetname" );
    self setturrettargetvec( var_0.origin );
    self waittill( "turret_on_target" );
    _ID52817( var_0 );
    var_0 = getent( "north_side_high", "targetname" );
    self setturrettargetvec( var_0.origin );
    self waittill( "turret_on_target" );
    _ID52817( var_0 );
}

_ID43304()
{
    self endon( "reached_end_node" );
    self endon( "death" );
    var_0 = getentarray( "hellfire_attack_target_roof", "targetname" );

    for (;;)
    {
        wait(randomfloatrange( 1, 3 ));
        var_1 = var_0[randomint( var_0.size )];
        self setturrettargetvec( var_1.origin );
        var_2 = randomintrange( 3, 6 );

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            self fireweapon();
            wait 0.2;
        }
    }
}

_ID45196()
{
    var_0 = getent( "nates_kitchen_ladder_clip", "targetname" );

    for (;;)
    {
        var_0 notsolid();
        _ID42237::_ID14413( "player_on_roof" );

        while ( level.player istouching( var_0 ) )
            wait 1;

        var_0 solid();
        _ID42237::_ID14426( "player_on_roof" );
    }
}

_ID53476()
{
    var_0 = getent( "bt_ktichen_ladder_clip", "targetname" );

    for (;;)
    {
        var_0 notsolid();
        _ID42237::_ID14413( "player_on_burgertown_roof" );

        while ( level.player istouching( var_0 ) )
            wait 1;

        var_0 solid();
        _ID42237::_ID14426( "player_on_burgertown_roof" );
    }
}

_ID46036()
{
    var_0 = getent( "west_side", "targetname" );
    self setturrettargetvec( var_0.origin );
    self waittill( "turret_on_target" );
    _ID52817( var_0 );
}

_ID43309( var_0, var_1, var_2, var_3 )
{
    var_4 = [];
    var_4["exploder"] = var_2;
    var_4["origin"] = var_1;
    var_4["blastImpact"] = var_3;
    var_0._ID37340[var_0._ID37340.size] = var_4;
}
#using_animtree("generic_human");

_ID45394()
{
    var_0 = level._ID51121._ID23512[0];
    var_1 = getent( "latvee_destroyer_init_target", "targetname" );
    var_2 = var_0 getturretowner();
    var_2.ignoreall = 0;
    var_0 setmode( "manual" );
    var_3 = getent( "latvee_ride_roof_landing", "targetname" );
    level._ID45394 = var_3 _ID42407::_ID35014();

    if ( isdefined( level._ID45870 ) )
        level._ID45394.ignoreme = 1;

    var_0 settargetentity( var_3, ( 0, -150, 15 ) );
    wait 6.5;
    var_0._ID11393 = 1;
    wait 2;
    var_0._ID11393 = 0;
    level._ID45394 waittill( "death" );

    if ( isdefined( level._ID45870 ) )
        return;

    var_0 thread animscripts\laatpv_turret\common::_ID32371( var_1, 1, 2, "stop_firing" );
    level.player.m_player_rig1 waittillmatch( "single anim",  "start_turret_anim"  );
    var_2._ID3189 = "generic";
    var_2 clearanim( %body, 1 );
    var_2 setanim( var_2 _ID42407::_ID16120( "turret_guy_panic" ), 1, 1, 1 );
    level waittill( "latvee_destroyer_fired" );
    var_0 notify( "stop_firing" );
    var_2 kill();
}

_ID46169( var_0 )
{
    playfx( _ID42237::_ID16299( "latvee_explosion" ), level._ID51121.origin );
}

_ID48974( var_0 )
{
    level._ID51121 _ID42411::_ID16987();
    level._ID51121 kill();
}

_ID51105()
{
    self endon( "death" );
    thread _ID50715();
    thread _ID42413::_ID9604();
    _ID42475::_ID34575( "intro_btr_showing_up" );
    level._ID51121.health = 30000;
    level._ID51831.health = 30000;
    self setturrettargetent( level._ID51121, ( 0, 0, 40 ) );
    wait 1.5;
    level notify( "latvee_blows_up" );
    wait 2.5;
    var_0 = getentarray( "turret_guy", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) )
            var_2 kill();
    }

    level._ID51121 playsound( "scn_invasion_npc_laatpv_explode_01" );

    for ( var_4 = 0; var_4 < 2; var_4++ )
    {
        if ( var_4 != 0 )
            wait 0.2;

        _ID46338( level._ID51121.origin );
        self fireweapon();
    }

    playfxontag( level._ID1426["jeep_car_glass_explode"], level._ID51831, "tag_hulagirl_attach" );
    _ID42407::_ID10226( 0.25, _ID42237::_ID27077, "scn_invasion_plr_veh_bullet_impact", level._ID51831.origin + ( 0, -90, 70 ) );
    self setturrettargetent( level._ID51831, ( 0, 0, 50 ) );
    wait 1;
    playfx( _ID42237::_ID16299( "latvee_explosion_player" ), level._ID51831.origin );
    wait 0.6;
    self setturrettargetent( level._ID51121, ( 0, 0, 40 ) );
    wait 1;

    for ( var_4 = 0; var_4 < 5; var_4++ )
    {
        self fireweapon();
        wait 0.2;
    }

    _ID53533();
}

latvee_destroyer_fire_notetrack( var_0 )
{
    level._ID53691 fireweapon();
}

latvee_player_explode_notetrack( var_0 )
{
    level.player disableinvulnerability();
    level.player enabledeathshield( 1 );
    level._ID51831 _ID42411::_ID16987();
    level._ID51831 kill();
}

_ID53533()
{
    self endon( "death" );
    thread latvee_destroyer_fires_at_pillars_and_player_trigger();
    var_0 = spawnstruct();
    var_0._ID37340 = [];
    var_1 = _ID42237::_ID16638( "pillar1", "targetname" ).origin;
    _ID43309( var_0, var_1, 9990 );
    var_1 = _ID42237::_ID16638( "pillar2", "targetname" ).origin;
    _ID43309( var_0, var_1, 9991 );
    var_1 = _ID42237::_ID16638( "pillar3", "targetname" ).origin;
    _ID43309( var_0, var_1, 9992 );
    self setturrettargetvec( var_0._ID37340[0]["origin"] );
    _ID42237::_ID14413( "latvee_destroyer_pillars" );
    latvee_destroyer_fires_at_targets( var_0 );
    _ID42407::_ID10226( 1, _ID42475::_ID34575, "stop_laatpv_ride_intro" );
    var_0._ID37340 = [];
    var_1 = _ID42237::_ID16638( "front1", "targetname" ).origin;
    _ID43309( var_0, var_1, 9993, 1 );
    var_1 = _ID42237::_ID16638( "front2", "targetname" ).origin;
    _ID43309( var_0, var_1, 9994, 1 );
    var_1 = _ID42237::_ID16638( "front3", "targetname" ).origin;
    _ID43309( var_0, var_1, 9995, 1 );
    _ID42407::_ID1985( _ID42407::_ID1687, 1 );
    _ID42407::_ID1886( "stop_shooting" );
    _ID42407::_ID1890( ::_ID50761, 0, 1 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "latvee_destroyer_front" );
    self notify( "stop_shooting" );
    self setturrettargetvec( var_0._ID37340[0]["origin"] );
    latvee_destroyer_fires_at_targets( var_0 );
    _ID42407::_ID13024( "spotted_player" );
    thread _ID50761( 0, 1 );
    _ID42237::_ID14413( "start_house_destroyer" );
    self delete();
}

latvee_destroyer_fires_at_pillars_and_player_trigger()
{
    _ID42237::_ID14400( "latvee_destroyer_pillars" );
    _ID42237::_ID14400( "latvee_destroyer_front" );
    var_0 = spawn( "trigger_radius", ( 1710, 6600, 2275 ), 2, 75, 50 );

    while ( !( _ID42237::_ID14385( "latvee_destroyer_pillars" ) && _ID42237::_ID14385( "latvee_destroyer_front" ) ) )
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1 == level._ID52761 )
        {
            _ID42237::_ID14402( "latvee_destroyer_pillars" );
            continue;
        }

        if ( var_1 == level.player )
            _ID42237::_ID14402( "latvee_destroyer_front" );
    }

    var_0 delete();
}

latvee_destroyer_fires_at_targets( var_0 )
{
    self endon( "death" );
    var_1 = 62500.0;

    for ( var_2 = 0; var_2 < var_0._ID37340.size; var_2++ )
    {
        self setturrettargetvec( var_0._ID37340[var_2]["origin"] );
        _ID44617( var_0._ID37340[var_2]["origin"] );

        if ( var_0._ID37340[var_2]["exploder"] > 0 )
        {
            _ID42234::_ID13611( var_0._ID37340[var_2]["exploder"] );
            earthquake( 0.25, 0.2, var_0._ID37340[var_2]["origin"], 720 );

            if ( isdefined( var_0._ID37340[var_2]["blastImpact"] ) && var_0._ID37340[var_2]["blastImpact"] )
            {
                if ( distance2dsquared( level.player.origin, var_0._ID37340[var_2]["origin"] ) < var_1 )
                    level.player _meth_859f( var_0._ID37340[var_2]["origin"] );
            }
        }

        wait 0.15;
    }
}

_ID43048()
{
    _ID42411::_ID16988();
    thread _ID50715();
    thread _ID42413::_ID9604();
    thread _ID47729();
    self._ID9640 = 1;
    self endon( "death" );
    var_0 = spawnstruct();
    var_1 = _ID42237::_ID16638( "bh_roof", "targetname" ).origin;
    var_0._ID37340 = [];
    var_2 = getglassarray( "blue_house_glass" );
    _ID43309( var_0, var_1, 12 );
    var_1 = _ID42237::_ID16638( "bh_corner", "targetname" ).origin;
    _ID43309( var_0, var_1, 13 );
    var_1 = _ID42237::_ID16638( "bh_garage_left", "targetname" ).origin;
    _ID43309( var_0, var_1, 10 );
    var_1 = _ID42237::_ID16638( "bh_garage_right", "targetname" ).origin;
    _ID43309( var_0, var_1, 11 );

    for ( var_3 = 0; var_3 < var_0._ID37340.size; var_3++ )
    {
        self setturrettargetvec( var_0._ID37340[var_3]["origin"] );
        _ID44617( var_0._ID37340[var_3]["origin"] );

        if ( var_0._ID37340[var_3]["exploder"] > 0 )
            _ID42234::_ID13611( var_0._ID37340[var_3]["exploder"] );

        if ( var_0._ID37340[var_3]["exploder"] == 13 )
        {
            foreach ( var_5 in var_2 )
                destroyglass( var_5 );
        }

        wait 0.15;
    }

    var_7 = _ID42237::_ID16638( "cop_car", "targetname" );
    self setturrettargetvec( var_7.origin );
    self waittill( "turret_on_target" );

    while ( !_ID42237::_ID14385( "house_destroyer_stage2" ) )
    {
        var_8 = randomintrange( 4, 6 );

        for ( var_9 = 0; var_9 < var_8; var_9++ )
        {
            self fireweapon();
            wait 0.2;
        }

        var_10 = randomintrange( 40, 60 );

        for ( var_11 = 0; var_11 < var_10; var_11++ )
        {
            if ( _ID42237::_ID14385( "house_destroyer_stage2" ) )
                break;

            wait 0.05;
        }
    }

    var_0 = spawnstruct();
    var_1 = _ID42237::_ID16638( "roof_corner", "targetname" ).origin;
    var_0._ID37340 = [];
    _ID43309( var_0, var_1, 4 );
    var_1 = _ID42237::_ID16638( "bh_corner", "targetname" ).origin;
    _ID43309( var_0, var_1, 2 );
    var_1 = _ID42237::_ID16638( "big_windows", "targetname" ).origin;
    _ID43309( var_0, var_1, 1 );
    var_1 = _ID42237::_ID16638( "back_windows", "targetname" ).origin;
    _ID43309( var_0, var_1, 3 );

    for ( var_3 = 0; var_3 < var_0._ID37340.size; var_3++ )
    {
        self setturrettargetvec( var_0._ID37340[var_3]["origin"] );
        _ID44617( var_0._ID37340[var_3]["origin"] );

        if ( var_0._ID37340[var_3]["exploder"] > 0 )
            _ID42234::_ID13611( var_0._ID37340[var_3]["exploder"] );

        wait 0.15;
    }

    self endon( "stop_shooting" );
    thread _ID46662();
    var_7 = _ID42237::_ID16638( "beemer", "targetname" );
    self setturrettargetvec( var_7.origin );
    self waittill( "turret_on_target" );
    var_8 = randomintrange( 4, 6 );

    for ( var_9 = 0; var_9 < var_8; var_9++ )
    {
        self fireweapon();
        wait 0.2;
    }

    var_7 = _ID42237::_ID16638( "barrier_car", "targetname" );
    self setturrettargetvec( var_7.origin );
    self waittill( "turret_on_target" );

    for ( var_3 = 0; var_3 < 3; var_3++ )
    {
        var_8 = randomintrange( 4, 6 );

        for ( var_9 = 0; var_9 < var_8; var_9++ )
        {
            self fireweapon();
            wait 0.2;
        }
    }
}

_ID46662()
{
    self endon( "death" );
    self endon( "stop_shooting" );

    for (;;)
    {
        if ( _ID42237::_ID41802( self.origin, self.angles, level.player.origin, level._ID8760["60"] ) )
        {
            if ( sighttracepassed( self.origin + ( 0, 0, 64 ), level.player geteye(), 0, self ) )
                break;
        }

        wait 1;
    }

    thread _ID50761();
}

_ID47729()
{
    self endon( "death" );
    _ID42407::_ID13024( "spotted_player" );
    var_0 = getvehiclenode( "house_destroyer_first_path", "targetname" );
    self startpath( var_0 );
    _ID42237::_ID14413( "house_destroyer_stage2" );
    var_1 = getvehiclenode( "house_destroyer_path", "targetname" );
    self startpath( var_1 );
    self waittill( "reached_end_node" );
    level.player _ID42407::_ID41105( self, 950, 4 );
    _ID42237::_ID14402( "house_destroyer_unloading" );
    thread _ID42411::_ID40298();
    wait 6;
    thread _ID50761();
    wait 16;
    _ID42237::_ID14413( "take_point" );
    var_2 = getentarray( "bmp_bad_places", "script_noteworthy" );

    foreach ( var_4 in var_2 )
        badplace_cylinder( "", 20, var_4.origin, var_4.radius, 300 );

    _ID42237::_ID14402( "house_destroyer_moving_back" );
    var_6 = getvehiclenode( "house_destroyer_backwards_path", "targetname" );
    self startpath( var_6 );
    _ID42411::_ID40304();
    wait 25.0;
    _ID42411::_ID40305();
    _ID42237::_ID14413( "leaving_gas_station" );
    self notify( "stop_shooting" );
    self delete();
}

_ID44617( var_0 )
{
    _ID46338( var_0 );
    self fireweapon();
    wait 0.05;
}

_ID46338( var_0 )
{
    wait 0.1;
    physicsexplosionsphere( var_0, 200, 100, 4.0 );
}

_ID50761( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    self notify( "stop_shooting" );
    self endon( "stop_shooting" );
    self endon( "death" );
    self endon( "delete" );

    for (;;)
    {
        var_2 = _ID42407::_ID15617( self.origin );
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
                _ID42407::_ID13021( "spotted_player" );
                _ID42237::_ID14388( "bmp_has_spotted_player" );
                self notify( "stop_shooting" );
            }
        }
    }
}

_ID45839()
{
    self endon( "death" );

    for (;;)
    {
        level.player waittill( "damage",  var_0, var_1  );

        if ( var_1 == self )
        {

        }
    }
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
    var_1 = anglestoforward( level.player.angles );
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

_ID6739( var_0 )
{
    if ( _ID42237::_ID14385( "player_inside_nates" ) )
        return 0;

    if ( _ID42237::_ID14385( "player_in_diner" ) )
        return 0;

    if ( distance( self.origin, level.player.origin ) < level._ID45903 )
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

_ID52171()
{
    iprintlnbold( &"SCRIPT_DEBUG_LEVEL_END" );
}

_ID45672( var_0 )
{
    _ID42237::_ID14413( var_0 );
    _ID42407::_ID4422( "hello" );
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
    var_5.name = var_0;
    var_5._ID19286 = var_4;
    var_5._ID36185 = "invisible";
    var_5._ID37557 = var_1;
    var_5.origin = var_2;
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
        objective_add( var_3._ID19286, var_3._ID36185, var_3._ID37557, var_3.origin );
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
    level notify( "moving " + var_0 );
    level endon( "moving " + var_0 );
    var_2 = level._ID25349[var_0];
    var_2._ID47623 = var_1;
    level._ID49672 = var_1;
    objective_current( var_2._ID19286, level._ID49672 );
}

_ID43340( var_0 )
{
    level notify( "moving " + var_0 );
    level endon( "moving " + var_0 );
    var_1 = level._ID25349[var_0];
    var_2 = undefined;
    _ID54116( var_0, &"INVASION_WAYPOINT_HOSTILES" );
    var_3 = getent( "north_trucks_retreat_point", "targetname" );

    while ( var_1._ID36185 != "done" )
    {
        var_4 = getaiarray( "axis" );

        if ( var_4.size < 1 )
        {
            level._ID49672 = var_3.origin;
            objective_current( var_1._ID19286, level._ID49672 );
            wait 3;
            continue;
        }

        var_5 = [];

        foreach ( var_7 in var_4 )
            var_5[var_5.size] = var_7.origin;

        level._ID49672 = averagepoint( var_5 );
        objective_current( var_1._ID19286, level._ID49672 + ( 0, 0, 70 ) );
        wait 2.2;
    }
}

_ID54116( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];

    if ( isdefined( var_1 ) )
        objective_setpointertextoverride( var_2._ID19286, var_1 );
    else
        objective_setpointertextoverride( var_2._ID19286 );
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

_ID50024( var_0 )
{
    self setthreatbiasgroup( var_0 );
}

_ID47818()
{
    _ID42237::_ID14413( "bmp_north_left_dead" );
    _ID42237::_ID14413( "bmp_north_mid_dead" );
    _ID42237::_ID14402( "bmps_from_north_dead" );
    level notify( "bmps_from_north_dead" );
}

_ID46563()
{
    var_0 = 0;

    if ( isdefined( level.player._ID51771 ) )
        var_0 = 1;

    if ( level.player getcurrentweapon() == "remote_missile_detonator" )
        var_0 = 1;

    if ( _ID42237::_ID14385( "bmps_from_north_dead" ) )
        var_0 = 1;

    return var_0;
}

_ID48862()
{
    var_0 = 0;

    if ( isdefined( level.player._ID51771 ) )
        var_0 = 1;

    if ( level.player getcurrentweapon() == "remote_missile_detonator" )
        var_0 = 1;

    return var_0;
}

_ID45901()
{
    var_0 = 0;

    if ( level.player getcurrentweapon() == "remote_missile_detonator" )
        var_0 = 1;

    if ( level._ID47334 + 5000 < gettime() )
        var_0 = 1;

    return var_0;
}

_ID45323()
{
    var_0 = getdvarfloat( "glass_damageToWeaken" );
    var_1 = getdvarfloat( "glass_damageToDestroy" );
    var_2 = ( var_0 + var_1 ) / 100;
    var_3 = getent( self.target, "targetname" );

    for ( var_4 = 0; var_4 < var_2; var_4++ )
        magicbullet( "nosound_magicbullet", self.origin, var_3.origin );
}

_ID49309()
{
    level._ID49526 endon( "death" );

    for (;;)
    {
        if ( isdefined( level._ID52466 ) )
            var_0 = level._ID52466.origin;
        else if ( isdefined( level._ID49090 ) )
            var_0 = level._ID49090;
        else
            var_0 = ( -553.753, -2970, 2369.84 );

        var_1 = vectortoangles( var_0 - level._ID49526.origin );
        level._ID39406 moveto( level._ID49526.origin, 0.1, 0, 0 );
        level._ID39406 rotateto( var_1, 0.1, 0, 0 );
        wait 0.05;
    }
}

_ID46391()
{
    var_0 = getent( "house_area_volume", "targetname" );
    var_1 = getentarray();
    var_2 = [];
    var_2["script_vehicle_corpse"] = 1;
    var_2["script_model"] = 1;
    var_2["script_brushmodel"] = 1;
    var_2["script_vehicle_collmap"] = 1;
    var_2["info_volume_breachroom"] = 1;
    var_2["actor_ally_hero_foley"] = 1;
    var_2["actor_ally_hero_dunn"] = 1;
    var_2["stage"] = 1;

    foreach ( var_4 in var_1 )
    {
        if ( isalive( var_4 ) )
            continue;

        if ( !isdefined( var_4.classname ) )
        {
            if ( var_4 istouching( var_0 ) )
                var_4 delete();

            continue;
        }

        if ( isdefined( var_2[var_4.classname] ) )
            continue;

        if ( isdefined( var_4.code_classname ) && isdefined( var_2[var_4.code_classname] ) )
            continue;

        if ( var_4 == var_0 )
            continue;

        if ( var_4 _ID49313() )
        {
            var_5 = spawn( "script_origin", var_4.origin );

            if ( var_5 istouching( var_0 ) )
                var_4 delete();

            var_5 delete();
            continue;
        }

        if ( var_4 istouching( var_0 ) )
            var_4 delete();
    }
}

_ID49313()
{
    if ( !isdefined( self.code_classname ) )
        return 0;

    if ( issubstr( self.code_classname, "script_vehicle" ) )
        return 1;

    if ( issubstr( self.code_classname, "script_vehicle_corpse" ) )
        return 1;

    if ( issubstr( self.code_classname, "script_brushmodel" ) )
        return 1;

    if ( issubstr( self.code_classname, "trigger" ) )
        return 1;

    return self.code_classname == "info_volume";
}

_ID49877()
{
    var_0 = getent( "house_area_volume", "targetname" );
    var_1 = getentarray();

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        if ( var_3 istouching( var_0 ) )
            var_3 delete();
    }
}

_ID54550()
{
    switch ( level._ID35897 )
    {
        case "latvee":
        case "default":
            _ID47780();
        case "yards":
        case "bmp":
        case "pizza":
        case "gas_station":
        case "crash":
            _ID53611();
        case "nates_roof":
            _ID43728();
            _ID47595();
        case "attack_diner":
            _ID47882();
        case "defend_diner":
            _ID46644();
        case "diner":
            _ID50034();
        case "burgertown":
        case "vip_escort":
        case "helis":
        case "defend_bt":
            _ID46581();
            _ID53607();
            _ID52081();
            _ID46479();
            _ID44288();
        case "convoy":
            _ID45855();
    }
}

_ID47780()
{
    _ID42237::_ID14421( "follow_foley", "entering_yards" );
}

_ID53611()
{
    var_0 = _ID42237::_ID16638( "police_car_moment", "script_noteworthy" );
    var_1 = var_0.origin;
    _ID48422( "obj_crash", &"INVASION_OBJ_FOLEY", level._ID52761.origin );
    _ID51143( "obj_crash", "current" );
    thread _ID48581( "obj_crash", level._ID52761, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "crash_objective" );
    _ID42237::_ID14421( "player_goto_roof", "player_on_roof" );
    _ID51143( "obj_crash", "active" );
    _ID51143( "obj_crash", "done", 1 );
    objective_delete( 0 );
}

_ID43728()
{
    if ( !_ID42237::_ID14385( "player_on_roof" ) )
    {
        var_0 = level._ID43847.origin;
        _ID48422( "obj_roof", &"INVASION_OBJ_ROOF", var_0 );
        _ID51143( "obj_roof", "current" );
        _ID42237::_ID14413( "player_on_roof" );
        _ID51143( "obj_roof", "done" );
    }
}

_ID47595()
{
    var_0 = _ID42237::_ID16638( "south_side_of_roof_obj_loc", "targetname" );
    var_1 = var_0.origin;
    _ID48422( "obj_defend", &"INVASION_OBJ_DEFEND", var_1 );
    _ID51143( "obj_defend", "current" );
    _ID54116( "obj_defend", &"INVASION_WAYPOINT_DEFEND" );
    _ID42237::_ID14413( "northside_roof" );
    var_2 = _ID42237::_ID16638( "northside_roof", "targetname" );
    _ID54163( "obj_defend", var_2.origin );
    _ID54116( "obj_defend", &"INVASION_WAYPOINT_DEFEND" );
    _ID42237::_ID14413( "truck_guys_retreat" );
    var_3 = _ID42237::_ID16638( "off_the_roof", "targetname" );
    _ID54163( "obj_defend", var_3.origin );
    _ID54116( "obj_defend" );
    defend_roof_think( var_3 );
    _ID51143( "obj_defend", "done" );
}

defend_roof_think( var_0 )
{
    level endon( "time_to_go_get_UAV_control" );

    while ( !_ID42237::_ID14385( "time_to_go_get_UAV_control" ) )
    {
        _ID42237::_ID14413( "off_roof_obj" );
        _ID54163( "obj_defend", ( 0, 0, 0 ) );
        _ID42237::_ID14426( "off_roof_obj" );
        _ID54163( "obj_defend", var_0.origin );
    }
}

_ID47882()
{
    var_0 = getent( "predator_drone_control", "targetname" );
    var_1 = var_0.origin;
    _ID48422( "obj_predator", &"INVASION_OBJ_PREDATOR", var_1 );
    _ID51143( "obj_predator", "current" );
    _ID42237::_ID14413( "player_has_predator_drones" );
    _ID51143( "obj_predator", "done" );
}

_ID50034()
{
    var_0 = getent( "nates_restaurant_goal", "targetname" );
    var_1 = var_0.origin;
    _ID48422( "obj_burgertown", &"INVASION_OBJ_REGROUP", var_1 );
    _ID51143( "obj_burgertown", "current" );
    _ID54116( "obj_burgertown", &"INVASION_WAYPOINT_REGROUP" );
    _ID42237::_ID14413( "obj_regroup_nates_bombed" );
    wait 3;
    _ID54163( "obj_burgertown", ( 0, 0, 0 ) );
    _ID54116( "obj_burgertown" );
    _ID42237::_ID14413( "time_to_clear_burgertown" );
    var_2 = getent( "objective_burgertown_groundfloor", "targetname" );
    var_1 = var_2.origin;
    _ID45810( "obj_burgertown", &"INVASION_OBJ_BURGERTOWN" );
    _ID54163( "obj_burgertown", var_1 );
    _ID42237::_ID14413( "burger_town_lower_cleared" );
    wait 2;
    _ID51143( "obj_burgertown", "done" );
}

_ID46644()
{
    wait 0.2;

    if ( !_ID42237::_ID14385( "bmp_north_left_dead" ) )
    {
        _ID48422( "obj_bmps", &"INVASION_OBJ_BMPS", level._ID50295.origin );
        _ID51143( "obj_bmps", "current" );
        thread _ID48581( "obj_bmps", level._ID50295, ( 0, 0, 96 ) );
        _ID54116( "obj_bmps", &"INVASION_WAYPOINT_DESTROY" );
    }
    else if ( !_ID42237::_ID14385( "bmp_north_mid_dead" ) )
    {
        _ID48422( "obj_bmps", &"INVASION_OBJ_BMPS", level._ID54042.origin );
        _ID51143( "obj_bmps", "current" );
        thread _ID48581( "obj_bmps", level._ID54042, ( 0, 0, 96 ) );
        _ID54116( "obj_bmps", &"INVASION_WAYPOINT_DESTROY" );
    }
    else
        return;

    _ID42237::_ID14413( "bmp_north_left_dead" );

    if ( !_ID42237::_ID14385( "bmp_north_mid_dead" ) )
    {
        thread _ID48581( "obj_bmps", level._ID54042, ( 0, 0, 96 ) );
        _ID54116( "obj_bmps", &"INVASION_WAYPOINT_DESTROY" );
    }

    _ID42237::_ID14413( "bmp_north_mid_dead" );
    _ID54116( "obj_bmps" );
    _ID51143( "obj_bmps", "done" );
}

_ID43825()
{
    var_0 = getent( "raptor_in_nates_prep", "targetname" );
    var_1 = var_0.origin;
    _ID48422( "obj_nates_regroup", &"INVASION_OBJ_NATES_REGROUP", var_1 );
    _ID51143( "obj_nates_regroup", "current" );
    _ID54116( "obj_nates_regroup", &"INVASION_WAYPOINT_REGROUP" );
    _ID42237::_ID14413( "player_in_pos_to_cover_vip" );
    _ID51143( "obj_nates_regroup", "done" );
    _ID54116( "obj_burgertown" );
}

_ID46581()
{
    var_0 = level._ID52761.origin;
    _ID48422( "obj_raptor_defend", &"INVASION_OBJ_VIP_ESCORT", var_0 );
    _ID51143( "obj_raptor_defend", "current" );
    thread _ID48581( "obj_raptor_defend", level._ID52761, ( 0, 0, 70 ) );
    _ID54116( "obj_raptor_defend", &"INVASION_WAYPOINT_PROTECT" );
    var_1 = getdvar( "objectiveFadeTooFar" );
    setsaveddvar( "objectiveFadeTooFar", 5 );
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    _ID51143( "obj_raptor_defend", "active" );
    _ID48422( "obj_neutralize", &"INVASION_OBJ_BURGERTOWN_DEFEND", ( 0, 0, 0 ), 1 );
    _ID51143( "obj_neutralize", "current" );
    thread _ID43340( "obj_neutralize" );
    setsaveddvar( "objectiveFadeTooFar", var_1 );
    _ID42237::_ID14413( "first_attack_heli_spawned" );
    wait 9;
}

_ID52750()
{
    var_0 = getent( "nates_stinger", "script_noteworthy" );
    var_1 = getent( "diner", "script_noteworthy" );
    level._ID45654 = [];
    level._ID45654["origin"] = var_0.origin;
    level._ID45654["angles"] = var_0.angles;
    level._ID45654["classname"] = var_0.classname;
    var_2 = spawn( "script_model", var_1.origin );
    var_2 setmodel( "h1_weapon_stinger_obj" );
    var_2.angles = var_1.angles;
    var_2 hide();
    var_3 = spawn( "script_model", var_0.origin );
    var_3 setmodel( "h1_weapon_stinger_obj" );
    var_3.angles = var_0.angles;
    var_3 hide();
    level waittill( "attack_heli_spawned" );

    while ( !_ID42237::_ID14385( "second_attack_heli_dead" ) )
    {
        wait 0.1;

        if ( _ID42237::_ID14385( "first_attack_heli_dead" ) && !_ID42237::_ID14385( "second_attack_heli_spawned" ) )
        {
            var_3 hide();
            var_2 hide();
            level waittill( "second_attack_heli_spawned" );
        }

        if ( player_has_stinger() )
        {
            var_3 hide();
            var_2 hide();
            continue;
        }

        if ( isdefined( var_1 ) && !_func_2a5( var_1 ) )
            var_2 show();

        if ( isdefined( var_0 ) && !_func_2a5( var_0 ) )
            var_3 show();

        if ( !isdefined( var_0 ) || _func_2a5( var_0 ) )
        {
            var_0 = spawn( level._ID45654["classname"], level._ID45654["origin"], 1 );
            var_0.angles = level._ID45654["angles"];
            var_0 itemweaponsetammo( 1, 0 );
            var_0.script_noteworthy = "nates_stinger";
        }
    }

    var_2 delete();
    var_3 delete();
}

player_has_stinger()
{
    var_0 = level.player getweaponslistall();

    if ( !isdefined( var_0 ) )
        return 0;

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2, "stinger" ) )
            return 1;
    }

    return 0;
}

_ID53607( var_0 )
{
    level notify( "attack_heli_spawned" );
    level._ID47105 thread maps\invasion_aud::_ID43433();
    var_1 = 1;
    var_2 = level.player getweaponslistall();

    foreach ( var_4 in var_2 )
    {
        if ( var_4 == "stinger" )
            var_1 = 0;
    }

    if ( var_1 )
    {
        var_6 = level._ID45654["origin"];
        var_7 = getent( "diner", "script_noteworthy" );

        if ( isdefined( var_7 ) )
        {
            var_6 = var_7.origin;
            level._ID53339 = "west";
        }
        else
            level._ID53339 = "east";

        var_8 = var_6;
    }
    else
        var_8 = level._ID47105.origin;

    level notify( "moving obj_raptor_defend" );
    _ID45810( "obj_neutralize", &"INVASION_OBJ_ATTACK_HELI" );
    _ID54163( "obj_neutralize", var_8 );
    _ID54116( "obj_neutralize" );

    if ( var_1 )
        level._ID47105 _ID51532();

    if ( isalive( level._ID47105 ) )
    {
        level notify( "moving obj_raptor_defend" );
        _ID54163( "obj_neutralize", ( 0, 0, 0 ) );
        _ID51143( "obj_raptor_defend", "active_waypoint", 1 );
        _ID54116( "obj_raptor_defend", &"INVASION_WAYPOINT_DESTROY" );
        thread _ID48581( "obj_raptor_defend", level._ID47105, ( 0, 0, 128 ) );
        level._ID47105 waittill( "death" );
    }

    _ID51143( "obj_raptor_defend", "active", 1 );
    _ID54116( "obj_raptor_defend" );
}

_ID51532()
{
    self endon( "death" );

    for (;;)
    {
        level.player waittill( "weapon_change" );
        var_0 = level.player getcurrentweapon();

        if ( var_0 == "stinger" )
        {
            _ID42407::_ID4422( "got_stinger" );
            break;
        }
    }
}

_ID52081()
{
    level notify( "moving obj_raptor_defend" );
    _ID45810( "obj_neutralize", &"INVASION_OBJ_BURGERTOWN_DEFEND" );
    thread _ID43340( "obj_neutralize" );
    _ID42237::_ID14413( "second_attack_heli_spawned" );
    wait 9;
}

_ID46479()
{
    var_0 = 1;
    _ID53607( var_0 );
}

_ID44288()
{
    level notify( "moving obj_raptor_defend" );
    _ID45810( "obj_neutralize", &"INVASION_OBJ_BURGERTOWN_DEFEND" );
    thread _ID43340( "obj_neutralize" );
    _ID42237::_ID14413( "time_to_goto_convoy" );
    _ID51143( "obj_raptor_defend", "done" );
    _ID51143( "obj_neutralize", "done", 1 );
}

_ID45855()
{
    _ID42237::_ID14413( "time_to_goto_convoy" );

    if ( !isdefined( level._ID47128 ) )
        level._ID47128 = getent( "convoy_obj", "targetname" );

    _ID48422( "obj_convoy", &"INVASION_OBJ_CONVOY", level._ID47128.origin );
    thread _ID48581( "obj_convoy", level._ID47128, ( 35, -25, 64 ) );
    _ID51143( "obj_convoy", "current" );
}

_ID48260( var_0 )
{
    if ( isdefined( self._ID29480 ) )
        return var_0 + "_" + self._ID29480;
    else
        return var_0 + "_4";
}

_ID49488( var_0, var_1, var_2, var_3, var_4 )
{
    self setcandamage( 1 );

    for (;;)
    {
        self waittill( "damage",  var_5, var_6, var_7  );

        if ( var_5 <= 0 )
            continue;

        if ( isdefined( var_4 ) && var_4 )
        {
            var_8 = getent( self.target, "targetname" );
            var_8 delete();
        }

        if ( isdefined( var_3 ) && var_3 )
            self physicslaunchclient( self.origin, var_7 * var_5 );

        self setmodel( var_0 );
        var_9 = self getorigin();
        var_10 = var_9 + var_2;
        playfx( _ID42237::_ID16299( var_1 ), var_10 );
        break;
    }
}

btr_silent_skies_monitor_damage()
{
    level endon( "stop_silent_skies" );
    self waittill( "death",  var_0, var_1, var_2  );

    if ( isdefined( var_0 ) && isdefined( var_2 ) )
    {
        if ( isplayernumber( var_0 ) && var_2 != "remote_missile_invasion" )
        {
            level.btr_kill_no_predator++;

            if ( level.btr_kill_no_predator >= 2 )
                level notify( "give_silent_skies" );

            return;
        }
    }

    level notify( "stop_silent_skies" );
}

btr_silent_skies_manager()
{
    level endon( "stop_silent_skies" );
    level waittill( "give_silent_skies" );
    _ID42407::_ID16864( "SILENT_SKIES" );
    level notify( "stop_silent_skies" );
}
#using_animtree("vehicles");

jeep_ride_intro_vehicle()
{
    level._ID51831 setanim( %h2_invasion_intro_jeepride_latvee, 1.0, 0.0, 1.0 );
}

soldiers_escort_president( var_0 )
{
    var_1 = 54;
    var_2 = getaicount();

    if ( var_2 + 1 >= var_1 )
        return;

    var_3 = _ID42407::_ID35014();
    wait 6;
    var_3 _ID42407::_ID2286();
    var_3 _ID42407::_ID12467();
    var_3 thread _ID42407::_ID14701( var_0 );

    if ( !_ID42237::_ID14385( "player_in_latvee" ) )
        _ID42237::_ID14413( "player_in_latvee" );

    var_3._ID24424 = 1.2;
}

smoke_grenade_listener()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_0, var_1  );

        if ( var_1 == "smoke_grenade_american" )
            var_0 thread track_smoke_grenade_fuse( 4 );
    }
}

track_smoke_grenade_fuse( var_0 )
{
    _ID42407::_ID41130( "death", var_0 - 0.05 );
    thread fake_grenade_vfx( self.origin );
    self delete();
}

fake_grenade_vfx( var_0 )
{
    var_1 = 400;
    var_2 = level.smoke_normal;
    var_3 = 1;

    if ( !_ID42237::_ID14385( "entered_alley" ) && _ID42237::_ID14385( "got_visual_on_crash" ) )
    {
        var_2 = level.smoke_low;

        if ( isdefined( level.smokegrenadesarray ) )
        {
            foreach ( var_5 in level.smokegrenadesarray )
            {
                if ( distance( var_5.origin, var_0 ) < var_1 )
                {
                    var_2 = level.smoke_dud;
                    var_3 = 0;
                }
            }
        }
    }
    else
    {
        if ( level._ID34439 > 4 )
            var_2 = level.smoke_low;

        var_3 = 0;
    }

    var_7 = spawnfx( var_2, var_0 );
    triggerfx( var_7 );
    thread _ID42237::_ID27077( "h1_wpn_smoke_pop", var_0 );

    if ( var_3 )
    {
        var_8 = spawn( "script_origin", var_0 );
        level.smokegrenadesarray = _ID42237::_ID3293( level.smokegrenadesarray, var_8 );
        wait 35;
        level.smokegrenadesarray = _ID42237::_ID3321( level.smokegrenadesarray, var_8 );
        var_8 delete();
        wait 15;
        var_7 delete();
    }
    else
    {
        wait 50;
        var_7 delete();
    }
}

staticmodelgroup_init()
{
    var_0 = _ID42237::_ID16638( "struct_staticmodelgroup", "targetname" );
    var_1 = int( var_0._ID31388 );

    for ( var_2 = 1; var_2 <= var_1; var_2++ )
    {
        var_3 = "flag_staticmodelgroup_" + var_2;
        _ID42237::_ID14400( var_3 );
        thread staticmodelgroup_monitor( var_3, var_2 );
    }

    _ID42237::_ID14402( "static_model_initialized" );
}

staticmodelgroup_monitor( var_0, var_1 )
{
    _func_31c( var_1 );

    for (;;)
    {
        if ( _ID42237::_ID14385( var_0 ) )
            _func_31b( var_1 );
        else
            _func_31c( var_1 );

        level waittill( var_0 );
    }
}

hide_destructible_vehicles( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_1, "targetname" );
    var_4 = getentarray( "destructible_vehicle", "targetname" );
    var_5 = [];

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        return;

    foreach ( var_7 in var_4 )
    {
        foreach ( var_9 in var_3 )
        {
            if ( var_9 istouching( var_7 ) )
                var_5 = _ID42237::_ID3293( var_5, var_7 );
        }
    }

    _ID42237::_ID14400( var_0 );

    if ( var_2 )
        _ID42237::_ID14388( var_0 );
    else
        _ID42237::_ID14402( var_0 );

    for (;;)
    {
        if ( _ID42237::_ID14385( var_0 ) )
        {
            foreach ( var_7 in var_5 )
                var_7 hide();
        }
        else
        {
            foreach ( var_7 in var_5 )
                var_7 show();
        }

        level waittill( var_0 );
    }
}

swap_burning_tree()
{
    wait 9;
    var_0 = getent( "burning_tree", "script_noteworthy" );

    while ( _ID42407::_ID27540( var_0.origin, 0.4, 1 ) )
        wait 1;

    var_0 setmodel( "h2_foliage_tree_oak_1_burnt" );
}

animate_nates_beams()
{
    _func_31b( 15 );
    _func_31c( 16 );
    var_0 = getent( "nates_beam_animated", "targetname" );
    var_0 hide();
    level waittill( "exploding_139" );
    var_0 _ID42407::_ID3428( "h2_nates_beam_destruction" );
    _func_31c( 15 );
    var_0 show();
    var_0 _ID42259::_ID3111( var_0, "h2_nates_beam_destruction" );
    var_0 hide();
    _func_31b( 16 );
}

animated_wires_taco()
{
    var_0 = getentarray( "animated_wires", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2 _ID42407::_ID3428( "h2_wires_animated" );
        var_2 thread _ID42259::_ID3044( var_2, "h2_wires_animated" );
    }
}

monitor_nates_roof_interior()
{
    thread hide_destructible_vehicles( "flag_vehicles_nates", "volume_vehicles_nates" );
    _ID42237::_ID14413( "static_model_initialized" );
    thread nates_shadow_object_handler();

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_on_roof" ) )
        {
            _ID42237::_ID14388( "flag_staticmodelgroup_6" );
            _ID42237::_ID14388( "flag_staticmodelgroup_8" );
            _ID42237::_ID14402( "flag_vehicles_nates" );
            _ID42237::_ID14388( "flag_portal_road_east_wall" );
        }
        else if ( _ID42237::_ID14385( "player_in_nates" ) )
        {
            _ID42237::_ID14388( "flag_staticmodelgroup_7" );
            _ID42237::_ID14402( "flag_vehicles_nates" );
            _ID42237::_ID14388( "flag_portal_road_east_wall" );
        }
        else
        {
            _ID42237::_ID14402( "flag_staticmodelgroup_6" );
            _ID42237::_ID14402( "flag_staticmodelgroup_7" );
            _ID42237::_ID14402( "flag_staticmodelgroup_8" );
            _ID42237::_ID14388( "flag_vehicles_nates" );
            _ID42237::_ID14402( "flag_portal_road_east_wall" );
        }

        _ID42237::_ID41098( "player_on_roof", "player_in_nates" );
    }
}

diner_door_clip()
{
    var_0 = getent( "diner_player_push", "targetname" );
    _ID42237::_ID14413( "diner_attack" );
    _ID42237::_ID14426( "player_in_diner" );
    var_0.origin = var_0.origin + ( 0, 0, 120 );
    _ID42237::_ID14413( "diner_door_opened" );
    var_0.origin = var_0.origin - ( 0, 0, 120 );
}

monitor_nates_portal()
{
    level waittill( "exploding_333" );
    var_0 = getent( "trigger_portal_nates_sides", "targetname" );
    var_0 delete();
    waitframe;
    _ID42237::_ID14402( "flag_portal_nates_sides" );
}

monitor_nates_roof_portal()
{
    while ( level.player._ID39980 )
        wait 0.5;

    _ID42237::_ID14402( "flag_portal_nates_roof" );
}

h2_inv_footik_disable()
{
    for (;;)
    {
        if ( _ID42237::_ID14385( "player_on_roof" ) || _ID42237::_ID14385( "player_on_burgertown_roof" ) )
            setsaveddvar( "xanim_disableFootIK", 1 );
        else
            setsaveddvar( "xanim_disableFootIK", 0 );

        _ID42237::_ID41098( "player_on_roof", "player_on_burgertown_roof" );
    }
}

change_remote_missile_zfar()
{
    level endon( "death" );

    for (;;)
    {
        level.player waittill( "player_is_controlling_UAV" );
        setsaveddvar( "r_lodFOVFixedScale", 0.5 );
        _ID42237::_ID14388( "flag_staticmodelgroup_10" );
        _ID42237::_ID14388( "flag_staticmodelgroup_8" );
        level.player waittill( "exiting_uav_control" );
        setsaveddvar( "r_lodFOVFixedScale", 1 );
        _ID42237::_ID14402( "flag_staticmodelgroup_10" );
        _ID42237::_ID14402( "flag_staticmodelgroup_8" );
    }
}

nates_get_ents()
{
    var_0 = getentarray( "nates_info_volumes", "targetname" );
    var_1 = getentarray( "script_model", "code_classname" );
    _ID42237::_ID3296( var_1, getentarray( "script_brushmodel", "code_classname" ) );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( !var_4 _meth_805b() )
        {
            foreach ( var_6 in var_0 )
            {
                if ( var_4 istouching( var_6 ) )
                {
                    var_2[var_2.size] = var_4;
                    break;
                }
            }
        }
    }

    return var_2;
}

nates_shadow_object_handler()
{
    level endon( "exploding_333" );
    _ID42237::_ID14413( "nates_after_bombing_setup_done" );
    var_0 = nates_get_ents();

    for (;;)
    {
        _ID42237::_ID14413( "player_on_roof" );

        foreach ( var_2 in var_0 )
        {
            if ( !_func_2a5( var_2 ) )
            {
                var_2 hide();
                var_2 dontcastshadows();
            }
        }

        _ID42237::_ID14426( "player_on_roof" );

        foreach ( var_2 in var_0 )
        {
            if ( !_func_2a5( var_2 ) )
            {
                var_2 show();
                var_2 castshadows();
            }
        }

        waittillframeend;
    }
}

show_tree()
{
    _func_31c( 14 );
    _ID42237::_ID14413( "flag_staticmodelgroup_14" );
    _func_31c( 13 );
    _func_31b( 14 );
}

monitor_sentry_badplace()
{
    var_0 = getent( "no_sentry_volume", "targetname" );

    if ( !isdefined( var_0 ) )
        return;

    for (;;)
    {
        if ( level.player istouching( var_0 ) )
            level.player.nosentry = 1;
        else
            level.player.nosentry = undefined;

        waittillframeend;
    }
}

safe_saving_roof()
{
    level endon( "truck_guys_retreat" );
    wait 2;

    while ( _ID42237::_ID14385( "unsafe_zone_save" ) )
        wait 1;

    _ID42407::_ID4422( "sentry_in_position" );
}

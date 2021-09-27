// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "mission_select_cam" ) == "1" )
    {
        maps\invasion_mission_select_cam::_ID50320();
        return;
    }

    if ( _func_039( "r_reflectionProbeGenerate" ) == "1" )
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
    level._ID8760["90"] = _func_0BC( 90 );
    level._ID8760["60"] = _func_0BC( 60 );
    level._ID8760["25"] = _func_0BC( 25 );
    level._ID50964 = 0;
    level._ID12150 = 0;
    level._ID47818 = 0;
    level._ID47738 = 3500;
    level._ID49601 = 1;
    level._ID46121 = "body_us_army_shotgun";
    level._ID49267 = "head_us_army_a";
    _func_14E( "remote_missile_invasion" );
    level._ID46684 = 1;
    _func_150( &"INVASION_LINE1" );
    _func_150( &"INVASION_LINE2" );
    _func_150( &"INVASION_LINE3" );
    _func_150( &"INVASION_LINE4" );
    _func_150( &"INVASION_LINE5" );
    _func_150( &"INVASION_DRONE_PICKUP" );
    _func_150( &"INVASION_DRONE_PICKUP_PC" );
    _func_260( "h2_invasion" );
    _func_260( "h2_invasion_nvg_laser" );
    _func_14F( "h1_hud_tutorial_blur" );
    _func_14F( "h1_hud_tutorial_border" );
    _func_14F( "h1_ac130_screen_overlay" );
    _func_14F( "h1_ac130_distort" );
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
    _ID54687::_ID616( "vehicle_mi-28_flying", "mi28", "script_vehicle_mi28" );
    _ID53327::_ID616( "vehicle_ucav", "ucav", "script_vehicle_ucav" );
    _ID54469::_ID616();
    _ID51039::_ID616();
    _ID47059::_ID616();
    maps\invasion_lighting::_ID616();
    thread _unknown_04FB();
    _func_14E( "smoke_grenade_american" );
    _func_14E( "remote_missile_not_player_invasion" );
    _func_14C( "h1_weapon_stinger_obj" );
    _func_14C( "weapon_uav_control_unit_obj" );
    _func_14E( "flash_grenade" );
    _func_14C( "h2_arc_foliage_tree_oak_01" );
    _func_14C( "h2_foliage_tree_oak_1_burnt" );
    _func_14E( "zippy_rockets" );
    _func_14E( "stinger_speedy" );
    _func_152( "tank_rumble" );
    _func_14C( "h1_mwr_com_widescreen_monitor_des" );
    _func_14C( "com_widescreen_monitor_on_1_des" );
    _func_14C( "com_widescreen_monitor_on_2_des" );
    _func_14C( "ma_flatscreen_tv_wallmount_broken_02" );
    _unknown_048F();
    _ID42407::_ID10126( ::_unknown_05A8 );
    _ID42407::_ID1951( "latvee", ::_unknown_05AF );
    _ID42407::_ID1951( "yards", ::_unknown_05D1 );
    _ID42407::_ID1951( "bmp", ::_unknown_0603 );
    _ID42407::_ID1951( "pizza", ::_unknown_0636 );
    _ID42407::_ID1951( "gas_station", ::_unknown_066D );
    _ID42407::_ID1951( "crash", ::_unknown_06A3 );
    _ID42407::_ID1951( "nates_roof", ::_unknown_06E6 );
    _ID42407::_ID1951( "attack_diner", ::_unknown_075A );
    _ID42407::_ID1951( "defend_diner", ::_unknown_07D4 );
    _ID42407::_ID1951( "diner", ::_unknown_0824 );
    _ID42407::_ID1951( "burgertown", ::_unknown_0877 );
    _ID42407::_ID1951( "vip_escort", ::_unknown_08C7 );
    _ID42407::_ID1951( "defend_BT", ::_unknown_0921 );
    _ID42407::_ID1951( "helis", ::_unknown_0981 );
    _ID42407::_ID1951( "convoy", ::_unknown_09E6 );
    _ID42407::_ID1951( "start_btr80_smash", ::_unknown_07EC );
    _ID42508::_ID28414();
    _ID42287::_ID521();
    maps\invasion_anim::_ID43266();
    _ID42323::_ID616();
    _ID44597::_ID44237();
    maps\invasion_aud::_ID616();
    _ID53924::_ID616();
    _ID42237::_ID3350( _func_1F3( "plane_sound", "script_noteworthy" ), _ID42549::_ID26746 );
    _ID46436::_ID521();
    level._ID51882 = 1;
    level._ID43292 = "invasion_uav";
    level._ID43461 = "invasion_uav";
    _ID50736::_ID521();
    thread _unknown_28D8();
    thread _unknown_2221();
    thread _unknown_2236();
    level._ID46718 = 1500;
    level._ID47738 = 5000;

    if ( level._ID35897 == "no_game" )
        return;

    thread _unknown_267B();
    _ID42272::_ID33575( "compass_map_invasion" );
    var_0 = _func_1A1( "roof_parachute_landing_guy_yards", "targetname" );
    var_1 = _func_1A1( "latvee_ride_roof_landing", "targetname" );
    var_0 _ID42407::_ID1947( maps\invasion_anim::_ID50748 );
    var_1 _ID42407::_ID1947( maps\invasion_anim::_ID50748, "latvee_guy" );
    _ID42237::_ID3350( _func_1A2( "nova_tv", "targetname" ), ::_unknown_2A68, "h1_mwr_com_widescreen_monitor_des", "tv_explosion", ( 0, 0, -15 ), 0, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct1", "targetname" ), ::_unknown_2A8E, "h1_mwr_com_widescreen_monitor_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_on1", "targetname" ), ::_unknown_2AB3, "com_widescreen_monitor_on_1_des", "tv_explosion", ( 0, 0, 25 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "monitor_destruct_2_on", "targetname" ), ::_unknown_2AD9, "com_widescreen_monitor_on_2_des", "tv_explosion", ( 0, 0, 30 ), 1, 1 );
    _ID42237::_ID3350( _func_1A2( "commander", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2169 );
    _ID42237::_ID3350( _func_1A2( "taco", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2178 );
    _ID42237::_ID3350( _func_1A2( "worm", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2189 );
    _ID42237::_ID3350( _func_1A2( "alley_nates_attackers", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_20E4 );
    _ID42237::_ID3350( _func_1A2( "wells", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_219C );
    _ID42237::_ID3350( _func_1A2( "BT_nates_attackers", "script_noteworthy" ), _ID42407::_ID1947, ::_unknown_2104 );
    var_2 = _func_1A2( "wounded_carry_attackers", "script_noteworthy" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_unknown_21A3 );
    var_3 = _func_1A2( "BT_enemy_defenders", "script_noteworthy" );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, ::_unknown_21CF );
    var_4 = _func_1A2( "nates_defenders", "script_noteworthy" );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_unknown_21F5 );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_unknown_2806, "nates_defenders" );
    var_5 = _func_1A2( "president", "script_noteworthy" );
    _ID42237::_ID3350( var_5, _ID42407::_ID1947, ::_unknown_1AC5 );
    var_6 = _func_1A2( "truck_group_enemies", "script_noteworthy" );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_unknown_2156 );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_unknown_1FB5 );
    _ID42237::_ID3350( var_6, _ID42407::_ID1947, ::_unknown_1FB7 );
    var_7 = _func_1A2( "bank_nates_attackers", "targetname" );
    _ID42237::_ID3350( var_7, _ID42407::_ID1947, ::_unknown_1FF2 );
    var_8 = _func_1A2( "diner_enemy_defenders_mobile", "script_noteworthy" );
    _ID42237::_ID3350( var_8, _ID42407::_ID1947, ::_unknown_225B );
    var_9 = _func_1A2( "gas_station_truck_guys", "targetname" );
    _ID42237::_ID3350( var_9, _ID42407::_ID1947, ::_unknown_2891, "gas_station_truck_enemies" );
    _ID42237::_ID3350( _func_1A2( "tangled_parachute_guy", "script_noteworthy" ), _ID42407::_ID1947, maps\invasion_anim::_ID43872 );
    _ID42407::_ID1892( "axis", ::_unknown_1A14 );
    _ID42407::_ID1892( "axis", ::_unknown_1542 );
    var_10 = _func_1A1( "predator_drone_control", "targetname" );
    var_10 _meth_805A();
    _ID42237::_ID3350( _func_1A2( "animated_parachute", "targetname" ), ::_unknown_23CE );
    thread _unknown_1961();
    thread _unknown_194D();
    var_11 = _func_1A2( "paradrop_plane_trigger", "targetname" );
    _ID42237::_ID3350( var_11, ::_unknown_23E0 );
    thread _unknown_2343();
    level._ID49526 = _ID42411::_ID35196( "uav" );
    level._ID49526 _meth_807C( "uav_engine_loop" );
    level._ID39406 = _func_06A( "script_model", level._ID49526._ID740 );
    level._ID39406 _meth_80B8( "tag_origin" );
    thread _unknown_2974();
    thread _unknown_2EA2();
    level._ID43847 = _func_1A1( "obj_sentry", "script_noteworthy" );
    level._ID43847 thread _unknown_0981();
    thread _unknown_20AA();
    _func_10C( "nates_defenders" );
    _func_10C( "gas_station_truck_enemies" );
    _func_10C( "players_group" );
    level._ID794 _meth_8183( "players_group" );
    _ID42407::_ID19382( "nates_defenders", "gas_station_truck_enemies" );
    var_12 = _func_1A2( "friendly_redshirt_rpg", "script_noteworthy" );
    _ID42237::_ID3350( var_12, _ID42407::_ID1947, ::_unknown_1D7B );
    _ID42407::_ID1895( "hint_predator_drone_vs_bmps_4", &"HELLFIRE_USE_DRONE", ::_unknown_29A3, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_predator_drone_vs_bmps_2", &"HELLFIRE_USE_DRONE_2", ::_unknown_29B7, undefined, "medium_background" );
    _ID42407::_ID1865( "hint_steer_drone", &"SCRIPT_PLATFORM_STEER_DRONE", ::_unknown_29E7, &"SCRIPT_PLATFORM_STEER_DRONE_PC", undefined, "small_background" );
    _ID42407::_ID1895( "hint_throw_smoke", &"INVASION_THROW_SMOKE", ::_unknown_2082, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_get_smoke", &"INVASION_GET_SMOKE", ::_unknown_208A );
    _ID42407::_ID1895( "hint_smoke_too_far", &"INVASION_SMOKE_TOO_FAR", ::_unknown_2137, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_ads_with_stinger", &"INVASION_ADS_WITH_STINGER", ::_unknown_14D9, undefined, "medium_background" );
    _ID42407::_ID1895( "hint_toggle_ads_with_stinger", &"INVASION_TOGGLE_ADS_WITH_STINGER", ::_unknown_14ED, undefined, "medium_background" );
    waitframe;
    level.smokegrenadesarray = [];
    level.smoke_normal = _ID42237::_ID16299( "smoke_grenade_american" );
    level.smoke_low = _ID42237::_ID16299( "smoke_grenade_low" );
    level.smoke_dud = _ID42237::_ID16299( "smoke_grenade_dud" );
    level._ID794 thread _unknown_2E58();
    thread _unknown_2EAC();
    _ID42237::_ID14402( "flag_staticmodelgroup_5" );
    _ID42237::_ID14402( "flag_staticmodelgroup_7" );
    _ID42237::_ID14402( "flag_staticmodelgroup_8" );
    _ID42237::_ID14402( "flag_staticmodelgroup_10" );
    _ID42237::_ID14402( "player_outside_nates_killzone" );
    thread _unknown_2F00( "flag_destructible_vehicles", "volume_destructible_vehicles" );
    thread _unknown_2F0D( "flag_vehicle_road", "volume_vehicle_road", 1 );
    thread _unknown_2FE3();
    _func_0DB( "ai_busyEventDistDeath", "400" );
    _func_0DB( "ai_busyEventDistGunShot", "800" );
    _func_0DB( "r_useLightGridDefaultModelLightingLookup", "1" );
    _func_0DB( "r_lightGridDefaultModelLightingLookup", " 2550 8000 2375 " );
    _func_0DB( "r_useLightGridDefaultModelLightingSmoothing", "1" );
    thread _unknown_2BAD();
    thread _unknown_1819();
    thread _unknown_0B09();
    var_13 = _func_1A1( "destructible_notify", "script_noteworthy" );
    var_13 thread _unknown_0ACC();
    thread _unknown_30C8();
    _func_0DB( "ai_perf_disableStairsSteepMetrics", "1" );
    thread _unknown_30DE();
    _func_0DB( "missileRemoteSteerPitchRange", "9 87" );

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
    var_0 = _func_1A2( "exploding_car_spot", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID45911 = var_2 _meth_81EA();
        var_2 _meth_81EB( 0 );
    }

    var_clear_2
    var_clear_0
    self waittill( "exploded" );
    _ID42234::_ID13611( "burning_tree" );
    thread _unknown_320F();
    thread _ID51039::_ID45637();
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_81EB( var_2._ID45911 );
    }

    var_clear_1
    var_clear_0
    _ID42322::_ID46386( "h2_flickering_intense_fire", _ID42237::_ID16640( "exploding_car_spot_struct", "targetname" ) );
}

_ID53625()
{
    var_0 = _func_1A2( "nate_dest", "script_noteworthy" );
    var_1 = _func_1A1( "nate_dest_location", "targetname" );
    var_2 = _func_1A1( "nate_dest_start_location", "targetname" );
    var_3 = var_2._ID740 - var_1._ID740;
    var_4 = var_0;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID740 = var_5._ID740 - var_3;

        if ( _func_02F( var_5._ID31388 ) && var_5._ID31388 == "switch_light_grid" )
            var_5 _meth_83FC( var_1 );
    }

    var_clear_2
    var_clear_0
}

start_hides_map()
{
    level endon( "gas_station_truck_spawned" );

    for (;;)
    {
        _ID42237::_ID14413( "hide_map" );
        _func_0DB( "ui_hidemap", 1 );
        _ID42237::_ID14426( "hide_map" );
        _func_0DB( "ui_hidemap", 0 );
    }
}

_ID47532()
{
    wait 0.5;
    var_0 = _func_06A( "script_origin", self._ID740 );
    var_0._ID1193 = "fake_sentry_owner";
    self._ID743 = var_0;

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( _func_1B3( var_1 ) )
            break;
    }

    self._ID743 = var_1;
}

_ID50715()
{
    _ID42411::_ID40197( "spotlight spotlight_turret" );
}

_ID50832()
{
    _ID42475::_ID34575( "start_latvee_checkpoint" );
    maps\invasion_lighting::_ID47921( "latvee" );
    thread _unknown_12C3();
}

_ID48210()
{
    _ID42475::_ID34575( "start_bmp_checkpoint" );
    var_0 = _ID42237::_ID16638( "start_yards", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    level._ID44703 = 1;
}

_ID46964()
{
    _ID42475::_ID34575( "start_yards_checkpoint" );
    maps\invasion_lighting::_ID47921( "yards" );
    var_0 = _ID42237::_ID16638( "start_yards", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_yards_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    thread _unknown_1565();
}

_ID44993()
{
    _ID42475::_ID34575( "start_bmp_checkpoint" );
    maps\invasion_lighting::_ID47921( "bmp" );
    var_0 = _ID42237::_ID16638( "start_bmp", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_bmp_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    thread _unknown_1601();
}

_ID47636()
{
    _ID42475::_ID34575( "start_pizza_checkpoint" );
    maps\invasion_lighting::_ID47921( "pizza" );
    var_0 = _ID42237::_ID16638( "start_pizza", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_pizza_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "spawn_nates_attackers_in_alley" );
    thread _unknown_1D5A();
    thread _unknown_16AA();
}

_ID46963()
{
    _ID42475::_ID34575( "start_gas_checkpoint" );
    maps\invasion_lighting::_ID47921( "gas_station" );
    var_0 = _ID42237::_ID16638( "start_gas_station", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_gas_station_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42407::_ID1805( "BT_attackers_trigger" );
    thread _unknown_173E();
}

_ID35711()
{
    _ID42475::_ID34575( "start_crash_checkpoint" );
    maps\invasion_lighting::_ID47921( "crash" );
    var_0 = _ID42237::_ID16638( "start_crash", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_crash_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    thread _unknown_35F5();
    thread _unknown_23A2();
    level._ID48510 _ID42407::_ID32315( "g" );
    level._ID52761 _ID42407::_ID32315( "y" );
    _ID42407::_ID1805( "move_to_wells_intro" );
    _ID42237::_ID14402( "leaving_gas_station" );
    wait 1;
    thread _unknown_1810();
}

_ID48562()
{
    _ID42475::_ID34575( "start_nates_roof_checkpoint" );
    maps\invasion_lighting::_ID47921( "nates_roof" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    thread _unknown_2455();
    thread _unknown_2447();
    thread _unknown_194B();
    thread _unknown_36BA();
}

_ID44827()
{
    _ID42475::_ID34575( "start_nates_roof_checkpoint" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "sentry_in_position" );
    _ID42237::_ID14402( "crash_objective" );
    thread _unknown_24EA();
    thread _unknown_24DC();
    var_4 = _func_1A2( "magic_smoke_grenade", "targetname" );
    _ID42237::_ID3350( var_4, ::_unknown_2774 );
    thread _unknown_1EE5();
    thread _unknown_1A81();
}

_ID53424()
{
    _ID42475::_ID34575( "start_attack_dinner_checkpoint" );
    maps\invasion_lighting::_ID47921( "attack_diner" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    thread _unknown_2592();
    thread _unknown_2584();
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_1F81();
    thread _unknown_37FF();
    wait 0.1;
    thread _unknown_1B8B();
}

_ID44097()
{
    _ID42475::_ID34575( "start_btr80_smash_checkpoint" );
    maps\invasion_lighting::_ID47921( "start_btr80_smash" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A2( "secretservice_friendly", "targetname" );
    var_2 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_1[var_3]._ID740 = var_2[var_3]._ID740;
        var_1[var_3]._ID65 = var_2[var_3]._ID65;
        var_1[var_3] _ID42407::_ID35014();
    }

    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    thread _unknown_2637();
    thread _unknown_2629();
    level._ID43847 _meth_8058();
    level._ID44042 = 1;
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_2030();
    thread _unknown_1C31();
}

_ID52684()
{
    _ID42475::_ID34575( "start_diner_defend_checkpoint" );
    maps\invasion_lighting::_ID47921( "defend_diner" );
    var_0 = _ID42237::_ID16638( "start_diner", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_diner_taco", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_1 _ID42407::_ID35014();
    var_3 = _func_1A1( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3._ID740 = var_4[0]._ID740;
    var_3._ID65 = var_4[0]._ID65;
    var_3 _ID42407::_ID35014();
    thread _unknown_26EA();
    thread _unknown_26DC();
    _ID42237::_ID14402( "leaving_gas_station" );
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_2968();
    level._ID43847 _meth_8058();
    thread _unknown_396D();
    wait 0.1;
    thread _unknown_2C67();
    thread _unknown_1D39();
}

_ID53368()
{
    _ID42475::_ID34575( "start_diner_checkpoint" );
    _ID42237::_ID14400( "player_is_near_houses" );
    maps\invasion_lighting::_ID47921( "diner" );
    var_0 = _ID42237::_ID16638( "start_diner", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_diner_taco", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_1 _ID42407::_ID35014();
    var_3 = _func_1A1( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3._ID740 = var_4[0]._ID740;
    var_3._ID65 = var_4[0]._ID65;
    var_3 _ID42407::_ID35014();
    thread _unknown_27BF();
    thread _unknown_27B1();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_2A35();
    thread _unknown_2721();
    level._ID43847 _meth_8058();
    _ID42237::_ID14402( "nates_bomb_incoming" );
    _ID42407::_ID1805( "burger_town_enemy_defenders_trigger" );
    thread _unknown_29A7();
    thread _unknown_1E32();
}

_ID47009()
{
    _ID42475::_ID34575( "start_bergertown_checkpoint" );
    maps\invasion_lighting::_ID47921( "burgertown" );
    var_0 = _ID42237::_ID16638( "start_BT", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_1 _ID42407::_ID35014();
    var_3 = _func_1A1( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3._ID740 = var_4[0]._ID740;
    var_3._ID65 = var_4[0]._ID65;
    var_3 _ID42407::_ID35014();
    thread _unknown_288F();
    thread _unknown_2881();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_2B06();
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _unknown_27FA();
    level._ID43847 _meth_8058();
    _unknown_2752();
    _ID42234::_ID13611( 333 );
    thread _unknown_1F3B();
}

_ID53807()
{
    _ID42475::_ID34575( "start_vip_escort_checkpoint" );
    maps\invasion_lighting::_ID47921( "vip_escort" );
    var_0 = _ID42237::_ID16638( "start_vip_escort", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_1 _ID42407::_ID35014();
    var_3 = _func_1A1( "commander", "script_noteworthy" );
    var_4 = _ID42237::_ID16640( "start_roof_friendly", "targetname" );
    var_3._ID740 = var_4[0]._ID740;
    var_3._ID65 = var_4[0]._ID65;
    var_3 _ID42407::_ID35014();
    thread _unknown_295E();
    thread _unknown_2950();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_2BD4();
    _unknown_280E();
    _ID42234::_ID13611( 333 );
    thread _unknown_2BB9();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    var_5 = _func_0C8( "wells_in_bushes", "targetname" );
    level._ID51681 _meth_81B1( var_5 );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _unknown_28F1();
    level._ID43847 _meth_8058();
    thread _unknown_2041();
}

_ID46130()
{
    _ID42475::_ID34575( "start_defend_BT_checkpoint" );
    maps\invasion_lighting::_ID47921( "defend_BT" );
    var_0 = _ID42237::_ID16638( "start_BT", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_1 _ID42407::_ID35014();
    var_3 = _func_1A1( "commander", "script_noteworthy" );
    var_4 = _func_1A1( "president_in_burgertown_meat_locker", "targetname" );
    var_3._ID740 = var_4._ID740;
    var_3._ID65 = var_4._ID65;
    var_3 _ID42407::_ID35014();
    var_5 = _func_1A1( "president_BT_checkpoint", "script_noteworthy" );
    var_6 = _func_0C8( "BT_node_vip", "targetname" );
    level._ID28454 = var_5 _ID42407::_ID35014();
    level._ID28454 _ID44597::_ID52372( var_6 );
    thread _unknown_2854();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_2CDC();
    _unknown_2916();
    _ID42234::_ID13611( 333 );
    thread _unknown_2CC1();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _unknown_29E7();
    level._ID43847 _meth_8058();
    _ID42237::_ID14402( "president_in_BT_meat_locker" );
    thread _unknown_21AC();
}

_ID52113()
{
    _ID42475::_ID34575( "start_helis_checkpoint" );
    maps\invasion_lighting::_ID47921( "helis" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "taco", "script_noteworthy" );
    var_2 = _ID42237::_ID16638( "start_BT_taco", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_1 _ID42407::_ID35014();
    var_3 = _func_1A1( "commander", "script_noteworthy" );
    var_4 = _func_1A1( "president_in_burgertown_meat_locker", "targetname" );
    var_3._ID740 = var_4._ID740;
    var_3._ID65 = var_4._ID65;
    var_3 _ID42407::_ID35014();
    var_5 = _func_1A1( "president_BT_checkpoint", "script_noteworthy" );
    var_6 = _func_0C8( "BT_node_vip", "targetname" );
    level._ID28454 = var_5 _ID42407::_ID35014();
    level._ID28454 _ID44597::_ID52372( var_6 );
    thread _unknown_2953();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    thread _unknown_2DDB();
    _unknown_2A15();
    _ID42234::_ID13611( 333 );
    thread _unknown_2DC0();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _unknown_2AE6();
    level._ID43847 _meth_8058();
    _ID42237::_ID14402( "president_in_BT_meat_locker" );
    level._ID53096 = 3;
    _ID42237::_ID14402( "first_attack_heli_spawned" );
    thread _unknown_22B7();
}

_ID44873()
{
    _ID42475::_ID34575( "start_convoy_checkpoint" );
    maps\invasion_lighting::_ID47921( "convoy" );
    var_0 = _ID42237::_ID16638( "start_nates_roof", "targetname" );
    level._ID794 _meth_8343( var_0._ID740 );
    level._ID794 _meth_8345( var_0._ID65 );
    var_1 = _func_1A1( "commander", "script_noteworthy" );
    var_2 = _func_1A1( "president_in_burgertown_meat_locker", "targetname" );
    var_1._ID740 = var_2._ID740;
    var_1._ID65 = var_2._ID65;
    var_1 _ID42407::_ID35014();
    var_3 = _func_1A1( "president_BT_checkpoint", "script_noteworthy" );
    var_4 = _func_0C8( "BT_node_vip", "targetname" );
    level._ID28454 = var_3 _ID42407::_ID35014();
    level._ID28454 _ID44597::_ID52372( var_4 );
    thread _unknown_2A30();
    _ID42237::_ID14402( "crash_objective" );
    _ID42237::_ID14402( "sentry_in_position" );
    _unknown_2AEE();
    _ID42234::_ID13611( 333 );
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _unknown_2BBB();
    level._ID43847 _meth_8058();
    _ID42237::_ID14402( "president_in_BT_meat_locker" );
    thread _unknown_23EF();
}

_ID45232()
{
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "actionSlotsHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    level._ID794 _meth_8334( 1 );
    thread _ID42318::_ID20372( 5.3, 1 );
    var_0 = [];
    var_0[var_0.size] = &"INVASION_LINE1";
    var_0["date"] = &"INVASION_LINE2";
    var_0[var_0.size] = &"INVASION_LINE3";
    var_0[var_0.size] = &"INVASION_LINE4";
    var_0[var_0.size] = &"INVASION_LINE5";
    _ID42318::_ID20371( var_0 );
    wait 5;
    level._ID794 _meth_8345( ( 0, 180, 0 ) );
    level._ID794 _meth_8334( 0 );
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
    thread _unknown_1EC8();
    _ID42407::_ID4917( "allies" );
    thread _unknown_2D81();
    thread _ID42407::_ID24587( "mus_invasion_intro" );
    _ID42237::_ID14402( "flag_portal_beginning_east_wall" );
    _ID42237::_ID14402( "flag_portal_beginning_wall" );
    _ID42237::_ID14402( "flag_portal_suburban_east_wall" );
    _ID42237::_ID14402( "flag_portal_beginning_south_wall" );
    _ID42237::_ID14402( "flag_portal_road_east_wall" );
    wait 2.5;
    var_0 = _func_1A1( "first_flight", "script_noteworthy" );
    var_0 notify( "trigger" );
    var_0 _ID42237::_ID38863();
    wait 1.5;
    level._ID794 _meth_8328();
    level._ID51121 = _ID42411::_ID35196( "latvee_front" );
    level._ID51121._ID11584 = 1;
    var_1 = _func_06A( "script_origin", level._ID51121 _meth_818C( "tag_guy1" ) + ( 0, 0, 1 ) );
    var_1._ID65 = level._ID51121 _meth_818D( "tag_guy1" );
    var_1 _meth_8053( level._ID51121, "tag_guy1" );
    var_2 = _func_06A( "script_origin", level._ID51121 _meth_818C( "tag_passenger" ) + ( 0, 0, 1 ) );
    var_2._ID65 = level._ID51121 _meth_818D( "tag_passenger" );
    var_2 _meth_8053( level._ID51121, "tag_passenger" );
    var_3 = _func_1A1( "shotgun", "script_noteworthy" );
    var_3 _ID42407::_ID1947( maps\invasion_anim::_ID43813, var_1 );
    var_4 = _func_1A1( "backseat_right", "script_noteworthy" );
    var_4 _ID42407::_ID1947( maps\invasion_anim::_ID53447, var_2 );
    var_5 = _func_1A2( "latvee_blows_up_riders", "targetname" );
    _ID42237::_ID3350( var_5, _ID42407::_ID35014 );
    level._ID51831 = _ID42411::_ID35196( "latvee_player" );
    level._ID51831._ID11584 = 1;
    level._ID51831 thread maps\invasion_aud::_ID51834();
    level._ID51831 thread maps\invasion_aud::_ID48725( "scn_invasion_plr_laatpv_explode_01" );
    level._ID51121 thread maps\invasion_aud::_ID48725( "scn_invasion_npc_laatpv_explode_01" );
    thread _unknown_3FCC();
    thread _unknown_21B9();
    thread _unknown_21E1();
    thread _unknown_2238();
    thread _unknown_2112();
    _ID42237::_ID14413( "latvee_ride_roof_landing" );
    thread _unknown_37FE();
    _ID42237::_ID14413( "start_latvee_destroyer" );
    level._ID52761 _meth_81AF( 1 );
    level._ID48510 _meth_81AF( 1 );
    level._ID48076 _meth_81AF( 1 );
    level._ID48076 thread _ID42407::_ID22746();
    level._ID53691 = _ID42411::_ID35196( "latvee_destroyer" );
    level._ID53691._ID1274 = "constrained";
    level._ID53691 thread _unknown_3889();
    level._ID53691 thread maps\invasion_aud::_ID51834();
    wait 2;
    level._ID52761 thread _ID42407::_ID10805( "inv_six_gotbmp" );
    level._ID51831 _meth_828D( 0, 10 );
    _ID42475::_ID34575( "stop_plr_latvee_engine" );
    wait 1;
    _ID42407::_ID1805( "flee_latvee" );
    wait 1;
    level._ID52761 _meth_81AF( 1 );
    level._ID48510 _meth_81AF( 1 );
    level._ID48076 _meth_81AF( 1 );
    _ID42474::_ID4669( "exterior0" );
    thread _unknown_2D49();
    wait 1;
    _func_0DB( "compass", 1 );
    _func_0DB( "ammoCounterHide", 0 );
    _func_0DB( "actionSlotsHide", 0 );
    _func_0DB( "hud_showStance", 1 );
    level._ID52761 _meth_81AF( 1 );
    level._ID48510 _meth_81AF( 1 );
    level._ID48076 _meth_81AF( 1 );
    thread _unknown_231F();
}

jeep_ride_intro_cinematic()
{
    var_0 = _ID54167::_ID43386( "jeep_ride_intro" );
    var_0 _ID54167::_ID48800( 24.0 ) _ID54167::_ID50321( 3.5, -1, 8.0, 8.0 ) _ID54167::_ID52391( level._ID794.m_player_rig1, "tag_dof" ) _ID54167::_ID44545( 1 ) _ID54167::_ID44956();
    var_0 _ID54167::_ID48800( 29.5 ) _ID54167::_ID48959();
    var_0 _ID54167::_ID48800( 0.1 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.0, 0.0, 0.0, -7, 7, 2, -2 );
    var_0 _ID54167::_ID48800( 1.0 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.0, 0.0, 0.0, 70, 88, 17, 30 ) _ID54167::_ID43376( ::_meth_85AA, level._ID794, 90, -6, 0, 180 ) _ID54167::_ID43376( ::_meth_80AA, level._ID794, 50, 50, 20, 20 );
    var_0 _ID54167::_ID48800( 21.5 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 1.0, 0.5, 0.5, -5, 35, 0.0, 0.0 );
    var_0 _ID54167::_ID48800( 24.0 ) _ID54167::_ID43376( ::_meth_80A9, level._ID794, 0.5, 0.25, 0.25, 0.0, 0.0, 0.0, 0.0 );
    var_0 _ID54167::_ID48800( 0.15 ) _ID54167::_ID47844( 2 );
    var_0 _ID54167::_ID48800( 24.0 ) _ID54167::_ID47844( 0 );
    var_1 = 0.075;
    var_2 = 2.0;
    var_3 = 10000;
    var_4 = level._ID794;
    var_5 = 26.5;

    for ( var_6 = 0.0; var_6 <= var_5; var_6 += 0.5 )
        var_0 _ID54167::_ID48800( var_6 ) _ID54167::_ID47198( var_1, var_2, var_4, var_3 );

    var_0 _ID54167::_ID48800( 21.45 ) _ID54167::_ID47198( 0.08, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 22.0 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 23.4 ) _ID54167::_ID47198( 0.14, 1.5, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.25 );
    var_0 _ID54167::_ID48800( 24.15 ) _ID54167::_ID47198( 0.08, 0.3, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.1 );
    var_0 _ID54167::_ID48800( 24.85 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_0 _ID54167::_ID48800( 26.55 ) _ID54167::_ID47198( 0.1, 0.7, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.15 );
    var_0 _ID54167::_ID48166();
}

jeep_ride_intro_team_members()
{
    level._ID48510 = _ID42407::_ID35150( "taco", 1 );
    level._ID52761 = _ID42407::_ID35150( "commander", 1 );
    level._ID48076 = _ID42407::_ID35150( "worm", 1 );
    var_0 = [ level._ID48510, level._ID52761, level._ID48076 ];
    level._ID51831 _ID42259::_ID3016( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    _ID42237::_ID3294( var_0, ::_meth_8053, level._ID51831, "body_animate_jnt" );
    level._ID51831 thread _ID42259::_ID3099( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    level._ID51831 waittill( "jeep_ride_intro_unlink" );
    _ID42237::_ID3294( var_0, ::_meth_8055 );
}

jeep_ride_intro_player()
{
    level._ID794 _meth_80F6();
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    var_0 = _ID42407::_ID35028( "viewbody", level._ID794._ID740, level._ID794._ID65 );
    level._ID794.m_player_rig1 = var_0;
    level._ID51831 _ID42259::_ID3018( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    var_0 _meth_8053( level._ID51831, "body_animate_jnt" );
    _ID42407::_ID3567( var_0 );
    level._ID794 _meth_8084( var_0, "tag_player", 1.0, 0, 0, 0, 0 );
    level._ID51831 thread _ID42259::_ID3111( var_0, "invasion_intro_jeepride", "body_animate_jnt" );
    level._ID51831 _ID42407::_ID1985( _ID42407::_ID41116, "jeep_ride_intro_unlink" );
    var_0 _ID42407::_ID1855( ::_meth_8055 );
    thread _ID42407::_ID11231();
    var_1 = 0.5;
    var_2 = var_0 _ID42407::_ID16120( "invasion_intro_jeepride" );
    wait(_func_067( var_2 ) - var_1);
    var_3 = _func_06A( "script_origin", level._ID51831 _meth_818C( "body_animate_jnt" ) );
    var_3._ID65 = level._ID51831 _meth_818D( "body_animate_jnt" );
    var_0 thread _ID42259::_ID46741( "player_anim_height", var_2, 0.0, var_3 );
    wait(var_1);
    var_0 notify( "player_anim_height" );
    level._ID794 _meth_8055();
    var_0 _meth_80B7();
    level._ID43135.greenberet_disabled = undefined;
    thread _ID49347::weapons_specialfeatures( 1 );
    level._ID794 _meth_80F3( 0 );
    level._ID794 _meth_8122( 1 );
    level._ID794 _meth_8123( 1 );
    level._ID794 _meth_8329();
}

jeep_ride_intro_unlink()
{
    while ( level._ID51831._ID1276 == 0.0 )
        waittillframeend;

    while ( level._ID51831._ID1276 > 0.0 )
        waittillframeend;

    level._ID51831 notify( "jeep_ride_intro_unlink" );
}

_ID51360()
{
    _ID42407::_ID4917( "allies" );
    var_0 = _func_1A1( "roof_parachute_landing_guy_yards", "targetname" );
    _ID42237::_ID14413( "entering_yards" );
    _ID42407::_ID4422( "yards" );

    if ( _func_1A7( level._ID48076 ) )
    {
        if ( _func_02F( level._ID48076._ID22746 ) )
            level._ID48076 thread _ID42407::_ID36519();
    }

    level._ID52761 _meth_81AF( 0 );
    level._ID48510 _meth_81AF( 0 );

    if ( _func_1A7( level._ID48076 ) )
        level._ID48076 _meth_81AF( 0 );

    thread _unknown_3208();
    level._ID51302 = var_0 _ID42407::_ID35014();
    level._ID51302._ID511 = 1;
    thread _unknown_319D();
    thread _unknown_275B();
}

_ID51420()
{
    _ID42237::_ID14413( "start_house_destroyer" );
    _ID42407::_ID4422( "hd" );
    thread _unknown_2E4C();
    _ID42237::_ID14400( "house_destroyer_unloading" );
    level._ID44615 = _ID42411::_ID35195( "house_destroyer" );
    level._ID44615 thread _unknown_3E88();
    thread _unknown_3755();
    _ID42237::_ID14413( "got_visual_on_crash" );
    level._ID52761 _ID42407::_ID10805( "inv_six_viscrashsite" );
    _ID42407::_ID4918( "allies" );
    thread _unknown_33EF();
    thread _unknown_408A( "house_destroyer_unloading" );
    thread _ID46372();
    thread _unknown_3833();
    thread _unknown_37FC();
    thread _unknown_3478();
    thread _unknown_27F3();
}

_ID51617()
{
    thread _unknown_37A8();
    _ID42237::_ID14402( "flag_staticmodelgroup_6" );
    _ID42237::_ID14413( "gas_station_truck_spawned" );
    thread _ID42407::_ID32188( "invasion_ext3" );
    thread _unknown_37AA();
    thread _unknown_40CC( "leaving_gas_station" );
    _func_0DB( "ai_perf_maximumPathfGenerationLookaheadAttempts", "1" );
    level.battlechattermaxcanseeperframe = 5;
    thread _unknown_2846();
}

_ID52718()
{
    _ID42237::_ID14413( "leaving_gas_station" );
    thread _unknown_46F8();
    thread _unknown_4687();
    thread _unknown_4675();
    thread _unknown_46A3();
    var_0 = _func_1A1( "burning_tree", "script_noteworthy" );
    var_0 notify( "stop_burning_tree" );
    level._ID53339 = "north";
    thread _unknown_34B7();
    thread _unknown_3985();
    thread _unknown_357D();
    thread _unknown_34CA();
    thread _unknown_34BF();
    thread _unknown_347D();

    if ( !_func_02F( level._ID51681 ) )
    {
        var_1 = _func_1A1( "wells", "script_noteworthy" );
        var_1 _ID42407::_ID35014();
    }

    _ID42407::_ID1805( "advance_towards_nates" );
    _ID42237::_ID14413( "goto_wells_intro" );
    thread _unknown_39BB();
    thread _unknown_28F1();
}

_ID50117()
{
    if ( !_func_02F( level._ID51681 ) )
    {
        var_0 = _func_1A1( "wells", "script_noteworthy" );
        var_0 _ID42407::_ID35014();
    }

    thread _unknown_293A();
    level._ID48510 _ID42407::_ID32315( "g" );
    _ID42407::_ID1805( "move_to_wells_intro" );
    var_1 = _func_1A2( "bank_nates_attackers", "targetname" );
    var_2 = var_1;

    for ( var_5 = _func_1DA( var_2 ); _func_02F( var_5 ); var_5 = _func_1BF( var_2, var_5 ) )
    {
        var_3 = var_2[var_5];
        var_4 = var_3 _ID42407::_ID35014();
    }

    var_clear_3
    var_clear_0
    _ID42237::_ID14413( "crash_objective" );
    _ID42407::_ID4422( "crash_site" );
    level._ID53339 = "north";
    thread _unknown_42ED();
    thread _unknown_2A1B();
}

_ID47840()
{
    var_0 = _ID42237::_ID16638( "police_car_moment", "script_noteworthy" );
    _func_020( "police_car_moment", -1, var_0._ID740, 600, 300, "axis" );
    var_0 thread _ID42259::_ID3025( level._ID51681, "invasion_vehicle_cover_dialogue_guy1_idle", "stop_invasion_vehicle_cover_dialogue_guy1_idle" );
    level._ID52761 _ID42407::_ID10871();
    var_0 _ID42259::_ID3027( level._ID52761, "invasion_vehicle_cover_dialogue_guy2" );
    level._ID52761._ID452 = 15;
    _ID42237::_ID14413( "crash_objective" );

    while ( _func_22D( level._ID52761._ID740, level._ID52761._ID451 ) > level._ID52761._ID452 * level._ID52761._ID452 )
        waittillframeend;

    level._ID52761._ID452 = level._ID10115;
    thread _unknown_2A4F();
    var_0 notify( "stop_invasion_vehicle_cover_dialogue_guy1_idle" );
    var_0 thread _ID42259::_ID3020( level._ID51681, "invasion_vehicle_cover_dialogue_guy1" );
    var_0 _ID42259::_ID3020( level._ID52761, "invasion_vehicle_cover_dialogue_guy2" );
    thread _unknown_39A9();
    _func_01F( "police_car_moment" );
}

_ID51573()
{
    if ( _ID42237::_ID14385( "player_on_roof" ) )
        return;

    level endon( "player_on_roof" );
    thread _ID42407::_ID4917( "allies" );
    _ID42237::_ID14413( "notetrack_gimmesitrep" );
    level._ID52761 _meth_80A1( "inv_six_gimmesitrep" );
    _ID42237::_ID14413( "notetrack_meatlocker" );
    level._ID51681 _meth_80A1( "inv_sgw_meatlocker" );
    _ID42237::_ID14413( "notetrack_status" );
    level._ID52761 _meth_80A1( "inv_six_status" );
    _ID42237::_ID14413( "notetrack_unconscious" );
    level._ID51681 _meth_80A1( "inv_sgw_unconscious" );
    _ID42237::_ID14413( "notetrack_whatelse" );
    level._ID52761 _meth_80A1( "inv_six_whatelse" );
    _ID42237::_ID14413( "notetrack_checkout" );
    thread _unknown_3A21();
    _ID42237::_ID14413( "notetrack_supplydrop" );
    level._ID51681 _meth_80A1( "inv_sgw_supplydrop" );
    _ID42237::_ID14413( "notetrack_sentrygunsouth" );
    level._ID52761 _meth_80A1( "inv_six_sentrygunsouth" );
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
    thread _unknown_30ED();
    thread _unknown_3A76();
    thread _unknown_3081();
    _ID42237::_ID14413( "player_on_roof" );
    thread _ID42407::_ID4918( "allies" );
    level._ID53339 = "south";
    var_0 = _func_1A1( "nates_roof_volume_south", "targetname" );
    var_1 = _func_0DE( "allies" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_2 == 5 )
            break;

        var_1[var_2]._ID450 = 80;
        var_1[var_2]._ID452 = 500;
        var_1[var_2]._ID381 = 0;
        var_1[var_2] _meth_81B2( var_0._ID740 );
        var_1[var_2] _meth_81B4( var_0 );
    }

    _func_0DB( "ai_pathReduceLookaheadBadplaceOnPathCreation", 1 );
    _func_0DB( "ai_pathAlwaysCheckBadplace", 1 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_1[var_2]._ID43561 = var_1[var_2]._ID219;
        var_1[var_2]._ID219 = 4000;
    }

    level._ID52761._ID450 = 80;
    level._ID52761._ID452 = 500;
    level._ID52761._ID381 = 0;
    level._ID52761 _meth_81B2( var_0._ID740 );
    level._ID52761 _meth_81B4( var_0 );
    level._ID48510._ID450 = 80;
    level._ID48510._ID452 = 500;
    level._ID48510._ID381 = 0;
    level._ID48510 _meth_81B2( var_0._ID740 );
    level._ID48510 _meth_81B4( var_0 );
    thread _unknown_4AF1();
    _ID42237::_ID14402( "bank_guys_retreat" );
    wait 3;
    var_3 = _func_0DE( "axis" );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 thread _unknown_3E2F();
    }

    var_clear_2
    var_clear_0
    level._ID52202 = 0;
    level._ID44194 = 0;
    level._ID53305 = 0;
    var_7 = thread _ID42411::_ID35196( "truck_group_left" );
    var_7._ID1274 = "constrained";
    var_7 thread maps\invasion_aud::_ID51834();
    wait 0.1;
    var_8 = thread _ID42411::_ID35196( "truck_group_right" );
    var_8._ID1274 = "constrained";
    var_8 thread maps\invasion_aud::_ID51834();
    var_9 = _func_1A2( "magic_smoke_grenade", "targetname" );
    _ID42237::_ID3350( var_9, ::_unknown_3A96 );
    thread _unknown_3AAA();
    _ID42407::_ID28864( "inv_six_headsupladies" );
    thread _unknown_3867();
    wait 1;

    while ( level._ID44194 > 5 )
        wait 1;

    _ID42407::_ID4422( "trucks_to_north" );
    thread _unknown_2DC5();
}

_ID53064()
{
    level._ID53339 = "north";
    var_0 = _func_1A2( "magic_smoke_grenade_north", "targetname" );
    _ID42237::_ID3350( var_0, ::_unknown_3ADC );
    level._ID52202 = 0;
    level._ID53305 = 0;
    var_1 = thread _ID42411::_ID35196( "truck_north_right" );
    var_1._ID1274 = "constrained";
    wait 0.1;
    var_2 = thread _ID42411::_ID35196( "truck_north_left" );
    var_2._ID1274 = "constrained";
    thread _unknown_37F3();
    _ID42407::_ID28864( "inv_tco_incomingnorth" );
    _ID42407::_ID28864( "inv_six_rogerthat" );
    thread _unknown_3320();
    _ID42237::_ID14402( "northside_roof" );
    wait 6;
    _ID42407::_ID28864( "inv_tco_contactnorth" );
    _ID42407::_ID28864( "inv_six_contactsn" );
    _ID42407::_ID28864( "inv_six_shiftfiren" );
    thread _unknown_32B6();

    while ( level._ID44194 > 5 )
        wait 1;

    level._ID53339 = "west";
    _ID42237::_ID14402( "truck_guys_retreat" );
    wait 6;
    _ID42407::_ID4422( "truck_retreat" );
    var_3 = _func_0C9( "south_side_nodes", "targetname" );
    var_4 = 0;
    var_5 = _func_1A1( "nates_roof_volume_south", "targetname" );
    var_6 = _func_0DE( "allies" );

    for ( var_7 = 0; var_7 < var_6.size; var_7++ )
    {
        if ( _ID42237::_ID8201() )
        {
            if ( var_4 >= var_3.size )
                break;

            var_6[var_7]._ID381 = 0;
            var_6[var_7] _meth_81B1( var_3[var_4] );
            var_6[var_7] _meth_81B4( var_5 );
            var_4++;
        }
    }

    _ID42407::_ID28864( "inv_six_hadenough" );
    _ID42407::_ID28864( "inv_six_sitreponraptor" );
    _ID42407::_ID28864( "inv_tco_secureandstable" );
    _ID42407::_ID28864( "inv_six_checkammo" );
    _unknown_3A91();
    thread _unknown_4C06();
    thread _unknown_2F56();
}

_ID54570()
{
    level._ID53339 = "west";

    if ( _func_02F( level._ID44042 ) )
        thread _unknown_33DD();

    thread _unknown_3BD5();
    thread _unknown_3C7C();
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_81B7();
        var_2._ID219 = var_2._ID43561;
    }

    var_clear_2
    var_clear_0
    thread _unknown_386D();
    var_4 = _func_0C8( "taco_scopes_diner", "targetname" );

    if ( _func_02F( var_4 ) )
        level._ID48510 _meth_81B1( var_4 );

    thread vip_escort_convoy();
    _ID42237::_ID14426( "player_on_roof" );
    _ID42237::_ID14402( "diner_attack" );
    var_5 = _unknown_3F42();
    thread _unknown_3D77();
    thread _unknown_3BD3();
    level _ID42407::_ID1985( _ID42237::_ID14413, "player_inside_nates" );
    level _ID42407::_ID1890( _ID42407::_ID4422, "go_to_diner" );
    level thread _ID42407::_ID11231();
    thread _unknown_3CB0();
    thread _unknown_394A();
    thread _unknown_3043();
}

_ID44915()
{
    _ID42237::_ID14413( "player_has_predator_drones" );
    level._ID53339 = "east";
    thread _unknown_343C();
    _ID42407::_ID4422( "has_drones" );
    _ID42407::_ID1805( "burger_town_enemy_defenders_trigger" );
    thread _unknown_3C06();
    thread _unknown_3B0F();
    thread _unknown_3527();
    _ID42237::_ID14413( "bmp_north_left_dead" );
    _ID42237::_ID14413( "bmp_north_mid_dead" );
    thread _unknown_3A49();
    thread _unknown_30B0();
    _ID42237::_ID14421( "player_outside_nates_killzone", "move_president_to_prep" );
    wait 1;
    _ID42407::_ID4422( "bmps_destroyed" );
}

_ID52369()
{
    _ID42237::_ID14413( "leaving_diner" );
    _ID42237::_ID14402( "nates_bomb_incoming" );
    thread _unknown_4D59();
    _unknown_38F4();
    level._ID53339 = "south";
    var_0 = _func_0C8( "taco_in_BT", "script_noteworthy" );
    var_1 = var_0._ID740;
    var_2 = _func_1A1( "BT_goal_volume", "targetname" );
    var_3 = 3;
    level._ID50569 = _unknown_3C6E( var_3 );
    var_4 = level._ID50569;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 thread _unknown_3748( "player_in_burgertown", var_1, var_2 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "move_president_to_prep" );
    thread _unknown_3DB2();
    thread _unknown_3C31();
    level _ID42407::_ID1985( _ID42237::_ID14413, "player_in_burgertown" );
    level _ID42407::_ID1890( _ID42407::_ID4422, "player_in_burgertown" );
    level thread _ID42407::_ID11231();
    _ID42237::_ID14413( "burger_town_lower_cleared" );
    _ID42407::_ID4422( "burgertown_cleared" );
    thread _unknown_31B0();
}

_ID45464()
{
    _ID42237::_ID14402( "move_president_to_prep" );
    level._ID53339 = undefined;
    wait 3;
    thread _unknown_3D85();
    _ID42237::_ID14402( "taco_goes_to_roof" );
    _ID42237::_ID14402( "time_to_clear_burgertown" );
    var_0 = _func_0C8( "wells_in_bushes", "targetname" );
    level._ID51681 _meth_81B1( var_0 );
    var_1 = _func_1A2( "nates_regroup_enemies", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );
    thread _unknown_3217();
}

_ID45201()
{
    _ID42237::_ID14402( "move_president_to_prep" );
    var_0 = _func_1A1( "BT_goal_volume", "targetname" );
    var_1 = _func_1A1( "president_in_burgertown_meat_locker", "targetname" )._ID740;
    var_2 = 3;
    level._ID50569 = _unknown_3D52( var_2 );
    var_3 = level._ID50569;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4.offsetdirection = undefined;
        var_4 thread _unknown_3DC9( var_1, var_0 );
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID4422( "defend_prez" );
    wait 1;
    _ID42407::_ID28864( "inv_six_lockandload" );
    wait 5;
    _ID42237::_ID14430( "player_in_burgertown", 6 );
    thread _unknown_3B99();
    var_6 = _func_1A1( "president_in_burgertown_meat_locker", "targetname" );
    level._ID28454 _meth_817D();
    level._ID52761 _meth_81AF( 1 );
    level._ID52761._ID11568 = 1;
    var_7 = level._ID52761._ID107;
    level._ID52761._ID107 = 0;
    _func_0DB( "ai_ignoreBadPlaceDuringPathing", 1 );
    var_8 = _func_1A1( "wounded_carry_path", "targetname" );
    level._ID52761 thread _unknown_3391( var_8 );
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
    level._ID52761 thread _unknown_3A92();
    thread _unknown_3C58();
    thread _unknown_3C14();
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    thread _unknown_3A50();
    thread _unknown_33A4( var_7 );
    level._ID52187 = undefined;
    thread _unknown_33B2();
}

restore_raptor_state( var_0 )
{
    wait 5;
    level._ID52761._ID107 = var_0;
    _func_0DB( "ai_ignoreBadPlaceDuringPathing", 0 );
}

_ID50037()
{
    thread _unknown_34E9();
    thread _unknown_3AC3();
    _unknown_43A8();
    thread _unknown_39B5();
    thread _unknown_38EA();
    _ID42237::_ID14413( "first_attack_heli_spawned" );
    var_0 = _ID42411::_ID35196( "kill_heli" );
    var_0._ID7544 = 1;
    var_0._ID24819 = 1;
    level._ID47105 = thread _ID42508::_ID4977( var_0 );
    level._ID47105 thread _ID42407::_ID27081( "scn_havok_heli_arrival_01" );
    thread _unknown_3845();
    thread _unknown_3E5C();
    var_1 = undefined;

    if ( _func_1A7( level._ID47105 ) )
        level._ID47105 waittill( "death",  var_1  );

    _ID42237::_ID14402( "first_attack_heli_dead" );

    if ( _func_02F( var_1 ) && _func_1B3( var_1 ) )
        thread _unknown_3842();

    thread _ID42407::_ID4422( "heli_death" );
    _ID42237::_ID14413( "second_attack_heli_spawned" );
    var_0 = _ID42411::_ID35196( "kill_heli" );
    var_0._ID7544 = 1;
    var_0._ID24819 = 1;
    level._ID47105 = thread _ID42508::_ID4977( var_0 );
    level._ID47105 thread _ID42407::_ID27081( "scn_havok_heli_arrival_02" );
    thread _unknown_3EC1();
    thread _unknown_3921();
    var_1 = undefined;

    if ( _func_1A7( level._ID47105 ) )
        level._ID47105 waittill( "death",  var_1  );

    _ID42237::_ID14402( "second_attack_heli_dead" );

    if ( _func_02F( var_1 ) && _func_1B3( var_1 ) )
        thread _unknown_38AB();

    thread _ID42407::_ID4422( "heli_death" );
    wait 12;
    thread _unknown_3526();
}

president_move_wrapper( var_0 )
{
    level._ID52761 _ID44597::_ID44201( level._ID28454, var_0 );
    _ID42407::_ID32336( self._ID740 );
}

_ID44741()
{
    thread _unknown_3533();
    _ID42237::_ID14413( "player_at_convoy" );
    _ID42407::_ID24584( 3 );
    level._ID794 _meth_80A1( "mus_invasion_ending" );
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
    var_1 = _func_1A2( "convoy", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3._ID922 ) )
            continue;

        if ( var_3._ID922 == "obj_vehicle" )
            var_0 = var_3;
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( var_0 ) )
    {
        while ( _ID42407::_ID27540( var_0._ID740, 0, 1 ) && _ID42237::_ID14385( "player_on_roof" ) )
            wait 1;
    }

    thread _unknown_35DB();
    maps\invasion_anim::convoy_latvee_remap_dismount_anims();
    var_5 = _ID42237::_ID16640( "convoy_targets", "targetname" );
    var_6 = [];
    thread _unknown_39A4();
    var_7 = var_1;

    for ( var_12 = _func_1DA( var_7 ); _func_02F( var_12 ); var_12 = _func_1BF( var_7, var_12 ) )
    {
        var_3 = var_7[var_12];
        var_8 = var_3 thread _ID42411::_ID35194();
        var_8 thread _unknown_3993( var_5 );
        var_8 thread _unknown_382A();
        var_8 thread maps\invasion_aud::_ID51834();

        if ( _func_02F( var_3._ID922 ) )
        {
            var_6[var_6.size] = var_8;

            if ( var_3._ID922 == "obj_vehicle" )
                level._ID47128 = var_8;

            var_8 _ID42411::vehicle_set_random_unload_delays( 0, 0.5 );

            if ( var_3._ID922 == "latvee" )
            {
                var_9 = var_8._ID3575;

                for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
                {
                    var_10 = var_9[var_11];
                    var_10.vehicle_anim_ends_on_finish = 1;
                }

                var_clear_2
                var_clear_0
            }

            if ( _func_02F( var_3._ID31388 ) && var_3._ID31388 == "convoy_unload" )
                var_8 thread _unknown_3748();
        }
    }

    var_clear_2
    var_clear_0
    _func_0DB( "ai_count", 64 );
    thread _unknown_379B();
    level._ID47128 thread _unknown_3791();
    _ID42237::_ID14402( "time_to_goto_convoy" );
    var_13 = _func_0DE( "axis" );
    var_14 = var_13.size;

    if ( var_14 < 12 )
    {
        var_15 = _func_1A2( "wounded_carry_attackers_TC", "targetname" );
        _ID42237::_ID3350( var_15, _ID42407::_ID35014 );
    }

    if ( var_14 < 6 )
    {
        var_16 = _func_1A2( "wounded_carry_attackers_gas", "targetname" );
        _ID42237::_ID3350( var_16, _ID42407::_ID35014 );
    }

    _ID42237::_ID14413( "convoy_has_arrived" );

    if ( !_func_02F( level._ID47128._ID39936 ) )
        level._ID47128._ID39936 = [];

    level._ID47128._ID39936[0] = 1;
    level._ID47128._ID39936[3] = 1;
    _ID42237::_ID14402( "convoy_in_position" );
    _ID42237::_ID14413( "player_at_convoy" );
    thread _unknown_3948( var_6 );
    thread _unknown_3852();
    _ID42407::_ID32515( "invasion_near_convoy", 3 );
    thread _unknown_3920();
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
        level._ID794 waittill( "begin_firing" );
        var_0 = level._ID794 _meth_831C();

        if ( var_0 == "stinger" )
        {
            if ( level._ID794 _meth_834B() == 1.0 )
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
    var_0 = level._ID794 _meth_831C();

    if ( var_0 == "stinger" )
    {
        if ( level._ID794 _meth_834B() == 1.0 )
            return 1;
        else
            return 0;
    }
    else
        return 1;
}

h2_ending_spawn_weapon()
{
    self.weapon_convoy = _ID42407::_ID35028( "h2_laatpv_ending_weapon", self _meth_818C( "tag_guy1" ), self _meth_818D( "tag_guy1" ) );
    _ID42259::_ID3018( self.weapon_convoy, "h2_laatpv_outro_in", "tag_guy1" );
    self.weapon_convoy _meth_8053( self, "tag_guy1" );
}

prepareplayerlaatpv()
{
    var_0 = _func_1A1( "convoy_driver", "targetname" );
    var_1 = var_0 _ID42407::_ID35014();
    var_1 _ID42407::_ID17509();
    var_1 _meth_81D2( level._ID47128 _meth_818C( "tag_driver" ), level._ID47128._ID65 );
    var_1 _meth_8053( level._ID47128, "tag_driver" );
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
        if ( var_0._ID1276 == 0 )
            break;

        wait 0.5;
    }

    var_1 = var_0 _meth_818C( "tag_guy1" );
    var_2 = 7225;

    for (;;)
    {
        var_3 = _func_0F5( var_1, level._ID794._ID740 );

        if ( var_3 <= var_2 )
            break;

        wait 0.05;
    }

    level._ID794 _meth_80A1( "scn_invasion_plr_get_in_laatpv" );
    level._ID794 _meth_81F1( 0 );
    level._ID794 _meth_8122( 0 );
    level._ID794 _meth_8123( 0 );
    wait 0.25;
    level._ID794 _meth_8328( 1 );

    for (;;)
    {
        var_4 = _func_093( level._ID794._ID740, 2 );

        if ( _func_0F5( var_4, level._ID794._ID740 ) < 4 )
            break;

        waittillframeend;
    }

    _unknown_4E99( "obj_convoy", "done" );
    _func_0DB( "hud_showStance", 0 );
    _func_0DB( "compass", 0 );
    _func_0DB( "actionSlotsHide", "1" );
    _func_0DB( "ammoCounterHide", "1" );
    var_5 = var_0.weapon_convoy;
    var_6 = _ID42407::_ID35028( "viewbody", var_0 _meth_818C( "tag_guy1" ), var_0 _meth_818D( "tag_guy1" ) );
    var_6 _meth_805A();
    var_6 _meth_8095();
    var_0 _ID42259::_ID3018( var_6, "h2_laatpv_outro_in", "tag_guy1" );
    var_6 _meth_8053( var_0, "tag_guy1" );
    var_6 _ID42407::_ID22172( level._ID794, "tag_player", 0.5, 1, 0, 0, 0, 0 );
    level._ID794 _meth_8084( var_6, "tag_player", 1, 0, 0, 0, 0, 1 );
    thread _unknown_3B42( var_6 );
    var_6 _meth_8059();
    _ID42237::_ID14402( "playerStartConvoy" );
    var_0 thread _ID42259::_ID3111( var_5, "h2_laatpv_outro_in", "tag_guy1" );
    var_0 _ID42259::_ID3111( var_6, "h2_laatpv_outro_in", "tag_guy1" );
    level._ID794 _meth_8084( var_6, "tag_player", 1, 50, 30, 30, 30, 1 );
    level._ID794 _meth_80AA( 50, 50, 20, 20 );
    level._ID794 _meth_85AA( 90, -12, 0, 180 );
    var_5 _meth_80B7();
    var_6 _meth_801D( "h2_weapon_scar_h_reflex", "tag_weapon_right" );
    var_0 thread _ID42259::_ID3044( var_6, "h2_laatpv_outro_loop", undefined, "tag_guy1" );
    _ID42237::_ID14402( "player_in_latvee" );
}

player_at_convoy_cinematic( var_0 )
{
    var_1 = _ID54167::_ID43386( "player_at_convoy" );
    var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 5.0, -1, 32, 32 ) _ID54167::_ID52391( var_0, "tag_dof" ) _ID54167::_ID44956();
    var_1 _ID54167::_ID48800( 2.95 ) _ID54167::_ID48959();
    var_1 _ID54167::_ID48800( 0.4 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48800( 1.95 ) _ID54167::_ID47198( 0.06, 0.4, level._ID794, 10000 ) _ID54167::_ID48161( "tank_rumble", level._ID794, 0.05 );
    var_1 _ID54167::_ID48166();
}

vip_escort_convoy()
{
    var_0 = _func_1A2( "ending_convoy_friendly", "targetname" );
    _ID42237::_ID14426( "player_is_near_BT_locker_door" );
    thread _unknown_416D();
    level._ID28454 _meth_817D();
    level._ID52761 _meth_81AF( 1 );
    level._ID52761._ID11568 = 1;
    var_1 = _func_1A1( "wounded_carry_path_convoy", "targetname" );
    level._ID52761 _ID42407::_ID17509();
    level._ID52761 thread _ID44597::_ID44201( level._ID28454, var_1 );
    level._ID52761._ID24424 = 1.0;
    level._ID52187 = 1;
    level._ID28454 thread _ID42407::_ID27081( "scn_invasion_raptor_civ_grab", undefined );
    _ID42237::_ID3350( var_0, ::_unknown_5533, var_1 );
    _ID42237::_ID14413( "player_in_latvee" );
    var_2 = _func_1A1( "foley_outside_playerview", "targetname" );

    if ( level._ID52761 _meth_80B0( var_2 ) )
    {
        var_3 = _func_0C8( "foley_teleport_convoy", "targetname" );
        level._ID52761 _ID42407::_ID37393( var_3 );
    }
}

_ID50151()
{
    _ID42407::_ID13024( "apply_brakes" );
    _ID42407::_ID13027( "apply_brakes" );
    self._ID1266 = 1;
}

_ID54237( var_0 )
{
    var_1 = _func_1A2( "friendly_redshirt", "script_noteworthy" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_0D4( var_3 ) )
        {
            if ( _func_1A8( var_3 ) )
            {
                var_3 _ID42407::_ID29571( ::_unknown_4081 );
                var_3 _ID42407::_ID29571( ::_unknown_40F2 );
            }
        }
    }

    var_clear_2
    var_clear_0
    level._ID47128._ID39936[3] = 1;
    var_5 = 54;
    var_6 = 4;
    var_7 = _func_0DD();

    for ( var_8 = var_0.size; var_8; var_7 = _func_0DD() )
    {
        if ( var_7 + var_6 > var_5 )
            return;

        var_9 = _unknown_3E35();
        var_10 = var_9;

        for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
        {
            var_11 = var_10[var_12];
            thread _ID42407::_ID17584( var_11, var_0[var_8 - 1] );
        }

        var_clear_2
        var_clear_0
        var_8--;
        wait 3;
    }
}

_ID46603()
{
    var_0 = "redshirt_spawn_group_BT";
    var_1 = _ID42237::_ID16640( var_0, "targetname" );
    var_2 = _ID42237::_ID16276( level._ID794._ID740, var_1 );
    var_3 = _func_1A2( var_2._ID1191, "targetname" );
    var_4 = [];
    var_5 = var_3;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( var_4.size < 3 )
        {
            var_6._ID216 = 1;

            if ( _func_0DD() < 54 )
            {
                var_4[var_4.size] = var_6 _ID42407::_ID35014();
                continue;
            }

            break;
        }
    }

    var_clear_2
    var_clear_0
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
    var_2 = _func_1A1( "enemies_on_roof", "targetname" );

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
    if ( _func_02F( self._ID922 ) )
    {
        if ( self._ID922 == "paradrop_guy_left" )
            return;

        if ( self._ID922 == "paradrop_guy_right" )
            return;
    }

    if ( _func_02F( self._ID29969 ) )
    {
        self endon( "death" );
        self waittill( "jumpedout" );
    }

    if ( !_func_02F( self._ID39468 ) )
        return;

    _ID48289::_ID53152();
}

_ID48382()
{
    var_0 = _func_1A1( "nates_roof_volume_south", "targetname" );
    var_1 = _func_1A1( "destroyed_nates_inaccessable_volume", "targetname" );
    var_2 = _func_1A1( "destroyed_nates_safe_volume", "targetname" );
    var_3 = _func_1A1( "raptor_in_nates_prep", "targetname" );
    var_4 = _func_0DE( "allies" );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];

        if ( var_6 _meth_80B0( var_1 ) || var_6 _meth_80B0( var_0 ) )
        {
            var_6._ID452 = 500;
            var_6 _meth_81B2( var_3._ID740 );
            var_6 _meth_81B4( var_2 );
            var_6._ID381 = 0;
        }
    }

    var_clear_2
    var_clear_0
    _func_022( "destroyed_nates_inaccessable_volume", -1, var_1, "allies", "axis" );
    _func_022( "nates_roof_volume_south", -1, var_0, "allies", "axis" );
    _ID42237::_ID14413( "nates_bomb_incoming" );
    _func_01F( "destroyed_nates_inaccessable_volume" );
    _func_01F( "nates_roof_volume_south" );
}

_ID44295()
{
    level endon( "player_on_roof" );
    var_0 = _func_1A1( "roof_volume", "targetname" );
    var_1 = _func_0DE( "allies" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( var_3 _meth_80B0( var_0 ) )
        {
            if ( _func_02F( var_3._ID22746 ) )
                var_3 _ID42407::_ID36519();

            var_3 _meth_8058();
            wait 0.5;
        }
    }

    var_clear_2
    var_clear_0
}

_ID44042()
{
    var_0 = _func_1A1( "btr80_smash", "targetname" );
    var_0._ID740 = ( 805.9, -1688.8, 2309.7 );
    var_0._ID65 = ( 0, 149, 0 );
    level._ID794 _ID42407::_ID41112( var_0._ID740, 1350 );
    var_1 = _ID42407::_ID35028( "btr_ground_smash" );
    var_2 = _ID42407::_ID35028( "btr_squashedcar" );
    var_1 _meth_80A1( "scn_invasion_btr_drop" );
    var_0 thread _ID42259::_ID3111( var_2, "btr_squashedcar" );
    var_0 thread _ID42259::_ID3111( var_1, "btr_ground_smash" );
}

_ID45478()
{
    var_0 = _func_0C9( "north_side_nodes", "targetname" );
    var_1 = _func_1A1( "nates_roof_volume_north", "targetname" );
    var_2 = _func_0DE( "allies" );
    level._ID52761._ID450 = 80;
    level._ID52761._ID452 = 500;
    level._ID52761._ID381 = 0;
    level._ID52761 _meth_81B1( var_0[0] );
    level._ID52761 _meth_81B4( var_1 );
    var_3 = 1;

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        if ( var_3 >= var_0.size )
            break;

        if ( !_func_1A7( var_2[var_4] ) )
        {
            continue;
            continue;
        }

        var_2[var_4]._ID450 = 80;
        var_2[var_4]._ID452 = 500;
        var_2[var_4]._ID381 = 0;
        var_2[var_4] _meth_81B1( var_0[var_3] );
        var_2[var_4] _meth_81B4( var_1 );
        var_3++;
        wait 1;
    }
}

_ID53562()
{
    _ID42237::_ID14413( "leaving_gas_station" );

    if ( _ID42237::_ID14385( "nates_bomb_incoming" ) )
        return;

    var_0 = _func_1A2( "nates_defenders", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID35014();
    }

    var_clear_2
    var_clear_0
}

_ID51632()
{
    _ID42237::_ID14413( "spawn_nates_attackers_in_alley" );
    var_0 = _func_1A2( "alley_nates_attackers", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID35014();
    }

    var_clear_2
    var_clear_0
}

_ID49281()
{
    level waittill( "player_is_controlling_UAV" );
    var_0 = _func_1A2( "uav_ambient_battle", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );
}

_ID43568( var_0 )
{
    if ( self._ID170 == "script_vehicle_laatpv_minigun" )
    {
        var_1 = self._ID23512[0];
        var_1 waittill( "turret_ready" );
        var_2 = var_1 _meth_80F2();
        var_2._ID507 = 1;
        var_1 thread animscripts\laatpv_turret\common::_ID32371( level._ID794, 1, 6 );
        var_2._ID507 = 0;
    }
    else
    {
        while ( !_ID42237::_ID14385( "player_at_convoy" ) )
        {
            var_0 = _ID42237::_ID3320( var_0 );
            var_3 = var_0;

            for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
            {
                var_4 = var_3[var_5];
                self _meth_826B( var_4._ID740 );
                self waittill( "turret_on_target" );
                self _meth_8272();
                wait(_func_0BA( 0.2, 0.6 ));
            }

            var_clear_2
            var_clear_0
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

    if ( _func_02F( level._ID794._ID20494 ) )
        return;

    level endon( "player_is_controlling_UAV" );

    if ( _ID42237::_ID8201() )
        _ID42407::_ID28864( "inv_six_theinfantry" );
    else
        _ID42407::_ID28864( "inv_six_theinfantry2" );

    wait 5;
    level._ID794 thread _ID42407::_ID11085( level._ID794 _unknown_5A66( "hint_predator_drone" ) );
}

_ID48719()
{
    _ID42407::_ID28864( "inv_hqr_enemyhelo" );
    _ID42407::_ID28864( "inv_six_takedown" );
    thread _unknown_44B9();
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
        var_5 = level._ID794 _meth_8316();
        var_6 = var_5;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];

            if ( var_7 == "stinger" )
                var_4 = 0;
        }

        var_clear_4
        var_clear_2

        if ( !var_4 )
        {
            wait 3;
            continue;
        }

        var_9 = _func_1A1( "diner", "script_noteworthy" );

        if ( _func_02F( var_9 ) )
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

    if ( _func_02F( level._ID794._ID49913 ) )
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
    thread _unknown_460B();
}

_ID51687()
{
    if ( _func_02F( level._ID45535 ) )
        return;

    level._ID49526 _ID42411::_ID16987();
    level._ID49526._ID486 = 400;
    level waittill( "player_is_controlling_UAV" );
    wait 2;
    thread _unknown_46F0();
    var_0 = _func_11F( level._ID49526._ID65 );
    var_1 = var_0 * 10000;
    var_2 = var_1 + level._ID49526._ID740;
    var_3 = _func_1A9( level._ID49526, 100000, 60000 );
    var_4 = _func_1C8( "zippy_rockets", ( 497.8, -3564.4, 2346 ), var_2 );
    var_4 _meth_81E5( level._ID49526 );
    var_5 = level._ID49526._ID740;
    var_6 = 999999999;

    while ( _func_02F( var_4 ) )
    {
        if ( !_func_1A7( level._ID49526 ) )
            break;

        var_7 = _func_0F3( var_4._ID740, level._ID49526._ID740 );

        if ( var_7 <= 200 )
            break;

        if ( var_7 > var_6 + 100 )
            break;

        var_6 = var_7;
        var_5 = level._ID49526._ID740;
        wait 0.05;
    }

    _func_1AD( var_3 );

    if ( _func_02F( var_4 ) )
        var_4 _meth_80B7();

    _func_156( _ID42237::_ID16299( "uav_explosion" ), var_5 );
    level._ID45535 = 1;
    level._ID794 _ID50736::_ID50882();

    if ( _func_02F( level._ID49526 ) )
        level._ID49526 _meth_80B7();

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
    var_0 = _func_1A2( "friendly_redshirt", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_0D4( var_2 ) )
        {
            if ( _func_1A7( var_2 ) )
            {
                var_2 thread _unknown_4851();
                var_2 thread _unknown_48BF();
            }

            continue;
        }

        if ( _func_1A8( var_2 ) )
        {
            var_2 _ID42407::_ID1947( ::_unknown_4865 );
            var_2 _ID42407::_ID1947( ::_unknown_48D6 );
        }
    }

    var_clear_2
    var_clear_0

    if ( !_func_02F( level._ID50569 ) )
        level._ID50569 = [];

    level endon( "time_to_goto_convoy" );

    for (;;)
    {
        wait 1;
        var_4 = 3;
        level._ID50569 = _unknown_4E03( var_4 );
    }
}

_ID46535()
{
    self endon( "death" );
    self._ID19381 = 1;
    thread _ID42407::_ID22746();
    _ID42407::_ID41104( level._ID794, 600 );
    self._ID19381 = undefined;
    thread _ID42407::_ID36519();
}

smart_barney_goal( var_0, var_1 )
{
    self _meth_81B7();
    var_2 = _func_119( var_1 - var_0 );
    var_3 = self.offsetdirection * 45 - 90;
    var_2 = _func_123( var_2, ( 0, var_3, 0 ) ) * 300;
    var_4 = var_2 + var_0;
    self _meth_81B2( var_4 );
}

smart_barney_goal_offset( var_0 )
{
    if ( !_func_02F( level.offsetdirection ) )
        level.offsetdirection = 0;

    if ( !_func_02F( self.offsetdirection ) )
    {
        if ( _func_02F( var_0 ) && var_0 && level.offsetdirection == 2 )
            level.offsetdirection++;

        self.offsetdirection = level.offsetdirection;
        level.offsetdirection = level.offsetdirection + 1 % 5;
    }
}

_ID43828( var_0, var_1, var_2 )
{
    self endon( "stop_barney" );
    self endon( "death" );
    self _meth_81B7();
    thread _unknown_4F16();
    self._ID450 = 80;
    self._ID452 = 250;
    self._ID1258 = 0;
    self._ID381 = 0;
    var_3 = _func_1A1( "nates_roof_goal_volume", "targetname" );
    var_4 = _func_1A1( "BT_roof_goal_volume", "targetname" );

    if ( !_func_02F( self._ID377 ) )
    {
        var_5 = var_2 _ID42407::_ID15547( "axis" );

        if ( var_5.size )
            self._ID377 = var_5[0];
    }

    _unknown_498A();

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        if ( _ID42237::_ID14385( "player_on_burgertown_roof" ) )
        {
            self _meth_81B2( var_4._ID740 );
            self _meth_81B4( var_4 );
        }
        else if ( _ID42237::_ID14385( "player_on_roof" ) )
        {
            self _meth_81B2( var_3._ID740 );
            self _meth_81B4( var_3 );
        }
        else
            _unknown_49C0( level._ID794._ID740, var_1 );

        wait 2;
        self._ID377 = undefined;
    }

    self notify( "stop_adjust_movement_speed" );
    self._ID24424 = 1.0;
    self _meth_81B2( var_1 );
    self _meth_81B4( var_2 );
}

_ID46277()
{
    self notify( "stop_barney" );
    self endon( "stop_barney" );
    self endon( "death" );
    self _meth_81B7();
    thread _unknown_4FD3();
    self._ID450 = 80;
    self._ID1258 = 0;

    if ( !_func_02F( self._ID51540 ) )
        self._ID452 = 200;
    else
        self._ID452 = 1000;

    self._ID381 = 0;
    var_0 = _func_1A1( "nates_roof_goal_volume", "targetname" );
    var_1 = _func_1A1( "BT_roof_goal_volume", "targetname" );
    _unknown_4A3B();

    for (;;)
    {
        if ( _ID42237::_ID14385( "player_on_burgertown_roof" ) )
        {
            self _meth_81B2( var_1._ID740 );
            self _meth_81B4( var_1 );
        }
        else if ( _ID42237::_ID14385( "player_on_roof" ) )
        {
            self _meth_81B2( var_0._ID740 );
            self _meth_81B4( var_0 );
        }
        else
        {
            self _meth_81B7();

            if ( _func_02F( level._ID49672 ) )
            {
                var_2 = level._ID49672;
                _unknown_4A79( level._ID794._ID740, var_2 );
            }
            else
            {
                var_3 = level._ID794._ID740;
                self _meth_81B2( var_3 );
            }
        }

        wait 2;
    }

    self notify( "stop_adjust_movement_speed" );
    self._ID24424 = 1.0;
}

_ID53162()
{
    if ( !_func_02F( level._ID53096 ) )
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
    level._ID48762 = _func_1A2( "enemy_groups", "targetname" );

    for (;;)
    {
        var_0 = _func_0DE( "axis" );
        var_1 = var_0.size;
        var_2 = var_1;

        if ( var_2 < 7 )
        {
            if ( _ID42237::_ID14385( "first_attack_heli_dead" ) )
            {
                level._ID53096++;
                level notify( "enemy_group_spawning" );
                _unknown_4C9C();
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
                thread _unknown_4B53();

            level._ID53096++;
            level notify( "enemy_group_spawning" );

            if ( level._ID53096 == 1 )
                thread _unknown_4ADB();

            if ( level._ID53096 == 2 )
                thread _unknown_4AE6();

            _unknown_4D22();
        }

        wait 1;
    }
}

_ID35055()
{
    var_0 = _ID42237::_ID16182( level._ID794._ID740, level._ID48762 );

    if ( var_0._ID1191 == level._ID52881[level._ID51689] )
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
    var_2 = _func_1A2( var_1, "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( _func_0DD() >= 54 )
            break;

        var_2[var_3]._ID216 = 1;
        var_4 = var_2[var_3] _ID42407::_ID35014();
        wait 0.1;
    }

    wait 1;
    var_5 = _func_0B7( level._ID10730[var_1].size );
    thread _ID42407::_ID28864( level._ID10730[var_1][var_5] );
    wait 3;

    if ( !_func_02F( level._ID49090 ) )
    {
        if ( level._ID53096 < 3 )
        {
            var_6 = level._ID48762;

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];

                if ( var_7._ID1191 == var_1 )
                    level._ID49090 = var_7._ID740;
            }

            var_clear_2
            var_clear_0
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
        thread _unknown_4EA6();
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
    _func_034( "ui_deadquote", &"INVASION_FAIL_ABANDONED" );
    _ID42407::_ID23778();
}

_ID50706()
{
    var_0 = _func_1A1( "nates_meat_locker_door", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_1 _meth_8053( var_0 );
    var_0 _meth_82C1( -82, 0.1, 0, 0 );
    var_0 _meth_805F();
    _ID42237::_ID14413( "player_on_roof" );
    wait 3;
    _ID42237::_ID14413( "player_on_roof" );
    var_0 _meth_82C1( 82, 0.1, 0, 0 );
    var_0 _meth_805E();
}

_ID50070()
{
    var_0 = _func_1A1( "BT_locker_door", "targetname" );
    var_1 = _func_1A1( var_0._ID1191, "targetname" );
    var_1 _meth_8053( var_0 );
    var_0 _meth_82C1( -172, 0.1, 0, 0 );
    var_0 _meth_805F();
}

_ID44292()
{
    wait 1;
    _ID42237::_ID14426( "player_is_near_BT_locker_door" );
    var_0 = _func_1A1( "BT_locker_door", "targetname" );
    var_0 _meth_82C1( 172, 0.1, 0, 0 );
    var_0 _meth_805E();
    thread _ID42407::_ID28864( "inv_six_gotthepresident2" );
}

_ID46005()
{
    var_0 = _func_1A1( "vip_escort_bad_place1", "targetname" );
    var_1 = _func_1A1( "vip_escort_bad_place2", "targetname" );
    var_2 = _func_1A1( "vip_escort_bad_place3", "targetname" );
    _func_022( "vip_escort_bad_place1", -1, var_0, "axis" );
    _func_022( "vip_escort_bad_place2", -1, var_1, "axis" );
    _func_022( "vip_escort_bad_place3", -1, var_2, "axis" );
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    _func_01F( "vip_escort_bad_place1" );
    _func_01F( "vip_escort_bad_place2" );
    _func_01F( "vip_escort_bad_place3" );
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
    _unknown_5180();
    _ID42234::_ID13611( 333 );
    thread _unknown_5162();
    var_1 = ( 257.2, -4669.1, 2381 );

    if ( _func_0F3( level._ID794._ID740, var_1 ) < 500 )
        level._ID794 _meth_8057( level._ID794._ID486 + 1000, var_1 );

    _ID42407::_ID10226( 2, ::_unknown_51A4 );
}

_ID49225()
{
    _func_192( 0.45, 0.4, level._ID794._ID740, 10000 );
    _func_076( 5.2, 0.1 );
    wait 0.1;
    _func_076( 0, 0.35 );
    wait 0.3;
    _func_192( 0.15, 2.5, level._ID794._ID740, 10000 );
}

_ID53865()
{
    var_0 = _func_1A2( "player", "classname" )[0];
    var_1 = 22;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        _func_156( level._ID1426["falling_debris_player"], var_0._ID740 + ( 0, 0, 500 ) );
        wait 0.2;
    }
}

_ID48419()
{
    var_0 = _func_1A2( "exploder_tv_333", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
}

_ID53256()
{
    var_0 = _func_0DE( "allies" );
}

_ID43535()
{
    wait 5;
    var_0 = _func_0C9( "off_roof", "targetname" );
    var_1 = 0;
    var_2 = _func_1A1( "roof_volume", "targetname" );
    var_3 = _func_0DE( "allies" );
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5 == level._ID48510 )
            continue;

        if ( var_5 _meth_80B0( var_2 ) )
        {
            var_5 _meth_81B1( var_0[var_1] );
            var_1++;
            var_5._ID452 = 96;
            var_5._ID450 = 64;
        }
    }

    var_clear_2
    var_clear_0
}

_ID45351()
{
    self waittill( "death" );
    wait 0.05;

    if ( !_func_02F( level._ID52353 ) )
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

        if ( _func_02F( level._ID48964["ai"] ) )
            var_6 = level._ID48964["ai"];
        else
            var_6 = 0;

        if ( var_6 == 0 )
            continue;

        wait 0.5;

        if ( _func_02F( level._ID45535 ) )
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
    thread _unknown_54BF();
    var_0 = _func_1A1( "diner_enemy_counter_attack_trigger", "targetname" );
    var_1 = _func_1A2( var_0._ID1191, "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID1947, ::_unknown_5CDC );
    _ID42407::_ID1805( "diner_enemy_counter_attack_trigger" );
    _ID42237::_ID14402( "back_door_attack_start" );
    level._ID48510 _ID42407::_ID10805( "inv_tco_backdoor" );
}

_ID46772()
{
    var_0 = _func_1A1( "diner_back_door", "targetname" );
    var_1 = _func_1A1( "back_door_col", "targetname" );
    var_1 _meth_8053( var_0 );
    var_0 _meth_82C1( 85, 0.3 );
    var_0 _meth_80A1( "diner_backdoor_slams_open" );
    var_1 _meth_805F();
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
    var_0 = _func_1A1( "wells_in_nates_prep", "targetname" );
    level._ID51681 _meth_81B2( var_0._ID740 );
    var_1 = _func_1A1( "raptor_in_nates_prep", "targetname" );
    level._ID52761 _ID44597::_ID44201( level._ID28454, var_1 );
}

_ID51601()
{
    while ( _func_0DE( "axis" ).size > 4 )
        wait 1;

    var_0 = _func_1A2( "wounded_carry_attackers_gas", "targetname" );
    _ID42237::_ID3350( var_0, _ID42407::_ID35014 );

    while ( _func_0DE( "axis" ).size > 4 )
        wait 1;

    var_1 = _func_1A2( "wounded_carry_attackers_bus", "targetname" );
    _ID42237::_ID3350( var_1, _ID42407::_ID35014 );

    while ( _func_0DE( "axis" ).size > 4 )
        wait 1;

    var_2 = _func_1A2( "wounded_carry_attackers_TC", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID35014 );
}

_ID52013()
{
    level._ID52761 endon( "death" );
    level._ID51681 endon( "death" );
    var_0 = _func_0C8( "wells_cover_path", "script_noteworthy" );
    level._ID51681 _meth_81B1( var_0 );
    level._ID51681 waittill( "goal" );
    var_1 = var_0;

    for (;;)
    {
        while ( _func_0F3( level._ID51681._ID740, level._ID52761._ID740 ) > 300 )
            wait 0.1;

        if ( !_func_02F( var_1._ID1191 ) )
            break;

        var_2 = _func_0C8( var_1._ID1191, "targetname" );
        level._ID51681 _meth_81B1( var_2 );
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
    var_0 = _func_1A1( "diner_backdoor_fight_area", "targetname" );
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
    if ( _func_02F( level._ID51681 ) )
        return;

    var_1 = _func_1A1( "wells", "script_noteworthy" );
    level._ID51681 = var_1 _ID42407::_ID35014();

    if ( _func_02F( var_0 ) )
    {
        wait 0.5;
        level._ID51681 _ID42407::_ID37404( var_0 );
        level._ID51681 _meth_81B2( var_0._ID740 );
    }
}

_ID35139()
{
    if ( _func_02F( level._ID28454 ) )
        return;

    var_0 = _func_1A1( "president", "script_noteworthy" );
    level._ID28454 = var_0 _ID42407::_ID35014();
}

_ID44220()
{
    self._ID18169 = 1;
    level._ID28454 = self;
    thread _ID42407::_ID22746();
    var_0 = _func_1A1( "president_in_nates_meat_locker", "targetname" );
    thread _ID44597::_ID52372( var_0 );
    _ID42237::_ID14413( "move_president_to_prep" );
    var_0 notify( "stop_wounded_idle" );
    var_0 = _func_1A1( "president_in_nates_prep", "targetname" );
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
    var_0 = _func_0DE( "allies" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] thread _unknown_59B1( "bmp_out_of_sight" );

    wait 5;
    _ID42237::_ID14402( "bmp_out_of_sight" );
}

_ID52969( var_0 )
{
    self endon( "death" );
    wait(_func_0BA( 0, 0.5 ));
    self _meth_81D6( "prone" );
    var_1 = self._ID451;
    _ID42259::_ID3021( self, "gravity", "pronehide_dive" );
    _ID42237::_ID14413( var_0 );
    wait(_func_0BA( 0, 0.5 ));
    self _meth_81D6( "stand", "prone", "crouch" );
}

_ID49896()
{
    var_0 = _func_1F2( "friendlies_move_to_alley", "script_noteworthy" );
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

        if ( !level._ID47818 > var_0 )
        {
            level._ID47334 = _func_03D();
            level._ID794 thread _ID42407::_ID18684( "hint_steer_drone" );
        }
    }
}

_ID52275()
{
    level endon( "leaving_diner" );
    var_0 = _func_1A1( "diner_backdoor_fight_area", "targetname" );
    var_0 _ID42407::_ID41162();
    wait 2;
}

_ID48345()
{
    level endon( "bmps_from_north_dead" );
    _unknown_5ABF();

    if ( _ID42237::_ID14385( "bmps_from_north_dead" ) )
        return;

    _ID42407::_ID28864( "inv_six_neutralizearmor" );
    level._ID794 thread _ID42407::_ID11085( level._ID794 _unknown_6B2D( "hint_predator_drone_vs_bmps" ) );
    thread _unknown_5AD4();
    wait 25;

    for (;;)
    {
        if ( _ID42237::_ID14385( "bmp_north_left_dead" ) || _ID42237::_ID14385( "bmp_north_mid_dead" ) )
        {
            var_0 = _func_0B7( 3 );

            if ( var_0 == 0 )
            {
                _unknown_5B67( "inv_six_stillonebmp" );
                level._ID794 thread _ID42407::_ID11085( level._ID794 _unknown_6B6A( "hint_predator_drone_vs_bmps" ) );
            }
            else if ( var_0 == 1 )
            {
                _unknown_5B89( "inv_six_wastethatbmpnow" );
                level._ID794 thread _ID42407::_ID11085( level._ID794 _unknown_6B8C( "hint_predator_drone_vs_bmps" ) );
            }
            else
            {
                _unknown_5BA5( "inv_six_neutralizearmor" );
                level._ID794 thread _ID42407::_ID11085( level._ID794 _unknown_6BA9( "hint_predator_drone_vs_bmps" ) );
            }
        }
        else if ( _ID42237::_ID8201() )
        {
            _unknown_5BC8( "inv_six_wastebmpsnow" );
            level._ID794 thread _ID42407::_ID11085( level._ID794 _unknown_6BCC( "hint_predator_drone_vs_bmps" ) );
        }
        else
        {
            _unknown_5BE5( "inv_six_destroyapcs" );
            level._ID794 thread _ID42407::_ID11085( level._ID794 _unknown_6BE8( "hint_predator_drone_vs_bmps" ) );
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
    var_0 = _func_1F2( "dont_engage_dialog", "script_noteworthy" );
    var_1 waittill( "trigger",  var_1  );
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
    var_1 = _func_1A2( var_0, "targetname" );
    var_2 = 5;

    while ( var_2 > 0 )
    {
        var_3 = _ID42237::_ID16276( level._ID794._ID740, var_1 );
        var_3._ID216 = 1;
        var_4 = var_3 _ID42407::_ID35014();
        var_2--;

        if ( _func_1A7( var_4 ) )
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
    thread _unknown_588A();
    self._ID19381 = 1;
    thread _ID42407::_ID22746();
    _ID42407::_ID41104( level._ID794, 600 );
    self._ID19381 = undefined;
    thread _ID42407::_ID36519();
    self endon( "death" );

    while ( !_func_1A7( level._ID47105 ) )
        wait 1;

    self._ID199 = "no_cover";
    self _meth_8173( level._ID47105 );
    wait 1;
    self._ID199 = "no_cover";

    while ( _func_1A7( level._ID47105 ) )
        wait 1;

    self _meth_8174();
}

_ID43512( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 3;

    if ( _ID42237::_ID14385( "president_in_BT_meat_locker" ) )
        var_1 = "redshirt_spawn_group_BT";
    else
        var_1 = "redshirt_spawn_group";

    var_2 = _ID42237::_ID16640( var_1, "targetname" );
    var_3 = _ID42237::_ID16276( level._ID794._ID740, var_2 );
    var_4 = _func_1A2( var_3._ID1191, "targetname" );
    var_5 = [];
    var_6 = var_4;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        if ( var_5.size < var_0 )
        {
            var_7._ID216 = 1;
            var_5[var_5.size] = var_7 _ID42407::_ID35014();
        }
    }

    var_clear_2
    var_clear_0
    return var_5;
}

_ID47367( var_0 )
{
    var_1 = [];
    var_2 = level._ID50569;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_1A7( var_3 ) )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    var_5 = var_0 - var_1.size;
    var_6 = [];

    if ( var_5 > 0 )
        var_6 = _unknown_5E66( var_5 );

    var_7 = _ID42407::_ID3317( var_1, var_6 );
    return var_7;
}

_ID53430()
{
    _ID42237::_ID14413( "leaving_diner" );
    var_0 = _func_0C8( "taco_in_BT", "script_noteworthy" );
    var_1 = var_0._ID740;
    var_2 = _func_1A1( "BT_goal_volume", "targetname" );
    level._ID48510 thread _unknown_5982( "player_in_burgertown", var_1, var_2 );
    var_3 = 3;
    level._ID50569 = _unknown_5ECF( var_3 );
    var_4 = level._ID50569;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 thread _unknown_59A9( "player_in_burgertown", var_1, var_2 );
    }

    var_clear_2
    var_clear_0
}

_ID53618()
{
    _ID42237::_ID14426( "player_on_roof" );
    wait 2;
    _ID42237::_ID14426( "player_inside_nates" );
    var_0 = _func_1A1( "diner_goal_volume", "targetname" );
    var_1 = _func_1A1( "predator_drone_control", "targetname" )._ID740;
    level._ID48510 thread _unknown_59EC( "player_in_diner", var_1, var_0 );
    level._ID50569 = _unknown_5F10( 3 );
    var_2 = level._ID50569;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _unknown_5A10( "player_in_diner", var_1, var_0 );
    }

    var_clear_2
    var_clear_0
}

_ID47534( var_0, var_1 )
{
    self endon( "stop_barney" );
    self endon( "death" );
    self _meth_81B7();
    self._ID450 = 80;
    self._ID452 = 100;
    self._ID381 = 0;
    _unknown_5A2B( 1 );

    while ( !_ID42237::_ID14385( "president_in_BT_meat_locker" ) )
    {
        var_2 = level._ID52761._ID740;
        _unknown_5A35( var_2, var_0 );

        if ( !_func_02F( self._ID377 ) )
            self._ID377 = _ID42407::_ID15601( self._ID740, "axis" );

        wait 0.5;
    }

    self _meth_81B2( var_0 );
    self _meth_81B4( var_1 );
}

_ID54181()
{
    self notify( "stop_adjust_movement_speed" );
    self endon( "death" );
    self endon( "stop_adjust_movement_speed" );

    for (;;)
    {
        wait(_func_0BA( 0.5, 1.5 ));

        while ( _unknown_6066() )
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

    if ( _ID42237::_ID41802( level._ID794._ID740, level._ID794 _meth_8346(), self._ID740, level._ID8760["60"] ) )
        return 0;

    return 1;
}

_ID52206()
{
    level._ID48510._ID452 = 128;
    level._ID48510._ID450 = 64;
    level._ID48510 _meth_81B1( _func_0C8( "taco_on_BT_roof", "script_noteworthy" ) );
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    level._ID48510._ID452 = 1024;
}

_ID50099()
{
    var_0 = _func_1A1( "predator_drone_control", "targetname" );
    var_0 _meth_8059();
    var_0 _ID42407::_ID16953();
    var_0 _meth_80E1( "HINT_NOICON" );
    var_0 thread _ID42237::_ID44574( level._ID794, &"INVASION_DRONE_PICKUP", &"INVASION_DRONE_PICKUP_PC", "trigger" );
    var_0 _meth_80C6();
    var_1 waittill( "trigger",  var_1  );
    var_0 _meth_80A1( "scn_invasion_controlrig_pickup" );
    thread _unknown_6159();
    var_0 _ID42407::_ID36591();
}

_ID47707()
{
    _ID42237::_ID14402( "player_has_predator_drones" );
    thread _unknown_5DDD();
    level._ID794.remotemissile_lowerbound_limit = ( -16640, -12320, 1120 );
    level._ID794.remotemissile_upperbound_limit = ( 17168, 3896, 14920 );
    level._ID794 _ID50736::_ID44738( "remote_missile_detonator" );
    var_0 = _func_1A1( "predator_drone_control", "targetname" );
    var_0 _meth_805A();
    var_0 _meth_80C7();
}

_ID45388()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "smoke_screen_starting" );
    _func_156( _ID42237::_ID16299( "smokescreen" ), self._ID740 );
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
    var_1 = _func_1A1( "diner_backdoor_fight_area", "targetname" );
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
        var_0 = _func_0B7( 3 );

        if ( var_0 == 0 )
            _ID42407::_ID28864( "inv_six_offtheroof" );

        if ( var_0 == 1 )
            _ID42407::_ID28864( "inv_six_getoffroof2" );

        if ( var_0 == 2 )
            _ID42407::_ID28864( "inv_six_getoffroofnow" );

        wait(_func_0BA( 1, 2 ));
    }
}

_ID44268()
{
    thread _unknown_63D3();
    level endon( "player_on_roof" );
    level._ID794 endon( "death" );
    var_0 = _func_1A2( "hellfire_attack_target", "targetname" );
    var_1 = _ID42407::_ID15625( var_0 );
    var_2 = _unknown_63ED( var_1._ID740 );
    wait(_func_0BA( 3, 5 ));
    var_3 = _ID42237::_ID3321( var_0, var_1 );
    var_4 = _ID42407::_ID15625( var_3 );
    var_2 = _unknown_6409( var_4._ID740 );
    wait(_func_0BA( 3, 5 ));
    var_3 = _ID42237::_ID3321( var_0, var_4 );
    var_4 = var_3[_func_0B7( var_3.size )];
    var_2 = _unknown_6424( var_4._ID740 );
    wait(_func_0BA( 3, 5 ));
    var_3 = _ID42237::_ID3321( var_0, var_4 );
    var_4 = var_3[_func_0B7( var_3.size )];
    var_2 = _unknown_6440( var_4._ID740 );
    wait(_func_0BA( 3, 5 ));

    if ( _ID42237::_ID14385( "player_on_roof" ) )
    {
        var_5 = level._ID794._ID740;
        var_2 = _unknown_645D( var_5 );

        while ( _func_02F( var_2 ) )
            wait 0.05;

        if ( _ID42237::_ID14385( "player_on_roof" ) )
            level._ID794 _meth_8057( level._ID794._ID486 + 1000, var_5 );
    }
}

_ID44050( var_0 )
{
    var_1 = _func_1C8( "remote_missile_not_player_invasion", level._ID49526._ID740 + ( 0, 0, -128 ), var_0 );
    var_1 thread _ID42407::_ID27081( "move_remotemissile_proj_flame" );
    return var_1;
}

_ID52877()
{
    wait 0.2;
    _ID42237::_ID14426( "player_on_roof" );
    var_0 = _func_1A2( "ceiling_dust", "targetname" );

    if ( _unknown_6505() )
    {
        level waittill( "hellfire" );
        var_1 = level._ID43847._ID740;
        var_2 = _func_1C8( "remote_missile_not_player_invasion", level._ID49526._ID740 + ( 0, 0, -128 ), var_1 );
        _ID42237::_ID3350( var_0, ::_unknown_653E );

        while ( _func_02F( var_2 ) )
            wait 0.05;

        level._ID43847 notify( "deleted" );
        level._ID43847 _meth_80B7();
    }

    var_3 = _func_1A2( "hellfire_attack_target_roof", "targetname" );

    for (;;)
    {
        level waittill( "hellfire" );
        var_4 = var_3[_func_0B7( var_3.size )];
        var_5 = var_4._ID740;
        var_2 = _unknown_6535( var_5 );
        _ID42237::_ID3350( var_0, ::_unknown_6588 );
    }
}

_ID47633()
{
    if ( _func_02F( level._ID794._ID26734 ) )
        return 0;

    if ( !_func_02F( level._ID43847 ) )
        return 0;

    var_0 = _func_1A1( "roof_volume", "targetname" );

    if ( level._ID43847 _meth_80B0( var_0 ) )
        return 1;
    else
        return 0;
}

_ID54497()
{
    wait 3;
    _func_156( _ID42237::_ID16299( "ceiling_dust" ), self._ID740 );
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
    var_0 _meth_85C1( 0.05 );
    var_0 thread maps\invasion_aud::_ID51834();
    wait 4;
    level._ID52761 _ID42407::_ID10805( "inv_six_truck12" );
}

_ID53475()
{
    wait 2;

    if ( _func_1A7( level._ID44615 ) )
    {
        level notify( "dialog_bmp_hasnt_spotted_us" );
        level._ID52761 _ID42407::_ID10805( "inv_six_hangright" );
    }

    if ( _func_1A7( level._ID44615 ) )
        level._ID52761 _ID42407::_ID10805( "inv_six_staybehind" );
}

_ID43960()
{
    _ID42237::_ID14413( "take_point" );
    var_0 = _func_1A1( "tangled_parachute_guy", "script_noteworthy" );
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
    var_0 = _func_0C8( "meat_locker_taco", "script_noteworthy" );
    level._ID48510 _ID42407::_ID10871();
    level._ID48510 _meth_81B1( var_0 );
    level._ID48510._ID452 = 16;
}

_ID43039()
{
    var_0 = _func_0C8( "wells_kitchen", "targetname" );

    if ( _func_1A7( level._ID51681 ) )
    {
        level._ID51681 _ID42407::_ID10871();
        level._ID51681 _meth_81B1( var_0 );
        level._ID51681._ID452 = 64;
        level._ID51681._ID381 = 1;
    }

    var_1 = _func_0C8( "raptor_kitchen", "targetname" );
    level._ID52761 _ID42407::_ID10871();
    level._ID52761 _meth_81B1( var_1 );
    level._ID52761._ID452 = 64;
    level._ID52761._ID381 = 1;

    if ( _func_1A7( level._ID48076 ) )
    {
        var_2 = _func_0C8( "worm_inside", "script_noteworthy" );
        level._ID48076 _ID42407::_ID10871();
        level._ID48076 _meth_81B1( var_2 );
        level._ID48076._ID452 = 190;
        level._ID48076._ID381 = 0;
    }
}

_ID49501()
{
    var_0 = level._ID794 _meth_8304( "smoke_grenade_american" );

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
        var_4 = level._ID794 _meth_8304( "smoke_grenade_american" );

        if ( var_4 )
        {
            if ( !_ID42237::_ID14385( "threw_smoke" ) )
            {
                thread _unknown_68E1();
                level._ID52761 _ID42407::_ID10805( var_2[var_3] );
                var_3++;

                if ( var_3 >= var_2.size )
                    var_3 = 0;

                level._ID794 thread _ID42407::_ID11090( "hint_throw_smoke", 5 );
            }
        }
        else
        {
            level._ID794 thread _ID42407::_ID11090( "hint_get_smoke", 5 );
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
        level._ID794 waittill( "grenade_fire",  var_1, var_0  );

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
    thread _unknown_69AE();
    var_0 = _func_1F2( "house_destroyer_backwards_path", "targetname" )._ID740;

    for (;;)
    {
        level._ID794 waittill( "grenade_fire",  var_2, var_1  );

        if ( var_2 == "smoke_grenade_american" )
        {
            var_3 = _func_06A( "script_origin", ( 0, 0, 0 ) );
            var_1 thread _unknown_69D3( var_3 );
            var_1 thread _ID50337( var_3, var_0 );
        }
    }
}

_ID50337( var_0 )
{
    level endon( "btr_smoked" );
    self endon( "death" );

    for (;;)
    {
        var_0._ID740 = self._ID740;
        wait 0.05;
    }
}

_ID43712( var_0, var_1 )
{
    level endon( "btr_smoke_starting" );
    self waittill( "death" );

    if ( _func_0F3( var_0._ID740, var_1 ) < 400 )
        thread _unknown_6A43();
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
    var_0 = _func_1A1( "diner_window_traverses", "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    var_0 _meth_805E();
    _ID42237::_ID14413( "crash_objective" );
    var_0 _meth_82BB( -1000, 0.1, 0, 0 );
    var_0 _meth_805F();
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

    if ( _func_02F( self._ID1191 ) )
        self _meth_81B2( _func_1A1( self._ID1191, "targetname" )._ID740 );
    else
        self _meth_81B2( _func_1A1( "truck_guy_retreat_goal", "targetname" )._ID740 );

    self._ID452 = 32;
    self waittill( "goal" );

    while ( self _meth_81CA( level._ID794 ) )
        wait 1;

    self _meth_8058();
}

_ID47794()
{
    self endon( "death" );
    _ID42237::_ID14413( "bank_guys_retreat" );
    self _meth_81B2( _func_1A1( "north_trucks_retreat_point", "targetname" )._ID740 );
    self._ID511 = 1;
    self._ID452 = 32;
    self waittill( "goal" );

    while ( self _meth_81CA( level._ID794 ) )
        wait 1;

    self _meth_8058();
}

_ID54678()
{
    level endon( "sentry_in_position" );
    self waittill( "death" );
    _func_034( "ui_deadquote", &"INVASION_FAIL_SENTRY" );
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
    var_0 thread _unknown_54F7();
    var_0 thread _ID42413::_ID9604();
    var_0 endon( "death" );
    var_1 = _func_1A1( "west_side", "targetname" );
    var_0 _meth_826B( var_1._ID740 );
    var_2 = _func_1F2( "first_volley_at_nates", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_0 _unknown_7077();
    var_2 = _func_1F2( "crash_obj_bmp_in_pos", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_0 _meth_828D( 0, 15, 3 );
    var_0 _unknown_70E6();
    var_0 _meth_829B( 3 );
    var_0 _ID42411::_ID16987();
    var_0 thread _unknown_70B9();
    var_0 waittill( "reached_end_node" );
    var_0 thread _unknown_73DF( 0, 0 );
    _ID42237::_ID14413( "crash_objective" );
    var_0 _meth_80B7();
}

_ID45679()
{
    level._ID54042 = _ID42411::_ID35196( "nate_attacker_mid" );
    level._ID50295 = _ID42411::_ID35196( "nate_attacker_left" );
    _ID42237::_ID3350( _func_1F3( "new_target", "script_noteworthy" ), ::_unknown_6E1D );
    var_0 = [];
    var_0[var_0.size] = level._ID54042;
    var_0[var_0.size] = level._ID50295;
    level.btr_kill_no_predator = 0;
    _ID42237::_ID3350( var_0, ::_unknown_792C );
    thread _unknown_794B();
    thread _unknown_6D86();
    thread _unknown_6DAD();
    thread _unknown_63A3();
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_6E17();
        var_2 thread _ID48289::_ID53152();
        var_2 thread _unknown_6DC6();
        var_2 thread _ID42407::_ID13024( "spotted_player" );
        var_2 thread _unknown_55F0();
        var_2 thread _ID42413::_ID9604();
    }

    var_clear_2
    var_clear_0
    return var_0;
}

_ID53280()
{
    for (;;)
    {
        level waittill( "starting_predator_drone_control" );
        var_0 = [];

        if ( _func_1A7( level._ID54042 ) )
            var_0[var_0.size] = level._ID54042;

        if ( _func_1A7( level._ID50295 ) )
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
    var_0 = _func_0B7( 3 );

    for (;;)
    {
        _ID42237::_ID14413( "bmp_has_spotted_player" );

        switch ( var_0 )
        {

        }

        var_0++;

        if ( var_0 > 2 )
            var_0 = 0;

        wait 10;
        case 2:
        case 1:
        case 0:
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
    level._ID794 endon( "death" );
    var_0 = 10;

    for (;;)
    {
        _ID42237::_ID14413( "bmp_has_spotted_player" );
        _unknown_6F40( "inv_six_bmplostyou" );
        wait(var_0);
        _ID42237::_ID14413( "bmp_has_spotted_player" );
        _unknown_6F52( "inv_six_bmplostyoumove" );
        wait(var_0);
        _ID42237::_ID14413( "bmp_has_spotted_player" );
        _unknown_6F64( "inv_six_bmplostyougo" );
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

        if ( _func_0F3( self._ID740, level._ID794._ID740 ) > 2400 )
            continue;

        if ( _func_0F3( self._ID740, level._ID794._ID740 ) < level._ID45903 )
            continue;

        var_0 = self _meth_818D( "tag_flash" );

        if ( !_ID42237::_ID41802( self._ID740, var_0, level._ID794._ID740, level._ID8760["25"] ) )
            continue;

        if ( !_unknown_76C2( level._ID794 ) )
            continue;

        _ID42237::_ID14402( "bmp_has_spotted_player" );
        self notify( "new_target" );
        self._ID48897 = 1;
        _ID42407::_ID13025( "spotted_player" );
        _unknown_76CE( level._ID794 );
        wait(_func_0BA( 0.8, 2.4 ));
        _unknown_76DF( level._ID794 );
        wait(_func_0BA( 0.8, 2.4 ));

        while ( _unknown_770B( level._ID794 ) )
        {
            _unknown_76E7( level._ID794 );
            wait(_func_0BA( 2, 3 ));
        }

        self _meth_826D();
        self._ID48897 = 0;
        _ID42407::_ID13021( "spotted_player" );
        _ID42237::_ID14388( "bmp_has_spotted_player" );
    }
}

_ID44148()
{
    level endon( "bmps_from_north_dead" );
    var_0 = _func_1A2( self._ID31273, "script_linkname" );

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( !_func_1A7( var_1 ) )
            return;

        if ( var_1._ID48897 )
            continue;

        var_1 notify( "new_target" );
        var_1 _meth_826C( var_0[0] );
        thread _unknown_712B( var_1 );
    }
}

_ID43818( var_0 )
{
    var_0 endon( "new_target" );
    var_0 endon( "death" );
    var_0 waittill( "turret_on_target" );

    for (;;)
    {
        var_1 = _func_0B9( 4, 6 );

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            var_0 _meth_8272();
            wait 0.2;
        }

        wait(_func_0BA( 1, 2 ));
    }
}

_ID44509()
{
    self endon( "death" );
    var_0 = _func_1A1( "nates_restaurant_goal", "targetname" );
    self _meth_81B7();
    self._ID450 = 100;
    _ID42407::_ID12471( 5 );
    self _meth_81B2( var_0._ID740 );
    self._ID452 = 4000;
    self._ID2219 = 1;
    _ID42237::_ID14413( "truck_guys_retreat" );
    self _meth_81B2( _func_1A1( "truck_guy_retreat_goal", "targetname" )._ID740 );
    self._ID452 = 32;
    self waittill( "goal" );

    while ( self _meth_81CA( level._ID794 ) )
        wait 1;

    self _meth_8058();
}

_ID43401()
{
    self waittill( "jumpedout" );
    self.keepgoalonunload = 1;
    level endon( "truck_guys_retreat" );
    self endon( "death" );
    var_0 = _func_1A1( "nates_restaurant_goal", "targetname" );
    self._ID450 = 100;
    _ID42407::_ID12471( 5 );

    if ( _func_0B7( 3 ) > 0 )
    {
        self _meth_81B2( var_0._ID740 );
        self._ID452 = var_0._ID851;
        var_1 = _func_0B9( 1, 22 );
        wait(var_1);
        self _meth_81B2( self._ID740 );
        self._ID452 = 900;
        wait(_func_0BA( 2, 4 ));
        self _meth_81B2( var_0._ID740 );
        self._ID452 = var_0._ID851;
    }
    else
    {
        self _meth_81B2( var_0._ID740 );
        self._ID452 = 4000;
        thread _unknown_72A2( _func_0BA( 32, 38 ) );
    }
}

truck_group_enemies_setup_stay_on_roof( var_0 )
{
    self endon( "death" );
    self._ID31212 = 1;
    self._ID513 = 1;
    wait(var_0);
    self._ID31212 = undefined;
    self._ID513 = 0;

    if ( self._ID452 > level._ID10115 )
        self._ID452 = level._ID10115;
}

_ID48163()
{
    for (;;)
    {
        self waittill( "enemy" );

        if ( _func_1B3( self._ID322 ) )
        {
            self._ID452 = 3000;
            break;
        }
    }
}

_ID54103()
{
    for (;;)
    {
        self waittill( "enemy" );

        if ( _func_1B3( self._ID322 ) )
        {
            self._ID452 = 3000;
            break;
        }
    }
}

_ID43096()
{
    var_0 = _func_1A2( "closest_goal_radius", "targetname" );
    level._ID53226 = _ID42237::_ID16182( level._ID794._ID740, var_0 );
    level._ID43948 = [];
    var_1 = _func_0DE( "axis" );
    _ID42237::_ID3350( var_1, ::_unknown_738B );
    var_2 = _func_1A2( "bank_enemies", "targetname" );
    var_3 = _func_1A2( "gas_station_enemies", "targetname" );
    var_4 = _func_1A2( "taco_enemies", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_unknown_73B5 );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, ::_unknown_73C0 );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_unknown_73CB );
    _ID42237::_ID3350( var_2, _ID42407::_ID1947, ::_unknown_73C9 );
    _ID42237::_ID3350( var_3, _ID42407::_ID1947, ::_unknown_73D4 );
    _ID42237::_ID3350( var_4, _ID42407::_ID1947, ::_unknown_73E0 );
    thread _unknown_73ED( var_0 );
}

_ID54425()
{
    if ( _func_02F( self._ID254 ) && self._ID254 == "MOD_PROJECTILE_SPLASH" && _func_02F( self._ID583 ) && _func_02F( self._ID583._ID49913 ) )
        self._ID34237 = 1;

    return 0;
}

_ID44421()
{
    self._ID9827 = ::_unknown_740C;
}

_ID50465( var_0 )
{
    for (;;)
    {
        var_1 = _ID42237::_ID16182( level._ID794._ID740, var_0 );

        if ( level._ID53226 != var_1 )
        {
            level._ID53226 = var_1;
            _unknown_7457( var_1 );
        }

        wait 1;
    }
}

_ID46209()
{
    self._ID452 = 2048;
    self._ID450 = 512;
    level._ID43948[self._ID39468] = self;
    self.keepgoalonunload = 1;
    self _meth_81B2( level._ID53226._ID740 );
    self._ID764 = 200;
    _ID42407::_ID12471( 5 );
    self waittill( "death" );
    level._ID43948[self._ID39468] = undefined;
}

_ID52050( var_0 )
{
    waitframe;
    var_1 = level._ID43948;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_81B2( var_0._ID740 );
    }

    var_clear_2
    var_clear_0
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
    self._ID1258 = 0;
    self waittill( "goal" );
    self._ID452 = 2000;
    self waittill( "goal" );
    self._ID452 = 2000;
}

_ID48431()
{
    self endon( "death" );
    self._ID2219 = 1;
    self._ID1258 = 0;
    wait 12;
    self._ID452 = 100;
    self._ID377 = level._ID794;
    self _meth_81B3( level._ID794 );
}

_ID49684()
{
    self endon( "death" );
    self._ID199 = "ambush";
    self._ID465 = 0.9;
    _ID42237::_ID14413( "player_in_burgertown" );
    wait 8;
    self._ID199 = "cover";
    self _meth_81B3( level._ID794 );
    self._ID452 = 100;
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
    level._ID51681 _meth_81B1( _func_0C8( "wells_intro_node", "targetname" ) );
    level._ID51681._ID452 = 16;
    _ID42237::_ID14413( "move_president_to_prep" );
    var_0 = _func_1A1( "wells_in_nates_prep", "targetname" );
    level._ID51681 _meth_81B2( var_0._ID740 );
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
    level._ID52761._ID452 = 64;
    var_0 = _func_1A1( "raptor_in_nates_prep", "targetname" );
    level._ID52761 _meth_81B2( var_0._ID740 );
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

        if ( _func_02F( level._ID53339 ) )
        {
            if ( level._ID53339 == "east" )
                var_7 = var_5[_func_0B7( var_5.size )];

            if ( level._ID53339 == "north" )
                var_7 = var_2[_func_0B7( var_2.size )];

            if ( level._ID53339 == "south" )
                var_7 = var_3[_func_0B7( var_3.size )];

            if ( level._ID53339 == "west" && !_ID42237::_ID14385( "player_is_near_houses" ) )
                var_7 = var_4[_func_0B7( var_4.size )];

            if ( _func_02F( var_7 ) )
                var_6 = _func_1A2( var_7, "targetname" );
        }

        if ( !_func_02F( var_6 ) )
        {
            if ( var_1 >= var_0.size )
                var_1 = 0;

            var_9 = var_0[var_1];

            if ( _ID42237::_ID14385( "player_is_near_houses" ) && _unknown_77CC( var_9 ) )
            {
                var_1++;
                continue;
            }

            var_6 = _func_1A2( var_0[var_1], "targetname" );
            var_8 = var_1;
            var_1++;
        }

        var_10 = 1;
        var_11 = 0;
        var_12 = var_6;

        for ( var_14 = _func_1DA( var_12 ); _func_02F( var_14 ); var_14 = _func_1BF( var_12, var_14 ) )
        {
            var_13 = var_12[var_14];

            if ( var_13._ID170 == "script_vehicle_antonov" )
                var_11 = 1;

            if ( var_11 )
            {
                if ( var_10 )
                {
                    var_13 thread _unknown_790B( var_10 );
                    var_10 = 0;
                }
                else
                    var_13 thread _unknown_7917();

                continue;
            }

            var_13 thread _ID42411::_ID35194();
        }

        var_clear_2
        var_clear_0

        if ( !var_11 )
            var_0 = _ID42237::_ID3321( var_0, var_0[var_8] );

        wait 20;

        if ( _func_039( "invasion_minspec" ) == "1" )
            wait 80;
    }
}

_ID52532()
{
    var_0 = undefined;
    self waittill( "trigger" );
    var_1 = _func_1A2( self._ID1191, "targetname" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_2 == 0 )
        {
            var_3 = 1;
            var_1[var_2] thread _unknown_7973( var_3 );
            continue;
        }

        var_1[var_2] thread _unknown_797F();
    }
}

animate_hanging_parachute()
{
    self._ID3189 = "chute";
    _ID42259::_ID32556();
    self _meth_8155( _ID42407::_ID16120( "idle" ), 1 );
}

_ID45550()
{
    var_0 = _ID42407::_ID35028( "bmp_chute_paradrop" );
    var_1 = _ID42407::_ID35028( "paradrop_cargo_tank_chuteA" );
    var_2 = _ID42407::_ID35028( "paradrop_cargo_tank_chuteB" );
    var_3 = _ID42407::_ID35028( "paradrop_cargo_tank_chuteC" );
    var_4 = _ID42407::_ID35028( "bmp_paradrop" );
    var_4 _meth_8053( self );
    var_0 _meth_8053( self );
    var_1 _meth_8053( self );
    var_2 _meth_8053( self );
    var_3 _meth_8053( self );
    thread _ID42259::_ID3111( var_0, "bmp_chute_paradrop" );
    thread _ID42259::_ID3111( var_1, "paradrop_cargo_tank_chuteA" );
    thread _ID42259::_ID3111( var_2, "paradrop_cargo_tank_chuteB" );
    thread _ID42259::_ID3111( var_3, "paradrop_cargo_tank_chuteC" );
    _ID42259::_ID3111( var_4, "bmp_paradrop" );
    var_0 _meth_80B7();
    var_1 _meth_80B7();
    var_2 _meth_80B7();
    var_3 _meth_80B7();
    var_4 _meth_80B7();
}

_ID43930( var_0 )
{
    var_1 = thread _ID42411::_ID35194();

    if ( _func_02F( var_0 ) )
        var_1 maps\invasion_aud::_ID47993();

    var_1._ID31507 = 1;
    var_1 _ID42407::_ID13024( "start_drop" );
    var_1 _ID42407::_ID13024( "stop_drop" );
    var_1 endon( "stop_drop" );
    var_2 = 25;
    var_1 _ID42407::_ID13027( "start_drop" );

    if ( _func_02F( self._ID922 ) && self._ID922 == "drop_bmp" )
    {
        var_1 thread _unknown_7A46();
        wait 2;
    }

    for (;;)
    {
        var_3 = _ID42407::_ID35028( "distant_parachute_guy" );
        var_3 thread _unknown_7AB2( var_1, var_2 );
        var_4 = _ID42407::_ID35028( "distant_parachute_guy" );
        var_4 thread _unknown_7AD2( var_1, var_2 );
        wait(_func_0BA( 0.4, 0.8 ));
    }
}

_ID48754( var_0, var_1 )
{
    self _meth_8053( var_0 );

    if ( _ID42237::_ID8201() )
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_left1" );
    else
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_left2" );

    wait(var_1);

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID49564( var_0, var_1 )
{
    self _meth_8053( var_0 );

    if ( _ID42237::_ID8201() )
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_right1" );
    else
        var_0 thread _ID42259::_ID3111( self, "distant_parachute_guy_right2" );

    wait(var_1);

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID51940( var_0 )
{
    level._ID53691 _meth_8272();
    level notify( "latvee_destroyer_fired" );
}

_ID52817( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        self _meth_826B( var_0._ID740 );
        _unknown_7EB9( var_0._ID740 );
        var_1 = undefined;

        if ( _func_02F( var_0._ID1191 ) )
            var_1 = _func_1A1( var_0._ID1191, "targetname" );

        _ID42234::_ID13611( var_0._ID31401 );
        wait 0.15;

        if ( !_func_02F( var_1 ) )
            break;

        var_0 = var_1;
    }
}

_ID50173()
{
    self endon( "death" );
    var_0 = _func_1A1( "north_side_low", "targetname" );
    self _meth_826B( var_0._ID740 );
    self waittill( "turret_on_target" );
    _unknown_7BD1( var_0 );
    var_0 = _func_1A1( "north_side_high", "targetname" );
    self _meth_826B( var_0._ID740 );
    self waittill( "turret_on_target" );
    _unknown_7BEE( var_0 );
}

_ID43304()
{
    self endon( "reached_end_node" );
    self endon( "death" );
    var_0 = _func_1A2( "hellfire_attack_target_roof", "targetname" );

    for (;;)
    {
        wait(_func_0BA( 1, 3 ));
        var_1 = var_0[_func_0B7( var_0.size )];
        self _meth_826B( var_1._ID740 );
        var_2 = _func_0B9( 3, 6 );

        for ( var_3 = 0; var_3 < var_2; var_3++ )
        {
            self _meth_8272();
            wait 0.2;
        }
    }
}

_ID45196()
{
    var_0 = _func_1A1( "nates_kitchen_ladder_clip", "targetname" );

    for (;;)
    {
        var_0 _meth_82C9();
        _ID42237::_ID14413( "player_on_roof" );

        while ( level._ID794 _meth_80B0( var_0 ) )
            wait 1;

        var_0 _meth_82C8();
        _ID42237::_ID14426( "player_on_roof" );
    }
}

_ID53476()
{
    var_0 = _func_1A1( "bt_ktichen_ladder_clip", "targetname" );

    for (;;)
    {
        var_0 _meth_82C9();
        _ID42237::_ID14413( "player_on_burgertown_roof" );

        while ( level._ID794 _meth_80B0( var_0 ) )
            wait 1;

        var_0 _meth_82C8();
        _ID42237::_ID14426( "player_on_burgertown_roof" );
    }
}

_ID46036()
{
    var_0 = _func_1A1( "west_side", "targetname" );
    self _meth_826B( var_0._ID740 );
    self waittill( "turret_on_target" );
    _unknown_7CBF( var_0 );
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
    var_1 = _func_1A1( "latvee_destroyer_init_target", "targetname" );
    var_2 = var_0 _meth_80F2();
    var_2._ID507 = 0;
    var_0 _meth_806C( "manual" );
    var_3 = _func_1A1( "latvee_ride_roof_landing", "targetname" );
    level._ID45394 = var_3 _ID42407::_ID35014();

    if ( _func_02F( level._ID45870 ) )
        level._ID45394._ID511 = 1;

    var_0 _meth_810F( var_3, ( 0, -150, 15 ) );
    wait 6.5;
    var_0._ID11393 = 1;
    wait 2;
    var_0._ID11393 = 0;
    level._ID45394 waittill( "death" );

    if ( _func_02F( level._ID45870 ) )
        return;

    var_0 thread animscripts\laatpv_turret\common::_ID32371( var_1, 1, 2, "stop_firing" );
    level._ID794.m_player_rig1 waittillmatch( "single anim",  "start_turret_anim"  );
    var_2._ID3189 = "generic";
    var_2 _meth_814C( %body, 1 );
    var_2 _meth_8155( var_2 _ID42407::_ID16120( "turret_guy_panic" ), 1, 1, 1 );
    level waittill( "latvee_destroyer_fired" );
    var_0 notify( "stop_firing" );
    var_2 _meth_8058();
}

_ID46169( var_0 )
{
    _func_156( _ID42237::_ID16299( "latvee_explosion" ), level._ID51121._ID740 );
}

_ID48974( var_0 )
{
    level._ID51121 _ID42411::_ID16987();
    level._ID51121 _meth_8058();
}

_ID51105()
{
    self endon( "death" );
    thread _unknown_62A5();
    thread _ID42413::_ID9604();
    _ID42475::_ID34575( "intro_btr_showing_up" );
    level._ID51121._ID486 = 30000;
    level._ID51831._ID486 = 30000;
    self _meth_826C( level._ID51121, ( 0, 0, 40 ) );
    wait 1.5;
    level notify( "latvee_blows_up" );
    wait 2.5;
    var_0 = _func_1A2( "turret_guy", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_1A7( var_2 ) )
            var_2 _meth_8058();
    }

    var_clear_2
    var_clear_0
    level._ID51121 _meth_80A1( "scn_invasion_npc_laatpv_explode_01" );

    for ( var_4 = 0; var_4 < 2; var_4++ )
    {
        if ( var_4 != 0 )
            wait 0.2;

        _unknown_81A8( level._ID51121._ID740 );
        self _meth_8272();
    }

    _func_157( level._ID1426["jeep_car_glass_explode"], level._ID51831, "tag_hulagirl_attach" );
    _ID42407::_ID10226( 0.25, _ID42237::_ID27077, "scn_invasion_plr_veh_bullet_impact", level._ID51831._ID740 + ( 0, -90, 70 ) );
    self _meth_826C( level._ID51831, ( 0, 0, 50 ) );
    wait 1;
    _func_156( _ID42237::_ID16299( "latvee_explosion_player" ), level._ID51831._ID740 );
    wait 0.6;
    self _meth_826C( level._ID51121, ( 0, 0, 40 ) );
    wait 1;

    for ( var_4 = 0; var_4 < 5; var_4++ )
    {
        self _meth_8272();
        wait 0.2;
    }

    _unknown_8027();
}

latvee_destroyer_fire_notetrack( var_0 )
{
    level._ID53691 _meth_8272();
}

latvee_player_explode_notetrack( var_0 )
{
    level._ID794 _meth_80F7();
    level._ID794 _meth_80F3( 1 );
    level._ID51831 _ID42411::_ID16987();
    level._ID51831 _meth_8058();
}

_ID53533()
{
    self endon( "death" );
    thread _unknown_80B9();
    var_0 = _func_1A5();
    var_0._ID37340 = [];
    var_1 = _ID42237::_ID16638( "pillar1", "targetname" )._ID740;
    _unknown_7FB0( var_0, var_1, 9990 );
    var_1 = _ID42237::_ID16638( "pillar2", "targetname" )._ID740;
    _unknown_7FC8( var_0, var_1, 9991 );
    var_1 = _ID42237::_ID16638( "pillar3", "targetname" )._ID740;
    _unknown_7FDF( var_0, var_1, 9992 );
    self _meth_826B( var_0._ID37340[0]["origin"] );
    _ID42237::_ID14413( "latvee_destroyer_pillars" );
    _unknown_8148( var_0 );
    _ID42407::_ID10226( 1, _ID42475::_ID34575, "stop_laatpv_ride_intro" );
    var_0._ID37340 = [];
    var_1 = _ID42237::_ID16638( "front1", "targetname" )._ID740;
    _unknown_8025( var_0, var_1, 9993, 1 );
    var_1 = _ID42237::_ID16638( "front2", "targetname" )._ID740;
    _unknown_803D( var_0, var_1, 9994, 1 );
    var_1 = _ID42237::_ID16638( "front3", "targetname" )._ID740;
    _unknown_8056( var_0, var_1, 9995, 1 );
    _ID42407::_ID1985( _ID42407::_ID1687, 1 );
    _ID42407::_ID1886( "stop_shooting" );
    _ID42407::_ID1890( ::_unknown_8341, 0, 1 );
    thread _ID42407::_ID11231();
    _ID42237::_ID14413( "latvee_destroyer_front" );
    self notify( "stop_shooting" );
    self _meth_826B( var_0._ID37340[0]["origin"] );
    _unknown_81E5( var_0 );
    _ID42407::_ID13024( "spotted_player" );
    thread _unknown_8378( 0, 1 );
    _ID42237::_ID14413( "start_house_destroyer" );
    self _meth_80B7();
}

latvee_destroyer_fires_at_pillars_and_player_trigger()
{
    _ID42237::_ID14400( "latvee_destroyer_pillars" );
    _ID42237::_ID14400( "latvee_destroyer_front" );
    var_0 = _func_06A( "trigger_radius", ( 1710, 6600, 2275 ), 2, 75, 50 );

    while ( !_ID42237::_ID14385( "latvee_destroyer_pillars" ) && _ID42237::_ID14385( "latvee_destroyer_front" ) )
    {
        var_0 waittill( "trigger",  var_1  );

        if ( var_1 == level._ID52761 )
        {
            _ID42237::_ID14402( "latvee_destroyer_pillars" );
            continue;
        }

        if ( var_1 == level._ID794 )
            _ID42237::_ID14402( "latvee_destroyer_front" );
    }

    var_0 _meth_80B7();
}

latvee_destroyer_fires_at_targets( var_0 )
{
    self endon( "death" );
    var_1 = 62500.0;

    for ( var_2 = 0; var_2 < var_0._ID37340.size; var_2++ )
    {
        self _meth_826B( var_0._ID37340[var_2]["origin"] );
        _unknown_8418( var_0._ID37340[var_2]["origin"] );

        if ( var_0._ID37340[var_2]["exploder"] > 0 )
        {
            _ID42234::_ID13611( var_0._ID37340[var_2]["exploder"] );
            _func_192( 0.25, 0.2, var_0._ID37340[var_2]["origin"], 720 );

            if ( _func_02F( var_0._ID37340[var_2]["blastImpact"] ) && var_0._ID37340[var_2]["blastImpact"] )
            {
                if ( _func_22D( level._ID794._ID740, var_0._ID37340[var_2]["origin"] ) < var_1 )
                    level._ID794 _meth_859F( var_0._ID37340[var_2]["origin"] );
            }
        }

        wait 0.15;
    }
}

_ID43048()
{
    _ID42411::_ID16988();
    thread _unknown_662D();
    thread _ID42413::_ID9604();
    thread _unknown_845E();
    self._ID9640 = 1;
    self endon( "death" );
    var_0 = _func_1A5();
    var_1 = _ID42237::_ID16638( "bh_roof", "targetname" )._ID740;
    var_0._ID37340 = [];
    var_2 = _func_1DC( "blue_house_glass" );
    _unknown_820E( var_0, var_1, 12 );
    var_1 = _ID42237::_ID16638( "bh_corner", "targetname" )._ID740;
    _unknown_8226( var_0, var_1, 13 );
    var_1 = _ID42237::_ID16638( "bh_garage_left", "targetname" )._ID740;
    _unknown_823D( var_0, var_1, 10 );
    var_1 = _ID42237::_ID16638( "bh_garage_right", "targetname" )._ID740;
    _unknown_8254( var_0, var_1, 11 );

    for ( var_3 = 0; var_3 < var_0._ID37340.size; var_3++ )
    {
        self _meth_826B( var_0._ID37340[var_3]["origin"] );
        _unknown_8542( var_0._ID37340[var_3]["origin"] );

        if ( var_0._ID37340[var_3]["exploder"] > 0 )
            _ID42234::_ID13611( var_0._ID37340[var_3]["exploder"] );

        if ( var_0._ID37340[var_3]["exploder"] == 13 )
        {
            var_4 = var_2;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                _func_1DF( var_5 );
            }

            var_clear_2
            var_clear_0
        }

        wait 0.15;
    }

    var_7 = _ID42237::_ID16638( "cop_car", "targetname" );
    self _meth_826B( var_7._ID740 );
    self waittill( "turret_on_target" );

    while ( !_ID42237::_ID14385( "house_destroyer_stage2" ) )
    {
        var_8 = _func_0B9( 4, 6 );

        for ( var_9 = 0; var_9 < var_8; var_9++ )
        {
            self _meth_8272();
            wait 0.2;
        }

        var_10 = _func_0B9( 40, 60 );

        for ( var_11 = 0; var_11 < var_10; var_11++ )
        {
            if ( _ID42237::_ID14385( "house_destroyer_stage2" ) )
                break;

            wait 0.05;
        }
    }

    var_0 = _func_1A5();
    var_1 = _ID42237::_ID16638( "roof_corner", "targetname" )._ID740;
    var_0._ID37340 = [];
    _unknown_8359( var_0, var_1, 4 );
    var_1 = _ID42237::_ID16638( "bh_corner", "targetname" )._ID740;
    _unknown_8372( var_0, var_1, 2 );
    var_1 = _ID42237::_ID16638( "big_windows", "targetname" )._ID740;
    _unknown_838B( var_0, var_1, 1 );
    var_1 = _ID42237::_ID16638( "back_windows", "targetname" )._ID740;
    _unknown_83A3( var_0, var_1, 3 );

    for ( var_3 = 0; var_3 < var_0._ID37340.size; var_3++ )
    {
        self _meth_826B( var_0._ID37340[var_3]["origin"] );
        _unknown_8691( var_0._ID37340[var_3]["origin"] );

        if ( var_0._ID37340[var_3]["exploder"] > 0 )
            _ID42234::_ID13611( var_0._ID37340[var_3]["exploder"] );

        wait 0.15;
    }

    self endon( "stop_shooting" );
    thread _unknown_8662();
    var_7 = _ID42237::_ID16638( "beemer", "targetname" );
    self _meth_826B( var_7._ID740 );
    self waittill( "turret_on_target" );
    var_8 = _func_0B9( 4, 6 );

    for ( var_9 = 0; var_9 < var_8; var_9++ )
    {
        self _meth_8272();
        wait 0.2;
    }

    var_7 = _ID42237::_ID16638( "barrier_car", "targetname" );
    self _meth_826B( var_7._ID740 );
    self waittill( "turret_on_target" );

    for ( var_3 = 0; var_3 < 3; var_3++ )
    {
        var_8 = _func_0B9( 4, 6 );

        for ( var_9 = 0; var_9 < var_8; var_9++ )
        {
            self _meth_8272();
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
        if ( _ID42237::_ID41802( self._ID740, self._ID65, level._ID794._ID740, level._ID8760["60"] ) )
        {
            if ( _func_090( self._ID740 + ( 0, 0, 64 ), level._ID794 _meth_80AF(), 0, self ) )
                break;
        }

        wait 1;
    }

    thread _unknown_8789();
}

_ID47729()
{
    self endon( "death" );
    _ID42407::_ID13024( "spotted_player" );
    var_0 = _func_1F2( "house_destroyer_first_path", "targetname" );
    self _meth_8289( var_0 );
    _ID42237::_ID14413( "house_destroyer_stage2" );
    var_1 = _func_1F2( "house_destroyer_path", "targetname" );
    self _meth_8289( var_1 );
    self waittill( "reached_end_node" );
    level._ID794 _ID42407::_ID41105( self, 950, 4 );
    _ID42237::_ID14402( "house_destroyer_unloading" );
    thread _ID42411::_ID40298();
    wait 6;
    thread _unknown_87E5();
    wait 16;
    _ID42237::_ID14413( "take_point" );
    var_2 = _func_1A2( "bmp_bad_places", "script_noteworthy" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _func_020( "", 20, var_4._ID740, var_4._ID851, 300 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "house_destroyer_moving_back" );
    var_6 = _func_1F2( "house_destroyer_backwards_path", "targetname" );
    self _meth_8289( var_6 );
    _ID42411::_ID40304();
    wait 25.0;
    _ID42411::_ID40305();
    _ID42237::_ID14413( "leaving_gas_station" );
    self notify( "stop_shooting" );
    self _meth_80B7();
}

_ID44617( var_0 )
{
    _unknown_8860( var_0 );
    self _meth_8272();
    wait 0.05;
}

_ID46338( var_0 )
{
    wait 0.1;
    _func_184( var_0, 200, 100, 4.0 );
}

_ID50761( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    self notify( "stop_shooting" );
    self endon( "stop_shooting" );
    self endon( "death" );
    self endon( "delete" );

    for (;;)
    {
        var_2 = _ID42407::_ID15617( self._ID740 );
        wait(_func_0BA( 0.8, 1.3 ));

        while ( !_unknown_892F( var_2 ) )
            wait(_func_0BA( 0.2, 0.6 ));

        if ( !var_1 )
        {
            _unknown_892B( var_2 );
            wait(_func_0BA( 0.8, 2.4 ));
            _unknown_893B( var_2 );
            wait(_func_0BA( 0.8, 2.4 ));
        }

        while ( _unknown_8965( var_2 ) )
        {
            _unknown_8940( var_2 );
            wait(_func_0BA( 2, 3 ));
        }

        if ( var_0 )
        {
            if ( !_unknown_897D( var_2 ) )
            {
                self _meth_826D();
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
        level._ID794 waittill( "damage",  var_1, var_0  );

        if ( var_1 == self )
        {

        }
    }
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

_ID6739( var_0 )
{
    if ( _ID42237::_ID14385( "player_inside_nates" ) )
        return 0;

    if ( _ID42237::_ID14385( "player_in_diner" ) )
        return 0;

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

_ID52171()
{
    _func_19F( &"SCRIPT_DEBUG_LEVEL_END" );
}

_ID45672( var_0 )
{
    _ID42237::_ID14413( var_0 );
    _ID42407::_ID4422( "hello" );
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
    level notify( "moving " + var_0 );
    level endon( "moving " + var_0 );
    var_2 = level._ID25349[var_0];
    var_2._ID47623 = var_1;
    level._ID49672 = var_1;
    _func_1E8( var_2._ID19286, level._ID49672 );
}

_ID43340( var_0 )
{
    level notify( "moving " + var_0 );
    level endon( "moving " + var_0 );
    var_1 = level._ID25349[var_0];
    var_2 = undefined;
    _unknown_8C71( var_0, &"INVASION_WAYPOINT_HOSTILES" );
    var_3 = _func_1A1( "north_trucks_retreat_point", "targetname" );

    while ( var_1._ID36185 != "done" )
    {
        var_4 = _func_0DE( "axis" );

        if ( var_4.size < 1 )
        {
            level._ID49672 = var_3._ID740;
            _func_1E8( var_1._ID19286, level._ID49672 );
            wait 3;
            continue;
        }

        var_5 = [];
        var_6 = var_4;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_5[var_5.size] = var_7._ID740;
        }

        var_clear_2
        var_clear_0
        level._ID49672 = _func_1CA( var_5 );
        _func_1E8( var_1._ID19286, level._ID49672 + ( 0, 0, 70 ) );
        wait 2.2;
    }
}

_ID54116( var_0, var_1 )
{
    var_2 = level._ID25349[var_0];

    if ( _func_02F( var_1 ) )
        _func_0C7( var_2._ID19286, var_1 );
    else
        _func_0C7( var_2._ID19286 );
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

_ID50024( var_0 )
{
    self _meth_8183( var_0 );
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

    if ( _func_02F( level._ID794._ID51771 ) )
        var_0 = 1;

    if ( level._ID794 _meth_831C() == "remote_missile_detonator" )
        var_0 = 1;

    if ( _ID42237::_ID14385( "bmps_from_north_dead" ) )
        var_0 = 1;

    return var_0;
}

_ID48862()
{
    var_0 = 0;

    if ( _func_02F( level._ID794._ID51771 ) )
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

_ID45323()
{
    var_0 = _func_03B( "glass_damageToWeaken" );
    var_1 = _func_03B( "glass_damageToDestroy" );
    var_2 = var_0 + var_1 / 100;
    var_3 = _func_1A1( self._ID1191, "targetname" );

    for ( var_4 = 0; var_4 < var_2; var_4++ )
        _func_1C8( "nosound_magicbullet", self._ID740, var_3._ID740 );
}

_ID49309()
{
    level._ID49526 endon( "death" );

    for (;;)
    {
        if ( _func_02F( level._ID52466 ) )
            var_0 = level._ID52466._ID740;
        else if ( _func_02F( level._ID49090 ) )
            var_0 = level._ID49090;
        else
            var_0 = ( -553.753, -2970, 2369.84 );

        var_1 = _func_11A( var_0 - level._ID49526._ID740 );
        level._ID39406 _meth_82B8( level._ID49526._ID740, 0.1, 0, 0 );
        level._ID39406 _meth_82BF( var_1, 0.1, 0, 0 );
        wait 0.05;
    }
}

_ID46391()
{
    var_0 = _func_1A1( "house_area_volume", "targetname" );
    var_1 = _func_1A2();
    var_2 = [];
    var_2["script_vehicle_corpse"] = 1;
    var_2["script_model"] = 1;
    var_2["script_brushmodel"] = 1;
    var_2["script_vehicle_collmap"] = 1;
    var_2["info_volume_breachroom"] = 1;
    var_2["actor_ally_hero_foley"] = 1;
    var_2["actor_ally_hero_dunn"] = 1;
    var_2["stage"] = 1;
    var_3 = var_1;

    for ( var_6 = _func_1DA( var_3 ); _func_02F( var_6 ); var_6 = _func_1BF( var_3, var_6 ) )
    {
        var_4 = var_3[var_6];

        if ( _func_1A7( var_4 ) )
            continue;

        if ( !_func_02F( var_4._ID170 ) )
        {
            if ( var_4 _meth_80B0( var_0 ) )
                var_4 _meth_80B7();

            continue;
        }

        if ( _func_02F( var_2[var_4._ID170] ) )
            continue;

        if ( _func_02F( var_4._ID172 ) && _func_02F( var_2[var_4._ID172] ) )
            continue;

        if ( var_4 == var_0 )
            continue;

        if ( var_4 _unknown_8FF5() )
        {
            var_5 = _func_06A( "script_origin", var_4._ID740 );

            if ( var_5 _meth_80B0( var_0 ) )
                var_4 _meth_80B7();

            var_5 _meth_80B7();
            continue;
        }

        if ( var_4 _meth_80B0( var_0 ) )
            var_4 _meth_80B7();
    }

    var_clear_3
    var_clear_0
}

_ID49313()
{
    if ( !_func_02F( self._ID172 ) )
        return 0;

    if ( _func_125( self._ID172, "script_vehicle" ) )
        return 1;

    if ( _func_125( self._ID172, "script_vehicle_corpse" ) )
        return 1;

    if ( _func_125( self._ID172, "script_brushmodel" ) )
        return 1;

    if ( _func_125( self._ID172, "trigger" ) )
        return 1;

    return self._ID172 == "info_volume";
}

_ID49877()
{
    var_0 = _func_1A1( "house_area_volume", "targetname" );
    var_1 = _func_1A2();
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3 _meth_80B0( var_0 ) )
            var_3 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID54550()
{
    switch ( level._ID35897 )
    {

    }

    case "defend_bt":
    case "default":
    case "convoy":
    case "helis":
    case "vip_escort":
    case "burgertown":
    case "diner":
    case "defend_diner":
    case "attack_diner":
    case "nates_roof":
    case "crash":
    case "gas_station":
    case "pizza":
    case "bmp":
    case "yards":
    case "latvee":
}

_ID47780()
{
    _ID42237::_ID14421( "follow_foley", "entering_yards" );
}

_ID53611()
{
    var_0 = _ID42237::_ID16638( "police_car_moment", "script_noteworthy" );
    var_1 = var_0._ID740;
    _unknown_9010( "obj_crash", &"INVASION_OBJ_FOLEY", level._ID52761._ID740 );
    _unknown_9038( "obj_crash", "current" );
    thread _unknown_90C5( "obj_crash", level._ID52761, ( 0, 0, 70 ) );
    _ID42237::_ID14413( "crash_objective" );
    _ID42237::_ID14421( "player_goto_roof", "player_on_roof" );
    _unknown_906C( "obj_crash", "active" );
    _unknown_907A( "obj_crash", "done", 1 );
    _func_1E4( 0 );
}

_ID43728()
{
    if ( !_ID42237::_ID14385( "player_on_roof" ) )
    {
        var_0 = level._ID43847._ID740;
        _unknown_9080( "obj_roof", &"INVASION_OBJ_ROOF", var_0 );
        _unknown_90A8( "obj_roof", "current" );
        _ID42237::_ID14413( "player_on_roof" );
        _unknown_90BD( "obj_roof", "done" );
    }
}

_ID47595()
{
    var_0 = _ID42237::_ID16638( "south_side_of_roof_obj_loc", "targetname" );
    var_1 = var_0._ID740;
    _unknown_90C1( "obj_defend", &"INVASION_OBJ_DEFEND", var_1 );
    _unknown_90EA( "obj_defend", "current" );
    _unknown_9165( "obj_defend", &"INVASION_WAYPOINT_DEFEND" );
    _ID42237::_ID14413( "northside_roof" );
    var_2 = _ID42237::_ID16638( "northside_roof", "targetname" );
    _unknown_9143( "obj_defend", var_2._ID740 );
    _unknown_9192( "obj_defend", &"INVASION_WAYPOINT_DEFEND" );
    _ID42237::_ID14413( "truck_guys_retreat" );
    var_3 = _ID42237::_ID16638( "off_the_roof", "targetname" );
    _unknown_9170( "obj_defend", var_3._ID740 );
    _unknown_91BB( "obj_defend" );
    _unknown_9360( var_3 );
    _unknown_915D( "obj_defend", "done" );
}

defend_roof_think( var_0 )
{
    level endon( "time_to_go_get_UAV_control" );

    while ( !_ID42237::_ID14385( "time_to_go_get_UAV_control" ) )
    {
        _ID42237::_ID14413( "off_roof_obj" );
        _unknown_91B6( "obj_defend", ( 0, 0, 0 ) );
        _ID42237::_ID14426( "off_roof_obj" );
        _unknown_91CA( "obj_defend", var_0._ID740 );
    }
}

_ID47882()
{
    var_0 = _func_1A1( "predator_drone_control", "targetname" );
    var_1 = var_0._ID740;
    _unknown_91A2( "obj_predator", &"INVASION_OBJ_PREDATOR", var_1 );
    _unknown_91CB( "obj_predator", "current" );
    _ID42237::_ID14413( "player_has_predator_drones" );
    _unknown_91DF( "obj_predator", "done" );
}

_ID50034()
{
    var_0 = _func_1A1( "nates_restaurant_goal", "targetname" );
    var_1 = var_0._ID740;
    _unknown_91E1( "obj_burgertown", &"INVASION_OBJ_REGROUP", var_1 );
    _unknown_920A( "obj_burgertown", "current" );
    _unknown_9285( "obj_burgertown", &"INVASION_WAYPOINT_REGROUP" );
    _ID42237::_ID14413( "obj_regroup_nates_bombed" );
    wait 3;
    _unknown_925F( "obj_burgertown", ( 0, 0, 0 ) );
    _unknown_92AA( "obj_burgertown" );
    _ID42237::_ID14413( "time_to_clear_burgertown" );
    var_2 = _func_1A1( "objective_burgertown_groundfloor", "targetname" );
    var_1 = var_2._ID740;
    _unknown_9284( "obj_burgertown", &"INVASION_OBJ_BURGERTOWN" );
    _unknown_9295( "obj_burgertown", var_1 );
    _ID42237::_ID14413( "burger_town_lower_cleared" );
    wait 2;
    _unknown_927F( "obj_burgertown", "done" );
}

_ID46644()
{
    wait 0.2;

    if ( !_ID42237::_ID14385( "bmp_north_left_dead" ) )
    {
        _unknown_9283( "obj_bmps", &"INVASION_OBJ_BMPS", level._ID50295._ID740 );
        _unknown_92AC( "obj_bmps", "current" );
        thread _unknown_9339( "obj_bmps", level._ID50295, ( 0, 0, 96 ) );
        _unknown_933B( "obj_bmps", &"INVASION_WAYPOINT_DESTROY" );
    }
    else if ( !_ID42237::_ID14385( "bmp_north_mid_dead" ) )
    {
        _unknown_92CE( "obj_bmps", &"INVASION_OBJ_BMPS", level._ID54042._ID740 );
        _unknown_92F7( "obj_bmps", "current" );
        thread _unknown_9384( "obj_bmps", level._ID54042, ( 0, 0, 96 ) );
        _unknown_9386( "obj_bmps", &"INVASION_WAYPOINT_DESTROY" );
    }
    else
        return;

    _ID42237::_ID14413( "bmp_north_left_dead" );

    if ( !_ID42237::_ID14385( "bmp_north_mid_dead" ) )
    {
        thread _unknown_93BB( "obj_bmps", level._ID54042, ( 0, 0, 96 ) );
        _unknown_93BD( "obj_bmps", &"INVASION_WAYPOINT_DESTROY" );
    }

    _ID42237::_ID14413( "bmp_north_mid_dead" );
    _unknown_93CE( "obj_bmps" );
    _unknown_936A( "obj_bmps", "done" );
}

_ID43825()
{
    var_0 = _func_1A1( "raptor_in_nates_prep", "targetname" );
    var_1 = var_0._ID740;
    _unknown_936D( "obj_nates_regroup", &"INVASION_OBJ_NATES_REGROUP", var_1 );
    _unknown_9395( "obj_nates_regroup", "current" );
    _unknown_9410( "obj_nates_regroup", &"INVASION_WAYPOINT_REGROUP" );
    _ID42237::_ID14413( "player_in_pos_to_cover_vip" );
    _unknown_93B5( "obj_nates_regroup", "done" );
    _unknown_942D( "obj_burgertown" );
}

_ID46581()
{
    var_0 = level._ID52761._ID740;
    _unknown_93B6( "obj_raptor_defend", &"INVASION_OBJ_VIP_ESCORT", var_0 );
    _unknown_93DE( "obj_raptor_defend", "current" );
    thread _unknown_946C( "obj_raptor_defend", level._ID52761, ( 0, 0, 70 ) );
    _unknown_946E( "obj_raptor_defend", &"INVASION_WAYPOINT_PROTECT" );
    var_1 = _func_039( "objectiveFadeTooFar" );
    _func_0DB( "objectiveFadeTooFar", 5 );
    _ID42237::_ID14413( "president_in_BT_meat_locker" );
    _unknown_9423( "obj_raptor_defend", "active" );
    _unknown_941E( "obj_neutralize", &"INVASION_OBJ_BURGERTOWN_DEFEND", ( 0, 0, 0 ), 1 );
    _unknown_9446( "obj_neutralize", "current" );
    thread _unknown_9488( "obj_neutralize" );
    _func_0DB( "objectiveFadeTooFar", var_1 );
    _ID42237::_ID14413( "first_attack_heli_spawned" );
    wait 9;
}

_ID52750()
{
    var_0 = _func_1A1( "nates_stinger", "script_noteworthy" );
    var_1 = _func_1A1( "diner", "script_noteworthy" );
    level._ID45654 = [];
    level._ID45654["origin"] = var_0._ID740;
    level._ID45654["angles"] = var_0._ID65;
    level._ID45654["classname"] = var_0._ID170;
    var_2 = _func_06A( "script_model", var_1._ID740 );
    var_2 _meth_80B8( "h1_weapon_stinger_obj" );
    var_2._ID65 = var_1._ID65;
    var_2 _meth_805A();
    var_3 = _func_06A( "script_model", var_0._ID740 );
    var_3 _meth_80B8( "h1_weapon_stinger_obj" );
    var_3._ID65 = var_0._ID65;
    var_3 _meth_805A();
    level waittill( "attack_heli_spawned" );

    while ( !_ID42237::_ID14385( "second_attack_heli_dead" ) )
    {
        wait 0.1;

        if ( _ID42237::_ID14385( "first_attack_heli_dead" ) && !_ID42237::_ID14385( "second_attack_heli_spawned" ) )
        {
            var_3 _meth_805A();
            var_2 _meth_805A();
            level waittill( "second_attack_heli_spawned" );
        }

        if ( _unknown_9886() )
        {
            var_3 _meth_805A();
            var_2 _meth_805A();
            continue;
        }

        if ( _func_02F( var_1 ) && !_func_2A5( var_1 ) )
            var_2 _meth_8059();

        if ( _func_02F( var_0 ) && !_func_2A5( var_0 ) )
            var_3 _meth_8059();

        if ( !_func_02F( var_0 ) || _func_2A5( var_0 ) )
        {
            var_0 = _func_06A( level._ID45654["classname"], level._ID45654["origin"], 1 );
            var_0._ID65 = level._ID45654["angles"];
            var_0 _meth_818A( 1, 0 );
            var_0._ID922 = "nates_stinger";
        }
    }

    var_2 _meth_80B7();
    var_3 _meth_80B7();
}

player_has_stinger()
{
    var_0 = level._ID794 _meth_8316();

    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( var_2, "stinger" ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID53607( var_0 )
{
    level notify( "attack_heli_spawned" );
    level._ID47105 thread maps\invasion_aud::_ID43433();
    var_1 = 1;
    var_2 = level._ID794 _meth_8316();
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( var_4 == "stinger" )
            var_1 = 0;
    }

    var_clear_2
    var_clear_0

    if ( var_1 )
    {
        var_6 = level._ID45654["origin"];
        var_7 = _func_1A1( "diner", "script_noteworthy" );

        if ( _func_02F( var_7 ) )
        {
            var_6 = var_7._ID740;
            level._ID53339 = "west";
        }
        else
            level._ID53339 = "east";

        var_8 = var_6;
    }
    else
        var_8 = level._ID47105._ID740;

    level notify( "moving obj_raptor_defend" );
    _unknown_966D( "obj_neutralize", &"INVASION_OBJ_ATTACK_HELI" );
    _unknown_967D( "obj_neutralize", var_8 );
    _unknown_96C8( "obj_neutralize" );

    if ( var_1 )
        level._ID47105 _unknown_9A41();

    if ( _func_1A7( level._ID47105 ) )
    {
        level notify( "moving obj_raptor_defend" );
        _unknown_96AE( "obj_neutralize", ( 0, 0, 0 ) );
        _unknown_968F( "obj_raptor_defend", "active_waypoint", 1 );
        _unknown_970A( "obj_raptor_defend", &"INVASION_WAYPOINT_DESTROY" );
        thread _unknown_9728( "obj_raptor_defend", level._ID47105, ( 0, 0, 128 ) );
        level._ID47105 waittill( "death" );
    }

    _unknown_96C4( "obj_raptor_defend", "active", 1 );
    _unknown_973C( "obj_raptor_defend" );
}

_ID51532()
{
    self endon( "death" );

    for (;;)
    {
        level._ID794 waittill( "weapon_change" );
        var_0 = level._ID794 _meth_831C();

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
    _unknown_9730( "obj_neutralize", &"INVASION_OBJ_BURGERTOWN_DEFEND" );
    thread _unknown_974C( "obj_neutralize" );
    _ID42237::_ID14413( "second_attack_heli_spawned" );
    wait 9;
}

_ID46479()
{
    var_0 = 1;
    _unknown_9AAA( var_0 );
}

_ID44288()
{
    level notify( "moving obj_raptor_defend" );
    _unknown_9760( "obj_neutralize", &"INVASION_OBJ_BURGERTOWN_DEFEND" );
    thread _unknown_977C( "obj_neutralize" );
    _ID42237::_ID14413( "time_to_goto_convoy" );
    _unknown_9757( "obj_raptor_defend", "done" );
    _unknown_9765( "obj_neutralize", "done", 1 );
}

_ID45855()
{
    _ID42237::_ID14413( "time_to_goto_convoy" );

    if ( !_func_02F( level._ID47128 ) )
        level._ID47128 = _func_1A1( "convoy_obj", "targetname" );

    _unknown_9776( "obj_convoy", &"INVASION_OBJ_CONVOY", level._ID47128._ID740 );
    thread _unknown_9820( "obj_convoy", level._ID47128, ( 35, -25, 64 ) );
    _unknown_97B3( "obj_convoy", "current" );
}

_ID48260( var_0 )
{
    if ( _func_02F( self._ID29480 ) )
        return var_0 + "_" + self._ID29480;
    else
        return var_0 + "_4";
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

btr_silent_skies_monitor_damage()
{
    level endon( "stop_silent_skies" );
    self waittill( "death",  var_2, var_2, var_2  );

    if ( _func_02F( var_0 ) && _func_02F( var_2 ) )
    {
        if ( _func_1B3( var_0 ) && var_2 != "remote_missile_invasion" )
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
    level._ID51831 _meth_8155( %h2_invasion_intro_jeepride_latvee, 1.0, 0.0, 1.0 );
}

soldiers_escort_president( var_0 )
{
    var_1 = 54;
    var_2 = _func_0DD();

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
        self waittill( "grenade_fire",  var_1, var_0  );

        if ( var_1 == "smoke_grenade_american" )
            var_0 thread _unknown_9DBD( 4 );
    }
}

track_smoke_grenade_fuse( var_0 )
{
    _ID42407::_ID41130( "death", var_0 - 0.05 );
    thread _unknown_9DDF( self._ID740 );
    self _meth_80B7();
}

fake_grenade_vfx( var_0 )
{
    var_1 = 400;
    var_2 = level.smoke_normal;
    var_3 = 1;

    if ( !_ID42237::_ID14385( "entered_alley" ) && _ID42237::_ID14385( "got_visual_on_crash" ) )
    {
        var_2 = level.smoke_low;

        if ( _func_02F( level.smokegrenadesarray ) )
        {
            var_4 = level.smokegrenadesarray;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];

                if ( _func_0F3( var_5._ID740, var_0 ) < var_1 )
                {
                    var_2 = level.smoke_dud;
                    var_3 = 0;
                }
            }

            var_clear_2
            var_clear_0
        }
    }
    else
    {
        if ( level._ID34439 > 4 )
            var_2 = level.smoke_low;

        var_3 = 0;
    }

    var_7 = _func_15B( var_2, var_0 );
    _func_15C( var_7 );
    thread _ID42237::_ID27077( "h1_wpn_smoke_pop", var_0 );

    if ( var_3 )
    {
        var_8 = _func_06A( "script_origin", var_0 );
        level.smokegrenadesarray = _ID42237::_ID3293( level.smokegrenadesarray, var_8 );
        wait 35;
        level.smokegrenadesarray = _ID42237::_ID3321( level.smokegrenadesarray, var_8 );
        var_8 _meth_80B7();
        wait 15;
        var_7 _meth_80B7();
    }
    else
    {
        wait 50;
        var_7 _meth_80B7();
    }
}

staticmodelgroup_init()
{
    var_0 = _ID42237::_ID16638( "struct_staticmodelgroup", "targetname" );
    var_1 = _func_0C1( var_0._ID31388 );

    for ( var_2 = 1; var_2 <= var_1; var_2++ )
    {
        var_3 = "flag_staticmodelgroup_" + var_2;
        _ID42237::_ID14400( var_3 );
        thread _unknown_9F12( var_3, var_2 );
    }

    _ID42237::_ID14402( "static_model_initialized" );
}

staticmodelgroup_monitor( var_0, var_1 )
{
    _func_31C( var_1 );

    for (;;)
    {
        if ( _ID42237::_ID14385( var_0 ) )
            _func_31B( var_1 );
        else
            _func_31C( var_1 );

        level waittill( var_0 );
    }
}

hide_destructible_vehicles( var_0, var_1, var_2 )
{
    var_3 = _func_1A2( var_1, "targetname" );
    var_4 = _func_1A2( "destructible_vehicle", "targetname" );
    var_5 = [];

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
        return;

    var_6 = var_4;

    for ( var_11 = _func_1DA( var_6 ); _func_02F( var_11 ); var_11 = _func_1BF( var_6, var_11 ) )
    {
        var_7 = var_6[var_11];
        var_8 = var_3;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];

            if ( var_9 _meth_80B0( var_7 ) )
                var_5 = _ID42237::_ID3293( var_5, var_7 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0
    _ID42237::_ID14400( var_0 );

    if ( var_2 )
        _ID42237::_ID14388( var_0 );
    else
        _ID42237::_ID14402( var_0 );

    for (;;)
    {
        if ( _ID42237::_ID14385( var_0 ) )
        {
            var_12 = var_5;

            for ( var_13 = _func_1DA( var_12 ); _func_02F( var_13 ); var_13 = _func_1BF( var_12, var_13 ) )
            {
                var_7 = var_12[var_13];
                var_7 _meth_805A();
            }

            var_clear_1
            var_clear_0
        }
        else
        {
            var_14 = var_5;

            for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
            {
                var_7 = var_14[var_15];
                var_7 _meth_8059();
            }

            var_clear_1
            var_clear_0
        }

        level waittill( var_0 );
    }
}

swap_burning_tree()
{
    wait 9;
    var_0 = _func_1A1( "burning_tree", "script_noteworthy" );

    while ( _ID42407::_ID27540( var_0._ID740, 0.4, 1 ) )
        wait 1;

    var_0 _meth_80B8( "h2_foliage_tree_oak_1_burnt" );
}

animate_nates_beams()
{
    _func_31B( 15 );
    _func_31C( 16 );
    var_0 = _func_1A1( "nates_beam_animated", "targetname" );
    var_0 _meth_805A();
    level waittill( "exploding_139" );
    var_0 _ID42407::_ID3428( "h2_nates_beam_destruction" );
    _func_31C( 15 );
    var_0 _meth_8059();
    var_0 _ID42259::_ID3111( var_0, "h2_nates_beam_destruction" );
    var_0 _meth_805A();
    _func_31B( 16 );
}

animated_wires_taco()
{
    var_0 = _func_1A2( "animated_wires", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID3428( "h2_wires_animated" );
        var_2 thread _ID42259::_ID3044( var_2, "h2_wires_animated" );
    }

    var_clear_2
    var_clear_0
}

monitor_nates_roof_interior()
{
    thread _unknown_A0D7( "flag_vehicles_nates", "volume_vehicles_nates" );
    _ID42237::_ID14413( "static_model_initialized" );
    thread _unknown_A21A();

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
    var_0 = _func_1A1( "diner_player_push", "targetname" );
    _ID42237::_ID14413( "diner_attack" );
    _ID42237::_ID14426( "player_in_diner" );
    var_0._ID740 = var_0._ID740 + ( 0, 0, 120 );
    _ID42237::_ID14413( "diner_door_opened" );
    var_0._ID740 = var_0._ID740 - ( 0, 0, 120 );
}

monitor_nates_portal()
{
    level waittill( "exploding_333" );
    var_0 = _func_1A1( "trigger_portal_nates_sides", "targetname" );
    var_0 _meth_80B7();
    waitframe;
    _ID42237::_ID14402( "flag_portal_nates_sides" );
}

monitor_nates_roof_portal()
{
    while ( level._ID794._ID39980 )
        wait 0.5;

    _ID42237::_ID14402( "flag_portal_nates_roof" );
}

h2_inv_footik_disable()
{
    for (;;)
    {
        if ( _ID42237::_ID14385( "player_on_roof" ) || _ID42237::_ID14385( "player_on_burgertown_roof" ) )
            _func_0DB( "xanim_disableFootIK", 1 );
        else
            _func_0DB( "xanim_disableFootIK", 0 );

        _ID42237::_ID41098( "player_on_roof", "player_on_burgertown_roof" );
    }
}

change_remote_missile_zfar()
{
    level endon( "death" );

    for (;;)
    {
        level._ID794 waittill( "player_is_controlling_UAV" );
        _func_0DB( "r_lodFOVFixedScale", 0.5 );
        _ID42237::_ID14388( "flag_staticmodelgroup_10" );
        _ID42237::_ID14388( "flag_staticmodelgroup_8" );
        level._ID794 waittill( "exiting_uav_control" );
        _func_0DB( "r_lodFOVFixedScale", 1 );
        _ID42237::_ID14402( "flag_staticmodelgroup_10" );
        _ID42237::_ID14402( "flag_staticmodelgroup_8" );
    }
}

nates_get_ents()
{
    var_0 = _func_1A2( "nates_info_volumes", "targetname" );
    var_1 = _func_1A2( "script_model", "code_classname" );
    _ID42237::_ID3296( var_1, _func_1A2( "script_brushmodel", "code_classname" ) );
    var_2 = [];
    var_3 = var_1;

    for ( var_8 = _func_1DA( var_3 ); _func_02F( var_8 ); var_8 = _func_1BF( var_3, var_8 ) )
    {
        var_4 = var_3[var_8];

        if ( !var_4 _meth_805B() )
        {
            var_5 = var_0;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
            {
                var_6 = var_5[var_7];

                if ( var_4 _meth_80B0( var_6 ) )
                {
                    var_2[var_2.size] = var_4;
                    break;
                }
            }

            var_clear_2
            var_clear_0
        }
    }

    var_clear_2
    var_clear_0
    return var_2;
}

nates_shadow_object_handler()
{
    level endon( "exploding_333" );
    _ID42237::_ID14413( "nates_after_bombing_setup_done" );
    var_0 = _unknown_A40E();

    for (;;)
    {
        _ID42237::_ID14413( "player_on_roof" );
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( !_func_2A5( var_2 ) )
            {
                var_2 _meth_805A();
                var_2 _meth_8095();
            }
        }

        var_clear_4
        var_clear_2
        _ID42237::_ID14426( "player_on_roof" );
        var_4 = var_0;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_2 = var_4[var_5];

            if ( !_func_2A5( var_2 ) )
            {
                var_2 _meth_8059();
                var_2 _meth_8096();
            }
        }

        var_clear_1
        var_clear_0
        waittillframeend;
    }
}

show_tree()
{
    _func_31C( 14 );
    _ID42237::_ID14413( "flag_staticmodelgroup_14" );
    _func_31C( 13 );
    _func_31B( 14 );
}

monitor_sentry_badplace()
{
    var_0 = _func_1A1( "no_sentry_volume", "targetname" );

    if ( !_func_02F( var_0 ) )
        return;

    for (;;)
    {
        if ( level._ID794 _meth_80B0( var_0 ) )
            level._ID794.nosentry = 1;
        else
            level._ID794.nosentry = undefined;

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

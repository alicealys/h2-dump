// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42237::_ID14400( "stopRainCheck" );
    _ID42237::_ID14400( "rain_mask_on" );
    _ID42237::_ID14400( "rain_mask_off" );
    _ID42237::_ID14400( "parking_player_jumped_down" );
    _ID42237::_ID14400( "stop_rain_mask" );
    _ID42237::_ID14400( "rain_started" );
    level._ID1426["vehicle_explosion_btr80"] = loadfx( "fx/explosions/vehicle_explosion_btr80" );
    level._ID1426["handflare"] = loadfx( "fx/misc/handflare_red_dcemp" );
    level._ID1426["groundflare"] = loadfx( "fx/misc/handflare_red_dcemp" );
    level._ID1426["killshot"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._ID1426["nouse"] = loadfx( "fx/props/news_stand_paper_spill" );
    level._ID1426["nouse"] = loadfx( "fx/props/news_stand_explosion" );
    level._ID1426["nouse"] = loadfx( "fx/props/news_stand_paper_spill_shatter" );
    level._ID1426["nouse"] = loadfx( "fx/props/photocopier_sparks" );
    level._ID1426["nouse"] = loadfx( "fx/props/photocopier_exp" );
    level._ID1426["nouse"] = loadfx( "fx/props/photocopier_fire" );
    level._ID1426["nouse"] = loadfx( "fx/props/electricbox4_explode" );
    level._ID1426["nouse"] = loadfx( "fx/props/filecabinet_dam" );
    level._ID1426["nouse"] = loadfx( "fx/props/filecabinet_des" );
    level._ID1426["nouse"] = loadfx( "fx/misc/light_fluorescent_blowout_runner" );
    level._ID1426["nouse"] = loadfx( "fx/misc/light_blowout_swinging_runner" );
    level._ID6112["tv_explode"] = loadfx( "fx/explosions/tv_explosion" );
    level._ID1426["dcemp_sun"] = loadfx( "fx/misc/dcemp_sun" );
    level._ID1426["dcemp_icbm_trail"] = loadfx( "fx/misc/dcemp_icbm_trail" );
    level._ID1426["space_nuke"] = loadfx( "fx/explosions/space_nuke" );
    level._ID1426["space_nuke_shockwave"] = loadfx( "fx/explosions/space_nuke_shockwave" );
    level._ID1426["space_emp"] = loadfx( "fx/explosions/space_emp" );
    level._ID1426["space_explosion"] = loadfx( "fx/explosions/space_explosion" );
    level._ID1426["space_explosion_small"] = loadfx( "fx/explosions/space_explosion_small" );
    level._ID1426["dcemp_water_nuke_glow"] = loadfx( "fx/misc/dcemp_water_nuke_glow" );
    level._ID1426["dlight_blue"] = loadfx( "fx/misc/dlight_blue" );
    level._ID1426["headshot3"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._ID1426["ground_smoke_dcburning1200x1200"] = loadfx( "fx/smoke/ground_smoke1200x1200_dcburning" );

    if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
        level._ID1426["_attack_heli_spotlight"] = loadfx( "vfx/map/dcemp/spotlight_medium_dcemp" );
    else
        level._ID1426["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_large" );

    level._ID1426["_attack_heli_spotlight_flicker"] = loadfx( "vfx/map/dcemp/spotlight_medium_flicker_dcemp" );
    level._ID1426["planecrash_spotlight"] = loadfx( "fx/misc/dcemp_planecrash_spotlight_model" );
    level._ID1426["dcemp_nuke_spotlight_fade"] = loadfx( "fx/misc/dcemp_nuke_spotlight_fade" );
    level._ID1426["spotlight_lightning"] = loadfx( "fx/misc/spotlight_lightning" );
    level._ID1426["space_helmet_spot_light"] = loadfx( "fx/misc/space_helmet_spot_light" );
    level._ID1426["transformer_spark_runner"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._ID1426["dcemp_glass_74x44"] = loadfx( "fx/props/dcemp_glass_74x44" );
    level._ID1426["bodyfall_dust_high"] = loadfx( "fx/impacts/bodyfall_dust_high" );
    level._ID1426["helicopter_crash"] = loadfx( "fx/explosions/helicopter_crash" );
    level._ID1426["helicopter_explosion_secondary_small"] = loadfx( "fx/explosions/helicopter_explosion_secondary_small" );
    level._ID1426["powerline_runner_oneshot"] = loadfx( "fx/explosions/powerline_runner_oneshot" );
    level._ID1426["space_emp_crashsite"] = loadfx( "fx/explosions/space_emp_crashsite" );
    level._ID1426["space_nuke_crashsite"] = loadfx( "fx/explosions/space_nuke_crashsite" );
    level._ID1426["helicopter_explosion"] = loadfx( "fx/explosions/helicopter_explosion_dcemp" );
    level._ID1426["small_vehicle_explosion"] = loadfx( "fx/explosions/small_vehicle_explosion" );
    level._ID1426["aircraft_crash_fire"] = loadfx( "vfx/map/dcemp/aircraft_crash_fire" );
    level._ID1426["firelp_large_pm"] = loadfx( "fx/fire/firelp_large_pm" );
    level._ID1426["firelp_med_pm"] = loadfx( "fx/fire/firelp_med_pm_nolight_dcemp" );
    level._ID1426["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm" );
    level._ID1426["firelp_large_pm_nolight"] = loadfx( "fx/fire/firelp_large_pm_nolight_dcemp" );
    level._ID1426["firelp_med_pm_nolight"] = loadfx( "fx/fire/firelp_med_pm_nolight_dcemp" );
    level._ID1426["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight_dcemp" );
    level._ID1426["firelp_small_streak_pm1_h"] = loadfx( "fx/fire/firelp_small_streak_pm1_h" );
    level._ID1426["firelp_small_streak_pm_v"] = loadfx( "fx/fire/firelp_small_streak_pm_v" );
    level._ID1426["firelp_small_streak_pm1_h_nolight"] = loadfx( "fx/fire/firelp_small_streak_pm1_h_nolight" );
    level._ID1426["firelp_small_streak_pm_v_nolight"] = loadfx( "fx/fire/firelp_small_streak_pm_v_nolight" );
    level._ID1426["fire_trail_60"] = loadfx( "fx/fire/fire_trail_60" );
    level._ID1426["fire_streak_runner"] = loadfx( "fx/fire/fire_streak_runner" );
    level._ID1426["fire_falling_runner_point"] = loadfx( "vfx/fire/fire_falling_runner_point_infrequent" );
    level._ID1426["fire_tree_embers"] = loadfx( "fx/fire/fire_tree_embers" );
    level._ID1426["jet_crash"] = loadfx( "fx/explosions/jet_crash_dcemp" );
    level._ID1426["bird_pm"] = loadfx( "fx/misc/bird_pm" );
    level._ID1426["leaves_a"] = loadfx( "fx/misc/leaves_a" );
    level._ID1426["fire_embers_directional"] = loadfx( "fx/fire/fire_embers_directional" );
    level._ID1426["waterfall_drainage_short"] = loadfx( "fx/water/waterfall_drainage_short_dcemp" );
    level._ID1426["waterfall_drainage_splash"] = loadfx( "fx/water/waterfall_drainage_splash_dcemp" );
    level._ID1426["falling_water_trickle"] = loadfx( "fx/water/falling_water_trickle" );
    level._ID1426["rain_noise_splashes"] = loadfx( "fx/weather/rain_noise_splashes" );
    level._ID1426["rain_noise_splashes_dark"] = loadfx( "fx/weather/rain_noise_splashes_dark" );
    level._ID1426["rain_splash_lite"] = loadfx( "fx/weather/rain_splash_lite" );
    level._ID1426["rain_splash_lite_runner_40x200"] = loadfx( "fx/weather/rain_splash_lite_runner_40x200" );
    level._ID1426["rain_splash_lite_runner_40x600"] = loadfx( "fx/weather/rain_splash_lite_runner_40x600" );
    level._ID1426["rain_noise_ud"] = loadfx( "fx/weather/rain_noise_ud" );
    level._ID1426["rain_noise_ud_runner_0x400"] = loadfx( "fx/weather/rain_noise_ud_runner_0x400" );
    level._ID1426["cgo_ship_puddle_small"] = loadfx( "fx/distortion/cgo_ship_puddle_small" );
    level._ID1426["cgo_ship_puddle_large"] = loadfx( "fx/distortion/cgo_ship_puddle_large" );
    level._ID1426["rain_splash_lite_4x64"] = loadfx( "fx/weather/rain_splash_lite_4x64" );
    level._ID1426["rain_splash_lite_4x128"] = loadfx( "fx/weather/rain_splash_lite_4x128" );
    level._ID1426["rain_splash_lite_8x64"] = loadfx( "fx/weather/rain_splash_lite_8x64" );
    level._ID1426["rain_splash_lite_8x128"] = loadfx( "fx/weather/rain_splash_lite_8x128" );
    level._ID1426["rain_splash_lite_64x64"] = loadfx( "fx/weather/rain_splash_lite_64x64" );
    level._ID1426["rain_splash_lite_128x128"] = loadfx( "fx/weather/rain_splash_lite_128x128" );
    level._ID1426["fire_tree_slow_longrange"] = loadfx( "fx/fire/fire_tree_slow_longrange" );
    level._ID1426["green_flare"] = loadfx( "fx/misc/flare_ambient_green" );
    level._ID1426["player_flare"] = loadfx( "fx/impacts/small_metalhit" );
    level._ID1426["carpetbomb"] = loadfx( "fx/explosions/helicopter_explosion" );
    level._ID1426["wire_spark"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._ID1426["lightning"] = loadfx( "fx/weather/lightning" );
    level._ID1426["lightning_bolt"] = loadfx( "fx/weather/lightning_bolt" );
    level._ID1426["lightning_bolt_lrg"] = loadfx( "fx/weather/lightning_bolt_lrg" );
    _ID42422::_ID2049( 10 );
    _ID42422::_ID2049( 11 );
    _ID42422::_ID2049( 12 );
    level._ID24784 = gettime() + 1;
    level._ID1426["rain_10"] = loadfx( "fx/weather/rain_heavy_mist_dcemp" );
    level._ID1426["rain_9"] = loadfx( "fx/weather/rain_9_lite_dcemp" );
    level._ID1426["rain_8"] = loadfx( "fx/weather/rain_8_lite_dcemp" );
    level._ID1426["rain_7"] = loadfx( "fx/weather/rain_7_lite_dcemp" );
    level._ID1426["rain_6"] = loadfx( "fx/weather/rain_6_lite_dcemp" );
    level._ID1426["rain_5"] = loadfx( "fx/weather/rain_5_lite_dcemp" );
    level._ID1426["rain_4"] = loadfx( "fx/weather/rain_4_lite_dcemp" );
    level._ID1426["rain_3"] = loadfx( "fx/weather/rain_3_lite_dcemp" );
    level._ID1426["rain_2"] = loadfx( "fx/weather/rain_2_lite_dcemp" );
    level._ID1426["rain_1"] = loadfx( "fx/weather/rain_1_lite_dcemp" );
    level._ID1426["rain_0"] = loadfx( "fx/misc/blank" );
    level._ID1426["debug_color_checker"] = loadfx( "vfx/test/debug_color_checker" );
    level._ID1426["aircraft_crash_smoke"] = loadfx( "vfx/map/dcemp/aircraft_crash_smoke" );
    level._ID1426["dcemp_fire_building_smoke"] = loadfx( "vfx/map/dcemp/dcemp_fire_building_smoke" );
    level._ID1426["dcburning_fire_building_far"] = loadfx( "vfx/fire/dcburning_fire_building_far" );
    level._ID1426["dcburning_building_fire_flicker"] = loadfx( "vfx/map/dcburning/dcburning_building_fire_flicker" );
    level._ID1426["firelp_large_pm_2_dcburning"] = loadfx( "fx/fire/firelp_large_pm_2_dcburning" );
    level._ID1426["ash_ember_single_dcburning"] = loadfx( "vfx/ash/ash_ember_single_dcburning" );
    level._ID1426["rain_heavy_mist_dcemp"] = loadfx( "fx/weather/rain_heavy_mist_dcemp" );
    level._ID1426["capitol_burning"] = loadfx( "vfx/map/dcemp/capitol_burning" );
    level._ID1426["smoke_burning_vista_03"] = loadfx( "vfx/map/dcemp/smoke_burning_vista_03" );
    level._ID1426["thick_dark_smoke_giant_close_dcemp"] = loadfx( "fx/smoke/thick_dark_smoke_giant_close_dcemp" );
    level._ID1426["firelp_large_far"] = loadfx( "fx/fire/firelp_large_far" );
    level._ID1426["spotlight_short_dcburning"] = loadfx( "vfx/lights/lab/spotlight_short_dcburning" );
    level._ID1426["firelp_wide_pm_dcburning"] = loadfx( "fx/fire/firelp_wide_pm_dcburning" );
    level._ID1426["falling_dirt_big"] = loadfx( "fx/dust/falling_dirt_big" );
    level._ID1426["thick_dark_smoke_giant"] = loadfx( "fx/smoke/thick_dark_smoke_giant_dcemp" );
    level._ID1426["thick_dark_smoke_giant_dcburning"] = loadfx( "fx/smoke/thick_dark_smoke_giant_dcburning" );
    level._ID1426["smoke_burning_vista_04"] = loadfx( "vfx/map/dcemp/smoke_burning_vista_04" );
    level._ID1426["firelp_med_pm_dcburning"] = loadfx( "fx/fire/firelp_med_pm_dcburning" );
    level._ID1426["firelp_med_pm_dcburning_2"] = loadfx( "fx/fire/firelp_med_pm_dcburning_2" );
    level._ID1426["thick_dark_smoke_giant_small_dcemp"] = loadfx( "fx/smoke/thick_dark_smoke_giant_small_dcemp" );
    level._ID1426["screen_heavy_rain_dcemp"] = loadfx( "vfx/rain/screen_heavy_rain_dcemp" );
    level._ID1426["ambient_smoke_large"] = loadfx( "vfx/smoke/ambient_smoke_large" );
    level._ID1426["car_fire_ground_dcemp"] = loadfx( "fx/fire/car_fire_ground_dcemp" );
    level._ID1426["car_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/car_fire_large_pm_nolight_dcemp" );
    level._ID1426["aircraft_fire_med_pm_nolight"] = loadfx( "fx/fire/aircraft_fire_med_pm_nolight" );
    level._ID1426["building_fire_large_nolight_dcemp"] = loadfx( "fx/fire/building_fire_large_nolight_dcemp" );
    level._ID1426["window_fire_large"] = loadfx( "fx/fire/window_fire_large" );
    level._ID1426["aircraft_crash_fire_large"] = loadfx( "vfx/map/dcemp/aircraft_crash_fire_large" );
    level._ID1426["firelp_large_thin_dcemp"] = loadfx( "fx/fire/firelp_large_thin_dcemp" );
    level._ID1426["heli_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/heli_fire_large_pm_nolight_dcemp" );
    level._ID1426["aircraft_crash_smoke_large"] = loadfx( "vfx/map/dcemp/aircraft_crash_smoke_large" );
    level._ID1426["tree_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/tree_fire_large_pm_nolight_dcemp" );
    level._ID1426["battlefield_ash_amber_far_dcemp"] = loadfx( "vfx/ash/battlefield_ash_amber_far_dcemp" );
    level._ID1426["bg_iss"] = loadfx( "vfx/map/dcemp/iss/bg_iss" );
    level._ID1426["dcemp_light_fire_movable_strong"] = loadfx( "vfx/lights/dcemp/dcemp_light_fire_movable_strong" );
    level._ID1426["bg_iss_city_lights_animated"] = loadfx( "vfx/map/dcemp/iss/bg_iss_city_lights_animated" );
    level._ID1426["bg_iss_city_lights_idle"] = loadfx( "vfx/map/dcemp/iss/bg_iss_city_lights_idle" );
    level._ID1426["rain_ground_wind"] = loadfx( "vfx/rain/rain_ground_wind" );
    level._ID1426["spotlight_medium_dcemp"] = loadfx( "vfx/map/dcemp/spotlight_medium_dcemp" );
    level._ID1426["fire_large_debris_dcemp"] = loadfx( "fx/fire/fire_large_debris_dcemp" );
    level._ID1426["embers_intense"] = loadfx( "vfx/sparks/embers_intense" );
    level._ID1426["tree_embers_intense"] = loadfx( "vfx/sparks/tree_embers_intense" );
    level._ID1426["embers_intense_small_runner"] = loadfx( "vfx/sparks/embers_intense_small_runner" );
    level._ID1426["fire_embers_intense_small"] = loadfx( "vfx/sparks/fire_embers_intense_small" );
    level._ID1426["moon_clouds"] = loadfx( "vfx/map/dcemp/moon_clouds" );
    level._ID1426["car_fire_small_pm_nolight_dcemp"] = loadfx( "fx/fire/car_fire_small_pm_nolight_dcemp" );
    level._ID1426["helicopter_fire_dcemp"] = loadfx( "fx/explosions/helicopter_fire_dcemp" );
    level._ID1426["lighthaze_dcemp"] = loadfx( "fx/misc/lighthaze_dcemp" );
    level._ID1426["spotlight_dcemp"] = loadfx( "vfx/lights/lab/spotlight_dcemp" );
    level._ID1426["heli_emp_sparks"] = loadfx( "fx/explosions/heli_emp_sparks" );
    level._ID1426["spotlight_column_dcemp"] = loadfx( "vfx/lights/lab/spotlight_column_dcemp" );
    level._ID1426["spotlight_window_dcemp"] = loadfx( "vfx/lights/lab/spotlight_window_dcemp" );
    level._ID1426["spotlight_ground_dcemp"] = loadfx( "vfx/lights/lab/spotlight_ground_dcemp" );
    level._ID1426["veh_fire_trail"] = loadfx( "vfx/map/dcemp/veh_fire_trail" );
    level._ID1426["lobby_chunks_blast"] = loadfx( "vfx/map/dcemp/lobby_chunks_blast" );
    level._ID1426["lobby_heli_crash_fire"] = loadfx( "vfx/map/dcemp/lobby_heli_crash_fire" );
    level._ID1426["ceiling_smoke_dcemp"] = loadfx( "fx/smoke/ceiling_smoke_dcemp" );
    level._ID1426["plane_turbine_fire_trail"] = loadfx( "vfx/map/dcemp/plane_turbine_fire_trail" );
    level._ID1426["turbine_fire_linger"] = loadfx( "vfx/map/dcemp/turbine_fire_linger" );
    level._ID1426["aircraft_fire_streak"] = loadfx( "vfx/map/dcemp/aircraft_fire_streak" );
    level._ID1426["turbine_scrape_ground"] = loadfx( "vfx/map/dcemp/turbine_scrape_ground" );
    level._ID1426["tank_scrape_ground"] = loadfx( "vfx/map/dcemp/tank_scrape_ground" );
    level._ID1426["intro_fire_med_custom"] = loadfx( "vfx/map/dcemp/intro_fire_med_custom" );
    level._ID1426["mist_vista_parking"] = loadfx( "vfx/map/dcemp/mist_vista_parking" );
    level._ID1426["smoke_window_large"] = loadfx( "vfx/map/dcemp/smoke_window_large" );
    level._ID1426["waterfall_drainage_short_dcemp"] = loadfx( "fx/water/waterfall_drainage_short_dcemp" );
    level._ID1426["falling_pipe_water_trickle_dcemp"] = loadfx( "vfx/water/falling_pipe_water_trickle_dcemp" );
    level._ID1426["drips_a_dcemp"] = loadfx( "fx/water/drips_a_dcemp" );
    level._ID1426["handflare_red_dcemp"] = loadfx( "fx/misc/handflare_red_dcemp" );
    level._ID1426["groundflare_red_dcemp"] = loadfx( "fx/misc/groundflare_red_dcemp" );
    level._ID1426["orange_fog_vista"] = loadfx( "vfx/map/dcemp/orange_fog_vista" );
    level._ID1426["rain_ground_ripples"] = loadfx( "vfx/rain/rain_ground_ripples" );
    level._ID1426["spotlight_medium_nolight_dcemp"] = loadfx( "vfx/map/dcemp/spotlight_medium_nolight_dcemp" );
    level._ID1426["frag_grenade_concrete_dcemp"] = loadfx( "vfx/explosion/frag_grenade_concrete_dcemp" );
    level._ID1426["flesh_hit_body_fatal_exit_dcemp"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._ID1426["jet_contrail_dcemp"] = loadfx( "fx/smoke/jet_contrail_dcemp" );
    level._ID1426["flare_ambient_dcemp"] = loadfx( "fx/misc/flare_ambient_dcemp" );
    level._ID1426["obelisk_smoke_dcemp"] = loadfx( "fx/smoke/obelisk_smoke_dcemp" );
    level._ID1426["fire_ground_small_dcemp"] = loadfx( "fx/fire/fire_ground_small_dcemp" );
    level._ID1426["fire_ground_long_dcemp"] = loadfx( "fx/fire/fire_ground_long_dcemp" );
    level._ID1426["godray_planecrash_lobby"] = loadfx( "vfx/map/dcemp/godray_planecrash_lobby" );
    level._ID1426["bin_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/bin_fire_large_pm_nolight_dcemp" );
    level._ID1426["waterfall_drainage_long_dcemp"] = loadfx( "fx/water/waterfall_drainage_long_dcemp" );
    level._ID1426["drips_b_dcemp"] = loadfx( "fx/water/drips_b_dcemp" );
    level._ID1426["traffic_red_light"] = loadfx( "fx/misc/usa_traffic_light_red_dcemp" );
    level._ID1426["dust_falling_debris_s_runner_loop_dcemp"] = loadfx( "vfx/dust/dust_falling_debris_s_runner_loop_dcemp" );
    level._ID1426["drips_slow_dcemp"] = loadfx( "vfx/rain/drips_slow_dcemp" );
    level._ID1426["dust_falling_ceiling"] = loadfx( "vfx/map/dcemp/dust_falling_ceiling" );
    level._ID1426["vent_smoke"] = loadfx( "vfx/map/dcemp/vent_smoke" );
    thread _ID42422::_ID28925( "none" );
    thread _ID42422::_ID28055();
    thread _ID52070();
    _ID42231::_ID48620( "toy_firehydrant", "fx/props/firehydrant_spray_10sec", "fx/props/firehydrant_spray_dcemp" );
    thread _ID48844();
    thread _ID44058();
    thread _ID47445();
    setsaveddvar( "r_outdoorFeather", "128" );
    _ID42299::_ID49604( "me_dumpster_fire_FX_origin", "vfx/unique/no_fx", undefined, "me_dumpster_fire_FX", "fire_dumpster_medium" );
    _ID42299::_ID49604( "flare_ambient_FX_origin", "fx/misc/flare_ambient_dcemp", undefined, "flare_ambient_FX", "emt_road_flare_burn" );
    thread bg_earth_manager();
    thread handflare_fx();
}

get_wet_groundtype_override( var_0 )
{
    if ( !isendstr( var_0, "_wet" ) && isdefined( self._ID474 ) && isendstr( self._ID474, "_wet" ) && isdefined( anim._ID25932[self._ID474] ) )
        var_0 = self._ID474;

    return var_0;
}

dcemp_footstep_handler( var_0, var_1, var_2, var_3 )
{
    var_1 = get_wet_groundtype_override( var_1 );
    return animscripts\notetracks::_ID28067( var_0, var_1, var_2, var_3 );
}

dcemp_footstep_small_handler( var_0, var_1, var_2, var_3 )
{
    var_1 = get_wet_groundtype_override( var_1 );
    return animscripts\notetracks::_ID28068( var_0, var_1, var_2, var_3 );
}

_ID48844()
{
    var_0 = loadfx( "fx/impacts/footstep_water_dark" );
    animscripts\utility::_ID32631( "concrete_wet", var_0 );
    animscripts\utility::_ID32631( "rock_wet", var_0 );
    animscripts\utility::_ID32631( "asphalt_wet", var_0 );
    animscripts\utility::_ID32631( "wood_wet", var_0 );
    animscripts\utility::_ID32631( "metal_wet", var_0 );
    animscripts\utility::_ID32632( "concrete_wet", var_0 );
    animscripts\utility::_ID32632( "rock_wet", var_0 );
    animscripts\utility::_ID32632( "asphalt_wet", var_0 );
    animscripts\utility::_ID32632( "wood_wet", var_0 );
    animscripts\utility::_ID32632( "metal_wet", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "concrete_wet", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "asphalt_wet", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "rock_wet", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "concrete_wet", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "asphalt_wet", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "rock_wet", var_0 );
    wait 1;
    _ID42237::_ID14413( "parking_player_jumped_down" );
    var_1 = anim._ID25931;
    var_2 = anim._ID25933;
    anim._ID25931 = ::dcemp_footstep_handler;
    anim._ID25933 = ::dcemp_footstep_small_handler;
    animscripts\utility::_ID32631( "mud", var_0 );
    animscripts\utility::_ID32631( "grass", var_0 );
    animscripts\utility::_ID32631( "dirt", var_0 );
    animscripts\utility::_ID32631( "rock", var_0 );
    animscripts\utility::_ID32631( "asphalt", var_0 );
    animscripts\utility::_ID32631( "wood", var_0 );
    animscripts\utility::_ID32631( "metal", var_0 );
    animscripts\utility::_ID32632( "mud", var_0 );
    animscripts\utility::_ID32632( "grass", var_0 );
    animscripts\utility::_ID32632( "dirt", var_0 );
    animscripts\utility::_ID32632( "rock", var_0 );
    animscripts\utility::_ID32632( "asphalt", var_0 );
    animscripts\utility::_ID32632( "wood", var_0 );
    animscripts\utility::_ID32632( "metal", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "dirt", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "concrete", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "asphalt", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "rock", var_0 );
    animscripts\utility::_ID32706( "knee fx left", "J_Knee_LE", "mud", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "dirt", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "concrete", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "asphalt", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "rock", var_0 );
    animscripts\utility::_ID32706( "knee fx right", "J_Knee_RI", "mud", var_0 );
    _ID42237::_ID14413( "tunnels_indoor" );
    anim._ID25931 = var_1;
    anim._ID25933 = var_2;
    level._ID1540["knee fx left"] = undefined;
    level._ID1540["knee fx right"] = undefined;
    anim._ID25932 = [];
    anim._ID25934 = [];
}

_ID52363( var_0 )
{
    if ( !_ID42237::_ID14385( "spotlight_lightning" ) )
        return;

    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-44289.4 15900.1 -53.6752" );
    var_1 = getent( "parking_lighting_primary", "script_noteworthy" );
    var_2 = 20000000 * var_0;
    var_1 setlightintensity( var_2 );

    if ( _ID42237::_ID14385( "parking_moveout" ) )
    {
        var_1 _meth_84a7( "force_fully_on" );
        return;
    }

    var_3 = getentarray( "office_lighting_primary", "script_noteworthy" );
    var_2 = 230 * var_0;
    _ID42237::_ID3294( var_3, ::setlightintensity, var_2 );
    var_3 = getentarray( "office_bounce_lighting_primary", "script_noteworthy" );
    var_2 = 300 * var_0;
    _ID42237::_ID3294( var_3, ::setlightintensity, var_2 );
}

_ID43033()
{
    if ( !_ID42237::_ID14385( "spotlight_lightning" ) )
        return;

    var_0 = getent( "parking_lighting_primary", "script_noteworthy" );
    var_0 setlightintensity( 0 );
    var_0 _meth_84a7( "force_off" );
    var_1 = getentarray( "office_lighting_primary", "script_noteworthy" );
    _ID42237::_ID3294( var_1, ::setlightintensity, 0 );
    var_1 = getentarray( "office_bounce_lighting_primary", "script_noteworthy" );
    _ID42237::_ID3294( var_1, ::setlightintensity, 0 );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-42771.6 20141.2 -241.965" );
}

_ID22333()
{
    _ID42237::_ID14402( "emp_lighting_flash" );
    var_0[0] = "quick";
    var_0[1] = "double";
    var_0[2] = "triple";

    switch ( var_0[level.flashtype] )
    {
        case "quick":
            lightning_doubleflash( 0 );
            break;
        case "double":
            lightning_doubleflash( 1 );
            break;
        case "triple":
            lightning_bigflash();
            break;
    }
}

lightning_doubleflash( var_0 )
{
    var_1 = _func_46();
    var_2 = 0.03;
    var_3 = var_1[0] * var_2;
    var_4 = var_1[1] * var_2;
    var_5 = var_1[2] * var_2;
    var_6 = 0;

    if ( var_0 )
        var_7 = randomintrange( 13, 18 );
    else
        var_7 = randomintrange( 9, 12 );

    var_8 = var_7 * 0.2;
    var_9 = 0;
    var_10 = var_2;

    for ( var_11 = 0; var_11 < var_7; var_11++ )
    {
        var_12 = 0;

        if ( var_11 > var_8 )
        {
            if ( var_11 < var_7 * 0.8 )
            {
                if ( var_6 > 80 )
                {
                    var_6 = 0;
                    var_13 = randomfloatrange( 14.9, 16.9 );
                    var_10 = var_9 * var_13;
                    var_12 = 0;
                }
                else
                {
                    var_10 = var_9 * 0.4;
                    var_6 += randomint( 35 );
                    var_12 = 1;
                }
            }
            else
            {
                var_10 = var_9 * 0.5;
                var_12 = 1;
            }
        }
        else
            var_10 += randomfloatrange( 0.03, 0.06 ) * ( var_11 / 2 + 1 );

        if ( var_12 )
        {
            var_9 -= var_10;

            if ( var_9 < var_2 )
            {
                var_9 = var_2;
                var_3 = var_1[0] * var_2;
                var_4 = var_1[1] * var_2;
                var_5 = var_1[2] * var_2;
                var_11 += 99;
            }
            else
            {
                var_3 -= var_10 * 0.85;
                var_4 -= var_10 * 0.9;
                var_5 -= var_10 * 1.4;
            }
        }
        else
        {
            var_9 += var_10;
            var_3 += var_10 * 0.85;
            var_4 += var_10 * 0.9;
            var_5 += var_10 * 1.4;
        }

        _ID52363( var_9 );
        _func_47( var_3, var_4, var_5 );
        var_14 = 0.1;
        setsunlight( 0.498039 * var_2 * var_14, 0.498039 * var_2 * var_14, 0.619608 * var_2 * var_14 );
        var_15 = 0.05;
        wait(var_15);
    }

    if ( _ID42237::_ID14385( "parking_main" ) )
        var_16 = 0.035;
    else
        var_16 = 0.03;

    naturallight( var_16 );
}

lightning_bigflash( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_46();
    var_5 = 0.03;
    var_6 = var_4[0] * var_5;
    var_7 = var_4[1] * var_5;
    var_8 = var_4[2] * var_5;
    var_9 = 0;
    var_10 = randomintrange( 22, 28 );
    var_11 = var_10 * 0.2;
    var_12 = 0;
    var_13 = var_5;

    for ( var_14 = 0; var_14 < var_10; var_14++ )
    {
        var_15 = 0;

        if ( var_14 > var_11 )
        {
            if ( var_14 < var_10 * 0.8 )
            {
                if ( var_9 > 80 )
                {
                    var_9 = 0;
                    var_16 = randomfloatrange( 15.8, 17.1 );
                    var_13 = var_12 * var_16;
                    var_15 = 0;
                }
                else
                {
                    var_13 = var_12 * 0.4;
                    var_9 += randomint( 35 );
                    var_15 = 1;
                }
            }
            else
            {
                var_13 = var_12 * 0.6;
                var_15 = 1;
            }
        }
        else
            var_13 += randomfloatrange( 0.04, 0.06 ) * ( var_14 / 3 + 1 );

        if ( var_15 )
        {
            if ( var_12 < var_5 )
            {
                var_12 = var_5;
                var_6 = var_4[0] * var_5;
                var_7 = var_4[1] * var_5;
                var_8 = var_4[2] * var_5;
                var_14 += 99;
            }
            else
            {
                var_12 -= var_13;
                var_6 -= var_13 * 0.85;
                var_7 -= var_13 * 0.9;
                var_8 -= var_13 * 1.4;
            }
        }
        else
        {
            var_12 += var_13;
            var_6 += var_13 * 0.85;
            var_7 += var_13 * 0.9;
            var_8 += var_13 * 1.4;
        }

        _ID52363( var_12 );
        _func_47( var_6, var_7, var_8 );
        var_17 = 0.1;
        setsunlight( 0.498039 * var_5 * var_17, 0.498039 * var_5 * var_17, 0.619608 * var_5 * var_17 );
        var_18 = 0.05;
        wait(var_18);
    }

    if ( _ID42237::_ID14385( "parking_main" ) )
        var_19 = 0.035;
    else
        var_19 = 0.03;

    naturallight( var_19 );
}

lightning_setdirection( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level.sunpitch ) )
        level.sunpitch = -20;

    if ( !isdefined( level.sunheading ) )
        level.sunheading = 55;

    if ( !isdefined( var_0 ) )
        var_0 = level.sunpitch;

    if ( !isdefined( var_1 ) )
        var_1 = level.sunheading;

    if ( !isdefined( var_2 ) )
        var_2 = level.sunpitch;

    if ( !isdefined( var_3 ) )
        var_3 = level.sunheading;

    if ( level._ID9228 )
        return;

    var_4 = 0.01;
    lightning_visionset();

    if ( _ID42237::_ID14385( "office1" ) )
    {
        var_4 = 0.03;
        var_0 = -27;
        var_2 = -22;
        var_1 = -16;
        var_3 = -13;
    }
    else
        return;

    var_5 = randomfloatrange( var_0, var_2 );
    var_6 = randomfloatrange( var_1, var_3 );
}

naturallight( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    waittillframeend;
    waitframe;
    _ID22335();
    _func_47( 0.498039 * var_0, 0.498039 * var_0, 0.619608 * var_0 );

    if ( _ID42237::_ID14385( "parking_main" ) )
    {
        var_1 = 0.1;
        setsunlight( 0.498039 * var_0 * var_1, 0.498039 * var_0 * var_1, 0.619608 * var_0 * var_1 );
    }
    else
        setsunlight( 0.498039 * var_0, 0.498039 * var_0, 0.619608 * var_0 );

    _ID42237::_ID14388( "emp_lighting_flash" );
}

lightning_visionset()
{
    if ( _ID42237::_ID14385( "parking_main" ) )
        level._ID794 lightset( "dcemp_lightning_outside" );
    else
        level._ID794 lightset( "dcemp_lightning" );

    if ( level._ID22719 == "dcemp_parking" )
    {
        thread _ID42407::_ID32515( "dcemp_parking_lightning", 0.3, 1 );
        thread _ID42407::_ID40561( "dcemp_parking_lightning", 0.3 );
    }
    else if ( level._ID22719 == "dcemp_parking_nearbuilding" )
    {
        thread _ID42407::_ID32515( "dcemp_parking_nearbuilding_lightning", 0.3, 1 );
        thread _ID42407::_ID40561( "dcemp_parking_nearbuilding_lightning", 0.3 );
    }
    else if ( level._ID22719 == "dcemp_office" )
    {
        thread _ID42407::_ID32515( "dcemp_office_lightning", 0.3, 1 );
        thread _ID42407::_ID40561( "dcemp_office_lightning", 0.3 );
    }
    else if ( level._ID22719 == "dcemp_postemp2" || level._ID22719 == "dcemp_postemp" )
    {
        thread _ID42407::_ID32515( "dcemp_postemp2_lightning", 0.3, 1 );
        thread _ID42407::_ID40561( "dcemp_postemp2_lightning", 0.4 );
    }
    else
        return;
}

_ID22335()
{
    if ( _ID42237::_ID14385( "parking_main" ) )
        level._ID794 lightset( "dcemp_rain" );
    else if ( _ID42237::_ID14385( "office1" ) )
        level._ID794 lightset( "dcemp_office" );
    else
        level._ID794 lightset( "dcemp" );

    if ( level._ID22719 == "dcemp_parking_lightning" )
    {
        thread _ID42407::_ID32515( "dcemp_parking", 0.5, 1 );
        thread _ID42407::_ID40561( "dcemp_parking", 0.5 );
    }
    else if ( level._ID22719 == "dcemp_parking_nearbuilding_lightning" )
    {
        thread _ID42407::_ID32515( "dcemp_parking_nearbuilding", 0.5, 1 );
        thread _ID42407::_ID40561( "dcemp_parking_nearbuilding", 0.5 );
    }
    else if ( level._ID22719 == "dcemp_office_lightning" )
    {
        thread _ID42407::_ID32515( "dcemp_office", 0.5, 1 );
        thread _ID42407::_ID40561( "dcemp_office", 0.5 );
    }
    else if ( level._ID22719 == "dcemp_postemp2_lightning" )
    {
        thread _ID42407::_ID32515( "dcemp_postemp2", 2 );
        thread _ID42407::_ID40561( "dcemp_postemp2", 2 );
    }

    _ID43033();
}

_ID44058()
{
    _ID42237::_ID14413( "parking_player_jumped_down" );
    _ID42237::_ID14402( "rain_mask_on" );
}

_ID47445()
{
    level endon( "stop_rain_mask" );
    thread _ID53733();
    _ID42237::_ID14413( "rain_started" );

    for (;;)
    {
        _ID42237::_ID14413( "rain_mask_on" );
        _ID42237::_ID14388( "rain_mask_off" );
        thread _ID44454();
        _ID42237::_ID14413( "rain_mask_off" );
        _ID42237::_ID14388( "rain_mask_on" );
        self notify( "stopRainCheck" );

        if ( isdefined( level._ID47052 ) )
            level._ID47052 delete();
    }
}

_ID44454()
{
    level endon( "stop_rain_mask" );
    self endon( "stopRainCheck" );
    level._ID794 endon( "death" );

    for (;;)
    {
        var_0 = level._ID794 getplayerangles()[0];

        if ( var_0 < 50 && !isdefined( level._ID47052 ) )
        {
            level._ID47052 = spawnfx( level._ID1426["screen_heavy_rain_dcemp"], level._ID794._ID740 );
            triggerfx( level._ID47052 );
        }
        else if ( isdefined( level._ID47052 ) )
            level._ID47052 delete();

        wait 0.1;
    }
}

_ID53733()
{
    _ID42237::_ID14413( "stop_rain_mask" );

    if ( isdefined( level._ID47052 ) )
        level._ID47052 delete();
}

bg_earth_manager()
{
    _ID42237::_ID14413( "iss_fx" );
    var_0 = getent( "bg_earth_fx", "targetname" );
    var_1 = _ID42237::_ID35164();
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65 + ( -90, 0, 0 );
    playfxontag( level._ID1426["bg_iss"], var_1, "tag_origin" );
    playfxontag( level._ID1426["bg_iss_city_lights_idle"], var_1, "tag_origin" );
    _ID42237::_ID14413( "iss_lights_out" );
    killfxontag( level._ID1426["bg_iss_city_lights_idle"], var_1, "tag_origin" );
    playfxontag( level._ID1426["bg_iss_city_lights_animated"], var_1, "tag_origin" );
    _ID42237::_ID14413( "iss_done" );
    killfxontag( level._ID1426["bg_iss"], var_1, "tag_origin" );
}

override_destructibles()
{
    waitframe;
    _ID42231::_ID48620( "tag_cab_fire", "fx/fire/firelp_med_pm", "fx/fire/firelp_med_pm_nolight_dcemp" );
}

flickering_street_lights()
{
    var_0 = 1;
    self._ID47454 = getentarray( "light_pole_flickering", "targetname" );
    self._ID43670 = [];
    self._ID47812 = [];
    self._ID52890 = [];

    foreach ( var_2 in self._ID47454 )
    {
        if ( isdefined( var_2._ID922 ) )
        {
            if ( var_2._ID922 == "flickering_model_on" )
            {
                self._ID43670[self._ID43670.size] = var_2;
                continue;
            }

            if ( var_2._ID922 == "flickering_model_off" )
            {
                self._ID47812[self._ID47812.size] = var_2;
                continue;
            }

            if ( var_2._ID922 == "flickering_lights" )
                self._ID52890[self._ID52890.size] = var_2;
        }
    }

    while ( !_ID42237::_ID14385( "emp" ) )
    {
        if ( isdefined( self._ID43670 ) )
        {
            if ( self._ID43670.size > 0 )
            {
                foreach ( var_5 in self._ID43670 )
                    var_5 hide();
            }

            self._ID47812 hide();
        }

        if ( isdefined( self._ID47812 ) )
        {
            if ( self._ID47812.size > 0 )
            {
                foreach ( var_5 in self._ID47812 )
                {
                    if ( isdefined( var_5._ID43670._ID12315 ) )
                        var_5._ID43670._ID12315 _ID42237::_ID26402();
                }
            }
        }

        wait(var_0);

        if ( isdefined( self._ID43670 ) )
        {
            if ( self._ID43670.size > 0 )
            {
                foreach ( var_5 in self._ID43670 )
                {
                    var_5 show();

                    if ( isdefined( var_5._ID43670._ID12315 ) )
                        var_5._ID43670._ID12315 _ID42237::_ID26402();
                }
            }
        }

        if ( isdefined( self._ID47812 ) )
        {
            if ( self._ID47812.size > 0 )
            {
                foreach ( var_5 in self._ID47812 )
                    var_5 hide();
            }
        }

        wait(var_0);
    }

    self._ID43670 hide();
    self._ID47812 show();
}

handflare_fx()
{
    var_0 = getent( "street_flare", "targetname" );
    var_0._ID45977 = getent( var_0._ID1191, "targetname" );
    var_0._ID45977 linkto( var_0 );
    playfxontag( level._ID1426["groundflare_red_dcemp"], var_0._ID45977, "TAG_ORIGIN" );
}

_ID52070()
{
    _ID42549::_ID48528( "mig29_contrail", "fx/smoke/jet_contrail_dcemp" );
    _ID42549::_ID48528( "mig29_contrail_02", "fx/smoke/jet_contrail_dcemp" );
}

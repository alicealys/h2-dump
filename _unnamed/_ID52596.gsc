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
    level._ID1426["vehicle_explosion_btr80"] = _func_155( "fx/explosions/vehicle_explosion_btr80" );
    level._ID1426["handflare"] = _func_155( "fx/misc/handflare_red_dcemp" );
    level._ID1426["groundflare"] = _func_155( "fx/misc/handflare_red_dcemp" );
    level._ID1426["killshot"] = _func_155( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._ID1426["nouse"] = _func_155( "fx/props/news_stand_paper_spill" );
    level._ID1426["nouse"] = _func_155( "fx/props/news_stand_explosion" );
    level._ID1426["nouse"] = _func_155( "fx/props/news_stand_paper_spill_shatter" );
    level._ID1426["nouse"] = _func_155( "fx/props/photocopier_sparks" );
    level._ID1426["nouse"] = _func_155( "fx/props/photocopier_exp" );
    level._ID1426["nouse"] = _func_155( "fx/props/photocopier_fire" );
    level._ID1426["nouse"] = _func_155( "fx/props/electricbox4_explode" );
    level._ID1426["nouse"] = _func_155( "fx/props/filecabinet_dam" );
    level._ID1426["nouse"] = _func_155( "fx/props/filecabinet_des" );
    level._ID1426["nouse"] = _func_155( "fx/misc/light_fluorescent_blowout_runner" );
    level._ID1426["nouse"] = _func_155( "fx/misc/light_blowout_swinging_runner" );
    level._ID6112["tv_explode"] = _func_155( "fx/explosions/tv_explosion" );
    level._ID1426["dcemp_sun"] = _func_155( "fx/misc/dcemp_sun" );
    level._ID1426["dcemp_icbm_trail"] = _func_155( "fx/misc/dcemp_icbm_trail" );
    level._ID1426["space_nuke"] = _func_155( "fx/explosions/space_nuke" );
    level._ID1426["space_nuke_shockwave"] = _func_155( "fx/explosions/space_nuke_shockwave" );
    level._ID1426["space_emp"] = _func_155( "fx/explosions/space_emp" );
    level._ID1426["space_explosion"] = _func_155( "fx/explosions/space_explosion" );
    level._ID1426["space_explosion_small"] = _func_155( "fx/explosions/space_explosion_small" );
    level._ID1426["dcemp_water_nuke_glow"] = _func_155( "fx/misc/dcemp_water_nuke_glow" );
    level._ID1426["dlight_blue"] = _func_155( "fx/misc/dlight_blue" );
    level._ID1426["headshot3"] = _func_155( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._ID1426["ground_smoke_dcburning1200x1200"] = _func_155( "fx/smoke/ground_smoke1200x1200_dcburning" );

    if ( _func_03A( "sm_enable" ) && _func_039( "r_zfeather" ) != "0" )
        level._ID1426["_attack_heli_spotlight"] = _func_155( "vfx/map/dcemp/spotlight_medium_dcemp" );
    else
        level._ID1426["_attack_heli_spotlight"] = _func_155( "fx/misc/spotlight_large" );

    level._ID1426["_attack_heli_spotlight_flicker"] = _func_155( "vfx/map/dcemp/spotlight_medium_flicker_dcemp" );
    level._ID1426["planecrash_spotlight"] = _func_155( "fx/misc/dcemp_planecrash_spotlight_model" );
    level._ID1426["dcemp_nuke_spotlight_fade"] = _func_155( "fx/misc/dcemp_nuke_spotlight_fade" );
    level._ID1426["spotlight_lightning"] = _func_155( "fx/misc/spotlight_lightning" );
    level._ID1426["space_helmet_spot_light"] = _func_155( "fx/misc/space_helmet_spot_light" );
    level._ID1426["transformer_spark_runner"] = _func_155( "fx/explosions/transformer_spark_runner" );
    level._ID1426["dcemp_glass_74x44"] = _func_155( "fx/props/dcemp_glass_74x44" );
    level._ID1426["bodyfall_dust_high"] = _func_155( "fx/impacts/bodyfall_dust_high" );
    level._ID1426["helicopter_crash"] = _func_155( "fx/explosions/helicopter_crash" );
    level._ID1426["helicopter_explosion_secondary_small"] = _func_155( "fx/explosions/helicopter_explosion_secondary_small" );
    level._ID1426["powerline_runner_oneshot"] = _func_155( "fx/explosions/powerline_runner_oneshot" );
    level._ID1426["space_emp_crashsite"] = _func_155( "fx/explosions/space_emp_crashsite" );
    level._ID1426["space_nuke_crashsite"] = _func_155( "fx/explosions/space_nuke_crashsite" );
    level._ID1426["helicopter_explosion"] = _func_155( "fx/explosions/helicopter_explosion_dcemp" );
    level._ID1426["small_vehicle_explosion"] = _func_155( "fx/explosions/small_vehicle_explosion" );
    level._ID1426["aircraft_crash_fire"] = _func_155( "vfx/map/dcemp/aircraft_crash_fire" );
    level._ID1426["firelp_large_pm"] = _func_155( "fx/fire/firelp_large_pm" );
    level._ID1426["firelp_med_pm"] = _func_155( "fx/fire/firelp_med_pm_nolight_dcemp" );
    level._ID1426["firelp_small_pm"] = _func_155( "fx/fire/firelp_small_pm" );
    level._ID1426["firelp_large_pm_nolight"] = _func_155( "fx/fire/firelp_large_pm_nolight_dcemp" );
    level._ID1426["firelp_med_pm_nolight"] = _func_155( "fx/fire/firelp_med_pm_nolight_dcemp" );
    level._ID1426["firelp_small_pm_nolight"] = _func_155( "fx/fire/firelp_small_pm_nolight_dcemp" );
    level._ID1426["firelp_small_streak_pm1_h"] = _func_155( "fx/fire/firelp_small_streak_pm1_h" );
    level._ID1426["firelp_small_streak_pm_v"] = _func_155( "fx/fire/firelp_small_streak_pm_v" );
    level._ID1426["firelp_small_streak_pm1_h_nolight"] = _func_155( "fx/fire/firelp_small_streak_pm1_h_nolight" );
    level._ID1426["firelp_small_streak_pm_v_nolight"] = _func_155( "fx/fire/firelp_small_streak_pm_v_nolight" );
    level._ID1426["fire_trail_60"] = _func_155( "fx/fire/fire_trail_60" );
    level._ID1426["fire_streak_runner"] = _func_155( "fx/fire/fire_streak_runner" );
    level._ID1426["fire_falling_runner_point"] = _func_155( "vfx/fire/fire_falling_runner_point_infrequent" );
    level._ID1426["fire_tree_embers"] = _func_155( "fx/fire/fire_tree_embers" );
    level._ID1426["jet_crash"] = _func_155( "fx/explosions/jet_crash_dcemp" );
    level._ID1426["bird_pm"] = _func_155( "fx/misc/bird_pm" );
    level._ID1426["leaves_a"] = _func_155( "fx/misc/leaves_a" );
    level._ID1426["fire_embers_directional"] = _func_155( "fx/fire/fire_embers_directional" );
    level._ID1426["waterfall_drainage_short"] = _func_155( "fx/water/waterfall_drainage_short_dcemp" );
    level._ID1426["waterfall_drainage_splash"] = _func_155( "fx/water/waterfall_drainage_splash_dcemp" );
    level._ID1426["falling_water_trickle"] = _func_155( "fx/water/falling_water_trickle" );
    level._ID1426["rain_noise_splashes"] = _func_155( "fx/weather/rain_noise_splashes" );
    level._ID1426["rain_noise_splashes_dark"] = _func_155( "fx/weather/rain_noise_splashes_dark" );
    level._ID1426["rain_splash_lite"] = _func_155( "fx/weather/rain_splash_lite" );
    level._ID1426["rain_splash_lite_runner_40x200"] = _func_155( "fx/weather/rain_splash_lite_runner_40x200" );
    level._ID1426["rain_splash_lite_runner_40x600"] = _func_155( "fx/weather/rain_splash_lite_runner_40x600" );
    level._ID1426["rain_noise_ud"] = _func_155( "fx/weather/rain_noise_ud" );
    level._ID1426["rain_noise_ud_runner_0x400"] = _func_155( "fx/weather/rain_noise_ud_runner_0x400" );
    level._ID1426["cgo_ship_puddle_small"] = _func_155( "fx/distortion/cgo_ship_puddle_small" );
    level._ID1426["cgo_ship_puddle_large"] = _func_155( "fx/distortion/cgo_ship_puddle_large" );
    level._ID1426["rain_splash_lite_4x64"] = _func_155( "fx/weather/rain_splash_lite_4x64" );
    level._ID1426["rain_splash_lite_4x128"] = _func_155( "fx/weather/rain_splash_lite_4x128" );
    level._ID1426["rain_splash_lite_8x64"] = _func_155( "fx/weather/rain_splash_lite_8x64" );
    level._ID1426["rain_splash_lite_8x128"] = _func_155( "fx/weather/rain_splash_lite_8x128" );
    level._ID1426["rain_splash_lite_64x64"] = _func_155( "fx/weather/rain_splash_lite_64x64" );
    level._ID1426["rain_splash_lite_128x128"] = _func_155( "fx/weather/rain_splash_lite_128x128" );
    level._ID1426["fire_tree_slow_longrange"] = _func_155( "fx/fire/fire_tree_slow_longrange" );
    level._ID1426["green_flare"] = _func_155( "fx/misc/flare_ambient_green" );
    level._ID1426["player_flare"] = _func_155( "fx/impacts/small_metalhit" );
    level._ID1426["carpetbomb"] = _func_155( "fx/explosions/helicopter_explosion" );
    level._ID1426["wire_spark"] = _func_155( "fx/explosions/transformer_spark_runner" );
    level._ID1426["lightning"] = _func_155( "fx/weather/lightning" );
    level._ID1426["lightning_bolt"] = _func_155( "fx/weather/lightning_bolt" );
    level._ID1426["lightning_bolt_lrg"] = _func_155( "fx/weather/lightning_bolt_lrg" );
    _ID42422::_ID2049( 10 );
    _ID42422::_ID2049( 11 );
    _ID42422::_ID2049( 12 );
    level._ID24784 = _func_03D() + 1;
    level._ID1426["rain_10"] = _func_155( "fx/weather/rain_heavy_mist_dcemp" );
    level._ID1426["rain_9"] = _func_155( "fx/weather/rain_9_lite_dcemp" );
    level._ID1426["rain_8"] = _func_155( "fx/weather/rain_8_lite_dcemp" );
    level._ID1426["rain_7"] = _func_155( "fx/weather/rain_7_lite_dcemp" );
    level._ID1426["rain_6"] = _func_155( "fx/weather/rain_6_lite_dcemp" );
    level._ID1426["rain_5"] = _func_155( "fx/weather/rain_5_lite_dcemp" );
    level._ID1426["rain_4"] = _func_155( "fx/weather/rain_4_lite_dcemp" );
    level._ID1426["rain_3"] = _func_155( "fx/weather/rain_3_lite_dcemp" );
    level._ID1426["rain_2"] = _func_155( "fx/weather/rain_2_lite_dcemp" );
    level._ID1426["rain_1"] = _func_155( "fx/weather/rain_1_lite_dcemp" );
    level._ID1426["rain_0"] = _func_155( "fx/misc/blank" );
    level._ID1426["debug_color_checker"] = _func_155( "vfx/test/debug_color_checker" );
    level._ID1426["aircraft_crash_smoke"] = _func_155( "vfx/map/dcemp/aircraft_crash_smoke" );
    level._ID1426["dcemp_fire_building_smoke"] = _func_155( "vfx/map/dcemp/dcemp_fire_building_smoke" );
    level._ID1426["dcburning_fire_building_far"] = _func_155( "vfx/fire/dcburning_fire_building_far" );
    level._ID1426["dcburning_building_fire_flicker"] = _func_155( "vfx/map/dcburning/dcburning_building_fire_flicker" );
    level._ID1426["firelp_large_pm_2_dcburning"] = _func_155( "fx/fire/firelp_large_pm_2_dcburning" );
    level._ID1426["ash_ember_single_dcburning"] = _func_155( "vfx/ash/ash_ember_single_dcburning" );
    level._ID1426["rain_heavy_mist_dcemp"] = _func_155( "fx/weather/rain_heavy_mist_dcemp" );
    level._ID1426["capitol_burning"] = _func_155( "vfx/map/dcemp/capitol_burning" );
    level._ID1426["smoke_burning_vista_03"] = _func_155( "vfx/map/dcemp/smoke_burning_vista_03" );
    level._ID1426["thick_dark_smoke_giant_close_dcemp"] = _func_155( "fx/smoke/thick_dark_smoke_giant_close_dcemp" );
    level._ID1426["firelp_large_far"] = _func_155( "fx/fire/firelp_large_far" );
    level._ID1426["spotlight_short_dcburning"] = _func_155( "vfx/lights/lab/spotlight_short_dcburning" );
    level._ID1426["firelp_wide_pm_dcburning"] = _func_155( "fx/fire/firelp_wide_pm_dcburning" );
    level._ID1426["falling_dirt_big"] = _func_155( "fx/dust/falling_dirt_big" );
    level._ID1426["thick_dark_smoke_giant"] = _func_155( "fx/smoke/thick_dark_smoke_giant_dcemp" );
    level._ID1426["thick_dark_smoke_giant_dcburning"] = _func_155( "fx/smoke/thick_dark_smoke_giant_dcburning" );
    level._ID1426["smoke_burning_vista_04"] = _func_155( "vfx/map/dcemp/smoke_burning_vista_04" );
    level._ID1426["firelp_med_pm_dcburning"] = _func_155( "fx/fire/firelp_med_pm_dcburning" );
    level._ID1426["firelp_med_pm_dcburning_2"] = _func_155( "fx/fire/firelp_med_pm_dcburning_2" );
    level._ID1426["thick_dark_smoke_giant_small_dcemp"] = _func_155( "fx/smoke/thick_dark_smoke_giant_small_dcemp" );
    level._ID1426["screen_heavy_rain_dcemp"] = _func_155( "vfx/rain/screen_heavy_rain_dcemp" );
    level._ID1426["ambient_smoke_large"] = _func_155( "vfx/smoke/ambient_smoke_large" );
    level._ID1426["car_fire_ground_dcemp"] = _func_155( "fx/fire/car_fire_ground_dcemp" );
    level._ID1426["car_fire_large_pm_nolight_dcemp"] = _func_155( "fx/fire/car_fire_large_pm_nolight_dcemp" );
    level._ID1426["aircraft_fire_med_pm_nolight"] = _func_155( "fx/fire/aircraft_fire_med_pm_nolight" );
    level._ID1426["building_fire_large_nolight_dcemp"] = _func_155( "fx/fire/building_fire_large_nolight_dcemp" );
    level._ID1426["window_fire_large"] = _func_155( "fx/fire/window_fire_large" );
    level._ID1426["aircraft_crash_fire_large"] = _func_155( "vfx/map/dcemp/aircraft_crash_fire_large" );
    level._ID1426["firelp_large_thin_dcemp"] = _func_155( "fx/fire/firelp_large_thin_dcemp" );
    level._ID1426["heli_fire_large_pm_nolight_dcemp"] = _func_155( "fx/fire/heli_fire_large_pm_nolight_dcemp" );
    level._ID1426["aircraft_crash_smoke_large"] = _func_155( "vfx/map/dcemp/aircraft_crash_smoke_large" );
    level._ID1426["tree_fire_large_pm_nolight_dcemp"] = _func_155( "fx/fire/tree_fire_large_pm_nolight_dcemp" );
    level._ID1426["battlefield_ash_amber_far_dcemp"] = _func_155( "vfx/ash/battlefield_ash_amber_far_dcemp" );
    level._ID1426["bg_iss"] = _func_155( "vfx/map/dcemp/iss/bg_iss" );
    level._ID1426["dcemp_light_fire_movable_strong"] = _func_155( "vfx/lights/dcemp/dcemp_light_fire_movable_strong" );
    level._ID1426["bg_iss_city_lights_animated"] = _func_155( "vfx/map/dcemp/iss/bg_iss_city_lights_animated" );
    level._ID1426["bg_iss_city_lights_idle"] = _func_155( "vfx/map/dcemp/iss/bg_iss_city_lights_idle" );
    level._ID1426["rain_ground_wind"] = _func_155( "vfx/rain/rain_ground_wind" );
    level._ID1426["spotlight_medium_dcemp"] = _func_155( "vfx/map/dcemp/spotlight_medium_dcemp" );
    level._ID1426["fire_large_debris_dcemp"] = _func_155( "fx/fire/fire_large_debris_dcemp" );
    level._ID1426["embers_intense"] = _func_155( "vfx/sparks/embers_intense" );
    level._ID1426["tree_embers_intense"] = _func_155( "vfx/sparks/tree_embers_intense" );
    level._ID1426["embers_intense_small_runner"] = _func_155( "vfx/sparks/embers_intense_small_runner" );
    level._ID1426["fire_embers_intense_small"] = _func_155( "vfx/sparks/fire_embers_intense_small" );
    level._ID1426["moon_clouds"] = _func_155( "vfx/map/dcemp/moon_clouds" );
    level._ID1426["car_fire_small_pm_nolight_dcemp"] = _func_155( "fx/fire/car_fire_small_pm_nolight_dcemp" );
    level._ID1426["helicopter_fire_dcemp"] = _func_155( "fx/explosions/helicopter_fire_dcemp" );
    level._ID1426["lighthaze_dcemp"] = _func_155( "fx/misc/lighthaze_dcemp" );
    level._ID1426["spotlight_dcemp"] = _func_155( "vfx/lights/lab/spotlight_dcemp" );
    level._ID1426["heli_emp_sparks"] = _func_155( "fx/explosions/heli_emp_sparks" );
    level._ID1426["spotlight_column_dcemp"] = _func_155( "vfx/lights/lab/spotlight_column_dcemp" );
    level._ID1426["spotlight_window_dcemp"] = _func_155( "vfx/lights/lab/spotlight_window_dcemp" );
    level._ID1426["spotlight_ground_dcemp"] = _func_155( "vfx/lights/lab/spotlight_ground_dcemp" );
    level._ID1426["veh_fire_trail"] = _func_155( "vfx/map/dcemp/veh_fire_trail" );
    level._ID1426["lobby_chunks_blast"] = _func_155( "vfx/map/dcemp/lobby_chunks_blast" );
    level._ID1426["lobby_heli_crash_fire"] = _func_155( "vfx/map/dcemp/lobby_heli_crash_fire" );
    level._ID1426["ceiling_smoke_dcemp"] = _func_155( "fx/smoke/ceiling_smoke_dcemp" );
    level._ID1426["plane_turbine_fire_trail"] = _func_155( "vfx/map/dcemp/plane_turbine_fire_trail" );
    level._ID1426["turbine_fire_linger"] = _func_155( "vfx/map/dcemp/turbine_fire_linger" );
    level._ID1426["aircraft_fire_streak"] = _func_155( "vfx/map/dcemp/aircraft_fire_streak" );
    level._ID1426["turbine_scrape_ground"] = _func_155( "vfx/map/dcemp/turbine_scrape_ground" );
    level._ID1426["tank_scrape_ground"] = _func_155( "vfx/map/dcemp/tank_scrape_ground" );
    level._ID1426["intro_fire_med_custom"] = _func_155( "vfx/map/dcemp/intro_fire_med_custom" );
    level._ID1426["mist_vista_parking"] = _func_155( "vfx/map/dcemp/mist_vista_parking" );
    level._ID1426["smoke_window_large"] = _func_155( "vfx/map/dcemp/smoke_window_large" );
    level._ID1426["waterfall_drainage_short_dcemp"] = _func_155( "fx/water/waterfall_drainage_short_dcemp" );
    level._ID1426["falling_pipe_water_trickle_dcemp"] = _func_155( "vfx/water/falling_pipe_water_trickle_dcemp" );
    level._ID1426["drips_a_dcemp"] = _func_155( "fx/water/drips_a_dcemp" );
    level._ID1426["handflare_red_dcemp"] = _func_155( "fx/misc/handflare_red_dcemp" );
    level._ID1426["groundflare_red_dcemp"] = _func_155( "fx/misc/groundflare_red_dcemp" );
    level._ID1426["orange_fog_vista"] = _func_155( "vfx/map/dcemp/orange_fog_vista" );
    level._ID1426["rain_ground_ripples"] = _func_155( "vfx/rain/rain_ground_ripples" );
    level._ID1426["spotlight_medium_nolight_dcemp"] = _func_155( "vfx/map/dcemp/spotlight_medium_nolight_dcemp" );
    level._ID1426["frag_grenade_concrete_dcemp"] = _func_155( "vfx/explosion/frag_grenade_concrete_dcemp" );
    level._ID1426["flesh_hit_body_fatal_exit_dcemp"] = _func_155( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._ID1426["jet_contrail_dcemp"] = _func_155( "fx/smoke/jet_contrail_dcemp" );
    level._ID1426["flare_ambient_dcemp"] = _func_155( "fx/misc/flare_ambient_dcemp" );
    level._ID1426["obelisk_smoke_dcemp"] = _func_155( "fx/smoke/obelisk_smoke_dcemp" );
    level._ID1426["fire_ground_small_dcemp"] = _func_155( "fx/fire/fire_ground_small_dcemp" );
    level._ID1426["fire_ground_long_dcemp"] = _func_155( "fx/fire/fire_ground_long_dcemp" );
    level._ID1426["godray_planecrash_lobby"] = _func_155( "vfx/map/dcemp/godray_planecrash_lobby" );
    level._ID1426["bin_fire_large_pm_nolight_dcemp"] = _func_155( "fx/fire/bin_fire_large_pm_nolight_dcemp" );
    level._ID1426["waterfall_drainage_long_dcemp"] = _func_155( "fx/water/waterfall_drainage_long_dcemp" );
    level._ID1426["drips_b_dcemp"] = _func_155( "fx/water/drips_b_dcemp" );
    level._ID1426["traffic_red_light"] = _func_155( "fx/misc/usa_traffic_light_red_dcemp" );
    level._ID1426["dust_falling_debris_s_runner_loop_dcemp"] = _func_155( "vfx/dust/dust_falling_debris_s_runner_loop_dcemp" );
    level._ID1426["drips_slow_dcemp"] = _func_155( "vfx/rain/drips_slow_dcemp" );
    level._ID1426["dust_falling_ceiling"] = _func_155( "vfx/map/dcemp/dust_falling_ceiling" );
    level._ID1426["vent_smoke"] = _func_155( "vfx/map/dcemp/vent_smoke" );
    thread _ID42422::_ID28925( "none" );
    thread _ID42422::_ID28055();
    thread _unknown_120C();
    _ID42231::_ID48620( "toy_firehydrant", "fx/props/firehydrant_spray_10sec", "fx/props/firehydrant_spray_dcemp" );
    thread _unknown_0E46();
    thread _unknown_111D();
    thread _unknown_1127();
    _func_0DB( "r_outdoorFeather", "128" );
    _ID42299::_ID49604( "me_dumpster_fire_FX_origin", "vfx/unique/no_fx", undefined, "me_dumpster_fire_FX", "fire_dumpster_medium" );
    _ID42299::_ID49604( "flare_ambient_FX_origin", "fx/misc/flare_ambient_dcemp", undefined, "flare_ambient_FX", "emt_road_flare_burn" );
    thread _unknown_119C();
    thread _unknown_1254();
}

get_wet_groundtype_override( var_0 )
{
    if ( !_func_126( var_0, "_wet" ) && _func_02F( self._ID474 ) && _func_126( self._ID474, "_wet" ) && _func_02F( anim._ID25932[self._ID474] ) )
        var_0 = self._ID474;

    return var_0;
}

dcemp_footstep_handler( var_0, var_1, var_2, var_3 )
{
    var_1 = _unknown_0EA9( var_1 );
    return animscripts\notetracks::_ID28067( var_0, var_1, var_2, var_3 );
}

dcemp_footstep_small_handler( var_0, var_1, var_2, var_3 )
{
    var_1 = _unknown_0EBE( var_1 );
    return animscripts\notetracks::_ID28068( var_0, var_1, var_2, var_3 );
}

_ID48844()
{
    var_0 = _func_155( "fx/impacts/footstep_water_dark" );
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
    anim._ID25931 = ::_unknown_0FB2;
    anim._ID25933 = ::_unknown_0FBE;
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

    _func_0DB( "r_lightGridDefaultFXLightingLookup", "-44289.4 15900.1 -53.6752" );
    var_1 = _func_1A1( "parking_lighting_primary", "script_noteworthy" );
    var_2 = 20000000 * var_0;
    var_1 _meth_81EB( var_2 );

    if ( _ID42237::_ID14385( "parking_moveout" ) )
    {
        var_1 _meth_84A7( "force_fully_on" );
        return;
    }

    var_3 = _func_1A2( "office_lighting_primary", "script_noteworthy" );
    var_2 = 230 * var_0;
    _ID42237::_ID3294( var_3, ::_meth_81EB, var_2 );
    var_3 = _func_1A2( "office_bounce_lighting_primary", "script_noteworthy" );
    var_2 = 300 * var_0;
    _ID42237::_ID3294( var_3, ::_meth_81EB, var_2 );
}

_ID43033()
{
    if ( !_ID42237::_ID14385( "spotlight_lightning" ) )
        return;

    var_0 = _func_1A1( "parking_lighting_primary", "script_noteworthy" );
    var_0 _meth_81EB( 0 );
    var_0 _meth_84A7( "force_off" );
    var_1 = _func_1A2( "office_lighting_primary", "script_noteworthy" );
    _ID42237::_ID3294( var_1, ::_meth_81EB, 0 );
    var_1 = _func_1A2( "office_bounce_lighting_primary", "script_noteworthy" );
    _ID42237::_ID3294( var_1, ::_meth_81EB, 0 );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", "-42771.6 20141.2 -241.965" );
}

_ID22333()
{
    _ID42237::_ID14402( "emp_lighting_flash" );
    var_0[0] = "quick";
    var_0[1] = "double";
    var_0[2] = "triple";

    switch ( var_0[level.flashtype] )
    {

    }

    case "quick":
    case "double":
    case "triple":
}

lightning_doubleflash( var_0 )
{
    var_1 = _func_046();
    var_2 = 0.03;
    var_3 = var_1[0] * var_2;
    var_4 = var_1[1] * var_2;
    var_5 = var_1[2] * var_2;
    var_6 = 0;

    if ( var_0 )
        var_7 = _func_0B9( 13, 18 );
    else
        var_7 = _func_0B9( 9, 12 );

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
                    var_13 = _func_0BA( 14.9, 16.9 );
                    var_10 = var_9 * var_13;
                    var_12 = 0;
                }
                else
                {
                    var_10 = var_9 * 0.4;
                    var_6 += _func_0B7( 35 );
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
            var_10 += _func_0BA( 0.03, 0.06 ) * var_11 / 2 + 1;

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

        _unknown_13F9( var_9 );
        _func_047( var_3, var_4, var_5 );
        var_14 = 0.1;
        _func_049( 0.498039 * var_2 * var_14, 0.498039 * var_2 * var_14, 0.619608 * var_2 * var_14 );
        var_15 = 0.05;
        wait(var_15);
    }

    if ( _ID42237::_ID14385( "parking_main" ) )
        var_16 = 0.035;
    else
        var_16 = 0.03;

    _unknown_15BE( var_16 );
}

lightning_bigflash( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_046();
    var_5 = 0.03;
    var_6 = var_4[0] * var_5;
    var_7 = var_4[1] * var_5;
    var_8 = var_4[2] * var_5;
    var_9 = 0;
    var_10 = _func_0B9( 22, 28 );
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
                    var_16 = _func_0BA( 15.8, 17.1 );
                    var_13 = var_12 * var_16;
                    var_15 = 0;
                }
                else
                {
                    var_13 = var_12 * 0.4;
                    var_9 += _func_0B7( 35 );
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
            var_13 += _func_0BA( 0.04, 0.06 ) * var_14 / 3 + 1;

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

        _unknown_155E( var_12 );
        _func_047( var_6, var_7, var_8 );
        var_17 = 0.1;
        _func_049( 0.498039 * var_5 * var_17, 0.498039 * var_5 * var_17, 0.619608 * var_5 * var_17 );
        var_18 = 0.05;
        wait(var_18);
    }

    if ( _ID42237::_ID14385( "parking_main" ) )
        var_19 = 0.035;
    else
        var_19 = 0.03;

    _unknown_1723( var_19 );
}

lightning_setdirection( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( level.sunpitch ) )
        level.sunpitch = -20;

    if ( !_func_02F( level.sunheading ) )
        level.sunheading = 55;

    if ( !_func_02F( var_0 ) )
        var_0 = level.sunpitch;

    if ( !_func_02F( var_1 ) )
        var_1 = level.sunheading;

    if ( !_func_02F( var_2 ) )
        var_2 = level.sunpitch;

    if ( !_func_02F( var_3 ) )
        var_3 = level.sunheading;

    if ( level._ID9228 )
        return;

    var_4 = 0.01;
    _unknown_1794();

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

    var_5 = _func_0BA( var_0, var_2 );
    var_6 = _func_0BA( var_1, var_3 );
}

naturallight( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    waittillframeend;
    waitframe;
    _unknown_180B();
    _func_047( 0.498039 * var_0, 0.498039 * var_0, 0.619608 * var_0 );

    if ( _ID42237::_ID14385( "parking_main" ) )
    {
        var_1 = 0.1;
        _func_049( 0.498039 * var_0 * var_1, 0.498039 * var_0 * var_1, 0.619608 * var_0 * var_1 );
    }
    else
        _func_049( 0.498039 * var_0, 0.498039 * var_0, 0.619608 * var_0 );

    _ID42237::_ID14388( "emp_lighting_flash" );
}

lightning_visionset()
{
    if ( _ID42237::_ID14385( "parking_main" ) )
        level._ID794 _meth_83CD( "dcemp_lightning_outside" );
    else
        level._ID794 _meth_83CD( "dcemp_lightning" );

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
        level._ID794 _meth_83CD( "dcemp_rain" );
    else if ( _ID42237::_ID14385( "office1" ) )
        level._ID794 _meth_83CD( "dcemp_office" );
    else
        level._ID794 _meth_83CD( "dcemp" );

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

    _unknown_1839();
}

_ID44058()
{
    _ID42237::_ID14413( "parking_player_jumped_down" );
    _ID42237::_ID14402( "rain_mask_on" );
}

_ID47445()
{
    level endon( "stop_rain_mask" );
    thread _unknown_1A86();
    _ID42237::_ID14413( "rain_started" );

    for (;;)
    {
        _ID42237::_ID14413( "rain_mask_on" );
        _ID42237::_ID14388( "rain_mask_off" );
        thread _unknown_1A87();
        _ID42237::_ID14413( "rain_mask_off" );
        _ID42237::_ID14388( "rain_mask_on" );
        self notify( "stopRainCheck" );

        if ( _func_02F( level._ID47052 ) )
            level._ID47052 _meth_80B7();
    }
}

_ID44454()
{
    level endon( "stop_rain_mask" );
    self endon( "stopRainCheck" );
    level._ID794 endon( "death" );

    for (;;)
    {
        var_0 = level._ID794 _meth_8346()[0];

        if ( var_0 < 50 && !_func_02F( level._ID47052 ) )
        {
            level._ID47052 = _func_15B( level._ID1426["screen_heavy_rain_dcemp"], level._ID794._ID740 );
            _func_15C( level._ID47052 );
        }
        else if ( _func_02F( level._ID47052 ) )
            level._ID47052 _meth_80B7();

        wait 0.1;
    }
}

_ID53733()
{
    _ID42237::_ID14413( "stop_rain_mask" );

    if ( _func_02F( level._ID47052 ) )
        level._ID47052 _meth_80B7();
}

bg_earth_manager()
{
    _ID42237::_ID14413( "iss_fx" );
    var_0 = _func_1A1( "bg_earth_fx", "targetname" );
    var_1 = _ID42237::_ID35164();
    var_1._ID740 = var_0._ID740;
    var_1._ID65 = var_0._ID65 + ( -90, 0, 0 );
    _func_157( level._ID1426["bg_iss"], var_1, "tag_origin" );
    _func_157( level._ID1426["bg_iss_city_lights_idle"], var_1, "tag_origin" );
    _ID42237::_ID14413( "iss_lights_out" );
    _func_159( level._ID1426["bg_iss_city_lights_idle"], var_1, "tag_origin" );
    _func_157( level._ID1426["bg_iss_city_lights_animated"], var_1, "tag_origin" );
    _ID42237::_ID14413( "iss_done" );
    _func_159( level._ID1426["bg_iss"], var_1, "tag_origin" );
}

override_destructibles()
{
    waitframe;
    _ID42231::_ID48620( "tag_cab_fire", "fx/fire/firelp_med_pm", "fx/fire/firelp_med_pm_nolight_dcemp" );
}

flickering_street_lights()
{
    var_0 = 1;
    self._ID47454 = _func_1A2( "light_pole_flickering", "targetname" );
    self._ID43670 = [];
    self._ID47812 = [];
    self._ID52890 = [];
    var_1 = self._ID47454;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_02F( var_2._ID922 ) )
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

    var_clear_2
    var_clear_0

    while ( !_ID42237::_ID14385( "emp" ) )
    {
        if ( _func_02F( self._ID43670 ) )
        {
            if ( self._ID43670.size > 0 )
            {
                var_4 = self._ID43670;

                for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
                {
                    var_5 = var_4[var_6];
                    var_5 _meth_805A();
                }

                var_clear_2
                var_clear_0
            }

            self._ID47812 _meth_805A();
        }

        if ( _func_02F( self._ID47812 ) )
        {
            if ( self._ID47812.size > 0 )
            {
                var_7 = self._ID47812;

                for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
                {
                    var_5 = var_7[var_8];

                    if ( _func_02F( var_5._ID43670._ID12315 ) )
                        var_5._ID43670._ID12315 _ID42237::_ID26402();
                }

                var_clear_2
                var_clear_0
            }
        }

        wait(var_0);

        if ( _func_02F( self._ID43670 ) )
        {
            if ( self._ID43670.size > 0 )
            {
                var_9 = self._ID43670;

                for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
                {
                    var_5 = var_9[var_10];
                    var_5 _meth_8059();

                    if ( _func_02F( var_5._ID43670._ID12315 ) )
                        var_5._ID43670._ID12315 _ID42237::_ID26402();
                }

                var_clear_2
                var_clear_0
            }
        }

        if ( _func_02F( self._ID47812 ) )
        {
            if ( self._ID47812.size > 0 )
            {
                var_11 = self._ID47812;

                for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
                {
                    var_5 = var_11[var_12];
                    var_5 _meth_805A();
                }

                var_clear_2
                var_clear_0
            }
        }

        wait(var_0);
    }

    self._ID43670 _meth_805A();
    self._ID47812 _meth_8059();
}

handflare_fx()
{
    var_0 = _func_1A1( "street_flare", "targetname" );
    var_0._ID45977 = _func_1A1( var_0._ID1191, "targetname" );
    var_0._ID45977 _meth_8053( var_0 );
    _func_157( level._ID1426["groundflare_red_dcemp"], var_0._ID45977, "TAG_ORIGIN" );
}

_ID52070()
{
    _ID42549::_ID48528( "mig29_contrail", "fx/smoke/jet_contrail_dcemp" );
    _ID42549::_ID48528( "mig29_contrail_02", "fx/smoke/jet_contrail_dcemp" );
}

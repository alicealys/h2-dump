// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\utility::flag_init( "stopRainCheck" );
    common_scripts\utility::flag_init( "rain_mask_on" );
    common_scripts\utility::flag_init( "rain_mask_off" );
    common_scripts\utility::flag_init( "parking_player_jumped_down" );
    common_scripts\utility::flag_init( "stop_rain_mask" );
    common_scripts\utility::flag_init( "rain_started" );
    level._effect["vehicle_explosion_btr80"] = loadfx( "fx/explosions/vehicle_explosion_btr80" );
    level._effect["handflare"] = loadfx( "fx/misc/handflare_red_dcemp" );
    level._effect["groundflare"] = loadfx( "fx/misc/handflare_red_dcemp" );
    level._effect["killshot"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._effect["nouse"] = loadfx( "fx/props/news_stand_paper_spill" );
    level._effect["nouse"] = loadfx( "fx/props/news_stand_explosion" );
    level._effect["nouse"] = loadfx( "fx/props/news_stand_paper_spill_shatter" );
    level._effect["nouse"] = loadfx( "fx/props/photocopier_sparks" );
    level._effect["nouse"] = loadfx( "fx/props/photocopier_exp" );
    level._effect["nouse"] = loadfx( "fx/props/photocopier_fire" );
    level._effect["nouse"] = loadfx( "fx/props/electricbox4_explode" );
    level._effect["nouse"] = loadfx( "fx/props/filecabinet_dam" );
    level._effect["nouse"] = loadfx( "fx/props/filecabinet_des" );
    level._effect["nouse"] = loadfx( "fx/misc/light_fluorescent_blowout_runner" );
    level._effect["nouse"] = loadfx( "fx/misc/light_blowout_swinging_runner" );
    level.breakables_fx["tv_explode"] = loadfx( "fx/explosions/tv_explosion" );
    level._effect["dcemp_sun"] = loadfx( "fx/misc/dcemp_sun" );
    level._effect["dcemp_icbm_trail"] = loadfx( "fx/misc/dcemp_icbm_trail" );
    level._effect["space_nuke"] = loadfx( "fx/explosions/space_nuke" );
    level._effect["space_nuke_shockwave"] = loadfx( "fx/explosions/space_nuke_shockwave" );
    level._effect["space_emp"] = loadfx( "fx/explosions/space_emp" );
    level._effect["space_explosion"] = loadfx( "fx/explosions/space_explosion" );
    level._effect["space_explosion_small"] = loadfx( "fx/explosions/space_explosion_small" );
    level._effect["dcemp_water_nuke_glow"] = loadfx( "fx/misc/dcemp_water_nuke_glow" );
    level._effect["dlight_blue"] = loadfx( "fx/misc/dlight_blue" );
    level._effect["headshot3"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._effect["ground_smoke_dcburning1200x1200"] = loadfx( "fx/smoke/ground_smoke1200x1200_dcburning" );

    if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
        level._effect["_attack_heli_spotlight"] = loadfx( "vfx/map/dcemp/spotlight_medium_dcemp" );
    else
        level._effect["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_large" );

    level._effect["_attack_heli_spotlight_flicker"] = loadfx( "vfx/map/dcemp/spotlight_medium_flicker_dcemp" );
    level._effect["planecrash_spotlight"] = loadfx( "fx/misc/dcemp_planecrash_spotlight_model" );
    level._effect["dcemp_nuke_spotlight_fade"] = loadfx( "fx/misc/dcemp_nuke_spotlight_fade" );
    level._effect["spotlight_lightning"] = loadfx( "fx/misc/spotlight_lightning" );
    level._effect["space_helmet_spot_light"] = loadfx( "fx/misc/space_helmet_spot_light" );
    level._effect["transformer_spark_runner"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._effect["dcemp_glass_74x44"] = loadfx( "fx/props/dcemp_glass_74x44" );
    level._effect["bodyfall_dust_high"] = loadfx( "fx/impacts/bodyfall_dust_high" );
    level._effect["helicopter_crash"] = loadfx( "fx/explosions/helicopter_crash" );
    level._effect["helicopter_explosion_secondary_small"] = loadfx( "fx/explosions/helicopter_explosion_secondary_small" );
    level._effect["powerline_runner_oneshot"] = loadfx( "fx/explosions/powerline_runner_oneshot" );
    level._effect["space_emp_crashsite"] = loadfx( "fx/explosions/space_emp_crashsite" );
    level._effect["space_nuke_crashsite"] = loadfx( "fx/explosions/space_nuke_crashsite" );
    level._effect["helicopter_explosion"] = loadfx( "fx/explosions/helicopter_explosion_dcemp" );
    level._effect["small_vehicle_explosion"] = loadfx( "fx/explosions/small_vehicle_explosion" );
    level._effect["aircraft_crash_fire"] = loadfx( "vfx/map/dcemp/aircraft_crash_fire" );
    level._effect["firelp_large_pm"] = loadfx( "fx/fire/firelp_large_pm" );
    level._effect["firelp_med_pm"] = loadfx( "fx/fire/firelp_med_pm_nolight_dcemp" );
    level._effect["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm" );
    level._effect["firelp_large_pm_nolight"] = loadfx( "fx/fire/firelp_large_pm_nolight_dcemp" );
    level._effect["firelp_med_pm_nolight"] = loadfx( "fx/fire/firelp_med_pm_nolight_dcemp" );
    level._effect["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight_dcemp" );
    level._effect["firelp_small_streak_pm1_h"] = loadfx( "fx/fire/firelp_small_streak_pm1_h" );
    level._effect["firelp_small_streak_pm_v"] = loadfx( "fx/fire/firelp_small_streak_pm_v" );
    level._effect["firelp_small_streak_pm1_h_nolight"] = loadfx( "fx/fire/firelp_small_streak_pm1_h_nolight" );
    level._effect["firelp_small_streak_pm_v_nolight"] = loadfx( "fx/fire/firelp_small_streak_pm_v_nolight" );
    level._effect["fire_trail_60"] = loadfx( "fx/fire/fire_trail_60" );
    level._effect["fire_streak_runner"] = loadfx( "fx/fire/fire_streak_runner" );
    level._effect["fire_falling_runner_point"] = loadfx( "vfx/fire/fire_falling_runner_point_infrequent" );
    level._effect["fire_tree_embers"] = loadfx( "fx/fire/fire_tree_embers" );
    level._effect["jet_crash"] = loadfx( "fx/explosions/jet_crash_dcemp" );
    level._effect["bird_pm"] = loadfx( "fx/misc/bird_pm" );
    level._effect["leaves_a"] = loadfx( "fx/misc/leaves_a" );
    level._effect["fire_embers_directional"] = loadfx( "fx/fire/fire_embers_directional" );
    level._effect["waterfall_drainage_short"] = loadfx( "fx/water/waterfall_drainage_short_dcemp" );
    level._effect["waterfall_drainage_splash"] = loadfx( "fx/water/waterfall_drainage_splash_dcemp" );
    level._effect["falling_water_trickle"] = loadfx( "fx/water/falling_water_trickle" );
    level._effect["rain_noise_splashes"] = loadfx( "fx/weather/rain_noise_splashes" );
    level._effect["rain_noise_splashes_dark"] = loadfx( "fx/weather/rain_noise_splashes_dark" );
    level._effect["rain_splash_lite"] = loadfx( "fx/weather/rain_splash_lite" );
    level._effect["rain_splash_lite_runner_40x200"] = loadfx( "fx/weather/rain_splash_lite_runner_40x200" );
    level._effect["rain_splash_lite_runner_40x600"] = loadfx( "fx/weather/rain_splash_lite_runner_40x600" );
    level._effect["rain_noise_ud"] = loadfx( "fx/weather/rain_noise_ud" );
    level._effect["rain_noise_ud_runner_0x400"] = loadfx( "fx/weather/rain_noise_ud_runner_0x400" );
    level._effect["cgo_ship_puddle_small"] = loadfx( "fx/distortion/cgo_ship_puddle_small" );
    level._effect["cgo_ship_puddle_large"] = loadfx( "fx/distortion/cgo_ship_puddle_large" );
    level._effect["rain_splash_lite_4x64"] = loadfx( "fx/weather/rain_splash_lite_4x64" );
    level._effect["rain_splash_lite_4x128"] = loadfx( "fx/weather/rain_splash_lite_4x128" );
    level._effect["rain_splash_lite_8x64"] = loadfx( "fx/weather/rain_splash_lite_8x64" );
    level._effect["rain_splash_lite_8x128"] = loadfx( "fx/weather/rain_splash_lite_8x128" );
    level._effect["rain_splash_lite_64x64"] = loadfx( "fx/weather/rain_splash_lite_64x64" );
    level._effect["rain_splash_lite_128x128"] = loadfx( "fx/weather/rain_splash_lite_128x128" );
    level._effect["fire_tree_slow_longrange"] = loadfx( "fx/fire/fire_tree_slow_longrange" );
    level._effect["green_flare"] = loadfx( "fx/misc/flare_ambient_green" );
    level._effect["player_flare"] = loadfx( "fx/impacts/small_metalhit" );
    level._effect["carpetbomb"] = loadfx( "fx/explosions/helicopter_explosion" );
    level._effect["wire_spark"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._effect["lightning"] = loadfx( "fx/weather/lightning" );
    level._effect["lightning_bolt"] = loadfx( "fx/weather/lightning_bolt" );
    level._effect["lightning_bolt_lrg"] = loadfx( "fx/weather/lightning_bolt_lrg" );
    maps\_weather::addlightningexploder( 10 );
    maps\_weather::addlightningexploder( 11 );
    maps\_weather::addlightningexploder( 12 );
    level.nextlightning = gettime() + 1;
    level._effect["rain_10"] = loadfx( "fx/weather/rain_heavy_mist_dcemp" );
    level._effect["rain_9"] = loadfx( "fx/weather/rain_9_lite_dcemp" );
    level._effect["rain_8"] = loadfx( "fx/weather/rain_8_lite_dcemp" );
    level._effect["rain_7"] = loadfx( "fx/weather/rain_7_lite_dcemp" );
    level._effect["rain_6"] = loadfx( "fx/weather/rain_6_lite_dcemp" );
    level._effect["rain_5"] = loadfx( "fx/weather/rain_5_lite_dcemp" );
    level._effect["rain_4"] = loadfx( "fx/weather/rain_4_lite_dcemp" );
    level._effect["rain_3"] = loadfx( "fx/weather/rain_3_lite_dcemp" );
    level._effect["rain_2"] = loadfx( "fx/weather/rain_2_lite_dcemp" );
    level._effect["rain_1"] = loadfx( "fx/weather/rain_1_lite_dcemp" );
    level._effect["rain_0"] = loadfx( "fx/misc/blank" );
    level._effect["debug_color_checker"] = loadfx( "vfx/test/debug_color_checker" );
    level._effect["aircraft_crash_smoke"] = loadfx( "vfx/map/dcemp/aircraft_crash_smoke" );
    level._effect["dcemp_fire_building_smoke"] = loadfx( "vfx/map/dcemp/dcemp_fire_building_smoke" );
    level._effect["dcburning_fire_building_far"] = loadfx( "vfx/fire/dcburning_fire_building_far" );
    level._effect["dcburning_building_fire_flicker"] = loadfx( "vfx/map/dcburning/dcburning_building_fire_flicker" );
    level._effect["firelp_large_pm_2_dcburning"] = loadfx( "fx/fire/firelp_large_pm_2_dcburning" );
    level._effect["ash_ember_single_dcburning"] = loadfx( "vfx/ash/ash_ember_single_dcburning" );
    level._effect["rain_heavy_mist_dcemp"] = loadfx( "fx/weather/rain_heavy_mist_dcemp" );
    level._effect["capitol_burning"] = loadfx( "vfx/map/dcemp/capitol_burning" );
    level._effect["smoke_burning_vista_03"] = loadfx( "vfx/map/dcemp/smoke_burning_vista_03" );
    level._effect["thick_dark_smoke_giant_close_dcemp"] = loadfx( "fx/smoke/thick_dark_smoke_giant_close_dcemp" );
    level._effect["firelp_large_far"] = loadfx( "fx/fire/firelp_large_far" );
    level._effect["spotlight_short_dcburning"] = loadfx( "vfx/lights/lab/spotlight_short_dcburning" );
    level._effect["firelp_wide_pm_dcburning"] = loadfx( "fx/fire/firelp_wide_pm_dcburning" );
    level._effect["falling_dirt_big"] = loadfx( "fx/dust/falling_dirt_big" );
    level._effect["thick_dark_smoke_giant"] = loadfx( "fx/smoke/thick_dark_smoke_giant_dcemp" );
    level._effect["thick_dark_smoke_giant_dcburning"] = loadfx( "fx/smoke/thick_dark_smoke_giant_dcburning" );
    level._effect["smoke_burning_vista_04"] = loadfx( "vfx/map/dcemp/smoke_burning_vista_04" );
    level._effect["firelp_med_pm_dcburning"] = loadfx( "fx/fire/firelp_med_pm_dcburning" );
    level._effect["firelp_med_pm_dcburning_2"] = loadfx( "fx/fire/firelp_med_pm_dcburning_2" );
    level._effect["thick_dark_smoke_giant_small_dcemp"] = loadfx( "fx/smoke/thick_dark_smoke_giant_small_dcemp" );
    level._effect["screen_heavy_rain_dcemp"] = loadfx( "vfx/rain/screen_heavy_rain_dcemp" );
    level._effect["ambient_smoke_large"] = loadfx( "vfx/smoke/ambient_smoke_large" );
    level._effect["car_fire_ground_dcemp"] = loadfx( "fx/fire/car_fire_ground_dcemp" );
    level._effect["car_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/car_fire_large_pm_nolight_dcemp" );
    level._effect["aircraft_fire_med_pm_nolight"] = loadfx( "fx/fire/aircraft_fire_med_pm_nolight" );
    level._effect["building_fire_large_nolight_dcemp"] = loadfx( "fx/fire/building_fire_large_nolight_dcemp" );
    level._effect["window_fire_large"] = loadfx( "fx/fire/window_fire_large" );
    level._effect["aircraft_crash_fire_large"] = loadfx( "vfx/map/dcemp/aircraft_crash_fire_large" );
    level._effect["firelp_large_thin_dcemp"] = loadfx( "fx/fire/firelp_large_thin_dcemp" );
    level._effect["heli_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/heli_fire_large_pm_nolight_dcemp" );
    level._effect["aircraft_crash_smoke_large"] = loadfx( "vfx/map/dcemp/aircraft_crash_smoke_large" );
    level._effect["tree_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/tree_fire_large_pm_nolight_dcemp" );
    level._effect["battlefield_ash_amber_far_dcemp"] = loadfx( "vfx/ash/battlefield_ash_amber_far_dcemp" );
    level._effect["bg_iss"] = loadfx( "vfx/map/dcemp/iss/bg_iss" );
    level._effect["dcemp_light_fire_movable_strong"] = loadfx( "vfx/lights/dcemp/dcemp_light_fire_movable_strong" );
    level._effect["bg_iss_city_lights_animated"] = loadfx( "vfx/map/dcemp/iss/bg_iss_city_lights_animated" );
    level._effect["bg_iss_city_lights_idle"] = loadfx( "vfx/map/dcemp/iss/bg_iss_city_lights_idle" );
    level._effect["rain_ground_wind"] = loadfx( "vfx/rain/rain_ground_wind" );
    level._effect["spotlight_medium_dcemp"] = loadfx( "vfx/map/dcemp/spotlight_medium_dcemp" );
    level._effect["fire_large_debris_dcemp"] = loadfx( "fx/fire/fire_large_debris_dcemp" );
    level._effect["embers_intense"] = loadfx( "vfx/sparks/embers_intense" );
    level._effect["tree_embers_intense"] = loadfx( "vfx/sparks/tree_embers_intense" );
    level._effect["embers_intense_small_runner"] = loadfx( "vfx/sparks/embers_intense_small_runner" );
    level._effect["fire_embers_intense_small"] = loadfx( "vfx/sparks/fire_embers_intense_small" );
    level._effect["moon_clouds"] = loadfx( "vfx/map/dcemp/moon_clouds" );
    level._effect["car_fire_small_pm_nolight_dcemp"] = loadfx( "fx/fire/car_fire_small_pm_nolight_dcemp" );
    level._effect["helicopter_fire_dcemp"] = loadfx( "fx/explosions/helicopter_fire_dcemp" );
    level._effect["lighthaze_dcemp"] = loadfx( "fx/misc/lighthaze_dcemp" );
    level._effect["spotlight_dcemp"] = loadfx( "vfx/lights/lab/spotlight_dcemp" );
    level._effect["heli_emp_sparks"] = loadfx( "fx/explosions/heli_emp_sparks" );
    level._effect["spotlight_column_dcemp"] = loadfx( "vfx/lights/lab/spotlight_column_dcemp" );
    level._effect["spotlight_window_dcemp"] = loadfx( "vfx/lights/lab/spotlight_window_dcemp" );
    level._effect["spotlight_ground_dcemp"] = loadfx( "vfx/lights/lab/spotlight_ground_dcemp" );
    level._effect["veh_fire_trail"] = loadfx( "vfx/map/dcemp/veh_fire_trail" );
    level._effect["lobby_chunks_blast"] = loadfx( "vfx/map/dcemp/lobby_chunks_blast" );
    level._effect["lobby_heli_crash_fire"] = loadfx( "vfx/map/dcemp/lobby_heli_crash_fire" );
    level._effect["ceiling_smoke_dcemp"] = loadfx( "fx/smoke/ceiling_smoke_dcemp" );
    level._effect["plane_turbine_fire_trail"] = loadfx( "vfx/map/dcemp/plane_turbine_fire_trail" );
    level._effect["turbine_fire_linger"] = loadfx( "vfx/map/dcemp/turbine_fire_linger" );
    level._effect["aircraft_fire_streak"] = loadfx( "vfx/map/dcemp/aircraft_fire_streak" );
    level._effect["turbine_scrape_ground"] = loadfx( "vfx/map/dcemp/turbine_scrape_ground" );
    level._effect["tank_scrape_ground"] = loadfx( "vfx/map/dcemp/tank_scrape_ground" );
    level._effect["intro_fire_med_custom"] = loadfx( "vfx/map/dcemp/intro_fire_med_custom" );
    level._effect["mist_vista_parking"] = loadfx( "vfx/map/dcemp/mist_vista_parking" );
    level._effect["smoke_window_large"] = loadfx( "vfx/map/dcemp/smoke_window_large" );
    level._effect["waterfall_drainage_short_dcemp"] = loadfx( "fx/water/waterfall_drainage_short_dcemp" );
    level._effect["falling_pipe_water_trickle_dcemp"] = loadfx( "vfx/water/falling_pipe_water_trickle_dcemp" );
    level._effect["drips_a_dcemp"] = loadfx( "fx/water/drips_a_dcemp" );
    level._effect["handflare_red_dcemp"] = loadfx( "fx/misc/handflare_red_dcemp" );
    level._effect["groundflare_red_dcemp"] = loadfx( "fx/misc/groundflare_red_dcemp" );
    level._effect["orange_fog_vista"] = loadfx( "vfx/map/dcemp/orange_fog_vista" );
    level._effect["rain_ground_ripples"] = loadfx( "vfx/rain/rain_ground_ripples" );
    level._effect["spotlight_medium_nolight_dcemp"] = loadfx( "vfx/map/dcemp/spotlight_medium_nolight_dcemp" );
    level._effect["frag_grenade_concrete_dcemp"] = loadfx( "vfx/explosion/frag_grenade_concrete_dcemp" );
    level._effect["flesh_hit_body_fatal_exit_dcemp"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._effect["jet_contrail_dcemp"] = loadfx( "fx/smoke/jet_contrail_dcemp" );
    level._effect["flare_ambient_dcemp"] = loadfx( "fx/misc/flare_ambient_dcemp" );
    level._effect["obelisk_smoke_dcemp"] = loadfx( "fx/smoke/obelisk_smoke_dcemp" );
    level._effect["fire_ground_small_dcemp"] = loadfx( "fx/fire/fire_ground_small_dcemp" );
    level._effect["fire_ground_long_dcemp"] = loadfx( "fx/fire/fire_ground_long_dcemp" );
    level._effect["godray_planecrash_lobby"] = loadfx( "vfx/map/dcemp/godray_planecrash_lobby" );
    level._effect["bin_fire_large_pm_nolight_dcemp"] = loadfx( "fx/fire/bin_fire_large_pm_nolight_dcemp" );
    level._effect["waterfall_drainage_long_dcemp"] = loadfx( "fx/water/waterfall_drainage_long_dcemp" );
    level._effect["drips_b_dcemp"] = loadfx( "fx/water/drips_b_dcemp" );
    level._effect["traffic_red_light"] = loadfx( "fx/misc/usa_traffic_light_red_dcemp" );
    level._effect["dust_falling_debris_s_runner_loop_dcemp"] = loadfx( "vfx/dust/dust_falling_debris_s_runner_loop_dcemp" );
    level._effect["drips_slow_dcemp"] = loadfx( "vfx/rain/drips_slow_dcemp" );
    level._effect["dust_falling_ceiling"] = loadfx( "vfx/map/dcemp/dust_falling_ceiling" );
    level._effect["vent_smoke"] = loadfx( "vfx/map/dcemp/vent_smoke" );
    thread maps\_weather::raininit( "none" );
    thread maps\_weather::playerweather();
    thread _id_CB66();
    common_scripts\_destructible::_id_BDEC( "toy_firehydrant", "fx/props/firehydrant_spray_10sec", "fx/props/firehydrant_spray_dcemp" );
    thread _id_BECC();
    thread _id_AC1A();
    thread _id_B955();
    setsaveddvar( "r_outdoorFeather", "128" );
    maps\_global_fx::_id_C1C4( "me_dumpster_fire_FX_origin", "vfx/unique/no_fx", undefined, "me_dumpster_fire_FX", "fire_dumpster_medium" );
    maps\_global_fx::_id_C1C4( "flare_ambient_FX_origin", "fx/misc/flare_ambient_dcemp", undefined, "flare_ambient_FX", "emt_road_flare_burn" );
    thread bg_earth_manager();
    thread handflare_fx();
}

get_wet_groundtype_override( var_0 )
{
    if ( !isendstr( var_0, "_wet" ) && isdefined( self.groundtype ) && isendstr( self.groundtype, "_wet" ) && isdefined( anim.optionalstepeffects[self.groundtype] ) )
        var_0 = self.groundtype;

    return var_0;
}

dcemp_footstep_handler( var_0, var_1, var_2, var_3 )
{
    var_1 = get_wet_groundtype_override( var_1 );
    return animscripts\notetracks::playfootstepeffect( var_0, var_1, var_2, var_3 );
}

dcemp_footstep_small_handler( var_0, var_1, var_2, var_3 )
{
    var_1 = get_wet_groundtype_override( var_1 );
    return animscripts\notetracks::playfootstepeffectsmall( var_0, var_1, var_2, var_3 );
}

_id_BECC()
{
    var_0 = loadfx( "fx/impacts/footstep_water_dark" );
    animscripts\utility::setfootstepeffect( "concrete_wet", var_0 );
    animscripts\utility::setfootstepeffect( "rock_wet", var_0 );
    animscripts\utility::setfootstepeffect( "asphalt_wet", var_0 );
    animscripts\utility::setfootstepeffect( "wood_wet", var_0 );
    animscripts\utility::setfootstepeffect( "metal_wet", var_0 );
    animscripts\utility::setfootstepeffectsmall( "concrete_wet", var_0 );
    animscripts\utility::setfootstepeffectsmall( "rock_wet", var_0 );
    animscripts\utility::setfootstepeffectsmall( "asphalt_wet", var_0 );
    animscripts\utility::setfootstepeffectsmall( "wood_wet", var_0 );
    animscripts\utility::setfootstepeffectsmall( "metal_wet", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "concrete_wet", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "asphalt_wet", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "rock_wet", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "concrete_wet", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "asphalt_wet", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "rock_wet", var_0 );
    wait 1;
    common_scripts\utility::flag_wait( "parking_player_jumped_down" );
    var_1 = anim.optionalstepeffectfunction;
    var_2 = anim.optionalstepeffectsmallfunction;
    anim.optionalstepeffectfunction = ::dcemp_footstep_handler;
    anim.optionalstepeffectsmallfunction = ::dcemp_footstep_small_handler;
    animscripts\utility::setfootstepeffect( "mud", var_0 );
    animscripts\utility::setfootstepeffect( "grass", var_0 );
    animscripts\utility::setfootstepeffect( "dirt", var_0 );
    animscripts\utility::setfootstepeffect( "rock", var_0 );
    animscripts\utility::setfootstepeffect( "asphalt", var_0 );
    animscripts\utility::setfootstepeffect( "wood", var_0 );
    animscripts\utility::setfootstepeffect( "metal", var_0 );
    animscripts\utility::setfootstepeffectsmall( "mud", var_0 );
    animscripts\utility::setfootstepeffectsmall( "grass", var_0 );
    animscripts\utility::setfootstepeffectsmall( "dirt", var_0 );
    animscripts\utility::setfootstepeffectsmall( "rock", var_0 );
    animscripts\utility::setfootstepeffectsmall( "asphalt", var_0 );
    animscripts\utility::setfootstepeffectsmall( "wood", var_0 );
    animscripts\utility::setfootstepeffectsmall( "metal", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "dirt", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "concrete", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "asphalt", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "rock", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "mud", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "dirt", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "concrete", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "asphalt", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "rock", var_0 );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "mud", var_0 );
    common_scripts\utility::flag_wait( "tunnels_indoor" );
    anim.optionalstepeffectfunction = var_1;
    anim.optionalstepeffectsmallfunction = var_2;
    level._notetrackfx["knee fx left"] = undefined;
    level._notetrackfx["knee fx right"] = undefined;
    anim.optionalstepeffects = [];
    anim.optionalstepeffectssmall = [];
}

_id_CC8B( var_0 )
{
    if ( !common_scripts\utility::flag( "spotlight_lightning" ) )
        return;

    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-44289.4 15900.1 -53.6752" );
    var_1 = getent( "parking_lighting_primary", "script_noteworthy" );
    var_2 = 20000000 * var_0;
    var_1 setlightintensity( var_2 );

    if ( common_scripts\utility::flag( "parking_moveout" ) )
    {
        var_1 _meth_84A7( "force_fully_on" );
        return;
    }

    var_3 = getentarray( "office_lighting_primary", "script_noteworthy" );
    var_2 = 230 * var_0;
    common_scripts\utility::array_call( var_3, ::setlightintensity, var_2 );
    var_3 = getentarray( "office_bounce_lighting_primary", "script_noteworthy" );
    var_2 = 300 * var_0;
    common_scripts\utility::array_call( var_3, ::setlightintensity, var_2 );
}

_id_A819()
{
    if ( !common_scripts\utility::flag( "spotlight_lightning" ) )
        return;

    var_0 = getent( "parking_lighting_primary", "script_noteworthy" );
    var_0 setlightintensity( 0 );
    var_0 _meth_84A7( "force_off" );
    var_1 = getentarray( "office_lighting_primary", "script_noteworthy" );
    common_scripts\utility::array_call( var_1, ::setlightintensity, 0 );
    var_1 = getentarray( "office_bounce_lighting_primary", "script_noteworthy" );
    common_scripts\utility::array_call( var_1, ::setlightintensity, 0 );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-42771.6 20141.2 -241.965" );
}

lightning_flash()
{
    common_scripts\utility::flag_set( "emp_lighting_flash" );
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

        _id_CC8B( var_9 );
        _func_47( var_3, var_4, var_5 );
        var_14 = 0.1;
        setsunlight( 0.498039 * var_2 * var_14, 0.498039 * var_2 * var_14, 0.619608 * var_2 * var_14 );
        var_15 = 0.05;
        wait( var_15 );
    }

    if ( common_scripts\utility::flag( "parking_main" ) )
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

        _id_CC8B( var_12 );
        _func_47( var_6, var_7, var_8 );
        var_17 = 0.1;
        setsunlight( 0.498039 * var_5 * var_17, 0.498039 * var_5 * var_17, 0.619608 * var_5 * var_17 );
        var_18 = 0.05;
        wait( var_18 );
    }

    if ( common_scripts\utility::flag( "parking_main" ) )
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

    if ( level.createfx_enabled )
        return;

    var_4 = 0.01;
    lightning_visionset();

    if ( common_scripts\utility::flag( "office1" ) )
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

    waitframe();
    waittillframeend;
    lightning_normal();
    _func_47( 0.498039 * var_0, 0.498039 * var_0, 0.619608 * var_0 );

    if ( common_scripts\utility::flag( "parking_main" ) )
    {
        var_1 = 0.1;
        setsunlight( 0.498039 * var_0 * var_1, 0.498039 * var_0 * var_1, 0.619608 * var_0 * var_1 );
    }
    else
        setsunlight( 0.498039 * var_0, 0.498039 * var_0, 0.619608 * var_0 );

    common_scripts\utility::flag_clear( "emp_lighting_flash" );
}

lightning_visionset()
{
    if ( common_scripts\utility::flag( "parking_main" ) )
        level.player lightset( "dcemp_lightning_outside" );
    else
        level.player lightset( "dcemp_lightning" );

    if ( level.lvl_visionset == "dcemp_parking" )
    {
        thread maps\_utility::set_vision_set( "dcemp_parking_lightning", 0.3, 1 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_parking_lightning", 0.3 );
    }
    else if ( level.lvl_visionset == "dcemp_parking_nearbuilding" )
    {
        thread maps\_utility::set_vision_set( "dcemp_parking_nearbuilding_lightning", 0.3, 1 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_parking_nearbuilding_lightning", 0.3 );
    }
    else if ( level.lvl_visionset == "dcemp_office" )
    {
        thread maps\_utility::set_vision_set( "dcemp_office_lightning", 0.3, 1 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_office_lightning", 0.3 );
    }
    else if ( level.lvl_visionset == "dcemp_postemp2" || level.lvl_visionset == "dcemp_postemp" )
    {
        thread maps\_utility::set_vision_set( "dcemp_postemp2_lightning", 0.3, 1 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_postemp2_lightning", 0.4 );
    }
    else
        return;
}

lightning_normal()
{
    if ( common_scripts\utility::flag( "parking_main" ) )
        level.player lightset( "dcemp_rain" );
    else if ( common_scripts\utility::flag( "office1" ) )
        level.player lightset( "dcemp_office" );
    else
        level.player lightset( "dcemp" );

    if ( level.lvl_visionset == "dcemp_parking_lightning" )
    {
        thread maps\_utility::set_vision_set( "dcemp_parking", 0.5, 1 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_parking", 0.5 );
    }
    else if ( level.lvl_visionset == "dcemp_parking_nearbuilding_lightning" )
    {
        thread maps\_utility::set_vision_set( "dcemp_parking_nearbuilding", 0.5, 1 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_parking_nearbuilding", 0.5 );
    }
    else if ( level.lvl_visionset == "dcemp_office_lightning" )
    {
        thread maps\_utility::set_vision_set( "dcemp_office", 0.5, 1 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_office", 0.5 );
    }
    else if ( level.lvl_visionset == "dcemp_postemp2_lightning" )
    {
        thread maps\_utility::set_vision_set( "dcemp_postemp2", 2 );
        thread maps\_utility::vision_set_fog_changes( "dcemp_postemp2", 2 );
    }

    _id_A819();
}

_id_AC1A()
{
    common_scripts\utility::flag_wait( "parking_player_jumped_down" );
    common_scripts\utility::flag_set( "rain_mask_on" );
}

_id_B955()
{
    level endon( "stop_rain_mask" );
    thread _id_D1E5();
    common_scripts\utility::flag_wait( "rain_started" );

    for (;;)
    {
        common_scripts\utility::flag_wait( "rain_mask_on" );
        common_scripts\utility::flag_clear( "rain_mask_off" );
        thread _id_ADA6();
        common_scripts\utility::flag_wait( "rain_mask_off" );
        common_scripts\utility::flag_clear( "rain_mask_on" );
        self notify( "stopRainCheck" );

        if ( isdefined( level._id_B7CC ) )
            level._id_B7CC delete();
    }
}

_id_ADA6()
{
    level endon( "stop_rain_mask" );
    self endon( "stopRainCheck" );
    level.player endon( "death" );

    for (;;)
    {
        var_0 = level.player getplayerangles()[0];

        if ( var_0 < 50 && !isdefined( level._id_B7CC ) )
        {
            level._id_B7CC = spawnfx( level._effect["screen_heavy_rain_dcemp"], level.player.origin );
            triggerfx( level._id_B7CC );
        }
        else if ( isdefined( level._id_B7CC ) )
            level._id_B7CC delete();

        wait 0.1;
    }
}

_id_D1E5()
{
    common_scripts\utility::flag_wait( "stop_rain_mask" );

    if ( isdefined( level._id_B7CC ) )
        level._id_B7CC delete();
}

bg_earth_manager()
{
    common_scripts\utility::flag_wait( "iss_fx" );
    var_0 = getent( "bg_earth_fx", "targetname" );
    var_1 = common_scripts\utility::spawn_tag_origin();
    var_1.origin = var_0.origin;
    var_1.angles = var_0.angles + ( -90, 0, 0 );
    playfxontag( level._effect["bg_iss"], var_1, "tag_origin" );
    playfxontag( level._effect["bg_iss_city_lights_idle"], var_1, "tag_origin" );
    common_scripts\utility::flag_wait( "iss_lights_out" );
    killfxontag( level._effect["bg_iss_city_lights_idle"], var_1, "tag_origin" );
    playfxontag( level._effect["bg_iss_city_lights_animated"], var_1, "tag_origin" );
    common_scripts\utility::flag_wait( "iss_done" );
    killfxontag( level._effect["bg_iss"], var_1, "tag_origin" );
}

override_destructibles()
{
    waittillframeend;
    common_scripts\_destructible::_id_BDEC( "tag_cab_fire", "fx/fire/firelp_med_pm", "fx/fire/firelp_med_pm_nolight_dcemp" );
}

flickering_street_lights()
{
    var_0 = 1;
    self._id_B95E = getentarray( "light_pole_flickering", "targetname" );
    self._id_AA96 = [];
    self._id_BAC4 = [];
    self._id_CE9A = [];

    foreach ( var_2 in self._id_B95E )
    {
        if ( isdefined( var_2.script_noteworthy ) )
        {
            if ( var_2.script_noteworthy == "flickering_model_on" )
            {
                self._id_AA96[self._id_AA96.size] = var_2;
                continue;
            }

            if ( var_2.script_noteworthy == "flickering_model_off" )
            {
                self._id_BAC4[self._id_BAC4.size] = var_2;
                continue;
            }

            if ( var_2.script_noteworthy == "flickering_lights" )
                self._id_CE9A[self._id_CE9A.size] = var_2;
        }
    }

    while ( !common_scripts\utility::flag( "emp" ) )
    {
        if ( isdefined( self._id_AA96 ) )
        {
            if ( self._id_AA96.size > 0 )
            {
                foreach ( var_5 in self._id_AA96 )
                    var_5 hide();
            }

            self._id_BAC4 hide();
        }

        if ( isdefined( self._id_BAC4 ) )
        {
            if ( self._id_BAC4.size > 0 )
            {
                foreach ( var_5 in self._id_BAC4 )
                {
                    if ( isdefined( var_5._id_AA96.effect ) )
                        var_5._id_AA96.effect common_scripts\utility::pauseeffect();
                }
            }
        }

        wait( var_0 );

        if ( isdefined( self._id_AA96 ) )
        {
            if ( self._id_AA96.size > 0 )
            {
                foreach ( var_5 in self._id_AA96 )
                {
                    var_5 show();

                    if ( isdefined( var_5._id_AA96.effect ) )
                        var_5._id_AA96.effect common_scripts\utility::pauseeffect();
                }
            }
        }

        if ( isdefined( self._id_BAC4 ) )
        {
            if ( self._id_BAC4.size > 0 )
            {
                foreach ( var_5 in self._id_BAC4 )
                    var_5 hide();
            }
        }

        wait( var_0 );
    }

    self._id_AA96 hide();
    self._id_BAC4 show();
}

handflare_fx()
{
    var_0 = getent( "street_flare", "targetname" );
    var_0._id_B399 = getent( var_0.target, "targetname" );
    var_0._id_B399 linkto( var_0 );
    playfxontag( level._effect["groundflare_red_dcemp"], var_0._id_B399, "TAG_ORIGIN" );
}

_id_CB66()
{
    vehicle_scripts\_mig29::_id_BD90( "mig29_contrail", "fx/smoke/jet_contrail_dcemp" );
    vehicle_scripts\_mig29::_id_BD90( "mig29_contrail_02", "fx/smoke/jet_contrail_dcemp" );
}

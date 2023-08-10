// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    thread _id_D1D8();
    thread _id_B308();
    level._effect["cold_breath"] = loadfx( "fx/misc/cold_breath" );
    maps\_vehicle::build_deathfx_override( "script_vehicle_gauntlet", "gauntlet", "vehicle_sa15_gauntlet", "fx/explosions/vehicle_explosion_gauntlet", undefined, "exp_armor_vehicle" );
    level._effect["smoke_geotrail_icbm"] = loadfx( "fx/smoke/smoke_geotrail_icbm" );
    level._effect["icbm_launch"] = loadfx( "fx/smoke/icbm_launch" );
    level._effect["tree_explosion"] = loadfx( "fx/explosions/tree_trunk_explosion" );
    level._effect["tree_explosion_small"] = loadfx( "fx/explosions/tree_trunk_explosion" );
    level._effect["thermal_missle_flash_inverted"] = loadfx( "fx/muzzleflashes/thermal_missle_flash_inverted" );
    level._effect["missle_flash"] = loadfx( "fx/muzzleflashes/missile_flash_wv" );
    level._effect["uav_explosion"] = loadfx( "fx/explosions/aerial_explosion_predator" );
    level._effect["btr_explosion"] = loadfx( "fx/explosions/vehicle_explosion_btr80_snow" );
    level._effect["btr_spotlight"] = loadfx( "fx/misc/spotlight_btr80" );
    level._effect["flashlight"] = loadfx( "fx/misc/flashlight" );
    level._effect["tear_gas_submarine"] = loadfx( "fx/smoke/tear_gas_submarine" );
    level._effect["tree_snow_dump_fast"] = loadfx( "fx/snow/tree_snow_dump_fast" );
    level._effect["tree_snow_dump_fast_small"] = loadfx( "fx/snow/tree_snow_dump_fast_small" );
    level._effect["tree_snow_fallen_heavy"] = loadfx( "fx/snow/tree_snow_fallen_heavy" );
    level._effect["tree_snow_fallen"] = loadfx( "fx/snow/tree_snow_fallen" );
    level._effect["tree_snow_fallen_small"] = loadfx( "fx/snow/tree_snow_fallen_small" );
    level._effect["price_landing"] = loadfx( "fx/snow/snow_price_landing" );
    level._effect["price_sliding"] = loadfx( "fx/snow/snow_price_sliding" );
    level._effect["footstep_snow_price_laying_down"] = loadfx( "vfx/snow/footstep_snow_price_laying_down" );
    level._effect["tree_snow_dump_runner"] = loadfx( "fx/snow/tree_snow_dump_runner" );
    level._effect["snow_spray_detail_contingency_runner_0x400"] = loadfx( "fx/snow/snow_spray_detail_contingency_runner_0x400" );
    level._effect["snow_spray_detail_oriented_runner_0x400"] = loadfx( "fx/snow/snow_spray_detail_oriented_runner_0x400" );
    level._effect["snow_spray_detail_oriented_runner_400x400"] = loadfx( "fx/snow/snow_spray_detail_oriented_runner_400x400" );
    level._effect["snow_spray_detail_oriented_runner"] = loadfx( "fx/snow/snow_spray_detail_oriented_runner" );
    level._effect["snow_spray_detail_oriented_runner_large"] = loadfx( "fx/snow/snow_spray_detail_oriented_large_runner" );
    level._effect["snow_spray_large_oriented_runner"] = loadfx( "fx/snow/snow_spray_large_oriented_runner" );
    level._effect["snow_vortex_runner_cheap"] = loadfx( "fx/snow/snow_vortex_runner_cheap" );
    level._effect["room_smoke_200"] = loadfx( "fx/smoke/room_smoke_200" );
    level._effect["heater"] = loadfx( "fx/distortion/heater" );
    level._effect["footstep_snow_small"] = loadfx( "fx/impacts/footstep_snow_small" );
    level._effect["footstep_snow"] = loadfx( "fx/impacts/footstep_snow" );
    level._effect["snow_light"] = loadfx( "fx/snow/snow_light_contingency" );
    level._effect["submarine_red_light_contingency"] = loadfx( "fx/misc/submarine_red_light_contingency" );
    level._effect["submarine_green_light_contingency"] = loadfx( "fx/misc/submarine_green_light_contingency" );
    level._effect["godray_foliage_contingency"] = loadfx( "vfx/map/greece/godray_foliage_contingency" );
    level._effect["contingency_mountain_clouds"] = loadfx( "vfx/cloud/contingency_mountain_clouds" );
    level._effect["snow_spray_detail_flatground_directional"] = loadfx( "fx/snow/snow_spray_detail_flatground_directional" );
    level._effect["light_wall_contingency"] = loadfx( "vfx/lights/light_wall_contingency" );
    level._effect["heat_distortion_food_heater"] = loadfx( "vfx/map/mp_lost/heat_distortion_food_heater" );
    level._effect["snow_spray_detail_oriented_runner_shadowed"] = loadfx( "fx/snow/snow_spray_detail_oriented_runner_shadowed" );
    level._effect["godray_contingency"] = loadfx( "vfx/lights/godray_contingency" );
    level._effect["vent_snow_contingency"] = loadfx( "vfx/snow/vent_snow_contingency" );
    level._effect["snow_spray_detail_flatground_indoor"] = loadfx( "fx/snow/snow_spray_detail_flatground_indoor" );
    level._effect["tread_snow_slush_btr80_set"] = loadfx( "fx/treadfx/tread_snow_slush_btr80_set" );
    level._effect["contingency_btr80_tree_explosion_01"] = loadfx( "vfx/explosion/contingency_btr80_tree_explosion_01" );
    level._effect["contingency_fallingtree_followthrough_01"] = loadfx( "fx/snow/contingency_fallingtree_followthrough_01" );
    level._effect["contingency_fallingtree_impact_snow"] = loadfx( "vfx/smoke/contingency_fallingtree_impact_snow" );
    level._effect["tree_snow_dump"] = loadfx( "fx/snow/tree_snow_dump" );
    level._effect["contingency_btr_snow_impact_runner"] = loadfx( "vfx/weaponimpact/contingency_btr_snow_impact_runner" );
    level._effect["airdust_contingency"] = loadfx( "vfx/lights/airdust_contingency" );
    level._effect["lighthaze_snow_headlights"] = loadfx( "fx/misc/lighthaze_snow_headlights" );
    level._effect["car_taillight_uaz_l"] = loadfx( "fx/misc/car_taillight_uaz_l" );
    level._effect["contingency_mountain_wind_01"] = loadfx( "vfx/cloud/contingency_mountain_wind_01" );
    level._effect["tread_snow_slush_btr80_right_brake_set"] = loadfx( "fx/treadfx/tread_snow_slush_btr80_right_brake_set" );
    level._effect["bmp_flash_wv"] = loadfx( "fx/muzzleflashes/bmp_flash_wv" );
    level._effect["contingency_btr80_straffing_flashes"] = loadfx( "fx/muzzleflashes/contingency_btr80_straffing_flashes" );
    level._effect["helicopter_crash_explosion_02"] = loadfx( "vfx/explosion/helicopter_crash_explosion_02" );
    level._effect["emergency_light_contingency"] = loadfx( "vfx/lights/emergency_light_contingency" );
    level._effect["birds_tree_flyout_contingency"] = loadfx( "vfx/animal/birds_tree_flyout_contingency" );
    level._effect["bird_vulture_circle_a_loop"] = loadfx( "vfx/animal/bird_vulture_circle_a_loop" );
    level._effect["bird_seagull_flock_large"] = loadfx( "vfx/animal/bird_seagull_flock_large" );
    level._effect["contingency_submarine_snow_cover_puff"] = loadfx( "vfx/snow/contingency_submarine_snow_cover_puff" );
    level._effect["soft_haze_window_white"] = loadfx( "vfx/lights/soft_haze_window_white" );
    level._effect["goldenpath_door"] = loadfx( "vfx/unique/godray_path_door_contingency" );
    level._effect["sunflare"] = loadfx( "vfx/lensflare/fx_sunflare_contingency" );
    level._effect["btrattack_cannon_impact"] = loadfx( "vfx/weaponimpact/30mm_snow_impact_1" );
    level._effect["tree_snow_fall_staged"] = loadfx( "fx/snow/tree_snow_fall_staged" );
    level._effect["bushes_snow_reaction"] = loadfx( "fx/misc/bushes_snow_reaction" );
    level._effect["snow_spray_detail_oriented_gravity_runner"] = loadfx( "fx/snow/snow_spray_detail_oriented_gravity_runner" );
    level._effect["contingency_btr80_tree_explosion_02"] = loadfx( "vfx/explosion/contingency_btr80_tree_explosion_02" );
    level thread treadfx_override();
    level thread _id_D392();
    level thread _id_CEF8();
    level thread staged_snowfall();
    maps\_utility::add_earthquake( "btrattack_impact", 0.2, 0.1, 1000 );
    _id_BE69::main();
    _id_AC17::main();
}

staged_snowfall()
{
    waittillframeend;

    while ( !common_scripts\utility::flag_exist( "goto_village_snowfall" ) )
        waitframe();

    for (;;)
    {
        common_scripts\utility::flag_wait( "goto_village_snowfall" );
        common_scripts\_exploder::exploder( "village_snowfall" );
        var_0 = randomfloatrange( 4.0, 9.0 );
        wait( var_0 );
        common_scripts\utility::flag_clear( "goto_village_snowfall" );
    }
}

_id_D392()
{
    level endon( "stop_snow" );
    var_0 = getentarray( "player", "classname" )[0];

    for (;;)
    {
        playfx( level._effect["snow_light"], var_0.origin + ( 0, 0, 300 ), var_0.origin + ( 0, 0, 350 ) );
        wait 0.075;
    }
}

_id_CEF8()
{
    animscripts\utility::setfootstepeffect( "snow", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setfootstepeffect( "ice", loadfx( "fx/impacts/footstep_ice" ) );
    animscripts\utility::setfootstepeffect( "slush", loadfx( "fx/impacts/footstep_snow_slush" ) );
    animscripts\utility::setfootstepeffectsmall( "snow", loadfx( "fx/impacts/footstep_snow_small" ) );
    animscripts\utility::setfootstepeffectsmall( "ice", loadfx( "fx/impacts/footstep_ice" ) );
    animscripts\utility::setfootstepeffectsmall( "slush", loadfx( "fx/impacts/footstep_snow_slush_small" ) );
    animscripts\utility::setnotetrackeffect( "bodyfall small", "J_SpineLower", "snow", loadfx( "fx/impacts/bodyfall_snow_small_runner" ), "bodyfall_", "_small" );
    animscripts\utility::setnotetrackeffect( "bodyfall small", "J_SpineLower", "ice", loadfx( "fx/impacts/bodyfall_snow_small_runner" ), "bodyfall_", "_small" );
    animscripts\utility::setnotetrackeffect( "bodyfall large", "J_SpineLower", "snow", loadfx( "fx/impacts/bodyfall_snow_large_runner" ), "bodyfall_", "_large" );
    animscripts\utility::setnotetrackeffect( "bodyfall large", "J_SpineLower", "ice", loadfx( "fx/impacts/bodyfall_snow_large_runner" ), "bodyfall_", "_large" );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "snow", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "ice", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "slush", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "snow", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "ice", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "slush", loadfx( "fx/impacts/footstep_snow" ) );
    level._effect["landing_snow"] = loadfx( "fx/snow/snow_price_landing" );
    level._effect["landing_snow_small"] = loadfx( "fx/snow/snow_price_landing" );
    level._effect["crawling_snow"] = loadfx( "fx/impacts/h2_fx_crawling_snow" );
}

treadfx_override()
{
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "brick", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "bark", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "carpet", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "cloth", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "concrete", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "dirt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "flesh", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "foliage", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "glass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "grass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "gravel", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "ice", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "mud", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "paper", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "plaster", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "rock", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "sand", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "snow", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "water", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "wood", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "asphalt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "ceramic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "plastic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "rubber", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "cushion", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "fruit", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "painted metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "default", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_bm21_mobile_cover_troops_snow", "none", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "brick", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "bark", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "carpet", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "cloth", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "concrete", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "dirt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "flesh", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "foliage", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "glass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "grass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "gravel", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "ice", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "mud", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "paper", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "plaster", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "rock", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "sand", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "snow", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "water", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "wood", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "asphalt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "ceramic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "plastic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "rubber", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "cushion", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "fruit", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "painted metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "default", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "uaz", "none", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "brick", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "bark", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "carpet", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "cloth", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "concrete", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "dirt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "flesh", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "foliage", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "glass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "grass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "gravel", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "ice", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "mud", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "paper", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "plaster", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "rock", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "sand", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "snow", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "water", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "wood", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "asphalt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "ceramic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "plastic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "rubber", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "cushion", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "fruit", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "painted metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "default", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_physics", "none", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "brick", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "bark", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "carpet", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "cloth", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "concrete", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "dirt", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "flesh", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "foliage", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "glass", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "grass", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "gravel", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "ice", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "metal", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "mud", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "paper", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "plaster", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "rock", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "sand", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "snow", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "water", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "wood", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "asphalt", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "ceramic", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "plastic", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "rubber", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "cushion", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "fruit", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "painted metal", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "default", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow", "none", "fx/treadfx/tread_snow_slush_btr80_set" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "brick", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "bark", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "carpet", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "cloth", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "concrete", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "dirt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "flesh", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "foliage", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "glass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "grass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "gravel", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "ice", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "mud", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "paper", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "plaster", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "rock", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "sand", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "snow", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "water", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "wood", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "asphalt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "ceramic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "plastic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "rubber", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "cushion", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "fruit", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "painted metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "default", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_btr80_snow_physics", "none", "fx/treadfx/tread_snow_slush_uaz" );
    var_0 = "fx/treadfx/heli_snow_default";
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "brick", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "bark", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "carpet", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "cloth", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "concrete", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "dirt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "flesh", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "foliage", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "glass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "grass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "gravel", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "ice", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "mud", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "paper", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "plaster", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "rock", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "sand", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "snow", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "water", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "wood", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "asphalt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "ceramic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "plastic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "rubber", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "cushion", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "fruit", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "painted metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "default", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "none", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "brick", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "bark", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "carpet", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "cloth", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "concrete", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "dirt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "flesh", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "foliage", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "glass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "grass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "gravel", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "ice", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "mud", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "paper", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "plaster", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "rock", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "sand", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "snow", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "water", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "wood", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "asphalt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "ceramic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "plastic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "rubber", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "cushion", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "fruit", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "painted metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "default", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi17_woodland_fly_cheap", "none", var_0 );
}

_id_D1D8()
{
    maps\_global_fx::_id_D1D8( "h2_con_wall_light_01_on", "vfx/lights/light_wall_contingency", undefined, "light_wall_contingency" );
    maps\_global_fx::_id_D1D8( "Submarine_GreenLight_ON", "fx/misc/submarine_green_light_contingency", undefined, "submarine_green_light_contingency" );
    maps\_global_fx::_id_D1D8( "Submarine_RedLight_ON", "fx/misc/submarine_red_light_contingency", undefined, "submarine_red_light_contingency" );
    maps\_global_fx::_id_D1D8( "fluorescent_glow_double_FX_origin", "vfx/lights/fluorescent_light_cone_contingency", undefined, "fluorescent_light_cone" );
}

_id_B308()
{
    maps\_global_fx::_id_C1C4( "light_red_steady_FX_origin", "fx/misc/tower_light_red_steady_contingency", -2 );
    maps\_global_fx::_id_C1C4( "light_blue_steady_FX_origin", "fx/misc/tower_light_blue_steady_contingency", -2 );
    maps\_global_fx::_id_C1C4( "light_white_steady_FX_origin", "fx/misc/tower_light_white_steady_contingency", -2 );
    maps\_global_fx::_id_C1C4( "light_green_steady_FX_origin", "fx/misc/tower_light_green_steady_contingency", -2 );
}

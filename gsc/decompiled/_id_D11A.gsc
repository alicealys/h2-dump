// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level._effect["grenadeexp_snow"] = loadfx( "fx/explosions/grenadeexp_snow" );
    level._effect["vfx_screen_google_snowflakes_addon"] = loadfx( "vfx/ui/vfx_screen_google_snowflakes_addon" );
    level._effect["light_spotlight_cone_haze_dim_fng"] = loadfx( "vfx/lights/light_spotlight_cone_haze_dim_fng" );
    level._effect["light_spotlight_cone_haze_dim_cliff"] = loadfx( "vfx/lights/light_spotlight_cone_haze_dim_cliff" );
    level._effect["mp_tor_snow_chunks_falling"] = loadfx( "vfx/map/mp_torqued/mp_tor_snow_chunks_falling" );
    level._effect["vfx_fog_oclusiondoor_cliffhanger"] = loadfx( "vfx/unique/vfx_fog_oclusiondoor_cliffhanger" );
    level._effect["vfx_fog_oclusiondoor_cliffhanger_fog_back"] = loadfx( "vfx/unique/vfx_fog_oclusiondoor_cliffhanger_fog_back" );
    level._effect["snow_open_door_01"] = loadfx( "vfx/snow/snow_open_door_01" );
    level._effect["snow_spray_detail_flatground_indoor"] = loadfx( "fx/snow/snow_spray_detail_flatground_indoor" );
    level._effect["snow_spray_detail_flatground_small_patch"] = loadfx( "fx/snow/snow_spray_detail_flatground_small_patch" );
    level._effect["c4explosion_snowwave"] = loadfx( "fx/explosions/c4explosion_snowwave" );
    level._effect["snow_flurries_light"] = loadfx( "vfx/snow/snow_flurries_light" );
    level._effect["cliff_jump_clouds"] = loadfx( "vfx/cloud/cliff_jump_clouds" );
    level._effect["heli_snow_cliff"] = loadfx( "fx/treadfx/heli_snow_cliff" );
    level._effect["flesh_impact_knife"] = loadfx( "vfx/weaponimpact/flesh_impact_knife" );
    level._effect["flesh_impact_head_fatal_exit"] = loadfx( "vfx/weaponimpact/flesh_impact_head_fatal_exit" );
    level._effect["ambient_cloud_fog_area_local_cliffhanger"] = loadfx( "vfx/map/airlift/ambient_cloud_fog_area_local_cliffhanger" );
    level._effect["cliff_snow_ledge_xxxlarge_swirl"] = loadfx( "vfx/snow/cliff_snow_ledge_xxxlarge_swirl" );
    level._effect["cliff_mountain_clouds_05"] = loadfx( "vfx/cloud/cliff_mountain_clouds_05" );
    level._effect["vehicle_explosion_mig29_nolights"] = loadfx( "fx/explosions/vehicle_explosion_mig29_nolights" );
    level._effect["light_wall_cliff"] = loadfx( "vfx/lights/light_wall_cliff" );
    level._effect["snow_blowoff_ledge_interval_runner"] = loadfx( "fx/snow/snow_blowoff_ledge_interval_runner" );
    level._effect["cliff_snow_ledge_large_swirl_interval"] = loadfx( "vfx/snow/cliff_snow_ledge_large_swirl_interval" );
    level._effect["cliff_mountain_clouds_03_blured"] = loadfx( "vfx/cloud/cliff_mountain_clouds_03_blured" );
    level._effect["h2_vfx_cliffhanger_vista_valleyclouds"] = loadfx( "vfx/cloud/h2_vfx_cliffhanger_vista_valleyclouds" );
    level._effect["h2_ice_pick_cliffclimbing"] = loadfx( "fx/misc/h2_ice_pick_cliffclimbing" );
    level._effect["cliff_snow_jet_blow_intro"] = loadfx( "fx/snow/cliff_snow_jet_blow_intro" );
    level._effect["snow_spray_detail_flatground_far"] = loadfx( "fx/snow/snow_spray_detail_flatground_far" );
    level._effect["battlefield_smoke_m_slow_cliff"] = loadfx( "vfx/smoke/battlefield_smoke_m_slow_cliff" );
    level._effect["h2_ice_footstep_cliffclimbing"] = loadfx( "fx/misc/h2_ice_footstep_cliffclimbing" );
    level._effect["snow_heavy_building"] = loadfx( "fx/snow/snow_heavy_building" );
    level._effect["h2_tread_snowmobile_snow"] = loadfx( "fx/treadfx/h2_tread_snowmobile_snow" );
    level._effect["h2_tread_snowmobile_snow_cinematic"] = loadfx( "fx/treadfx/h2_tread_snowmobile_snow_cinematic" );
    level._effect["small_riotshield_1_cliffhanger"] = loadfx( "vfx/weaponimpact/small_riotshield_1_cliffhanger" );
    level._effect["large_riotshield_1_cliffhanger"] = loadfx( "vfx/weaponimpact/large_riotshield_1_cliffhanger" );
    level._effect["mig29_core_explosion_flames_runner"] = loadfx( "fx/explosions/mig29_core_explosion_flames_runner" );
    level._effect["heli_snow_ambiant_add_cliff"] = loadfx( "fx/treadfx/heli_snow_ambiant_add_cliff" );
    level._effect["cliff_jump_clouds_large_z_fade"] = loadfx( "vfx/cloud/cliff_jump_clouds_large_z_fade" );
    level._effect["cliff_underdoor_hangar_snow"] = loadfx( "vfx/cloud/cliff_underdoor_hangar_snow" );
    level._effect["jet_afterburner_ignite"] = loadfx( "fx/fire/jet_afterburner_ignite" );
    level._effect["footstep_slush_soap"] = loadfx( "fx/impacts/footstep_slush_soap" );
    level._effect["footstep_slush_small_soap"] = loadfx( "fx/impacts/footstep_slush_small_soap" );
    level._effect["c4exp_default"] = loadfx( "fx/explosions/c4exp_default" );
    level thread precachefx();
    level thread treadfx_override();
    _id_B308();
    _id_CB66();
    setsaveddvar( "fx_alphathreshold", 10 );
    _id_C083::main();
    _id_CAB0::main();
    _id_C0CF::_id_C4F9();
}

_id_D392()
{
    var_0 = getentarray( "player", "classname" )[0];

    for (;;)
    {
        playfx( level._effect["snow_spray_detail_runner400x400"], var_0.origin + ( 0, 0, 0 ), var_0.origin + ( 0, 100, 100 ) );
        wait 0.3;
    }
}

precachefx()
{
    animscripts\utility::setfootstepeffect( "snow", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setfootstepeffect( "ice", loadfx( "fx/impacts/footstep_ice" ) );
    animscripts\utility::setfootstepeffect( "slush", loadfx( "fx/impacts/footstep_snow_slush" ) );
    animscripts\utility::setfootstepeffect( "mud", loadfx( "fx/impacts/footstep_snow_slush" ) );
    animscripts\utility::setfootstepeffectsmall( "snow", loadfx( "fx/impacts/footstep_snow_small" ) );
    animscripts\utility::setfootstepeffectsmall( "ice", loadfx( "fx/impacts/footstep_ice" ) );
    animscripts\utility::setfootstepeffectsmall( "slush", loadfx( "fx/impacts/footstep_snow_slush_small" ) );
    animscripts\utility::setfootstepeffectsmall( "mud", loadfx( "fx/impacts/footstep_snow_slush_small" ) );
    animscripts\utility::setnotetrackeffect( "bodyfall small", "J_SpineLower", "snow", loadfx( "fx/impacts/bodyfall_snow_small_runner" ), "bodyfall_", "_small" );
    animscripts\utility::setnotetrackeffect( "bodyfall small", "J_SpineLower", "ice", loadfx( "fx/impacts/bodyfall_snow_small_runner" ), "bodyfall_", "_small" );
    animscripts\utility::setnotetrackeffect( "bodyfall small", "J_SpineLower", "slush", loadfx( "fx/impacts/bodyfall_snow_small_runner" ), "bodyfall_", "_small" );
    animscripts\utility::setnotetrackeffect( "bodyfall small", "J_SpineLower", "mud", loadfx( "fx/impacts/bodyfall_snow_small_runner" ), "bodyfall_", "_small" );
    animscripts\utility::setnotetrackeffect( "bodyfall large", "J_SpineLower", "snow", loadfx( "fx/impacts/bodyfall_snow_large_runner" ), "bodyfall_", "_large" );
    animscripts\utility::setnotetrackeffect( "bodyfall large", "J_SpineLower", "ice", loadfx( "fx/impacts/bodyfall_snow_large_runner" ), "bodyfall_", "_large" );
    animscripts\utility::setnotetrackeffect( "bodyfall large", "J_SpineLower", "slush", loadfx( "fx/impacts/bodyfall_snow_large_runner" ), "bodyfall_", "_large" );
    animscripts\utility::setnotetrackeffect( "bodyfall large", "J_SpineLower", "mud", loadfx( "fx/impacts/bodyfall_snow_large_runner" ), "bodyfall_", "_large" );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "snow", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "ice", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "slush", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx left", "J_Knee_LE", "mud", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "snow", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "ice", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "slush", loadfx( "fx/impacts/footstep_snow" ) );
    animscripts\utility::setnotetrackeffect( "knee fx right", "J_Knee_RI", "mud", loadfx( "fx/impacts/footstep_snow" ) );
    level._effect["cold_breath"] = loadfx( "fx/misc/cold_breath" );
    level._effect["cold_breath_talking"] = loadfx( "fx/misc/cold_breath" );
    level._effect["goggle_snowflakes_level1"] = loadfx( "vfx/ui/vfx_screen_google_snowflakes_level1" );
    level._effect["goggle_snowflakes_level2"] = loadfx( "vfx/ui/vfx_screen_google_snowflakes_level2" );
    level._effect["goggle_snowflakes_level3"] = loadfx( "vfx/ui/vfx_screen_google_snowflakes_level3" );
    level._effect["goggle_meltingfrost"] = loadfx( "vfx/ui/vfx_screen_google_meltingfrost" );
    level._effect["footstep_snow_small_soap"] = loadfx( "fx/impacts/footstep_snow_small_soap" );
    level._effect["footstep_snow_soap"] = loadfx( "fx/impacts/footstep_snow_soap" );
    level._effect["footstep_ice_small_soap"] = loadfx( "fx/impacts/footstep_ice_small_soap" );
    level._effect["footstep_ice_soap"] = loadfx( "fx/impacts/footstep_ice_soap" );
    level._effect["footstep_snow_small"] = loadfx( "fx/impacts/footstep_snow_soap" );
    level._effect["footstep_snow"] = loadfx( "fx/impacts/footstep_snow_soap" );
    level._effect["footstep_ice_small"] = loadfx( "fx/impacts/footstep_ice_small_soap" );
    level._effect["footstep_ice"] = loadfx( "fx/impacts/footstep_ice_soap" );
    level._effect["landing_snow"] = loadfx( "fx/impacts/landing_snow_spike" );
    level._effect["landing_snow_small"] = loadfx( "fx/impacts/landing_snow_spike_small" );
    level._effect["crawling_snow"] = loadfx( "fx/impacts/h2_fx_crawling_snow" );
    level._effect["footstep_snow_slush_small"] = loadfx( "fx/impacts/footstep_snow_slush_small" );
    level._effect["footstep_snow_slush"] = loadfx( "fx/impacts/footstep_snow_slush" );
    level._effect["footstep_ice_snow_ledge"] = loadfx( "vfx/footsteps/h2_fx_footstep_ice_ledge" );
    level._effect["h2_fx_footstep_ice_ledge"] = loadfx( "vfx/footsteps/h2_fx_footstep_snow_ledge" );
    level._effect["snow_price_grab"] = loadfx( "fx/snow/snow_price_grab" );
    level._effect["snow_jump"] = loadfx( "fx/snow/snow_jump" );
    level._effect["snow_dropping_debris"] = loadfx( "fx/snow/snow_dropping_debris" );
    level._effect["price_landing"] = loadfx( "fx/snow/snow_price_landing" );
    level._effect["price_sliding"] = loadfx( "fx/snow/snow_price_sliding" );
    level._effect["tread_snow_snowmobile_skidout"] = loadfx( "fx/treadfx/tread_snow_snowmobile_skidout" );
    level._effect["mig_landing_trail_snow"] = loadfx( "fx/smoke/mig29_landing_trail_snow" );
    level._effect["cliff_snow_parts_falling_runner"] = loadfx( "vfx/snow/cliff_snow_parts_falling_runner" );
    level._effect["cliff_snow_parts_falling"] = loadfx( "vfx/snow/cliff_snow_parts_falling" );
    level._effect["snow_climb_bg"] = loadfx( "fx/snow/snow_climb_bg" );
    level._effect["snow_light"] = loadfx( "fx/snow/snow_light" );
    level._effect["snow_climbing"] = loadfx( "fx/snow/snow_climbing" );
    level._effect["cliff_mountain_clouds_01"] = loadfx( "vfx/cloud/cliff_mountain_clouds_01" );
    level._effect["cliff_mountain_clouds_02"] = loadfx( "vfx/cloud/cliff_mountain_clouds_02" );
    level._effect["snow_extreme_no_outdoor_flag"] = loadfx( "fx/snow/snow_extreme_no_outdoor_flag" );
    level._effect["snow_window_chd_3"] = loadfx( "vfx/snow/snow_window_chd_3" );
    level._effect["cliff_ice_parts_falling_runner"] = loadfx( "vfx/snow/cliff_ice_parts_falling_runner" );
    level._effect["snowmobile_race_snow_bg"] = loadfx( "fx/snow/snowmobile_race_snow_bg" );
    level._effect["cliff_mountain_clouds_03"] = loadfx( "vfx/cloud/cliff_mountain_clouds_03" );
    level._effect["cliff_mountain_clouds_04"] = loadfx( "vfx/cloud/cliff_mountain_clouds_04" );
    level._effect["smowmobile_windshield_snow"] = loadfx( "vfx/vehicle/smowmobile_windshield_snow" );
    level._effect["snow_spray_detail_flatground"] = loadfx( "fx/snow/snow_spray_detail_flatground" );
    level._effect["fx_sunflare_cliffhanger"] = loadfx( "vfx/lensflare/fx_sunflare_cliffhanger" );
    level._effect["light_godray_cliffhanger_hangar"] = loadfx( "vfx/lights/light_godray_cliffhanger_hangar" );
    level._effect["light_godray_cliffhanger_quonset"] = loadfx( "vfx/lights/light_godray_cliffhanger_quonset" );
    level._effect["cliff_snow_ledge_large_swirl"] = loadfx( "vfx/snow/cliff_snow_ledge_large_swirl" );
    level._effect["footstep_snow_leftover"] = loadfx( "fx/impacts/footstep_snow_leftover" );
    level._effect["landing_snow_spike"] = loadfx( "fx/impacts/landing_snow_spike" );
    level._effect["snow_blowoff_ledge"] = loadfx( "fx/snow/snow_blowoff_ledge" );
    level._effect["snow_blowoff_ledge_runner"] = loadfx( "fx/snow/snow_blowoff_ledge_runner" );
    level._effect["snow_updraft"] = loadfx( "fx/snow/snow_updraft" );
    level._effect["snow_updraft_runner"] = loadfx( "fx/snow/snow_updraft_runner" );
    level._effect["snow_clifftop_runner"] = loadfx( "fx/snow/snow_clifftop_runner" );
    level._effect["snow_clifftop_jet_blow"] = loadfx( "fx/snow/snow_clifftop_jet_blow" );
    level._effect["snow_spray_detail_runner400x400"] = loadfx( "fx/snow/snow_spray_detail_runner400x400" );
    level._effect["snow_spray_detail_runner0x400"] = loadfx( "fx/snow/snow_spray_detail_runner0x400" );
    level._effect["snow_spray_detail_runner0x400_far"] = loadfx( "fx/snow/snow_spray_detail_runner0x400_far" );
    level._effect["snow_spray_detail_runner0x200_far"] = loadfx( "fx/snow/snow_spray_detail_runner0x200_far" );
    level._effect["snow_spray_detail_runner50x50"] = loadfx( "fx/snow/snow_spray_detail_runner50x50" );
    level._effect["snow_spray_detail_runner400x400_env"] = loadfx( "fx/snow/snow_spray_detail_runner400x400" );
    level._effect["snow_spray_detail_runner0x400_env"] = loadfx( "fx/snow/snow_spray_detail_runner0x400" );
    level._effect["lighthaze_snow"] = loadfx( "fx/misc/lighthaze_snow" );
    level._effect["lighthaze_snow_headlights"] = loadfx( "fx/misc/lighthaze_snow_headlights" );
    level._effect["car_taillight_uaz_l"] = loadfx( "fx/misc/car_taillight_uaz_l" );
    level._effect["lighthaze_snow_spotlight"] = loadfx( "fx/misc/lighthaze_snow_spotlight" );
    level._effect["aircraft_light_red_blink"] = loadfx( "fx/misc/aircraft_light_red_blink" );
    level._effect["power_tower_light_red_blink"] = loadfx( "fx/misc/power_tower_light_red_blink" );
    level._effect["light_glow_red_snow_pulse"] = loadfx( "fx/misc/light_glow_red_snow_pulse" );
    level._effect["heater"] = loadfx( "fx/distortion/heater" );
    level._effect["snow_vortex"] = loadfx( "fx/snow/snow_vortex" );
    level._effect["snow_vortex_runner"] = loadfx( "fx/snow/snow_vortex_runner" );
    level._effect["fuel_tank_explosion"] = loadfx( "fx/explosions/vehicle_explosion_mig29_nolights" );
    level._effect["fuel_truck_explosion"] = loadfx( "fx/explosions/vehicle_explosion_mig29_nolights" );
    level._effect["thin_black_smoke_M"] = loadfx( "fx/smoke/thin_black_smoke_M" );
    level._effect["thin_black_smoke_L"] = loadfx( "fx/smoke/thin_black_smoke_L" );
    level._effect["tire_fire_med"] = loadfx( "fx/fire/tire_fire_med" );
    level._effect["welding_runner"] = loadfx( "fx/misc/welding_runner" );
    level._effect["large_snow_explode"] = loadfx( "fx/explosions/large_snow_explode" );
    level._effect["tree_trunk_explosion"] = loadfx( "fx/explosions/tree_trunk_explosion" );
    level._effect["avalanche_explosion"] = loadfx( "fx/explosions/avalanche_explosion" );
    level._effect["avalanche_start"] = loadfx( "fx/snow/avalanche_start" );
    level._effect["avalanche_start2"] = loadfx( "fx/snow/avalanche_start2" );
    level._effect["avalanche_loop_large"] = loadfx( "fx/snow/avalanche_loop_large" );
    level._effect["rocket_explosion_snow"] = loadfx( "vfx/explosion/rocket_explosion_snow" );
    level._effect["rocket_explosion_ice"] = loadfx( "vfx/explosion/rocket_explosion_ice" );
}

_id_B2A7()
{
    for (;;)
    {
        wait 10;
        _id_C0CF::_id_AFAD( 1 );
        iprintlnbold( "none" );
        wait 10;
        _id_C0CF::_id_BC13( 1 );
        iprintlnbold( "hard" );
    }
}

treadfx_override()
{
    var_0 = "fx/treadfx/tread_snow_slush";
    var_1 = "fx/treadfx/heli_snow_cliff";
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "brick", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "bark", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "carpet", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "cloth", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "concrete", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "dirt", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "flesh", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "foliage", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "glass", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "grass", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "gravel", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "ice", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "metal", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "mud", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "paper", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "plaster", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "rock", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "sand", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "snow", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "water", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "wood", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "asphalt", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "ceramic", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "plastic", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "rubber", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "cushion", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "fruit", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "painted metal", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "default", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_hind_chernobyl", "none", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "brick", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "bark", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "carpet", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "cloth", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "concrete", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "dirt", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "flesh", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "foliage", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "glass", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "grass", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "gravel", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "ice", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "metal", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "mud", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "paper", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "plaster", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "rock", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "sand", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "snow", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "water", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "wood", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "asphalt", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "ceramic", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "plastic", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "rubber", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "cushion", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "fruit", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "painted metal", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "default", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_cobra_helicopter_fly", "none", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "brick", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "bark", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "carpet", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "cloth", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "concrete", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "dirt", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "flesh", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "foliage", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "glass", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "grass", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "gravel", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "ice", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "metal", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "mud", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "paper", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "plaster", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "rock", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "sand", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "snow", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "water", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "wood", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "asphalt", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "ceramic", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "plastic", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "rubber", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "cushion", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "fruit", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "painted metal", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "default", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "script_vehicle_ch46e", "none", "fx/treadfx/heli_snow_seaknight" );
    maps\_treadfx::setvehiclefx( "mi28", "brick", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "bark", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "carpet", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "cloth", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "concrete", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "dirt", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "flesh", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "foliage", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "glass", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "grass", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "gravel", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "ice", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "metal", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "mud", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "paper", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "plaster", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "rock", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "sand", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "snow", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "water", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "wood", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "asphalt", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "ceramic", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "plastic", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "rubber", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "cushion", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "fruit", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "painted metal", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "default", var_1 );
    maps\_treadfx::setvehiclefx( "mi28", "none", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "brick", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "bark", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "carpet", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "cloth", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "concrete", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "dirt", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "flesh", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "foliage", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "glass", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "grass", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "gravel", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "ice", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "metal", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "mud", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "paper", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "plaster", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "rock", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "sand", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "snow", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "water", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "wood", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "asphalt", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "ceramic", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "plastic", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "rubber", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "cushion", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "fruit", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "painted metal", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "default", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_mig29", "none", var_1 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "brick", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "bark", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "carpet", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "cloth", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "concrete", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "dirt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "flesh", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "foliage", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "glass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "grass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "gravel", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "ice", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "mud", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "paper", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "plaster", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "rock", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "sand", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "snow", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "water", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "wood", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "asphalt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "ceramic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "plastic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "rubber", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "cushion", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "fruit", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "painted metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "default", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_bmp", "none", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "brick", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "bark", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "carpet", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "cloth", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "concrete", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "dirt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "flesh", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "foliage", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "glass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "grass", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "gravel", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "ice", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "mud", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "paper", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "plaster", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "rock", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "sand", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "snow", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "slush", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "water", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "wood", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "asphalt", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "ceramic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "plastic", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "rubber", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "cushion", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "fruit", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "painted metal", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "default", "fx/treadfx/tread_snow_slush_uaz" );
    maps\_treadfx::setvehiclefx( "script_vehicle_uaz_winter_destructible", "none", "fx/treadfx/tread_snow_slush_uaz" );
    var_2[0] = "script_vehicle_snowmobile";
    var_2[1] = "script_vehicle_snowmobile_coop";
    var_2[2] = "script_vehicle_snowmobile_coop_alt";
    var_2[3] = "script_vehicle_snowmobile_friendly";
    var_2[4] = "script_vehicle_snowmobile_player";
    var_2[5] = "script_vehicle_snowmobile_player_alt";
    var_2[6] = "script_vehicle_snowmobile_tarmac";

    foreach ( var_4 in var_2 )
    {
        maps\_treadfx::setvehiclefx( var_4, "snow", "fx/treadfx/h2_tread_snowmobile_snow" );
        maps\_treadfx::setvehiclefx( var_4, "ice", "fx/treadfx/h2_tread_snowmobile_ice" );
        maps\_treadfx::setvehiclefx( var_4, "slush", "fx/treadfx/h2_tread_snowmobile_slush" );
    }

    level.treadfx_maxheight = 1500;
    _id_AEA6();
}

_id_CB66()
{
    vehicle_scripts\_mig29::_id_BD90( "mig29_engine", "fx/fire/jet_afterburner_cliffhanger" );
}

_id_AEA6()
{
    anim.optionalstepeffectfunction = ::_id_D12F;
    anim.optionalstepeffectsmallfunction = ::_id_BBD9;
    level._id_AC31 = ::_id_B3BF;
    level._id_AAFF = [];
    level._id_AAFF["snow"] = 1;
    level._id_AAFF["ice"] = 1;
    level._id_AAFF["slush"] = 1;
    level._id_AAFF["mud"] = 1;
    level._effect["snow_leftovers"] = loadfx( "fx/impacts/footstep_snow_leftover" );
    animscripts\utility::setfootstepeffect( "snow_soap", loadfx( "fx/impacts/footstep_snow_soap" ) );
    animscripts\utility::setfootstepeffect( "ice_soap", loadfx( "fx/impacts/footstep_ice_soap" ) );
    animscripts\utility::setfootstepeffect( "slush_soap", loadfx( "fx/impacts/footstep_slush_soap" ) );
    animscripts\utility::setfootstepeffect( "mud_soap", loadfx( "fx/impacts/footstep_slush_soap" ) );
    animscripts\utility::setfootstepeffectsmall( "snow_soap", loadfx( "fx/impacts/footstep_snow_small_soap" ) );
    animscripts\utility::setfootstepeffectsmall( "ice_soap", loadfx( "fx/impacts/footstep_ice_small_soap" ) );
    animscripts\utility::setfootstepeffectsmall( "slush_soap", loadfx( "fx/impacts/footstep_slush_small_soap" ) );
    animscripts\utility::setfootstepeffectsmall( "mud_soap", loadfx( "fx/impacts/footstep_slush_small_soap" ) );
}

_id_D4A5( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !common_scripts\utility::fxexists( "snow_leftovers" ) )
        return;

    var_5 = 3;
    var_6 = 5;

    if ( !isdefined( self._id_C49D ) )
        self._id_C49D = 0;

    if ( isdefined( level._id_AAFF[var_1] ) )
    {
        if ( self._id_C49D < var_6 )
            self._id_C49D++;
    }
    else
    {
        if ( self._id_C49D > 0 )
            self._id_C49D--;

        if ( self._id_C49D >= var_5 )
        {
            if ( !isdefined( var_2 ) )
            {
                var_2 = self gettagorigin( var_0 );
                var_4 = undefined;
                var_3 = undefined;
            }

            if ( !isdefined( var_3 ) || !isdefined( var_4 ) )
            {
                var_7 = self.angles;

                if ( !isdefined( var_4 ) )
                {
                    var_4 = anglestoforward( var_7 );
                    var_4 *= -1;
                }

                if ( !isdefined( var_3 ) )
                    var_3 = anglestoup( var_7 );
            }

            var_8 = common_scripts\utility::getfx( "snow_leftovers" );
            playfx( var_8, var_2, var_3, var_4 );
        }
    }
}

_id_D12F( var_0, var_1, var_2, var_3 )
{
    _id_D4A5( var_0, var_1, var_2, undefined, var_3 );

    if ( self == level.price && isdefined( var_1 ) && isdefined( level._effect["step_" + var_1 + "_soap"] ) )
        var_1 += "_soap";

    return animscripts\notetracks::playfootstepeffect( var_0, var_1, var_2, var_3 );
}

_id_BBD9( var_0, var_1, var_2, var_3 )
{
    _id_D4A5( var_0, var_1, var_2, undefined, var_3 );

    if ( self == level.price && isdefined( var_1 ) && isdefined( level._effect["step_small_" + var_1 + "_soap"] ) )
        var_1 += "_soap";

    return animscripts\notetracks::playfootstepeffectsmall( var_0, var_1, var_2, var_3 );
}

_id_B3BF( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( var_0 == "footstep" )
        _id_D4A5( undefined, var_2, var_3, var_4, var_5 );

    maps\_utility::_id_BB2A( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_id_B308()
{
    maps\_global_fx::_id_D1D8( "wall_light_FX_origin", "vfx/lights/light_wall_cliff" );
    maps\_global_fx::_id_C1C4( "light_red_steady_FX_origin", "fx/misc/tower_light_red_steady_cliffhanger", -2 );
    maps\_global_fx::_id_C1C4( "light_blue_steady_FX_origin", "fx/misc/tower_light_blue_steady_cliffhanger", -2 );
    maps\_global_fx::_id_C1C4( "light_white_steady_FX_origin", "fx/misc/tower_light_white_steady_cliffhanger", -2 );
    maps\_global_fx::_id_C1C4( "light_green_steady_FX_origin", "fx/misc/tower_light_green_steady_cliffhanger", -2 );
}

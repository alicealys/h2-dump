// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level._effect["littlebird_fire_trail"] = loadfx( "fx/fire/fire_smoke_trail_L" );
    level._effect["bhd_dirt"] = loadfx( "fx/impacts/bhd_dirt" );
    level._effect["body_smoke_01"] = loadfx( "fx/smoke/grenade_smoke" );
    level._effect["body_smoke_02"] = loadfx( "fx/smoke/steam_manhole" );
    level._effect["body_smoke_03"] = loadfx( "fx/smoke/cargo_steam" );
    level._effect["body_fire_01"] = loadfx( "fx/fire/burninng_soldier_torso" );
    level._effect["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight" );
    level._effect["firelp_large_pm"] = loadfx( "fx/fire/firelp_large_pm" );
    level._effect["firelp_med_pm"] = loadfx( "fx/fire/firelp_med_pm" );
    level._effect["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm" );
    level._effect["firelp_large_pm_nolight"] = loadfx( "fx/fire/firelp_large_pm_nolight" );
    level._effect["firelp_med_pm_nolight"] = loadfx( "fx/fire/firelp_med_pm_nolight" );
    level._effect["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight" );
    level._effect["thick_black_smoke_L"] = loadfx( "fx/smoke/thick_black_smoke_L" );
    level._effect["thin_black_smoke_M"] = loadfx( "fx/smoke/thin_black_smoke_M" );
    level._effect["thin_black_smoke_L"] = loadfx( "fx/smoke/thin_black_smoke_L" );
    level._effect["tower_explosion"] = loadfx( "fx/explosions/tower_explosion_af_caves" );
    animscripts\utility::setfootstepeffect( "sand", loadfx( "fx/impacts/footstep_dust_sandstorm_runner_afcaves" ) );
    animscripts\utility::setfootstepeffectsmall( "sand", loadfx( "fx/impacts/footstep_dust_sandstorm_runner_afcaves" ) );
    level._effect["footstep_sand_small"] = loadfx( "fx/impacts/footstep_dust_sandstorm_runner_afcaves" );
    level._effect["footstep_sand"] = loadfx( "fx/impacts/footstep_dust_sandstorm_runner_afcaves" );
    level._effect["player_death_explosion"] = loadfx( "fx/explosions/player_death_explosion" );
    level._effect["player_cave_escape"] = loadfx( "fx/explosions/player_cave_escape" );
    level._effect["control_room_explosion"] = loadfx( "fx/explosions/control_room_explosion" );
    level._effect["fireball"] = loadfx( "fx/fire/fireball_af_caves" );
    level._effect["dlight_red"] = loadfx( "fx/misc/dlight_red" );
    level._effect["redlight_glow"] = loadfx( "fx/misc/tower_light_red_steady_sort" );
    level._effect["light_glow_white_bulb"] = loadfx( "vfx/lights/light_utility_afcave" );
    level._effect["knife_stab"] = loadfx( "fx/impacts/flesh_hit_knife" );
    level._effect["smokescreen"] = loadfx( "fx/smoke/smoke_screen" );
    level._effect["zodiac_wake_geotrail_oilrig"] = loadfx( "fx/treadfx/zodiac_wake_geotrail_oilrig" );
    level._effect["light_c4_blink_nodlight"] = loadfx( "fx/misc/light_c4_blink_nodlight" );
    level._effect["c4_light_blink_dlight"] = loadfx( "fx/misc/light_c4_blink" );
    level._effect["sand_storm_intro"] = loadfx( "fx/weather/sand_storm_intro" );
    level._effect["sand_storm_light"] = loadfx( "fx/weather/sand_storm_light" );
    level._effect["sand_storm_distant_oriented"] = loadfx( "fx/weather/sand_storm_distant_oriented" );
    level._effect["sand_spray_detail_runner0x400"] = loadfx( "fx/dust/sand_spray_detail_runner_0x400" );
    level._effect["sand_spray_detail_runner400x400"] = loadfx( "fx/dust/sand_spray_detail_runner_400x400" );
    level._effect["sand_spray_detail_oriented_runner_afcaves"] = loadfx( "fx/dust/sand_spray_detail_oriented_runner_afcaves" );
    level._effect["sand_spray_cliff_oriented_runner"] = loadfx( "fx/dust/sand_spray_cliff_oriented_runner" );
    level._effect["dust_wind_fast"] = loadfx( "fx/dust/dust_wind_fast_afcaves" );
    level._effect["dust_wind_canyon"] = loadfx( "fx/dust/dust_wind_canyon" );
    level._effect["steam_vent_large_wind"] = loadfx( "fx/smoke/steam_vent_large_wind" );
    level._effect["thermal_draft_afcaves"] = loadfx( "fx/smoke/thermal_draft_afcaves" );
    level._effect["waterfall_drainage_splash"] = loadfx( "fx/water/waterfall_drainage_splash_afcaves" );
    level._effect["waterfall_splash_large_drops"] = loadfx( "fx/water/waterfall_splash_large_drops" );
    level._effect["light_shaft_ground_dust_small_afcaves"] = loadfx( "fx/dust/light_shaft_ground_dust_small_afcaves" );
    level._effect["light_shaft_ground_dust_large_afcave"] = loadfx( "fx/dust/light_shaft_ground_dust_large_afcave" );
    level._effect["light_shaft_ground_dust_small_yel"] = loadfx( "fx/dust/light_shaft_ground_dust_small_yel" );
    level._effect["light_shaft_ground_dust_large_yel_afcaves"] = loadfx( "fx/dust/light_shaft_ground_dust_large_yel_afcaves" );
    level._effect["light_shaft_motes_afcaves"] = loadfx( "fx/dust/light_shaft_motes_afcaves" );
    level._effect["flashlight"] = loadfx( "vfx/lights/flashlight_spotlight_afcaves" );
    level._effect["pistol_muzzleflash"] = loadfx( "fx/muzzleflashes/pistolflash" );
    level._effect["player_death_explosion"] = loadfx( "fx/explosions/player_death_explosion" );
    level._effect["cave_explosion"] = loadfx( "fx/explosions/cave_explosion" );
    level._effect["cave_explosion_exit"] = loadfx( "fx/explosions/cave_explosion_exit" );
    level._effect["mortar"]["bunker_ceiling"] = loadfx( "fx/dust/ceiling_dust_default" );
    level._effect["ceiling_collapse_dirt1"] = loadfx( "fx/dust/ceiling_collapse_dirt1" );
    level._effect["ceiling_rock_break"] = loadfx( "fx/misc/ceiling_rock_break_afcaves" );
    level._effect["hallway_collapsing_big"] = loadfx( "fx/misc/hallway_collapsing_big_afcaves" );
    level._effect["hallway_collapsing_huge"] = loadfx( "fx/misc/hallway_collapsing_huge" );
    level._effect["hallway_collapse_ceiling_smoke"] = loadfx( "fx/smoke/hallway_collapse_ceiling_smoke" );
    level._effect["hallway_collapsing_chase"] = loadfx( "fx/misc/hallway_collapsing_chase" );
    level._effect["hallway_collapsing_cavein"] = loadfx( "fx/misc/hallway_collapsing_cavein" );
    level._effect["hallway_collapsing_cavein_short"] = loadfx( "fx/misc/hallway_collapsing_cavein_short" );
    level._effect["hallway_collapsing_burst"] = loadfx( "fx/misc/hallway_collapsing_burst" );
    level._effect["hallway_collapsing_burst_no_linger"] = loadfx( "fx/misc/hallway_collapsing_burst_no_linger" );
    level._effect["hallway_collapsing_major"] = loadfx( "fx/misc/hallway_collapsing_major" );
    level._effect["hallway_collapsing_major_norocks"] = loadfx( "fx/misc/hallway_collapsing_major_norocks" );
    level._effect["building_explosion_metal"] = loadfx( "fx/explosions/building_explosion_metal_gulag" );
    level._effect["tanker_explosion"] = loadfx( "fx/explosions/tanker_explosion" );
    level._effect["airstrip_explosion"] = loadfx( "fx/explosions/airstrip_explosion" );
    level._effect["bunker_ceiling"] = loadfx( "fx/dust/ceiling_dust_default" );
    level._effect["heli_impacts"] = loadfx( "fx/impacts/large_dirt_1" );
    level._effect["welding_small_extended"] = loadfx( "fx/misc/welding_small_extended" );
    level._effect["fire_falling_runner_point"] = loadfx( "fx/fire/fire_falling_runner_point" );
    level._effect["gulag_cafe_spotlight"] = loadfx( "fx/misc/gulag_cafe_spotlight" );
    level._effect["heli_aerial_explosion"] = loadfx( "fx/explosions/aerial_explosion" );
    level._effect["heli_aerial_explosion_large"] = loadfx( "fx/explosions/aerial_explosion_large" );
    level._effect["steam_room_100"] = loadfx( "fx/smoke/steam_room_100" );
    level._effect["steam_room_100_nocull"] = loadfx( "fx/smoke/steam_room_100_nocull" );
    level._effect["steam_room_100_nocull_red"] = loadfx( "fx/smoke/steam_room_100_nocull_red" );
    level._effect["steam_room_ceiling"] = loadfx( "fx/smoke/steam_room_ceiling" );
    level._effect["steam_room_floor"] = loadfx( "fx/smoke/steam_room_floor" );
    level._effect["steam_room_fill"] = loadfx( "fx/smoke/steam_room_fill" );
    level._effect["steam_room_add_large"] = loadfx( "fx/smoke/steam_room_add_large" );
    level._effect["steam_room_add_small"] = loadfx( "fx/smoke/steam_room_add_small" );
    level._effect["pipe_steam_looping"] = loadfx( "fx/impacts/pipe_steam_looping" );
    level._effect["breach_room"] = loadfx( "vfx/explosion/breach_room_afcaves" );
    level._effect["breach_door"] = loadfx( "vfx/explosion/breach_door_afcaves" );
    level._effect["breach_room_residual"] = loadfx( "vfx/explosion/breach_room_residual_afcaves" );
    level._effect["steam_room_100_dark"] = loadfx( "fx/smoke/steam_room_100_dark" );
    level._effect["steam_room_100_nocull_dark"] = loadfx( "fx/smoke/steam_room_100_nocull_dark" );
    level._effect["steam_room_ceiling_dark"] = loadfx( "fx/smoke/steam_room_ceiling_dark" );
    level._effect["steam_room_floor_dark"] = loadfx( "fx/smoke/steam_room_floor_dark" );
    level._effect["steam_room_fill_dark"] = loadfx( "fx/smoke/steam_room_fill_dark" );
    level._effect["steam_room_add_large_dark"] = loadfx( "fx/smoke/steam_room_add_large_dark" );
    level._effect["steam_room_add_small_dark"] = loadfx( "fx/smoke/steam_room_add_small_dark" );
    level._effect["pipe_steam_dark_looping"] = loadfx( "fx/impacts/pipe_steam_dark_looping" );
    level._effect["steam_vent_large_wind_dark"] = loadfx( "fx/smoke/steam_vent_large_wind_dark" );
    level._effect["drips_slow"] = loadfx( "fx/misc/drips_slow" );
    level._effect["drips_slow_infrequent"] = loadfx( "fx/misc/drips_slow_infrequent" );
    level._effect["pipe_steam_dark"] = loadfx( "fx/impacts/pipe_steam_dark" );
    level._effect["tower_light_red_steady_afcaves"] = loadfx( "fx/misc/tower_light_red_steady_afcaves" );
    level._effect["waterfall_splash_afcaves"] = loadfx( "vfx/water/waterfall_splash_afcaves" );
    level._effect["waterfall_splash_sml_afcaves"] = loadfx( "vfx/water/waterfall_splash_sml_afcaves" );
    level._effect["falling_water_trickle_afcaves"] = loadfx( "vfx/water/falling_water_trickle_afcaves" );
    level._effect["light_rays_moving_long_motes_afcaves"] = loadfx( "vfx/lights/light_rays_moving_long_motes_afcaves" );
    level._effect["airstrip_dust_wave_afcaves"] = loadfx( "fx/dust/airstrip_dust_wave_afcaves" );
    level._effect["shadow_sand_patch_afcaves"] = loadfx( "vfx/sand/shadow_sand_patch_afcaves" );
    level._effect["sand_spray_detail_afcaves"] = loadfx( "vfx/sand/sand_spray_detail_afcaves" );
    level._effect["drips_slow_afcaves"] = loadfx( "vfx/rain/drips_slow_afcaves" );
    level._effect["lensflare_floodlight_on_afcaves"] = loadfx( "vfx/lights/lensflare_floodlight_on_afcaves" );
    level._effect["dust_falling_ceiling_runner_afcaves"] = loadfx( "fx/dust/dust_falling_ceiling_runner_afcaves" );
    level._effect["fog_ground_200_afcaves"] = loadfx( "vfx/fog/fog_ground_200_afcaves" );
    level._effect["amb_dust_int_afcaves"] = loadfx( "vfx/dust/amb_dust_int_afcaves" );
    level._effect["lensflare_floodlight_on_yellow_afcaves"] = loadfx( "vfx/lights/lensflare_floodlight_on_yellow_afcaves" );
    level._effect["light_spotlight_cone_haze_dim_afcaves"] = loadfx( "vfx/lights/light_spotlight_cone_haze_dim_afcaves" );
    level._effect["steam_sm_vent_afcaves"] = loadfx( "vfx/steam/steam_sm_vent_afcaves" );
    level._effect["lensflare_floodlight_small_on_yellow_afcaves"] = loadfx( "vfx/lights/lensflare_floodlight_small_on_yellow_afcaves" );
    level._effect["steam_room_godray_path_afcaves"] = loadfx( "vfx/unique/steam_room_godray_path_afcaves" );
    level._effect["light_rays_military_netting_afcaves"] = loadfx( "vfx/sand/light_rays_military_netting_afcaves" );
    level._effect["sand_storm_light_gravity"] = loadfx( "fx/weather/sand_storm_light_gravity" );
    level._effect["cellars_godrays_hole_afcaves"] = loadfx( "fx/misc/cellars_godrays_hole_afcaves" );
    level._effect["wind_sand_spray_ledge_afcaves"] = loadfx( "vfx/sand/wind_sand_spray_ledge_afcaves" );
    level._effect["sand_storm_light_outdoor"] = loadfx( "fx/weather/sand_storm_light_outdoor" );
    level._effect["sand_slide_price"] = loadfx( "fx/snow/sand_price_sliding" );
    level._effect["sand_slide_player"] = loadfx( "vfx/sand/sand_slide_player_afcaves" );
    level._effect["drips_a_afcaves"] = loadfx( "fx/water/drips_a_afcaves" );
    level._effect["waterfall_drainage_short_afcaves"] = loadfx( "fx/water/waterfall_drainage_short_afcaves" );
    level._effect["waterfall_mist_afcaves"] = loadfx( "vfx/water/waterfall_mist_afcaves" );
    level._effect["fog_ground_white"] = loadfx( "fx/smoke/fog_ground_white" );
    level._effect["smoke_column_linger_afcaves"] = loadfx( "fx/smoke/smoke_column_linger_afcaves" );
    level._effect["car_fire_motor_afcaves"] = loadfx( "fx/fire/car_fire_motor_afcaves" );
    level._effect["firelp_large_pm_nolight_afcaves"] = loadfx( "fx/fire/firelp_large_pm_nolight_afcaves" );
    level._effect["smoke_floor_crawl_02_afcaves"] = loadfx( "vfx/smoke/smoke_floor_crawl_02_afcaves" );
    level._effect["ash_column_falling_afcaves"] = loadfx( "fx/misc/ash_column_falling_afcaves" );
    level._effect["car_fire_ground_afcaves"] = loadfx( "fx/fire/car_fire_ground_afcaves" );
    level._effect["battlefield_smoke_m_slow_afcaves"] = loadfx( "vfx/smoke/dlc/battlefield_smoke_m_slow_afcaves" );
    level._effect["fake_sky_afcaves"] = loadfx( "fx/maps/af_caves/fake_sky_afcaves" );
    level._effect["steam_room_100_nocull_bright"] = loadfx( "fx/smoke/steam_room_100_nocull_bright" );
    level._effect["c4exp_default"] = loadfx( "fx/explosions/c4exp_default" );
    level._effect["h2_sunflare_afcaves"] = loadfx( "vfx/map/af_caves/h2_sunflare_afcaves" );
    level._effect["dust_wind_fast_02_narrow_afcaves"] = loadfx( "vfx/sand/dust_wind_fast_02_narrow_afcaves" );
    level._effect["dust_wind_fast_ledge_afcaves"] = loadfx( "fx/dust/dust_wind_fast_ledge_afcaves" );
    level._effect["sand_storm_light_02_outdoor"] = loadfx( "fx/weather/sand_storm_light_02_outdoor" );
    level._effect["sand_storm_light_gravity_runner"] = loadfx( "fx/weather/sand_storm_light_gravity_runner" );
    level._effect["sand_spray_detail_single_afcaves"] = loadfx( "vfx/sand/sand_spray_detail_single_afcaves" );
    level._effect["steam_room_gate"] = loadfx( "fx/smoke/steam_room_gate" );
    level._effect["fire_fallingdebris_afcaves"] = loadfx( "vfx/fire/fire_fallingdebris_afcaves" );
    level._effect["fire_ground_afcaves"] = loadfx( "fx/fire/fire_ground_afcaves" );
    level._effect["fire_beam_afcaves"] = loadfx( "fx/fire/fire_beam_afcaves" );
    level._effect["tire_fire_med"] = loadfx( "fx/fire/tire_fire_med" );
    level._effect["aa_gun_burn"] = loadfx( "vfx/fire/aa_gun_burn" );
    level._effect["uaz_burning"] = loadfx( "vfx/fire/uaz_burning" );
    level._effect["slamram_burning"] = loadfx( "vfx/fire/slamram_burning" );
    level._effect["littlebird_crash_burning"] = loadfx( "vfx/fire/littlebird_crash_burning" );
    level._effect["barrel_burning"] = loadfx( "vfx/fire/barrel_burning" );
    level._effect["barrel_burning_02"] = loadfx( "vfx/fire/barrel_burning_02" );
    level._effect["barrel_burning_03"] = loadfx( "vfx/fire/barrel_burning_03" );
    level._effect["plasticcase_bomb_burning"] = loadfx( "vfx/fire/plasticcase_bomb_burning" );
    level._effect["sand_storm_distant_fade"] = loadfx( "fx/weather/sand_storm_distant_fade" );
    level._effect["burning_rope"] = loadfx( "fx/fire/burning_rope" );
    level._effect["airstrip_dust_falling_runner"] = loadfx( "vfx/dust/airstrip_dust_falling_runner" );
    level._effect["bm21_fire_smk_column"] = loadfx( "fx/smoke/bm21_fire_smk_column" );
    level._effect["intro_wind_gust_af_caves"] = loadfx( "vfx/map/af_caves/intro_wind_gust_af_caves" );
    level._effect["light_spotlight_cone_haze_dim_afcaves_blue"] = loadfx( "vfx/lights/light_spotlight_cone_haze_dim_afcaves_blue" );
    level._effect["light_utility_flicker_afcave"] = loadfx( "vfx/lights/light_utility_flicker_afcave" );
    level._effect["com_two_blue_light_fixture_flare"] = loadfx( "vfx/lights/com_two_blue_light_fixture_flare" );
    level._effect["sand_storm_debris_wind_afcaves"] = loadfx( "vfx/map/af_caves/sand_storm_debris_wind_afcaves" );
    level._effect["sand_falling_afcaves"] = loadfx( "vfx/map/af_caves/sand_falling_afcaves" );
    level._effect["rock_falling_afcaves"] = loadfx( "fx/misc/rock_falling_afcaves" );
    level._effect["rock_falling_runner_afcaves"] = loadfx( "fx/misc/rock_falling_runner_afcaves" );
    level._effect["ceiling_concrete_runner_afcaves"] = loadfx( "fx/explosions/ceiling_concrete_runner_afcaves" );
    level._effect["waterfall_end_ripple_afcaves"] = loadfx( "fx/water/waterfall_end_ripple_afcaves" );
    level._effect["barrelexp"] = loadfx( "fx/props/barrelexp" );
    level._effect["spark_idle_nospark"] = loadfx( "vfx/sparks/spark_idle_nospark" );
    level._effect["tv_light_beam_afcaves"] = loadfx( "vfx/lights/tv_light_beam_afcaves" );
    level._effect["sand_hand_player"] = loadfx( "vfx/sand/sand_hand_player_afcaves" );
    level._effect["blood_pullout"] = loadfx( "vfx/blood/blood_pullout" );
    level._effect["blood_pullout_1"] = loadfx( "vfx/blood/blood_pullout_1" );
    level._effect["burning_rope_curved"] = loadfx( "fx/fire/burning_rope_curved" );
    level._effect["h2_bird_takeoff"] = loadfx( "fx/misc/h2_bird_takeoff" );
    level._effect["bird_vulture_circle_less_runner"] = loadfx( "vfx/animal/bird_vulture_circle_less_runner" );
    level._effect["building_fire_large_nolight_afcaves"] = loadfx( "fx/fire/building_fire_large_nolight_afcaves" );
    level._effect["bullet_explode_runner_afcaves"] = loadfx( "vfx/sparks/bullet_explode_runner_afcaves" );
    level._effect["heli_dust_default_looping_afcaves"] = loadfx( "vfx/treadfx/heli_dust_default_looping_afcaves" );
    level._effect["waterfall_afcaves_sml"] = loadfx( "fx/water/waterfall_afcaves_sml" );
    level._effect["waterfall_splash_lg_afcaves"] = loadfx( "vfx/water/waterfall_splash_lg_afcaves" );
    level._effect["waterfall_afcaves_sml_nolight"] = loadfx( "fx/water/waterfall_afcaves_sml_nolight" );
    level._effect["waterfall_afcaves_sml_single"] = loadfx( "fx/water/waterfall_afcaves_sml_single" );
    level._effect["sand_open_door_01"] = loadfx( "vfx/sand/sand_open_door_01" );
    maps\_utility::add_earthquake( "backdoor_barracks", 0.2, 0.75, 1024 );
    maps\_utility::add_earthquake( "steamroom", 0.25, 2.75, 1024 );
    maps\_utility::add_earthquake( "controlroom_shake", 0.25, 0.75, 1024 );
    thread _id_B308();
    _id_D4A4::main();
    _id_B62D::main();
}

treadfx_override()
{
    var_0 = [ "script_vehicle_littlebird_bench", "script_vehicle_littlebird_armed", "script_vehicle_blackhawk" ];
    var_1 = "vfx/treadfx/heli_dust_default_looping_afcaves";

    foreach ( var_3 in var_0 )
        maps\_treadfx::setallvehiclefx( var_3, var_1, "h1r_default_helicopter_wind" );

    maps\_treadfx::_id_CCD9( var_1 );
}

_id_B308()
{
    maps\_global_fx::_id_C1C4( "light_glow_white_bulb_FX_origin", "vfx/lights/light_utility_afcave", undefined, "light_glow_white_bulb" );
    maps\_global_fx::_id_C1C4( "light_red_steady_FX_origin", "fx/misc/tower_light_red_steady_afcaves", undefined, "light_red_steady_FX_origin" );
    maps\_global_fx::_id_D1D8( "com_utility_light_on_FX_origin", "vfx/lights/led_utility_afcave", undefined, "com_utility_light_on_FX_origin" );
    maps\_global_fx::_id_D1D8( "utility_clamp_light_on_af_caves_origin", "vfx/lights/light_spotlight_cone_haze_dim_afcaves", undefined, "utility_clamp_light_on_af_caves_origin" );
    maps\_global_fx::_id_D1D8( "utility_clamp_light_on_af_caves_blue_origin", "vfx/lights/light_spotlight_cone_haze_dim_afcaves_blue", undefined, "utility_clamp_light_on_af_caves_blue_origin" );
}

_id_B2E8()
{
    var_0 = getentarray( "player", "classname" )[0];
    playfx( common_scripts\utility::getfx( "sand_storm_intro" ), var_0.origin );
}

_id_CB06( var_0 )
{
    var_1 = level.global_fx[var_0];
    return level._effect[var_1];
}

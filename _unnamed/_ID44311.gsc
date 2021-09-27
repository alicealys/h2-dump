// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    level._ID1426["_attack_heli_spotlight_ending"] = _func_155( "fx/misc/hunted_spotlight_model_dim" );
    level._ID43419 = _func_155( "vfx/unique/no_fx" );
    _unknown_06A6();
    level._ID1426["vehicle_explosion_slamraam"] = _func_155( "fx/explosions/vehicle_explosion_slamraam" );
    level._ID1426["killshot"] = _func_155( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._ID1426["_attack_heli_spotlight"] = _func_155( "fx/misc/spotlight_large_dcburning" );
    _ID42299::_ID49604( "light_red_steady_FX_origin", "fx/misc/tower_light_red_steady_dcburning", -2 );
    _ID42299::_ID49604( "flare_ambient_FX_origin", "fx/misc/flare_ambient_dcburning", -2, "flare_ambient_dcburning", "emt_road_flare_burn" );
    _ID42299::_ID49604( "glow_stick_pile_FX_origin", "fx/misc/glow_stick_glow_pile_dcburning", -2 );
    _ID42299::_ID49604( "light_glow_white_bulb_FX_origin", "fx/misc/light_glow_white_lamp_dcburning", -2 );
    level._ID1426["large_column"] = _func_155( "fx/props/dcburning_pillars" );
    level._ID1426["tv_explosion"] = _func_155( "fx/explosions/tv_explosion" );
    _ID42231::_ID48620( "toy_firehydrant", "fx/props/firehydrant_exp", "fx/props/firehydrant_exp_dcburning" );
    _ID42231::_ID48620( "toy_firehydrant", "fx/props/firehydrant_spray_10sec", "fx/props/firehydrant_spray_10sec_dcburning" );
    _ID42411::_ID6215( "script_vehicle_m1a1_abrams", "m1a1", "vehicle_m1a1_abrams", "fx/explosions/vehicle_explosion_m1a1", undefined, "exp_javelin_armor_destroy" );
    _ID42411::_ID6215( "script_vehicle_laatpv", "laatpv", "vehicle_laatpv", "fx/explosions/javelin_explosion_dcburn", undefined, "exp_javelin_armor_destroy" );
    _ID42411::_ID6215( "script_vehicle_ch46e_low", "seaknight", "vehicle_ch46e_low", "fx/explosions/javelin_explosion_dcburn", undefined, "exp_javelin_armor_destroy" );
    _ID42411::_ID6215( "script_vehicle_bradley", "bradley", "vehicle_bradley", "fx/explosions/javelin_explosion_dcburn", undefined, "exp_javelin_armor_destroy" );
    level._ID1426["turret_overheat_haze"] = _func_155( "fx/distortion/abrams_exhaust" );
    level._ID1426["turret_overheat_smoke"] = _func_155( "fx/distortion/armored_car_overheat" );
    level._ID1426["javelin_muzzle"] = _func_155( "fx/muzzleflashes/javelin_flash_wv" );
    level._ID1426["light_glow_white_bulb"] = _func_155( "fx/misc/light_glow_white_bulb" );
    level._ID1426["door_kick_dust"] = _func_155( "fx/dust/door_kick" );
    level._ID1426["dlight_laptop"] = _func_155( "fx/misc/dlight_laptop" );
    level._ID1426["large_vehicle_explosion"] = _func_155( "fx/explosions/large_vehicle_explosion" );
    level._ID1426["cheap_vehicle_explosion"] = _func_155( "fx/explosions/small_vehicle_explosion_low" );
    level._ID1426["cheap_mack_truck_explosion"] = _func_155( "fx/explosions/tanker_explosion_dcburn" );
    level._ID1426["tanker_fire"] = _func_155( "fx/fire/firelp_large_pm_dcburning" );
    level._ID1426["smoke_trail_black_heli"] = _func_155( "fx/smoke/smoke_trail_black_heli" );
    level._ID1426["dlight_blue"] = _func_155( "fx/misc/dlight_blue" );
    level._ID1426["dlight_red"] = _func_155( "fx/misc/aircraft_light_cockpit_red" );
    level._ID1426["player_death_explosion"] = _func_155( "fx/explosions/player_death_explosion" );
    level._ID1426["heat_shimmer_door"] = _func_155( "fx/distortion/abrams_exhaust" );
    level._ID1426["firelp_large_pm_nolight"] = _func_155( "fx/fire/firelp_large_pm_nolight" );
    level._ID1426["firelp_med_pm_nolight"] = _func_155( "fx/fire/firelp_med_pm_nolight" );
    level._ID1426["firelp_small_pm_nolight"] = _func_155( "fx/fire/firelp_small_pm_nolight" );
    level._ID1426["crash_main_01"] = _func_155( "vfx/explosion/vehicle_aerial_explosion_small" );
    level._ID1426["crash_end_01"] = _func_155( "fx/explosions/helicopter_explosion_little_bird_dcburn" );
    level._ID1426["chopper_smoke_trail"] = _func_155( "fx/fire/fire_smoke_trail_L" );
    level._ID1426["chopper_smoke_trail_loop"] = _func_155( "fx/fire/fire_smoke_trail_loop" );
    level._ID1426["chopper_explosion"] = _func_155( "vfx/explosion/large_aerial_explo_bright" );
    level._ID1426["headshot"] = _func_155( "fx/impacts/flesh_hit_head_fatal_exit" );
    level._ID1426["headshot2"] = _func_155( "fx/impacts/flesh_hit_splat_large" );
    level._ID1426["headshot3"] = _func_155( "fx/impacts/flesh_hit_body_fatal_exit" );
    level._ID1426["headshot4"] = _func_155( "fx/impacts/sniper_escape_blood" );
    level._ID1426["bodyshot"] = _func_155( "fx/impacts/flesh_hit" );
    level._ID1426["thermal_body_gib"] = _func_155( "fx/impacts/thermal_body_gib" );
    level._ID1426["flare_ambient_dcburning"] = _func_155( "fx/misc/flare_ambient_dcburning" );
    level._ID1426["flare_ambient_nosparks"] = _func_155( "fx/misc/flare_ambient_nosparks" );
    level._ID1426["heat_shimmer_door"] = _func_155( "fx/distortion/abrams_exhaust" );
    level._ID1426["heli_dust_default"] = _func_155( "fx/treadfx/heli_dust_airlift" );
    level._ID1426["flare_runner_intro"] = _func_155( "fx/misc/flare_start" );
    level._ID1426["flare_runner"] = _func_155( "fx/misc/flare" );
    level._ID1426["flare_runner_fizzout"] = _func_155( "fx/misc/flare_end" );
    level._ID2462 = _func_155( "fx/explosions/clusterbomb" );
    level._ID1426["powerline_runner"] = _func_155( "fx/explosions/powerline_runner" );
    level._ID1426["antiair_runner"] = _func_155( "fx/misc/antiair_runner_night" );
    level._ID1426["hallway_smoke_dark"] = _func_155( "fx/smoke/hallway_smoke_dark" );
    level._ID1426["thin_black_smoke_L"] = _func_155( "fx/smoke/thin_black_smoke_L" );
    level._ID1426["thick_white_smoke_giant"] = _func_155( "fx/smoke/thick_white_smoke_giant_dcburning" );
    level._ID1426["thick_dark_smoke_giant"] = _func_155( "fx/smoke/thick_dark_smoke_giant_dcburning" );
    level._ID1426["ground_smoke1200x200_dcburning"] = _func_155( "fx/smoke/ground_smoke1200x200_dcburning" );
    level._ID1426["ground_smoke600x150_dcburning"] = _func_155( "fx/smoke/ground_smoke600x150_dcburning" );
    level._ID1426["ground_smoke1200x1200_out_dcburning"] = _func_155( "fx/smoke/ground_smoke1200x1200_out_dcburning" );
    level._ID1426["battlefield_smoke_m_slow_dcburning"] = _func_155( "vfx/smoke/dlc/battlefield_smoke_m_slow_dcburning" );
    level._ID1426["ground_smoke1200x1200_out_near_dcburning"] = _func_155( "fx/smoke/ground_smoke1200x1200_out_near_dcburning" );
    level._ID1426["thick_dark_smoke_giant_reverse_dcburning"] = _func_155( "fx/smoke/thick_dark_smoke_giant_reverse_dcburning" );
    level._ID1426["battlefield_vf_dcburning"] = _func_155( "vfx/map/dcburning/battlefield_vf_dcburning" );
    level._ID1426["cloud_bank_cloud_filler_dcburning"] = _func_155( "fx/weather/cloud_bank_cloud_filler_dcburning" );
    level._ID1426["smoke_plume_01"] = _func_155( "vfx/smoke/smoke_plume_01" );
    level._ID1426["building01_main_smoke"] = _func_155( "vfx/map/dcburning/building01_main_smoke" );
    level._ID1426["thick_dark_smoke_giant_large_dcburning"] = _func_155( "fx/smoke/thick_dark_smoke_giant_large_dcburning" );
    level._ID1426["battlefield_smoke_slow_far_dcburning"] = _func_155( "vfx/smoke/dlc/battlefield_smoke_slow_far_dcburning" );
    level._ID1426["ground_whitesmoke_looping"] = _func_155( "fx/maps/paris/ground_whitesmoke_looping" );
    level._ID1426["thin_dark_smoke_giant_reverse_dcburning"] = _func_155( "fx/smoke/thin_dark_smoke_giant_reverse_dcburning" );
    level._ID1426["thin_dark_smoke_giant_dcburning"] = _func_155( "fx/smoke/thin_dark_smoke_giant_dcburning" );
    level._ID1426["smoke_plume_02"] = _func_155( "vfx/smoke/smoke_plume_02" );
    level._ID1426["thick_dark_smoke_giant_small_dcburning"] = _func_155( "fx/smoke/thick_dark_smoke_giant_small_dcburning" );
    level._ID1426["dcburning_smk_stacks_lrg_01"] = _func_155( "vfx/map/dcburning/dcburning_smk_stacks_lrg_01" );
    level._ID1426["dcburning_smk_stacks_lrg_02"] = _func_155( "vfx/map/dcburning/dcburning_smk_stacks_lrg_02" );
    level._ID1426["firelp_small_pm"] = _func_155( "fx/fire/firelp_small_pm_dcburning" );
    level._ID1426["firelp_small_pm_a"] = _func_155( "fx/fire/firelp_small_pm_a" );
    level._ID1426["firelp_med_pm"] = _func_155( "fx/fire/firelp_med_pm_dcburning" );
    level._ID1426["firelp_large_pm"] = _func_155( "fx/fire/firelp_large_pm_dcburning" );
    level._ID1426["firelp_vhc_lrg_pm_farview"] = _func_155( "fx/fire/firelp_vhc_lrg_pm_farview" );
    level._ID1426["firelp_small_pm_nolight_dcburning"] = _func_155( "fx/fire/firelp_small_pm_nolight_dcburning" );
    level._ID1426["firelp_wide_pm_dcburning"] = _func_155( "fx/fire/firelp_wide_pm_dcburning" );
    level._ID1426["firelp_med_pm_dcburning_2"] = _func_155( "fx/fire/firelp_med_pm_dcburning_2" );
    level._ID1426["firelp_med_pm_dcburning_2_nosmoke"] = _func_155( "fx/fire/firelp_med_pm_dcburning_2_nosmoke" );
    level._ID1426["fire_truck_tree"] = _func_155( "fx/fire/fire_truck_tree" );
    level._ID1426["firelp_large_far"] = _func_155( "fx/fire/firelp_large_far" );
    level._ID1426["drips_slow"] = _func_155( "fx/misc/drips_slow" );
    level._ID1426["drips_fast"] = _func_155( "fx/misc/drips_fast" );
    level._ID1426["pipe_broken_water"] = _func_155( "fx/water/pipe_broken_water" );
    level._ID1426["water_pipe_spray_splash_small"] = _func_155( "fx/water/water_pipe_spray_splash_small" );
    level._ID1426["water_pipe_spray"] = _func_155( "fx/water/water_pipe_spray" );
    level._ID1426["cgo_ship_puddle_small"] = _func_155( "fx/distortion/cgo_ship_puddle_small" );
    level._ID1426["rock_falling_small_runner"] = _func_155( "fx/misc/rock_falling_small_runner" );
    level._ID1426["water_pipe_gush_sm"] = _func_155( "vfx/water/water_pipe_gush_sm" );
    level._ID1426["water_gush_pipe_small"] = _func_155( "vfx/water/water_gush_pipe_small" );
    level._ID1426["water_leak_pipe_large"] = _func_155( "vfx/water/water_leak_pipe_large" );
    level._ID1426["large_explosion"] = _func_155( "vfx/explosion/large_explosion" );
    level._ID1426["large_aerial_explo_bright"] = _func_155( "vfx/explosion/large_aerial_explo_bright" );
    level._ID1426["ceiling_dust_default"] = _func_155( "fx/dust/ceiling_dust_default" );
    level._ID1426["commerce_window_shatter"] = _func_155( "fx/props/car_glass_large" );
    level._ID1426["powerline_runner_cheap"] = _func_155( "fx/explosions/powerline_runner_cheap" );
    level._ID1426["light_rays_moving_window_dcburning"] = _func_155( "vfx/map/dcburning/light_rays_moving_window_dcburning" );
    level._ID1426["fx_sunflare_airlift"] = _func_155( "vfx/lensflare/fx_sunflare_airlift" );
    level._ID1426["street_light_flare"] = _func_155( "vfx/lights/street_light_flare" );
    level._ID1426["capitol_burning"] = _func_155( "vfx/map/dcburning/capitol_burning" );
    level._ID1426["dust_wind_fast"] = _func_155( "fx/dust/dust_wind_fast" );
    level._ID1426["ash_falling_large"] = _func_155( "vfx/dust/ash_falling_large" );
    level._ID1426["dcburning_building_fire_flicker"] = _func_155( "vfx/map/dcburning/dcburning_building_fire_flicker" );
    level._ID1426["dcburning_building_fire_flicker_dlight"] = _func_155( "vfx/map/dcburning/dcburning_building_fire_flicker_dlight" );
    level._ID1426["building01_sec_smoke"] = _func_155( "vfx/map/dcburning/building01_sec_smoke" );
    level._ID1426["aftermath_fire_building_far"] = _func_155( "vfx/fire/aftermath_fire_building_far" );
    level._ID1426["dcburning_fire_building_far"] = _func_155( "vfx/fire/dcburning_fire_building_far" );
    level._ID1426["dcburning_fire_building_small"] = _func_155( "vfx/fire/dcburning_fire_building_small" );
    level._ID1426["dcburning_fire_building_smoke"] = _func_155( "vfx/smoke/dcburning_fire_building_smoke" );
    level._ID1426["trench_ambiance_dcburning"] = _func_155( "vfx/animal/dlc/trench_ambiance_dcburning" );
    level._ID1426["dcburning_steam_building_vent_top"] = _func_155( "vfx/steam/dcburning_steam_building_vent_top" );
    level._ID1426["dcburning_dust_ambient_interior"] = _func_155( "vfx/map/dcburning/dcburning_dust_ambient_interior" );
    level._ID1426["lensflare_floodlight_on"] = _func_155( "vfx/lights/lensflare_floodlight_on_yellow_dcburning" );
    level._ID1426["ceiling_dust_wide"] = _func_155( "fx/dust/ceiling_dust_wide" );
    level._ID1426["ash_smoke_falling_slow"] = _func_155( "vfx/dust/ash_smoke_falling_slow" );
    level._ID1426["embers_vortex"] = _func_155( "vfx/fire/embers_vortex" );
    level._ID1426["burning_wood_heat"] = _func_155( "fx/distortion/burning_wood_heat" );
    level._ID1426["ceiling_smoke_dcburning"] = _func_155( "fx/smoke/ceiling_smoke_dcburning" );
    level._ID1426["c4_slamraam_explosion"] = _func_155( "fx/explosions/c4_slamraam_explosion" );
    level._ID1426["fire_tarp_dcburning"] = _func_155( "fx/fire/fire_tarp_dcburning" );
    level._ID1426["light_rays_moving_window_dcburning_small"] = _func_155( "vfx/map/dcburning/light_rays_moving_window_dcburning_small" );
    level._ID1426["light_rays_destroyed_window_dcburning"] = _func_155( "vfx/map/dcburning/light_rays_destroyed_window_dcburning" );
    level._ID1426["ground_smoke_heavy_dcburning"] = _func_155( "fx/smoke/ground_smoke_heavy_dcburning" );
    level._ID1426["fire_smoke_trail_loop"] = _func_155( "fx/fire/fire_smoke_trail_loop" );
    level._ID1426["vehicle_aerial_explosion"] = _func_155( "vfx/explosion/vehicle_aerial_explosion" );
    level._ID1426["lighthaze"] = _func_155( "fx/misc/lighthaze" );
    level._ID1426["artilleryexp_dirt_brown_2_dcburning"] = _func_155( "fx/explosions/artilleryexp_dirt_brown_2_dcburning" );
    level._ID1426["dcburn_explosion_large"] = _func_155( "fx/explosions/dcburn_explosion_large" );
    level._ID1426["heli_hit"] = _func_155( "fx/explosions/heli_hit" );
    level._ID1426["falling_dirt_big"] = _func_155( "fx/dust/falling_dirt_big" );
    level._ID1426["obelisk_smoke"] = _func_155( "fx/smoke/obelisk_smoke" );
    level._ID1426["smoke_crater_smolder_black_dcburning"] = _func_155( "vfx/smoke/smoke_crater_smolder_black_dcburning" );
    level._ID1426["spark_idle_nospark"] = _func_155( "vfx/sparks/spark_idle_nospark" );
    level._ID1426["smoke_capitol"] = _func_155( "fx/smoke/smoke_capitol" );
    level._ID1426["spotlight_dcburning"] = _func_155( "vfx/lights/lab/spotlight_dcburning" );
    level._ID1426["spotlight_short_dcburning"] = _func_155( "vfx/lights/lab/spotlight_short_dcburning" );
    level._ID1426["ceiling_dust_default_runner"] = _func_155( "fx/dust/ceiling_dust_default_runner" );
    level._ID1426["heli_hit_2"] = _func_155( "fx/explosions/heli_hit_2" );
    level._ID1426["smoke_trail_black_heli_fire"] = _func_155( "fx/smoke/smoke_trail_black_heli_fire" );
    level._ID1426["heli_squad_smoke_dust"] = _func_155( "fx/smoke/heli_squad_smoke_dust" );
    level._ID1426["dark_shadow"] = _func_155( "fx/misc/dark_shadow" );
    level._ID1426["heli_dust_player_dcburning"] = _func_155( "fx/treadfx/heli_dust_player_dcburning" );
    level._ID1426["powerline_runner_far"] = _func_155( "fx/explosions/powerline_runner_far" );
    level._ID1426["light_white_flare"] = _func_155( "vfx/lights/light_white_flare" );
    level._ID1426["light_yellow_flare"] = _func_155( "vfx/lights/light_yellow_flare" );
    level._ID1426["fire_ground"] = _func_155( "fx/fire/fire_ground" );
    level._ID1426["destroyed_roof_smoke_dcburning"] = _func_155( "fx/smoke/destroyed_roof_smoke_dcburning" );
    level._ID1426["water_pipe_leak_dcburning"] = _func_155( "vfx/water/water_pipe_leak_dcburning" );
    level._ID1426["steam_ambient_corridor_light_dcburning"] = _func_155( "vfx/steam/steam_ambient_corridor_light_dcburning" );
    level._ID1426["greenhouse_smoke"] = _func_155( "vfx/smoke/greenhouse_smoke" );
    level._ID1426["smoldering_stumps"] = _func_155( "vfx/smoke/smoldering_stumps" );
    level._ID1426["smoldering_wooden_limbs"] = _func_155( "vfx/smoke/smoldering_wooden_limbs" );
    level._ID1426["water_leak_wall"] = _func_155( "fx/water/water_leak_wall" );
    level._ID1426["vehicle_explosion_m1a1"] = _func_155( "fx/explosions/vehicle_explosion_m1a1" );
    level._ID1426["powerline_light_far"] = _func_155( "fx/explosions/powerline_light_far" );
    level._ID1426["firehydrant_exp_dcburning"] = _func_155( "fx/props/firehydrant_exp_dcburning" );
    level._ID1426["firehydrant_spray_10sec_dcburning"] = _func_155( "fx/props/firehydrant_spray_10sec_dcburning" );
    level._ID1426["simple_green_light"] = _func_155( "vfx/lights/simple_green_light" );
    level._ID1426["battlefield_entrance_dcburning"] = _func_155( "vfx/animal/dlc/battlefield_entrance_dcburning" );
    level._ID1426["thick_dark_smoke_giant_close_dcburning"] = _func_155( "fx/smoke/thick_dark_smoke_giant_close_dcburning" );
    level._ID1426["drips_fast_evaporate"] = _func_155( "fx/misc/drips_fast_evaporate" );
    level._ID1426["ch46e_explosion"] = _func_155( "vfx/explosion/ch46e_explosion" );
    level._ID1426["dcburning_fog_vista_lrg"] = _func_155( "vfx/map/dcburning/dcburning_fog_vista_lrg" );
    level._ID1426["smoke_linger_vista_lrg"] = _func_155( "vfx/smoke/smoke_linger_vista_lrg" );
    level._ID1426["dcburning_vista_smk_column_giant"] = _func_155( "vfx/map/dcburning/dcburning_vista_smk_column_giant" );
    level._ID1426["thick_dark_smoke_giant_dcburning_chd_02"] = _func_155( "fx/smoke/thick_dark_smoke_giant_dcburning_chd_02" );
    level._ID1426["ceiling_dust_runner_dcburning"] = _func_155( "fx/dust/ceiling_dust_runner_dcburning" );
    level._ID1426["dcburning_vista_smoke_stacks"] = _func_155( "vfx/map/dcburning/dcburning_vista_smoke_stacks" );
    level._ID1426["smoke_burning_vista_01"] = _func_155( "vfx/smoke/smoke_burning_vista_01" );
    level._ID1426["smoke_burning_vista_03"] = _func_155( "vfx/smoke/smoke_burning_vista_03" );
    level._ID1426["smoke_burning_vista_04"] = _func_155( "vfx/smoke/smoke_burning_vista_04" );
    level._ID1426["smoke_burning_vista_05"] = _func_155( "vfx/smoke/smoke_burning_vista_05" );
    level._ID1426["godray_dcburning"] = _func_155( "vfx/lights/godray_dcburning" );
    level._ID1426["heat_distortion_heaters_dcburning"] = _func_155( "vfx/distortion/heat_distortion_heaters_dcburning" );
    level._ID1426["traffic_light_red_blinking"] = _func_155( "fx/misc/traffic_light_red_blinking" );
    level._ID1426["firelp_large_pm_2_dcburning"] = _func_155( "fx/fire/firelp_large_pm_2_dcburning" );
    level._ID1426["ash_ember_single_dcburning"] = _func_155( "vfx/ash/ash_ember_single_dcburning" );
    level._ID1426["dcburning_fire_building_near"] = _func_155( "vfx/fire/dcburning_fire_building_near" );
    level._ID1426["wind_blowing_papers_dcburning"] = _func_155( "vfx/map/dcburning/wind_blowing_papers_dcburning" );
    level._ID1426["fire_tree_distortion"] = _func_155( "fx/fire/fire_tree_distortion" );
    level._ID1426["fire_tree"] = _func_155( "vfx/map/dcburning/fire_tree" );
    level._ID1426["fire_tree_embers"] = _func_155( "vfx/map/dcburning/fire_tree_embers" );
    level._ID1426["water_sprinkler_spray_ceiling_lp"] = _func_155( "vfx/map/dcburning/water_sprinkler_spray_ceiling_lp" );
    level._ID1426["fire_tree_smoke"] = _func_155( "vfx/map/dcburning/fire_tree_smoke" );
    level._ID1426["light_rays_moving_window_dcburning_large"] = _func_155( "vfx/map/dcburning/light_rays_moving_window_dcburning_large" );
    level._ID1426["battlefield_ash_amber_far_dcburning"] = _func_155( "vfx/ash/battlefield_ash_amber_far_dcburning" );
    level._ID1426["generator_steam_windy_sm"] = _func_155( "vfx/steam/generator_steam_windy_sm" );
    level._ID1426["firelp_med_pm_longsmoke_dcburning"] = _func_155( "fx/fire/firelp_med_pm_longsmoke_dcburning" );
    level._ID1426["ch46_take_off"] = _func_155( "vfx/unique/ch46_take_off" );
    level._ID1426["windy_fire"] = _func_155( "fx/fire/windy_fire" );
    level._ID1426["firelp_large_pm_dcburning_nosmoke"] = _func_155( "fx/fire/firelp_large_pm_dcburning_nosmoke" );
    level._ID1426["firelp_med_pm_nosmoke"] = _func_155( "fx/fire/firelp_med_pm_nosmoke" );
    level._ID1426["fire_smoke_beam"] = _func_155( "vfx/smoke/fire_smoke_beam" );
    level._ID1426["projector"] = _func_155( "vfx/unique/projector" );
    level._ID1426["fire_smoke_beam_2"] = _func_155( "vfx/smoke/fire_smoke_beam_2" );
    level._ID1426["inside_building_embers_ash"] = _func_155( "vfx/ash/inside_building_embers_ash" );
    level._ID1426["steam_sm_vent_slow"] = _func_155( "vfx/steam/steam_sm_vent_slow" );
    level._ID1426["flare_light_tiny_dcburning"] = _func_155( "vfx/lensflare/flare_light_tiny_dcburning" );
    level._ID1426["flare_light_small_dcburning"] = _func_155( "vfx/lensflare/flare_light_small_dcburning" );
    level._ID1426["square_flare_light_dcburning"] = _func_155( "vfx/lensflare/square_flare_light_dcburning" );
    level._ID1426["fire_on_plank"] = _func_155( "fx/fire/fire_on_plank" );
    level._ID1426["obelisk_falling_dirt"] = _func_155( "vfx/rock/obelisk_falling_dirt" );
    level._ID1426["ground_smoke_heat"] = _func_155( "fx/distortion/ground_smoke_heat" );
    level._ID1426["thick_smk_cam_effect"] = _func_155( "vfx/smoke/thick_smk_cam_effect" );
    level._ID1426["ceiling_smoke"] = _func_155( "fx/maps/dcburning/ceiling_smoke" );
    level._ID1426["concrete_impact_large_chunks_dcburning"] = _func_155( "vfx/explosion/concrete_impact_large_chunks_dcburning" );
    level._ID1426["dcburning_flag_fire_verticle"] = _func_155( "vfx/fire/dcburning_flag_fire_verticle" );
    level._ID1426["wwii_memorial_dcburning_exp_chunks"] = _func_155( "vfx/destructible/wwii_memorial_dcburning_exp_chunks" );
    level._ID1426["light_glow_white_lamp"] = _func_155( "fx/misc/light_glow_white_lamp_dcburning" );
    level._ID1426["building01_main_smoke_02"] = _func_155( "vfx/map/dcburning/building01_main_smoke_02" );
    level._ID1426["heli_dust_dcburning_far"] = _func_155( "vfx/treadfx/heli_dust_dcburning_far" );
    level._ID1426["dcburning_fire_vista"] = _func_155( "vfx/fire/dcburning_fire_vista" );
    level._ID1426["dcburning_fire_vista_2"] = _func_155( "vfx/fire/dcburning_fire_vista_2" );
    level._ID1426["dcburning_fire_vista_3"] = _func_155( "vfx/fire/dcburning_fire_vista_3" );
    level._ID1426["thick_dark_smoke_giant_short_dcburning"] = _func_155( "fx/smoke/thick_dark_smoke_giant_short_dcburning" );
    level._ID1426["heli_dust_dcburning_roof"] = _func_155( "fx/treadfx/heli_dust_dcburning_roof" );
    level._ID1426["heat_light_heaters_dcburning"] = _func_155( "vfx/distortion/heat_light_heaters_dcburning" );
    level._ID1426["flare_light_small_blink_dcburning"] = _func_155( "vfx/lensflare/flare_light_small_blink_dcburning" );
    level._ID1426["block_occ_queries_sprite"] = _func_155( "vfx/unique/block_occ_queries_sprite" );
    _ID46573::_ID616();
    _ID47080::_ID616();
    thread _unknown_12A5();
    level thread _unknown_105C();
}

_ID38735()
{
    var_0 = "fx/treadfx/heli_dust_player_dcburning";
    var_1 = "vfx/treadfx/heli_dust_dcburning";
    _ID42400::_ID33619( "script_vehicle_littlebird_bench", "asphalt", "fx/treadfx/heli_dust_dcburning_roof", "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "brick", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "bark", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "carpet", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "cloth", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "concrete", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "dirt", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "flesh", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "foliage", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "glass", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "grass", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "gravel", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "ice", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "metal", undefined, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "mud", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "paper", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "plaster", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "rock", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "sand", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "snow", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "slush", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "wood", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "asphalt", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "ceramic", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "plastic", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "rubber", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "cushion", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "fruit", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "paintedmetal", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "default", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_blackhawk_minigun", "none", var_0, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "brick", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "bark", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "carpet", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "cloth", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "concrete", "vfx/treadfx/heli_dust_dcburning_far", "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "dirt", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "flesh", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "foliage", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "glass", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "grass", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "gravel", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "ice", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "metal", undefined, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "mud", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "paper", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "plaster", "vfx/treadfx/heli_dust_dcburning_far", "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "rock", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "sand", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "snow", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "slush", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "wood", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "asphalt", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "ceramic", "vfx/treadfx/heli_dust_dcburning_far", "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "plastic", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "rubber", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "cushion", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "fruit", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "paintedmetal", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "default", var_1, "h1r_default_helicopter_wind" );
    _ID42400::_ID33619( "script_vehicle_mi28_flying_low", "none", var_1, "h1r_default_helicopter_wind" );
}

_ID46706( var_0 )
{
    while ( _func_02F( self ) )
    {
        self waittill( "damage",  var_5, var_4, var_3, var_2, var_1  );

        if ( !_func_02F( var_5 ) )
            continue;

        if ( !_func_02F( var_2 ) )
            continue;

        if ( !_func_02F( var_1 ) )
            continue;

        if ( _func_1B3( var_2 ) )
            continue;

        if ( var_5 == "MOD_PROJECTILE" && var_1 > 999 )
            break;

        if ( var_5 == "MOD_PROJECTILE_SPLASH" && var_1 == 4000 )
            break;
    }

    _ID42407::_ID40118();
    self _meth_8265( var_0._ID740, 0 );
    thread maps\dcburning_aud::_ID43473();
    _func_192( 0.3, 1.5, level._ID794._ID740, 1600 );
    self _meth_828D( 80 );
    thread _unknown_170F();
    _ID42237::_ID3350( self._ID29965, ::_unknown_16AF, self );
    _func_157( _ID42237::_ID16299( "crash_main_01" ), self, "tag_deathfx" );
    _func_157( _ID42237::_ID16299( "chopper_smoke_trail_loop" ), self, "main_rotor_jnt" );

    while ( _func_0F3( self._ID740, var_0._ID740 ) > 100 )
        wait 0.1;

    thread _ID42407::_ID27079( "exp_tanker_vehicle" );
    thread maps\dcburning_aud::_ID45750();
    var_6 = _func_06A( "script_origin", self _meth_818C( "tag_deathfx" ) );
    _func_156( _ID42237::_ID16299( "crash_end_01" ), var_6._ID740 );
    _func_192( 0.3, 2, level._ID794._ID740, 1600 );
    self _meth_80B7();
    var_6 _meth_80B7();
}

_ID43167( var_0 )
{
    if ( self._ID31455 == 0 || self._ID31455 == 1 )
        return;

    if ( self._ID31455 == 7 )
    {
        self _meth_805A();
        return;
    }

    var_1 = "tag_detach_right";
    var_2 = 0;
    var_3 = undefined;

    if ( self._ID31455 == 2 || self._ID31455 == 3 || self._ID31455 == 4 )
        var_1 = "tag_detach_left";

    if ( self._ID31455 == 2 || self._ID31455 == 5 )
        var_3 = "little_bird_death_guy1";

    if ( self._ID31455 == 3 || self._ID31455 == 6 )
        var_3 = "little_bird_death_guy3";

    if ( self._ID31455 == 4 )
    {
        var_2 = 1;
        var_3 = "little_bird_death_guy2";
    }

    self._ID3189 = "generic";
    self _meth_80C5( 0 );
    self _meth_814B();
    self._ID34237 = 1;
    _ID42407::_ID10226( _func_0BA( 0.3, 1 ), _ID42237::_ID27077, "generic_death_falling" );
    var_4 = var_0 _meth_818C( var_1 );
    var_5 = var_0 _meth_818D( var_1 );
    var_6 = undefined;

    if ( var_2 )
        var_0 _ID42259::_ID3020( self, var_3, var_1 );
    else
    {
        var_6 = _func_06A( "script_origin", var_4 );
        var_6._ID65 = var_5;
        var_6 thread _unknown_184A( var_0, var_1 );
        var_6 thread _unknown_184D( var_0 );
        self _meth_8055();
        self _meth_8053( var_6 );
        var_7 = _func_03B( "ragdoll_rotvel_scale" );
        _func_0DB( "ragdoll_rotvel_scale", 100 );
        var_6 _ID42259::_ID3020( self, var_3 );
        self _meth_8055();
        _func_0DB( "ragdoll_rotvel_scale", var_7 );
    }

    if ( _func_02F( self ) )
        self _meth_8058();
}

_ID51301( var_0 )
{
    var_0 waittill( "death" );
    self _meth_80B7();
}

_ID47386( var_0, var_1 )
{
    var_0 endon( "death" );
    self endon( "death " );
    var_2 = undefined;

    for (;;)
    {
        wait 0.05;
        var_2 = var_0 _meth_818C( var_1 );
        self._ID740 = var_2;
    }
}

_ID54315()
{
    self _meth_829E( 100, 200 );
    self _meth_82A0( 1 );
    var_0 = 1400;
    var_1 = 200;
    var_2 = undefined;

    while ( _func_02F( self ) )
    {
        var_2 = self._ID65[1] - 300;
        self _meth_829C( var_0, var_1 );
        self _meth_8268( var_2 );
        wait 0.1;
    }
}

_ID49210( var_0 )
{
    var_1 = _func_1A1( "monument_heli_owned_destroyed", "targetname" );
    var_0 _meth_80B7();
    var_1 _meth_8059();
    _func_156( _ID42237::_ID16299( "ch46e_explosion" ), var_1._ID740 );
    var_1 thread _ID42237::_ID27077( "exp_tanker_vehicle" );
    var_2 = _func_06A( "script_origin", var_1._ID740 + ( 0, 0, 0 ) );
    var_2._ID65 = var_1._ID65;
    var_3 = _func_15B( _ID42237::_ID16299( "tanker_fire" ), var_2._ID740 );
    _func_15C( var_3 );
    _ID42237::_ID14413( "player_entering_top_elevator_area" );
    var_3 _meth_80B7();
    var_2 _meth_80B7();
}

_ID46518()
{
    var_0 = _func_1A2( "lamp_flare", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _unknown_19D6();
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "fx_floodlight_on", "targetname" );
    var_5 = var_4;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _unknown_1A05();
    }

    var_clear_2
    var_clear_0
}

_ID46433()
{
    _func_156( level._ID1426["lighthaze"], self._ID740 );
}

_ID51439()
{
    var_0 = _func_11F( self._ID65 );
    _func_156( level._ID1426["lensflare_floodlight_on"], self._ID740, var_0 );
}

_ID53720()
{

}

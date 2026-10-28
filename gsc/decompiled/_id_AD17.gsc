// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level._effect["_attack_heli_spotlight_ending"] = loadfx( "fx/misc/hunted_spotlight_model_dim" );
    level._id_A99B = loadfx( "vfx/unique/no_fx" );
    _id_D1D8();
    level._effect["vehicle_explosion_slamraam"] = loadfx( "fx/explosions/vehicle_explosion_slamraam" );
    level._effect["killshot"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit_dcemp" );
    level._effect["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_large_dcburning" );
    maps\_global_fx::_id_C1C4( "light_red_steady_FX_origin", "fx/misc/tower_light_red_steady_dcburning", -2 );
    maps\_global_fx::_id_C1C4( "flare_ambient_FX_origin", "fx/misc/flare_ambient_dcburning", -2, "flare_ambient_dcburning", "emt_road_flare_burn" );
    maps\_global_fx::_id_C1C4( "glow_stick_pile_FX_origin", "fx/misc/glow_stick_glow_pile_dcburning", -2 );
    maps\_global_fx::_id_C1C4( "light_glow_white_bulb_FX_origin", "fx/misc/light_glow_white_lamp_dcburning", -2 );
    level._effect["large_column"] = loadfx( "fx/props/dcburning_pillars" );
    level._effect["tv_explosion"] = loadfx( "fx/explosions/tv_explosion" );
    common_scripts\_destructible::_id_BDEC( "toy_firehydrant", "fx/props/firehydrant_exp", "fx/props/firehydrant_exp_dcburning" );
    common_scripts\_destructible::_id_BDEC( "toy_firehydrant", "fx/props/firehydrant_spray_10sec", "fx/props/firehydrant_spray_10sec_dcburning" );
    maps\_vehicle::build_deathfx_override( "script_vehicle_m1a1_abrams", "m1a1", "vehicle_m1a1_abrams", "fx/explosions/vehicle_explosion_m1a1", undefined, "exp_javelin_armor_destroy" );
    maps\_vehicle::build_deathfx_override( "script_vehicle_laatpv", "laatpv", "vehicle_laatpv", "fx/explosions/javelin_explosion_dcburn", undefined, "exp_javelin_armor_destroy" );
    maps\_vehicle::build_deathfx_override( "script_vehicle_ch46e_low", "seaknight", "vehicle_ch46e_low", "fx/explosions/javelin_explosion_dcburn", undefined, "exp_javelin_armor_destroy" );
    maps\_vehicle::build_deathfx_override( "script_vehicle_bradley", "bradley", "vehicle_bradley", "fx/explosions/javelin_explosion_dcburn", undefined, "exp_javelin_armor_destroy" );
    level._effect["turret_overheat_haze"] = loadfx( "fx/distortion/abrams_exhaust" );
    level._effect["turret_overheat_smoke"] = loadfx( "fx/distortion/armored_car_overheat" );
    level._effect["javelin_muzzle"] = loadfx( "fx/muzzleflashes/javelin_flash_wv" );
    level._effect["light_glow_white_bulb"] = loadfx( "fx/misc/light_glow_white_bulb" );
    level._effect["door_kick_dust"] = loadfx( "fx/dust/door_kick" );
    level._effect["dlight_laptop"] = loadfx( "fx/misc/dlight_laptop" );
    level._effect["large_vehicle_explosion"] = loadfx( "fx/explosions/large_vehicle_explosion" );
    level._effect["cheap_vehicle_explosion"] = loadfx( "fx/explosions/small_vehicle_explosion_low" );
    level._effect["cheap_mack_truck_explosion"] = loadfx( "fx/explosions/tanker_explosion_dcburn" );
    level._effect["tanker_fire"] = loadfx( "fx/fire/firelp_large_pm_dcburning" );
    level._effect["smoke_trail_black_heli"] = loadfx( "fx/smoke/smoke_trail_black_heli" );
    level._effect["dlight_blue"] = loadfx( "fx/misc/dlight_blue" );
    level._effect["dlight_red"] = loadfx( "fx/misc/aircraft_light_cockpit_red" );
    level._effect["player_death_explosion"] = loadfx( "fx/explosions/player_death_explosion" );
    level._effect["heat_shimmer_door"] = loadfx( "fx/distortion/abrams_exhaust" );
    level._effect["firelp_large_pm_nolight"] = loadfx( "fx/fire/firelp_large_pm_nolight" );
    level._effect["firelp_med_pm_nolight"] = loadfx( "fx/fire/firelp_med_pm_nolight" );
    level._effect["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight" );
    level._effect["crash_main_01"] = loadfx( "vfx/explosion/vehicle_aerial_explosion_small" );
    level._effect["crash_end_01"] = loadfx( "fx/explosions/helicopter_explosion_little_bird_dcburn" );
    level._effect["chopper_smoke_trail"] = loadfx( "fx/fire/fire_smoke_trail_L" );
    level._effect["chopper_smoke_trail_loop"] = loadfx( "fx/fire/fire_smoke_trail_loop" );
    level._effect["chopper_explosion"] = loadfx( "vfx/explosion/large_aerial_explo_bright" );
    level._effect["headshot"] = loadfx( "fx/impacts/flesh_hit_head_fatal_exit" );
    level._effect["headshot2"] = loadfx( "fx/impacts/flesh_hit_splat_large" );
    level._effect["headshot3"] = loadfx( "fx/impacts/flesh_hit_body_fatal_exit" );
    level._effect["headshot4"] = loadfx( "fx/impacts/sniper_escape_blood" );
    level._effect["bodyshot"] = loadfx( "fx/impacts/flesh_hit" );
    level._effect["thermal_body_gib"] = loadfx( "fx/impacts/thermal_body_gib" );
    level._effect["flare_ambient_dcburning"] = loadfx( "fx/misc/flare_ambient_dcburning" );
    level._effect["flare_ambient_nosparks"] = loadfx( "fx/misc/flare_ambient_nosparks" );
    level._effect["heat_shimmer_door"] = loadfx( "fx/distortion/abrams_exhaust" );
    level._effect["heli_dust_default"] = loadfx( "fx/treadfx/heli_dust_airlift" );
    level._effect["flare_runner_intro"] = loadfx( "fx/misc/flare_start" );
    level._effect["flare_runner"] = loadfx( "fx/misc/flare" );
    level._effect["flare_runner_fizzout"] = loadfx( "fx/misc/flare_end" );
    level.airstrikefx = loadfx( "fx/explosions/clusterbomb" );
    level._effect["powerline_runner"] = loadfx( "fx/explosions/powerline_runner" );
    level._effect["antiair_runner"] = loadfx( "fx/misc/antiair_runner_night" );
    level._effect["hallway_smoke_dark"] = loadfx( "fx/smoke/hallway_smoke_dark" );
    level._effect["thin_black_smoke_L"] = loadfx( "fx/smoke/thin_black_smoke_L" );
    level._effect["thick_white_smoke_giant"] = loadfx( "fx/smoke/thick_white_smoke_giant_dcburning" );
    level._effect["thick_dark_smoke_giant"] = loadfx( "fx/smoke/thick_dark_smoke_giant_dcburning" );
    level._effect["ground_smoke1200x200_dcburning"] = loadfx( "fx/smoke/ground_smoke1200x200_dcburning" );
    level._effect["ground_smoke600x150_dcburning"] = loadfx( "fx/smoke/ground_smoke600x150_dcburning" );
    level._effect["ground_smoke1200x1200_out_dcburning"] = loadfx( "fx/smoke/ground_smoke1200x1200_out_dcburning" );
    level._effect["battlefield_smoke_m_slow_dcburning"] = loadfx( "vfx/smoke/dlc/battlefield_smoke_m_slow_dcburning" );
    level._effect["ground_smoke1200x1200_out_near_dcburning"] = loadfx( "fx/smoke/ground_smoke1200x1200_out_near_dcburning" );
    level._effect["thick_dark_smoke_giant_reverse_dcburning"] = loadfx( "fx/smoke/thick_dark_smoke_giant_reverse_dcburning" );
    level._effect["battlefield_vf_dcburning"] = loadfx( "vfx/map/dcburning/battlefield_vf_dcburning" );
    level._effect["cloud_bank_cloud_filler_dcburning"] = loadfx( "fx/weather/cloud_bank_cloud_filler_dcburning" );
    level._effect["smoke_plume_01"] = loadfx( "vfx/smoke/smoke_plume_01" );
    level._effect["building01_main_smoke"] = loadfx( "vfx/map/dcburning/building01_main_smoke" );
    level._effect["thick_dark_smoke_giant_large_dcburning"] = loadfx( "fx/smoke/thick_dark_smoke_giant_large_dcburning" );
    level._effect["battlefield_smoke_slow_far_dcburning"] = loadfx( "vfx/smoke/dlc/battlefield_smoke_slow_far_dcburning" );
    level._effect["ground_whitesmoke_looping"] = loadfx( "fx/maps/paris/ground_whitesmoke_looping" );
    level._effect["thin_dark_smoke_giant_reverse_dcburning"] = loadfx( "fx/smoke/thin_dark_smoke_giant_reverse_dcburning" );
    level._effect["thin_dark_smoke_giant_dcburning"] = loadfx( "fx/smoke/thin_dark_smoke_giant_dcburning" );
    level._effect["smoke_plume_02"] = loadfx( "vfx/smoke/smoke_plume_02" );
    level._effect["thick_dark_smoke_giant_small_dcburning"] = loadfx( "fx/smoke/thick_dark_smoke_giant_small_dcburning" );
    level._effect["dcburning_smk_stacks_lrg_01"] = loadfx( "vfx/map/dcburning/dcburning_smk_stacks_lrg_01" );
    level._effect["dcburning_smk_stacks_lrg_02"] = loadfx( "vfx/map/dcburning/dcburning_smk_stacks_lrg_02" );
    level._effect["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm_dcburning" );
    level._effect["firelp_small_pm_a"] = loadfx( "fx/fire/firelp_small_pm_a" );
    level._effect["firelp_med_pm"] = loadfx( "fx/fire/firelp_med_pm_dcburning" );
    level._effect["firelp_large_pm"] = loadfx( "fx/fire/firelp_large_pm_dcburning" );
    level._effect["firelp_vhc_lrg_pm_farview"] = loadfx( "fx/fire/firelp_vhc_lrg_pm_farview" );
    level._effect["firelp_small_pm_nolight_dcburning"] = loadfx( "fx/fire/firelp_small_pm_nolight_dcburning" );
    level._effect["firelp_wide_pm_dcburning"] = loadfx( "fx/fire/firelp_wide_pm_dcburning" );
    level._effect["firelp_med_pm_dcburning_2"] = loadfx( "fx/fire/firelp_med_pm_dcburning_2" );
    level._effect["firelp_med_pm_dcburning_2_nosmoke"] = loadfx( "fx/fire/firelp_med_pm_dcburning_2_nosmoke" );
    level._effect["fire_truck_tree"] = loadfx( "fx/fire/fire_truck_tree" );
    level._effect["firelp_large_far"] = loadfx( "fx/fire/firelp_large_far" );
    level._effect["drips_slow"] = loadfx( "fx/misc/drips_slow" );
    level._effect["drips_fast"] = loadfx( "fx/misc/drips_fast" );
    level._effect["pipe_broken_water"] = loadfx( "fx/water/pipe_broken_water" );
    level._effect["water_pipe_spray_splash_small"] = loadfx( "fx/water/water_pipe_spray_splash_small" );
    level._effect["water_pipe_spray"] = loadfx( "fx/water/water_pipe_spray" );
    level._effect["cgo_ship_puddle_small"] = loadfx( "fx/distortion/cgo_ship_puddle_small" );
    level._effect["rock_falling_small_runner"] = loadfx( "fx/misc/rock_falling_small_runner" );
    level._effect["water_pipe_gush_sm"] = loadfx( "vfx/water/water_pipe_gush_sm" );
    level._effect["water_gush_pipe_small"] = loadfx( "vfx/water/water_gush_pipe_small" );
    level._effect["water_leak_pipe_large"] = loadfx( "vfx/water/water_leak_pipe_large" );
    level._effect["large_explosion"] = loadfx( "vfx/explosion/large_explosion" );
    level._effect["large_aerial_explo_bright"] = loadfx( "vfx/explosion/large_aerial_explo_bright" );
    level._effect["ceiling_dust_default"] = loadfx( "fx/dust/ceiling_dust_default" );
    level._effect["commerce_window_shatter"] = loadfx( "fx/props/car_glass_large" );
    level._effect["powerline_runner_cheap"] = loadfx( "fx/explosions/powerline_runner_cheap" );
    level._effect["light_rays_moving_window_dcburning"] = loadfx( "vfx/map/dcburning/light_rays_moving_window_dcburning" );
    level._effect["fx_sunflare_airlift"] = loadfx( "vfx/lensflare/fx_sunflare_airlift" );
    level._effect["street_light_flare"] = loadfx( "vfx/lights/street_light_flare" );
    level._effect["capitol_burning"] = loadfx( "vfx/map/dcburning/capitol_burning" );
    level._effect["dust_wind_fast"] = loadfx( "fx/dust/dust_wind_fast" );
    level._effect["ash_falling_large"] = loadfx( "vfx/dust/ash_falling_large" );
    level._effect["dcburning_building_fire_flicker"] = loadfx( "vfx/map/dcburning/dcburning_building_fire_flicker" );
    level._effect["dcburning_building_fire_flicker_dlight"] = loadfx( "vfx/map/dcburning/dcburning_building_fire_flicker_dlight" );
    level._effect["building01_sec_smoke"] = loadfx( "vfx/map/dcburning/building01_sec_smoke" );
    level._effect["aftermath_fire_building_far"] = loadfx( "vfx/fire/aftermath_fire_building_far" );
    level._effect["dcburning_fire_building_far"] = loadfx( "vfx/fire/dcburning_fire_building_far" );
    level._effect["dcburning_fire_building_small"] = loadfx( "vfx/fire/dcburning_fire_building_small" );
    level._effect["dcburning_fire_building_smoke"] = loadfx( "vfx/smoke/dcburning_fire_building_smoke" );
    level._effect["trench_ambiance_dcburning"] = loadfx( "vfx/animal/dlc/trench_ambiance_dcburning" );
    level._effect["dcburning_steam_building_vent_top"] = loadfx( "vfx/steam/dcburning_steam_building_vent_top" );
    level._effect["dcburning_dust_ambient_interior"] = loadfx( "vfx/map/dcburning/dcburning_dust_ambient_interior" );
    level._effect["lensflare_floodlight_on"] = loadfx( "vfx/lights/lensflare_floodlight_on_yellow_dcburning" );
    level._effect["ceiling_dust_wide"] = loadfx( "fx/dust/ceiling_dust_wide" );
    level._effect["ash_smoke_falling_slow"] = loadfx( "vfx/dust/ash_smoke_falling_slow" );
    level._effect["embers_vortex"] = loadfx( "vfx/fire/embers_vortex" );
    level._effect["burning_wood_heat"] = loadfx( "fx/distortion/burning_wood_heat" );
    level._effect["ceiling_smoke_dcburning"] = loadfx( "fx/smoke/ceiling_smoke_dcburning" );
    level._effect["c4_slamraam_explosion"] = loadfx( "fx/explosions/c4_slamraam_explosion" );
    level._effect["fire_tarp_dcburning"] = loadfx( "fx/fire/fire_tarp_dcburning" );
    level._effect["light_rays_moving_window_dcburning_small"] = loadfx( "vfx/map/dcburning/light_rays_moving_window_dcburning_small" );
    level._effect["light_rays_destroyed_window_dcburning"] = loadfx( "vfx/map/dcburning/light_rays_destroyed_window_dcburning" );
    level._effect["ground_smoke_heavy_dcburning"] = loadfx( "fx/smoke/ground_smoke_heavy_dcburning" );
    level._effect["fire_smoke_trail_loop"] = loadfx( "fx/fire/fire_smoke_trail_loop" );
    level._effect["vehicle_aerial_explosion"] = loadfx( "vfx/explosion/vehicle_aerial_explosion" );
    level._effect["lighthaze"] = loadfx( "fx/misc/lighthaze" );
    level._effect["artilleryexp_dirt_brown_2_dcburning"] = loadfx( "fx/explosions/artilleryexp_dirt_brown_2_dcburning" );
    level._effect["dcburn_explosion_large"] = loadfx( "fx/explosions/dcburn_explosion_large" );
    level._effect["heli_hit"] = loadfx( "fx/explosions/heli_hit" );
    level._effect["falling_dirt_big"] = loadfx( "fx/dust/falling_dirt_big" );
    level._effect["obelisk_smoke"] = loadfx( "fx/smoke/obelisk_smoke" );
    level._effect["smoke_crater_smolder_black_dcburning"] = loadfx( "vfx/smoke/smoke_crater_smolder_black_dcburning" );
    level._effect["spark_idle_nospark"] = loadfx( "vfx/sparks/spark_idle_nospark" );
    level._effect["smoke_capitol"] = loadfx( "fx/smoke/smoke_capitol" );
    level._effect["spotlight_dcburning"] = loadfx( "vfx/lights/lab/spotlight_dcburning" );
    level._effect["spotlight_short_dcburning"] = loadfx( "vfx/lights/lab/spotlight_short_dcburning" );
    level._effect["ceiling_dust_default_runner"] = loadfx( "fx/dust/ceiling_dust_default_runner" );
    level._effect["heli_hit_2"] = loadfx( "fx/explosions/heli_hit_2" );
    level._effect["smoke_trail_black_heli_fire"] = loadfx( "fx/smoke/smoke_trail_black_heli_fire" );
    level._effect["heli_squad_smoke_dust"] = loadfx( "fx/smoke/heli_squad_smoke_dust" );
    level._effect["dark_shadow"] = loadfx( "fx/misc/dark_shadow" );
    level._effect["heli_dust_player_dcburning"] = loadfx( "fx/treadfx/heli_dust_player_dcburning" );
    level._effect["powerline_runner_far"] = loadfx( "fx/explosions/powerline_runner_far" );
    level._effect["light_white_flare"] = loadfx( "vfx/lights/light_white_flare" );
    level._effect["light_yellow_flare"] = loadfx( "vfx/lights/light_yellow_flare" );
    level._effect["fire_ground"] = loadfx( "fx/fire/fire_ground" );
    level._effect["destroyed_roof_smoke_dcburning"] = loadfx( "fx/smoke/destroyed_roof_smoke_dcburning" );
    level._effect["water_pipe_leak_dcburning"] = loadfx( "vfx/water/water_pipe_leak_dcburning" );
    level._effect["steam_ambient_corridor_light_dcburning"] = loadfx( "vfx/steam/steam_ambient_corridor_light_dcburning" );
    level._effect["greenhouse_smoke"] = loadfx( "vfx/smoke/greenhouse_smoke" );
    level._effect["smoldering_stumps"] = loadfx( "vfx/smoke/smoldering_stumps" );
    level._effect["smoldering_wooden_limbs"] = loadfx( "vfx/smoke/smoldering_wooden_limbs" );
    level._effect["water_leak_wall"] = loadfx( "fx/water/water_leak_wall" );
    level._effect["vehicle_explosion_m1a1"] = loadfx( "fx/explosions/vehicle_explosion_m1a1" );
    level._effect["powerline_light_far"] = loadfx( "fx/explosions/powerline_light_far" );
    level._effect["firehydrant_exp_dcburning"] = loadfx( "fx/props/firehydrant_exp_dcburning" );
    level._effect["firehydrant_spray_10sec_dcburning"] = loadfx( "fx/props/firehydrant_spray_10sec_dcburning" );
    level._effect["simple_green_light"] = loadfx( "vfx/lights/simple_green_light" );
    level._effect["battlefield_entrance_dcburning"] = loadfx( "vfx/animal/dlc/battlefield_entrance_dcburning" );
    level._effect["thick_dark_smoke_giant_close_dcburning"] = loadfx( "fx/smoke/thick_dark_smoke_giant_close_dcburning" );
    level._effect["drips_fast_evaporate"] = loadfx( "fx/misc/drips_fast_evaporate" );
    level._effect["ch46e_explosion"] = loadfx( "vfx/explosion/ch46e_explosion" );
    level._effect["dcburning_fog_vista_lrg"] = loadfx( "vfx/map/dcburning/dcburning_fog_vista_lrg" );
    level._effect["smoke_linger_vista_lrg"] = loadfx( "vfx/smoke/smoke_linger_vista_lrg" );
    level._effect["dcburning_vista_smk_column_giant"] = loadfx( "vfx/map/dcburning/dcburning_vista_smk_column_giant" );
    level._effect["thick_dark_smoke_giant_dcburning_chd_02"] = loadfx( "fx/smoke/thick_dark_smoke_giant_dcburning_chd_02" );
    level._effect["ceiling_dust_runner_dcburning"] = loadfx( "fx/dust/ceiling_dust_runner_dcburning" );
    level._effect["dcburning_vista_smoke_stacks"] = loadfx( "vfx/map/dcburning/dcburning_vista_smoke_stacks" );
    level._effect["smoke_burning_vista_01"] = loadfx( "vfx/smoke/smoke_burning_vista_01" );
    level._effect["smoke_burning_vista_03"] = loadfx( "vfx/smoke/smoke_burning_vista_03" );
    level._effect["smoke_burning_vista_04"] = loadfx( "vfx/smoke/smoke_burning_vista_04" );
    level._effect["smoke_burning_vista_05"] = loadfx( "vfx/smoke/smoke_burning_vista_05" );
    level._effect["godray_dcburning"] = loadfx( "vfx/lights/godray_dcburning" );
    level._effect["heat_distortion_heaters_dcburning"] = loadfx( "vfx/distortion/heat_distortion_heaters_dcburning" );
    level._effect["traffic_light_red_blinking"] = loadfx( "fx/misc/traffic_light_red_blinking" );
    level._effect["firelp_large_pm_2_dcburning"] = loadfx( "fx/fire/firelp_large_pm_2_dcburning" );
    level._effect["ash_ember_single_dcburning"] = loadfx( "vfx/ash/ash_ember_single_dcburning" );
    level._effect["dcburning_fire_building_near"] = loadfx( "vfx/fire/dcburning_fire_building_near" );
    level._effect["wind_blowing_papers_dcburning"] = loadfx( "vfx/map/dcburning/wind_blowing_papers_dcburning" );
    level._effect["fire_tree_distortion"] = loadfx( "fx/fire/fire_tree_distortion" );
    level._effect["fire_tree"] = loadfx( "vfx/map/dcburning/fire_tree" );
    level._effect["fire_tree_embers"] = loadfx( "vfx/map/dcburning/fire_tree_embers" );
    level._effect["water_sprinkler_spray_ceiling_lp"] = loadfx( "vfx/map/dcburning/water_sprinkler_spray_ceiling_lp" );
    level._effect["fire_tree_smoke"] = loadfx( "vfx/map/dcburning/fire_tree_smoke" );
    level._effect["light_rays_moving_window_dcburning_large"] = loadfx( "vfx/map/dcburning/light_rays_moving_window_dcburning_large" );
    level._effect["battlefield_ash_amber_far_dcburning"] = loadfx( "vfx/ash/battlefield_ash_amber_far_dcburning" );
    level._effect["generator_steam_windy_sm"] = loadfx( "vfx/steam/generator_steam_windy_sm" );
    level._effect["firelp_med_pm_longsmoke_dcburning"] = loadfx( "fx/fire/firelp_med_pm_longsmoke_dcburning" );
    level._effect["ch46_take_off"] = loadfx( "vfx/unique/ch46_take_off" );
    level._effect["windy_fire"] = loadfx( "fx/fire/windy_fire" );
    level._effect["firelp_large_pm_dcburning_nosmoke"] = loadfx( "fx/fire/firelp_large_pm_dcburning_nosmoke" );
    level._effect["firelp_med_pm_nosmoke"] = loadfx( "fx/fire/firelp_med_pm_nosmoke" );
    level._effect["fire_smoke_beam"] = loadfx( "vfx/smoke/fire_smoke_beam" );
    level._effect["projector"] = loadfx( "vfx/unique/projector" );
    level._effect["fire_smoke_beam_2"] = loadfx( "vfx/smoke/fire_smoke_beam_2" );
    level._effect["inside_building_embers_ash"] = loadfx( "vfx/ash/inside_building_embers_ash" );
    level._effect["steam_sm_vent_slow"] = loadfx( "vfx/steam/steam_sm_vent_slow" );
    level._effect["flare_light_tiny_dcburning"] = loadfx( "vfx/lensflare/flare_light_tiny_dcburning" );
    level._effect["flare_light_small_dcburning"] = loadfx( "vfx/lensflare/flare_light_small_dcburning" );
    level._effect["square_flare_light_dcburning"] = loadfx( "vfx/lensflare/square_flare_light_dcburning" );
    level._effect["fire_on_plank"] = loadfx( "fx/fire/fire_on_plank" );
    level._effect["obelisk_falling_dirt"] = loadfx( "vfx/rock/obelisk_falling_dirt" );
    level._effect["ground_smoke_heat"] = loadfx( "fx/distortion/ground_smoke_heat" );
    level._effect["thick_smk_cam_effect"] = loadfx( "vfx/smoke/thick_smk_cam_effect" );
    level._effect["ceiling_smoke"] = loadfx( "fx/maps/dcburning/ceiling_smoke" );
    level._effect["concrete_impact_large_chunks_dcburning"] = loadfx( "vfx/explosion/concrete_impact_large_chunks_dcburning" );
    level._effect["dcburning_flag_fire_verticle"] = loadfx( "vfx/fire/dcburning_flag_fire_verticle" );
    level._effect["wwii_memorial_dcburning_exp_chunks"] = loadfx( "vfx/destructible/wwii_memorial_dcburning_exp_chunks" );
    level._effect["light_glow_white_lamp"] = loadfx( "fx/misc/light_glow_white_lamp_dcburning" );
    level._effect["building01_main_smoke_02"] = loadfx( "vfx/map/dcburning/building01_main_smoke_02" );
    level._effect["heli_dust_dcburning_far"] = loadfx( "vfx/treadfx/heli_dust_dcburning_far" );
    level._effect["dcburning_fire_vista"] = loadfx( "vfx/fire/dcburning_fire_vista" );
    level._effect["dcburning_fire_vista_2"] = loadfx( "vfx/fire/dcburning_fire_vista_2" );
    level._effect["dcburning_fire_vista_3"] = loadfx( "vfx/fire/dcburning_fire_vista_3" );
    level._effect["thick_dark_smoke_giant_short_dcburning"] = loadfx( "fx/smoke/thick_dark_smoke_giant_short_dcburning" );
    level._effect["heli_dust_dcburning_roof"] = loadfx( "fx/treadfx/heli_dust_dcburning_roof" );
    level._effect["heat_light_heaters_dcburning"] = loadfx( "vfx/distortion/heat_light_heaters_dcburning" );
    level._effect["flare_light_small_blink_dcburning"] = loadfx( "vfx/lensflare/flare_light_small_blink_dcburning" );
    level._effect["block_occ_queries_sprite"] = loadfx( "vfx/unique/block_occ_queries_sprite" );
    _id_B5ED::main();
    _id_B7E8::main();
    thread _id_B5B6();
    level thread treadfx_override();
}

treadfx_override()
{
    var_0 = "fx/treadfx/heli_dust_player_dcburning";
    var_1 = "vfx/treadfx/heli_dust_dcburning";
    maps\_treadfx::setvehiclefx( "script_vehicle_littlebird_bench", "asphalt", "fx/treadfx/heli_dust_dcburning_roof", "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "brick", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "bark", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "carpet", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "cloth", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "concrete", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "dirt", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "flesh", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "foliage", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "glass", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "grass", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "gravel", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "ice", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "metal", undefined, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "mud", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "paper", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "plaster", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "rock", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "sand", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "snow", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "slush", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "wood", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "asphalt", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "ceramic", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "plastic", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "rubber", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "cushion", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "fruit", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "paintedmetal", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "default", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk_minigun", "none", var_0, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "brick", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "bark", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "carpet", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "cloth", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "concrete", "vfx/treadfx/heli_dust_dcburning_far", "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "dirt", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "flesh", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "foliage", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "glass", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "grass", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "gravel", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "ice", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "metal", undefined, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "mud", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "paper", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "plaster", "vfx/treadfx/heli_dust_dcburning_far", "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "rock", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "sand", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "snow", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "slush", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "wood", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "asphalt", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "ceramic", "vfx/treadfx/heli_dust_dcburning_far", "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "plastic", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "rubber", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "cushion", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "fruit", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "paintedmetal", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "default", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_mi28_flying_low", "none", var_1, "h1r_default_helicopter_wind" );
}

_id_B672( var_0 )
{
    while ( isdefined( self ) )
    {
        self waittill( "damage", var_1, var_2, var_3, var_4, var_5 );

        if ( !isdefined( var_5 ) )
            continue;

        if ( !isdefined( var_2 ) )
            continue;

        if ( !isdefined( var_1 ) )
            continue;

        if ( isplayer( var_2 ) )
            continue;

        if ( var_5 == "MOD_PROJECTILE" && var_1 > 999 )
            break;

        if ( var_5 == "MOD_PROJECTILE_SPLASH" && var_1 == 4000 )
            break;
    }

    maps\_utility::vehicle_detachfrompath();
    self setvehgoalpos( var_0.origin, 0 );
    thread maps\dcburning_aud::_id_A9D1();
    earthquake( 0.3, 1.5, level.player.origin, 1600 );
    self vehicle_setspeed( 80 );
    thread _id_D42B();
    common_scripts\utility::array_thread( self.riders, ::_id_A89F, self );
    playfxontag( common_scripts\utility::getfx( "crash_main_01" ), self, "tag_deathfx" );
    playfxontag( common_scripts\utility::getfx( "chopper_smoke_trail_loop" ), self, "main_rotor_jnt" );

    while ( distance( self.origin, var_0.origin ) > 100 )
        wait 0.1;

    thread maps\_utility::play_sound_on_entity( "exp_tanker_vehicle" );
    thread maps\dcburning_aud::_id_B2B6();
    var_6 = spawn( "script_origin", self gettagorigin( "tag_deathfx" ) );
    playfx( common_scripts\utility::getfx( "crash_end_01" ), var_6.origin );
    earthquake( 0.3, 2, level.player.origin, 1600 );
    self delete();
    var_6 delete();
}

_id_A89F( var_0 )
{
    if ( self.script_startingposition == 0 || self.script_startingposition == 1 )
        return;

    if ( self.script_startingposition == 7 )
    {
        self hide();
        return;
    }

    var_1 = "tag_detach_right";
    var_2 = 0;
    var_3 = undefined;

    if ( self.script_startingposition == 2 || self.script_startingposition == 3 || self.script_startingposition == 4 )
        var_1 = "tag_detach_left";

    if ( self.script_startingposition == 2 || self.script_startingposition == 5 )
        var_3 = "little_bird_death_guy1";

    if ( self.script_startingposition == 3 || self.script_startingposition == 6 )
        var_3 = "little_bird_death_guy3";

    if ( self.script_startingposition == 4 )
    {
        var_2 = 1;
        var_3 = "little_bird_death_guy2";
    }

    self.animname = "generic";
    self setcontents( 0 );
    self stopanimscripted();
    self.skipdeathanim = 1;
    maps\_utility::delaythread( randomfloatrange( 0.3, 1 ), common_scripts\utility::play_sound_in_space, "generic_death_falling" );
    var_4 = var_0 gettagorigin( var_1 );
    var_5 = var_0 gettagangles( var_1 );
    var_6 = undefined;

    if ( var_2 )
        var_0 maps\_anim::anim_generic( self, var_3, var_1 );
    else
    {
        var_6 = spawn( "script_origin", var_4 );
        var_6.angles = var_5;
        var_6 thread _id_B91A( var_0, var_1 );
        var_6 thread _id_C865( var_0 );
        self unlink();
        self linkto( var_6 );
        var_7 = getdvarfloat( "ragdoll_rotvel_scale" );
        setsaveddvar( "ragdoll_rotvel_scale", 100 );
        var_6 maps\_anim::anim_generic( self, var_3 );
        self unlink();
        setsaveddvar( "ragdoll_rotvel_scale", var_7 );
    }

    if ( isdefined( self ) )
        self kill();
}

_id_C865( var_0 )
{
    var_0 waittill( "death" );
    self delete();
}

_id_B91A( var_0, var_1 )
{
    var_0 endon( "death" );
    self endon( "death " );
    var_2 = undefined;

    for (;;)
    {
        wait 0.05;
        var_2 = var_0 gettagorigin( var_1 );
        self.origin = var_2;
    }
}

_id_D42B()
{
    self setmaxpitchroll( 100, 200 );
    self setturningability( 1 );
    var_0 = 1400;
    var_1 = 200;
    var_2 = undefined;

    while ( isdefined( self ) )
    {
        var_2 = self.angles[1] - 300;
        self setyawspeed( var_0, var_1 );
        self settargetyaw( var_2 );
        wait 0.1;
    }
}

_id_C03A( var_0 )
{
    var_1 = getent( "monument_heli_owned_destroyed", "targetname" );
    var_0 delete();
    var_1 show();
    playfx( common_scripts\utility::getfx( "ch46e_explosion" ), var_1.origin );
    var_1 thread common_scripts\utility::play_sound_in_space( "exp_tanker_vehicle" );
    var_2 = spawn( "script_origin", var_1.origin + ( 0, 0, 0 ) );
    var_2.angles = var_1.angles;
    var_3 = spawnfx( common_scripts\utility::getfx( "tanker_fire" ), var_2.origin );
    triggerfx( var_3 );
    common_scripts\utility::flag_wait( "player_entering_top_elevator_area" );
    var_3 delete();
    var_2 delete();
}

_id_B5B6()
{
    var_0 = getentarray( "lamp_flare", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 _id_B561();

    var_4 = getentarray( "fx_floodlight_on", "targetname" );

    foreach ( var_6 in var_4 )
        var_6 _id_C8EF();
}

_id_B561()
{
    playfx( level._effect["lighthaze"], self.origin );
}

_id_C8EF()
{
    var_0 = anglestoforward( self.angles );
    playfx( level._effect["lensflare_floodlight_on"], self.origin, var_0 );
}

_id_D1D8()
{

}

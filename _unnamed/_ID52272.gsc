// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( !_func_02F( level._ID912 ) )
        level._ID912 = _func_128( _func_039( "mapname" ) );

    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", undefined, undefined, undefined, undefined, 0.0, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 1.4, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 3.9, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tail_rotor_jnt", undefined, undefined, undefined, undefined, 5.34, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", undefined, undefined, undefined, undefined, 6.0, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "vfx/trail/trail_fire_smoke_l_afchase", "tag_engine_left", undefined, 0, undefined, 1, 0.2, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 2.5, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/aerial_explosion_large", undefined, undefined, undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    level._ID1426["fx/explosions/large_vehicle_explosion"] = _func_155( "vfx/map/af_chase/large_cliff_explosion" );
    level._ID1426["fx/muzzleflashes/m203_flshview"] = _func_155( "fx/muzzleflashes/m203_flshview" );
    level._ID1426["water_stop"] = _func_155( "fx/misc/parabolic_water_stand" );
    level._ID1426["water_movement"] = _func_155( "fx/misc/parabolic_water_movement" );
    level._ID1426["rocket_hits_heli"] = _func_155( "fx/explosions/grenadeExp_metal" );
    level._ID1426["zodiac_wake_geotrail"] = _func_155( "fx/treadfx/zodiac_wake_geotrail_af_chase" );
    level._ID1426["zodiac_wake_geotrail_player"] = _func_155( "fx/treadfx/zodiac_wake_geotrail_af_chase_player" );
    level._ID1426["zodiac_splash_front"] = _func_155( "vfx/water/zodiac_splash_front" );
    level._ID1426["zodiac_splash_front_player"] = _func_155( "vfx/water/zodiac_splash_front_player" );
    level._ID1426["zodiac_leftground"] = _func_155( "fx/misc/watersplash_large" );
    level._ID1426["player_zodiac_bumpbig"] = _func_155( "fx/misc/watersplash_large_player" );
    level._ID1426["zodiac_bumpbig"] = _func_155( "fx/misc/watersplash_large" );
    level._ID50636["zodiac_bumpbig"] = "tag_guy2";
    level._ID1426["player_zodiac_bump"] = _func_155( "fx/misc/watersplash_large_player" );
    level._ID1426["zodiac_bump"] = _func_155( "fx/misc/watersplash_large" );
    level._ID1426["zodiac_collision"] = _func_155( "fx/misc/watersplash_large" );
    level._ID50636["zodiac_collision"] = "TAG_DEATH_FX";
    level._ID1426["zodiac_bounce_small_left"] = _func_155( "vfx/water/zodiac_splash_bounce_small_left" );
    level._ID50636["zodiac_bounce_small_left"] = "TAG_FX_LF";
    level._ID1426["zodiac_bounce_small_right"] = _func_155( "vfx/water/zodiac_splash_bounce_small_right" );
    level._ID50636["zodiac_bounce_small_right"] = "TAG_FX_RF";
    level._ID1426["zodiac_bounce_large_left"] = _func_155( "vfx/water/zodiac_splash_bounce_large_left" );
    level._ID50636["zodiac_bounce_large_left"] = "TAG_FX_LF";
    level._ID1426["zodiac_bounce_large_right"] = _func_155( "vfx/water/zodiac_splash_bounce_large_right" );
    level._ID50636["zodiac_bounce_large_right"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_left"] = _func_155( "vfx/water/zodiac_splash_turn_hard_left" );
    level._ID50636["zodiac_sway_left"] = "TAG_FX_LF";
    level._ID1426["zodiac_sway_left_player"] = _func_155( "vfx/water/zodiac_splash_turn_hard_player_left" );
    level._ID50636["zodiac_sway_left_player"] = "TAG_FX_LF";
    level._ID1426["zodiac_sway_right"] = _func_155( "vfx/water/zodiac_splash_turn_hard_right" );
    level._ID50636["zodiac_sway_right"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_right_player"] = _func_155( "vfx/water/zodiac_splash_turn_hard_player_right" );
    level._ID50636["zodiac_sway_right_player"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_left_light"] = _func_155( "vfx/water/zodiac_splash_turn_light_left" );
    level._ID50636["zodiac_sway_left_light"] = "TAG_FX_LF";
    level._ID1426["zodiac_sway_left_light_player"] = _func_155( "vfx/water/zodiac_splash_turn_light_player_left" );
    level._ID50636["zodiac_sway_left_light_player"] = "TAG_FX_LF";
    level._ID44365["zodiac_sway_left_light_player"] = "zodiac_splash_turn_light_l";
    level._ID1426["zodiac_sway_right_light"] = _func_155( "vfx/water/zodiac_splash_turn_light_right" );
    level._ID50636["zodiac_sway_right_light"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_right_light_player"] = _func_155( "vfx/water/zodiac_splash_turn_light_player_right" );
    level._ID50636["zodiac_sway_right_light_player"] = "TAG_FX_RF";
    level._ID44365["zodiac_sway_right_light_player"] = "zodiac_splash_turn_light_r";
    level._ID44365["zodiac_bump"] = "water_boat_splash_small";
    level._ID44365["zodiac_bumpbig"] = "water_boat_splash";
    level._ID44365["player_zodiac_bump"] = "water_boat_splash_small_plr";
    level._ID44365["player_zodiac_bumpbig"] = "water_boat_splash_plr";
    level._ID54262["bump_big_start"] = 2;
    level._ID54262["bump_small_start"] = 1;
    level._ID54262["bump_big_after_rapids"] = 4;
    level._ID54262["bump_small_after_rapids"] = 2;
    level._ID54262["bump_big_player_dies"] = 7;
    level._ID54262["bump_small_player_dies"] = 3;
    level._ID1426["splash_over_waterfall"] = _func_155( "fx/misc/watersplash_large_player" );
    level._ID1426["player_hits_water_after_waterfall"] = _func_155( "fx/misc/watersplash_large" );
    level._ID1426["powerline_runner_cheap"] = _func_155( "fx/explosions/powerline_runner_cheap" );
    level._ID1426["firelp_small_pm_a_nolight"] = _func_155( "fx/fire/firelp_small_pm_a_nolight" );
    level._ID1426["firelp_large_pm_nolight"] = _func_155( "fx/fire/firelp_large_pm_nolight" );
    level._ID1426["heli_crash_fire"] = _func_155( "fx/fire/pavelow_crash_large" );
    level._ID1426["heli_crash_fire_embers"] = _func_155( "fx/fire/pavelow_crash_embers" );
    level._ID1426["heli_crash_fire_short_smoke"] = _func_155( "fx/fire/pavelow_crash_large_short_smoke" );
    level._ID1426["no_effect"] = _func_155( "fx/misc/no_effect" );
    level._ID1426["player_stabbed"] = _func_155( "fx/impacts/player_stabbed" );
    level._ID1426["player_knife_wound"] = _func_155( "fx/impacts/player_knife_wound" );
    level._ID1426["player_knife_pull_1"] = _func_155( "fx/impacts/player_knife_pull_1" );
    level._ID1426["player_knife_pull_2"] = _func_155( "fx/impacts/player_knife_pull_2" );
    level._ID1426["blood_sheperd_eye"] = _func_155( "fx/misc/blood_sheperd_eye" );
    level._ID1426["blood_sheperd_eye_geotrail"] = _func_155( "fx/misc/blood_sheperd_eye_geotrail" );
    level._ID1426["revolver_bullets"] = _func_155( "fx/shellejects/revolver_af_chase" );
    level._ID1426["crawl_dust_sandstorm_runner"] = _func_155( "fx/impacts/crawl_dust_sandstorm_runner" );
    level._ID1426["footstep_dust_sandstorm_runner"] = _func_155( "fx/impacts/footstep_dust_sandstorm_runner" );
    level._ID1426["footstep_dust_sandstorm_small_runner"] = _func_155( "fx/impacts/footstep_dust_sandstorm_small_runner" );
    level._ID1426["bodyfall_dust_sandstorm_large_runner"] = _func_155( "fx/impacts/bodyfall_dust_sandstorm_large_runner" );
    level._ID1426["body_falls_from_ropes_splash"] = _func_155( "fx/impacts/large_waterhit" );
    level._ID1426["sand_storm_distant"] = _func_155( "fx/weather/sand_storm_distant" );
    level._ID1426["sand_storm_canyon_light"] = _func_155( "fx/weather/sand_storm_canyon_light" );
    level._ID1426["sand_storm_player"] = _func_155( "fx/weather/sand_storm_player" );
    level._ID1426["sand_storm_intro"] = _func_155( "fx/weather/sand_storm_intro" );
    level._ID1426["sand_storm_light"] = _func_155( "fx/weather/sand_storm_light" );
    level._ID1426["sand_storm_distant_oriented"] = _func_155( "fx/weather/sand_storm_distant_oriented" );
    level._ID1426["sand_spray_detail_runner0x400"] = _func_155( "fx/dust/sand_spray_detail_runner_0x400" );
    level._ID1426["sand_spray_detail_runner400x400"] = _func_155( "fx/dust/sand_spray_detail_afchase_runner_400x400" );
    level._ID1426["sand_spray_detail_oriented_runner"] = _func_155( "fx/dust/sand_spray_detail_oriented_runner" );
    level._ID1426["sand_spray_detail_oriented_runner"] = _func_155( "fx/dust/sand_spray_detail_oriented_runner" );
    level._ID1426["sand_spray_cliff_oriented_runner"] = _func_155( "fx/dust/sand_spray_cliff_oriented_runner" );
    level._ID1426["dust_wind_fast_far"] = _func_155( "vfx/dust/dust_wind_fast_far" );
    level._ID1426["smk_stacks_lp_lrg_a_nofog"] = _func_155( "vfx/sand/smk_stacks_lp_lrg_a_nofog" );
    level._ID1426["smk_stacks_lp_lrg_a"] = _func_155( "vfx/sand/smk_stacks_lp_lrg_a" );
    level._ID1426["smoke_column_dark"] = _func_155( "vfx/smoke/smoke_column_dark" );
    level._ID1426["sand_storm_exterior"] = _func_155( "vfx/sand/sand_storm_exterior" );
    level._ID1426["dust_wind_fast"] = _func_155( "fx/dust/dust_wind_fast_afcaves" );
    level._ID1426["dust_wind_canyon"] = _func_155( "fx/dust/dust_wind_canyon_far" );
    level._ID1426["steam_vent_large_wind"] = _func_155( "fx/smoke/steam_vent_large_wind" );
    level._ID1426["ground_fog_afchase"] = _func_155( "fx/smoke/ground_fog_afchase" );
    level._ID1426["light_shaft_ground_dust_small"] = _func_155( "fx/dust/light_shaft_ground_dust_small" );
    level._ID1426["light_shaft_ground_dust_large"] = _func_155( "fx/dust/light_shaft_ground_dust_large" );
    level._ID1426["light_shaft_ground_dust_small_yel"] = _func_155( "fx/dust/light_shaft_ground_dust_small_yel" );
    level._ID1426["light_shaft_ground_dust_large_yel"] = _func_155( "fx/dust/light_shaft_ground_dust_large_yel" );
    level._ID1426["light_shaft_motes_afchase"] = _func_155( "fx/dust/light_shaft_motes_afchase" );

    if ( level._ID912 == "ending" )
        level._ID1426["light_glow_white_bulb"] = _func_155( "fx/dust/light_shaft_motes_afchase" );
    else
        level._ID1426["light_glow_white_bulb"] = _func_155( "fx/misc/light_glow_white_bulb" );

    level._ID1426["splash_underwater_afchase"] = _func_155( "fx/water/splash_underwater_afchase" );
    level._ID1426["rapids_splash_0x1000"] = _func_155( "fx/water/rapids_splash_0x1000" );
    level._ID1426["rapids_splash_1000x1000"] = _func_155( "fx/water/rapids_splash_1000x1000" );
    level._ID1426["rapids_splash_large"] = _func_155( "fx/water/rapids_splash_large" );
    level._ID1426["rapids_splash_large_dark"] = _func_155( "fx/water/rapids_splash_large_dark" );
    level._ID1426["rapids_splash_large_far"] = _func_155( "fx/water/rapids_splash_large_far" );
    level._ID1426["waterfall_afchase"] = _func_155( "fx/water/waterfall_afchase" );
    level._ID1426["waterfall_base_afchase"] = _func_155( "fx/water/waterfall_base_afchase" );
    level._ID1426["heli_blinds_player"] = _func_155( "fx/weather/sand_storm_player_blind" );
    level._ID1426["shepherd_anaconda"] = _func_155( "fx/muzzleflashes/desert_eagle_flash_wv" );
    level._ID1426["pavelow_minigunner_splash_add"] = _func_155( "fx/water/zodiac_splash_bounce_small" );
    level._ID1426["bloodpool_ending"] = _func_155( "fx/impacts/deathfx_bloodpool_ending" );
    level._ID1426["heli_water_wash"] = _func_155( "vfx/treadfx/heli_water_wash" );
    level._ID1426["ambient_cloud_mist_lg"] = _func_155( "vfx/cloud/ambient_cloud_mist_lg" );
    level._ID1426["smk_stacks_lp_lrg_a_nofog_z"] = _func_155( "vfx/sand/smk_stacks_lp_lrg_a_nofog_z" );
    level._ID1426["light_rays_moving_long"] = _func_155( "vfx/lights/light_rays_moving_long" );
    level._ID1426["ambient_cloud_shadow"] = _func_155( "vfx/cloud/ambient_cloud_shadow" );
    level._ID1426["lensflare_floodlight_on"] = _func_155( "vfx/lights/lensflare_floodlight_on" );
    level._ID1426["drips_slow_af_chase"] = _func_155( "vfx/rain/drips_slow_af_chase" );
    level._ID1426["light_glow_white_bulb_nolight"] = _func_155( "vfx/lights/light_glow_white_bulb_nolight" );
    level._ID1426["light_glow_white_bulb_small"] = _func_155( "fx/misc/light_glow_white_bulb_small" );
    level._ID1426["light_rays_moving_long_motes"] = _func_155( "vfx/lights/light_rays_moving_long_motes" );
    level._ID1426["light_rays_moving_long_thin"] = _func_155( "vfx/lights/light_rays_moving_long_thin" );
    level._ID1426["river_splashes"] = _func_155( "vfx/map/af_chase/river_splashes" );
    level._ID1426["river_water_swirls"] = _func_155( "vfx/map/af_chase/river_water_swirls" );
    level._ID1426["rocket_explosion_water_af_chase"] = _func_155( "vfx/map/af_chase/rocket_explosion_water_af_chase" );
    level._ID1426["waterfall_streak_single"] = _func_155( "vfx/water/waterfall_streak_single" );
    level._ID1426["waterfall_base_small_afchase"] = _func_155( "fx/water/waterfall_base_small_afchase" );
    level._ID1426["waterfall_floor_splash"] = _func_155( "vfx/map/af_chase/waterfall_floor_splash" );
    level._ID1426["waterfall_floor_splash_ending"] = _func_155( "vfx/map/af_chase/waterfall_floor_splash_ending" );
    level._ID1426["waterfall_streak_single_bright"] = _func_155( "vfx/water/waterfall_streak_single_bright" );
    level._ID1426["waterfall_afchase_sml"] = _func_155( "fx/water/waterfall_afchase_sml" );
    level._ID1426["waterfall_afchase_med"] = _func_155( "fx/water/waterfall_afchase_med" );
    level._ID1426["waterfall_afchase_lg"] = _func_155( "fx/water/waterfall_afchase_lg" );
    level._ID1426["sand_storm_wall_top"] = _func_155( "vfx/sand/sand_storm_wall_top" );
    level._ID1426["sand_ground_wind"] = _func_155( "vfx/sand/sand_ground_wind" );
    level._ID1426["cliff_rocket_explosion"] = _func_155( "vfx/map/af_chase/cliff_rocket_explosion" );
    level._ID1426["sand_ground_wind_vista"] = _func_155( "vfx/sand/sand_ground_wind_vista" );
    level._ID1426["heli_water_drips"] = _func_155( "vfx/water/heli_water_drips" );
    level._ID1426["rapids_splash_swirl_large"] = _func_155( "fx/water/rapids_splash_swirl_large" );
    level._ID1426["rapids_splash_swirl_small"] = _func_155( "fx/water/rapids_splash_swirl_small" );
    level._ID1426["rapids_splash_swirl_xlarge"] = _func_155( "fx/water/rapids_splash_swirl_xlarge" );
    level._ID1426["rapids_splash_swirl_rock_xlarge"] = _func_155( "fx/water/rapids_splash_swirl_rock_xlarge" );
    level._ID1426["river_flow_foam_patch"] = _func_155( "vfx/water/river_flow_foam_patch" );
    level._ID1426["rapids_splash_swirl_xlarge_rect"] = _func_155( "fx/water/rapids_splash_swirl_xlarge_rect" );
    level._ID1426["afchase_ripple_flow_single_no_geo"] = _func_155( "vfx/map/af_chase/afchase_ripple_flow_single_no_geo" );
    level._ID1426["waterfall_afchase_swirl_med"] = _func_155( "fx/water/waterfall_afchase_swirl_med" );
    level._ID1426["rapids_splash_swirl_large_unlit"] = _func_155( "fx/water/rapids_splash_swirl_large_unlit" );
    level._ID1426["waterfall_afchase_nograv_med"] = _func_155( "fx/water/waterfall_afchase_nograv_med" );
    level._ID1426["rapids_splash_swirl_small_unlit"] = _func_155( "fx/water/rapids_splash_swirl_small_unlit" );
    level._ID1426["water_fall_mist"] = _func_155( "vfx/water/water_fall_mist" );
    level._ID1426["ripple_flow_distortion_single_med_slow"] = _func_155( "vfx/water/ripple_flow_distortion_single_med_slow" );
    level._ID1426["ripple_flow_distortion_single_sml_slow"] = _func_155( "vfx/water/ripple_flow_distortion_single_sml_slow" );
    level._ID1426["rapids_splash_swirl_large_long"] = _func_155( "fx/water/rapids_splash_swirl_large_long" );
    level._ID1426["afch_rock_rapids_01"] = _func_155( "vfx/unique/afch_rock_rapids_01" );
    level._ID1426["afch_rock_rapids_02"] = _func_155( "vfx/unique/afch_rock_rapids_02" );
    level._ID1426["afch_flowpatch_rapids_01"] = _func_155( "vfx/unique/afch_flowpatch_rapids_01" );
    level._ID1426["afch_caustics_01_right"] = _func_155( "vfx/map/af_chase/afch_caustics_01_right" );
    level._ID1426["afch_caustics_01_left"] = _func_155( "vfx/map/af_chase/afch_caustics_01_left" );
    level._ID1426["afch_caustics_02_left"] = _func_155( "vfx/map/af_chase/afch_caustics_02_left" );
    level._ID1426["afch_caustics_02_right"] = _func_155( "vfx/map/af_chase/afch_caustics_02_right" );
    level._ID1426["trail_fire_smoke_l_afchase"] = _func_155( "vfx/trail/trail_fire_smoke_l_afchase" );
    level._ID1426["ground_sand_scroll"] = _func_155( "vfx/sand/ground_sand_scroll" );
    level._ID1426["sand_detail_flatground"] = _func_155( "vfx/sand/sand_detail_flatground" );
    level._ID1426["sand_detail_flatground_near"] = _func_155( "vfx/sand/sand_detail_flatground_near" );
    level._ID1426["sand_storm_player_opaque"] = _func_155( "fx/weather/sand_storm_player_opaque" );
    level._ID1426["sand_storm_debris_wind_01"] = _func_155( "vfx/map/af_chase/sand_storm_debris_wind_01" );
    level._ID1426["sand_storm_debris_wind_vf"] = _func_155( "vfx/map/af_chase/sand_storm_debris_wind_vf" );
    level._ID1426["pavelow_crash_fire_small"] = _func_155( "fx/fire/pavelow_crash_fire_small" );
    level._ID1426["h2_afch_waterfall_01"] = _func_155( "vfx/map/af_chase/h2_afch_waterfall_01" );
    level._ID1426["h2_afch_waterfall_02"] = _func_155( "vfx/map/af_chase/h2_afch_waterfall_02" );
    level._ID1426["h2_afch_waterfall_03"] = _func_155( "vfx/map/af_chase/h2_afch_waterfall_03" );
    level._ID1426["waterfall_afchase_med_ending"] = _func_155( "fx/water/waterfall_afchase_med_ending" );
    level._ID1426["waterfall_afchase_sml_ending"] = _func_155( "fx/water/waterfall_afchase_sml_ending" );
    level._ID1426["waterfall_afchase_med_lowgrav"] = _func_155( "fx/water/waterfall_afchase_med_lowgrav" );
    level._ID1426["waterfall_floor_foam"] = _func_155( "vfx/map/af_chase/waterfall_floor_foam" );
    level._ID1426["blood_smear_decal_ending"] = _func_155( "vfx/blood/blood_smear_decal_ending" );
    level._ID1426["sand_spray_detail"] = _func_155( "vfx/sand/sand_spray_detail" );
    level._ID1426["shadow_sand_patch"] = _func_155( "vfx/sand/shadow_sand_patch" );
    level._ID1426["tumbleweed"] = _func_155( "vfx/dust/tumbleweed" );
    level._ID1426["tidal_wave_endgame"] = _func_155( "vfx/water/tidal_wave_endgame" );
    level._ID1426["sand_hand_decal_diffuse"] = _func_155( "vfx/sand/sand_hand_decal_diffuse" );
    level._ID1426["sand_hand_decal_sharp_right"] = _func_155( "vfx/sand/sand_hand_decal_sharp_right" );
    level._ID1426["sand_hand_decal_sharp_left"] = _func_155( "vfx/sand/sand_hand_decal_sharp_left" );
    level._ID1426["blood_decal_player"] = _func_155( "fx/misc/blood_decal_player" );
    level._ID1426["water_spit_wv"] = _func_155( "vfx/water/water_spit_wv" );
    level._ID1426["sand_hand_decal_crawl_right"] = _func_155( "vfx/sand/sand_hand_decal_crawl_right" );
    level._ID1426["sand_hand_decal_crawl_left"] = _func_155( "vfx/sand/sand_hand_decal_crawl_left" );
    level._ID1426["rapids_splash_side_large"] = _func_155( "fx/water/rapids_splash_side_large" );
    level._ID1426["zodiac_enter_splash"] = _func_155( "vfx/map/af_chase/zodiac_enter_splash" );
    level._ID1426["zodiac_enter_splash_player"] = _func_155( "vfx/map/af_chase/zodiac_enter_splash_player" );
    level._ID1426["price_entering_water"] = _func_155( "vfx/map/af_chase/price_entering_water" );
    level._ID1426["water_spit_short_wv"] = _func_155( "vfx/water/water_spit_short_wv" );
    level._ID1426["sand_wind_dust_hero"] = _func_155( "vfx/dust/sand_wind_dust_hero" );
    level._ID1426["sand_wind_dust_detail_hero"] = _func_155( "vfx/dust/sand_wind_dust_detail_hero" );
    level._ID1426["footstep_dust_sandstorm_runner_sheperd"] = _func_155( "vfx/map/ending/footstep_dust_sandstorm_runner_sheperd" );
    level._ID1426["footstep_dust_sandstorm_small_runner_sheperd"] = _func_155( "vfx/map/ending/footstep_dust_sandstorm_small_runner_sheperd" );
    level._ID1426["waterfall_mist_af_chase"] = _func_155( "vfx/map/af_chase/waterfall_mist_af_chase" );
    level._ID1426["flesh_throat_blood_slash"] = _func_155( "vfx/blood/flesh_throat_blood_slash" );
    level._ID1426["flesh_impact_knife"] = _func_155( "vfx/weaponimpact/flesh_impact_knife" );
    level._ID1426["sand_storm_player_semi_opaque"] = _func_155( "fx/weather/sand_storm_player_semi_opaque" );
    level._ID1426["rapids_splash_swirl_xlarge_unlit"] = _func_155( "fx/water/rapids_splash_swirl_xlarge_unlit" );

    if ( _func_03A( "r_reflectionProbeGenerate" ) )
        return;

    _unknown_10A5();

    if ( level._ID912 == "af_chase" )
    {
        thread _unknown_0F9C();
        _func_0DB( "fx_alphathreshold", 1 );
    }

    if ( level._ID912 == "ending" )
    {
        _ID43139::_ID616();
        _func_0DB( "fx_marks_nearlimit", 10 );
        _func_0DB( "fx_alphathreshold", 7 );
    }
    else
        _ID46469::_ID616();

    _ID51969::_ID616();
}

_ID49579()
{
    if ( _func_039( "createfx" ) != "" )
    {
        waitframe;
        level._ID47973 = _func_1A5();
        level._ID47973._ID23586 = 0.3;
        level._ID47973._ID23033 = 0.5;
        thread _unknown_100A();
    }
}

_ID49780()
{
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", "1" );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", "-17196 1030 84" );
    waitframe;
    _ID42237::_ID14413( "exit_caves" );
    _func_0DB( "r_useLightGridDefaultFXLightingLookup", "1" );
    _func_0DB( "r_lightGridDefaultFXLightingLookup", "28825 19136 -4712" );
}

_ID48356()
{
    thread _unknown_1061();
    _ID42237::_ID14402( "blinder_effect" );
    _unknown_106B();
    _unknown_1060();
    _ID42237::_ID14388( "blinder_effect" );
}

_ID51314()
{
    var_0 = ( 1.44118, 1.24118, 0.970589 );
    var_0 *= 0.53;
    level._ID52130 = var_0;
}

_ID47247( var_0 )
{
    var_1 = ( 1.44118, 1.24118, 0.970589 );
    thread _ID42407::_ID36793( level._ID52130, var_1, var_0 );
}

_ID44736()
{
    _ID42237::_ID14402( "sandstorm_fully_masked" );
}

_ID43618()
{
    level endon( "stop_sandstorm_effect" );
    var_0 = _func_1A2( "player", "classname" )[0];

    for (;;)
    {
        var_1 = _func_0BA( level._ID47973._ID23586, level._ID47973._ID23033 );
        var_1 *= 0.5;

        if ( var_1 < 0.5 )
            var_1 = 0.5;

        wait(var_1);
        _func_156( level._ID1426["sand_storm_player"], var_0._ID740 + ( 0, 0, 100 ) );
    }
}

_ID45059()
{
    thread maps\ending_aud::_ID43650();
    level._ID47973._ID23586 = 0.3;
    level._ID47973._ID23033 = 0.5;
}

_ID49484()
{
    var_0 = [];
    var_1 = level._ID9242;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_0F3( var_2._ID40005["origin"], level._ID28543._ID740 ) < 400 )
        {
            var_2._ID740 = var_2._ID40005["origin"];
            var_0[var_0.size] = var_2;
        }
    }

    var_clear_2
    var_clear_0
    var_0 = _func_1C0( var_0, level._ID28543._ID740 );

    for (;;)
    {
        if ( level._ID47973._ID23586 >= 1.5 && var_0.size )
        {
            var_4 = var_0;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                var_5 _ID42237::_ID26402();
            }

            var_clear_2
            var_clear_0
            var_0 = [];
        }

        if ( level._ID47973._ID23586 >= 2.0 )
            break;

        level._ID47973._ID23586 = level._ID47973._ID23586 + 0.1;
        level._ID47973._ID23033 = level._ID47973._ID23033 + 0.15;
        wait 0.5;
    }

    level notify( "stop_sandstorm_effect" );
}

_ID54355()
{
    level endon( "stop_sandstorm_fog" );
    var_0 = _ID42237::_ID16638( "heli_fog_struct", "targetname" );
    var_1 = _ID42237::_ID16638( var_0._ID1191, "targetname" );
    var_2 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_2._ID740 = var_1._ID740;
    var_3 = _func_0F3( var_2._ID740, var_0._ID740 );
    var_4 = _ID42407::_ID9145( "afch_fog_dunes_dynamic" );
    var_4._ID36107 = 0;
    var_4._ID17667 = 8340;
    var_4._ID29340 = 0.661137;
    var_4._ID17371 = 0.554261;
    var_4._ID5320 = 0.454014;
    var_4._ID23114 = 1;
    var_4._ID38687 = 0;
    var_5 = 500;
    var_6 = 200;
    var_7 = _func_0C3( var_5 - var_6 );
    level._ID47158 = 500;
    var_8 = 0;

    for (;;)
    {
        var_9 = _func_0F3( level._ID794._ID740, var_2._ID740 );
        var_9 -= var_3;
        var_9 *= 0.25;

        if ( _ID42237::_ID14385( "fog_out_stumble_shepherd" ) && _func_1A7( level._ID53442 ) )
        {
            if ( !var_8 )
                var_8 = 1;

            var_10 = 0.8;
            var_2._ID740 = var_2._ID740 * var_10 + level._ID53442._ID740 * 1 - var_10;
            var_11 = _func_0F3( level._ID794._ID740, var_2._ID740 );
            var_11 *= 0.75;
            var_10 = 0.9;
            level._ID47158 = level._ID47158 * var_10 + var_11 * 1 - var_10;
            level._ID47158 = _func_0EE( level._ID47158, 50, 500 );
        }
        else if ( level._ID47158 < 500 )
        {
            level._ID47158 = level._ID47158 + 25;
            level._ID47158 = _func_0EE( level._ID47158, 0, 500 );
        }

        if ( var_9 < level._ID47158 )
            var_9 = level._ID47158;

        var_4._ID36107 = var_9 * 0.75;
        var_4._ID17667 = var_9;
        wait 0.2;
        var_12 = _func_11A( var_0._ID740 - level._ID794._ID740 );
        var_13 = _func_11F( var_12 );
    }
}

_ID53217()
{
    var_0 = _ID42237::_ID16299( "player_knife_wound" );
    var_1 = maps\af_chase_knife_fight_code::_ID53008();
    _func_157( var_0, var_1, "TAG_FX" );
}

_ID47298()
{
    _func_0DB( "fx_alphathreshold", 3 );
    _func_156( _ID42237::_ID16299( "splash_underwater_afchase" ), ( 25590.3, 26824, -10008.9 ) );
}

_ID38735()
{
    _ID42400::_ID33619( "script_vehicle_pavelow", "brick", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "bark", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "carpet", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "cloth", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "concrete", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "dirt", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "flesh", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "foliage", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "glass", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "grass", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "gravel", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "ice", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "metal", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "mud", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "paper", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "plaster", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "rock", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "sand", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "snow", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "water", "fx/treadfx/heli_water" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "wood", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "asphalt", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "ceramic", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "plastic", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "rubber", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "cushion", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "fruit", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "painted metal", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "default", "fx/treadfx/heli_sand_large" );
    _ID42400::_ID33619( "script_vehicle_pavelow", "none", "fx/treadfx/heli_sand_large" );
    var_0[0] = "script_vehicle_littlebird_armed";
    var_0[1] = "script_vehicle_littlebird_bench";
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        _ID42400::_ID33619( var_2, "brick", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "bark", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "carpet", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "cloth", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "concrete", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "dirt", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "flesh", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "foliage", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "glass", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "grass", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "gravel", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "ice", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "metal", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "mud", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "paper", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "plaster", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "rock", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "sand", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "snow", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "water", "vfx/treadfx/heli_water_wash" );
        _ID42400::_ID33619( var_2, "wood", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "asphalt", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "ceramic", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "plastic", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "rubber", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "cushion", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "fruit", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "painted metal", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "default", "fx/treadfx/heli_sand_default" );
        _ID42400::_ID33619( var_2, "none", "fx/treadfx/heli_sand_default" );
    }

    var_clear_2
    var_clear_0
}

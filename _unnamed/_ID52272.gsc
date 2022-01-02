// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( !isdefined( level.script ) )
        level.script = tolower( getdvar( "mapname" ) );

    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", undefined, undefined, undefined, undefined, 0.0, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 1.4, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 3.9, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tail_rotor_jnt", undefined, undefined, undefined, undefined, 5.34, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", undefined, undefined, undefined, undefined, 6.0, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "vfx/trail/trail_fire_smoke_l_afchase", "tag_engine_left", undefined, 0, undefined, 1, 0.2, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 2.5, 1 );
    _ID42411::_ID6215( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/aerial_explosion_large", undefined, undefined, undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    level._ID1426["fx/explosions/large_vehicle_explosion"] = loadfx( "vfx/map/af_chase/large_cliff_explosion" );
    level._ID1426["fx/muzzleflashes/m203_flshview"] = loadfx( "fx/muzzleflashes/m203_flshview" );
    level._ID1426["water_stop"] = loadfx( "fx/misc/parabolic_water_stand" );
    level._ID1426["water_movement"] = loadfx( "fx/misc/parabolic_water_movement" );
    level._ID1426["rocket_hits_heli"] = loadfx( "fx/explosions/grenadeExp_metal" );
    level._ID1426["zodiac_wake_geotrail"] = loadfx( "fx/treadfx/zodiac_wake_geotrail_af_chase" );
    level._ID1426["zodiac_wake_geotrail_player"] = loadfx( "fx/treadfx/zodiac_wake_geotrail_af_chase_player" );
    level._ID1426["zodiac_splash_front"] = loadfx( "vfx/water/zodiac_splash_front" );
    level._ID1426["zodiac_splash_front_player"] = loadfx( "vfx/water/zodiac_splash_front_player" );
    level._ID1426["zodiac_leftground"] = loadfx( "fx/misc/watersplash_large" );
    level._ID1426["player_zodiac_bumpbig"] = loadfx( "fx/misc/watersplash_large_player" );
    level._ID1426["zodiac_bumpbig"] = loadfx( "fx/misc/watersplash_large" );
    level._ID50636["zodiac_bumpbig"] = "tag_guy2";
    level._ID1426["player_zodiac_bump"] = loadfx( "fx/misc/watersplash_large_player" );
    level._ID1426["zodiac_bump"] = loadfx( "fx/misc/watersplash_large" );
    level._ID1426["zodiac_collision"] = loadfx( "fx/misc/watersplash_large" );
    level._ID50636["zodiac_collision"] = "TAG_DEATH_FX";
    level._ID1426["zodiac_bounce_small_left"] = loadfx( "vfx/water/zodiac_splash_bounce_small_left" );
    level._ID50636["zodiac_bounce_small_left"] = "TAG_FX_LF";
    level._ID1426["zodiac_bounce_small_right"] = loadfx( "vfx/water/zodiac_splash_bounce_small_right" );
    level._ID50636["zodiac_bounce_small_right"] = "TAG_FX_RF";
    level._ID1426["zodiac_bounce_large_left"] = loadfx( "vfx/water/zodiac_splash_bounce_large_left" );
    level._ID50636["zodiac_bounce_large_left"] = "TAG_FX_LF";
    level._ID1426["zodiac_bounce_large_right"] = loadfx( "vfx/water/zodiac_splash_bounce_large_right" );
    level._ID50636["zodiac_bounce_large_right"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_left"] = loadfx( "vfx/water/zodiac_splash_turn_hard_left" );
    level._ID50636["zodiac_sway_left"] = "TAG_FX_LF";
    level._ID1426["zodiac_sway_left_player"] = loadfx( "vfx/water/zodiac_splash_turn_hard_player_left" );
    level._ID50636["zodiac_sway_left_player"] = "TAG_FX_LF";
    level._ID1426["zodiac_sway_right"] = loadfx( "vfx/water/zodiac_splash_turn_hard_right" );
    level._ID50636["zodiac_sway_right"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_right_player"] = loadfx( "vfx/water/zodiac_splash_turn_hard_player_right" );
    level._ID50636["zodiac_sway_right_player"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_left_light"] = loadfx( "vfx/water/zodiac_splash_turn_light_left" );
    level._ID50636["zodiac_sway_left_light"] = "TAG_FX_LF";
    level._ID1426["zodiac_sway_left_light_player"] = loadfx( "vfx/water/zodiac_splash_turn_light_player_left" );
    level._ID50636["zodiac_sway_left_light_player"] = "TAG_FX_LF";
    level._ID44365["zodiac_sway_left_light_player"] = "zodiac_splash_turn_light_l";
    level._ID1426["zodiac_sway_right_light"] = loadfx( "vfx/water/zodiac_splash_turn_light_right" );
    level._ID50636["zodiac_sway_right_light"] = "TAG_FX_RF";
    level._ID1426["zodiac_sway_right_light_player"] = loadfx( "vfx/water/zodiac_splash_turn_light_player_right" );
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
    level._ID1426["splash_over_waterfall"] = loadfx( "fx/misc/watersplash_large_player" );
    level._ID1426["player_hits_water_after_waterfall"] = loadfx( "fx/misc/watersplash_large" );
    level._ID1426["powerline_runner_cheap"] = loadfx( "fx/explosions/powerline_runner_cheap" );
    level._ID1426["firelp_small_pm_a_nolight"] = loadfx( "fx/fire/firelp_small_pm_a_nolight" );
    level._ID1426["firelp_large_pm_nolight"] = loadfx( "fx/fire/firelp_large_pm_nolight" );
    level._ID1426["heli_crash_fire"] = loadfx( "fx/fire/pavelow_crash_large" );
    level._ID1426["heli_crash_fire_embers"] = loadfx( "fx/fire/pavelow_crash_embers" );
    level._ID1426["heli_crash_fire_short_smoke"] = loadfx( "fx/fire/pavelow_crash_large_short_smoke" );
    level._ID1426["no_effect"] = loadfx( "fx/misc/no_effect" );
    level._ID1426["player_stabbed"] = loadfx( "fx/impacts/player_stabbed" );
    level._ID1426["player_knife_wound"] = loadfx( "fx/impacts/player_knife_wound" );
    level._ID1426["player_knife_pull_1"] = loadfx( "fx/impacts/player_knife_pull_1" );
    level._ID1426["player_knife_pull_2"] = loadfx( "fx/impacts/player_knife_pull_2" );
    level._ID1426["blood_sheperd_eye"] = loadfx( "fx/misc/blood_sheperd_eye" );
    level._ID1426["blood_sheperd_eye_geotrail"] = loadfx( "fx/misc/blood_sheperd_eye_geotrail" );
    level._ID1426["revolver_bullets"] = loadfx( "fx/shellejects/revolver_af_chase" );
    level._ID1426["crawl_dust_sandstorm_runner"] = loadfx( "fx/impacts/crawl_dust_sandstorm_runner" );
    level._ID1426["footstep_dust_sandstorm_runner"] = loadfx( "fx/impacts/footstep_dust_sandstorm_runner" );
    level._ID1426["footstep_dust_sandstorm_small_runner"] = loadfx( "fx/impacts/footstep_dust_sandstorm_small_runner" );
    level._ID1426["bodyfall_dust_sandstorm_large_runner"] = loadfx( "fx/impacts/bodyfall_dust_sandstorm_large_runner" );
    level._ID1426["body_falls_from_ropes_splash"] = loadfx( "fx/impacts/large_waterhit" );
    level._ID1426["sand_storm_distant"] = loadfx( "fx/weather/sand_storm_distant" );
    level._ID1426["sand_storm_canyon_light"] = loadfx( "fx/weather/sand_storm_canyon_light" );
    level._ID1426["sand_storm_player"] = loadfx( "fx/weather/sand_storm_player" );
    level._ID1426["sand_storm_intro"] = loadfx( "fx/weather/sand_storm_intro" );
    level._ID1426["sand_storm_light"] = loadfx( "fx/weather/sand_storm_light" );
    level._ID1426["sand_storm_distant_oriented"] = loadfx( "fx/weather/sand_storm_distant_oriented" );
    level._ID1426["sand_spray_detail_runner0x400"] = loadfx( "fx/dust/sand_spray_detail_runner_0x400" );
    level._ID1426["sand_spray_detail_runner400x400"] = loadfx( "fx/dust/sand_spray_detail_afchase_runner_400x400" );
    level._ID1426["sand_spray_detail_oriented_runner"] = loadfx( "fx/dust/sand_spray_detail_oriented_runner" );
    level._ID1426["sand_spray_detail_oriented_runner"] = loadfx( "fx/dust/sand_spray_detail_oriented_runner" );
    level._ID1426["sand_spray_cliff_oriented_runner"] = loadfx( "fx/dust/sand_spray_cliff_oriented_runner" );
    level._ID1426["dust_wind_fast_far"] = loadfx( "vfx/dust/dust_wind_fast_far" );
    level._ID1426["smk_stacks_lp_lrg_a_nofog"] = loadfx( "vfx/sand/smk_stacks_lp_lrg_a_nofog" );
    level._ID1426["smk_stacks_lp_lrg_a"] = loadfx( "vfx/sand/smk_stacks_lp_lrg_a" );
    level._ID1426["smoke_column_dark"] = loadfx( "vfx/smoke/smoke_column_dark" );
    level._ID1426["sand_storm_exterior"] = loadfx( "vfx/sand/sand_storm_exterior" );
    level._ID1426["dust_wind_fast"] = loadfx( "fx/dust/dust_wind_fast_afcaves" );
    level._ID1426["dust_wind_canyon"] = loadfx( "fx/dust/dust_wind_canyon_far" );
    level._ID1426["steam_vent_large_wind"] = loadfx( "fx/smoke/steam_vent_large_wind" );
    level._ID1426["ground_fog_afchase"] = loadfx( "fx/smoke/ground_fog_afchase" );
    level._ID1426["light_shaft_ground_dust_small"] = loadfx( "fx/dust/light_shaft_ground_dust_small" );
    level._ID1426["light_shaft_ground_dust_large"] = loadfx( "fx/dust/light_shaft_ground_dust_large" );
    level._ID1426["light_shaft_ground_dust_small_yel"] = loadfx( "fx/dust/light_shaft_ground_dust_small_yel" );
    level._ID1426["light_shaft_ground_dust_large_yel"] = loadfx( "fx/dust/light_shaft_ground_dust_large_yel" );
    level._ID1426["light_shaft_motes_afchase"] = loadfx( "fx/dust/light_shaft_motes_afchase" );

    if ( level.script == "ending" )
        level._ID1426["light_glow_white_bulb"] = loadfx( "fx/dust/light_shaft_motes_afchase" );
    else
        level._ID1426["light_glow_white_bulb"] = loadfx( "fx/misc/light_glow_white_bulb" );

    level._ID1426["splash_underwater_afchase"] = loadfx( "fx/water/splash_underwater_afchase" );
    level._ID1426["rapids_splash_0x1000"] = loadfx( "fx/water/rapids_splash_0x1000" );
    level._ID1426["rapids_splash_1000x1000"] = loadfx( "fx/water/rapids_splash_1000x1000" );
    level._ID1426["rapids_splash_large"] = loadfx( "fx/water/rapids_splash_large" );
    level._ID1426["rapids_splash_large_dark"] = loadfx( "fx/water/rapids_splash_large_dark" );
    level._ID1426["rapids_splash_large_far"] = loadfx( "fx/water/rapids_splash_large_far" );
    level._ID1426["waterfall_afchase"] = loadfx( "fx/water/waterfall_afchase" );
    level._ID1426["waterfall_base_afchase"] = loadfx( "fx/water/waterfall_base_afchase" );
    level._ID1426["heli_blinds_player"] = loadfx( "fx/weather/sand_storm_player_blind" );
    level._ID1426["shepherd_anaconda"] = loadfx( "fx/muzzleflashes/desert_eagle_flash_wv" );
    level._ID1426["pavelow_minigunner_splash_add"] = loadfx( "fx/water/zodiac_splash_bounce_small" );
    level._ID1426["bloodpool_ending"] = loadfx( "fx/impacts/deathfx_bloodpool_ending" );
    level._ID1426["heli_water_wash"] = loadfx( "vfx/treadfx/heli_water_wash" );
    level._ID1426["ambient_cloud_mist_lg"] = loadfx( "vfx/cloud/ambient_cloud_mist_lg" );
    level._ID1426["smk_stacks_lp_lrg_a_nofog_z"] = loadfx( "vfx/sand/smk_stacks_lp_lrg_a_nofog_z" );
    level._ID1426["light_rays_moving_long"] = loadfx( "vfx/lights/light_rays_moving_long" );
    level._ID1426["ambient_cloud_shadow"] = loadfx( "vfx/cloud/ambient_cloud_shadow" );
    level._ID1426["lensflare_floodlight_on"] = loadfx( "vfx/lights/lensflare_floodlight_on" );
    level._ID1426["drips_slow_af_chase"] = loadfx( "vfx/rain/drips_slow_af_chase" );
    level._ID1426["light_glow_white_bulb_nolight"] = loadfx( "vfx/lights/light_glow_white_bulb_nolight" );
    level._ID1426["light_glow_white_bulb_small"] = loadfx( "fx/misc/light_glow_white_bulb_small" );
    level._ID1426["light_rays_moving_long_motes"] = loadfx( "vfx/lights/light_rays_moving_long_motes" );
    level._ID1426["light_rays_moving_long_thin"] = loadfx( "vfx/lights/light_rays_moving_long_thin" );
    level._ID1426["river_splashes"] = loadfx( "vfx/map/af_chase/river_splashes" );
    level._ID1426["river_water_swirls"] = loadfx( "vfx/map/af_chase/river_water_swirls" );
    level._ID1426["rocket_explosion_water_af_chase"] = loadfx( "vfx/map/af_chase/rocket_explosion_water_af_chase" );
    level._ID1426["waterfall_streak_single"] = loadfx( "vfx/water/waterfall_streak_single" );
    level._ID1426["waterfall_base_small_afchase"] = loadfx( "fx/water/waterfall_base_small_afchase" );
    level._ID1426["waterfall_floor_splash"] = loadfx( "vfx/map/af_chase/waterfall_floor_splash" );
    level._ID1426["waterfall_floor_splash_ending"] = loadfx( "vfx/map/af_chase/waterfall_floor_splash_ending" );
    level._ID1426["waterfall_streak_single_bright"] = loadfx( "vfx/water/waterfall_streak_single_bright" );
    level._ID1426["waterfall_afchase_sml"] = loadfx( "fx/water/waterfall_afchase_sml" );
    level._ID1426["waterfall_afchase_med"] = loadfx( "fx/water/waterfall_afchase_med" );
    level._ID1426["waterfall_afchase_lg"] = loadfx( "fx/water/waterfall_afchase_lg" );
    level._ID1426["sand_storm_wall_top"] = loadfx( "vfx/sand/sand_storm_wall_top" );
    level._ID1426["sand_ground_wind"] = loadfx( "vfx/sand/sand_ground_wind" );
    level._ID1426["cliff_rocket_explosion"] = loadfx( "vfx/map/af_chase/cliff_rocket_explosion" );
    level._ID1426["sand_ground_wind_vista"] = loadfx( "vfx/sand/sand_ground_wind_vista" );
    level._ID1426["heli_water_drips"] = loadfx( "vfx/water/heli_water_drips" );
    level._ID1426["rapids_splash_swirl_large"] = loadfx( "fx/water/rapids_splash_swirl_large" );
    level._ID1426["rapids_splash_swirl_small"] = loadfx( "fx/water/rapids_splash_swirl_small" );
    level._ID1426["rapids_splash_swirl_xlarge"] = loadfx( "fx/water/rapids_splash_swirl_xlarge" );
    level._ID1426["rapids_splash_swirl_rock_xlarge"] = loadfx( "fx/water/rapids_splash_swirl_rock_xlarge" );
    level._ID1426["river_flow_foam_patch"] = loadfx( "vfx/water/river_flow_foam_patch" );
    level._ID1426["rapids_splash_swirl_xlarge_rect"] = loadfx( "fx/water/rapids_splash_swirl_xlarge_rect" );
    level._ID1426["afchase_ripple_flow_single_no_geo"] = loadfx( "vfx/map/af_chase/afchase_ripple_flow_single_no_geo" );
    level._ID1426["waterfall_afchase_swirl_med"] = loadfx( "fx/water/waterfall_afchase_swirl_med" );
    level._ID1426["rapids_splash_swirl_large_unlit"] = loadfx( "fx/water/rapids_splash_swirl_large_unlit" );
    level._ID1426["waterfall_afchase_nograv_med"] = loadfx( "fx/water/waterfall_afchase_nograv_med" );
    level._ID1426["rapids_splash_swirl_small_unlit"] = loadfx( "fx/water/rapids_splash_swirl_small_unlit" );
    level._ID1426["water_fall_mist"] = loadfx( "vfx/water/water_fall_mist" );
    level._ID1426["ripple_flow_distortion_single_med_slow"] = loadfx( "vfx/water/ripple_flow_distortion_single_med_slow" );
    level._ID1426["ripple_flow_distortion_single_sml_slow"] = loadfx( "vfx/water/ripple_flow_distortion_single_sml_slow" );
    level._ID1426["rapids_splash_swirl_large_long"] = loadfx( "fx/water/rapids_splash_swirl_large_long" );
    level._ID1426["afch_rock_rapids_01"] = loadfx( "vfx/unique/afch_rock_rapids_01" );
    level._ID1426["afch_rock_rapids_02"] = loadfx( "vfx/unique/afch_rock_rapids_02" );
    level._ID1426["afch_flowpatch_rapids_01"] = loadfx( "vfx/unique/afch_flowpatch_rapids_01" );
    level._ID1426["afch_caustics_01_right"] = loadfx( "vfx/map/af_chase/afch_caustics_01_right" );
    level._ID1426["afch_caustics_01_left"] = loadfx( "vfx/map/af_chase/afch_caustics_01_left" );
    level._ID1426["afch_caustics_02_left"] = loadfx( "vfx/map/af_chase/afch_caustics_02_left" );
    level._ID1426["afch_caustics_02_right"] = loadfx( "vfx/map/af_chase/afch_caustics_02_right" );
    level._ID1426["trail_fire_smoke_l_afchase"] = loadfx( "vfx/trail/trail_fire_smoke_l_afchase" );
    level._ID1426["ground_sand_scroll"] = loadfx( "vfx/sand/ground_sand_scroll" );
    level._ID1426["sand_detail_flatground"] = loadfx( "vfx/sand/sand_detail_flatground" );
    level._ID1426["sand_detail_flatground_near"] = loadfx( "vfx/sand/sand_detail_flatground_near" );
    level._ID1426["sand_storm_player_opaque"] = loadfx( "fx/weather/sand_storm_player_opaque" );
    level._ID1426["sand_storm_debris_wind_01"] = loadfx( "vfx/map/af_chase/sand_storm_debris_wind_01" );
    level._ID1426["sand_storm_debris_wind_vf"] = loadfx( "vfx/map/af_chase/sand_storm_debris_wind_vf" );
    level._ID1426["pavelow_crash_fire_small"] = loadfx( "fx/fire/pavelow_crash_fire_small" );
    level._ID1426["h2_afch_waterfall_01"] = loadfx( "vfx/map/af_chase/h2_afch_waterfall_01" );
    level._ID1426["h2_afch_waterfall_02"] = loadfx( "vfx/map/af_chase/h2_afch_waterfall_02" );
    level._ID1426["h2_afch_waterfall_03"] = loadfx( "vfx/map/af_chase/h2_afch_waterfall_03" );
    level._ID1426["waterfall_afchase_med_ending"] = loadfx( "fx/water/waterfall_afchase_med_ending" );
    level._ID1426["waterfall_afchase_sml_ending"] = loadfx( "fx/water/waterfall_afchase_sml_ending" );
    level._ID1426["waterfall_afchase_med_lowgrav"] = loadfx( "fx/water/waterfall_afchase_med_lowgrav" );
    level._ID1426["waterfall_floor_foam"] = loadfx( "vfx/map/af_chase/waterfall_floor_foam" );
    level._ID1426["blood_smear_decal_ending"] = loadfx( "vfx/blood/blood_smear_decal_ending" );
    level._ID1426["sand_spray_detail"] = loadfx( "vfx/sand/sand_spray_detail" );
    level._ID1426["shadow_sand_patch"] = loadfx( "vfx/sand/shadow_sand_patch" );
    level._ID1426["tumbleweed"] = loadfx( "vfx/dust/tumbleweed" );
    level._ID1426["tidal_wave_endgame"] = loadfx( "vfx/water/tidal_wave_endgame" );
    level._ID1426["sand_hand_decal_diffuse"] = loadfx( "vfx/sand/sand_hand_decal_diffuse" );
    level._ID1426["sand_hand_decal_sharp_right"] = loadfx( "vfx/sand/sand_hand_decal_sharp_right" );
    level._ID1426["sand_hand_decal_sharp_left"] = loadfx( "vfx/sand/sand_hand_decal_sharp_left" );
    level._ID1426["blood_decal_player"] = loadfx( "fx/misc/blood_decal_player" );
    level._ID1426["water_spit_wv"] = loadfx( "vfx/water/water_spit_wv" );
    level._ID1426["sand_hand_decal_crawl_right"] = loadfx( "vfx/sand/sand_hand_decal_crawl_right" );
    level._ID1426["sand_hand_decal_crawl_left"] = loadfx( "vfx/sand/sand_hand_decal_crawl_left" );
    level._ID1426["rapids_splash_side_large"] = loadfx( "fx/water/rapids_splash_side_large" );
    level._ID1426["zodiac_enter_splash"] = loadfx( "vfx/map/af_chase/zodiac_enter_splash" );
    level._ID1426["zodiac_enter_splash_player"] = loadfx( "vfx/map/af_chase/zodiac_enter_splash_player" );
    level._ID1426["price_entering_water"] = loadfx( "vfx/map/af_chase/price_entering_water" );
    level._ID1426["water_spit_short_wv"] = loadfx( "vfx/water/water_spit_short_wv" );
    level._ID1426["sand_wind_dust_hero"] = loadfx( "vfx/dust/sand_wind_dust_hero" );
    level._ID1426["sand_wind_dust_detail_hero"] = loadfx( "vfx/dust/sand_wind_dust_detail_hero" );
    level._ID1426["footstep_dust_sandstorm_runner_sheperd"] = loadfx( "vfx/map/ending/footstep_dust_sandstorm_runner_sheperd" );
    level._ID1426["footstep_dust_sandstorm_small_runner_sheperd"] = loadfx( "vfx/map/ending/footstep_dust_sandstorm_small_runner_sheperd" );
    level._ID1426["waterfall_mist_af_chase"] = loadfx( "vfx/map/af_chase/waterfall_mist_af_chase" );
    level._ID1426["flesh_throat_blood_slash"] = loadfx( "vfx/blood/flesh_throat_blood_slash" );
    level._ID1426["flesh_impact_knife"] = loadfx( "vfx/weaponimpact/flesh_impact_knife" );
    level._ID1426["sand_storm_player_semi_opaque"] = loadfx( "fx/weather/sand_storm_player_semi_opaque" );
    level._ID1426["rapids_splash_swirl_xlarge_unlit"] = loadfx( "fx/water/rapids_splash_swirl_xlarge_unlit" );

    if ( getdvarint( "r_reflectionProbeGenerate" ) )
        return;

    _ID38735();

    if ( level.script == "af_chase" )
    {
        thread _ID49780();
        setsaveddvar( "fx_alphathreshold", 1 );
    }

    if ( level.script == "ending" )
    {
        _ID43139::main();
        setsaveddvar( "fx_marks_nearlimit", 10 );
        setsaveddvar( "fx_alphathreshold", 7 );
    }
    else
        _ID46469::main();

    _ID51969::main();
}

_ID49579()
{
    if ( getdvar( "createfx" ) != "" )
    {
        waitframe;
        level._ID47973 = spawnstruct();
        level._ID47973._ID23586 = 0.3;
        level._ID47973._ID23033 = 0.5;
        thread _ID48356();
    }
}

_ID49780()
{
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-17196 1030 84" );
    waitframe;
    _ID42237::_ID14413( "exit_caves" );
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "28825 19136 -4712" );
}

_ID48356()
{
    thread _ID43618();
    _ID42237::_ID14402( "blinder_effect" );
    _ID44736();
    _ID51314();
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
    var_0 = getentarray( "player", "classname" )[0];

    for (;;)
    {
        var_1 = randomfloatrange( level._ID47973._ID23586, level._ID47973._ID23033 );
        var_1 *= 0.5;

        if ( var_1 < 0.5 )
            var_1 = 0.5;

        wait(var_1);
        playfx( level._ID1426["sand_storm_player"], var_0.origin + ( 0, 0, 100 ) );
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

    foreach ( var_2 in level._ID9242 )
    {
        if ( distance( var_2._ID40005["origin"], level._ID28543.origin ) < 400 )
        {
            var_2.origin = var_2._ID40005["origin"];
            var_0[var_0.size] = var_2;
        }
    }

    var_0 = sortbydistance( var_0, level._ID28543.origin );

    for (;;)
    {
        if ( level._ID47973._ID23586 >= 1.5 && var_0.size )
        {
            foreach ( var_5 in var_0 )
                var_5 _ID42237::_ID26402();

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
    var_1 = _ID42237::_ID16638( var_0.target, "targetname" );
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2.origin = var_1.origin;
    var_3 = distance( var_2.origin, var_0.origin );
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
    var_7 = abs( var_5 - var_6 );
    level._ID47158 = 500;
    var_8 = 0;

    for (;;)
    {
        var_9 = distance( level.player.origin, var_2.origin );
        var_9 -= var_3;
        var_9 *= 0.25;

        if ( _ID42237::_ID14385( "fog_out_stumble_shepherd" ) && isalive( level._ID53442 ) )
        {
            if ( !var_8 )
                var_8 = 1;

            var_10 = 0.8;
            var_2.origin = var_2.origin * var_10 + level._ID53442.origin * ( 1 - var_10 );
            var_11 = distance( level.player.origin, var_2.origin );
            var_11 *= 0.75;
            var_10 = 0.9;
            level._ID47158 = level._ID47158 * var_10 + var_11 * ( 1 - var_10 );
            level._ID47158 = clamp( level._ID47158, 50, 500 );
        }
        else if ( level._ID47158 < 500 )
        {
            level._ID47158 = level._ID47158 + 25;
            level._ID47158 = clamp( level._ID47158, 0, 500 );
        }

        if ( var_9 < level._ID47158 )
            var_9 = level._ID47158;

        var_4._ID36107 = var_9 * 0.75;
        var_4._ID17667 = var_9;
        wait 0.2;
        var_12 = vectortoangles( var_0.origin - level.player.origin );
        var_13 = anglestoforward( var_12 );
    }
}

_ID53217()
{
    var_0 = _ID42237::_ID16299( "player_knife_wound" );
    var_1 = maps\af_chase_knife_fight_code::_ID53008();
    playfxontag( var_0, var_1, "TAG_FX" );
}

_ID47298()
{
    setsaveddvar( "fx_alphathreshold", 3 );
    playfx( _ID42237::_ID16299( "splash_underwater_afchase" ), ( 25590.3, 26824, -10008.9 ) );
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

    foreach ( var_2 in var_0 )
    {
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
}

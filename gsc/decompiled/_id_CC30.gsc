// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( !isdefined( level.script ) )
        level.script = tolower( getdvar( "mapname" ) );

    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", undefined, undefined, undefined, undefined, 0.0, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 1.4, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 3.9, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tail_rotor_jnt", undefined, undefined, undefined, undefined, 5.34, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", undefined, undefined, undefined, undefined, 6.0, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "vfx/trail/trail_fire_smoke_l_afchase", "tag_engine_left", undefined, 0, undefined, 1, 0.2, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", undefined, undefined, undefined, undefined, 2.5, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_pavelow", "pavelow", "vehicle_pavelow", "fx/explosions/aerial_explosion_large", undefined, undefined, undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    level._effect["fx/explosions/large_vehicle_explosion"] = loadfx( "vfx/map/af_chase/large_cliff_explosion" );
    level._effect["fx/muzzleflashes/m203_flshview"] = loadfx( "fx/muzzleflashes/m203_flshview" );
    level._effect["water_stop"] = loadfx( "fx/misc/parabolic_water_stand" );
    level._effect["water_movement"] = loadfx( "fx/misc/parabolic_water_movement" );
    level._effect["rocket_hits_heli"] = loadfx( "fx/explosions/grenadeExp_metal" );
    level._effect["zodiac_wake_geotrail"] = loadfx( "fx/treadfx/zodiac_wake_geotrail_af_chase" );
    level._effect["zodiac_wake_geotrail_player"] = loadfx( "fx/treadfx/zodiac_wake_geotrail_af_chase_player" );
    level._effect["zodiac_splash_front"] = loadfx( "vfx/water/zodiac_splash_front" );
    level._effect["zodiac_splash_front_player"] = loadfx( "vfx/water/zodiac_splash_front_player" );
    level._effect["zodiac_leftground"] = loadfx( "fx/misc/watersplash_large" );
    level._effect["player_zodiac_bumpbig"] = loadfx( "fx/misc/watersplash_large_player" );
    level._effect["zodiac_bumpbig"] = loadfx( "fx/misc/watersplash_large" );
    level._id_C5CC["zodiac_bumpbig"] = "tag_guy2";
    level._effect["player_zodiac_bump"] = loadfx( "fx/misc/watersplash_large_player" );
    level._effect["zodiac_bump"] = loadfx( "fx/misc/watersplash_large" );
    level._effect["zodiac_collision"] = loadfx( "fx/misc/watersplash_large" );
    level._id_C5CC["zodiac_collision"] = "TAG_DEATH_FX";
    level._effect["zodiac_bounce_small_left"] = loadfx( "vfx/water/zodiac_splash_bounce_small_left" );
    level._id_C5CC["zodiac_bounce_small_left"] = "TAG_FX_LF";
    level._effect["zodiac_bounce_small_right"] = loadfx( "vfx/water/zodiac_splash_bounce_small_right" );
    level._id_C5CC["zodiac_bounce_small_right"] = "TAG_FX_RF";
    level._effect["zodiac_bounce_large_left"] = loadfx( "vfx/water/zodiac_splash_bounce_large_left" );
    level._id_C5CC["zodiac_bounce_large_left"] = "TAG_FX_LF";
    level._effect["zodiac_bounce_large_right"] = loadfx( "vfx/water/zodiac_splash_bounce_large_right" );
    level._id_C5CC["zodiac_bounce_large_right"] = "TAG_FX_RF";
    level._effect["zodiac_sway_left"] = loadfx( "vfx/water/zodiac_splash_turn_hard_left" );
    level._id_C5CC["zodiac_sway_left"] = "TAG_FX_LF";
    level._effect["zodiac_sway_left_player"] = loadfx( "vfx/water/zodiac_splash_turn_hard_player_left" );
    level._id_C5CC["zodiac_sway_left_player"] = "TAG_FX_LF";
    level._effect["zodiac_sway_right"] = loadfx( "vfx/water/zodiac_splash_turn_hard_right" );
    level._id_C5CC["zodiac_sway_right"] = "TAG_FX_RF";
    level._effect["zodiac_sway_right_player"] = loadfx( "vfx/water/zodiac_splash_turn_hard_player_right" );
    level._id_C5CC["zodiac_sway_right_player"] = "TAG_FX_RF";
    level._effect["zodiac_sway_left_light"] = loadfx( "vfx/water/zodiac_splash_turn_light_left" );
    level._id_C5CC["zodiac_sway_left_light"] = "TAG_FX_LF";
    level._effect["zodiac_sway_left_light_player"] = loadfx( "vfx/water/zodiac_splash_turn_light_player_left" );
    level._id_C5CC["zodiac_sway_left_light_player"] = "TAG_FX_LF";
    level._id_AD4D["zodiac_sway_left_light_player"] = "zodiac_splash_turn_light_l";
    level._effect["zodiac_sway_right_light"] = loadfx( "vfx/water/zodiac_splash_turn_light_right" );
    level._id_C5CC["zodiac_sway_right_light"] = "TAG_FX_RF";
    level._effect["zodiac_sway_right_light_player"] = loadfx( "vfx/water/zodiac_splash_turn_light_player_right" );
    level._id_C5CC["zodiac_sway_right_light_player"] = "TAG_FX_RF";
    level._id_AD4D["zodiac_sway_right_light_player"] = "zodiac_splash_turn_light_r";
    level._id_AD4D["zodiac_bump"] = "water_boat_splash_small";
    level._id_AD4D["zodiac_bumpbig"] = "water_boat_splash";
    level._id_AD4D["player_zodiac_bump"] = "water_boat_splash_small_plr";
    level._id_AD4D["player_zodiac_bumpbig"] = "water_boat_splash_plr";
    level._id_D3F6["bump_big_start"] = 2;
    level._id_D3F6["bump_small_start"] = 1;
    level._id_D3F6["bump_big_after_rapids"] = 4;
    level._id_D3F6["bump_small_after_rapids"] = 2;
    level._id_D3F6["bump_big_player_dies"] = 7;
    level._id_D3F6["bump_small_player_dies"] = 3;
    level._effect["splash_over_waterfall"] = loadfx( "fx/misc/watersplash_large_player" );
    level._effect["player_hits_water_after_waterfall"] = loadfx( "fx/misc/watersplash_large" );
    level._effect["powerline_runner_cheap"] = loadfx( "fx/explosions/powerline_runner_cheap" );
    level._effect["firelp_small_pm_a_nolight"] = loadfx( "fx/fire/firelp_small_pm_a_nolight" );
    level._effect["firelp_large_pm_nolight"] = loadfx( "fx/fire/firelp_large_pm_nolight" );
    level._effect["heli_crash_fire"] = loadfx( "fx/fire/pavelow_crash_large" );
    level._effect["heli_crash_fire_embers"] = loadfx( "fx/fire/pavelow_crash_embers" );
    level._effect["heli_crash_fire_short_smoke"] = loadfx( "fx/fire/pavelow_crash_large_short_smoke" );
    level._effect["no_effect"] = loadfx( "fx/misc/no_effect" );
    level._effect["player_stabbed"] = loadfx( "fx/impacts/player_stabbed" );
    level._effect["player_knife_wound"] = loadfx( "fx/impacts/player_knife_wound" );
    level._effect["player_knife_pull_1"] = loadfx( "fx/impacts/player_knife_pull_1" );
    level._effect["player_knife_pull_2"] = loadfx( "fx/impacts/player_knife_pull_2" );
    level._effect["blood_sheperd_eye"] = loadfx( "fx/misc/blood_sheperd_eye" );
    level._effect["blood_sheperd_eye_geotrail"] = loadfx( "fx/misc/blood_sheperd_eye_geotrail" );
    level._effect["revolver_bullets"] = loadfx( "fx/shellejects/revolver_af_chase" );
    level._effect["crawl_dust_sandstorm_runner"] = loadfx( "fx/impacts/crawl_dust_sandstorm_runner" );
    level._effect["footstep_dust_sandstorm_runner"] = loadfx( "fx/impacts/footstep_dust_sandstorm_runner" );
    level._effect["footstep_dust_sandstorm_small_runner"] = loadfx( "fx/impacts/footstep_dust_sandstorm_small_runner" );
    level._effect["bodyfall_dust_sandstorm_large_runner"] = loadfx( "fx/impacts/bodyfall_dust_sandstorm_large_runner" );
    level._effect["body_falls_from_ropes_splash"] = loadfx( "fx/impacts/large_waterhit" );
    level._effect["sand_storm_distant"] = loadfx( "fx/weather/sand_storm_distant" );
    level._effect["sand_storm_canyon_light"] = loadfx( "fx/weather/sand_storm_canyon_light" );
    level._effect["sand_storm_player"] = loadfx( "fx/weather/sand_storm_player" );
    level._effect["sand_storm_intro"] = loadfx( "fx/weather/sand_storm_intro" );
    level._effect["sand_storm_light"] = loadfx( "fx/weather/sand_storm_light" );
    level._effect["sand_storm_distant_oriented"] = loadfx( "fx/weather/sand_storm_distant_oriented" );
    level._effect["sand_spray_detail_runner0x400"] = loadfx( "fx/dust/sand_spray_detail_runner_0x400" );
    level._effect["sand_spray_detail_runner400x400"] = loadfx( "fx/dust/sand_spray_detail_afchase_runner_400x400" );
    level._effect["sand_spray_detail_oriented_runner"] = loadfx( "fx/dust/sand_spray_detail_oriented_runner" );
    level._effect["sand_spray_detail_oriented_runner"] = loadfx( "fx/dust/sand_spray_detail_oriented_runner" );
    level._effect["sand_spray_cliff_oriented_runner"] = loadfx( "fx/dust/sand_spray_cliff_oriented_runner" );
    level._effect["dust_wind_fast_far"] = loadfx( "vfx/dust/dust_wind_fast_far" );
    level._effect["smk_stacks_lp_lrg_a_nofog"] = loadfx( "vfx/sand/smk_stacks_lp_lrg_a_nofog" );
    level._effect["smk_stacks_lp_lrg_a"] = loadfx( "vfx/sand/smk_stacks_lp_lrg_a" );
    level._effect["smoke_column_dark"] = loadfx( "vfx/smoke/smoke_column_dark" );
    level._effect["sand_storm_exterior"] = loadfx( "vfx/sand/sand_storm_exterior" );
    level._effect["dust_wind_fast"] = loadfx( "fx/dust/dust_wind_fast_afcaves" );
    level._effect["dust_wind_canyon"] = loadfx( "fx/dust/dust_wind_canyon_far" );
    level._effect["steam_vent_large_wind"] = loadfx( "fx/smoke/steam_vent_large_wind" );
    level._effect["ground_fog_afchase"] = loadfx( "fx/smoke/ground_fog_afchase" );
    level._effect["light_shaft_ground_dust_small"] = loadfx( "fx/dust/light_shaft_ground_dust_small" );
    level._effect["light_shaft_ground_dust_large"] = loadfx( "fx/dust/light_shaft_ground_dust_large" );
    level._effect["light_shaft_ground_dust_small_yel"] = loadfx( "fx/dust/light_shaft_ground_dust_small_yel" );
    level._effect["light_shaft_ground_dust_large_yel"] = loadfx( "fx/dust/light_shaft_ground_dust_large_yel" );
    level._effect["light_shaft_motes_afchase"] = loadfx( "fx/dust/light_shaft_motes_afchase" );

    if ( level.script == "ending" )
        level._effect["light_glow_white_bulb"] = loadfx( "fx/dust/light_shaft_motes_afchase" );
    else
        level._effect["light_glow_white_bulb"] = loadfx( "fx/misc/light_glow_white_bulb" );

    level._effect["splash_underwater_afchase"] = loadfx( "fx/water/splash_underwater_afchase" );
    level._effect["rapids_splash_0x1000"] = loadfx( "fx/water/rapids_splash_0x1000" );
    level._effect["rapids_splash_1000x1000"] = loadfx( "fx/water/rapids_splash_1000x1000" );
    level._effect["rapids_splash_large"] = loadfx( "fx/water/rapids_splash_large" );
    level._effect["rapids_splash_large_dark"] = loadfx( "fx/water/rapids_splash_large_dark" );
    level._effect["rapids_splash_large_far"] = loadfx( "fx/water/rapids_splash_large_far" );
    level._effect["waterfall_afchase"] = loadfx( "fx/water/waterfall_afchase" );
    level._effect["waterfall_base_afchase"] = loadfx( "fx/water/waterfall_base_afchase" );
    level._effect["heli_blinds_player"] = loadfx( "fx/weather/sand_storm_player_blind" );
    level._effect["shepherd_anaconda"] = loadfx( "fx/muzzleflashes/desert_eagle_flash_wv" );
    level._effect["pavelow_minigunner_splash_add"] = loadfx( "fx/water/zodiac_splash_bounce_small" );
    level._effect["bloodpool_ending"] = loadfx( "fx/impacts/deathfx_bloodpool_ending" );
    level._effect["heli_water_wash"] = loadfx( "vfx/treadfx/heli_water_wash" );
    level._effect["ambient_cloud_mist_lg"] = loadfx( "vfx/cloud/ambient_cloud_mist_lg" );
    level._effect["smk_stacks_lp_lrg_a_nofog_z"] = loadfx( "vfx/sand/smk_stacks_lp_lrg_a_nofog_z" );
    level._effect["light_rays_moving_long"] = loadfx( "vfx/lights/light_rays_moving_long" );
    level._effect["ambient_cloud_shadow"] = loadfx( "vfx/cloud/ambient_cloud_shadow" );
    level._effect["lensflare_floodlight_on"] = loadfx( "vfx/lights/lensflare_floodlight_on" );
    level._effect["drips_slow_af_chase"] = loadfx( "vfx/rain/drips_slow_af_chase" );
    level._effect["light_glow_white_bulb_nolight"] = loadfx( "vfx/lights/light_glow_white_bulb_nolight" );
    level._effect["light_glow_white_bulb_small"] = loadfx( "fx/misc/light_glow_white_bulb_small" );
    level._effect["light_rays_moving_long_motes"] = loadfx( "vfx/lights/light_rays_moving_long_motes" );
    level._effect["light_rays_moving_long_thin"] = loadfx( "vfx/lights/light_rays_moving_long_thin" );
    level._effect["river_splashes"] = loadfx( "vfx/map/af_chase/river_splashes" );
    level._effect["river_water_swirls"] = loadfx( "vfx/map/af_chase/river_water_swirls" );
    level._effect["rocket_explosion_water_af_chase"] = loadfx( "vfx/map/af_chase/rocket_explosion_water_af_chase" );
    level._effect["waterfall_streak_single"] = loadfx( "vfx/water/waterfall_streak_single" );
    level._effect["waterfall_base_small_afchase"] = loadfx( "fx/water/waterfall_base_small_afchase" );
    level._effect["waterfall_floor_splash"] = loadfx( "vfx/map/af_chase/waterfall_floor_splash" );
    level._effect["waterfall_floor_splash_ending"] = loadfx( "vfx/map/af_chase/waterfall_floor_splash_ending" );
    level._effect["waterfall_streak_single_bright"] = loadfx( "vfx/water/waterfall_streak_single_bright" );
    level._effect["waterfall_afchase_sml"] = loadfx( "fx/water/waterfall_afchase_sml" );
    level._effect["waterfall_afchase_med"] = loadfx( "fx/water/waterfall_afchase_med" );
    level._effect["waterfall_afchase_lg"] = loadfx( "fx/water/waterfall_afchase_lg" );
    level._effect["sand_storm_wall_top"] = loadfx( "vfx/sand/sand_storm_wall_top" );
    level._effect["sand_ground_wind"] = loadfx( "vfx/sand/sand_ground_wind" );
    level._effect["cliff_rocket_explosion"] = loadfx( "vfx/map/af_chase/cliff_rocket_explosion" );
    level._effect["sand_ground_wind_vista"] = loadfx( "vfx/sand/sand_ground_wind_vista" );
    level._effect["heli_water_drips"] = loadfx( "vfx/water/heli_water_drips" );
    level._effect["rapids_splash_swirl_large"] = loadfx( "fx/water/rapids_splash_swirl_large" );
    level._effect["rapids_splash_swirl_small"] = loadfx( "fx/water/rapids_splash_swirl_small" );
    level._effect["rapids_splash_swirl_xlarge"] = loadfx( "fx/water/rapids_splash_swirl_xlarge" );
    level._effect["rapids_splash_swirl_rock_xlarge"] = loadfx( "fx/water/rapids_splash_swirl_rock_xlarge" );
    level._effect["river_flow_foam_patch"] = loadfx( "vfx/water/river_flow_foam_patch" );
    level._effect["rapids_splash_swirl_xlarge_rect"] = loadfx( "fx/water/rapids_splash_swirl_xlarge_rect" );
    level._effect["afchase_ripple_flow_single_no_geo"] = loadfx( "vfx/map/af_chase/afchase_ripple_flow_single_no_geo" );
    level._effect["waterfall_afchase_swirl_med"] = loadfx( "fx/water/waterfall_afchase_swirl_med" );
    level._effect["rapids_splash_swirl_large_unlit"] = loadfx( "fx/water/rapids_splash_swirl_large_unlit" );
    level._effect["waterfall_afchase_nograv_med"] = loadfx( "fx/water/waterfall_afchase_nograv_med" );
    level._effect["rapids_splash_swirl_small_unlit"] = loadfx( "fx/water/rapids_splash_swirl_small_unlit" );
    level._effect["water_fall_mist"] = loadfx( "vfx/water/water_fall_mist" );
    level._effect["ripple_flow_distortion_single_med_slow"] = loadfx( "vfx/water/ripple_flow_distortion_single_med_slow" );
    level._effect["ripple_flow_distortion_single_sml_slow"] = loadfx( "vfx/water/ripple_flow_distortion_single_sml_slow" );
    level._effect["rapids_splash_swirl_large_long"] = loadfx( "fx/water/rapids_splash_swirl_large_long" );
    level._effect["afch_rock_rapids_01"] = loadfx( "vfx/unique/afch_rock_rapids_01" );
    level._effect["afch_rock_rapids_02"] = loadfx( "vfx/unique/afch_rock_rapids_02" );
    level._effect["afch_flowpatch_rapids_01"] = loadfx( "vfx/unique/afch_flowpatch_rapids_01" );
    level._effect["afch_caustics_01_right"] = loadfx( "vfx/map/af_chase/afch_caustics_01_right" );
    level._effect["afch_caustics_01_left"] = loadfx( "vfx/map/af_chase/afch_caustics_01_left" );
    level._effect["afch_caustics_02_left"] = loadfx( "vfx/map/af_chase/afch_caustics_02_left" );
    level._effect["afch_caustics_02_right"] = loadfx( "vfx/map/af_chase/afch_caustics_02_right" );
    level._effect["trail_fire_smoke_l_afchase"] = loadfx( "vfx/trail/trail_fire_smoke_l_afchase" );
    level._effect["ground_sand_scroll"] = loadfx( "vfx/sand/ground_sand_scroll" );
    level._effect["sand_detail_flatground"] = loadfx( "vfx/sand/sand_detail_flatground" );
    level._effect["sand_detail_flatground_near"] = loadfx( "vfx/sand/sand_detail_flatground_near" );
    level._effect["sand_storm_player_opaque"] = loadfx( "fx/weather/sand_storm_player_opaque" );
    level._effect["sand_storm_debris_wind_01"] = loadfx( "vfx/map/af_chase/sand_storm_debris_wind_01" );
    level._effect["sand_storm_debris_wind_vf"] = loadfx( "vfx/map/af_chase/sand_storm_debris_wind_vf" );
    level._effect["pavelow_crash_fire_small"] = loadfx( "fx/fire/pavelow_crash_fire_small" );
    level._effect["h2_afch_waterfall_01"] = loadfx( "vfx/map/af_chase/h2_afch_waterfall_01" );
    level._effect["h2_afch_waterfall_02"] = loadfx( "vfx/map/af_chase/h2_afch_waterfall_02" );
    level._effect["h2_afch_waterfall_03"] = loadfx( "vfx/map/af_chase/h2_afch_waterfall_03" );
    level._effect["waterfall_afchase_med_ending"] = loadfx( "fx/water/waterfall_afchase_med_ending" );
    level._effect["waterfall_afchase_sml_ending"] = loadfx( "fx/water/waterfall_afchase_sml_ending" );
    level._effect["waterfall_afchase_med_lowgrav"] = loadfx( "fx/water/waterfall_afchase_med_lowgrav" );
    level._effect["waterfall_floor_foam"] = loadfx( "vfx/map/af_chase/waterfall_floor_foam" );
    level._effect["blood_smear_decal_ending"] = loadfx( "vfx/blood/blood_smear_decal_ending" );
    level._effect["sand_spray_detail"] = loadfx( "vfx/sand/sand_spray_detail" );
    level._effect["shadow_sand_patch"] = loadfx( "vfx/sand/shadow_sand_patch" );
    level._effect["tumbleweed"] = loadfx( "vfx/dust/tumbleweed" );
    level._effect["tidal_wave_endgame"] = loadfx( "vfx/water/tidal_wave_endgame" );
    level._effect["sand_hand_decal_diffuse"] = loadfx( "vfx/sand/sand_hand_decal_diffuse" );
    level._effect["sand_hand_decal_sharp_right"] = loadfx( "vfx/sand/sand_hand_decal_sharp_right" );
    level._effect["sand_hand_decal_sharp_left"] = loadfx( "vfx/sand/sand_hand_decal_sharp_left" );
    level._effect["blood_decal_player"] = loadfx( "fx/misc/blood_decal_player" );
    level._effect["water_spit_wv"] = loadfx( "vfx/water/water_spit_wv" );
    level._effect["sand_hand_decal_crawl_right"] = loadfx( "vfx/sand/sand_hand_decal_crawl_right" );
    level._effect["sand_hand_decal_crawl_left"] = loadfx( "vfx/sand/sand_hand_decal_crawl_left" );
    level._effect["rapids_splash_side_large"] = loadfx( "fx/water/rapids_splash_side_large" );
    level._effect["zodiac_enter_splash"] = loadfx( "vfx/map/af_chase/zodiac_enter_splash" );
    level._effect["zodiac_enter_splash_player"] = loadfx( "vfx/map/af_chase/zodiac_enter_splash_player" );
    level._effect["price_entering_water"] = loadfx( "vfx/map/af_chase/price_entering_water" );
    level._effect["water_spit_short_wv"] = loadfx( "vfx/water/water_spit_short_wv" );
    level._effect["sand_wind_dust_hero"] = loadfx( "vfx/dust/sand_wind_dust_hero" );
    level._effect["sand_wind_dust_detail_hero"] = loadfx( "vfx/dust/sand_wind_dust_detail_hero" );
    level._effect["footstep_dust_sandstorm_runner_sheperd"] = loadfx( "vfx/map/ending/footstep_dust_sandstorm_runner_sheperd" );
    level._effect["footstep_dust_sandstorm_small_runner_sheperd"] = loadfx( "vfx/map/ending/footstep_dust_sandstorm_small_runner_sheperd" );
    level._effect["waterfall_mist_af_chase"] = loadfx( "vfx/map/af_chase/waterfall_mist_af_chase" );
    level._effect["flesh_throat_blood_slash"] = loadfx( "vfx/blood/flesh_throat_blood_slash" );
    level._effect["flesh_impact_knife"] = loadfx( "vfx/weaponimpact/flesh_impact_knife" );
    level._effect["sand_storm_player_semi_opaque"] = loadfx( "fx/weather/sand_storm_player_semi_opaque" );
    level._effect["rapids_splash_swirl_xlarge_unlit"] = loadfx( "fx/water/rapids_splash_swirl_xlarge_unlit" );

    if ( getdvarint( "r_reflectionProbeGenerate" ) )
        return;

    treadfx_override();

    if ( level.script == "af_chase" )
    {
        thread _id_C274();
        setsaveddvar( "fx_alphathreshold", 1 );
    }

    if ( level.script == "ending" )
    {
        _id_A883::main();
        setsaveddvar( "fx_marks_nearlimit", 10 );
        setsaveddvar( "fx_alphathreshold", 7 );
    }
    else
        _id_B585::main();

    _id_CB01::main();
}

_id_C1AB()
{
    if ( getdvar( "createfx" ) != "" )
    {
        waittillframeend;
        level._id_BB65 = spawnstruct();
        level._id_BB65.min = 0.3;
        level._id_BB65._id_59F9 = 0.5;
        thread _id_BCE4();
    }
}

_id_C274()
{
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "-17196 1030 84" );
    waittillframeend;
    common_scripts\utility::flag_wait( "exit_caves" );
    setsaveddvar( "r_useLightGridDefaultFXLightingLookup", "1" );
    setsaveddvar( "r_lightGridDefaultFXLightingLookup", "28825 19136 -4712" );
}

_id_BCE4()
{
    thread _id_AA62();
    common_scripts\utility::flag_set( "blinder_effect" );
    _id_AEC0();
    _id_C872();
    common_scripts\utility::flag_clear( "blinder_effect" );
}

_id_C872()
{
    var_0 = ( 1.44118, 1.24118, 0.970589 );
    var_0 *= 0.53;
    level._id_CBA2 = var_0;
}

_id_B88F( var_0 )
{
    var_1 = ( 1.44118, 1.24118, 0.970589 );
    thread maps\_utility::sun_light_fade( level._id_CBA2, var_1, var_0 );
}

_id_AEC0()
{
    common_scripts\utility::flag_set( "sandstorm_fully_masked" );
}

_id_AA62()
{
    level endon( "stop_sandstorm_effect" );
    var_0 = getentarray( "player", "classname" )[0];

    for (;;)
    {
        var_1 = randomfloatrange( level._id_BB65.min, level._id_BB65._id_59F9 );
        var_1 *= 0.5;

        if ( var_1 < 0.5 )
            var_1 = 0.5;

        wait( var_1 );
        playfx( level._effect["sand_storm_player"], var_0.origin + ( 0, 0, 100 ) );
    }
}

_id_B003()
{
    thread maps\ending_aud::_id_AA82();
    level._id_BB65.min = 0.3;
    level._id_BB65._id_59F9 = 0.5;
}

_id_C14C()
{
    var_0 = [];

    foreach ( var_2 in level.createfxent )
    {
        if ( distance( var_2.v["origin"], level.price.origin ) < 400 )
        {
            var_2.origin = var_2.v["origin"];
            var_0[var_0.size] = var_2;
        }
    }

    var_0 = sortbydistance( var_0, level.price.origin );

    for (;;)
    {
        if ( level._id_BB65.min >= 1.5 && var_0.size )
        {
            foreach ( var_5 in var_0 )
                var_5 common_scripts\utility::pauseeffect();

            var_0 = [];
        }

        if ( level._id_BB65.min >= 2.0 )
            break;

        level._id_BB65.min += 0.1;
        level._id_BB65._id_59F9 += 0.15;
        wait 0.5;
    }

    level notify( "stop_sandstorm_effect" );
}

_id_D453()
{
    level endon( "stop_sandstorm_fog" );
    var_0 = common_scripts\utility::getstruct( "heli_fog_struct", "targetname" );
    var_1 = common_scripts\utility::getstruct( var_0.target, "targetname" );
    var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2.origin = var_1.origin;
    var_3 = distance( var_2.origin, var_0.origin );
    var_4 = maps\_utility::create_fog( "afch_fog_dunes_dynamic" );
    var_4.startdist = 0;
    var_4.halfwaydist = 8340;
    var_4.red = 0.661137;
    var_4.green = 0.554261;
    var_4.blue = 0.454014;
    var_4.maxopacity = 1;
    var_4.transitiontime = 0;
    var_5 = 500;
    var_6 = 200;
    var_7 = abs( var_5 - var_6 );
    level._id_B836 = 500;
    var_8 = 0;

    for (;;)
    {
        var_9 = distance( level.player.origin, var_2.origin );
        var_9 -= var_3;
        var_9 *= 0.25;

        if ( common_scripts\utility::flag( "fog_out_stumble_shepherd" ) && isalive( level._id_D0C2 ) )
        {
            if ( !var_8 )
                var_8 = 1;

            var_10 = 0.8;
            var_2.origin = var_2.origin * var_10 + level._id_D0C2.origin * ( 1 - var_10 );
            var_11 = distance( level.player.origin, var_2.origin );
            var_11 *= 0.75;
            var_10 = 0.9;
            level._id_B836 = level._id_B836 * var_10 + var_11 * ( 1 - var_10 );
            level._id_B836 = clamp( level._id_B836, 50, 500 );
        }
        else if ( level._id_B836 < 500 )
        {
            level._id_B836 += 25;
            level._id_B836 = clamp( level._id_B836, 0, 500 );
        }

        if ( var_9 < level._id_B836 )
            var_9 = level._id_B836;

        var_4.startdist = var_9 * 0.75;
        var_4.halfwaydist = var_9;
        wait 0.2;
        var_12 = vectortoangles( var_0.origin - level.player.origin );
        var_13 = anglestoforward( var_12 );
    }
}

_id_CFE1()
{
    var_0 = common_scripts\utility::getfx( "player_knife_wound" );
    var_1 = maps\af_chase_knife_fight_code::_id_CF10();
    playfxontag( var_0, var_1, "TAG_FX" );
}

_id_B8C2()
{
    setsaveddvar( "fx_alphathreshold", 3 );
    playfx( common_scripts\utility::getfx( "splash_underwater_afchase" ), ( 25590.3, 26824, -10008.9 ) );
}

treadfx_override()
{
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "brick", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "bark", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "carpet", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "cloth", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "concrete", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "dirt", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "flesh", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "foliage", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "glass", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "grass", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "gravel", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "ice", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "metal", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "mud", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "paper", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "plaster", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "rock", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "sand", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "snow", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "water", "fx/treadfx/heli_water" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "wood", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "asphalt", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "ceramic", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "plastic", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "rubber", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "cushion", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "fruit", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "painted metal", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "default", "fx/treadfx/heli_sand_large" );
    maps\_treadfx::setvehiclefx( "script_vehicle_pavelow", "none", "fx/treadfx/heli_sand_large" );
    var_0[0] = "script_vehicle_littlebird_armed";
    var_0[1] = "script_vehicle_littlebird_bench";

    foreach ( var_2 in var_0 )
    {
        maps\_treadfx::setvehiclefx( var_2, "brick", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "bark", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "carpet", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "cloth", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "concrete", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "dirt", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "flesh", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "foliage", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "glass", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "grass", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "gravel", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "ice", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "metal", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "mud", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "paper", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "plaster", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "rock", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "sand", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "snow", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "water", "vfx/treadfx/heli_water_wash" );
        maps\_treadfx::setvehiclefx( var_2, "wood", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "asphalt", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "ceramic", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "plastic", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "rubber", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "cushion", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "fruit", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "painted metal", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "default", "fx/treadfx/heli_sand_default" );
        maps\_treadfx::setvehiclefx( var_2, "none", "fx/treadfx/heli_sand_default" );
    }
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level._effect["icicle_end_des"] = loadfx( "fx/props/icicle_end_des" );
    level._effect["icicle_tall_des"] = loadfx( "fx/props/icicle_tall_des" );
    level._effect["icicle_small_des"] = loadfx( "fx/props/icicle_small_des" );
    maps\_vehicle::build_deathfx_override( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine", "littlebird_helicopter_secondary_exp", undefined, undefined, undefined, 0.0, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "fx/fire/fire_smoke_trail_L_oilrig", "tag_engine", "littlebird_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "fx/explosions/helicopter_explosion_secondary_small", "tag_engine", "littlebird_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1 );
    maps\_vehicle::build_deathfx_override( "script_vehicle_littlebird_armed", "littlebird", "vehicle_little_bird_armed", "vfx/water/mortarExp_water_runner", undefined, "littlebird_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    thread precachefx();
    thread treadfx_override();
    _id_D3A4::main();
    _id_B503::main();
    _id_B308();
    thread _id_BF2D();
    thread setlightdefault();
}

precachefx()
{
    level._effect["pipe_steam"] = loadfx( "fx/impacts/pipe_steam" );
    level._effect["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight" );
    level._effect["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm" );
    level._effect["minigun_shell_eject"] = loadfx( "fx/shellejects/20mm_mp" );
    level._effect["oilrig_underwater_cam_distort"] = loadfx( "fx/water/oilrig_underwater_cam_distort" );
    level._effect["propane_large_exp_h2_oilrig"] = loadfx( "fx/explosions/propane_large_exp_h2_oilrig" );
    level._effect["tower_light_blue_steady_oilrig"] = loadfx( "fx/misc/tower_light_blue_steady_oilrig" );
    level._effect["cold_breath"] = loadfx( "fx/misc/cold_breath_oilrig" );
    level._effect["player_death_explosion"] = loadfx( "fx/explosions/player_death_explosion" );
    level._effect["smokescreen"] = loadfx( "vfx/map/oilrig/oilrig_smoke_screen" );
    level._effect["sdv_prop_wash_1"] = loadfx( "fx/water/sdv_prop_wash_1" );
    level._effect["sdv_contrail"] = loadfx( "fx/smoke/jet_contrail" );
    level._effect["c4exp_default"] = loadfx( "fx/explosions/c4exp_default" );
    level._effect["smokescreen_oilrig_fadeout"] = loadfx( "vfx/map/oilrig/smokescreen_oilrig_fadeout" );
    level._effect["dirty_foam_oilrig"] = loadfx( "vfx/water/dirty_foam_oilrig" );
    level._effect["underwater_godray_oilrig"] = loadfx( "vfx/lights/underwater_godray_oilrig" );
    level._effect["caustics_oilrig_zedge"] = loadfx( "fx/water/caustics_oilrig_zedge" );
    level._effect["caustics_oilrig_sdv_player"] = loadfx( "fx/water/caustics_oilrig_sdv_player" );
    level._effect["spotlight_oilrig_sdv_player"] = loadfx( "fx/water/spotlight_oilrig_sdv_player" );
    level._effect["drips_oilrig_watersurface"] = loadfx( "fx/misc/drips_oilrig_watersurface" );
    level._effect["caustic_projected_oilrig"] = loadfx( "vfx/water/caustic_projected_oilrig" );
    level._effect["scuba_bubbles"] = loadfx( "fx/water/scuba_bubbles_breath_player_oilrig" );
    level._effect["scuba_bubbles_friendly"] = loadfx( "fx/water/scuba_bubbles_breath" );
    level._effect["oilrig_underwater_ambient"] = loadfx( "fx/water/oilrig_underwater_ambient" );
    level._effect["oilrig_underwater_ambient_emitter"] = loadfx( "fx/water/oilrig_underwater_ambient_emitter" );
    level._effect["oilrig_underwater_ambient_looped"] = loadfx( "fx/water/oilrig_underwater_ambient_looped" );
    level._effect["fish_school01"] = loadfx( "fx/animals/fish_school01" );
    level._effect["fish_school_top_oilrig_base"] = loadfx( "fx/animals/fish_school_top_oilrig_base" );
    level._effect["fish_school_side_med"] = loadfx( "fx/animals/fish_school_side_med" );
    level._effect["fish_school_side_large"] = loadfx( "fx/animals/fish_school_side_large" );
    level._effect["oilrig_underwater_caustic"] = loadfx( "fx/water/oilrig_underwater_caustic" );
    level._effect["intro_bubbles_door_oilrig"] = loadfx( "vfx/water/intro_bubbles_door_oilrig" );
    level._effect["intro_bubbles_oilrig"] = loadfx( "vfx/water/intro_bubbles_oilrig" );
    level._effect["screen_splash_distort_wash_oilrig"] = loadfx( "vfx/distortion/screen_splash_distort_wash_oilrig" );
    level._effect["oilrig_underwater_ambient_looped_nosmoke"] = loadfx( "fx/water/oilrig_underwater_ambient_looped_nosmoke" );
    level._effect["oilrig_wavebreak_contact"] = loadfx( "vfx/water/oilrig_wavebreak_contact" );
    level._effect["oilrig_wavebreak_ocean"] = loadfx( "vfx/water/oilrig_wavebreak_ocean" );
    level._effect["oilrig_structure_caustic_square"] = loadfx( "fx/water/oilrig_structure_caustic_square" );
    level._effect["oilrig_player_wave"] = loadfx( "vfx/water/oilrig_player_wave" );
    level._effect["water_stop"] = loadfx( "fx/misc/parabolic_water_stand" );
    level._effect["water_movement"] = loadfx( "fx/misc/parabolic_water_movement" );
    level._effect["oilrig_wavebreak_iceberg"] = loadfx( "vfx/water/oilrig_wavebreak_iceberg" );
    level._effect["godray_underwater_oilrig"] = loadfx( "vfx/lights/godray_underwater_oilrig" );
    level._effect["bloodspurt_underwater"] = loadfx( "fx/water/blood_spurt_underwater" );
    level._effect["deathfx_bloodpool_underwater"] = loadfx( "fx/impacts/deathfx_bloodpool_underwater" );
    level._effect["splash_underwater_stealthkill"] = loadfx( "fx/water/splash_underwater_stealthkill" );
    level._effect["oilrig_ai_wave"] = loadfx( "vfx/water/oilrig_ai_wave" );
    level._effect["drips_player_hand"] = loadfx( "fx/water/drips_player_hand" );
    level._effect["ripple_distortion_oilrig"] = loadfx( "vfx/water/ripple_distortion_oilrig" );
    level._effect["oil_rig_fire"] = loadfx( "fx/fire/oil_rig_fire" );
    level._effect["wavebreak_oilrig_runner"] = loadfx( "fx/misc/wavebreak_oilrig_runner" );
    level._effect["water_froth_oilrig"] = loadfx( "fx/misc/water_froth_oilrig" );
    level._effect["water_froth_oilrig_leg_runner"] = loadfx( "fx/misc/water_froth_oilrig_leg_runner" );
    level._effect["bird_seagull_flock_large"] = loadfx( "fx/misc/bird_seagull_flock_large" );
    level._effect["powerline_runner"] = loadfx( "fx/explosions/powerline_runner" );
    level._effect["knife_attack_throat_oilrig"] = loadfx( "vfx/map/oilrig/knife_attack_throat_oilrig" );
    level._effect["underwater_godray_oilrig_far"] = loadfx( "vfx/lights/underwater_godray_oilrig_far" );
    level._effect["underwater_godray_oilrig_short"] = loadfx( "vfx/lights/underwater_godray_oilrig_short" );
    level._effect["oilrig_wavebreak_iceberg_large"] = loadfx( "vfx/water/oilrig_wavebreak_iceberg_large" );
    level._effect["fish_school_oilrig"] = loadfx( "vfx/animal/fish_school_oilrig" );
    level._effect["fog_distant_vista_oirlig"] = loadfx( "vfx/fog/fog_distant_vista_oirlig" );
    level._effect["iceberg_zedge_oilrig"] = loadfx( "vfx/fog/iceberg_zedge_oilrig" );
    level._effect["oilrig_sdv_rimlight"] = loadfx( "vfx/lights/oilrig_sdv_rimlight" );
    level._effect["fire_smoke_trail_l_oilrig"] = loadfx( "fx/fire/fire_smoke_trail_l_oilrig" );
    level._effect["oilrig_turbine_steam"] = loadfx( "vfx/map/oilrig/oilrig_turbine_steam" );
    level._effect["fluorescent_light_cone_oilrig"] = loadfx( "vfx/lights/fluorescent_light_cone_oilrig" );
    level._effect["grate_smoke_oilrig"] = loadfx( "fx/smoke/grate_smoke_oilrig" );
    level._effect["oilrig_drips_riser"] = loadfx( "fx/water/oilrig_drips_riser" );
    level._effect["splash_ring_32_oilrig"] = loadfx( "fx/water/splash_ring_32_oilrig" );
    level._effect["drips_slow"] = loadfx( "fx/misc/drips_slow" );
    level._effect["steam_vent_small"] = loadfx( "fx/smoke/steam_vent_small" );
    level._effect["steam_manhole"] = loadfx( "fx/smoke/steam_manhole" );
    level._effect["steam_room_100"] = loadfx( "fx/smoke/steam_room_100" );
    level._effect["steam_hall_200"] = loadfx( "fx/smoke/steam_hall_200" );
    level._effect["steam_room_100_orange"] = loadfx( "fx/smoke/steam_room_100_orange" );
    level._effect["steam_hall_200_orange"] = loadfx( "fx/smoke/steam_hall_200_orange" );
    level._effect["light_glow_grating_yellow"] = loadfx( "fx/misc/light_glow_grating_yellow" );
    level._effect["oilrig_debri_large"] = loadfx( "fx/misc/oilrig_debri_large" );
    level._effect["ground_fog_oilrig"] = loadfx( "fx/smoke/ground_fog_oilrig" );
    level._effect["ground_fog_oilrig_far"] = loadfx( "fx/smoke/ground_fog_oilrig_far" );
    level._effect["thin_black_smoke_M"] = loadfx( "fx/smoke/thin_black_smoke_M_nofog" );
    level._effect["thin_black_smoke_L"] = loadfx( "fx/smoke/thin_black_smoke_L_nofog" );
    level._effect["thin_black_smoke_S"] = loadfx( "fx/smoke/thin_black_smoke_S_nofog" );
    level._effect["cigarette_smk_vlobby"] = loadfx( "vfx/smoke/cigarette_smk_vlobby" );
    level._effect["cigarette_exhale_vlobby"] = loadfx( "vfx/smoke/cigarette_exhale_vlobby" );
    level._effect["cigarette_ash_vlobby"] = loadfx( "vfx/smoke/cigarette_ash_vlobby" );
    level._effect["cigarette_endglow_vlobby"] = loadfx( "vfx/smoke/cigarette_endglow_vlobby" );
    level._effect["underwater_particulates_01"] = loadfx( "fx/dust/light_shaft_dust_large" );
    level._effect["underwater_particulates_02"] = loadfx( "fx/dust/room_dust_200" );
    level._effect["underwater_particulates_03"] = loadfx( "fx/dust/room_dust_100" );
    level._effect["heli_snow_default_oilrig"] = loadfx( "fx/treadfx/heli_snow_default_oilrig" );
    level._effect["screen_splash_distort_wash_oilrig_vertical"] = loadfx( "vfx/distortion/screen_splash_distort_wash_oilrig_vertical" );
    level._effect["oilrig_wavebreak"] = loadfx( "vfx/water/oilrig_wavebreak" );
    level._effect["underwater_particles_oilrig"] = loadfx( "vfx/lights/underwater_particles_oilrig" );
    level._effect["lensflare_floodlight_on_yellow_oilrig"] = loadfx( "vfx/lights/lensflare_floodlight_on_yellow_oilrig" );
    level._effect["body_splash_railing"] = loadfx( "fx/impacts/water_splash_bodydump" );
    level._effect["ambush_explosion_03"] = loadfx( "fx/explosions/window_explosion_1_oilrig" );
    level._effect["ambush_explosion_room"] = loadfx( "fx/explosions/room_explosion_oilrig" );
    level._effect["light_c4_blink_nodlight"] = loadfx( "fx/misc/light_c4_blink_nodlight" );
    level._effect["zodiac_wake_geotrail_oilrig"] = loadfx( "fx/treadfx/zodiac_wake_geotrail_oilrig" );
    level._effect["sub_surface_runner"] = loadfx( "fx/water/sub_surface_runner" );
    level._effect["oilrig_smoke_screen"] = loadfx( "vfx/map/oilrig/oilrig_smoke_screen" );
    level._effect["water_pipe_pour_single"] = loadfx( "vfx/water/water_pipe_pour_single" );
    level._effect["snow_flurries_light"] = loadfx( "vfx/snow/snow_flurries_light" );
    level._effect["hallway_steam_flood"] = loadfx( "fx/smoke/hallway_steam_flood" );
    level._effect["steam_jet_med"] = loadfx( "fx/smoke/h1_steam_jet_med" );
    level._effect["steam_jet_med_loop"] = loadfx( "fx/smoke/h1_steam_jet_med_loop" );
    level._effect["steam_jet_med_loop_rand"] = loadfx( "fx/smoke/h1_steam_jet_med_loop_random" );
    level._effect["shower_spray"] = loadfx( "fx/misc/shower_spray" );
    level._effect["oilrig_steam"] = loadfx( "vfx/map/oilrig/oilrig_steam" );
    level._effect["water_drip"] = loadfx( "vfx/water/falling_drip_ceil_launch_b" );
    level._effect["water_trickle"] = loadfx( "vfx/water/falling_pipe_water_trickle_straight_continue" );
    level._effect["splash_up"] = loadfx( "fx/water/splash_launch_b" );
    level._effect["flare_sm"] = loadfx( "vfx/lensflare/launch_b_flare_sm" );
    level._effect["electrical_spark_loop"] = loadfx( "vfx/sparks/electrical_spark_loop" );
    level._effect["oilrig_vista_smoke_01"] = loadfx( "vfx/map/oilrig/oilrig_vista_smoke_01" );
    level._effect["oilrig_c4_explosion"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion" );
    level._effect["oilrig_c4_explosion_window"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_window" );
    level._effect["oilrig_c4_explosion_afterfire_01"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_afterfire_01" );
    level._effect["oilrig_c4_explosion_aftersmoke_01"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_aftersmoke_01" );
    level._effect["oilrig_c4_explosion_aftersmoke_02"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_aftersmoke_02" );
    level._effect["oilrig_burnoff_fire"] = loadfx( "vfx/map/oilrig/oilrig_burnoff_fire" );
    level._effect["oilrig_column_seafoam"] = loadfx( "vfx/map/oilrig/oilrig_column_seafoam" );
    level._effect["propane_large_exp_h2"] = loadfx( "fx/explosions/propane_large_exp_h2_oilrig" );
    level._effect["electrical_spark_loop"] = loadfx( "vfx/map/oilrig/oilrig_spark_loop" );
    level._effect["light_red_tower_blinking"] = loadfx( "vfx/lights/light_red_tower_blinking" );
    level._effect["steam_pipe_leak_interior_sm"] = loadfx( "vfx/steam/steam_pipe_leak_interior_sm" );
    level._effect["oilrig_hanging_lights"] = loadfx( "vfx/map/oilrig/oilrig_hanging_lights" );
    level._effect["oilrig_hanging_lights_aftermoke"] = loadfx( "vfx/map/oilrig/oilrig_hanging_lights_aftermoke" );
    level._effect["oilrig_hanging_fluorescent_lights"] = loadfx( "vfx/map/oilrig/oilrig_hanging_fluorescent_lights" );
    level._effect["oilrig_square_flood_lights"] = loadfx( "vfx/map/oilrig/oilrig_square_flood_lights" );
    level._effect["oilrig_propane_tank_a_01"] = loadfx( "vfx/map/oilrig/oilrig_propane_tank_a_01" );
    level._effect["oilrig_propane_tank_a_02"] = loadfx( "vfx/map/oilrig/oilrig_propane_tank_a_02" );
    level._effect["oilrig_c4_explosion_afterfire_tube"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_afterfire_tube" );
    level._effect["oilrig_c4_explosion_aftersmoke_wide"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_aftersmoke_wide" );
    level._effect["oilrig_heli_flyby"] = loadfx( "vfx/map/oilrig/oilrig_heli_flyby" );
    level._effect["oilrig_heli_flyby_spirals"] = loadfx( "vfx/map/oilrig/oilrig_heli_flyby_spirals" );
    level._effect["fx_sunflare_oilrig"] = loadfx( "vfx/lensflare/fx_sunflare_oilrig" );
    level._effect["oilrig_heli_spotlight"] = loadfx( "vfx/map/oilrig/oilrig_heli_spotlight" );
    level._effect["heli_idle_snow"] = loadfx( "vfx/treadfx/heli_idle_snow" );
    level._effect["oilrig_door_breach"] = loadfx( "vfx/map/oilrig/oilrig_door_breach" );
    level._effect["oilrig_c4_explosion_after_spotlight"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_after_spotlight" );
    level._effect["oilrig_c4_explosion_after_spritelight"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_after_spritelight" );
    level._effect["oilrig_c4_explosion_godrays"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_godrays" );
    level._effect["oilrig_c4_explosion_ash"] = loadfx( "vfx/map/oilrig/oilrig_c4_explosion_ash" );
    level._effect["oilrig_vista_iceberg_snow_blow"] = loadfx( "vfx/map/oilrig/oilrig_vista_iceberg_snow_blow" );
    level._effect["oilrig_vista_iceberg_snow_blow_child"] = loadfx( "vfx/map/oilrig/oilrig_vista_iceberg_snow_blow_child" );
    level._effect["oilrig_fog_vista"] = loadfx( "vfx/map/oilrig/oilrig_fog_vista" );
    level._effect["oilrig_sparks_burst_a"] = loadfx( "vfx/map/oilrig/oilrig_sparks_burst_a" );
    level._effect["oilrig_structure_caustic"] = loadfx( "fx/water/oilrig_structure_caustic" );
    level._effect["blink_red_light"] = loadfx( "vfx/lights/blink_red_light" );
    level._effect["water_object_splash_wide_tall_oilrig"] = loadfx( "vfx/map/oilrig/water_object_splash_wide_tall_oilrig" );
    level._effect["underwater_godray_oilrig_far"] = loadfx( "vfx/lights/underwater_godray_oilrig_far" );
    level._effect["omni_heli_oilrig"] = loadfx( "vfx/map/oilrig/omni_heli_oilrig" );
    level._effect["aircraft_spotlight_cockpit_oilrig"] = loadfx( "fx/misc/aircraft_spotlight_cockpit_oilrig" );

    if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
        level._effect["spotlight"] = loadfx( "fx/misc/hunted_spotlight_model" );
    else
        level._effect["spotlight"] = loadfx( "fx/misc/spotlight_large" );

    level._effect["heli_dlight_blue"] = loadfx( "fx/misc/aircraft_light_cockpit_blue" );
    level._effect["_attack_heli_spotlight"] = loadfx( "fx/misc/spotlight_medium_oilrig" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/distortion/propane_cap_distortion", "fx/distortion/propane_cap_distortion_h2" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/fire/propane_capfire_flareup", "fx/fire/propane_capfire_flareup_h2" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/fire/propane_capfire", "fx/fire/propane_capfire_h2" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/fire/propane_capfire_leak", "fx/fire/propane_capfire_leak_h2" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/fire/propane_small_fire", "fx/fire/propane_small_fire_h2_oilrig" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/fire/propane_large_fire", "fx/fire/propane_large_fire_h2" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/fire/propane_valvefire_flareup", "fx/fire/propane_valvefire_flareup_h2" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/explosions/propane_large_exp", "fx/explosions/propane_large_exp_h2_oilrig" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/explosions/propane_large_exp_h2", "fx/explosions/propane_large_exp_h2_oilrig" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02", "fx/explosions/propane_large_exp_h2", "fx/explosions/propane_large_exp_h2_oilrig" );
    common_scripts\_destructible::_id_BDEC( "toy_propane_tank02_small", "fx/fire/propane_valvefire", "fx/fire/propane_valvefire_h2" );
}

_id_C8CC()
{
    common_scripts\utility::flag_wait( "open_dds_door" );
}

_id_AD74()
{
    common_scripts\utility::flag_wait( "intro_anim_sequence_starting" );
    wait 14;
    soundscripts\_snd::snd_message( "aud_underwater_ambience" );
    thread maps\_utility::play_sound_on_tag( "submarine_driveby", "TAG_PROPELLER" );
}

_id_D06F()
{
    self waittill( "moving" );
    thread maps\_utility::play_sound_on_tag( "scn_diveboat_plr_start", "TAG_PROPELLER" );
    thread maps\oilrig_aud::_id_C22C();
    maps\_utility::delaythread( 10, maps\_utility::play_loop_sound_on_tag, "scn_diveboat_plr_loop", "TAG_PROPELLER", 1 );
    var_0 = common_scripts\utility::spawn_tag_origin();
    var_0 linkto( self );
    playfxontag( common_scripts\utility::getfx( "oilrig_underwater_ambient_emitter" ), self, "origin_animate_jnt" );
    wait 3;
    playfxontag( common_scripts\utility::getfx( "spotlight_oilrig_sdv_player" ), var_0, "tag_origin" );
    wait 8;
    playfxontag( common_scripts\utility::getfx( "caustics_oilrig_sdv_player" ), self, "origin_animate_jnt" );
    self waittill( "stopped_moving" );
    self notify( "stop soundscn_diveboat_plr_loop" );
    thread maps\_utility::play_sound_on_tag( "sdv_stop_plr", "TAG_PROPELLER" );
    common_scripts\utility::flag_wait( "sdv_01_arriving" );
    wait 17.3;
    common_scripts\_exploder::exploder( 257 );
    killfxontag( common_scripts\utility::getfx( "spotlight_oilrig_sdv_player" ), var_0, "tag_origin" );
    play_swimming_fx();
    common_scripts\utility::flag_wait( "player_looking_at_floating_body" );
    wait 6;
    common_scripts\_exploder::exploder( "256" );
}

play_swimming_fx()
{
    while ( !common_scripts\utility::flag( "player_starting_stealth_kill" ) )
    {
        var_0 = level.player geteye();
        playfx( common_scripts\utility::getfx( "oilrig_player_wave" ), var_0 );
        wait 1;
    }
}

_id_B8DB()
{
    var_0 = spawnfx( common_scripts\utility::getfx( "oilrig_underwater_cam_distort" ), ( 0, 0, 0 ) );
    _func_15E( var_0, 1 );
    triggerfx( var_0 );
    waitframe();
    common_scripts\utility::flag_wait( "player_breaks_surface" );
    var_0 delete();
}

_id_ABCA()
{
    common_scripts\utility::flag_wait( "open_dds_door" );
    common_scripts\_exploder::exploder( "255" );
    self waittill( "moving" );
    thread maps\_utility::play_sound_on_tag( "sdv_start", "TAG_PROPELLER" );
    maps\_utility::delaythread( 1, maps\_utility::play_loop_sound_on_tag, "sdv_move_loop", "TAG_PROPELLER", 1 );
    playfxontag( common_scripts\utility::getfx( "sdv_prop_wash_1" ), self, "propeller_animate_jnt" );
    playfxontag( common_scripts\utility::getfx( "oilrig_sdv_rimlight" ), self, "tag_origin" );
    self waittill( "stopped_moving" );
    stopfxontag( common_scripts\utility::getfx( "sdv_contrail" ), self, "TAG_PROPELLER" );
    stopfxontag( common_scripts\utility::getfx( "sdv_prop_wash_1" ), self, "propeller_animate_jnt" );
    self notify( "stop soundsdv_move_loop" );
    thread maps\_utility::play_sound_on_tag( "sdv_stop", "TAG_PROPELLER" );
}

underwater_ambient_fx()
{
    self waittill( "moving" );

    while ( self.moving )
    {
        playfxontag( common_scripts\utility::getfx( "oilrig_underwater_ambient" ), self, "TAG_PROPELLER" );
        wait 0.1;
    }
}

_id_C3C1( var_0 )
{
    playfxontag( common_scripts\utility::getfx( "deathfx_bloodpool_underwater" ), var_0, "J_NECK" );
}

_id_D413( var_0 )
{
    playfxontag( common_scripts\utility::getfx( "bloodspurt_underwater" ), var_0, "TAG_KNIFE_FX" );
}

_id_D35A( var_0 )
{
    playfxontag( common_scripts\utility::getfx( "splash_underwater_stealthkill" ), var_0, "J_SpineUpper" );
}

_id_B9EA( var_0 )
{
    var_1 = [];
    var_1[var_1.size] = "J_Wrist_LE";
    var_1[var_1.size] = "J_Thumb_LE_1";
    var_1[var_1.size] = "J_Thumb_LE_2";
    var_2 = 10;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        thread _id_A878( var_1, var_0 );
        wait( randomfloatrange( 0.05, 0.3 ) );
    }
}

_id_C9C1( var_0 )
{
    var_1 = [];
    var_1[var_1.size] = "J_Wrist_RI";
    var_1[var_1.size] = "J_Thumb_RI_1";
    var_1[var_1.size] = "J_Webbing_RI";
    var_1[var_1.size] = "J_Elbow_RI";
    var_2 = 10;

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        thread _id_A878( var_1, var_0 );
        wait( randomfloatrange( 0.05, 0.3 ) );
    }
}

_id_A878( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
        playfxontag( common_scripts\utility::getfx( "drips_player_hand" ), var_1, var_3 );
}

treadfx_override()
{
    var_0 = "fx/treadfx/tread_snow_slush";
    var_1 = "fx/treadfx/heli_snow_default_oilrig";
    var_2[0] = "script_vehicle_littlebird_armed";
    var_2[1] = "script_vehicle_littlebird_bench";

    foreach ( var_4 in var_2 )
    {
        maps\_treadfx::setvehiclefx( var_4, "brick", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "bark", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "carpet", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "cloth", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "concrete", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "dirt", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "flesh", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "foliage", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "glass", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "grass", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "gravel", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "ice", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "metal", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "mud", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "paper", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "plaster", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "rock", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "sand", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "snow", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "water", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "wood", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "asphalt", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "ceramic", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "plastic", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "rubber", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "cushion", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "fruit", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "painted metal", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "default", var_1, "h1r_default_helicopter_wind" );
        maps\_treadfx::setvehiclefx( var_4, "none", var_1, "h1r_default_helicopter_wind" );
    }

    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "brick", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "bark", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "carpet", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "cloth", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "concrete", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "dirt", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "flesh", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "foliage", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "glass", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "grass", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "gravel", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "ice", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "metal", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "mud", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "paper", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "plaster", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "rock", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "sand", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "snow", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "water", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "wood", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "asphalt", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "ceramic", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "plastic", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "rubber", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "cushion", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "fruit", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "painted metal", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "default", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_blackhawk", "none", var_1, "h1r_default_helicopter_wind" );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "brick", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "bark", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "carpet", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "cloth", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "concrete", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "dirt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "flesh", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "foliage", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "glass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "grass", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "gravel", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "ice", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "mud", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "paper", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "plaster", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "rock", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "sand", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "snow", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "water", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "wood", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "asphalt", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "ceramic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "plastic", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "rubber", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "cushion", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "fruit", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "painted metal", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "default", var_0 );
    maps\_treadfx::setvehiclefx( "script_vehicle_zodiac", "none", var_0 );
}

_id_BF2D()
{
    thread _id_C2BE();
    thread breach_doors();
}

setlightdefault()
{
    var_0 = getent( "breach1_spot1", "targetname" );
    var_0 setlightintensity( 60000 );
    var_0 _meth_81EF( 1024 );
}

_id_C90E( var_0 )
{
    self waittill( "FX_State_Change0" );
    self waittill( "FX_State_Change0" );
    self waittill( "FX_State_Change0" );
    common_scripts\_exploder::exploder( var_0[0] );
    self waittill( "exploded" );
    common_scripts\_exploder::exploder( var_0[1] );
}

_id_C2BE()
{
    var_0 = [];
    var_1 = getentarray( "destructible_toy", "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( var_3.model == "com_propane_tank02_small" )
            var_0 = common_scripts\utility::array_add( var_0, var_3 );
    }

    var_5 = getentarray( "propane_tank_exploder", "targetname" );

    foreach ( var_7 in var_5 )
    {
        var_8 = strtok( var_7.script_noteworthy, " " );

        foreach ( var_10 in var_0 )
        {
            if ( ispointinvolume( var_10.origin, var_7 ) )
            {
                var_10 thread _id_C90E( var_8 );
                break;
            }
        }
    }
}

breach_doors()
{
    var_0 = getentarray( "breach_fx", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2.script_slowmo_breach ) )
            var_2 thread _id_C357();
    }
}

_id_C357()
{
    level waittill( "exploding_breach_" + self.script_slowmo_breach );
    var_0 = maps\_utility::spawn_anim_model( "breach_door_hinge_oilrig" );
    var_1 = undefined;

    switch ( self.script_slowmo_breach )
    {
        case 0:
            var_1 = getent( "breach_inside_lightgrid_origin1_left", "targetname" ).origin;
            thread breach_light_think();
            break;
        case 1:
            var_1 = getent( "breach_inside_lightgrid_origin1_right", "targetname" ).origin;
            thread breach_light_think();
            break;
        case 3:
        case 2:
            var_1 = getent( "breach_inside_lightgrid_origin2", "targetname" ).origin;
            break;
        default:
            break;
    }

    if ( isdefined( var_1 ) )
        var_0 _meth_848A( var_1 );

    var_2 = spawn( "script_origin", self.origin );
    var_2.angles = self.angles + ( 0, 90, 0 );
    var_3 = vectornormalize( anglestoright( var_2.angles ) );
    var_2.origin += var_3 * 5.0;
    var_2 thread maps\_anim::anim_single_solo( var_0, "breach" );
}

breach_light_think()
{
    if ( isdefined( level.insideslowmofirstbreach ) && level.insideslowmofirstbreach )
        return;

    level.insideslowmofirstbreach = 1;
    var_0 = getent( "breach1_spot1", "targetname" );
    var_0 setlightintensity( 5000 );
    var_0.intensity = 5000;
    level waittill( "slomo_breach_over" );
    var_0 setlightintensity( 8500 );
    var_0.intensity = 8500;
    var_0 _meth_81EF( 512 );
    level.insideslowmofirstbreach = 0;
}

_id_B308()
{
    maps\_global_fx::_id_C1C4( "light_blue_steady_FX_origin", "fx/misc/tower_light_blue_steady_oilrig", -2 );
}

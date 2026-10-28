// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_D1D8();
    precachefx();

    if ( getdvar( "createfx" ) != "on" || level._id_AC38 == "free" )
        _id_A9E8::main();
}

_id_D1D8()
{
    maps\_global_fx::_id_D1D8( "ch_stagelight01_on", "vfx/lensflare/flare_light_sml_museum", undefined, "flare_light_sml_museum" );
    maps\_global_fx::_id_D1D8( "rp_track_light_bulb_on", "vfx/lensflare/flare_light_tiny_museum", undefined, "flare_light_tiny_museum" );
    maps\_global_fx::_id_D1D8( "track_lights_suspended_can_on_01", "fx/misc/light_glow_walllight_white_museum", undefined, "light_glow_walllight_white_museum" );
}

precachefx()
{
    level._effect["strike_insects_flies_wall"] = loadfx( "vfx/map/mp_strike/strike_insects_flies_wall" );
    level._effect["insects_fruitflies_flying_museum"] = loadfx( "vfx/animal/insects_fruitflies_flying_museum" );
    level._effect["ambient_smoke_diorama_museum"] = loadfx( "vfx/smoke/ambient_smoke_diorama_museum" );
    level._effect["godray_ark_museum"] = loadfx( "vfx/lights/godray_ark_museum" );
    level._effect["lamp_ceiling_glow"] = loadfx( "vfx/lights/lamp_ceiling_glow_museum" );
    level._effect["lamp_ceiling_dust"] = loadfx( "vfx/lights/lamp_ceiling_dust" );
    level._effect["smoke_ambient_museum_dioramas_vehicles"] = loadfx( "vfx/smoke/smoke_ambient_museum_dioramas_vehicles" );
    level._effect["smoke_ambient_museum_dioramas_characters"] = loadfx( "vfx/smoke/smoke_ambient_museum_dioramas_characters" );
    level._effect["jet_afterburner_museum"] = loadfx( "vfx/fire/jet_afterburner_museum" );
    level._effect["clouds_moving_museum"] = loadfx( "vfx/map/irons_estate/clouds_moving_museum" );
    level._effect["jet_light_wingtip_red_museum"] = loadfx( "fx/misc/jet_light_wingtip_red_museum" );
    level._effect["aircraft_light_red_noblink"] = loadfx( "vfx/lights/aircraft_light_red_noblink_museum" );
    level._effect["drone_heatdistortion"] = loadfx( "fx/smoke/drone_heatdistortion" );
    level._effect["aircraft_light_red_blink"] = loadfx( "vfx/lights/aircraft_light_red_blink" );
    level._effect["helicopter_blaster_front_distortion"] = loadfx( "vfx/distortion/helicopter_blaster_front_distortion" );
    level._effect["aircraft_light_red_blink_museum_runner"] = loadfx( "fx/props/aircraft_light_red_blink_museum_runner" );
    level._effect["ash_column_falling_museum"] = loadfx( "fx/misc/ash_column_falling_museum" );
    level._effect["flare_ambient_museum"] = loadfx( "fx/misc/flare_ambient_museum" );
    level._effect["abrams_exhaust_museum"] = loadfx( "fx/distortion/abrams_exhaust_museum" );
    level._effect["snow_light_wind_gust_runner_museum"] = loadfx( "vfx/snow/snow_light_wind_gust_runner_museum" );
    level._effect["ambient_snowing_museum"] = loadfx( "vfx/snow/ambient_snowing_museum" );
    level._effect["scuba_bubbles_friendly"] = loadfx( "fx/water/scuba_bubbles_breath_museum" );
    level._effect["tank_bubbles_museum"] = loadfx( "vfx/water/tank_bubbles_museum" );
    level._effect["godray_watertank_museum"] = loadfx( "vfx/lights/godray_watertank_museum" );
    level._effect["tank_surface_bubbles_pole_museum"] = loadfx( "vfx/water/tank_surface_bubbles_pole_museum" );
    level._effect["tank_surface_bubbles_middle_museum"] = loadfx( "vfx/water/tank_surface_bubbles_middle_museum" );
    level._effect["caustic_museum_anchor"] = loadfx( "vfx/caustic/caustic_museum_anchor" );
    level._effect["caustic_museum_rocks5_1"] = loadfx( "vfx/caustic/caustic_museum_rocks5_1" );
    level._effect["caustic_museum_rocks5_2"] = loadfx( "vfx/caustic/caustic_museum_rocks5_2" );
    level._effect["caustic_museum_rocks5_3"] = loadfx( "vfx/caustic/caustic_museum_rocks5_3" );
    level._effect["caustic_museum_rocks5_4"] = loadfx( "vfx/caustic/caustic_museum_rocks5_4" );
    level._effect["caustic_museum_rocks2_1"] = loadfx( "vfx/caustic/caustic_museum_rocks2_1" );
    level._effect["caustic_museum_rocks2_2"] = loadfx( "vfx/caustic/caustic_museum_rocks2_2" );
    level._effect["caustic_museum_rocks2_3"] = loadfx( "vfx/caustic/caustic_museum_rocks2_3" );
    level._effect["caustic_museum_rocks2_4"] = loadfx( "vfx/caustic/caustic_museum_rocks2_4" );
    level._effect["caustic_museum_rocks1"] = loadfx( "vfx/caustic/caustic_museum_rocks1" );
    level._effect["caustic_museum_rocks1b"] = loadfx( "vfx/caustic/caustic_museum_rocks1b" );
    level._effect["caustic_museum_rocks4"] = loadfx( "vfx/caustic/caustic_museum_rocks4" );
    level._effect["caustic_museum_floor"] = loadfx( "vfx/caustic/caustic_museum_floor" );
    level._effect["caustic_museum_poles"] = loadfx( "vfx/caustic/caustic_museum_poles" );
    level._effect["oilrig_museum_structure_caustic_square"] = loadfx( "fx/water/oilrig_museum_structure_caustic_square" );
    level._effect["caustic_museum_ceiling"] = loadfx( "vfx/caustic/caustic_museum_ceiling" );
    level._effect["button_glow"] = loadfx( "vfx/lights/button_glow" );
    level._effect["lensflare_floodlight_museum"] = loadfx( "vfx/lights/lensflare_floodlight_museum" );
    level._effect["c4_blink"] = loadfx( "fx/misc/light_c4_blink_museum" );
    level._effect["firelp_small_museum"] = loadfx( "vfx/fire/firelp_small_museum" );
    level._effect["firelp_med_museum"] = loadfx( "vfx/fire/firelp_med_museum" );
    level._effect["firelp_line_museum"] = loadfx( "vfx/fire/firelp_line_museum" );
    level._effect["ambient_snowing_gulag_museum"] = loadfx( "vfx/snow/ambient_snowing_gulag_museum" );
    level._effect["heli_afterburner_museum_small"] = loadfx( "vfx/distortion/heli_afterburner_museum_small" );
    level._effect["heli_afterburner_museum"] = loadfx( "vfx/distortion/heli_afterburner_museum" );
    level._effect["water_distortion_favela_museum"] = loadfx( "fx/distortion/water_distortion_favela_museum" );
    level._effect["transformer_spark_runner"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._effect["powerline_runner_museum"] = loadfx( "fx/explosions/powerline_runner_museum" );
    level._effect["lamppost_flare_museum"] = loadfx( "vfx/lights/lamppost_flare_museum" );
    level._effect["lamppost_flare_museum_dust"] = loadfx( "vfx/lights/lamppost_flare_museum_dust" );
}

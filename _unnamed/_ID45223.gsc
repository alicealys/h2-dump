// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID53720();
    _ID28382();

    if ( getdvar( "createfx" ) != "on" || level._ID44088 == "free" )
        _ID43496::_ID616();
}

_ID53720()
{
    _ID42299::_ID53720( "ch_stagelight01_on", "vfx/lensflare/flare_light_sml_museum", undefined, "flare_light_sml_museum" );
    _ID42299::_ID53720( "rp_track_light_bulb_on", "vfx/lensflare/flare_light_tiny_museum", undefined, "flare_light_tiny_museum" );
    _ID42299::_ID53720( "track_lights_suspended_can_on_01", "fx/misc/light_glow_walllight_white_museum", undefined, "light_glow_walllight_white_museum" );
}

_ID28382()
{
    level._ID1426["strike_insects_flies_wall"] = loadfx( "vfx/map/mp_strike/strike_insects_flies_wall" );
    level._ID1426["insects_fruitflies_flying_museum"] = loadfx( "vfx/animal/insects_fruitflies_flying_museum" );
    level._ID1426["ambient_smoke_diorama_museum"] = loadfx( "vfx/smoke/ambient_smoke_diorama_museum" );
    level._ID1426["godray_ark_museum"] = loadfx( "vfx/lights/godray_ark_museum" );
    level._ID1426["lamp_ceiling_glow"] = loadfx( "vfx/lights/lamp_ceiling_glow_museum" );
    level._ID1426["lamp_ceiling_dust"] = loadfx( "vfx/lights/lamp_ceiling_dust" );
    level._ID1426["smoke_ambient_museum_dioramas_vehicles"] = loadfx( "vfx/smoke/smoke_ambient_museum_dioramas_vehicles" );
    level._ID1426["smoke_ambient_museum_dioramas_characters"] = loadfx( "vfx/smoke/smoke_ambient_museum_dioramas_characters" );
    level._ID1426["jet_afterburner_museum"] = loadfx( "vfx/fire/jet_afterburner_museum" );
    level._ID1426["clouds_moving_museum"] = loadfx( "vfx/map/irons_estate/clouds_moving_museum" );
    level._ID1426["jet_light_wingtip_red_museum"] = loadfx( "fx/misc/jet_light_wingtip_red_museum" );
    level._ID1426["aircraft_light_red_noblink"] = loadfx( "vfx/lights/aircraft_light_red_noblink_museum" );
    level._ID1426["drone_heatdistortion"] = loadfx( "fx/smoke/drone_heatdistortion" );
    level._ID1426["aircraft_light_red_blink"] = loadfx( "vfx/lights/aircraft_light_red_blink" );
    level._ID1426["helicopter_blaster_front_distortion"] = loadfx( "vfx/distortion/helicopter_blaster_front_distortion" );
    level._ID1426["aircraft_light_red_blink_museum_runner"] = loadfx( "fx/props/aircraft_light_red_blink_museum_runner" );
    level._ID1426["ash_column_falling_museum"] = loadfx( "fx/misc/ash_column_falling_museum" );
    level._ID1426["flare_ambient_museum"] = loadfx( "fx/misc/flare_ambient_museum" );
    level._ID1426["abrams_exhaust_museum"] = loadfx( "fx/distortion/abrams_exhaust_museum" );
    level._ID1426["snow_light_wind_gust_runner_museum"] = loadfx( "vfx/snow/snow_light_wind_gust_runner_museum" );
    level._ID1426["ambient_snowing_museum"] = loadfx( "vfx/snow/ambient_snowing_museum" );
    level._ID1426["scuba_bubbles_friendly"] = loadfx( "fx/water/scuba_bubbles_breath_museum" );
    level._ID1426["tank_bubbles_museum"] = loadfx( "vfx/water/tank_bubbles_museum" );
    level._ID1426["godray_watertank_museum"] = loadfx( "vfx/lights/godray_watertank_museum" );
    level._ID1426["tank_surface_bubbles_pole_museum"] = loadfx( "vfx/water/tank_surface_bubbles_pole_museum" );
    level._ID1426["tank_surface_bubbles_middle_museum"] = loadfx( "vfx/water/tank_surface_bubbles_middle_museum" );
    level._ID1426["caustic_museum_anchor"] = loadfx( "vfx/caustic/caustic_museum_anchor" );
    level._ID1426["caustic_museum_rocks5_1"] = loadfx( "vfx/caustic/caustic_museum_rocks5_1" );
    level._ID1426["caustic_museum_rocks5_2"] = loadfx( "vfx/caustic/caustic_museum_rocks5_2" );
    level._ID1426["caustic_museum_rocks5_3"] = loadfx( "vfx/caustic/caustic_museum_rocks5_3" );
    level._ID1426["caustic_museum_rocks5_4"] = loadfx( "vfx/caustic/caustic_museum_rocks5_4" );
    level._ID1426["caustic_museum_rocks2_1"] = loadfx( "vfx/caustic/caustic_museum_rocks2_1" );
    level._ID1426["caustic_museum_rocks2_2"] = loadfx( "vfx/caustic/caustic_museum_rocks2_2" );
    level._ID1426["caustic_museum_rocks2_3"] = loadfx( "vfx/caustic/caustic_museum_rocks2_3" );
    level._ID1426["caustic_museum_rocks2_4"] = loadfx( "vfx/caustic/caustic_museum_rocks2_4" );
    level._ID1426["caustic_museum_rocks1"] = loadfx( "vfx/caustic/caustic_museum_rocks1" );
    level._ID1426["caustic_museum_rocks1b"] = loadfx( "vfx/caustic/caustic_museum_rocks1b" );
    level._ID1426["caustic_museum_rocks4"] = loadfx( "vfx/caustic/caustic_museum_rocks4" );
    level._ID1426["caustic_museum_floor"] = loadfx( "vfx/caustic/caustic_museum_floor" );
    level._ID1426["caustic_museum_poles"] = loadfx( "vfx/caustic/caustic_museum_poles" );
    level._ID1426["oilrig_museum_structure_caustic_square"] = loadfx( "fx/water/oilrig_museum_structure_caustic_square" );
    level._ID1426["caustic_museum_ceiling"] = loadfx( "vfx/caustic/caustic_museum_ceiling" );
    level._ID1426["button_glow"] = loadfx( "vfx/lights/button_glow" );
    level._ID1426["lensflare_floodlight_museum"] = loadfx( "vfx/lights/lensflare_floodlight_museum" );
    level._ID1426["c4_blink"] = loadfx( "fx/misc/light_c4_blink_museum" );
    level._ID1426["firelp_small_museum"] = loadfx( "vfx/fire/firelp_small_museum" );
    level._ID1426["firelp_med_museum"] = loadfx( "vfx/fire/firelp_med_museum" );
    level._ID1426["firelp_line_museum"] = loadfx( "vfx/fire/firelp_line_museum" );
    level._ID1426["ambient_snowing_gulag_museum"] = loadfx( "vfx/snow/ambient_snowing_gulag_museum" );
    level._ID1426["heli_afterburner_museum_small"] = loadfx( "vfx/distortion/heli_afterburner_museum_small" );
    level._ID1426["heli_afterburner_museum"] = loadfx( "vfx/distortion/heli_afterburner_museum" );
    level._ID1426["water_distortion_favela_museum"] = loadfx( "fx/distortion/water_distortion_favela_museum" );
    level._ID1426["transformer_spark_runner"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._ID1426["powerline_runner_museum"] = loadfx( "fx/explosions/powerline_runner_museum" );
    level._ID1426["lamppost_flare_museum"] = loadfx( "vfx/lights/lamppost_flare_museum" );
    level._ID1426["lamppost_flare_museum_dust"] = loadfx( "vfx/lights/lamppost_flare_museum_dust" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000E();
    _unknown_0023();

    if ( _func_039( "createfx" ) != "on" || level._ID44088 == "free" )
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
    level._ID1426["strike_insects_flies_wall"] = _func_155( "vfx/map/mp_strike/strike_insects_flies_wall" );
    level._ID1426["insects_fruitflies_flying_museum"] = _func_155( "vfx/animal/insects_fruitflies_flying_museum" );
    level._ID1426["ambient_smoke_diorama_museum"] = _func_155( "vfx/smoke/ambient_smoke_diorama_museum" );
    level._ID1426["godray_ark_museum"] = _func_155( "vfx/lights/godray_ark_museum" );
    level._ID1426["lamp_ceiling_glow"] = _func_155( "vfx/lights/lamp_ceiling_glow_museum" );
    level._ID1426["lamp_ceiling_dust"] = _func_155( "vfx/lights/lamp_ceiling_dust" );
    level._ID1426["smoke_ambient_museum_dioramas_vehicles"] = _func_155( "vfx/smoke/smoke_ambient_museum_dioramas_vehicles" );
    level._ID1426["smoke_ambient_museum_dioramas_characters"] = _func_155( "vfx/smoke/smoke_ambient_museum_dioramas_characters" );
    level._ID1426["jet_afterburner_museum"] = _func_155( "vfx/fire/jet_afterburner_museum" );
    level._ID1426["clouds_moving_museum"] = _func_155( "vfx/map/irons_estate/clouds_moving_museum" );
    level._ID1426["jet_light_wingtip_red_museum"] = _func_155( "fx/misc/jet_light_wingtip_red_museum" );
    level._ID1426["aircraft_light_red_noblink"] = _func_155( "vfx/lights/aircraft_light_red_noblink_museum" );
    level._ID1426["drone_heatdistortion"] = _func_155( "fx/smoke/drone_heatdistortion" );
    level._ID1426["aircraft_light_red_blink"] = _func_155( "vfx/lights/aircraft_light_red_blink" );
    level._ID1426["helicopter_blaster_front_distortion"] = _func_155( "vfx/distortion/helicopter_blaster_front_distortion" );
    level._ID1426["aircraft_light_red_blink_museum_runner"] = _func_155( "fx/props/aircraft_light_red_blink_museum_runner" );
    level._ID1426["ash_column_falling_museum"] = _func_155( "fx/misc/ash_column_falling_museum" );
    level._ID1426["flare_ambient_museum"] = _func_155( "fx/misc/flare_ambient_museum" );
    level._ID1426["abrams_exhaust_museum"] = _func_155( "fx/distortion/abrams_exhaust_museum" );
    level._ID1426["snow_light_wind_gust_runner_museum"] = _func_155( "vfx/snow/snow_light_wind_gust_runner_museum" );
    level._ID1426["ambient_snowing_museum"] = _func_155( "vfx/snow/ambient_snowing_museum" );
    level._ID1426["scuba_bubbles_friendly"] = _func_155( "fx/water/scuba_bubbles_breath_museum" );
    level._ID1426["tank_bubbles_museum"] = _func_155( "vfx/water/tank_bubbles_museum" );
    level._ID1426["godray_watertank_museum"] = _func_155( "vfx/lights/godray_watertank_museum" );
    level._ID1426["tank_surface_bubbles_pole_museum"] = _func_155( "vfx/water/tank_surface_bubbles_pole_museum" );
    level._ID1426["tank_surface_bubbles_middle_museum"] = _func_155( "vfx/water/tank_surface_bubbles_middle_museum" );
    level._ID1426["caustic_museum_anchor"] = _func_155( "vfx/caustic/caustic_museum_anchor" );
    level._ID1426["caustic_museum_rocks5_1"] = _func_155( "vfx/caustic/caustic_museum_rocks5_1" );
    level._ID1426["caustic_museum_rocks5_2"] = _func_155( "vfx/caustic/caustic_museum_rocks5_2" );
    level._ID1426["caustic_museum_rocks5_3"] = _func_155( "vfx/caustic/caustic_museum_rocks5_3" );
    level._ID1426["caustic_museum_rocks5_4"] = _func_155( "vfx/caustic/caustic_museum_rocks5_4" );
    level._ID1426["caustic_museum_rocks2_1"] = _func_155( "vfx/caustic/caustic_museum_rocks2_1" );
    level._ID1426["caustic_museum_rocks2_2"] = _func_155( "vfx/caustic/caustic_museum_rocks2_2" );
    level._ID1426["caustic_museum_rocks2_3"] = _func_155( "vfx/caustic/caustic_museum_rocks2_3" );
    level._ID1426["caustic_museum_rocks2_4"] = _func_155( "vfx/caustic/caustic_museum_rocks2_4" );
    level._ID1426["caustic_museum_rocks1"] = _func_155( "vfx/caustic/caustic_museum_rocks1" );
    level._ID1426["caustic_museum_rocks1b"] = _func_155( "vfx/caustic/caustic_museum_rocks1b" );
    level._ID1426["caustic_museum_rocks4"] = _func_155( "vfx/caustic/caustic_museum_rocks4" );
    level._ID1426["caustic_museum_floor"] = _func_155( "vfx/caustic/caustic_museum_floor" );
    level._ID1426["caustic_museum_poles"] = _func_155( "vfx/caustic/caustic_museum_poles" );
    level._ID1426["oilrig_museum_structure_caustic_square"] = _func_155( "fx/water/oilrig_museum_structure_caustic_square" );
    level._ID1426["caustic_museum_ceiling"] = _func_155( "vfx/caustic/caustic_museum_ceiling" );
    level._ID1426["button_glow"] = _func_155( "vfx/lights/button_glow" );
    level._ID1426["lensflare_floodlight_museum"] = _func_155( "vfx/lights/lensflare_floodlight_museum" );
    level._ID1426["c4_blink"] = _func_155( "fx/misc/light_c4_blink_museum" );
    level._ID1426["firelp_small_museum"] = _func_155( "vfx/fire/firelp_small_museum" );
    level._ID1426["firelp_med_museum"] = _func_155( "vfx/fire/firelp_med_museum" );
    level._ID1426["firelp_line_museum"] = _func_155( "vfx/fire/firelp_line_museum" );
    level._ID1426["ambient_snowing_gulag_museum"] = _func_155( "vfx/snow/ambient_snowing_gulag_museum" );
    level._ID1426["heli_afterburner_museum_small"] = _func_155( "vfx/distortion/heli_afterburner_museum_small" );
    level._ID1426["heli_afterburner_museum"] = _func_155( "vfx/distortion/heli_afterburner_museum" );
    level._ID1426["water_distortion_favela_museum"] = _func_155( "fx/distortion/water_distortion_favela_museum" );
    level._ID1426["transformer_spark_runner"] = _func_155( "fx/explosions/transformer_spark_runner" );
    level._ID1426["powerline_runner_museum"] = _func_155( "fx/explosions/powerline_runner_museum" );
    level._ID1426["lamppost_flare_museum"] = _func_155( "vfx/lights/lamppost_flare_museum" );
    level._ID1426["lamppost_flare_museum_dust"] = _func_155( "vfx/lights/lamppost_flare_museum_dust" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID42237::_ID14400( "stopRainCheck" );
    _ID42237::_ID14400( "rain_on" );
    _ID42237::_ID14400( "rain_off" );
    level._ID1426["_attack_heli_spotlight"] = loadfx( "fx/misc/hunted_spotlight_model" );
    level._ID1426["firelp_large_pm"] = loadfx( "fx/fire/firelp_large_pm" );
    level._ID1426["firelp_med_pm"] = loadfx( "fx/fire/firelp_med_pm" );
    level._ID1426["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm" );
    level._ID1426["firelp_small_pm_a_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_a_dcwhite" );
    level._ID1426["firelp_small_pm_a_culled_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_a_culled_dcwhite" );
    level._ID1426["firelp_large_pm_nolight_dcwhite"] = loadfx( "fx/fire/firelp_large_pm_nolight_dcwhite" );
    level._ID1426["firelp_med_pm_nolight_dcwhite"] = loadfx( "fx/fire/firelp_med_pm_nolight_dcwhite" );
    level._ID1426["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight" );
    level._ID1426["firelp_small_pm_a_nolight"] = loadfx( "fx/fire/firelp_small_pm_a_nolight" );
    level._ID1426["fire_plank_dcwhite"] = loadfx( "vfx/fire/fire_plank_dcwhite" );
    level._ID1426["fire_plank_vertical_dcwhite"] = loadfx( "vfx/fire/fire_plank_vertical_dcwhite" );
    level._ID1426["waterfall_drainage_short"] = loadfx( "fx/water/waterfall_drainage_short_dcwhite" );
    level._ID1426["waterfall_drainage_splash"] = loadfx( "fx/water/waterfall_drainage_splash_dcwhite" );
    level._ID1426["falling_water_trickle"] = loadfx( "fx/water/falling_water_trickle" );
    level._ID1426["rain_noise_splashes"] = loadfx( "fx/weather/rain_noise_splashes" );
    level._ID1426["ceiling_dust_bunker_water_dcwhite"] = loadfx( "fx/dust/ceiling_dust_bunker_water_dcwhite" );
    level._ID1426["footstep_water_waist_small"] = loadfx( "fx/impacts/footstep_water_dcwhite_small" );
    level._ID1426["footstep_water_waist"] = loadfx( "fx/impacts/footstep_water_dcwhite" );
    level._ID1426["transformer_spark_runner"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._ID1426["hallway_smoke_light"] = loadfx( "fx/smoke/hallway_smoke_light" );
    level._ID1426["room_smoke_100"] = loadfx( "fx/smoke/room_smoke_100" );
    level._ID1426["room_smoke_200"] = loadfx( "fx/smoke/room_smoke_200" );
    level._ID1426["room_smoke_200_dcwhite"] = loadfx( "fx/smoke/room_smoke_200_dcwhite" );
    level._ID1426["room_smoke_200_tunnels_dcwhite"] = loadfx( "fx/smoke/room_smoke_200_tunnels_dcwhite" );
    level._ID1426["room_smoke_400"] = loadfx( "fx/smoke/room_smoke_400" );
    level._ID1426["rock_falling_small_runner"] = loadfx( "fx/misc/rock_falling_small_runner" );
    level._ID1426["powerline_runner_cheap"] = loadfx( "fx/explosions/powerline_runner_cheap" );
    level._ID1426["fire_tree_slow_longrange"] = loadfx( "fx/fire/fire_tree_slow_longrange" );
    level._ID1426["field_fire_distant"] = loadfx( "fx/fire/field_fire_distant" );
    level._ID1426["embers_whitehouse"] = loadfx( "fx/fire/embers_whitehouse" );
    level._ID1426["green_flare"] = loadfx( "fx/misc/handflare_green" );
    level._ID1426["green_flare_ignite"] = loadfx( "fx/misc/handflare_green_ignite" );
    level._ID1426["player_flare"] = loadfx( "fx/impacts/small_metalhit" );
    level._ID1426["carpetbomb"] = loadfx( "vfx/explosion/carpet_bomb_explosion" );
    level._ID1426["green_flare_smoke_distant"] = loadfx( "fx/smoke/green_flare_smoke_distant" );
    level._ID1426["thin_black_smoke_dcwhite"] = loadfx( "fx/smoke/thin_black_smoke_dcwhite" );
    level._ID1426["breach_room_concrete_whitehouse"] = loadfx( "fx/explosions/breach_room_concrete_whitehouse" );
    level._ID1426["breach_room_residual_whitehouse"] = loadfx( "fx/explosions/breach_room_residual_whitehouse" );
    level._ID1426["breach_wall_concrete_whitehouse"] = loadfx( "fx/explosions/breach_wall_concrete_whitehouse" );
    level._ID1426["falling_brick_runner_whitehouse"] = loadfx( "fx/misc/falling_brick_runner_whitehouse" );
    level._ID1426["wire_spark"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._ID1426["spotlight_spark"] = loadfx( "vfx/props/spotlight_destruction_night" );
    level._ID1426["lightning"] = loadfx( "fx/weather/lightning" );
    level._ID1426["lightning_bolt"] = loadfx( "fx/weather/lightning_bolt" );
    level._ID1426["lightning_bolt_lrg"] = loadfx( "fx/weather/lightning_bolt_lrg" );
    _ID42422::_ID2049( 10 );
    _ID42422::_ID2049( 11 );
    _ID42422::_ID2049( 12 );
    level._ID24784 = gettime() + 1;
    level._ID1426["rain_10"] = loadfx( "fx/misc/blank" );
    level._ID1426["rain_9"] = loadfx( "fx/misc/blank" );
    level._ID1426["rain_hole_10"] = loadfx( "fx/weather/rain_heavy_mist" );
    level._ID1426["rain_hole_9"] = loadfx( "fx/weather/rain_9_lite" );
    level._ID1426["rain_8"] = loadfx( "fx/weather/rain_8_lite" );
    level._ID1426["rain_7"] = loadfx( "fx/weather/rain_7_lite" );
    level._ID1426["rain_6"] = loadfx( "fx/weather/rain_6_lite" );
    level._ID1426["rain_5"] = loadfx( "fx/weather/rain_5_lite" );
    level._ID1426["rain_4"] = loadfx( "fx/weather/rain_4_lite" );
    level._ID1426["rain_3"] = loadfx( "fx/weather/rain_3_lite" );
    level._ID1426["rain_2"] = loadfx( "fx/weather/rain_2_lite" );
    level._ID1426["rain_1"] = loadfx( "fx/weather/rain_1_lite" );
    level._ID1426["rain_0"] = loadfx( "fx/misc/blank" );
    level._ID1426["waterfall_splash_sml_dcwhite"] = loadfx( "vfx/water/waterfall_splash_sml_dcwhite" );
    level._ID1426["water_droplets_cam"] = loadfx( "vfx/water/water_droplets_cam" );
    level._ID1426["firelp_med_pm_dcwhite"] = loadfx( "fx/fire/firelp_med_pm_dcwhite" );
    level._ID1426["flare_ambient_dcwhitehouse"] = loadfx( "vfx/props/flare_ambient_dcwhitehouse" );
    level._ID1426["glow_stick_glow_pile"] = loadfx( "fx/misc/glow_stick_glow_pile" );
    level._ID1426["godray_end_tunnel_dcwhite"] = loadfx( "vfx/unique/godray_end_tunnel_dcwhite" );
    level._ID1426["godray_tunnel_dcwhite"] = loadfx( "vfx/unique/godray_tunnel_dcwhite" );
    level._ID1426["car_fire_motor_dcwhite"] = loadfx( "fx/fire/car_fire_motor_dcwhite" );
    level._ID1426["car_fire_fallingdebris_dcwhite"] = loadfx( "vfx/fire/car_fire_fallingdebris_dcwhite" );
    level._ID1426["car_fire_ground_dcwhite"] = loadfx( "fx/fire/car_fire_ground_dcwhite" );
    level._ID1426["uaz_burning_dcwhite"] = loadfx( "vfx/fire/uaz_burning_dcwhite" );
    level._ID1426["uaz_burning_dcwhite_embers"] = loadfx( "vfx/fire/uaz_burning_dcwhite_embers" );
    level._ID1426["thick_dark_smoke_giant_reverse_dcwhite"] = loadfx( "fx/smoke/thick_dark_smoke_giant_reverse_dcwhite" );
    level._ID1426["smk_vista_stacks_lrg_02_dcwhite"] = loadfx( "vfx/smoke/smk_vista_stacks_lrg_02_dcwhite" );
    level._ID1426["ambient_cloud_fog_area_dcwhite"] = loadfx( "vfx/fog/cloud_fog_area_dcwhite" );
    level._ID1426["vista_building_burning_dcwhite"] = loadfx( "vfx/smoke/vista_building_burning_dcwhite" );
    level._ID1426["vista_fog_distant_far_dcwhite"] = loadfx( "vfx/fog/vista_fog_distant_far_dcwhite" );
    level._ID1426["vista_ground_smoke_dcwhite"] = loadfx( "fx/weather/vista_ground_smoke_dcwhite" );
    level._ID1426["burning_tree_core"] = loadfx( "fx/fire/burning_tree_core" );
    level._ID1426["fire_tunnel_dcwhite"] = loadfx( "vfx/fire/fire_tunnel_dcwhite" );
    level._ID1426["spark_idle"] = loadfx( "vfx/sparks/spark_idle_nospark" );
    level._ID1426["big_fire_dcwhite"] = loadfx( "vfx/fire/big_fire_dcwhite" );
    level._ID1426["smoke_column_sml_dcwhite"] = loadfx( "vfx/smoke/smoke_column_sml_dcwhite" );
    level._ID1426["smoke_column_med_dcwhite"] = loadfx( "vfx/smoke/smoke_column_med_dcwhite" );
    level._ID1426["fire_med_dying_dcwhite"] = loadfx( "vfx/fire/fire_med_dying_dcwhite" );
    level._ID1426["firelp_large_pm_dcwhite"] = loadfx( "fx/fire/firelp_large_pm_dcwhite" );
    level._ID1426["heli_crash_fire_dcwhite"] = loadfx( "fx/fire/heli_crash_fire_dcwhite" );
    level._ID1426["firelp_small_pm_2_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_2_dcwhite" );
    level._ID1426["firelp_small_pm_2_culled_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_2_culled_dcwhite" );
    level._ID1426["small_dark_smoke_dcwhite"] = loadfx( "vfx/smoke/small_dark_smoke_dcwhite" );
    level._ID1426["smoke_floor_crawl_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_dcwhite" );
    level._ID1426["smoke_floor_crawl_02_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_02_dcwhite" );
    level._ID1426["smoke_floor_crawl_03_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_03_dcwhite" );
    level._ID1426["rain_floor_impact"] = loadfx( "fx/weather/rain_floor_impact" );
    level._ID1426["heat_distort_med"] = loadfx( "vfx/distortion/heat_distort_med" );
    level._ID1426["ceiling_smoke_kitchen_dcwhite"] = loadfx( "vfx/smoke/ceiling_smoke_kitchen_dcwhite" );
    level._ID1426["big_window_fire_dcwhite"] = loadfx( "vfx/fire/big_window_fire_dcwhite" );
    level._ID1426["ash_column_falling_dcwhite"] = loadfx( "fx/misc/ash_column_falling_dcwhite" );
    level._ID1426["screen_heavy_rain"] = loadfx( "vfx/rain/screen_heavy_rain" );
    level._ID1426["rain_steam_floor_impact"] = loadfx( "fx/weather/rain_steam_floor_impact" );
    level._ID1426["spotlight_studiolight_dcwhite"] = loadfx( "vfx/lights/spotlight_studiolight_dcwhite" );
    level._ID1426["electrical_sparks_runner"] = loadfx( "vfx/sparks/electrical_sparks_runner" );
    level._ID1426["drips_a_dcwhite"] = loadfx( "fx/water/drips_a_dcwhite" );
    level._ID1426["lightning_strike_dcwhite"] = loadfx( "vfx/lightning/lightning_strike_dcwhite" );
    level._ID1426["lensflare_floodlight_on_yellow_dcwhite"] = loadfx( "vfx/lights/lensflare_floodlight_on_yellow_dcwhite" );
    level._ID1426["spotlight_cone_haze_dcwhite"] = loadfx( "fx/lights/spotlight_cone_haze_dcwhite" );
    level._ID1426["antiair_runner_night"] = loadfx( "fx/misc/antiair_runner_night" );
    level._ID1426["heat_distortion_dcwhite"] = loadfx( "vfx/distortion/heat_distortion_dcwhite" );
    level._ID1426["heat_distortion_vertical_dcwhite"] = loadfx( "vfx/distortion/heat_distortion_vertical_dcwhite" );
    level._ID1426["godray_ambient_dcwhite"] = loadfx( "vfx/map/dc_whitehouse/godray_ambient_dcwhite" );
    level._ID1426["neon_floating_dust_dcwhite"] = loadfx( "fx/misc/neon_floating_dust_dcwhite" );
    level._ID1426["light_spotlight_cone_haze_dim_dcwhite"] = loadfx( "vfx/lights/light_spotlight_cone_haze_dim_dcwhite" );
    level._ID1426["ceiling_dust_bunker_dcwhite"] = loadfx( "fx/dust/ceiling_dust_bunker_dcwhite" );
    level._ID1426["waterfall_splash_red_tunnel_start_dcwhite"] = loadfx( "vfx/water/waterfall_splash_red_tunnel_start_dcwhite" );
    level._ID1426["redlight_speaker_dcwhite"] = loadfx( "vfx/lights/redlight_speaker_dcwhite" );
    level._ID1426["fire_surface_runner_dcwhite"] = loadfx( "vfx/fire/fire_surface_runner_dcwhite" );
    level._ID1426["fx_sunflare_dcwhite"] = loadfx( "vfx/lensflare/fx_sunflare_dcwhite" );
    level._ID1426["moon_sprite"] = loadfx( "vfx/unique/moon_sprite" );
    level._ID1426["falling_red_water_trickle"] = loadfx( "fx/water/falling_red_water_trickle" );
    level._ID1426["falling_pipe_water_trickle_dcwhite"] = loadfx( "vfx/water/falling_pipe_water_trickle_dcwhite" );
    level._ID1426["smoke_floor_crawl_02_dark_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_02_dark_dcwhite" );
    level._ID1426["thin_black_smoke_warm_dcwhite"] = loadfx( "fx/smoke/thin_black_smoke_warm_dcwhite" );
    level._ID1426["thin_black_smoke_warm_large_dcwhite"] = loadfx( "fx/smoke/thin_black_smoke_warm_large_dcwhite" );
    level._ID1426["small_lingering_smoke_dcwhite"] = loadfx( "vfx/smoke/small_lingering_smoke_dcwhite" );
    level._ID1426["steam_ambient_corridor_light_dcwhite"] = loadfx( "vfx/steam/steam_ambient_corridor_light_dcwhite" );
    level._ID1426["neon_lightbeam_dcwhite"] = loadfx( "vfx/lights/neon_lightbeam_dcwhite" );
    level._ID1426["small_ambient_ash_falling_dcwhite"] = loadfx( "fx/misc/small_ambient_ash_falling_dcwhite" );
    level._ID1426["lights_godray_beam_simple_window_dcwhite"] = loadfx( "vfx/lights/lights_godray_beam_simple_window_dcwhite" );
    level._ID1426["steam_building_side_vent_push_dcwhite"] = loadfx( "vfx/steam/steam_building_side_vent_push_dcwhite" );
    level._ID1426["amb_dust_int_dcwhite"] = loadfx( "vfx/dust/amb_dust_int_dcwhite" );
    level._ID1426["lightning_cloud_runner_dcwhite"] = loadfx( "fx/weather/lightning_cloud_runner_dcwhite" );
    level._ID1426["obelisk_smoke_dcwhite"] = loadfx( "fx/smoke/obelisk_smoke_dcwhite" );
    level._ID1426["falling_pipe_water_trickle_red_dcwhite"] = loadfx( "vfx/water/falling_pipe_water_trickle_red_dcwhite" );
    level._ID1426["light_glow_white_dcwhite"] = loadfx( "vfx/lights/light_glow_white_dcwhite" );
    level._ID1426["lamp_ceiling_glow"] = loadfx( "vfx/lights/lamp_ceiling_glow" );
    level._ID1426["lamp_ceiling_dust"] = loadfx( "vfx/lights/lamp_ceiling_dust" );
    level._ID1426["godray_intro_tunnel_dcwhite"] = loadfx( "vfx/unique/godray_intro_tunnel_dcwhite" );
    level._ID1426["elevator_dcwhite"] = loadfx( "vfx/fire/elevator_dcwhite" );
    level._ID1426["carpet_bomb_explosion_player"] = loadfx( "vfx/explosion/carpet_bomb_explosion_player" );
    level._ID1426["chandelier_spark"] = loadfx( "vfx/props/chandelier_spark" );
    level._ID1426["ceiling_smoke_dcwhite"] = loadfx( "vfx/smoke/ceiling_smoke_dcwhite" );
    level._ID1426["dust_offices_dcwhite"] = loadfx( "vfx/lights/dust_offices_dcwhite" );
    level._ID1426["environment_smoke_dcwhite_oriented"] = loadfx( "vfx/smoke/environment_smoke_dcwhite_oriented" );
    level._ID1426["fire_distant_dcwhite"] = loadfx( "fx/fire/fire_distant_dcwhite" );
    level._ID1426["flare_light_tiny_museum"] = loadfx( "vfx/lensflare/flare_light_tiny_museum" );
    thread _ID42422::_ID28925( "none" );
    thread _ID42422::_ID28055();
    level._ID47052 = undefined;
    thread _ID47445();
    _ID45832();
    _ID53720();
    thread _ID46205();
}

_ID46205()
{
    var_0 = _ID42237::_ID16299( "moon_sprite" );
    var_1 = _ID42237::_ID35164();
    var_1._ID65 = ( -16, 45, 0 );
    var_2 = anglestoforward( var_1._ID65 );
    playfxontag( var_0, var_1, "tag_origin" );

    for (;;)
    {
        var_3 = getdvarfloat( "r_sunInfDist", 50000.0 );

        if ( isdefined( level._ID794 ) )
        {
            var_4 = level._ID794 _meth_8469();
            var_5 = var_4 + var_2 * var_3;
            var_1._ID740 = var_5;
            var_1 dontinterpolate();
        }

        waittillframeend;
    }
}

_ID22333( var_0 )
{
    level notify( "emp_lighting_flash" );
    level endon( "emp_lighting_flash" );

    if ( level._ID9228 )
        return;

    var_1 = randomintrange( 1, 4 );

    if ( !isdefined( var_0 ) )
        var_0 = ( -20, 60, 0 );

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_3 = randomint( 3 );

        switch ( var_3 )
        {
            case 0:
                wait 0.05;
                _func_47( 1, 1, 1.2 );
                wait 0.05;
                _func_47( 2, 2, 2.5 );
                break;
            case 1:
                wait 0.05;
                _func_47( 1, 1, 1.2 );
                wait 0.05;
                _func_47( 2, 2, 2.5 );
                wait 0.05;
                _func_47( 3, 3, 3.7 );
                break;
            case 2:
                wait 0.05;
                _func_47( 1, 1, 1.2 );
                wait 0.05;
                _func_47( 2, 2, 2.5 );
                wait 0.05;
                _func_47( 3, 3, 3.7 );
                wait 0.05;
                _func_47( 2, 2, 2.5 );
                break;
        }

        wait(randomfloatrange( 0.05, 0.1 ));
        _ID22335();
    }

    _ID22335();
}

_ID22335()
{
    _func_48();
    resetsundirection();
}

_ID53720()
{
    _ID42299::_ID53720( "com_lightbox_on", "fx/lights/spotlight_cone_haze_dcwhite", undefined, "spotlight_cone_haze_dcwhite" );
    _ID42299::_ID53720( "com_cafe_wall_light_on", "vfx/lights/light_glow_white_staged_dcwhite", undefined, "vfx/lights/light_glow_white_staged_dcwhite" );
}

_ID45832()
{
    _ID42299::_ID49604( "flare_ambient_FX_origin", "vfx/props/flare_ambient_dcwhitehouse", undefined, "flare_ambient_fx", "emt_road_flare_burn" );
}

_ID47445()
{
    level endon( "stop_rain" );
    thread _ID53733();

    for (;;)
    {
        _ID42237::_ID14413( "rain_on" );
        _ID42237::_ID14388( "rain_off" );
        thread _ID44454();
        _ID42237::_ID14413( "rain_off" );
        _ID42237::_ID14388( "rain_on" );
        self notify( "stopRainCheck" );

        if ( isdefined( level._ID47052 ) )
            level._ID47052 delete();
    }
}

_ID44454()
{
    level endon( "stop_rain" );
    self endon( "stopRainCheck" );
    level._ID794 endon( "death" );

    for (;;)
    {
        var_0 = level._ID794 getplayerangles()[0];

        if ( var_0 < 50 && !isdefined( level._ID47052 ) )
        {
            level._ID47052 = spawnfx( level._ID1426["screen_heavy_rain"], level._ID794._ID740 );
            triggerfx( level._ID47052 );
        }
        else if ( isdefined( level._ID47052 ) )
            level._ID47052 delete();

        wait 0.1;
    }
}

_ID53733()
{
    _ID42237::_ID14413( "stop_rain" );

    if ( isdefined( level._ID47052 ) )
        level._ID47052 delete();
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\utility::flag_init( "stopRainCheck" );
    common_scripts\utility::flag_init( "rain_on" );
    common_scripts\utility::flag_init( "rain_off" );
    level._effect["_attack_heli_spotlight"] = loadfx( "fx/misc/hunted_spotlight_model" );
    level._effect["firelp_large_pm"] = loadfx( "fx/fire/firelp_large_pm" );
    level._effect["firelp_med_pm"] = loadfx( "fx/fire/firelp_med_pm" );
    level._effect["firelp_small_pm"] = loadfx( "fx/fire/firelp_small_pm" );
    level._effect["firelp_small_pm_a_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_a_dcwhite" );
    level._effect["firelp_small_pm_a_culled_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_a_culled_dcwhite" );
    level._effect["firelp_large_pm_nolight_dcwhite"] = loadfx( "fx/fire/firelp_large_pm_nolight_dcwhite" );
    level._effect["firelp_med_pm_nolight_dcwhite"] = loadfx( "fx/fire/firelp_med_pm_nolight_dcwhite" );
    level._effect["firelp_small_pm_nolight"] = loadfx( "fx/fire/firelp_small_pm_nolight" );
    level._effect["firelp_small_pm_a_nolight"] = loadfx( "fx/fire/firelp_small_pm_a_nolight" );
    level._effect["fire_plank_dcwhite"] = loadfx( "vfx/fire/fire_plank_dcwhite" );
    level._effect["fire_plank_vertical_dcwhite"] = loadfx( "vfx/fire/fire_plank_vertical_dcwhite" );
    level._effect["waterfall_drainage_short"] = loadfx( "fx/water/waterfall_drainage_short_dcwhite" );
    level._effect["waterfall_drainage_splash"] = loadfx( "fx/water/waterfall_drainage_splash_dcwhite" );
    level._effect["falling_water_trickle"] = loadfx( "fx/water/falling_water_trickle" );
    level._effect["rain_noise_splashes"] = loadfx( "fx/weather/rain_noise_splashes" );
    level._effect["ceiling_dust_bunker_water_dcwhite"] = loadfx( "fx/dust/ceiling_dust_bunker_water_dcwhite" );
    level._effect["footstep_water_waist_small"] = loadfx( "fx/impacts/footstep_water_dcwhite_small" );
    level._effect["footstep_water_waist"] = loadfx( "fx/impacts/footstep_water_dcwhite" );
    level._effect["transformer_spark_runner"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._effect["hallway_smoke_light"] = loadfx( "fx/smoke/hallway_smoke_light" );
    level._effect["room_smoke_100"] = loadfx( "fx/smoke/room_smoke_100" );
    level._effect["room_smoke_200"] = loadfx( "fx/smoke/room_smoke_200" );
    level._effect["room_smoke_200_dcwhite"] = loadfx( "fx/smoke/room_smoke_200_dcwhite" );
    level._effect["room_smoke_200_tunnels_dcwhite"] = loadfx( "fx/smoke/room_smoke_200_tunnels_dcwhite" );
    level._effect["room_smoke_400"] = loadfx( "fx/smoke/room_smoke_400" );
    level._effect["rock_falling_small_runner"] = loadfx( "fx/misc/rock_falling_small_runner" );
    level._effect["powerline_runner_cheap"] = loadfx( "fx/explosions/powerline_runner_cheap" );
    level._effect["fire_tree_slow_longrange"] = loadfx( "fx/fire/fire_tree_slow_longrange" );
    level._effect["field_fire_distant"] = loadfx( "fx/fire/field_fire_distant" );
    level._effect["embers_whitehouse"] = loadfx( "fx/fire/embers_whitehouse" );
    level._effect["green_flare"] = loadfx( "fx/misc/handflare_green" );
    level._effect["green_flare_ignite"] = loadfx( "fx/misc/handflare_green_ignite" );
    level._effect["player_flare"] = loadfx( "fx/impacts/small_metalhit" );
    level._effect["carpetbomb"] = loadfx( "vfx/explosion/carpet_bomb_explosion" );
    level._effect["green_flare_smoke_distant"] = loadfx( "fx/smoke/green_flare_smoke_distant" );
    level._effect["thin_black_smoke_dcwhite"] = loadfx( "fx/smoke/thin_black_smoke_dcwhite" );
    level._effect["breach_room_concrete_whitehouse"] = loadfx( "fx/explosions/breach_room_concrete_whitehouse" );
    level._effect["breach_room_residual_whitehouse"] = loadfx( "fx/explosions/breach_room_residual_whitehouse" );
    level._effect["breach_wall_concrete_whitehouse"] = loadfx( "fx/explosions/breach_wall_concrete_whitehouse" );
    level._effect["falling_brick_runner_whitehouse"] = loadfx( "fx/misc/falling_brick_runner_whitehouse" );
    level._effect["wire_spark"] = loadfx( "fx/explosions/transformer_spark_runner" );
    level._effect["spotlight_spark"] = loadfx( "vfx/props/spotlight_destruction_night" );
    level._effect["lightning"] = loadfx( "fx/weather/lightning" );
    level._effect["lightning_bolt"] = loadfx( "fx/weather/lightning_bolt" );
    level._effect["lightning_bolt_lrg"] = loadfx( "fx/weather/lightning_bolt_lrg" );
    maps\_weather::addlightningexploder( 10 );
    maps\_weather::addlightningexploder( 11 );
    maps\_weather::addlightningexploder( 12 );
    level.nextlightning = gettime() + 1;
    level._effect["rain_10"] = loadfx( "fx/misc/blank" );
    level._effect["rain_9"] = loadfx( "fx/misc/blank" );
    level._effect["rain_hole_10"] = loadfx( "fx/weather/rain_heavy_mist" );
    level._effect["rain_hole_9"] = loadfx( "fx/weather/rain_9_lite" );
    level._effect["rain_8"] = loadfx( "fx/weather/rain_8_lite" );
    level._effect["rain_7"] = loadfx( "fx/weather/rain_7_lite" );
    level._effect["rain_6"] = loadfx( "fx/weather/rain_6_lite" );
    level._effect["rain_5"] = loadfx( "fx/weather/rain_5_lite" );
    level._effect["rain_4"] = loadfx( "fx/weather/rain_4_lite" );
    level._effect["rain_3"] = loadfx( "fx/weather/rain_3_lite" );
    level._effect["rain_2"] = loadfx( "fx/weather/rain_2_lite" );
    level._effect["rain_1"] = loadfx( "fx/weather/rain_1_lite" );
    level._effect["rain_0"] = loadfx( "fx/misc/blank" );
    level._effect["waterfall_splash_sml_dcwhite"] = loadfx( "vfx/water/waterfall_splash_sml_dcwhite" );
    level._effect["water_droplets_cam"] = loadfx( "vfx/water/water_droplets_cam" );
    level._effect["firelp_med_pm_dcwhite"] = loadfx( "fx/fire/firelp_med_pm_dcwhite" );
    level._effect["flare_ambient_dcwhitehouse"] = loadfx( "vfx/props/flare_ambient_dcwhitehouse" );
    level._effect["glow_stick_glow_pile"] = loadfx( "fx/misc/glow_stick_glow_pile" );
    level._effect["godray_end_tunnel_dcwhite"] = loadfx( "vfx/unique/godray_end_tunnel_dcwhite" );
    level._effect["godray_tunnel_dcwhite"] = loadfx( "vfx/unique/godray_tunnel_dcwhite" );
    level._effect["car_fire_motor_dcwhite"] = loadfx( "fx/fire/car_fire_motor_dcwhite" );
    level._effect["car_fire_fallingdebris_dcwhite"] = loadfx( "vfx/fire/car_fire_fallingdebris_dcwhite" );
    level._effect["car_fire_ground_dcwhite"] = loadfx( "fx/fire/car_fire_ground_dcwhite" );
    level._effect["uaz_burning_dcwhite"] = loadfx( "vfx/fire/uaz_burning_dcwhite" );
    level._effect["uaz_burning_dcwhite_embers"] = loadfx( "vfx/fire/uaz_burning_dcwhite_embers" );
    level._effect["thick_dark_smoke_giant_reverse_dcwhite"] = loadfx( "fx/smoke/thick_dark_smoke_giant_reverse_dcwhite" );
    level._effect["smk_vista_stacks_lrg_02_dcwhite"] = loadfx( "vfx/smoke/smk_vista_stacks_lrg_02_dcwhite" );
    level._effect["ambient_cloud_fog_area_dcwhite"] = loadfx( "vfx/fog/cloud_fog_area_dcwhite" );
    level._effect["vista_building_burning_dcwhite"] = loadfx( "vfx/smoke/vista_building_burning_dcwhite" );
    level._effect["vista_fog_distant_far_dcwhite"] = loadfx( "vfx/fog/vista_fog_distant_far_dcwhite" );
    level._effect["vista_ground_smoke_dcwhite"] = loadfx( "fx/weather/vista_ground_smoke_dcwhite" );
    level._effect["burning_tree_core"] = loadfx( "fx/fire/burning_tree_core" );
    level._effect["fire_tunnel_dcwhite"] = loadfx( "vfx/fire/fire_tunnel_dcwhite" );
    level._effect["spark_idle"] = loadfx( "vfx/sparks/spark_idle_nospark" );
    level._effect["big_fire_dcwhite"] = loadfx( "vfx/fire/big_fire_dcwhite" );
    level._effect["smoke_column_sml_dcwhite"] = loadfx( "vfx/smoke/smoke_column_sml_dcwhite" );
    level._effect["smoke_column_med_dcwhite"] = loadfx( "vfx/smoke/smoke_column_med_dcwhite" );
    level._effect["fire_med_dying_dcwhite"] = loadfx( "vfx/fire/fire_med_dying_dcwhite" );
    level._effect["firelp_large_pm_dcwhite"] = loadfx( "fx/fire/firelp_large_pm_dcwhite" );
    level._effect["heli_crash_fire_dcwhite"] = loadfx( "fx/fire/heli_crash_fire_dcwhite" );
    level._effect["firelp_small_pm_2_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_2_dcwhite" );
    level._effect["firelp_small_pm_2_culled_dcwhite"] = loadfx( "fx/fire/firelp_small_pm_2_culled_dcwhite" );
    level._effect["small_dark_smoke_dcwhite"] = loadfx( "vfx/smoke/small_dark_smoke_dcwhite" );
    level._effect["smoke_floor_crawl_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_dcwhite" );
    level._effect["smoke_floor_crawl_02_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_02_dcwhite" );
    level._effect["smoke_floor_crawl_03_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_03_dcwhite" );
    level._effect["rain_floor_impact"] = loadfx( "fx/weather/rain_floor_impact" );
    level._effect["heat_distort_med"] = loadfx( "vfx/distortion/heat_distort_med" );
    level._effect["ceiling_smoke_kitchen_dcwhite"] = loadfx( "vfx/smoke/ceiling_smoke_kitchen_dcwhite" );
    level._effect["big_window_fire_dcwhite"] = loadfx( "vfx/fire/big_window_fire_dcwhite" );
    level._effect["ash_column_falling_dcwhite"] = loadfx( "fx/misc/ash_column_falling_dcwhite" );
    level._effect["screen_heavy_rain"] = loadfx( "vfx/rain/screen_heavy_rain" );
    level._effect["rain_steam_floor_impact"] = loadfx( "fx/weather/rain_steam_floor_impact" );
    level._effect["spotlight_studiolight_dcwhite"] = loadfx( "vfx/lights/spotlight_studiolight_dcwhite" );
    level._effect["electrical_sparks_runner"] = loadfx( "vfx/sparks/electrical_sparks_runner" );
    level._effect["drips_a_dcwhite"] = loadfx( "fx/water/drips_a_dcwhite" );
    level._effect["lightning_strike_dcwhite"] = loadfx( "vfx/lightning/lightning_strike_dcwhite" );
    level._effect["lensflare_floodlight_on_yellow_dcwhite"] = loadfx( "vfx/lights/lensflare_floodlight_on_yellow_dcwhite" );
    level._effect["spotlight_cone_haze_dcwhite"] = loadfx( "fx/lights/spotlight_cone_haze_dcwhite" );
    level._effect["antiair_runner_night"] = loadfx( "fx/misc/antiair_runner_night" );
    level._effect["heat_distortion_dcwhite"] = loadfx( "vfx/distortion/heat_distortion_dcwhite" );
    level._effect["heat_distortion_vertical_dcwhite"] = loadfx( "vfx/distortion/heat_distortion_vertical_dcwhite" );
    level._effect["godray_ambient_dcwhite"] = loadfx( "vfx/map/dc_whitehouse/godray_ambient_dcwhite" );
    level._effect["neon_floating_dust_dcwhite"] = loadfx( "fx/misc/neon_floating_dust_dcwhite" );
    level._effect["light_spotlight_cone_haze_dim_dcwhite"] = loadfx( "vfx/lights/light_spotlight_cone_haze_dim_dcwhite" );
    level._effect["ceiling_dust_bunker_dcwhite"] = loadfx( "fx/dust/ceiling_dust_bunker_dcwhite" );
    level._effect["waterfall_splash_red_tunnel_start_dcwhite"] = loadfx( "vfx/water/waterfall_splash_red_tunnel_start_dcwhite" );
    level._effect["redlight_speaker_dcwhite"] = loadfx( "vfx/lights/redlight_speaker_dcwhite" );
    level._effect["fire_surface_runner_dcwhite"] = loadfx( "vfx/fire/fire_surface_runner_dcwhite" );
    level._effect["fx_sunflare_dcwhite"] = loadfx( "vfx/lensflare/fx_sunflare_dcwhite" );
    level._effect["moon_sprite"] = loadfx( "vfx/unique/moon_sprite" );
    level._effect["falling_red_water_trickle"] = loadfx( "fx/water/falling_red_water_trickle" );
    level._effect["falling_pipe_water_trickle_dcwhite"] = loadfx( "vfx/water/falling_pipe_water_trickle_dcwhite" );
    level._effect["smoke_floor_crawl_02_dark_dcwhite"] = loadfx( "vfx/smoke/smoke_floor_crawl_02_dark_dcwhite" );
    level._effect["thin_black_smoke_warm_dcwhite"] = loadfx( "fx/smoke/thin_black_smoke_warm_dcwhite" );
    level._effect["thin_black_smoke_warm_large_dcwhite"] = loadfx( "fx/smoke/thin_black_smoke_warm_large_dcwhite" );
    level._effect["small_lingering_smoke_dcwhite"] = loadfx( "vfx/smoke/small_lingering_smoke_dcwhite" );
    level._effect["steam_ambient_corridor_light_dcwhite"] = loadfx( "vfx/steam/steam_ambient_corridor_light_dcwhite" );
    level._effect["neon_lightbeam_dcwhite"] = loadfx( "vfx/lights/neon_lightbeam_dcwhite" );
    level._effect["small_ambient_ash_falling_dcwhite"] = loadfx( "fx/misc/small_ambient_ash_falling_dcwhite" );
    level._effect["lights_godray_beam_simple_window_dcwhite"] = loadfx( "vfx/lights/lights_godray_beam_simple_window_dcwhite" );
    level._effect["steam_building_side_vent_push_dcwhite"] = loadfx( "vfx/steam/steam_building_side_vent_push_dcwhite" );
    level._effect["amb_dust_int_dcwhite"] = loadfx( "vfx/dust/amb_dust_int_dcwhite" );
    level._effect["lightning_cloud_runner_dcwhite"] = loadfx( "fx/weather/lightning_cloud_runner_dcwhite" );
    level._effect["obelisk_smoke_dcwhite"] = loadfx( "fx/smoke/obelisk_smoke_dcwhite" );
    level._effect["falling_pipe_water_trickle_red_dcwhite"] = loadfx( "vfx/water/falling_pipe_water_trickle_red_dcwhite" );
    level._effect["light_glow_white_dcwhite"] = loadfx( "vfx/lights/light_glow_white_dcwhite" );
    level._effect["lamp_ceiling_glow"] = loadfx( "vfx/lights/lamp_ceiling_glow" );
    level._effect["lamp_ceiling_dust"] = loadfx( "vfx/lights/lamp_ceiling_dust" );
    level._effect["godray_intro_tunnel_dcwhite"] = loadfx( "vfx/unique/godray_intro_tunnel_dcwhite" );
    level._effect["elevator_dcwhite"] = loadfx( "vfx/fire/elevator_dcwhite" );
    level._effect["carpet_bomb_explosion_player"] = loadfx( "vfx/explosion/carpet_bomb_explosion_player" );
    level._effect["chandelier_spark"] = loadfx( "vfx/props/chandelier_spark" );
    level._effect["ceiling_smoke_dcwhite"] = loadfx( "vfx/smoke/ceiling_smoke_dcwhite" );
    level._effect["dust_offices_dcwhite"] = loadfx( "vfx/lights/dust_offices_dcwhite" );
    level._effect["environment_smoke_dcwhite_oriented"] = loadfx( "vfx/smoke/environment_smoke_dcwhite_oriented" );
    level._effect["fire_distant_dcwhite"] = loadfx( "fx/fire/fire_distant_dcwhite" );
    level._effect["flare_light_tiny_museum"] = loadfx( "vfx/lensflare/flare_light_tiny_museum" );
    thread maps\_weather::raininit( "none" );
    thread maps\_weather::playerweather();
    level._id_B7CC = undefined;
    thread _id_B955();
    _id_B308();
    _id_D1D8();
    thread _id_B47D();
}

_id_B47D()
{
    var_0 = common_scripts\utility::getfx( "moon_sprite" );
    var_1 = common_scripts\utility::spawn_tag_origin();
    var_1.angles = ( -16, 45, 0 );
    var_2 = anglestoforward( var_1.angles );
    playfxontag( var_0, var_1, "tag_origin" );

    for (;;)
    {
        var_3 = getdvarfloat( "r_sunInfDist", 50000.0 );

        if ( isdefined( level.player ) )
        {
            var_4 = level.player _meth_8469();
            var_5 = var_4 + var_2 * var_3;
            var_1.origin = var_5;
            var_1 dontinterpolate();
        }

        waitframe();
    }
}

lightning_flash( var_0 )
{
    level notify( "emp_lighting_flash" );
    level endon( "emp_lighting_flash" );

    if ( level.createfx_enabled )
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

        wait( randomfloatrange( 0.05, 0.1 ) );
        lightning_normal();
    }

    lightning_normal();
}

lightning_normal()
{
    _func_48();
    resetsundirection();
}

_id_D1D8()
{
    maps\_global_fx::_id_D1D8( "com_lightbox_on", "fx/lights/spotlight_cone_haze_dcwhite", undefined, "spotlight_cone_haze_dcwhite" );
    maps\_global_fx::_id_D1D8( "com_cafe_wall_light_on", "vfx/lights/light_glow_white_staged_dcwhite", undefined, "vfx/lights/light_glow_white_staged_dcwhite" );
}

_id_B308()
{
    maps\_global_fx::_id_C1C4( "flare_ambient_FX_origin", "vfx/props/flare_ambient_dcwhitehouse", undefined, "flare_ambient_fx", "emt_road_flare_burn" );
}

_id_B955()
{
    level endon( "stop_rain" );
    thread _id_D1E5();

    for (;;)
    {
        common_scripts\utility::flag_wait( "rain_on" );
        common_scripts\utility::flag_clear( "rain_off" );
        thread _id_ADA6();
        common_scripts\utility::flag_wait( "rain_off" );
        common_scripts\utility::flag_clear( "rain_on" );
        self notify( "stopRainCheck" );

        if ( isdefined( level._id_B7CC ) )
            level._id_B7CC delete();
    }
}

_id_ADA6()
{
    level endon( "stop_rain" );
    self endon( "stopRainCheck" );
    level.player endon( "death" );

    for (;;)
    {
        var_0 = level.player getplayerangles()[0];

        if ( var_0 < 50 && !isdefined( level._id_B7CC ) )
        {
            level._id_B7CC = spawnfx( level._effect["screen_heavy_rain"], level.player.origin );
            triggerfx( level._id_B7CC );
        }
        else if ( isdefined( level._id_B7CC ) )
            level._id_B7CC delete();

        wait 0.1;
    }
}

_id_D1E5()
{
    common_scripts\utility::flag_wait( "stop_rain" );

    if ( isdefined( level._id_B7CC ) )
        level._id_B7CC delete();
}

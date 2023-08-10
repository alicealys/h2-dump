// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "technical", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_pickup_technical", "vehicle_pickup_technical_destroyed", 3 );
    var_3 = "50cal_turret_technical";
    maps\_vehicle::build_turret( var_3, "tag_50cal", "h2_weapon_m2_50cal_pickup_truck_turret", undefined, "auto_ai", 3, 20, -14, undefined, _id_BCBE::_id_BC03 );
    maps\_vehicle::build_drive( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_small_pm_a", "tag_fx_tank", "smallfire", undefined, undefined, 1, 0 );
    maps\_vehicle::build_deathfx( "fx/explosions/ammo_cookoff", "tag_fx_bed", undefined, undefined, undefined, undefined, 0.5 );
    maps\_vehicle::build_deathfx( "fx/explosions/Vehicle_Explosion_Pickuptruck", "tag_deathfx", "car_explode", undefined, undefined, undefined, 2.9 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_small_pm_a", "tag_fx_tire_right_r", "smallfire", undefined, undefined, 1, 3 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "tag_fx_cab", "fire_metal_medium", undefined, undefined, 1, 3.01 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_small_pm_a", "tag_engine_left", "smallfire", undefined, undefined, 1, 3.01 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    maps\_vehicle::build_unload_groups( ::unload_groups );
    maps\_vehicle::build_light( var_2, "headlight_truck_left", "tag_headlight_left", "fx/misc/car_headlight_truck_L", "headlights" );
    maps\_vehicle::build_light( var_2, "headlight_truck_right", "tag_headlight_right", "fx/misc/car_headlight_truck_R", "headlights" );
    maps\_vehicle::build_light( var_2, "parkinglight_truck_left_f", "tag_parkinglight_left_f", "fx/misc/car_parkinglight_truck_LF", "headlights" );
    maps\_vehicle::build_light( var_2, "parkinglight_truck_right_f", "tag_parkinglight_right_f", "fx/misc/car_parkinglight_truck_RF", "headlights" );
    maps\_vehicle::build_light( var_2, "taillight_truck_right", "tag_taillight_right", "fx/misc/car_taillight_truck_R", "headlights" );
    maps\_vehicle::build_light( var_2, "taillight_truck_left", "tag_taillight_left", "fx/misc/car_taillight_truck_L", "headlights" );
    maps\_vehicle::build_light( var_2, "brakelight_truck_right", "tag_taillight_right", "fx/misc/car_brakelight_truck_R", "brakelights" );
    maps\_vehicle::build_light( var_2, "brakelight_truck_left", "tag_taillight_left", "fx/misc/car_brakelight_truck_L", "brakelights" );
    maps\_vehicle::build_death_badplace( 0.5, 3, 512, 700, "axis", "allies" );
    maps\_vehicle::build_death_jolt_delay( 2.9 );
    maps\_vehicle::build_radiusdamage( ( 0, 0, 53 ), 512, 300, 20, 1, 2.9 );
}

set_vehicle_anims( var_0 )
{
    return var_0;
}

init_local()
{
    if ( !isdefined( self.script_allow_rider_deaths ) )
        self.script_allow_rider_deaths = 1;

    if ( !isdefined( self.script_allow_driver_death ) )
        self.script_allow_driver_death = 1;

    thread handle_audio();
    _id_BCBE::_id_AEC7();
}

handle_audio()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 6000;
    var_2 = 1.0;
    _id_CE07::_id_C183();
    thread monitor_death_stop_sounds();

    for (;;)
    {
        if ( !isdefined( self.script_disablevehicleaudio ) || !self.script_disablevehicleaudio )
        {
            var_3 = distance( self.origin, level.player.origin );

            if ( var_0 && var_3 > var_1 )
            {
                _id_CE07::_id_D1E9( var_2 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_3 < var_1 )
            {
                _id_CE07::_id_CB29();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _id_CE07::_id_D1E9( var_2 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

monitor_death_stop_sounds()
{
    self waittill( "death" );
    var_0 = 1.0;
    _id_CE07::_id_D1E9( var_0 );
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 3; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[1].sittag = "tag_gunner";
    var_0[2].sittag = "tag_passenger";
    var_0[0].idle[0] = %technical_driver_idle;
    var_0[0].idle[1] = %technical_driver_duck;
    var_0[0].idleoccurrence[0] = 1000;
    var_0[0].idleoccurrence[1] = 100;
    var_0[0].death = %technical_driver_fallout;
    var_0[2].death = %technical_passenger_fallout;
    var_0[0].unload_ondeath = 0.9;
    var_0[1].unload_ondeath = 0.9;
    var_0[2].unload_ondeath = 0.9;
    var_0[2].idle[0] = %technical_passenger_idle;
    var_0[2].idle[1] = %technical_passenger_duck;
    var_0[2].idleoccurrence[0] = 1000;
    var_0[2].idleoccurrence[1] = 100;
    var_0[0].getout = %technical_driver_climb_out;
    var_0[2].getout = %technical_passenger_climb_out;
    var_0[1].mgturret = 0;
    return var_0;
}

unload_groups()
{
    var_0 = [];
    var_0["passengers"] = [];
    var_0["passenger_and_gunner"] = [];
    var_0["all"] = [];
    var_1 = "passenger_and_gunner";
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_1 = "passengers";
    var_0[var_1][var_0[var_1].size] = 2;
    var_0["default"] = var_0["all"];
    return var_0;
}

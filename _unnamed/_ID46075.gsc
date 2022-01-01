// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "btr80", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_btr80", "vehicle_btr80_d", 0.1 );
    _ID42411::_ID6216( "vehicle_btr80_snow", "vehicle_btr80_snow_d" );
    _ID42411::_ID6216( "vehicle_btr80_low", "vehicle_btr80_d" );
    var_3 = [];
    var_3["vehicle_btr80"] = "fx/explosions/vehicle_explosion_btr80";
    var_3["vehicle_btr80_snow"] = "fx/explosions/vehicle_explosion_btr80_snow";
    var_3["vehicle_btr80_low"] = "fx/explosions/vehicle_explosion_btr80";
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "TAG_CARGOFIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( var_3[var_0], "tag_deathfx", "exp_armor_vehicle" );
    _ID42411::_ID6234( var_2, "headlight_L", "TAG_FRONT_LIGHT_LEFT", "fx/misc/car_headlight_btr80", "running", 0.0 );
    _ID42411::_ID6234( var_2, "taillight_L", "TAG_REAR_LIGHT_LEFT", "fx/misc/car_taillight_btr80", "running", 0.1 );
    _ID42411::_ID6234( var_2, "taillight_R", "TAG_REAR_LIGHT_RIGHT", "fx/misc/car_taillight_btr80", "running", 0.1 );
    _ID42411::_ID6234( var_2, "brakeight_R", "TAG_REAR_LIGHT_RIGHT", "fx/misc/car_brakelight_btr80", "brake", 0.0 );
    _ID42411::_ID6234( var_2, "brakelight_L", "TAG_REAR_LIGHT_LEFT", "fx/misc/car_brakelight_btr80", "brake", 0.0 );
    _ID42411::_ID6234( var_2, "spotlight", "TAG_FRONT_LIGHT_RIGHT", "fx/misc/spotlight_btr80", "spotlight", 0.2 );
    _ID42411::_ID6234( var_2, "spotlight_turret", "TAG_TURRET_LIGHT", "fx/misc/spotlight_btr80", "spotlight_turret", 0.0 );
    _ID42411::_ID6220( %btr80_movement, %btr80_movement_backwards, 10 );

    if ( issubstr( var_0, "_snow" ) )
        _ID42411::_ID6261( "btr80_turret2", "tag_turret2", "vehicle_btr80_machine_gun_snow" );
    else if ( issubstr( var_2, "_ac130" ) )
        _ID42411::_ID6261( "btr80_ac130_turret", "tag_turret2", "vehicle_btr80_machine_gun" );
    else
        _ID42411::_ID6261( "btr80_turret2", "tag_turret2", "vehicle_btr80_machine_gun" );

    _ID42411::_ID6245( ( 0, 0, 53 ), 512, 300, 20, 0 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6223( 0.33 );
    _ID42411::_ID6207( 1 );
    _ID42411::_ID6226( 1 );
}

_ID19731()
{
    _ID42407::_ID13024( "no_riders_until_unload" );
    _ID42411::_ID40197( "running" );
    thread _ID17700();
}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 36000000;
    var_2 = 1.0;
    vehicle_scripts\_btr80_aud::snd_init_btr80();
    thread _ID23939();

    for (;;)
    {
        if ( !isdefined( self._ID31138 ) || !self._ID31138 )
        {
            var_3 = distancesquared( self._ID740, level._ID794._ID740 );

            if ( var_0 && var_3 > var_1 )
            {
                vehicle_scripts\_btr80_aud::snd_stop_btr80();
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_3 < var_1 )
            {
                vehicle_scripts\_btr80_aud::snd_start_btr80();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            vehicle_scripts\_btr80_aud::snd_stop_btr80();
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    var_0 = 1.0;
    vehicle_scripts\_btr80_aud::snd_stop_btr80();
}

_ID48505()
{
    self endon( "death" );

    for (;;)
    {
        wait 5;
        _ID42411::_ID40197( "brake" );
        wait 3;
        _ID42411::_ID40197( "brake" );
    }
}

_ID39488()
{
    var_0 = [];
    var_0["driver_and_rider"] = [];
    var_0["two_riders"] = [];
    var_0["all"] = [];
    var_1 = "driver_and_rider";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_1 = "two_riders";
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0["default"] = var_0["all"];
    return var_0;
}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %btr80_doorsl_open;
    var_0[1]._ID40152 = %btr80_doorsr_open;
    var_0[2]._ID40152 = %btr80_doorsl_open;
    var_0[3]._ID40152 = %btr80_doorsr_open;
    var_0[0]._ID40154 = "btr80_door_l_open";
    var_0[1]._ID40154 = "btr80_door_r_open";
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 4; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_detach";
    var_0[1]._ID34225 = "tag_detach";
    var_0[2]._ID34225 = "tag_detach";
    var_0[3]._ID34225 = "tag_detach";
    var_0[0]._ID19302 = %btr80_crew_idle;
    var_0[1]._ID19302 = %btr80_crew_idle;
    var_0[2]._ID19302 = %btr80_crew_idle;
    var_0[3]._ID19302 = %btr80_crew_idle;
    var_0[0]._ID16491 = %btr80_exit_1;
    var_0[1]._ID16491 = %btr80_exit_2;
    var_0[2]._ID16491 = %btr80_exit_3;
    var_0[3]._ID16491 = %btr80_exit_4;
    var_0[0]._ID16341 = %latvee_driver_climb_in;
    var_0[1]._ID16341 = %latvee_passenger_in_l;
    var_0[2]._ID16341 = %latvee_passenger_in_r;
    var_0[3]._ID16341 = %latvee_passenger_in_r;
    return var_0;
}

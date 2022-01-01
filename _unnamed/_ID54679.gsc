// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "technical", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_pickup_technical", "vehicle_pickup_technical_destroyed", 3 );
    var_3 = "50cal_turret_technical";
    _ID42411::_ID6261( var_3, "tag_50cal", "h2_weapon_m2_50cal_pickup_truck_turret", undefined, "auto_ai", 3, 20, -14, undefined, _ID48318::_ID48131 );
    _ID42411::_ID6220( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_fx_tank", "smallfire", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/explosions/ammo_cookoff", "tag_fx_bed", undefined, undefined, undefined, undefined, 0.5 );
    _ID42411::_ID6213( "fx/explosions/Vehicle_Explosion_Pickuptruck", "tag_deathfx", "car_explode", undefined, undefined, undefined, 2.9 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_fx_tire_right_r", "smallfire", undefined, undefined, 1, 3 );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "tag_fx_cab", "fire_metal_medium", undefined, undefined, 1, 3.01 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_engine_left", "smallfire", undefined, undefined, 1, 3.01 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6234( var_2, "headlight_truck_left", "tag_headlight_left", "fx/misc/car_headlight_truck_L", "headlights" );
    _ID42411::_ID6234( var_2, "headlight_truck_right", "tag_headlight_right", "fx/misc/car_headlight_truck_R", "headlights" );
    _ID42411::_ID6234( var_2, "parkinglight_truck_left_f", "tag_parkinglight_left_f", "fx/misc/car_parkinglight_truck_LF", "headlights" );
    _ID42411::_ID6234( var_2, "parkinglight_truck_right_f", "tag_parkinglight_right_f", "fx/misc/car_parkinglight_truck_RF", "headlights" );
    _ID42411::_ID6234( var_2, "taillight_truck_right", "tag_taillight_right", "fx/misc/car_taillight_truck_R", "headlights" );
    _ID42411::_ID6234( var_2, "taillight_truck_left", "tag_taillight_left", "fx/misc/car_taillight_truck_L", "headlights" );
    _ID42411::_ID6234( var_2, "brakelight_truck_right", "tag_taillight_right", "fx/misc/car_brakelight_truck_R", "brakelights" );
    _ID42411::_ID6234( var_2, "brakelight_truck_left", "tag_taillight_left", "fx/misc/car_brakelight_truck_L", "brakelights" );
    _ID42411::_ID6210( 0.5, 3, 512, 700, "axis", "allies" );
    _ID42411::_ID6211( 2.9 );
    _ID42411::_ID6245( ( 0, 0, 53 ), 512, 300, 20, 1, 2.9 );
}

_ID32509( var_0 )
{
    return var_0;
}

_ID19731()
{
    if ( !isdefined( self._ID31030 ) )
        self._ID31030 = 1;

    if ( !isdefined( self._ID31028 ) )
        self._ID31028 = 1;

    thread _ID17700();
    _ID48318::_ID44743();
}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 6000;
    var_2 = 1.0;
    _ID52743::_ID49539();
    thread _ID23939();

    for (;;)
    {
        if ( !isdefined( self._ID31138 ) || !self._ID31138 )
        {
            var_3 = distance( self._ID740, level._ID794._ID740 );

            if ( var_0 && var_3 > var_1 )
            {
                _ID52743::_ID53737( var_2 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_3 < var_1 )
            {
                _ID52743::_ID52009();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID52743::_ID53737( var_2 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    var_0 = 1.0;
    _ID52743::_ID53737( var_0 );
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 3; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_gunner";
    var_0[2]._ID34225 = "tag_passenger";
    var_0[0]._ID19302[0] = %technical_driver_idle;
    var_0[0]._ID19302[1] = %technical_driver_duck;
    var_0[0]._ID19329[0] = 1000;
    var_0[0]._ID19329[1] = 100;
    var_0[0]._ID264 = %technical_driver_fallout;
    var_0[2]._ID264 = %technical_passenger_fallout;
    var_0[0]._ID39494 = 0.9;
    var_0[1]._ID39494 = 0.9;
    var_0[2]._ID39494 = 0.9;
    var_0[2]._ID19302[0] = %technical_passenger_idle;
    var_0[2]._ID19302[1] = %technical_passenger_duck;
    var_0[2]._ID19329[0] = 1000;
    var_0[2]._ID19329[1] = 100;
    var_0[0]._ID16491 = %technical_driver_climb_out;
    var_0[2]._ID16491 = %technical_passenger_climb_out;
    var_0[1]._ID23512 = 0;
    return var_0;
}

_ID39488()
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

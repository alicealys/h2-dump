// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "truck", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_008D );
    _ID42411::_ID6216( "vehicle_pickup_roobars", "vehicle_pickup_roobars_destroyed" );
    _ID42411::_ID6216( "vehicle_pickup_4door", "vehicle_pickup_technical_destroyed" );
    _ID42411::_ID6216( "vehicle_opfor_truck", "vehicle_pickup_technical_destroyed" );
    _ID42411::_ID6216( "vehicle_pickup_technical", "vehicle_pickup_technical_destroyed" );
    _ID42411::_ID6213( "fx/explosions/small_vehicle_explosion", undefined, "car_explode", undefined, undefined, undefined, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_fx_tire_right_r", "smallfire", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "tag_fx_cab", "smallfire", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_small_pm_a", "tag_engine_left", "smallfire", undefined, undefined, 1, 0 );
    _ID42411::_ID6220( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_unknown_0168, ::_unknown_013F );
    _ID42411::_ID6262( ::_unknown_01CA );
    _ID42411::_ID6234( var_2, "headlight_truck_left", "tag_headlight_left", "fx/misc/car_headlight_truck_L", "headlights" );
    _ID42411::_ID6234( var_2, "headlight_truck_right", "tag_headlight_right", "fx/misc/car_headlight_truck_R", "headlights" );
    _ID42411::_ID6234( var_2, "parkinglight_truck_left_f", "tag_parkinglight_left_f", "fx/misc/car_parkinglight_truck_LF", "headlights" );
    _ID42411::_ID6234( var_2, "parkinglight_truck_right_f", "tag_parkinglight_right_f", "fx/misc/car_parkinglight_truck_RF", "headlights" );
    _ID42411::_ID6234( var_2, "taillight_truck_right", "tag_taillight_right", "fx/misc/car_taillight_truck_R", "headlights" );
    _ID42411::_ID6234( var_2, "taillight_truck_left", "tag_taillight_left", "fx/misc/car_taillight_truck_L", "headlights" );
    _ID42411::_ID6234( var_2, "brakelight_truck_right", "tag_taillight_right", "fx/misc/car_brakelight_truck_R", "brakelights" );
    _ID42411::_ID6234( var_2, "brakelight_truck_left", "tag_taillight_left", "fx/misc/car_brakelight_truck_L", "brakelights" );
}

_ID19731()
{
    var_0 = _func_03B( "truck_low_breaking_speed" );

    if ( var_0 )
        self _meth_85C1( var_0 );
}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %door_pickup_driver_climb_out;
    var_0[1]._ID40152 = %door_pickup_passenger_climb_out;
    var_0[2]._ID40152 = %door_pickup_passenger_rr_climb_out;
    var_0[3]._ID40152 = %door_pickup_passenger_rl_climb_out;
    var_0[0]._ID40153 = 0;
    var_0[1]._ID40153 = 0;
    var_0[2]._ID40153 = 0;
    var_0[3]._ID40153 = 0;
    var_0[0]._ID40147 = %door_pickup_driver_climb_in;
    var_0[1]._ID40147 = %door_pickup_passenger_climb_in;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 6; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_guy1";
    var_0[3]._ID34225 = "tag_guy0";
    var_0[4]._ID34225 = "tag_guy3";
    var_0[5]._ID34225 = "tag_guy4";
    var_0[0]._ID19302 = %technical_driver_idle;
    var_0[1]._ID19302 = %technical_passenger_idle;
    var_0[2]._ID19302 = %pickup_passenger_rr_idle;
    var_0[3]._ID19302 = %pickup_passenger_rr_idle;
    var_0[4]._ID19302 = %pickup_passenger_rr_idle;
    var_0[5]._ID19302 = %pickup_passenger_rr_idle;
    var_0[0]._ID16491 = %pickup_driver_climb_out;
    var_0[1]._ID16491 = %pickup_passenger_climb_out;
    var_0[2]._ID16491 = %pickup_passenger_rr_climb_out;
    var_0[3]._ID16491 = %pickup_passenger_rl_climb_out;
    var_0[4]._ID16491 = %pickup_passenger_rr_climb_out;
    var_0[5]._ID16491 = %pickup_passenger_rl_climb_out;
    var_0[0]._ID16341 = %pickup_driver_climb_in;
    var_0[1]._ID16341 = %pickup_passenger_climb_in;
    return var_0;
}

_ID39488()
{
    var_0 = [];
    var_0["passengers"] = [];
    var_0["all"] = [];
    var_1 = "passengers";
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_0["default"] = var_0["all"];
    return var_0;
}

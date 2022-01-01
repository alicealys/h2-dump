// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "bm21_troops", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6219( "vehicle_bm21_mobile_bed_destructible", "vehicle_bm21_mobile_bed" );
    _ID42411::_ID6219( "vehicle_bm21_bed_under_destructible", "vehicle_bm21_bed_under" );
    _ID42411::_ID6219( "vehicle_bm21_cover_destructible", "vehicle_bm21_cover" );
    _ID42411::_ID6219( "vehicle_bm21_cover_under_destructible", "vehicle_bm21_cover_under" );
    _ID42411::_ID6216( "vehicle_bm21_mobile_cover_snow", "vehicle_bm21_mobile_cover_dstry" );
    _ID42411::_ID6216( "vehicle_bm21_mobile", "vehicle_bm21_mobile_dstry" );
    _ID42411::_ID6216( "vehicle_bm21_mobile_cover", "vehicle_bm21_mobile_cover_dstry" );
    _ID42411::_ID6216( "vehicle_bm21_mobile_bed", "vehicle_bm21_mobile_bed_dstry" );
    _ID42411::_ID6216( "vehicle_bm21_mobile_cover_no_bench", "vehicle_bm21_mobile_cover_dstry" );
    _ID42411::_ID6213( "fx/explosions/huge_vehicle_explosion_bm21", "tag_fx_cab", "truck_explode", undefined, undefined, undefined, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "tag_fx_tire_right_r", undefined, undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "tag_fx_cab", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6248( "pickup_rumble", 0.01, 4.5, 900, 1, 1 );
    _ID42411::_ID6217( 1, 1.6, 500 );
    _ID42411::_ID6233( 399 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6257();
    _ID42411::_ID6207( 1 );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6234( var_2, "headlight_truck_left", "tag_headlight_left", "fx/misc/lighthaze", "headlights" );
    _ID42411::_ID6234( var_2, "headlight_truck_right", "tag_headlight_right", "fx/misc/lighthaze", "headlights" );
    _ID42411::_ID6234( var_2, "headlight_truck_left2", "tag_headlight_left", "fx/misc/car_headlight_bm21", "headlights" );
    _ID42411::_ID6234( var_2, "headlight_truck_right2", "tag_headlight_right", "fx/misc/car_headlight_bm21", "headlights" );
    _ID42411::_ID6234( var_2, "parkinglight_truck_left_f", "tag_parkinglight_left_f", "fx/misc/car_parkinglight_bm21", "headlights" );
    _ID42411::_ID6234( var_2, "parkinglight_truck_right_f", "tag_parkinglight_right_f", "fx/misc/car_parkinglight_bm21", "headlights" );
    _ID42411::_ID6234( var_2, "taillight_truck_right", "tag_taillight_right", "fx/misc/car_taillight_bm21", "headlights" );
    _ID42411::_ID6234( var_2, "taillight_truck_left", "tag_taillight_left", "fx/misc/car_taillight_bm21", "headlights" );
    _ID42411::_ID6234( var_2, "brakelight_troops_right", "tag_taillight_right", "fx/misc/car_taillight_bm21", "brakelights" );
    _ID42411::_ID6234( var_2, "brakelight_troops_left", "tag_taillight_left", "fx/misc/car_taillight_bm21", "brakelights" );
    _ID42411::_ID6220( %bm21_driving_idle_forward, %bm21_driving_idle_backward, 10 );
}

_ID19731()
{

}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %bm21_driver_climbout_door;
    var_0[1]._ID40152 = %bm21_passenger_climbout_door;
    var_0[2]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[3]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[4]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[5]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[6]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[7]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[8]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[9]._ID40152 = %bm21_guy_climbout_truckdoor;
    var_0[0]._ID40155 = "left_door";
    var_0[1]._ID40155 = "right_door";
    var_0[2]._ID40155 = "back_board";
    var_0[3]._ID40155 = "back_board";
    var_0[4]._ID40155 = "back_board";
    var_0[5]._ID40155 = "back_board";
    var_0[6]._ID40155 = "back_board";
    var_0[7]._ID40155 = "back_board";
    var_0[8]._ID40155 = "back_board";
    var_0[9]._ID40155 = "back_board";
    var_0[0]._ID40154 = "scn_truck_door_open_01";
    var_0[1]._ID40154 = "scn_truck_door_open_02";
    var_0[0]._ID40153 = 1;
    var_0[1]._ID40153 = 1;
    var_0[2]._ID40153 = 0;
    var_0[3]._ID40153 = 0;
    var_0[4]._ID40153 = 0;
    var_0[5]._ID40153 = 0;
    var_0[6]._ID40153 = 0;
    var_0[7]._ID40153 = 0;
    var_0[8]._ID40153 = 0;
    var_0[9]._ID40153 = 0;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 10; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_detach";
    var_0[3]._ID34225 = "tag_detach";
    var_0[4]._ID34225 = "tag_detach";
    var_0[5]._ID34225 = "tag_detach";
    var_0[6]._ID34225 = "tag_detach";
    var_0[7]._ID34225 = "tag_detach";
    var_0[8]._ID34225 = "tag_detach";
    var_0[9]._ID34225 = "tag_detach";
    var_0[0]._ID19302 = %bm21_driver_idle;
    var_0[1]._ID19302 = %bm21_passenger_idle;
    var_0[2]._ID19302 = %bm21_guy1_idle;
    var_0[3]._ID19302 = %bm21_guy2_idle;
    var_0[4]._ID19302 = %bm21_guy3_idle;
    var_0[5]._ID19302 = %bm21_guy4_idle;
    var_0[6]._ID19302 = %bm21_guy5_idle;
    var_0[7]._ID19302 = %bm21_guy6_idle;
    var_0[8]._ID19302 = %bm21_guy7_idle;
    var_0[9]._ID19302 = %bm21_guy8_idle;
    var_0[0]._ID19305 = %bm21_driver_driving;
    var_0[0]._ID19309 = %bm21_driver_idle;
    var_0[0]._ID16491 = %bm21_driver_climbout;
    var_0[1]._ID16491 = %bm21_passenger_climbout;
    var_0[2]._ID16491 = %bm21_guy1_climbout;
    var_0[3]._ID16491 = %bm21_guy2_climbout;
    var_0[4]._ID16491 = %bm21_guy3_climbout;
    var_0[5]._ID16491 = %bm21_guy4_climbout;
    var_0[6]._ID16491 = %bm21_guy5_climbout;
    var_0[7]._ID16491 = %bm21_guy6_climbout;
    var_0[8]._ID16491 = %bm21_guy7_climbout;
    var_0[9]._ID16491 = %bm21_guy8_climbout;
    var_0[2]._ID16495 = %bm21_guy_climbout_landing;
    var_0[3]._ID16495 = %bm21_guy_climbout_landing;
    var_0[4]._ID16495 = %bm21_guy_climbout_landing;
    var_0[6]._ID16495 = %bm21_guy_climbout_landing;
    var_0[7]._ID16495 = %bm21_guy_climbout_landing;
    var_0[8]._ID16495 = %bm21_guy_climbout_landing;
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
    var_0[var_1][var_0[var_1].size] = 6;
    var_0[var_1][var_0[var_1].size] = 7;
    var_0[var_1][var_0[var_1].size] = 8;
    var_0[var_1][var_0[var_1].size] = 9;
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_0[var_1][var_0[var_1].size] = 6;
    var_0[var_1][var_0[var_1].size] = 7;
    var_0[var_1][var_0[var_1].size] = 8;
    var_0[var_1][var_0[var_1].size] = 9;
    var_0["default"] = var_0["all"];
    return var_0;
}

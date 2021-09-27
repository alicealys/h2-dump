// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "uaz", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0062 );
    _ID42411::_ID6219( "vehicle_uaz_winter_destructible", "vehicle_uaz_winter" );
    _ID42411::_ID6219( "vehicle_uaz_open_destructible", "vehicle_uaz_open" );
    _ID42411::_ID6207( 0 );
    _ID42411::_ID6216( "vehicle_uaz_light", "vehicle_uaz_light_dsr" );
    _ID42411::_ID6216( "vehicle_uaz_winter", "vehicle_uaz_winter_destroy" );
    _ID42411::_ID6216( "vehicle_uaz_fabric", "vehicle_uaz_fabric_dsr" );
    _ID42411::_ID6216( "vehicle_uaz_hardtop", "vehicle_uaz_hardtop_dsr" );
    _ID42411::_ID6216( "vehicle_uaz_open", "vehicle_uaz_open_dsr" );
    _ID42411::_ID6216( "vehicle_uaz_hardtop_thermal", "vehicle_uaz_hardtop_thermal" );
    _ID42411::_ID6216( "vehicle_uaz_open_for_ride" );
    _ID42411::_ID6213( "fx/explosions/small_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6245( ( 0, 0, 32 ), 300, 200, 100, 0 );
    _ID42411::_ID6220( %uaz_driving_idle_forward, %uaz_driving_idle_backward, 10 );
    _ID42411::_ID6217( 1, 1.6, 500 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 2500, 2400, 2600 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6204( ::_unknown_0181, ::_unknown_0134 );
    _ID42411::_ID44204( "uaz", 0 );
}

_ID19731()
{
    self._ID7837 = 1;

    if ( !_func_02F( self._ID31030 ) )
        self._ID31030 = 0;
}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %uaz_driver_exit_into_stand_door;
    var_0[1]._ID40152 = %uaz_passenger_exit_into_stand_door;
    var_0[2]._ID40152 = %uaz_rear_driver_exit_into_stand_door;
    var_0[3]._ID40152 = %uaz_passenger2_exit_into_stand_door;
    var_0[0]._ID40153 = 0;
    var_0[1]._ID40153 = 0;
    var_0[2]._ID40153 = 0;
    var_0[3]._ID40153 = 0;
    var_0[0]._ID40147 = %uaz_driver_enter_from_huntedrun_door;
    var_0[1]._ID40147 = %uaz_passenger_enter_from_huntedrun_door;
    var_0[2]._ID40147 = %uaz_rear_driver_enter_from_huntedrun_door;
    var_0[3]._ID40147 = %uaz_passenger2_enter_from_huntedrun_door;
    var_0[0]._ID40154 = "uaz_door_open";
    var_0[1]._ID40154 = "uaz_door_open";
    var_0[2]._ID40154 = "uaz_door_open";
    var_0[3]._ID40154 = "uaz_door_open";
    var_0[0]._ID40149 = "uaz_door_open";
    var_0[1]._ID40149 = "uaz_door_open";
    var_0[2]._ID40149 = "uaz_door_open";
    var_0[3]._ID40149 = "uaz_door_open";
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
    var_0[2]._ID34225 = "tag_guy0";
    var_0[3]._ID34225 = "tag_guy1";
    var_0[4]._ID34225 = "tag_guy2";
    var_0[5]._ID34225 = "tag_guy3";
    var_0[0]._ID19302 = %h2_uaz_driver_idle;
    var_0[1]._ID19302 = %h2_uaz_passenger_idle;
    var_0[2]._ID19302 = %h2_uaz_rear_driver_idle;
    var_0[3]._ID19302 = %h2_uaz_passenger2_idle;
    var_0[4]._ID19302 = %h2_uaz_rear_driver_idle;
    var_0[5]._ID19302 = %h2_uaz_passenger2_idle;
    var_0[0]._ID16491 = %uaz_driver_exit_into_stand;
    var_0[1]._ID16491 = %uaz_passenger_exit_into_stand;
    var_0[2]._ID16491 = %uaz_rear_driver_exit_into_stand;
    var_0[3]._ID16491 = %uaz_passenger2_exit_into_stand;
    var_0[0]._ID16341 = %uaz_driver_enter_from_huntedrun;
    var_0[1]._ID16341 = %uaz_passenger_enter_from_huntedrun;
    var_0[2]._ID16341 = %uaz_rear_driver_enter_from_huntedrun;
    var_0[3]._ID16341 = %uaz_passenger2_enter_from_huntedrun;
    var_0[0]._ID264 = %uaz_driver_death;
    var_0[1]._ID264 = %uaz_rear_driver_death;
    var_0[2]._ID264 = %uaz_rear_driver_death;
    var_0[3]._ID264 = %uaz_rear_driver_death;
    var_0[0]._ID9801 = 1;
    var_0[1]._ID9801 = 1;
    var_0[2]._ID9801 = 1;
    var_0[3]._ID9801 = 1;
    return var_0;
}

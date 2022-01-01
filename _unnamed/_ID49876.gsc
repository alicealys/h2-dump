// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "policecar", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6219( "vehicle_policecar_lapd_destructible", "vehicle_policecar" );
    _ID42411::_ID6219( "vehicle_policecar_russia_destructible", "vehicle_policecar_russia" );
    _ID42411::_ID6216( "vehicle_policecar_lapd_destructible", "vehicle_policecar_lapd_destroy" );
    _ID42411::_ID6216( "vehicle_policecar_russia_destructible", "vehicle_policecar_russia_destroy" );
    _ID42411::_ID6220( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
}

_ID19731()
{

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
    var_0[0]._ID40149 = "truck_door_open";
    var_0[1]._ID40149 = "truck_door_open";
    var_0[2]._ID40149 = "truck_door_open";
    var_0[3]._ID40149 = "truck_door_open";
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 6; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_guy0";
    var_0[3]._ID34225 = "tag_guy1";
    var_0[0]._ID19302 = %uaz_driver_idle_drive;
    var_0[1]._ID19302 = %uaz_passenger_idle_drive;
    var_0[2]._ID19302 = %uaz_rear_driver_idle;
    var_0[3]._ID19302 = %uaz_passenger2_idle;
    var_0[0]._ID16491 = %uaz_driver_exit_into_stand;
    var_0[1]._ID16491 = %uaz_passenger_exit_into_stand;
    var_0[2]._ID16491 = %uaz_rear_driver_exit_into_stand;
    var_0[3]._ID16491 = %uaz_passenger2_exit_into_stand;
    var_0[0]._ID16341 = %uaz_driver_enter_from_huntedrun;
    var_0[1]._ID16341 = %uaz_passenger_enter_from_huntedrun;
    var_0[2]._ID16341 = %uaz_rear_driver_enter_from_huntedrun;
    var_0[3]._ID16341 = %uaz_passenger2_enter_from_huntedrun;
    return var_0;
}

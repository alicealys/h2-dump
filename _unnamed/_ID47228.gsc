// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "ambulance", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_003C );
    _ID42411::_ID6216( "vehicle_ambulance_russian" );
    _ID42411::_ID6245( ( 0, 0, 32 ), 300, 200, 100, 0 );
    _ID42411::_ID6206( ::_unknown_0062 );
    _ID42411::_ID6220( %ambulance_driving_idle_forward, %ambulance_driving_idle_backward, 10 );
    _ID42411::_ID6217( 1, 1.6, 500 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6204( ::_unknown_00BC, ::_unknown_009E );
}

_ID19731()
{

}

_ID32509( var_0 )
{
    return var_0;
}

_ID32221()
{
    var_0 = [];

    if ( _func_02F( self._ID40791 ) && _func_125( self._ID40791, "script_vehicle_ambulance_russian_airport" ) )
    {
        var_0["attach_exterior"] = _func_1A5();
        var_0["attach_exterior"]._ID1067 = "body_animate_jnt";
        var_0["attach_exterior"]._ID669 = "h2_vehicle_ambulance_russian_interior";
        var_0["attach_exterior"]._ID47753 = "body_animate_jnt";
        _func_14C( "h2_vehicle_ambulance_russian_interior" );
    }

    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "TAG_DRIVER";
    var_0[1]._ID34225 = "TAG_PASSENGER";
    var_0[0]._ID19302 = %uaz_driver_idle_drive;
    var_0[1]._ID19302 = %uaz_passenger_idle_drive;
    return var_0;
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "van", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_uaz_van", "vehicle_uaz_van" );
    _ID42411::_ID6245( ( 0, 0, 32 ), 300, 200, 100, 0 );
    _ID42411::_ID6220( %uaz_driving_idle_forward, %uaz_driving_idle_backward, 10 );
    _ID42411::_ID6217( 1, 1.6, 500 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
}

_ID19731()
{

}

_ID32509( var_0 )
{
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[0]._ID19302 = %uaz_driver_idle_drive;
    var_0[1]._ID19302 = %uaz_passenger_idle_drive;
    return var_0;
}

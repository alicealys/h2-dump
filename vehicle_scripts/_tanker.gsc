// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "tanker", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0030 );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6220( %tanker_truck_driving_idle_forward, %tanker_truck_driving_idle_backward, 10 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_unknown_0074, ::_unknown_006F );
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

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_driver";
    var_0[0]._ID19302 = %luxurysedan_driver_idle;
    return var_0;
}

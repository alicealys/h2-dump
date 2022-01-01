// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "small_wagon", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_small_wagon_white", "vehicle_small_wagon_d_white" );
    _ID42411::_ID6216( "vehicle_small_wagon_turq", "vehicle_small_wagon_d_turq" );
    _ID42411::_ID6216( "vehicle_small_wagon_green", "vehicle_small_wagon_d_green" );
    _ID42411::_ID6216( "vehicle_small_wagon_blue", "vehicle_small_wagon_d_blue" );
    _ID42411::_ID6219( "vehicle_small_wagon_white_destructible", "vehicle_small_wagon_white" );
    _ID42411::_ID6219( "vehicle_small_wagon_blue_destructible", "vehicle_small_wagon_blue" );
    _ID42411::_ID6219( "vehicle_small_wagon_green_destructible", "vehicle_small_wagon_green" );
    _ID42411::_ID6219( "vehicle_small_wagon_turq_destructible", "vehicle_small_wagon_turq" );
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
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[0]._ID19302 = %luxurysedan_driver_idle;
    return var_0;
}

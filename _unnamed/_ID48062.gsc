// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "small_hatchback", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_small_hatchback_blue", "vehicle_small_hatchback_d_blue" );
    _ID42411::_ID6216( "vehicle_small_hatchback_green", "vehicle_small_hatchback_d_green" );
    _ID42411::_ID6216( "vehicle_small_hatchback_turq", "vehicle_small_hatchback_d_turq" );
    _ID42411::_ID6216( "vehicle_small_hatchback_white", "vehicle_small_hatchback_d_white" );
    _ID42411::_ID6219( "vehicle_small_hatch_blue_destructible", "vehicle_small_hatch_blue" );
    _ID42411::_ID6219( "vehicle_small_hatch_green_destructible", "vehicle_small_hatch_green" );
    _ID42411::_ID6219( "vehicle_small_hatch_turq_destructible", "vehicle_small_hatch_turq" );
    _ID42411::_ID6219( "vehicle_small_hatch_white_destructible", "vehicle_small_hatch_white" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
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

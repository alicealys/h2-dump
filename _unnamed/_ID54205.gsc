// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "gauntlet", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0035 );
    _ID42411::_ID6216( "vehicle_sa15_gauntlet", "vehicle_sa15_gauntlet_destroy" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6230( %sa15_turret_scanloop );
    _ID42411::_ID6230( %sa15_radar_spinloop );
    _ID42411::_ID6207( 1 );
    _ID42411::_ID6226( 1 );
}

_ID19731()
{

}

_ID32509( var_0 )
{
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID16493 = 1;
    return var_0;
}

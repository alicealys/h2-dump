// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "bradley", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_bradley", "vehicle_bradley" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
    _ID42411::_ID6223( 0.33 );
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
        var_0[var_1] = spawnstruct();

    var_0[0]._ID16493 = 1;
    return var_0;
}

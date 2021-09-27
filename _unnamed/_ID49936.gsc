// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "swat_van", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0051 );
    _ID42411::_ID6216( var_0, "h2_vehicle_russian_swat_van_destroy" );
    _ID42411::_ID6213( "fx/explosions/huge_vehicle_explosion", "TAG_DEATHFX", "car_explode", undefined, undefined, undefined, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_swat_van_back", "TAG_CARGO_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_swat_van", "TAG_CAB_FIRE", undefined, undefined, undefined, undefined, 0 );
    _ID42411::_ID6213( "fx/fire/firelp_swat_van_addon", "TAG_CAB_FIRE", undefined, undefined, undefined, undefined, 0 );
    _ID42411::_ID6245( ( 0, 0, 32 ), 300, 200, 100, 0 );
    _ID42411::_ID6220( %uaz_driving_idle_forward, %uaz_driving_idle_backward, 10 );
    _ID42411::_ID6217( 1, 1.6, 800 );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6257();
    _ID42411::_ID6204( ::_unknown_0101, ::_unknown_00F2 );
}

_ID19731()
{

}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %russian_swat_van_driver_getout_door;
    var_0[0]._ID40155 = "front_door_left_jnt";
    var_0[0]._ID40153 = 1;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_driver";
    var_0[0]._ID19302 = %russian_swat_van_driver_idle;
    var_0[0]._ID16491 = %russian_swat_van_driver_getout;
    return var_0;
}

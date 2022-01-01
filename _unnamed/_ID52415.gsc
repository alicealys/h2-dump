// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "luxurysedan", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_luxurysedan", "vehicle_luxurysedan_destroy" );
    _ID42411::_ID6216( "vehicle_luxurysedan_test", "vehicle_luxurysedan_destroy" );
    _ID42411::_ID6216( "vehicle_luxurysedan_viewmodel", "vehicle_luxurysedan_destroy" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6206( ::_ID32221 );
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

_ID32221()
{
    var_0 = [];

    if ( isdefined( self._ID40791 ) && issubstr( self._ID40791, "script_vehicle_luxurysedan_viewmodel" ) )
    {
        var_0["attach_exterior"] = spawnstruct();
        var_0["attach_exterior"]._ID1067 = "body_animate_jnt";
        var_0["attach_exterior"]._ID669 = "vehicle_luxurysedan_2009_viewmodel_interior";
        var_0["attach_exterior"]._ID47753 = "tag_origin";
    }

    return var_0;
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _func_14C( "vehicle_m60a1_bridge" );
    _ID42411::_ID6255( "bridge_layer", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0041 );
    _ID42411::_ID6216( "vehicle_bridge_layer", "vehicle_laatpv_destroyed" );
    _ID42411::_ID6220( %abrams_movement, %abrams_movement_backwards, 10 );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/explosions/vehicle_explosion_laatpv", "tag_deathfx", "car_explode" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
}

_ID19731()
{
    var_0 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_0 _meth_80B8( "vehicle_m60a1_bridge" );
    var_0 _meth_8053( self, "tag_bridge_attach", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    self._ID48247 = var_0;
}

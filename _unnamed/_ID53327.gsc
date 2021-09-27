// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "ucav", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_002D );
    _ID42411::_ID6216( "vehicle_ucav" );
    level._ID1426["jettrail"] = _func_155( "fx/smoke/jet_contrail" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
}

_ID19731()
{
    thread _unknown_0081();
    self._ID23757[0] = "tag_missile_left";
    self._ID23757[1] = "tag_missile_right";
    self._ID24792 = 0;
}

_ID32509( var_0 )
{
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = _func_1A5();

    return var_0;
}

_ID45530()
{
    _func_157( level._ID1426["jettrail"], self, "TAG_JET_TRAIL" );
}

_ID26746()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _unknown_00D9();
    var_0 thread _unknown_00E7();
}

_ID45032()
{
    self endon( "death" );
    self endon( "reached_end_node" );

    while ( !_unknown_0106( self, 1 ) )
        wait 0.05;

    thread _ID42407::_ID27079( "veh_uav_flyby" );
}

_ID27861( var_0, var_1 )
{
    var_2 = _unknown_0144( var_0 );

    if ( var_2 )
        var_3 = 1;
    else
        var_3 = -1;

    var_4 = _ID42237::_ID14540( var_0._ID740 );
    var_5 = var_4 + _func_11F( _ID42237::_ID14539( var_0._ID65 ) ) * var_3 * 100000;
    var_6 = _func_0F2( var_4, var_5, level._ID794._ID740 );
    var_7 = _func_0F3( var_4, var_6 );
    var_8 = 3000;

    if ( _func_02F( var_1 ) && var_1 )
    {
        var_9 = var_0 _meth_8290();
        var_10 = var_9 * 63360 / 3600;
        var_8 = var_10 * 4.1;
    }

    return var_7 < var_8;
}

_ID27862( var_0 )
{
    var_1 = _func_11F( _ID42237::_ID14539( var_0._ID65 ) );
    var_2 = _func_119( _ID42237::_ID14540( level._ID794._ID740 ) - var_0._ID740 );
    var_3 = _func_0FB( var_1, var_2 );

    if ( var_3 > 0 )
        return 1;
    else
        return 0;
}

_ID44024()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _unknown_01F5();
    var_0 _meth_8271( "ucav_sidewinder" );
    var_1 = _ID42237::_ID15807();
    var_0 _meth_8272( var_0._ID23757[var_0._ID24792], var_1, ( 0, 0, 0 ) );
    var_0._ID24792++;

    if ( var_0._ID24792 >= var_0._ID23757.size )
        var_0._ID24792 = 0;
}

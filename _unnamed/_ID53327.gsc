// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "ucav", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_ucav" );
    level._ID1426["jettrail"] = loadfx( "fx/smoke/jet_contrail" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
}

_ID19731()
{
    thread _ID45530();
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
        var_0[var_1] = spawnstruct();

    return var_0;
}

_ID45530()
{
    playfxontag( level._ID1426["jettrail"], self, "TAG_JET_TRAIL" );
}

_ID26746()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _ID26746();
    var_0 thread _ID45032();
}

_ID45032()
{
    self endon( "death" );
    self endon( "reached_end_node" );

    while ( !_ID27861( self, 1 ) )
        wait 0.05;

    thread _ID42407::_ID27079( "veh_uav_flyby" );
}

_ID27861( var_0, var_1 )
{
    var_2 = _ID27862( var_0 );

    if ( var_2 )
        var_3 = 1;
    else
        var_3 = -1;

    var_4 = _ID42237::_ID14540( var_0._ID740 );
    var_5 = var_4 + anglestoforward( _ID42237::_ID14539( var_0._ID65 ) ) * ( var_3 * 100000 );
    var_6 = pointonsegmentnearesttopoint( var_4, var_5, level._ID794._ID740 );
    var_7 = distance( var_4, var_6 );
    var_8 = 3000;

    if ( isdefined( var_1 ) && var_1 )
    {
        var_9 = var_0 vehicle_getspeed();
        var_10 = var_9 * 63360 / 3600;
        var_8 = var_10 * 4.1;
    }

    return var_7 < var_8;
}

_ID27862( var_0 )
{
    var_1 = anglestoforward( _ID42237::_ID14539( var_0._ID65 ) );
    var_2 = vectornormalize( _ID42237::_ID14540( level._ID794._ID740 ) - var_0._ID740 );
    var_3 = vectordot( var_1, var_2 );

    if ( var_3 > 0 )
        return 1;
    else
        return 0;
}

_ID44024()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _ID44024();
    var_0 setvehweapon( "ucav_sidewinder" );
    var_1 = _ID42237::_ID15807();
    var_0 fireweapon( var_0._ID23757[var_0._ID24792], var_1, ( 0, 0, 0 ) );
    var_0._ID24792++;

    if ( var_0._ID24792 >= var_0._ID23757.size )
        var_0._ID24792 = 0;
}

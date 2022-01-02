// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "harrier", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_av8b_harrier_jet" );
    _ID44031( "harrier_engine", "fx/fire/jet_afterburner_harrier" );
    _ID44031( "harrier_afterburner", "fx/fire/jet_afterburner_ignite" );
    _ID44031( "harrier_contrail", "fx/smoke/jet_contrail" );
    _ID42411::_ID6213( "fx/explosions/aerial_explosion_harrier", "tag_deathfx", "explo_metal_rand", undefined, undefined, undefined, undefined, undefined, undefined, 0 );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6248( "mig_rumble", 0.05, 0.2, 7500, 0.05, 0.05 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6257();
    _ID42411::_ID6234( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", 0.0 );
    _ID42411::_ID6234( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", 0.05 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "TAG_LIGHT_TAIL", "fx/misc/aircraft_light_white_blink", "running", 0.1 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "TAG_LIGHT_BELLY", "fx/misc/aircraft_light_red_blink", "running", 0.15 );
    _ID42411::_ID6232();
}

_ID19731()
{
    thread _ID27206();
    _ID42411::_ID40197( "running" );
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

_ID27206()
{
    self endon( "death" );
    self endon( "stop_engineeffects" );
    _ID42407::_ID13024( "engineeffects" );
    _ID42407::_ID13025( "engineeffects" );
    var_0 = _ID42237::_ID16299( "harrier_engine" );

    for (;;)
    {
        _ID42407::_ID13027( "engineeffects" );
        playfxontag( var_0, self, "tag_engine_right" );
        playfxontag( var_0, self, "tag_engine_left" );
        wait 0.05;
        playfxontag( var_0, self, "tag_engine_right2" );
        playfxontag( var_0, self, "tag_engine_left2" );
        _ID42407::_ID13031( "engineeffects" );
        stopfxontag( var_0, self, "tag_engine_left" );
        stopfxontag( var_0, self, "tag_engine_right" );
        wait 0.05;
        stopfxontag( var_0, self, "tag_engine_left2" );
        stopfxontag( var_0, self, "tag_engine_right2" );
    }
}

_ID27862( var_0 )
{
    var_1 = anglestoforward( _ID42237::_ID14539( var_0.angles ) );
    var_2 = vectornormalize( _ID42237::_ID14540( level.player.origin ) - var_0.origin );
    var_3 = vectordot( var_1, var_2 );

    if ( var_3 > 0 )
        return 1;
    else
        return 0;
}

_ID26746()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _ID26746();
    var_0 thread _ID42237::_ID27000( "veh_mig29_dist_loop" );

    while ( _ID27862( var_0 ) )
        wait 0.05;

    wait 0.5;
    var_0 thread _ID42237::_ID27077( "veh_mig29_sonic_boom" );
    var_0 waittill( "reached_end_node" );
    var_0 _ID36556( "veh_mig29_dist_loop" );
    var_0 delete();
}

_ID36556( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_ID49893( var_0, var_1 )
{
    if ( !isdefined( level._ID50307 ) )
        level._ID50307 = [];

    level._ID50307[var_0] = var_1;
}

_ID44031( var_0, var_1 )
{
    if ( isdefined( level._ID50307 ) && isdefined( level._ID50307[var_0] ) )
        var_1 = level._ID50307[var_0];

    level._ID1426[var_0] = loadfx( var_1 );
}

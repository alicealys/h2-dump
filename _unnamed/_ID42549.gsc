// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "mig29", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_mig29_desert" );
    _ID42411::_ID6216( "vehicle_av8b_harrier_jet" );
    _ID48528( "mig29_engine", "fx/fire/jet_afterburner_cliffhanger" );
    _ID48528( "mig29_afterburner", "fx/fire/jet_afterburner_ignite" );
    _ID48528( "mig29_contrail", "fx/smoke/jet_contrail" );
    _ID48528( "mig29_contrail_02", "fx/smoke/jet_contrail_02" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6248( "mig_rumble", 0.1, 0.2, 11300, 0.05, 0.05 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6231();
}

_ID19731()
{
    _ID42407::_ID10226( 0.05, ::_ID27206 );
    thread _ID27173();
    thread _ID27195();
}

_ID32509( var_0 )
{
    var_1 = "rope_test";
    precachemodel( var_1 );
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
    if ( _ID42407::_ID13023( "engineeffects" ) )
        self notify( "stop_engineeffects" );

    self endon( "death" );
    self endon( "stop_engineeffects" );
    _ID42407::_ID13024( "engineeffects" );
    _ID42407::_ID13025( "engineeffects" );
    var_0 = _ID42237::_ID16299( "mig29_engine" );
    thread _ID47604();

    for (;;)
    {
        _ID42407::_ID13027( "engineeffects" );
        playfxontag( var_0, self, "tag_engine_right" );
        playfxontag( var_0, self, "tag_engine_left" );
        _ID42407::_ID13031( "engineeffects" );
        stopfxontag( var_0, self, "tag_engine_left" );
        stopfxontag( var_0, self, "tag_engine_right" );
    }
}

_ID47604()
{
    self endon( "death" );
    self waittill( "stop_engineeffects" );
    var_0 = _ID42237::_ID16299( "mig29_engine" );
    stopfxontag( var_0, self, "tag_engine_left" );
    stopfxontag( var_0, self, "tag_engine_right" );
    _ID42407::_ID13021( "engineeffects", 1 );
}

_ID27173()
{
    playfxontag( level._ID1426["mig29_afterburner"], self, "tag_engine_right" );
    playfxontag( level._ID1426["mig29_afterburner"], self, "tag_engine_left" );
}

_ID27195()
{
    if ( _ID42407::_ID13023( "contrails" ) )
        self notify( "stop_contrails" );

    self endon( "death" );
    self endon( "stop_contrails" );
    _ID42407::_ID13024( "contrails" );
    _ID42407::_ID13025( "contrails" );
    thread _ID52960();

    for (;;)
    {
        _ID42407::_ID13027( "contrails" );
        playfxontag( _ID42237::_ID16299( "mig29_contrail" ), self, "tag_right_wingtip" );
        playfxontag( _ID42237::_ID16299( "mig29_contrail_02" ), self, "tag_left_wingtip" );
        _ID42407::_ID13031( "contrails" );
        stopfxontag( _ID42237::_ID16299( "mig29_contrail" ), self, "tag_right_wingtip" );
        stopfxontag( _ID42237::_ID16299( "mig29_contrail_02" ), self, "tag_left_wingtip" );
    }
}

_ID52960()
{
    self endon( "death" );
    self waittill( "stop_contrails" );
    stopfxontag( _ID42237::_ID16299( "mig29_contrail" ), self, "tag_right_wingtip" );
    stopfxontag( _ID42237::_ID16299( "mig29_contrail_02" ), self, "tag_left_wingtip" );
    _ID42407::_ID13021( "contrails", 1 );
}

_ID27861( var_0, var_1 )
{
    var_2 = _ID27862( var_0 );

    if ( var_2 )
        var_3 = 1;
    else
        var_3 = -1;

    var_4 = _ID42237::_ID14540( var_0.origin );
    var_5 = var_4 + anglestoforward( _ID42237::_ID14539( var_0.angles ) ) * ( var_3 * 100000 );
    var_6 = pointonsegmentnearesttopoint( var_4, var_5, level.player.origin );
    var_7 = distance( var_4, var_6 );
    var_8 = 3000;

    if ( isdefined( var_1 ) && var_1 )
    {
        var_9 = var_0 vehicle_getspeed();
        var_10 = var_9 * 63360 / 3600;
        var_8 = var_10 * 1.1;
    }

    if ( isdefined( level._ID54594 ) )
        var_8 = level._ID54594;

    return var_7 < var_8;
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
    var_1 = 0;
    var_2 = undefined;

    if ( isdefined( self._ID31388 ) )
    {
        var_3 = strtok( self._ID31388, ":, " );

        foreach ( var_5 in var_3 )
        {
            if ( var_5 == "play_additional_sound" )
            {
                var_1 = 1;
                continue;
            }

            if ( var_5 == "stop_sound_on_death" )
            {
                var_2 = 1;
                continue;
            }
        }
    }

    var_0 thread _ID45032( var_1, var_2 );

    while ( _ID27862( var_0 ) )
        wait 0.05;

    wait 0.5;
    var_0 thread _ID42237::_ID27077( "veh_mig29_sonic_boom" );
    var_0 waittill( "reached_end_node" );
    var_0 _ID36556( "veh_mig29_dist_loop" );
    var_0 delete();
}

_ID45032( var_0, var_1 )
{
    self endon( "death" );
    self endon( "reached_end_node" );

    while ( !_ID27861( self, 1 ) )
        wait 0.05;

    thread _ID42407::_ID27080( "veh_mig29_passby", undefined, var_1 );

    if ( var_0 )
        thread _ID42407::_ID27080( "veh_mig29_passby_layer", undefined, var_1 );
}

_ID26738()
{
    _ID48528( "plane_bomb_explosion1", "fx/explosions/airlift_explosion_large" );
    _ID48528( "plane_bomb_explosion2", "fx/explosions/tanker_explosion" );
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _ID26738();
    var_1 = getentarray( self._ID31273, "script_linkname" );
    var_1 = _ID42237::_ID15566( self.origin, var_1, undefined, var_1.size );
    var_2 = 0;
    wait(randomfloatrange( 0.3, 0.8 ));

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_2++;

        if ( var_2 == 3 )
            var_2 = 1;

        var_1[var_3] thread _ID42407::_ID27079( "airstrike_explosion" );
        var_4 = "plane_bomb_explosion" + var_2;
        var_5 = level._ID1426[var_4];

        if ( isdefined( level._ID47910 ) && isdefined( level._ID47910[var_4] ) )
            var_5 = level._ID47910[var_4];

        playfx( var_5, var_1[var_3].origin );
        wait(randomfloatrange( 0.3, 1.2 ));
    }
}

_ID26737()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    var_1 = var_0;
    var_1 thread _ID26737();
    var_2 = spawn( "script_model", var_1.origin - ( 0, 0, 100 ) );
    var_2.angles = var_1.angles;
    var_2 setmodel( "projectile_cbu97_clusterbomb" );
    var_3 = anglestoforward( var_1.angles ) * 2;
    var_4 = anglestoup( var_1.angles ) * -0.2;
    var_5 = [];

    for ( var_6 = 0; var_6 < 3; var_6++ )
        var_5[var_6] = ( var_3[var_6] + var_4[var_6] ) / 2;

    var_5 = ( var_5[0], var_5[1], var_5[2] );
    var_5 *= 7000;
    var_2 movegravity( var_5, 2.0 );
    wait 1.2;
    var_7 = spawn( "script_model", var_2.origin );
    var_7 setmodel( "tag_origin" );
    var_7.origin = var_2.origin;
    var_7.angles = var_2.angles;
    wait 0.05;
    var_2 delete();
    var_2 = var_7;
    var_8 = var_2.origin;
    var_9 = var_2.angles;
    playfxontag( level._ID2462, var_2, "tag_origin" );
    wait 1.6;
    var_10 = 12;
    var_11 = 5;
    var_12 = 55;
    var_13 = ( var_12 - var_11 ) / var_10;

    for ( var_6 = 0; var_6 < var_10; var_6++ )
    {
        var_14 = anglestoforward( var_9 + ( var_12 - var_13 * var_6, randomint( 10 ) - 5, 0 ) );
        var_15 = var_8 + var_14 * 10000;
        var_16 = bullettrace( var_8, var_15, 0, undefined );
        var_17 = var_16["position"];
        radiusdamage( var_17 + ( 0, 0, 16 ), 512, 400, 30 );

        if ( var_6 % 3 == 0 )
        {
            thread _ID42237::_ID27077( "airstrike_explosion", var_17 );
            playrumbleonposition( "artillery_rumble", var_17 );
            earthquake( 0.7, 0.75, var_17, 1000 );
        }

        wait(0.75 / var_10);
    }

    wait 1.0;
    var_2 delete();
}

_ID36556( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_ID54545( var_0, var_1 )
{
    if ( !isdefined( level._ID46712 ) )
        level._ID46712 = [];

    level._ID46712[var_0] = var_1;
}

_ID48528( var_0, var_1 )
{
    if ( isdefined( level._ID46712 ) && isdefined( level._ID46712[var_0] ) )
        var_1 = level._ID46712[var_0];

    level._ID1426[var_0] = loadfx( var_1 );
}

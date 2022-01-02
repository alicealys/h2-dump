// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "mig29_controllable", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_mig29" );
    _ID42411::_ID6216( "vehicle_mig29_desert" );
    _ID42411::_ID6216( "vehicle_av8b_harrier_jet" );
    _ID42411::_ID6216( "vehicle_mig29_low" );
    _ID42411::_ID6257();
    level._ID1426["engineeffect"] = loadfx( "vfx/trail/jet_thruster_far" );
    level._ID1426["afterburner"] = loadfx( "vfx/fire/jet_afterburner_ignite" );
    level._ID1426["contrail"] = loadfx( "vfx/trail/jet_contrail" );
    _ID42411::_ID6213( "vfx/explosion/vehicle_generic_ai_explo_lrg_runner", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );

    if ( var_0 != "vehicle_av8b_harrier_jet" )
    {
        var_3 = randomfloatrange( 0, 1 );
        _ID42411::_ID6234( var_2, "wingtip_green", "tag_left_wingtip", "vfx/lights/aircraft_light_wingtip_green", "running", var_3 );
        _ID42411::_ID6234( var_2, "wingtip_red", "tag_right_wingtip", "vfx/lights/aircraft_light_wingtip_red", "running", var_3 );
    }

    _ID42411::_ID6231();
}

_ID19731()
{
    thread _ID21687();
}

_ID32509( var_0 )
{
    var_1 = "rope_test";
    precachemodel( var_1 );
    return var_0;
}
#using_animtree("vehicles");

_ID21687()
{
    self useanimtree( #animtree );
    self setanim( %mig_landing_gear_up );
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
    var_0 = _ID42237::_ID16299( "engineeffect" );

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

_ID27173()
{
    playfxontag( level._ID1426["afterburner"], self, "tag_engine_right" );
    playfxontag( level._ID1426["afterburner"], self, "tag_engine_left" );
}

_ID27195()
{
    playfxontag( level._ID1426["contrail"], self, "tag_right_wingtip" );
    playfxontag( level._ID1426["contrail"], self, "tag_left_wingtip" );
}

_ID27861( var_0 )
{
    var_1 = _ID27862( var_0 );

    if ( var_1 )
        var_2 = 1;
    else
        var_2 = -1;

    var_3 = _ID42237::_ID14540( var_0.origin );
    var_4 = var_3 + anglestoforward( _ID42237::_ID14539( var_0.angles ) ) * ( var_2 * 100000 );
    var_5 = pointonsegmentnearesttopoint( var_3, var_4, level.player.origin );
    var_6 = distance( var_3, var_5 );

    if ( var_6 < 3000 )
        return 1;
    else
        return 0;
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

_ID26746( var_0, var_1 )
{
    _ID26747( "veh_mig29_dist_loop", "veh_mig29_sonic_boom" );
}

_ID26747( var_0, var_1 )
{
    self waittill( "trigger",  var_2  );
    var_2 endon( "death" );
    thread _ID26746();
    var_2 thread _ID42237::_ID27000( var_0 );

    while ( _ID27862( var_2 ) )
        wait 0.05;

    wait 0.5;
    var_2 thread _ID42237::_ID27077( var_1 );
    var_2 waittill( "reached_end_node" );
    var_2 _ID36556( var_0 );
    var_2 delete();
}

_ID26738()
{
    level._ID1426["plane_bomb_explosion1"] = loadfx( "vfx/ambient_explosion_midair_runner_single" );
    level._ID1426["plane_bomb_explosion2"] = loadfx( "vfx/ambient_explosion_midair_runner_single" );
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
        playfx( level._ID1426["plane_bomb_explosion" + var_2], var_1[var_3].origin );
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

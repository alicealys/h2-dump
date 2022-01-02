// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "f15", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_f15" );
    buildf15fx( "f15_engine", "fx/fire/jet_afterburner" );
    buildf15fx( "f15_afterburner", "fx/fire/jet_afterburner_ignite" );
    buildf15fx( "f15_contrail", "vfx/trail/jet_contrail" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand", undefined, undefined, undefined, undefined, undefined, undefined, 0 );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6248( "mig_rumble", 0.1, 0.2, 11300, 0.05, 0.05 );
    _ID42411::_ID6253( "allies" );
    var_3 = randomfloatrange( 0, 1 );
    _ID42411::_ID6234( var_2, "wingtip_green", "TAG_LEFT_WINGTIP", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    _ID42411::_ID6234( var_2, "tail_green", "TAG_LEFT_TAIL", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    _ID42411::_ID6234( var_2, "wingtip_red", "TAG_RIGHT_WINGTIP", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    _ID42411::_ID6234( var_2, "tail_red", "TAG_RIGHT_TAIL", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    _ID42411::_ID6234( var_2, "white_blink", "TAG_LIGHT_BELLY", "fx/misc/aircraft_light_white_blink", "running", var_3 );
    _ID42411::_ID6234( var_2, "landing_light01", "TAG_LIGHT_LANDING01", "fx/misc/light_mig29_landing", "landing", 0.0 );
}

_ID19731()
{
    thread _ID27206();
    thread _ID17735();
    thread _ID27195();
    thread _ID21687();
    _ID42411::_ID40197( "running" );
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
    var_0 = _ID42237::_ID16299( "f15_engine" );

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
    self endon( "death" );
    self endon( "stop_afterburners" );
    _ID42407::_ID13024( "afterburners" );
    _ID42407::_ID13025( "afterburners" );
    var_0 = _ID42237::_ID16299( "f15_afterburner" );

    for (;;)
    {
        _ID42407::_ID13027( "afterburners" );
        playfxontag( var_0, self, "tag_engine_right" );
        playfxontag( var_0, self, "tag_engine_left" );
        _ID42407::_ID13031( "afterburners" );
        stopfxontag( var_0, self, "tag_engine_left" );
        stopfxontag( var_0, self, "tag_engine_right" );
    }
}

_ID17735()
{
    self waittill( "death" );

    if ( isdefined( self._ID37088 ) )
        self._ID37088 delete();

    if ( isdefined( self._ID37089 ) )
        self._ID37089 delete();
}

_ID27195()
{
    self._ID37088 = _ID1864( "tag_engine_right", 1 );
    self._ID37089 = _ID1864( "tag_engine_left", -1 );
    var_0 = _ID42237::_ID16299( "f15_contrail" );
    self endon( "death" );
    _ID42407::_ID13024( "contrails" );
    _ID42407::_ID13025( "contrails" );

    for (;;)
    {
        _ID42407::_ID13027( "contrails" );
        playfxontag( var_0, self._ID37088, "tag_origin" );
        playfxontag( var_0, self._ID37089, "tag_origin" );
        _ID42407::_ID13031( "contrails" );
        stopfxontag( var_0, self._ID37088, "tag_origin" );
        stopfxontag( var_0, self._ID37089, "tag_origin" );
    }
}

_ID1864( var_0, var_1 )
{
    var_2 = _ID42237::_ID35164();
    var_2.origin = self gettagorigin( var_0 );
    var_2.angles = self gettagangles( var_0 );
    var_3 = spawnstruct();
    var_3._ID337 = var_2;
    var_3._ID409 = -156;
    var_3._ID1251 = 0;
    var_3._ID893 = 224 * var_1;
    var_3._ID41911 = 0;
    var_3._ID26711 = 0;
    var_3 _ID42407::_ID38694();
    var_2 linkto( self, var_0 );
    return var_2;
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
        var_8 = var_10 * 1.6;
    }

    return var_7 < var_8;
}

_ID27862( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

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
    var_0 thread _ID42237::_ID27000( "veh_f15_dist_loop" );
    var_1 = 0;

    if ( isdefined( self._ID31388 ) && self._ID31388 == "play_additional_sound" )
        var_1 = 1;

    var_0 thread _ID45032( var_1 );

    while ( _ID27862( var_0 ) )
        wait 0.05;

    wait 0.5;

    if ( isdefined( var_0 ) )
    {
        var_0 thread _ID42237::_ID27077( "veh_f15_sonic_boom" );
        var_0 waittill( "reached_end_node" );
        var_0 _ID36556( "veh_f15_dist_loop" );
        var_0 delete();
    }
}

_ID45032( var_0 )
{
    self endon( "death" );
    self endon( "reached_end_node" );

    while ( !_ID27861( self, 1 ) )
        wait 0.05;

    thread _ID42407::_ID27079( "veh_f15_passby" );

    if ( var_0 )
        thread _ID42407::_ID27079( "veh_f15_passby_layer" );
}

_ID26738()
{
    level._ID1426["plane_bomb_explosion1"] = loadfx( "fx/explosions/bomb_explosion_ac130_small" );
    level._ID1426["plane_bomb_explosion2"] = loadfx( "fx/explosions/bomb_explosion_ac130_small" );
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _ID26738();
    var_1 = _ID42237::_ID15808();
    var_1 = _ID42237::_ID15566( self.origin, var_1, undefined, var_1.size );
    var_2 = 0;
    wait(randomfloatrange( 0.3, 0.8 ));

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_2++;

        if ( var_2 == 3 )
            var_2 = 1;

        var_1[var_3] thread _ID42407::_ID27079( "airstrike_explosion_close" );
        playfx( level._ID1426["plane_bomb_explosion" + var_2], var_1[var_3].origin );
        level.player _meth_80b5( "damage_heavy" );
        earthquake( 0.2, 0.5, level.player.origin, 1000 );
        wait 0.2;
        level.player _meth_80b6( "damage_heavy" );
        wait 0.1;
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
            thread _ID42237::_ID27077( "airstrike_explosion_close", var_17 );
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

setf15fxoverride( var_0, var_1 )
{
    if ( !isdefined( level.f15_fx_override ) )
        level.f15_fx_override = [];

    level.f15_fx_override[var_0] = var_1;
}

buildf15fx( var_0, var_1 )
{
    if ( isdefined( level.f15_fx_override ) && isdefined( level.f15_fx_override[var_0] ) )
        var_1 = level.f15_fx_override[var_0];

    level._ID1426[var_0] = loadfx( var_1 );
}

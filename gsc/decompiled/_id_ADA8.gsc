// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "harrier", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_av8b_harrier_jet" );
    _id_ABFF( "harrier_engine", "fx/fire/jet_afterburner_harrier" );
    _id_ABFF( "harrier_afterburner", "fx/fire/jet_afterburner_ignite" );
    _id_ABFF( "harrier_contrail", "fx/smoke/jet_contrail" );
    maps\_vehicle::build_deathfx( "fx/explosions/aerial_explosion_harrier", "tag_deathfx", "explo_metal_rand", undefined, undefined, undefined, undefined, undefined, undefined, 0 );
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_rumble( "mig_rumble", 0.05, 0.2, 7500, 0.05, 0.05 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_light( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", 0.0 );
    maps\_vehicle::build_light( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", 0.05 );
    maps\_vehicle::build_light( var_2, "white_blink_tail", "TAG_LIGHT_TAIL", "fx/misc/aircraft_light_white_blink", "running", 0.1 );
    maps\_vehicle::build_light( var_2, "white_blink_tail", "TAG_LIGHT_BELLY", "fx/misc/aircraft_light_red_blink", "running", 0.15 );
    maps\_vehicle::build_is_helicopter();
}

init_local()
{
    thread playengineeffects();
    maps\_vehicle::vehicle_lights_on( "running" );
}

set_vehicle_anims( var_0 )
{
    return var_0;
}

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = spawnstruct();

    return var_0;
}

playengineeffects()
{
    self endon( "death" );
    self endon( "stop_engineeffects" );
    maps\_utility::ent_flag_init( "engineeffects" );
    maps\_utility::ent_flag_set( "engineeffects" );
    var_0 = common_scripts\utility::getfx( "harrier_engine" );

    for (;;)
    {
        maps\_utility::ent_flag_wait( "engineeffects" );
        playfxontag( var_0, self, "tag_engine_right" );
        playfxontag( var_0, self, "tag_engine_left" );
        wait 0.05;
        playfxontag( var_0, self, "tag_engine_right2" );
        playfxontag( var_0, self, "tag_engine_left2" );
        maps\_utility::ent_flag_waitopen( "engineeffects" );
        stopfxontag( var_0, self, "tag_engine_left" );
        stopfxontag( var_0, self, "tag_engine_right" );
        wait 0.05;
        stopfxontag( var_0, self, "tag_engine_left2" );
        stopfxontag( var_0, self, "tag_engine_right2" );
    }
}

playerisinfront( var_0 )
{
    var_1 = anglestoforward( common_scripts\utility::flat_angle( var_0.angles ) );
    var_2 = vectornormalize( common_scripts\utility::flat_origin( level.player.origin ) - var_0.origin );
    var_3 = vectordot( var_1, var_2 );

    if ( var_3 > 0 )
        return 1;
    else
        return 0;
}

plane_sound_node()
{
    self waittill( "trigger", var_0 );
    var_0 endon( "death" );
    thread plane_sound_node();
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "veh_mig29_dist_loop" );

    while ( playerisinfront( var_0 ) )
        wait 0.05;

    wait 0.5;
    var_0 thread common_scripts\utility::play_sound_in_space( "veh_mig29_sonic_boom" );
    var_0 waittill( "reached_end_node" );
    var_0 stop_sound( "veh_mig29_dist_loop" );
    var_0 delete();
}

stop_sound( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_id_C2E5( var_0, var_1 )
{
    if ( !isdefined( level._id_C483 ) )
        level._id_C483 = [];

    level._id_C483[var_0] = var_1;
}

_id_ABFF( var_0, var_1 )
{
    if ( isdefined( level._id_C483 ) && isdefined( level._id_C483[var_0] ) )
        var_1 = level._id_C483[var_0];

    level._effect[var_0] = loadfx( var_1 );
}

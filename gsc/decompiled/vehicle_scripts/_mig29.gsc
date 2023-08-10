// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "mig29", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_mig29_desert" );
    maps\_vehicle::build_deathmodel( "vehicle_av8b_harrier_jet" );
    _id_BD90( "mig29_engine", "fx/fire/jet_afterburner_cliffhanger" );
    _id_BD90( "mig29_afterburner", "fx/fire/jet_afterburner_ignite" );
    _id_BD90( "mig29_contrail", "fx/smoke/jet_contrail" );
    _id_BD90( "mig29_contrail_02", "fx/smoke/jet_contrail_02" );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_rumble( "mig_rumble", 0.1, 0.2, 11300, 0.05, 0.05 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_is_airplane();
}

init_local()
{
    maps\_utility::delaythread( 0.05, ::playengineeffects );
    thread playafterburner();
    thread playcontrail();
}

set_vehicle_anims( var_0 )
{
    var_1 = "rope_test";
    precachemodel( var_1 );
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
    if ( maps\_utility::ent_flag_exist( "engineeffects" ) )
        self notify( "stop_engineeffects" );

    self endon( "death" );
    self endon( "stop_engineeffects" );
    maps\_utility::ent_flag_init( "engineeffects" );
    maps\_utility::ent_flag_set( "engineeffects" );
    var_0 = common_scripts\utility::getfx( "mig29_engine" );
    thread _id_B9F4();

    for (;;)
    {
        maps\_utility::ent_flag_wait( "engineeffects" );
        playfxontag( var_0, self, "tag_engine_right" );
        playfxontag( var_0, self, "tag_engine_left" );
        maps\_utility::ent_flag_waitopen( "engineeffects" );
        stopfxontag( var_0, self, "tag_engine_left" );
        stopfxontag( var_0, self, "tag_engine_right" );
    }
}

_id_B9F4()
{
    self endon( "death" );
    self waittill( "stop_engineeffects" );
    var_0 = common_scripts\utility::getfx( "mig29_engine" );
    stopfxontag( var_0, self, "tag_engine_left" );
    stopfxontag( var_0, self, "tag_engine_right" );
    maps\_utility::ent_flag_clear( "engineeffects", 1 );
}

playafterburner()
{
    playfxontag( level._effect["mig29_afterburner"], self, "tag_engine_right" );
    playfxontag( level._effect["mig29_afterburner"], self, "tag_engine_left" );
}

playcontrail()
{
    if ( maps\_utility::ent_flag_exist( "contrails" ) )
        self notify( "stop_contrails" );

    self endon( "death" );
    self endon( "stop_contrails" );
    maps\_utility::ent_flag_init( "contrails" );
    maps\_utility::ent_flag_set( "contrails" );
    thread _id_CEE0();

    for (;;)
    {
        maps\_utility::ent_flag_wait( "contrails" );
        playfxontag( common_scripts\utility::getfx( "mig29_contrail" ), self, "tag_right_wingtip" );
        playfxontag( common_scripts\utility::getfx( "mig29_contrail_02" ), self, "tag_left_wingtip" );
        maps\_utility::ent_flag_waitopen( "contrails" );
        stopfxontag( common_scripts\utility::getfx( "mig29_contrail" ), self, "tag_right_wingtip" );
        stopfxontag( common_scripts\utility::getfx( "mig29_contrail_02" ), self, "tag_left_wingtip" );
    }
}

_id_CEE0()
{
    self endon( "death" );
    self waittill( "stop_contrails" );
    stopfxontag( common_scripts\utility::getfx( "mig29_contrail" ), self, "tag_right_wingtip" );
    stopfxontag( common_scripts\utility::getfx( "mig29_contrail_02" ), self, "tag_left_wingtip" );
    maps\_utility::ent_flag_clear( "contrails", 1 );
}

playerisclose( var_0, var_1 )
{
    var_2 = playerisinfront( var_0 );

    if ( var_2 )
        var_3 = 1;
    else
        var_3 = -1;

    var_4 = common_scripts\utility::flat_origin( var_0.origin );
    var_5 = var_4 + anglestoforward( common_scripts\utility::flat_angle( var_0.angles ) ) * ( var_3 * 100000 );
    var_6 = pointonsegmentnearesttopoint( var_4, var_5, level.player.origin );
    var_7 = distance( var_4, var_6 );
    var_8 = 3000;

    if ( isdefined( var_1 ) && var_1 )
    {
        var_9 = var_0 vehicle_getspeed();
        var_10 = var_9 * 63360 / 3600;
        var_8 = var_10 * 1.1;
    }

    if ( isdefined( level._id_D542 ) )
        var_8 = level._id_D542;

    return var_7 < var_8;
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
    var_1 = 0;
    var_2 = undefined;

    if ( isdefined( self.script_parameters ) )
    {
        var_3 = strtok( self.script_parameters, ":, " );

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

    var_0 thread _id_AFE8( var_1, var_2 );

    while ( playerisinfront( var_0 ) )
        wait 0.05;

    wait 0.5;
    var_0 thread common_scripts\utility::play_sound_in_space( "veh_mig29_sonic_boom" );
    var_0 waittill( "reached_end_node" );
    var_0 stop_sound( "veh_mig29_dist_loop" );
    var_0 delete();
}

_id_AFE8( var_0, var_1 )
{
    self endon( "death" );
    self endon( "reached_end_node" );

    while ( !playerisclose( self, 1 ) )
        wait 0.05;

    thread maps\_utility::play_sound_on_tag( "veh_mig29_passby", undefined, var_1 );

    if ( var_0 )
        thread maps\_utility::play_sound_on_tag( "veh_mig29_passby_layer", undefined, var_1 );
}

plane_bomb_node()
{
    _id_BD90( "plane_bomb_explosion1", "fx/explosions/airlift_explosion_large" );
    _id_BD90( "plane_bomb_explosion2", "fx/explosions/tanker_explosion" );
    self waittill( "trigger", var_0 );
    var_0 endon( "death" );
    thread plane_bomb_node();
    var_1 = getentarray( self.script_linkto, "script_linkname" );
    var_1 = common_scripts\utility::get_array_of_closest( self.origin, var_1, undefined, var_1.size );
    var_2 = 0;
    wait( randomfloatrange( 0.3, 0.8 ) );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_2++;

        if ( var_2 == 3 )
            var_2 = 1;

        var_1[var_3] thread maps\_utility::play_sound_on_entity( "airstrike_explosion" );
        var_4 = "plane_bomb_explosion" + var_2;
        var_5 = level._effect[var_4];

        if ( isdefined( level._id_BB26 ) && isdefined( level._id_BB26[var_4] ) )
            var_5 = level._id_BB26[var_4];

        playfx( var_5, var_1[var_3].origin );
        wait( randomfloatrange( 0.3, 1.2 ) );
    }
}

plane_bomb_cluster()
{
    self waittill( "trigger", var_0 );
    var_0 endon( "death" );
    var_1 = var_0;
    var_1 thread plane_bomb_cluster();
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
    playfxontag( level.airstrikefx, var_2, "tag_origin" );
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
            thread common_scripts\utility::play_sound_in_space( "airstrike_explosion", var_17 );
            playrumbleonposition( "artillery_rumble", var_17 );
            earthquake( 0.7, 0.75, var_17, 1000 );
        }

        wait( 0.75 / var_10 );
    }

    wait 1.0;
    var_2 delete();
}

stop_sound( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_id_D511( var_0, var_1 )
{
    if ( !isdefined( level._id_B678 ) )
        level._id_B678 = [];

    level._id_B678[var_0] = var_1;
}

_id_BD90( var_0, var_1 )
{
    if ( isdefined( level._id_B678 ) && isdefined( level._id_B678[var_0] ) )
        var_1 = level._id_B678[var_0];

    level._effect[var_0] = loadfx( var_1 );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "f15", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_f15" );
    buildf15fx( "f15_engine", "fx/fire/jet_afterburner" );
    buildf15fx( "f15_afterburner", "fx/fire/jet_afterburner_ignite" );
    buildf15fx( "f15_contrail", "vfx/trail/jet_contrail" );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand", undefined, undefined, undefined, undefined, undefined, undefined, 0 );
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_rumble( "mig_rumble", 0.1, 0.2, 11300, 0.05, 0.05 );
    maps\_vehicle::build_team( "allies" );
    var_3 = randomfloatrange( 0, 1 );
    maps\_vehicle::build_light( var_2, "wingtip_green", "TAG_LEFT_WINGTIP", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    maps\_vehicle::build_light( var_2, "tail_green", "TAG_LEFT_TAIL", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    maps\_vehicle::build_light( var_2, "wingtip_red", "TAG_RIGHT_WINGTIP", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    maps\_vehicle::build_light( var_2, "tail_red", "TAG_RIGHT_TAIL", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    maps\_vehicle::build_light( var_2, "white_blink", "TAG_LIGHT_BELLY", "fx/misc/aircraft_light_white_blink", "running", var_3 );
    maps\_vehicle::build_light( var_2, "landing_light01", "TAG_LIGHT_LANDING01", "fx/misc/light_mig29_landing", "landing", 0.0 );
}

init_local()
{
    thread playengineeffects();
    thread handle_death();
    thread playcontrail();
    thread landing_gear_up();
    maps\_vehicle::vehicle_lights_on( "running" );
}

set_vehicle_anims( var_0 )
{
    var_1 = "rope_test";
    precachemodel( var_1 );
    return var_0;
}

#using_animtree("vehicles");

landing_gear_up()
{
    self useanimtree( #animtree );
    self setanim( %mig_landing_gear_up );
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
    var_0 = common_scripts\utility::getfx( "f15_engine" );

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

playafterburner()
{
    self endon( "death" );
    self endon( "stop_afterburners" );
    maps\_utility::ent_flag_init( "afterburners" );
    maps\_utility::ent_flag_set( "afterburners" );
    var_0 = common_scripts\utility::getfx( "f15_afterburner" );

    for (;;)
    {
        maps\_utility::ent_flag_wait( "afterburners" );
        playfxontag( var_0, self, "tag_engine_right" );
        playfxontag( var_0, self, "tag_engine_left" );
        maps\_utility::ent_flag_waitopen( "afterburners" );
        stopfxontag( var_0, self, "tag_engine_left" );
        stopfxontag( var_0, self, "tag_engine_right" );
    }
}

handle_death()
{
    self waittill( "death" );

    if ( isdefined( self.tag1 ) )
        self.tag1 delete();

    if ( isdefined( self.tag2 ) )
        self.tag2 delete();
}

playcontrail()
{
    self.tag1 = add_contrail( "tag_engine_right", 1 );
    self.tag2 = add_contrail( "tag_engine_left", -1 );
    var_0 = common_scripts\utility::getfx( "f15_contrail" );
    self endon( "death" );
    maps\_utility::ent_flag_init( "contrails" );
    maps\_utility::ent_flag_set( "contrails" );

    for (;;)
    {
        maps\_utility::ent_flag_wait( "contrails" );
        playfxontag( var_0, self.tag1, "tag_origin" );
        playfxontag( var_0, self.tag2, "tag_origin" );
        maps\_utility::ent_flag_waitopen( "contrails" );
        stopfxontag( var_0, self.tag1, "tag_origin" );
        stopfxontag( var_0, self.tag2, "tag_origin" );
    }
}

add_contrail( var_0, var_1 )
{
    var_2 = common_scripts\utility::spawn_tag_origin();
    var_2.origin = self gettagorigin( var_0 );
    var_2.angles = self gettagangles( var_0 );
    var_3 = spawnstruct();
    var_3.entity = var_2;
    var_3.forward = -156;
    var_3.up = 0;
    var_3.right = 224 * var_1;
    var_3.yaw = 0;
    var_3.pitch = 0;
    var_3 maps\_utility::translate_local();
    var_2 linkto( self, var_0 );
    return var_2;
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
        var_8 = var_10 * 1.6;
    }

    return var_7 < var_8;
}

playerisinfront( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

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
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "veh_f15_dist_loop" );
    var_1 = 0;

    if ( isdefined( self.script_parameters ) && self.script_parameters == "play_additional_sound" )
        var_1 = 1;

    var_0 thread _id_AFE8( var_1 );

    while ( playerisinfront( var_0 ) )
        wait 0.05;

    wait 0.5;

    if ( isdefined( var_0 ) )
    {
        var_0 thread common_scripts\utility::play_sound_in_space( "veh_f15_sonic_boom" );
        var_0 waittill( "reached_end_node" );
        var_0 stop_sound( "veh_f15_dist_loop" );
        var_0 delete();
    }
}

_id_AFE8( var_0 )
{
    self endon( "death" );
    self endon( "reached_end_node" );

    while ( !playerisclose( self, 1 ) )
        wait 0.05;

    thread maps\_utility::play_sound_on_entity( "veh_f15_passby" );

    if ( var_0 )
        thread maps\_utility::play_sound_on_entity( "veh_f15_passby_layer" );
}

plane_bomb_node()
{
    level._effect["plane_bomb_explosion1"] = loadfx( "fx/explosions/bomb_explosion_ac130_small" );
    level._effect["plane_bomb_explosion2"] = loadfx( "fx/explosions/bomb_explosion_ac130_small" );
    self waittill( "trigger", var_0 );
    var_0 endon( "death" );
    thread plane_bomb_node();
    var_1 = common_scripts\utility::get_linked_ents();
    var_1 = common_scripts\utility::get_array_of_closest( self.origin, var_1, undefined, var_1.size );
    var_2 = 0;
    wait( randomfloatrange( 0.3, 0.8 ) );

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_2++;

        if ( var_2 == 3 )
            var_2 = 1;

        var_1[var_3] thread maps\_utility::play_sound_on_entity( "airstrike_explosion_close" );
        playfx( level._effect["plane_bomb_explosion" + var_2], var_1[var_3].origin );
        level.player _meth_80B5( "damage_heavy" );
        earthquake( 0.2, 0.5, level.player.origin, 1000 );
        wait 0.2;
        level.player _meth_80B6( "damage_heavy" );
        wait 0.1;
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
            thread common_scripts\utility::play_sound_in_space( "airstrike_explosion_close", var_17 );
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

    level._effect[var_0] = loadfx( var_1 );
}

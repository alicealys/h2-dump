// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

snd_init_btr80()
{
    soundscripts\_audio_vehicle_manager::avm_register_callback( "about_to_stop", ::btr80_input_callback_about_to_stop );
    soundscripts\_snd::snd_message( "snd_register_vehicle", "btr80", ::snd_btr80_constructor );
}

snd_start_btr80()
{
    if ( isdefined( self.snd_instance ) )
    {
        wait 1;
        snd_stop_btr80();
    }

    thread snd_monitor_about_to_stop();
    var_0 = spawnstruct();
    var_0.preset_name = "btr80";
    soundscripts\_snd::snd_message( "snd_start_vehicle", var_0 );
    thread snd_handle_treads();
}

snd_monitor_about_to_stop()
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    self waittill( "about_to_stop", var_0 );

    if ( var_0 > 1.0 )
    {
        wait( var_0 - 1.0 );

        if ( !isdefined( self ) )
            return;
    }

    self.about_to_stop = 1;
}

snd_stop_btr80()
{
    if ( isdefined( self.snd_instance ) )
    {
        soundscripts\_snd::snd_message( "snd_stop_vehicle" );
        self notify( "snd_stop_vehicle" );
    }
}

snd_btr80_constructor()
{
    soundscripts\_audio_vehicle_manager::avm_begin_preset_def( "btr80" );
    soundscripts\_audio_vehicle_manager::avm_begin_loop_data();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "btr80_idle" );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed", 0.3, 0.1 );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "btr80_idle_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "btr80_idle_vel2pch" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "btr80_engine_sustain" );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed", 0.1, 0.65 );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "btr80_engine_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "btr80_engine_vel2pch" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_end_loop_data();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_data( 0.5 );
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "btr80_rampup", "btr80_rampup_duck", 0.4, 2 );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "btr80_rampdown", "btr80_rampdown_duck", 0.4, 2 );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_data();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_data();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_idle_initial", ::btr80_condition_callback_to_idle_initial );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "btr80_idle", "btr80_engine_sustain" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_idle_from_rampdown", ::btr80_condition_callback_to_idle_from_rampdown, [ "about_to_stop", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "btr80_idle", "btr80_engine_sustain" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_rampup", ::btr80_condition_callback_to_rampup, [ "about_to_stop", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "btr80_idle", "btr80_engine_sustain" ] );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "btr80_rampup" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_rampdown", ::btr80_condition_callback_to_rampdown, [ "about_to_stop", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "btr80_idle", "btr80_engine_sustain" ] );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "btr80_rampdown" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_end_behavior_data();
    soundscripts\_audio_vehicle_manager::avm_begin_state_data();
    soundscripts\_audio_vehicle_manager::avm_begin_state_group( "main_oneshots", "state_idle", "to_state_idle_initial", 50, 0.05 );
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_idle" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampup", "to_state_rampup" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_rampup" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampdown", "to_state_rampdown" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_rampdown" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampup", "to_state_rampup" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_end_state_group();
    soundscripts\_audio_vehicle_manager::avm_end_state_data();
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_idle_vel2vol", [ [ 0.0, 1.0 ], [ 6.0, 0.9 ], [ 10.0, 0.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_idle_vel2pch", [ [ 0.0, 1.0 ], [ 10.0, 1.2 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_engine_vel2vol", [ [ 0.0, 0.0 ], [ 4.0, 0.1 ], [ 10.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_engine_vel2pch", [ [ 0.0, 0.8 ], [ 6.0, 1.0 ], [ 15.0, 1.1 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_rampdown_vel2vol", [ [ 0.0, 1.0 ], [ 1.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_rampup_vel2vol", [ [ 0.0, 1.0 ], [ 1.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_rampup_vel2pit", [ [ 0.0, 1.0 ], [ 40.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_rampup_duck", [ [ 0.0, 1.0 ], [ 1.0, 0.0 ], [ 1.6, 0.0 ], [ 2.7, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "btr80_rampdown_duck", [ [ 0.0, 1.0 ], [ 0.1, 0.0 ], [ 1.2, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_end_preset_def();
}

btr80_input_callback_about_to_stop()
{
    var_0 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();
    return isdefined( var_0.about_to_stop );
}

btr80_condition_callback_to_idle_initial( var_0, var_1 )
{
    return 1;
}

btr80_condition_callback_to_idle_from_rampdown( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["speed_mph"];
    var_4 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( var_3 < 1.0 )
        var_2 = 1;

    return var_2;
}

btr80_condition_callback_to_rampup( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["about_to_stop"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( isdefined( var_1.prev_speed ) && var_4 > 1.0 && var_4 - var_1.prev_speed > 0.15 && var_3 <= 0.5 )
        var_2 = 1;

    var_1.prev_speed = var_4;
    return var_2;
}

btr80_condition_callback_to_rampdown( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["about_to_stop"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( isdefined( var_1.prev_speed ) && var_4 > 1.0 && var_4 - var_1.prev_speed < -0.15 || var_3 > 0.5 )
        var_2 = 1;

    var_1.prev_speed = var_4;
    return var_2;
}

snd_handle_treads()
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    var_0 = [ "TAG_WHEEL_FRONT_LEFT", "TAG_WHEEL_FRONT_RIGHT" ];
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2 = [ "TAG_WHEEL_BACK_LEFT", "TAG_WHEEL_BACK_RIGHT" ];
    var_3 = spawn( "script_origin", self.origin );
    link_ent_between_wheels( var_1, var_0 );
    link_ent_between_wheels( var_3, var_2 );
    var_1 playloopsound( "btr80_technical_treads" );
    var_3 playloopsound( "btr80_technical_treads" );
    thread monitor_treads_volume_and_pitch( var_1, var_3 );
    thread stop_treads_on_death( var_1, var_3 );
}

monitor_treads_volume_and_pitch( var_0, var_1 )
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    var_2 = 0;

    for (;;)
    {
        var_2 = self vehicle_getspeed();
        var_3 = clamp( var_2 / 10, 0, 1 );
        var_0 setvolume( var_3 );
        var_1 setvolume( var_3 );
        wait 0.15;
    }
}

link_ent_between_wheels( var_0, var_1 )
{
    var_2 = var_1[0];
    var_3 = ( 0, 0, 0 );

    foreach ( var_5 in var_1 )
        var_3 += self gettagorigin( var_5 );

    var_3 /= var_1.size;
    var_3 = maps\_utility::worldtolocalcoords( var_3 );
    var_7 = self gettagorigin( var_2 );
    var_7 = maps\_utility::worldtolocalcoords( var_7 );
    var_7 = var_3 - var_7;
    var_0 linkto( self, var_2, var_7, ( 0, 0, 0 ) );
}

stop_treads_on_death( var_0, var_1 )
{
    common_scripts\utility::waittill_either( "death", "snd_stop_vehicle" );
    var_0 stopsounds();
    var_1 stopsounds();
    wait 0.05;
    var_0 delete();
    var_1 delete();
}

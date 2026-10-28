// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init()
{
    soundscripts\_snd::snd_message( "snd_register_vehicle", "snowmobile_player", ::_id_CD73 );
}

_id_C44C()
{
    if ( isdefined( self.snd_instance ) )
    {
        wait 1.0;
        _id_B3A8( 1.0 );
    }

    var_0 = spawnstruct();
    var_0.preset_name = "snowmobile_player";
    self vehicle_turnengineoff();
    soundscripts\_snd::snd_message( "snd_start_vehicle", var_0 );
    self waittill( "vehicle_mount" );
    soundscripts\_snd_common::snd_enable_soundcontextoverride( "interior_vehicle" );
}

_id_B3A8( var_0 )
{
    if ( isdefined( self.snd_instance ) )
    {
        soundscripts\_snd::snd_message( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
        soundscripts\_snd_common::snd_disable_soundcontextoverride( "interior_vehicle" );
    }
}

_id_CD73()
{
    soundscripts\_audio_vehicle_manager::avm_begin_preset_def( "snowmobile_player" );
    soundscripts\_audio_vehicle_manager::avm_begin_loop_data();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "snowmobile_player_idle", 2.0 );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed_mph" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "snowmobile_player_idle_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "snowmobile_player_idle_3d", 5.0 );
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "snowmobile_player_sustain", 1.0 );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed_mph" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "snowmobile_player_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "snowmobile_player_vel2pit" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "steering" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "snowmobile_player_steer2pit" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "snowmobile_player_sustain_high_speed", 1.0 );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed_mph" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "snowmobile_player_velhs2vol" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "snowmobile_player_velhs2pit" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "steering" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "snowmobile_player_steer2pit" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "snowmobile_player_wind_loop" );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed_mph" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "snowmobile_player_wind_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_end_loop_data();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_data( 0.5 );
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_start" );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_rampup", "snowmobile_player_rampup_duck", 1, 2 );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed_mph" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "snowmobile_player_rampup_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "snowmobile_player_rampup_vel2pit" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_reverse", "snowmobile_player_rampup_duck", 1, 2 );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed_mph" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "snowmobile_player_rampup_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "snowmobile_player_rampup_vel2pit" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_reverse_rampdown", "snowmobile_player_rampup_duck", 1, 2 );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_rampup_high_speed", undefined, 0.6, 2 );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed_mph" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "snowmobile_player_rampup_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "snowmobile_player_rampup_vel2pit" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_rampdown", "snowmobile_player_rampdown_duck", 0.6, 2 );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_jumping", "snowmobile_player_jumping_duck", 1, 2 );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "snowmobile_player_suspension", "snowmobile_player_suspension_duck", 1, 2 );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_data();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_data();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_off_initial", ::_id_D568 );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "snowmobile_player_idle_3d" );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_off", ::_id_D568 );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "NONE" );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_idle_from_off", ::_id_BD44, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_idle_from_rampdown", ::_id_C424, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_rampup", ::_id_AE3A, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_rampup" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_reverse", ::snowmobile_player_condition_callback_to_reverse, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_reverse" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_rampup_high_speed", ::_id_BDC2, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_rampup_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_rampdown", ::_id_A8B9, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "snowmobile_player_idle" );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_rampdown" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_rampdown_from_reverse", ::snowmobile_player_condition_callback_to_rampdown_from_reverse, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "snowmobile_player_idle" );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_reverse_rampdown" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_rampdown_from_jump", ::_id_CB90, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "snowmobile_player_idle" );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_rampdown" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_jumping", ::_id_CD27, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_jumping" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_fullspeed", ::_id_B171, [ "throttle", "speed_mph" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( [ "snowmobile_player_suspension" ] );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_end_behavior_data();
    soundscripts\_audio_vehicle_manager::avm_begin_state_data();
    soundscripts\_audio_vehicle_manager::avm_begin_state_group( "engine_oneshots", "state_off", "to_state_off_initial", 50, 0.1 );
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_off" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_idle", "to_state_idle_from_off" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_idle" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_off", "to_state_off" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampup", "to_state_rampup" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_reverse", "to_state_reverse" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_rampup" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_off", "to_state_off" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampdown", "to_state_rampdown" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_jumping", "to_state_jumping" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_reverse" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampup", "to_state_rampup" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampdown", "to_state_rampdown_from_reverse" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_rampup_high_speed" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_off", "to_state_off" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampdown", "to_state_rampdown" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_jumping", "to_state_jumping" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_rampdown" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_off", "to_state_off" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_idle", "to_state_idle_from_rampdown" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampup", "to_state_rampup" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampup_high_speed", "to_state_rampup_high_speed" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_jumping", "to_state_jumping" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_jumping" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampdown", "to_state_rampdown_from_jump" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_fullspeed", "to_state_fullspeed" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_fullspeed" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_rampdown", "to_state_rampdown" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_jumping", "to_state_jumping" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_end_state_group();
    soundscripts\_audio_vehicle_manager::avm_end_state_data();
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_idle_vel2vol", [ [ 0.0, 1.0 ], [ 10.0, 0.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_vel2vol", [ [ 0.0, 0.0 ], [ 10.0, 0.6 ], [ 25.0, 1.0 ], [ 65.0, 1.0 ], [ 165.0, 0.5 ], [ 190.0, 0.1 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_vel2pit", [ [ 0.0, 0.85 ], [ 40.0, 1.05 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_velhs2vol", [ [ 0.0, 0.0 ], [ 60.0, 0.0 ], [ 165.0, 0.5 ], [ 190.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_velhs2pit", [ [ 0.0, 0.85 ], [ 60.0, 0.85 ], [ 100.0, 1.05 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_wind_vel2vol", [ [ 0.0, 0.0 ], [ 65.0, 0.0 ], [ 155.0, 0.5 ], [ 190.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_steer2pit", [ [ -1.0, 0.9 ], [ 0.0, 1.0 ], [ 1.0, 0.9 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_rampup_vel2vol", [ [ 0.0, 1.0 ], [ 1.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_rampup_vel2pit", [ [ 0.0, 1.0 ], [ 40.0, 1.05 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_rampup_duck", [ [ 0.0, 1.0 ], [ 1.0, 0.0 ], [ 2.05, 0.0 ], [ 2.8, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_rampdown_duck", [ [ 0.0, 1.0 ], [ 0.5, 0.0 ], [ 1.8, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_jumping_duck", [ [ 0.0, 1.0 ], [ 0.5, 0.2 ], [ 3.0, 0.2 ], [ 4.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "snowmobile_player_suspension_duck", [ [ 0.0, 1.0 ], [ 0.1, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_end_preset_def();
}

_id_D568( var_0, var_1 )
{
    return 0;
}

_id_BD44( var_0, var_1 )
{
    var_2 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( !isdefined( var_2._id_C99F ) )
        var_2._id_C99F = 0;

    return var_2._id_C99F;
}

_id_C424( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( !isdefined( var_1.prev_throttle ) || !isdefined( var_1.prev_speed ) )
        var_2 = 1;
    else if ( var_3 <= 0 && var_4 <= 1.0 && var_1.prev_speed > 1.0 )
        var_2 = 1;
    else if ( var_4 > -1.0 && var_4 < 1.0 && var_1.prev_speed > 1.0 || var_1.prev_speed < -1.0 )
        var_2 = 1;

    if ( var_2 )
    {
        var_1.prev_throttle = var_3;
        var_1.prev_speed = var_4;
    }

    return var_2;
}

_id_AE3A( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( var_4 < 25 )
    {
        if ( isdefined( var_1.prev_throttle ) && var_1.prev_throttle <= var_3 && var_3 > 0 )
            var_2 = 1;
    }

    var_1.prev_throttle = var_3;
    var_1.prev_speed = var_4;
    return var_2;
}

snowmobile_player_condition_callback_to_reverse( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( var_4 < 25 )
    {
        if ( var_4 > 0 && var_5.veh_brake > 0 )
            var_2 = 1;
    }

    var_1.prev_throttle = var_3;
    var_1.prev_speed = var_4;
    return var_2;
}

_id_BDC2( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( isdefined( var_1.prev_throttle ) && var_1.prev_throttle <= var_3 && var_3 > 0 && var_4 >= 25 )
        var_2 = 1;

    var_1.prev_throttle = var_3;
    var_1.prev_speed = var_4;
    return var_2;
}

_id_A8B9( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( isdefined( var_1.prev_throttle ) && var_1.prev_throttle > 0 && var_3 <= 0 && var_4 > 1.0 )
        var_2 = 1;

    var_1.prev_throttle = var_3;
    var_1.prev_speed = var_4;
    return var_2;
}

snowmobile_player_condition_callback_to_rampdown_from_reverse( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( var_4 > 0 && var_5.veh_brake <= 0 )
        var_2 = 1;

    var_1.prev_throttle = var_3;
    var_1.prev_speed = var_4;
    return var_2;
}

_id_CB90( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( isdefined( var_1.prev_throttle ) && var_3 <= 0 && var_4 > 1.0 )
        var_2 = 1;

    var_1.prev_throttle = var_3;
    var_1.prev_speed = var_4;
    return var_2;
}

_id_CD27( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( !isdefined( var_1._id_A847 ) )
        var_1._id_A847 = 0;

    if ( is_jumping( var_5 ) )
    {
        var_6 = vectornormalize( anglestoup( var_5.angles ) ) * -1;
        var_7 = bullettrace( var_5.origin, var_5.origin + var_6 * 500, 0, self );

        if ( var_7["fraction"] >= 0.04 )
        {
            var_2 = 1;
            var_1.prev_throttle = var_3;
            var_1.prev_speed = var_4;
            var_1._id_A847 = gettime();
        }
    }

    return var_2;
}

_id_B171( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = soundscripts\_audio_vehicle_manager::avmx_get_vehicle_entity();

    if ( is_jumping( var_5 ) )
        return var_2;

    if ( isdefined( var_1.prev_throttle ) && var_1.prev_throttle <= var_3 && var_3 > 0 )
        var_2 = 1;

    var_1.prev_throttle = var_3;
    var_1.prev_speed = var_4;
    return var_2;
}

is_jumping( var_0 )
{
    return isdefined( var_0.event ) && isdefined( var_0.event["jump"]["driver"] ) && var_0.event["jump"]["driver"] == 1;
}

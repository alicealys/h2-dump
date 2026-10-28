// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_D0D1()
{
    soundscripts\_snd::snd_message( "snd_register_vehicle", "hind", ::_id_D27D );
}

_id_C32A()
{
    if ( isdefined( self.snd_instance ) )
    {
        wait 1.0;
        _id_D541( 1.0 );
    }

    var_0 = spawnstruct();
    var_0.preset_name = "hind";
    soundscripts\_snd::snd_message( "snd_start_vehicle", var_0 );
}

_id_D541( var_0 )
{
    if ( isdefined( self.snd_instance ) )
    {
        soundscripts\_snd::snd_message( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
    }
}

_id_D27D()
{
    soundscripts\_audio_vehicle_manager::avm_begin_preset_def( "hind" );
    soundscripts\_audio_vehicle_manager::avm_begin_loop_data();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "hind_engine_low" );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "hind_engine_far_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "doppler", 1.0, 1.0 );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "hind_doppler2pch" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_begin_loop_def( "hind_idle_low" );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "hind_engine_close_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "doppler", 1.0, 1.0 );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "pitch", "hind_doppler2pch" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_loop_def();
    soundscripts\_audio_vehicle_manager::avm_end_loop_data();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_data( 0.5 );
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "h1r_hind_start_rev", "hind_start_rev_duck" );
    soundscripts\_audio_vehicle_manager::avm_begin_param_map( "speed" );
    soundscripts\_audio_vehicle_manager::avm_add_param_map_env( "volume", "hind_start_rev_vel2vol" );
    soundscripts\_audio_vehicle_manager::avm_end_param_map();
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_begin_oneshot_def( "h1r_hind_pass_by", "hind_pass_by_duck_envelope" );
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_def();
    soundscripts\_audio_vehicle_manager::avm_end_oneshot_data();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_data();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_hover", ::_id_C6F6, [ "speed", "distance2d" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "ALL" );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_fly", ::_id_B32B, [ "speed", "distance2d" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "ALL" );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_fly_from_hover", ::_id_B32B, [ "speed", "distance2d" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "ALL" );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( "h1r_hind_start_rev" );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_distant", ::_id_B937, [ "distance2d" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "hind_engine_low" );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_begin_behavior_def( "to_state_flyby", ::_id_D13C, [ "speed", "distance2d" ] );
    soundscripts\_audio_vehicle_manager::avm_add_loops( "ALL" );
    soundscripts\_audio_vehicle_manager::avm_add_oneshots( "h1r_hind_pass_by" );
    soundscripts\_audio_vehicle_manager::avm_end_behavior_def();
    soundscripts\_audio_vehicle_manager::avm_end_behavior_data();
    soundscripts\_audio_vehicle_manager::avm_begin_state_data( 0.25, 0.5 );
    soundscripts\_audio_vehicle_manager::avm_begin_state_group( "engine_oneshots", "state_fly", "to_state_fly", 50, 1.0 );
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_hover" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_fly", "to_state_fly_from_hover" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_flyby", "to_state_flyby" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_distant", "to_state_distant" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_distant" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_hover", "to_state_hover" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_fly", "to_state_fly" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_flyby", "to_state_flyby" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_fly" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_hover", "to_state_hover" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_flyby", "to_state_flyby" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_distant", "to_state_distant" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_begin_state_def( "state_flyby", 7.0 );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_hover", "to_state_hover" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_fly", "to_state_fly" );
    soundscripts\_audio_vehicle_manager::avm_add_state_transition( "state_distant", "to_state_distant" );
    soundscripts\_audio_vehicle_manager::avm_end_state_def();
    soundscripts\_audio_vehicle_manager::avm_end_state_group();
    soundscripts\_audio_vehicle_manager::avm_end_state_data();
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "hind_engine_far_vel2vol", [ [ 0, 1.0 ], [ 10, 1.0 ], [ 150.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "hind_engine_close_vel2vol", [ [ 0, 0.5 ], [ 20, 0.8 ], [ 150.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "hind_engine_far_vel2pch", [ [ 0, 0.8 ], [ 10, 1.0 ], [ 20, 1.1 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "hind_start_rev_duck", [ [ 0.0, 1.0 ], [ 0.25, 1.0 ], [ 0.3, 0.7 ], [ 0.7, 1.0 ], [ 1.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "hind_start_rev_vel2vol", [ [ 0.0, 0.0 ], [ 3.0, 0.3 ], [ 5.0, 0.7 ], [ 8.0, 0.8 ], [ 150.0, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "hind_pass_by_duck_envelope", [ [ 0.0, 1.0 ], [ 0.15, 1.0 ], [ 0.3, 0.5 ], [ 0.5, 0.55 ], [ 0.6, 1.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_add_envelope( "hind_doppler2pch", [ [ 0.0, 0.0 ], [ 2.0, 2.0 ] ] );
    soundscripts\_audio_vehicle_manager::avm_end_preset_def();
}

_id_C6F6( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = soundscripts\_audio_vehicle_manager::dist2yards( var_3 );
    return var_2 < 1.1 && var_4 < 3000;
}

_id_B32B( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = soundscripts\_audio_vehicle_manager::dist2yards( var_3 );
    return var_2 >= 1.1 && var_4 < 3000;
}

_id_D13C( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["distance2d"];
    var_4 = var_0["speed"];

    if ( isdefined( level._id_CDE8 ) && level._id_CDE8 )
        return 0;

    if ( !isdefined( var_1.flyby ) )
    {
        var_1.flyby = spawnstruct();
        var_1.flyby.prev_dist = var_3;
    }
    else
    {
        var_5 = var_3 - var_1.flyby.prev_dist;
        var_6 = var_4 * 63360 / 60 / 60;
        var_7 = var_6 * 1.8;
        var_2 = var_5 < 0 && var_3 <= var_7 && var_4 >= 20.1;
        var_1.flyby.prev_dist = var_3;
    }

    return var_2;
}

_id_B937( var_0, var_1 )
{
    var_2 = var_0["distance2d"];
    var_3 = soundscripts\_audio_vehicle_manager::dist2yards( var_2 );
    return var_3 >= 3000;
}

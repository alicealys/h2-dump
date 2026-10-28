// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    config_system();
    init_snd_flags();
    init_globals();
    launch_threads();
    launch_loops();
    thread launch_line_emitters();
    create_level_envelop_arrays();
    precache_presets();
    register_snd_messages();
}

config_system()
{
    soundscripts\_audio::set_stringtable_mapname( "shg" );
    soundscripts\_snd_filters::snd_set_occlusion( "med_occlusion" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_airport_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_AC62();
}

launch_loops()
{

}

launch_line_emitters()
{
    wait 0.1;
}

create_level_envelop_arrays()
{

}

precache_presets()
{

}

register_snd_messages()
{
    soundscripts\_snd::snd_message( "start_airport_nofail_checkpoint", ::_id_CAB1 );
    soundscripts\_snd::snd_register_message( "start_intro_checkpoint", ::_id_CCA0 );
    soundscripts\_snd::snd_register_message( "start_stairs_checkpoint", ::_id_B28D );
    soundscripts\_snd::snd_register_message( "start_massacre_checkpoint", ::_id_A84C );
    soundscripts\_snd::snd_register_message( "start_gate_checkpoint", ::_id_C04C );
    soundscripts\_snd::snd_register_message( "start_basement_checkpoint", ::_id_D43C );
    soundscripts\_snd::snd_register_message( "start_tarmac_checkpoint", ::_id_C40E );
    soundscripts\_snd::snd_register_message( "start_escape_checkpoint", ::_id_AB18 );
    soundscripts\_snd::snd_register_message( "start_grigs_checkpoint", ::_id_B21D );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
    soundscripts\_snd::snd_register_message( "start_fade_to_white_sequence", ::start_fade_to_white_sequence );
    soundscripts\_snd::snd_register_message( "start_escape_kill_player_sequence", ::start_escape_kill_player_sequence );
    soundscripts\_snd::snd_register_message( "aud_tarmac_heli2_passby_p1", ::_id_CE21 );
    soundscripts\_snd::snd_register_message( "aud_tarmac_heli2_passby_p2", ::_id_A9CC );
    soundscripts\_snd::snd_register_message( "aud_tarmac_heli2_passby_p3", ::_id_A84D );
    soundscripts\_snd::snd_register_message( "aud_tarmac_heli2_passby_p4", ::_id_C784 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_CAB1( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "elevator" );
}

_id_CCA0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "elevator" );
}

_id_B28D( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "terminal" );
}

_id_A84C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "terminal" );
}

_id_C04C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "terminal" );
}

_id_D43C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "terminal" );
}

_id_C40E( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "basement" );
}

_id_AB18( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B21D( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
}

start_fade_to_white_sequence()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_to_white_mix" );
}

start_escape_kill_player_sequence()
{
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_player_get_shot_death_loop", undefined, 0.5, 2.0 );
    wait 8;
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_player_get_shot_death_loop" );
}

turn_off_vehicle_engine()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_AC62()
{
    level endon( "basement_moveout2" );
    var_0 = _id_B19A();
    var_1 = 0;
    common_scripts\utility::flag_wait( "elevator_up_done" );
    wait 2.0;
    _id_B4D8( "airport_anc_nowboarding" );
    wait 5.0;

    for (;;)
    {
        wait( randomintrange( 20, 40 ) );
        var_2 = var_0[var_1];
        var_1++;
        var_1 %= var_0.size;
        _id_B4D8( var_2 );
    }
}

_id_B4D8( var_0 )
{
    var_1 = getentarray( "airport_pa_system", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 thread maps\_utility::play_sound_on_entity( "scn_pa_chimes" );
        var_3 playsound( var_0 );
    }
}

_id_B19A()
{
    var_0 = [];
    var_0[var_0.size] = "airport_anc_cherubinis";
    var_0[var_0.size] = "airport_anc_giftshop";
    var_0[var_0.size] = "airport_anc_infocounter";
    var_0[var_0.size] = "airport_anc_meetparty";
    var_0[var_0.size] = "airport_anc_parking";
    var_0[var_0.size] = "airport_anc_security";
    var_0 = common_scripts\utility::array_randomize( var_0 );
    return var_0;
}

_id_CE21( var_0 )
{
    var_0 turn_off_vehicle_engine();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_tarmac_heli2_p1" );
}

_id_A9CC( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_tarmac_heli2_p2" );
}

_id_A84D( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_tarmac_heli2_p3" );
}

_id_C784( var_0 )
{
    var_0 maps\_utility::play_sound_on_entity( "scn_tarmac_heli2_p4" );
}

start_tarmac_swat_van( var_0 )
{
    turn_off_vehicle_engine();
    thread maps\_utility::play_sound_on_tag_endon_death( var_0 );
}

start_emergency_convoy_arrival_sfx()
{
    var_0 = getent( "trig_emergency_convoy", "targetname" );
    var_0 waittill( "trigger" );
    var_1 = common_scripts\utility::getstruct( "scn_airport_emergency_arriving", "targetname" );
    thread common_scripts\utility::play_sound_in_space( "scn_airport_emergency_arriving", var_1.origin );
    var_2 = getent( "trig_emergency_convoy_group_6", "targetname" );
    var_2 waittill( "trigger" );
    var_1 = common_scripts\utility::getstruct( "scn_emergency_convoy_door_arriving", "targetname" );
    thread common_scripts\utility::play_sound_in_space( "scn_emergency_convoy_door_arriving", var_1.origin );
}

start_scripted_escape_van()
{
    turn_off_vehicle_engine();
    thread common_scripts\utility::play_loop_sound_on_entity( "scn_ambulance_idle_loop", undefined, 0.3, 0.8 );
    common_scripts\utility::flag_wait( "ambulance_ready_to_leave" );
    common_scripts\utility::stop_loop_sound_on_entity( "scn_ambulance_idle_loop" );
}

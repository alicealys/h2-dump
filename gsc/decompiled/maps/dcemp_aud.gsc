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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_dcemp_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_CCFF();
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
    soundscripts\_snd::snd_register_message( "start_intro_checkpoint", ::_id_CCA0 );
    soundscripts\_snd::snd_register_message( "start_iss_checkpoint", ::_id_C701 );
    soundscripts\_snd::snd_register_message( "start_emp_checkpoint", ::_id_B9D1 );
    soundscripts\_snd::snd_register_message( "start_street_checkpoint", ::_id_B06A );
    soundscripts\_snd::snd_register_message( "start_corner_checkpoint", ::_id_BB98 );
    soundscripts\_snd::snd_register_message( "start_meetup_checkpoint", ::_id_A98B );
    soundscripts\_snd::snd_register_message( "start_lobby_checkpoint", ::_id_C91F );
    soundscripts\_snd::snd_register_message( "start_office_checkpoint", ::_id_B9BC );
    soundscripts\_snd::snd_register_message( "start_parking_checkpoint", ::_id_BC02 );
    soundscripts\_snd::snd_register_message( "start_plaza_checkpoint", ::_id_AAF6 );
    soundscripts\_snd::snd_register_message( "start_tunnels_checkpoint", ::_id_C7D2 );
    soundscripts\_snd::snd_register_message( "start_iss_ambience", ::_id_D059 );
    soundscripts\_snd::snd_register_message( "stop_iss_ambience", ::_id_B661 );
    soundscripts\_snd::snd_register_message( "start_exterior_ambience", ::_id_BEF3 );
    soundscripts\_snd::snd_register_message( "stop_heli_crash_black_screen", ::_id_C99C );
    soundscripts\_snd::snd_register_message( "start_building_shellshock_filter", ::start_building_shellshock_filter );
    soundscripts\_snd::snd_register_message( "start_iss_fadeout_mix", ::start_iss_fadeout_mix );
    soundscripts\_snd::snd_register_message( "start_jet_crash_mix", ::start_jet_crash_mix );
    soundscripts\_snd::snd_register_message( "start_emp_mix", ::start_emp_mix );
    soundscripts\_snd::snd_register_message( "start_space_transition_in_mix", ::start_space_transition_in_mix );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_CCA0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_helicopter" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emt_rain_mix" );
}

_id_C701( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_space" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emt_rain_mix" );
}

_id_B9D1( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_heli_emp" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emt_rain_mix" );
}

_id_B06A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emt_rain_mix" );
}

_id_BB98( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone_open" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emt_rain_mix" );
}

_id_A98B( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emt_rain_mix" );
}

_id_C91F( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B9BC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_hall" );
}

_id_BC02( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
}

_id_AAF6( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C7D2( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D059()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_space" );
}

_id_B661()
{
    soundscripts\_audio_zone_manager::azm_stop_zone( "exterior_space" );
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_heli_emp" );
}

_id_BEF3()
{
    soundscripts\_audio_zone_manager::azm_stop_zone( "interior_heli_emp" );
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C99C()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_crash_black_screen_mix" );
    level.player playsound( "scn_heli_intro_plr" );
}

start_building_shellshock_filter()
{
    thread start_shellshock_filter();
    soundscripts\_audio_mix_manager::mm_clear_submix( "emp_sequence_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emp_building_shellshock_mix" );
    level.player playsound( "scn_dcemp_emp_building_shellshock" );
    wait 2.5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "emp_building_shellshock_mix" );
}

start_iss_fadeout_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "iss_fadeout_mix" );
    wait 4;
    soundscripts\_audio_mix_manager::mm_clear_submix( "iss_fadeout_mix" );
}

start_jet_crash_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "jet_crash_offscreen" );
    wait 8.5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "jet_crash_offscreen" );
}

start_emp_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "emp_sequence_mix" );
}

start_space_transition_in_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "transition_space_in_mix" );
    wait 19;
    soundscripts\_audio_mix_manager::mm_clear_submix( "transition_space_in_mix" );
}

_id_C803()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_CCFF()
{
    wait 1;
    common_scripts\utility::array_thread( getentarray( "amb_emitters_window", "targetname" ), common_scripts\utility::play_loop_sound_on_entity, "amb_emt_windows", undefined, undefined, 5 );
    common_scripts\utility::array_thread( getentarray( "amb_emitters_door", "targetname" ), common_scripts\utility::play_loop_sound_on_entity, "amb_emt_doors", undefined, undefined, 5 );
    common_scripts\utility::array_thread( getentarray( "amb_emitters_wall", "targetname" ), common_scripts\utility::play_loop_sound_on_entity, "amb_emt_walls", undefined, undefined, 5 );
    common_scripts\utility::flag_wait( "start_rain_ambience" );
    common_scripts\utility::array_thread( getentarray( "amb_emitters_window", "targetname" ), ::amb_emitters_rain_transition, "amb_emt_windows_rain", "amb_emt_windows" );
    common_scripts\utility::array_thread( getentarray( "amb_emitters_door", "targetname" ), ::amb_emitters_rain_transition, "amb_emt_doors_rain", "amb_emt_doors" );
    common_scripts\utility::array_thread( getentarray( "amb_emitters_wall", "targetname" ), ::amb_emitters_rain_transition, "amb_emt_walls_rain", "amb_emt_walls" );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "ambient_dcemp_heavy_rain", undefined, 10, undefined );
    soundscripts\_audio_mix_manager::mm_clear_submix( "emt_rain_mix" );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior", "none", 10 );
}

amb_emitters_rain_transition( var_0, var_1 )
{
    thread common_scripts\utility::play_loop_sound_on_entity( var_0, undefined, 12, undefined );
    common_scripts\utility::stop_loop_sound_on_entity( var_1 );
}

intro_heli_sequence_snd()
{
    level.player thread maps\_utility::play_sound_on_entity( "scn_heli_intro" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_crash_black_screen_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_crash_shellshock_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "emt_rain_mix" );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "dcemp_plr_shellshock_filter", 0.5 );
    common_scripts\utility::flag_wait( "notetrack_player_lowerhands" );
    wait 0.5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_crash_shellshock_mix" );
    soundscripts\_snd_filters::snd_fade_out_filter( 2 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
}

start_shellshock_filter()
{
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "dcemp_plr_shellshock_filter", 0.5 );
    wait 2.5;
    soundscripts\_snd_filters::snd_fade_out_filter( 2 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
}

crashsite_heli_rappel()
{
    var_0 = getent( "heli_crash_rappel_01", "script_noteworthy" );
    var_1 = getent( "heli_crash_rappel_02", "script_noteworthy" );
    var_0 maps\_utility::add_spawn_function( ::crashsite_heli_rappel_snd, "scn_dcemp_heli1_arrival", "scn_dcemp_heli1_idle", "scn_dcemp_heli1_leaving" );
    var_1 maps\_utility::add_spawn_function( ::crashsite_heli_rappel_snd, "scn_dcemp_heli2_arrival", "scn_dcemp_heli2_idle", "scn_dcemp_heli2_leaving", "heli_rappel_mix" );
}

crashsite_heli_rappel_snd( var_0, var_1, var_2, var_3 )
{
    thread _id_C803();
    self playsound( var_0 );

    if ( isdefined( var_3 ) )
        soundscripts\_audio_mix_manager::mm_add_submix( var_3 );

    self waittill( "near_goal" );
    thread common_scripts\utility::play_loop_sound_on_entity( var_1, undefined, 1, 1 );
    self waittill( "unloaded" );
    common_scripts\utility::stop_loop_sound_on_entity( var_1 );
    self playsound( var_2 );

    if ( isdefined( var_3 ) )
        soundscripts\_audio_mix_manager::mm_clear_submix( var_3 );
}

street_crash_heli_building()
{
    var_0 = getent( "street_crash_heli_building", "targetname" );
    var_0 playsound( "scn_dcemp_building_heli_crash_anticipation" );
}

iss_emp_exp_interrupt()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "iss_emp_vo_interrupt_mix" );
    level.player playsound( "scn_iss_emp_explosion" );
    level.player playsound( "scn_dcemp_is_emp_comm_interrupt" );
    wait 8;
    soundscripts\_audio_mix_manager::mm_clear_submix( "iss_emp_vo_interrupt_mix" );
}

runner_meetup_dialog()
{
    common_scripts\utility::flag_wait( "foley_street_dialog_end" );
    wait 0.3;
    level._id_B624 maps\_utility::dialogue_queue( "dcemp_ar3_whiskeyhotel" );
}

parking_foley_dialog()
{
    maps\_utility::dialogue_queue( "dcemp_fly_moveintopos" );
    wait 0.2;
    common_scripts\utility::flag_set( "parking_dialog_resume" );
}

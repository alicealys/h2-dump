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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_ending_global" );
    soundscripts\_audio_zone_manager::azm_start_zone( "showroom" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_A82E( "af_caves" );
    thread _id_A82E( "airport" );
    thread _id_A82E( "arcadia" );
    thread _id_A82E( "cliffhanger" );
    thread _id_A82E( "dc_burning" );
    thread _id_A82E( "estate" );
    thread _id_A82E( "favela" );
    thread _id_A82E( "hostage" );
    thread _id_A82E( "oilrig" );
    thread _id_A82E( "trainer" );
    thread aud_play_vehicles_scene_ambience( "f15" );
    thread aud_play_vehicles_scene_ambience( "lbs" );
    thread aud_play_vehicles_scene_ambience( "m1a1" );
    thread aud_play_vehicles_scene_ambience( "pavelow" );
    thread aud_play_vehicles_scene_ambience( "stryker" );
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
    soundscripts\_snd::snd_register_message( "aud_start_battle_mix", ::_id_B9DF );
    soundscripts\_snd::snd_register_message( "aud_stop_battle_mix", ::_id_ADBD );
    soundscripts\_snd::snd_register_message( "start_credits_mix", ::start_credits_mix );
    soundscripts\_snd::snd_register_message( "stop_credits_mix", ::stop_credits_mix );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_ACA6( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "showroom" );
}

_id_B9DF()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "battle_mix" );
    maps\_utility::musicplaywrapper( "music_museum_firefight" );
}

_id_ADBD()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "battle_mix" );
    musicstop( 0.5 );
}

start_credits_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_credits" );
    soundscripts\_snd_common::snd_enable_soundcontextoverride( "credits" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_level_fadeout" );
}

stop_credits_mix()
{
    soundscripts\_snd_common::snd_disable_soundcontextoverride( "credits" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_credits" );
}

_id_A82E( var_0 )
{
    common_scripts\utility::flag_wait( var_0 + "_go" );
    var_1 = getent( "amb_" + var_0, "targetname" );
    var_1 thread common_scripts\utility::play_loop_sound_on_entity( "scn_museum_" + var_0 + "_amb", ( 0, 0, 0 ), 0.5, 0.5 );
    common_scripts\utility::flag_wait( var_0 + "_done" );
    var_1 common_scripts\utility::stop_loop_sound_on_entity( "scn_museum_" + var_0 + "_amb" );
}

aud_play_vehicles_scene_ambience( var_0 )
{
    common_scripts\utility::flag_wait( var_0 + "_go" );
    var_1 = getent( "amb_" + var_0, "targetname" );
    var_1 playsound( "scn_museum_" + var_0 + "_amb" );
}

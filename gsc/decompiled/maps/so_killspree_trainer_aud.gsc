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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_trainer_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{

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
    soundscripts\_snd::snd_register_message( "start_so_trainer_checkpoint", ::_id_C23E );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_C23E( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
}

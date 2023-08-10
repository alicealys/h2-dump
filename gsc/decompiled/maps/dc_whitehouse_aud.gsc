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
    soundscripts\_audio_mix_manager::mm_add_submix( "dc_whitehouse_global_mix" );
}

init_snd_flags()
{
    common_scripts\utility::flag_init( "picture_frame_is_over_pa" );
}

init_globals()
{

}

launch_threads()
{
    thread _id_C21E();
    thread _id_C7AA();
    thread aud_outside_tunnel_chatter();
    thread _id_BA82();
    thread intro_distant_thunder();
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
    soundscripts\_snd::snd_register_message( "start_tunnels_checkpoint", ::_id_C7D2 );
    soundscripts\_snd::snd_register_message( "start_oval_office_checkpoint", ::_id_C3FC );
    soundscripts\_snd::snd_register_message( "start_flare_checkpoint", ::_id_B7C9 );
    soundscripts\_snd::snd_register_message( "start_endrun_mix", ::start_endrun_mix );
    soundscripts\_snd::snd_register_message( "start_fade_out_mix", ::start_fade_out_mix );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_C7D2( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_tunnel" );
    common_scripts\utility::flag_set( "picture_frame_is_over_pa" );
    soundscripts\_audio_mix_manager::mm_add_submix( "vo_behind_frame_mix" );
}

_id_C3FC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
    common_scripts\utility::flag_set( "picture_frame_is_over_pa" );
    soundscripts\_audio_mix_manager::mm_add_submix( "vo_behind_frame_mix" );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior", "ambient_dcwhitehouse_dry", 0.05 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "interior_tunnel_open", "ambient_dcwhitehouse_dry", 0.05 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_covered", "ambient_dcwhitehouse_dry", 0.05 );
    maps\_utility::music_loop( "mus_dc_whitehouse_attack_int", 328, 1 );
    wait 0.1;
    var_1 = getentarray( "field_rain_emitter", "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        var_3 stopsounds();
        wait 0.1;
        var_3 delete();
    }

    common_scripts\utility::flag_wait( "whitehouse_2min" );
    maps\_utility::music_play( "mus_dc_whitehouse_endrun", 5 );
    soundscripts\_audio_mix_manager::mm_add_submix( "endrun_mix" );
}

_id_B7C9( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
    soundscripts\_audio_mix_manager::mm_add_submix( "endrun_mix" );
}

start_endrun_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "endrun_mix" );
}

start_fade_out_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "dc_white_fade_to_black_end_mix" );
}

_id_C21E()
{
    wait 1;
    var_0 = getentarray( "field_rain_emitter", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 playloopsound( var_2._id_A95C );

    common_scripts\utility::flag_wait( "whitehouse_spotlight" );
    wait 4;

    foreach ( var_2 in var_0 )
        var_2 setvolume( 0, 5 );

    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior", "ambient_dcwhitehouse_dry", 11 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "interior_tunnel_open", "ambient_dcwhitehouse_dry", 11 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_covered", "ambient_dcwhitehouse_dry", 10 );
    wait 2;

    foreach ( var_2 in var_0 )
    {
        var_2 stopsounds();
        wait 0.1;
        var_2 delete();
    }
}

_id_C7AA()
{
    var_0 = spawn( "script_origin", ( -8072, 6168, -443 ) );
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "amb_emt_firefight_tunnel", undefined, 1, 3 );

    for (;;)
    {
        var_1 = getaiarray( "axis" );

        if ( common_scripts\utility::flag( "whitehouse_entrance_clear" ) && var_1.size < 3 )
        {
            var_0 common_scripts\utility::stop_loop_sound_on_entity( "amb_emt_firefight_tunnel" );
            soundscripts\_audio_mix_manager::mm_clear_submix( "exterior_battle_mix" );
            break;
        }

        wait 0.5;
    }
}

aud_outside_tunnel_chatter()
{
    var_0 = getent( "outside_chatter", "targetname" );

    for (;;)
    {
        var_0 thread maps\_utility::play_sound_on_entity( "scn_dcwhitehouse_outside_tunnel_chatter" );
        wait( randomfloatrange( 3.0, 8.0 ) );
    }
}

_id_BA82()
{
    common_scripts\utility::flag_wait( "whitehouse_marshall_dialogue" );
    soundscripts\_audio_mix_manager::mm_add_submix( "exterior_battle_mix" );
}

aud_mission_failed_jet_flyby()
{
    var_0 = getent( "jet_mission_failed_start", "targetname" );
    var_1 = getent( "jet_mission_failed_stop", "targetname" );
    var_0 thread maps\_utility::play_sound_on_entity( "scn_dcwhitehouse_failed_flyby" );
    var_0 moveto( var_1.origin, 4.0 );
}

intro_distant_thunder()
{
    wait 0.1;
    var_0 = getent( "intro_thunder", "targetname" );
    var_0 waittill( "trigger", var_1 );
    level.player thread maps\_utility::play_sound_on_entity( "elm_thunder_distant_intro" );
}

start_speaker_reveal_mix( var_0 )
{
    common_scripts\utility::flag_clear( "picture_frame_is_over_pa" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "vo_behind_frame_mix" );
    level.pa_behind_pictureframe setvolume( 0, 0.7 );
    wait 0.8;
    level.pa_behind_pictureframe delete();
}

flare_breach_debris_snd()
{
    var_0 = getent( "flare_breach_debris", "targetname" );
    var_0 playsound( "scn_flare_breach_debris" );
}

play_speaker_vo( var_0 )
{
    if ( common_scripts\utility::flag( "picture_frame_is_over_pa" ) )
    {
        if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "oval_room_speaker" )
        {
            if ( !isdefined( level.pa_behind_pictureframe ) )
                level.pa_behind_pictureframe = spawn( "script_origin", self.origin );

            level.pa_behind_pictureframe playsound( var_0 + "_bf" );
        }
    }

    self playsound( var_0, "sounddone" );
}

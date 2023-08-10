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
    thread aud_intro_start();
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
    soundscripts\_snd::snd_register_message( "start_timed_ads_checkpoint", ::_id_B9F0 );
    soundscripts\_snd::snd_register_message( "start_bullet_penetration_checkpoint", ::_id_C4CA );
    soundscripts\_snd::snd_register_message( "start_frag_checkpoint", ::_id_AD16 );
    soundscripts\_snd::snd_register_message( "start_pit_checkpoint", ::_id_CE70 );
    soundscripts\_snd::snd_register_message( "start_course_checkpoint", ::_id_C1C5 );
    soundscripts\_snd::snd_register_message( "start_end_checkpoint", ::_id_B028 );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_info_popup", ::aud_start_mix_info_popup );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_info_popup", ::aud_stop_mix_info_popup );
    soundscripts\_snd::snd_register_message( "aud_start_mix_practice_range", ::aud_start_mix_practice_range );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_practice_range", ::aud_stop_mix_practice_range );
    soundscripts\_snd::snd_register_message( "aud_start_mix_evacuation", ::aud_start_mix_evacuation );
    soundscripts\_snd::snd_register_message( "scn_trainer_pavelow_h2_intro_heli", ::scn_trainer_pavelow_h2_intro_heli );
    soundscripts\_snd::snd_register_message( "scn_trainer_pavelow_h2_intro_heli_land", ::scn_trainer_pavelow_h2_intro_heli_land );
    soundscripts\_snd::snd_register_message( "scn_trainer_tower_latvee_01", ::scn_trainer_tower_latvee_01 );
    soundscripts\_snd::snd_register_message( "scn_trainer_tower_latvee_02", ::scn_trainer_tower_latvee_02 );
    soundscripts\_snd::snd_register_message( "scn_trainer_tower_stryker", ::scn_trainer_tower_stryker );
    soundscripts\_snd::snd_register_message( "scn_trainer_tower_m1a1", ::scn_trainer_tower_m1a1 );
    soundscripts\_snd::snd_register_message( "scn_trainer_tower_f15_01", ::scn_trainer_tower_f15_01 );
    soundscripts\_snd::snd_register_message( "scn_trainer_tower_f15_02", ::scn_trainer_tower_f15_02 );
    soundscripts\_snd::snd_register_message( "aud_start_scn_trainer_ending_laatpv_01", ::aud_start_scn_trainer_ending_laatpv_01 );
    soundscripts\_snd::snd_register_message( "aud_start_scn_trainer_ending_laatpv_02", ::aud_start_scn_trainer_ending_laatpv_02 );
    soundscripts\_snd::snd_register_message( "aud_start_scn_trainer_ending_bridge", ::aud_start_scn_trainer_ending_bridge );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_B9F0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C4CA( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AD16( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CE70( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C1C5( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B028( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

aud_intro_start()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_intro_amb_fade_in" );
    maps\_utility::delaythread( 1, soundscripts\_audio_mix_manager::mm_clear_submix, "mix_intro_amb_fade_in" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_intro_level" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    wait 0.8;
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_intro_level" );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
}

aud_start_mix_info_popup()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_info_popup" );
}

aud_stop_mix_info_popup()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_info_popup" );
}

aud_start_mix_practice_range()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_practice_range" );
}

aud_stop_mix_practice_range()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_practice_range" );
}

aud_handle_pit_scene_mix()
{
    for (;;)
    {
        common_scripts\utility::flag_wait( "player_has_started_course" );
        soundscripts\_audio_mix_manager::mm_add_submix( "mix_running_pit" );
        common_scripts\utility::flag_waitopen( "player_has_started_course" );
        common_scripts\utility::flag_wait( "player_course_end" );
        soundscripts\_audio_mix_manager::mm_clear_submix( "mix_running_pit" );
    }
}

aud_start_mix_evacuation()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_evacuation" );
}

scn_trainer_pavelow_h2_intro_heli( var_0 )
{
    var_0 _id_AFD0();
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "scn_trainer_pavelow_h2_intro_heli", undefined, 0.3, 1.2 );
}

scn_trainer_pavelow_h2_intro_heli_land( var_0 )
{
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "scn_trainer_pavelow_h2_intro_heli" );
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_pavelow_h2_intro_heli_land" );
    var_0 common_scripts\utility::flag_wait( "h2_heli_landed" );
    var_0 waittill( "goal" );
    var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_trainer_pavelow_h2_intro_heli_idle", undefined, 1, 1, 0.6, 0.3 );
}

aud_handle_veh_group( var_0, var_1, var_2 )
{
    foreach ( var_4 in var_0 )
    {
        if ( isdefined( var_4.script_noteworthy ) && var_4.script_noteworthy != "h2_intro_heli" )
        {
            var_4 _id_AFD0();

            if ( var_2 )
            {
                var_4 thread common_scripts\utility::play_loop_sound_on_entity( "scn_trainer_" + var_1 + "_" + var_4.script_noteworthy );
                continue;
            }

            var_4 thread maps\_utility::play_sound_on_entity( "scn_trainer_" + var_1 + "_" + var_4.script_noteworthy );
        }
    }
}

aud_handle_ending_latvees( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2.script_noteworthy ) )
        {
            var_3 = spawn( "script_origin", var_2.origin );
            var_3 linkto( var_2 );
            var_3 thread common_scripts\utility::play_loop_sound_on_entity( "scn_trainer_latvee_idle" );
            var_3 setvolume( 0, 0 );
            var_2 maps\_utility::play_sound_on_entity( "scn_trainer_latvee_" + var_2.script_noteworthy );
            var_3 setvolume( 1, 0.5 );
        }
    }
}

_id_AFD0()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

scn_trainer_tower_latvee_01( var_0 )
{
    common_scripts\utility::flag_wait( "tower_02" );
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_tower_latvee_01" );
}

scn_trainer_tower_latvee_02( var_0 )
{
    common_scripts\utility::flag_wait( "tower_02" );
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_tower_latvee_02" );
}

scn_trainer_tower_m1a1( var_0 )
{
    common_scripts\utility::flag_wait( "tower_02" );
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_tower_m1a1" );
}

scn_trainer_tower_stryker( var_0 )
{
    common_scripts\utility::flag_wait( "tower_02" );
    self vehicle_turnengineoff();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_tower_stryker" );
}

scn_trainer_tower_f15_01( var_0 )
{
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_tower_f15_01" );
}

scn_trainer_tower_f15_02( var_0 )
{
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_tower_f15_02" );
}

aud_start_scn_trainer_ending_laatpv_01( var_0 )
{
    var_0 _id_AFD0();
    var_1 = spawn( "script_origin", var_0.origin );
    var_1 linkto( var_0 );
    var_1 thread common_scripts\utility::play_loop_sound_on_entity( "scn_trainer_latvee_idle" );
    var_1 setvolume( 0, 0 );
    var_0 maps\_utility::play_sound_on_entity( "scn_trainer_ending_laatpv_01" );
    var_1 setvolume( 1, 0.5 );
}

aud_start_scn_trainer_ending_laatpv_02( var_0 )
{
    var_0 _id_AFD0();
    var_1 = spawn( "script_origin", var_0.origin );
    var_1 linkto( var_0 );
    var_1 thread common_scripts\utility::play_loop_sound_on_entity( "scn_trainer_latvee_idle" );
    var_1 setvolume( 0, 0 );
    var_0 maps\_utility::play_sound_on_entity( "scn_trainer_ending_laatpv_02" );
    var_1 setvolume( 1, 0.5 );
}

aud_start_scn_trainer_ending_bridge( var_0 )
{
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_trainer_ending_bridge" );
}

_id_A865( var_0, var_1 )
{
    var_2 = level.player geteye();
    var_3 = 4;
    var_4 = 182358016;
    var_5 = sortbydistance( var_1, var_2 );
    var_5[0] thread play_sound_on_pa( var_0, 1 );

    for ( var_6 = 1; var_6 < var_3; var_6++ )
    {
        var_7 = distancesquared( var_5[var_6].origin, var_2 ) / var_4;

        if ( var_6 != var_3 - 1 )
        {
            var_5[var_6] thread play_sound_on_pa_with_delay( var_0, var_7 );
            continue;
        }

        wait( var_7 );
        var_5[var_6] play_sound_on_pa( var_0 );
    }
}

play_sound_on_pa( var_0, var_1 )
{
    var_2 = "";

    if ( !isdefined( var_1 ) || !var_1 )
        var_2 = "_noSub";

    if ( isdefined( level.scr_radio[var_0] ) )
        maps\_utility::play_sound_on_tag( level.scr_radio[var_0] + var_2 );
    else
        maps\_utility::play_sound_on_tag( var_0 + var_2 );

    wait 0.3;
}

play_sound_on_pa_with_delay( var_0, var_1 )
{
    wait( var_1 );

    if ( isdefined( level.scr_radio[var_0] ) )
        self playsound( level.scr_radio[var_0] + "_noSub" );
    else
        self playsound( var_0 + "_noSub" );
}

course_end_timer_buzzer()
{
    var_0 = getent( "training_course_timer", "targetname" );
    var_0 maps\_utility::play_sound_on_entity( "scn_timer_buzzer" );
}

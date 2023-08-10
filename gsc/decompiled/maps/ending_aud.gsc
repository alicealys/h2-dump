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
    soundscripts\_snd::snd_register_message( "start_default_checkpoint", ::_id_ACA6 );
    soundscripts\_snd::snd_register_message( "start_wakeup_after_crash_checkpoint", ::_id_D173 );
    soundscripts\_snd::snd_register_message( "start_turnbuckle_checkpoint", ::_id_B054 );
    soundscripts\_snd::snd_register_message( "start_shepherd_gloats_checkpoint", ::_id_B0CA );
    soundscripts\_snd::snd_register_message( "start_gun_drop_checkpoint", ::_id_ACAD );
    soundscripts\_snd::snd_register_message( "start_gun_crawl_checkpoint", ::_id_BCD5 );
    soundscripts\_snd::snd_register_message( "start_gun_kick_checkpoint", ::_id_BC3C );
    soundscripts\_snd::snd_register_message( "start_wounded_show_checkpoint", ::_id_AC90 );
    soundscripts\_snd::snd_register_message( "start_knife_pullout_checkpoint", ::_id_AA76 );
    soundscripts\_snd::snd_register_message( "start_knife_kill_checkpoint", ::_id_B460 );
    soundscripts\_snd::snd_register_message( "start_price_wakeup_checkpoint", ::_id_C812 );
    soundscripts\_snd::snd_register_message( "start_walkoff_checkpoint", ::_id_D2E0 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_nofail_checkpoint", ::_id_AA65 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_begin_checkpoint", ::_id_CEC6 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_lake_checkpoint", ::_id_B69C );
    soundscripts\_snd::snd_register_message( "start_boatdrive_lake_mid_checkpoint", ::_id_C693 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_rapids_checkpoint", ::_id_A961 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_river_below_rapids_checkpoint", ::_id_D09B );
    soundscripts\_snd::snd_register_message( "start_boatdrive_end_checkpoint", ::_id_BF81 );
    soundscripts\_snd::snd_register_message( "start_debug_boatdrive_checkpoint", ::_id_D45A );
    soundscripts\_snd::snd_register_message( "start_fade_in_from_crash", ::_id_AAE3 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_plr_knife_stab", ::_id_D589 );
    soundscripts\_snd::snd_register_message( "aud_start_gun_monologue", ::_id_BBA6 );
    soundscripts\_snd::snd_register_message( "aud_shepherd_gloat_shot_tinnitus", ::_id_CF28 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_plr_curb_stomp", ::_id_C079 );
    soundscripts\_snd::snd_register_message( "start_post_curb_stomp_black_screen", ::_id_A9BA );
    soundscripts\_snd::snd_register_message( "stop_post_curb_stomp_black_screen", ::_id_CF66 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_plr_curb_stomp", ::_id_C1B9 );
    soundscripts\_snd::snd_register_message( "aud_start_player_knife_pullout", ::_id_A9A1 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_price_vs_shepherd", ::_id_C2AA );
    soundscripts\_snd::snd_register_message( "aud_start_mix_sheperd_slomo_death", ::_id_CD16 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_shepherd_is_dead", ::_id_CE7E );
    soundscripts\_snd::snd_register_message( "aud_start_mix_fadeout_post_sheperd_death", ::_id_BF99 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_price_wakeup", ::_id_AF0C );
    soundscripts\_snd::snd_register_message( "aud_start_mix_walking_to_heli", ::_id_B5FD );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_walking_to_heli", ::_id_ABEE );
    soundscripts\_snd::snd_register_message( "aud_start_mix_level_fadeout", ::_id_B7FC );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_level_fadeout", ::_id_BE9B );
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
    soundscripts\_audio_zone_manager::azm_start_zone( "tunnel" );
}

_id_D173( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B054( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B0CA( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_ACAD( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BCD5( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BC3C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AC90( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AA76( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B460( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C812( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D2E0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AA65( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CEC6( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B69C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C693( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_A961( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D09B( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BF81( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D45A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AAE3()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_from_crash_mix" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_ending_intro_effect_front" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_ending_intro_vo_front" );
    wait 2;
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_from_crash_mix" );
}

_id_D589()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_plr_knife_stab" );
}

_id_BBA6()
{
    soundscripts\_audio_reverb::rvb_start_preset( "monologue_reverb", 0.8 );
}

_id_C079()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_plr_curb_stomp" );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "flashbang_tinnitus_loop", undefined, 0.5, 4.0 );
    _id_CD12();
}

_id_C1B9()
{
    level.player common_scripts\utility::stop_loop_sound_on_entity( "flashbang_tinnitus_loop" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_plr_curb_stomp" );
}

_id_A9A1()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_plr_knife_pullout" );
}

_id_C2AA()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_price_vs_shepherd" );
}

_id_CD16()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_price_vs_shepherd" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_plr_knife_pullout" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_sheperd_slomo_death" );
}

_id_CE7E()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_sheperd_slomo_death" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_shepherd_is_dead" );
}

_id_BF99()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_fadeout_post_sheperd_death" );
}

_id_AF0C( var_0 )
{
    if ( isdefined( var_0 ) )
        wait( var_0 );

    soundscripts\_audio_reverb::rvb_start_preset( "exterior", 0.8 );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_shepherd_is_dead" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_fadeout_post_sheperd_death" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_price_wakeup" );
}

_id_B5FD()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_price_wakeup" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_walking_to_heli" );
}

_id_ABEE()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_walking_to_heli" );
}

_id_B7FC()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_level_fadeout" );
}

_id_BE9B()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_level_fadeout" );
}

_id_A9BA()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_post_plr_curb_stomp_bs" );
}

_id_CF66()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_post_plr_curb_stomp_bs" );
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

_id_AA82()
{
    level.player playsound( "amb_afchase_heavy_sand_start" );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior", "amb_ending_heavy_sandstorm_front", 4.0 );
}

_id_CD12()
{
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior", "amb_ending_sandstorm_front", 4.0 );
}

_id_D06E()
{
    soundtime( "voices_critical", 0 );
    level waittill( "stop_drunk_walk" );
    soundtime( "voices_critical", 1 );
}

_id_AB1B()
{
    thread common_scripts\utility::play_loop_sound_on_entity( "flashbang_tinnitus_loop", undefined, 0.5, 3.0 );
    wait 3.0;
    common_scripts\utility::stop_loop_sound_on_entity( "flashbang_tinnitus_loop" );
}

_id_CF28()
{
    wait 0.2;
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "shepherd_shot_tinnitus", undefined, 0, 2.0 );
    wait 3.0;
    level.player common_scripts\utility::stop_loop_sound_on_entity( "shepherd_shot_tinnitus" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_plr_knife_stab" );
}

_id_B977()
{
    var_0 = spawn( "script_origin", self getorigin() );
    var_0 linkto( self );
    var_1 = spawn( "script_origin", self getorigin() );
    var_1 linkto( self );
    var_0 maps\_utility::play_sound_on_entity( "scn_ending_littlebird_landing" );
    var_1 playloopsound( "scn_ending_littlebird_idle" );
}

_id_CB84()
{
    level.player endon( "death" );
    level endon( "stop_knifepull_sfx" );
    level._id_AB07 = 0;
    level._id_CA44 = 0;
    var_0 = level.player usebuttonpressed();
    var_1 = 0;

    for (;;)
    {
        var_2 = level.player usebuttonpressed();
        var_3 = 0;

        if ( var_2 )
        {
            if ( !var_0 && !level._id_CA44 )
                thread _id_A9CA();

            var_1 = gettime();
        }

        if ( gettime() > var_1 + 300 && !level._id_AB07 )
            thread _id_B239();

        var_0 = var_2;
        wait 0.05;
    }
}

_id_B239()
{
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_flesh" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_breath_high" );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_breath_low", undefined, 0.5, 0.5 );
    level._id_AB07 = 1;
    level._id_CA44 = 0;
}

_id_A9CA()
{
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_breath_low" );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_breath_high", undefined, 0.5, 0.5 );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_flesh", undefined, 0.5, 0.5 );
    level._id_AB07 = 0;
    level._id_CA44 = 1;
}

_id_CABB()
{
    level notify( "stop_knifepull_sfx" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_flesh" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_breath_low" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_afchase_plr_knife_pullout_breath_high" );
    level.player maps\_utility::play_sound_on_entity( "scn_afchase_plr_remove_knife" );
}

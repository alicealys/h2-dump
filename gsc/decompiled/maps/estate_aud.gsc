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
    thread _id_C34D();
}

config_system()
{
    soundscripts\_audio::set_stringtable_mapname( "shg" );
    soundscripts\_snd_filters::snd_set_occlusion( "med_occlusion" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_estate_global" );
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
    soundscripts\_snd::snd_register_message( "startIntro_checkpoint", ::_id_ADDE );
    soundscripts\_snd::snd_register_message( "startAmbush_checkpoint", ::_id_CFDF );
    soundscripts\_snd::snd_register_message( "startForestFight_checkpoint", ::_id_B6FA );
    soundscripts\_snd::snd_register_message( "startHouseApproach_checkpoint", ::_id_C561 );
    soundscripts\_snd::snd_register_message( "startHouseBreach_checkpoint", ::_id_D399 );
    soundscripts\_snd::snd_register_message( "startHouseBriefing_checkpoint", ::_id_D0BB );
    soundscripts\_snd::snd_register_message( "startHouseDefense_checkpoint", ::_id_D4CF );
    soundscripts\_snd::snd_register_message( "startEscape_checkpoint", ::_id_CD5F );
    soundscripts\_snd::snd_register_message( "startEnding_checkpoint", ::_id_B83D );
    soundscripts\_snd::snd_register_message( "startEndingBodyTossOnly_checkpoint", ::_id_B01E );
    soundscripts\_snd::snd_register_message( "startAltEnding_checkpoint", ::_id_BCBB );
    soundscripts\_snd::snd_register_message( "startEndingMeh_checkpoint", ::_id_D346 );
    soundscripts\_snd::snd_register_message( "startDiskdrive_checkpoint", ::_id_B471 );
    soundscripts\_snd::snd_register_message( "startHeliTweak_checkpoint", ::_id_BF70 );
    soundscripts\_snd::snd_register_message( "startHeliTweak2_checkpoint", ::_id_D14A );
    soundscripts\_snd::snd_register_message( "startHeliTweakPavelowEnd_checkpoint", ::_id_A98F );
    soundscripts\_snd::snd_register_message( "startHeliTweakShadowBirdsEnd", ::_id_CFFC );
    soundscripts\_snd::snd_register_message( "startFakeRPGTweak_checkpoint", ::_id_C763 );
    soundscripts\_snd::snd_register_message( "aud_start_stealth_infiltration_mix", ::_id_C678 );
    soundscripts\_snd::snd_register_message( "aud_stop_stealth_infiltration_mix", ::_id_CF1D );
    soundscripts\_snd::snd_register_message( "aud_ambient_chainsaw", ::aud_ambient_chainsaw );
    soundscripts\_snd::snd_register_message( "start_bouncing_betty_sequence", ::_id_B3BC );
    soundscripts\_snd::snd_register_message( "stop_bouncing_betty_slowmo", ::_id_CB5A );
    soundscripts\_snd::snd_register_message( "start_bouncing_betty_shellshock", ::_id_B5BC );
    soundscripts\_snd::snd_register_message( "aud_start_escape_mix", ::_id_D043 );
    soundscripts\_snd::snd_register_message( "aud_stop_escape_mix", ::_id_AFA8 );
    soundscripts\_snd::snd_register_message( "aud_start_escape_bs_0_3_mix", ::aud_start_escape_bs_0_3_mix );
    soundscripts\_snd::snd_register_message( "aud_stop_escape_bs_0_3_mix", ::aud_stop_escape_bs_0_3_mix );
    soundscripts\_snd::snd_register_message( "aud_start_escape_bs_2_2_mix", ::aud_start_escape_bs_2_2_mix );
    soundscripts\_snd::snd_register_message( "aud_stop_escape_bs_2_2_mix", ::aud_stop_escape_bs_2_2_mix );
    soundscripts\_snd::snd_register_message( "aud_start_finale_mix", ::_id_B12C );
    soundscripts\_snd::snd_register_message( "aud_start_slowmo_burning_mix", ::_id_AC36 );
    soundscripts\_snd::snd_register_message( "handle_breach_sequence", ::_id_C5EB );
    soundscripts\_snd::snd_register_message( "start_scn_estate_doomedJeep_01", ::_id_BB59 );
    soundscripts\_snd::snd_register_message( "start_scn_estate_doomedJeep_02", ::_id_D028 );
    soundscripts\_snd::snd_register_message( "start_scn_estate_house_defense_Jeep_01", ::_id_D009 );
    soundscripts\_snd::snd_register_message( "start_scn_estate_house_defense_Jeep_02", ::_id_C082 );
    soundscripts\_snd::snd_register_message( "stop_scn_estate_house_defense_Jeep_01", ::_id_D317 );
    soundscripts\_snd::snd_register_message( "stop_scn_estate_house_defense_Jeep_02", ::_id_ACE2 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_ADDE( var_0 )
{
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior", "ambient_estate_ext0" );
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CFDF( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B6FA( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C561( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D399( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D0BB( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_wood_large" );
}

_id_D4CF( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_wood_large" );
}

_id_CD5F( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_wood" );
}

_id_B83D( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B01E( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BCBB( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D346( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B471( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BF70( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D14A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_A98F( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CFFC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C763( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C678()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "stealth_infiltration_mix" );
}

_id_CF1D()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "stealth_infiltration_mix" );
}

aud_ambient_chainsaw()
{
    wait 1.0;
    var_0 = getent( "chainsaw", "targetname" );
    var_0 thread maps\_utility::play_sound_on_entity( "emt_estate_chainsaw" );
}

_id_B3BC()
{
    _id_CD91( "bouncing_betty_slowmo_mix", "scn_start_bouncing_betty_sequence", "scn_bouncing_betty_sequence_lp", "bouncing_betty_filter" );
}

_id_CB5A()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "bouncing_betty_slowmo_mix" );
    level.player _meth_8522();
    soundscripts\_snd_common::snd_disable_soundcontextoverride( "slomo" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_bouncing_betty_sequence_lp" );
    level.player playsound( "scn_stop_bouncing_betty_slowmo" );
}

_id_B5BC()
{
    level.player playsound( "scn_start_bouncing_betty_shellshock" );
    soundscripts\_audio_mix_manager::mm_add_submix( "bouncing_betty_shellshock_mix" );
    wait 10;
    soundscripts\_audio_mix_manager::mm_clear_submix( "bouncing_betty_shellshock_mix" );
    soundscripts\_snd_filters::snd_fade_out_filter( 1 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 0 );
    soundscripts\_audio_reverb::rvb_start_preset( "exterior" );
}

_id_BB59( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_estate_doomedJeep_01", "tag_hood", 1, 1 );
}

_id_D028( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_estate_doomedJeep_02", "tag_hood", 1, 1 );
}

_id_D009( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_estate_house_defense_Jeep_01", "tag_hood", 1, 1 );
}

_id_C082( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_estate_house_defense_Jeep_02", "tag_hood", 1, 1 );
}

_id_D317( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_estate_house_defense_Jeep_01" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_estate_house_defense_Jeep_stop_01", "tag_hood" );
    maps\_utility::play_loop_sound_on_tag( "scn_estate_house_defense_Jeep_idle_01", "tag_hood", 1, 1, 0.6, 0.3 );
}

_id_ACE2( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_estate_house_defense_Jeep_02" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_estate_house_defense_Jeep_stop_02", "tag_hood" );
    maps\_utility::play_loop_sound_on_tag( "scn_estate_house_defense_Jeep_idle_02", "tag_hood", 1, 1, 0.6, 0.3 );
}

_id_D043()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "escape_mix" );
}

_id_AFA8()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "escape_mix" );
}

aud_start_escape_bs_0_3_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "escape_bs_0_3_mix" );
}

aud_stop_escape_bs_0_3_mix()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "escape_bs_0_3_mix" );
}

aud_start_escape_bs_2_2_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "escape_bs_2_2_mix" );
}

aud_stop_escape_bs_2_2_mix()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "escape_bs_2_2_mix" );
}

_id_B12C()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "finale_mix" );
}

_id_AC36()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "slowmo_burning_mix" );
}

_id_C34D()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "flying_intro_mute" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    wait 0.8;
    soundscripts\_audio_mix_manager::mm_clear_submix( "flying_intro_mute" );
}

_id_CD91( var_0, var_1, var_2, var_3 )
{
    thread maps\_utility::battlechatter_off( "axis" );
    level.player _meth_8521();
    soundscripts\_snd_common::snd_enable_soundcontextoverride( "slomo" );
    level.player playsound( var_1 );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( var_2, undefined, 1.0, 1.0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior", "ambient_estate_ext_forest", 1.0 );
    soundscripts\_audio_mix_manager::mm_add_submix( var_0 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( var_3, 0.5 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 1 );
    soundscripts\_audio_reverb::rvb_start_preset( "slowmo" );
}

_id_CE73( var_0, var_1, var_2, var_3 )
{
    soundscripts\_audio_mix_manager::mm_clear_submix( var_0 );
    level.player _meth_8522();
    soundscripts\_snd_common::snd_disable_soundcontextoverride( "slomo" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( var_1 );
    level.player playsound( var_2 );
    soundscripts\_snd_filters::snd_fade_out_filter( 1.0 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 0 );
    soundscripts\_audio_reverb::rvb_start_preset( var_3 );
    thread maps\_utility::battlechatter_on( "axis" );
}

_id_B931()
{
    thread _id_BA29();
    wait 0.1;
    self vehicle_turnengineoff();
}

_id_BA29()
{
    self endon( "death" );
    var_0 = getvehiclenode( self.target, "targetname" );

    if ( isdefined( var_0._id_A95C ) )
        soundscripts\_snd::snd_message( var_0._id_A95C );

    while ( isalive( self ) )
    {
        if ( !isdefined( var_0.target ) )
            return;

        var_1 = getvehiclenode( var_0.target, "targetname" );

        if ( !isdefined( var_1 ) )
            return;

        var_1 waittill( "trigger", var_2 );

        if ( isdefined( var_1._id_A95C ) )
            soundscripts\_snd::snd_message( var_1._id_A95C );

        var_0 = var_1;
    }
}

_id_C5EB( var_0 )
{
    switch ( var_0 )
    {
        case "breaching_number_0":
            _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "interior_wood" );
            break;
        case "breaching_number_1":
            _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "interior_wood" );
            break;
        case "breaching_number_2":
            _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "interior_wood" );
            break;
        case "breaching_number_3":
            _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "interior_stone" );
            break;
        case "breaching_number_4":
            _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "interior_wood" );
            break;
        case "breaching_number_5":
            _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "none", "interior_wood" );
            break;
    }
}

_id_BC78( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level waittill( "slowmo_go" );
    _id_CD91( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _id_CE73( var_0, var_2, var_3, var_5 );
}

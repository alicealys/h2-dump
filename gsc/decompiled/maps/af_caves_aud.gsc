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
    thread _id_C800();
}

config_system()
{
    soundscripts\_audio::set_stringtable_mapname( "shg" );
    soundscripts\_snd_filters::snd_set_occlusion( "med_occlusion" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_af_caves_global" );
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
    soundscripts\_snd::snd_register_message( "start_road_checkpoint", ::_id_C7A0 );
    soundscripts\_snd::snd_register_message( "start_rappel_checkpoint", ::_id_A945 );
    soundscripts\_snd::snd_register_message( "start_barracks_checkpoint", ::_id_C825 );
    soundscripts\_snd::snd_register_message( "start_steamroom_checkpoint", ::_id_AE93 );
    soundscripts\_snd::snd_register_message( "start_ledge_checkpoint", ::_id_AC58 );
    soundscripts\_snd::snd_register_message( "start_overlook_checkpoint", ::_id_BB1A );
    soundscripts\_snd::snd_register_message( "start_control_room_checkpoint", ::_id_D0AC );
    soundscripts\_snd::snd_register_message( "start_airstrip_checkpoint", ::_id_B3A2 );
    soundscripts\_snd::snd_register_message( "start_player_fall_death", ::start_player_fall_death );
    soundscripts\_snd::snd_register_message( "start_plr_rappel_sequence", ::_id_B608 );
    soundscripts\_snd::snd_register_message( "start_rappel_killing_guard", ::_id_BFFF );
    soundscripts\_snd::snd_register_message( "end_of_rappel_sequence", ::_id_B0DF );
    soundscripts\_snd::snd_register_message( "aud_start_patrol_mix", ::aud_start_patrol_mix );
    soundscripts\_snd::snd_register_message( "aud_stop_patrol_mix", ::aud_stop_patrol_mix );
    soundscripts\_snd::snd_register_message( "start_escape_sequence", ::_id_C3F5 );
    soundscripts\_snd::snd_register_message( "start_escape_cave_collapse", ::_id_D3B6 );
    soundscripts\_snd::snd_register_message( "end_first_blackout", ::_id_C19D );
    soundscripts\_snd::snd_register_message( "start_second_blackout", ::_id_CDA7 );
    soundscripts\_snd::snd_register_message( "end_second_blackout", ::_id_AFF1 );
    soundscripts\_snd::snd_register_message( "end_escape_cave_collapse", ::_id_D440 );
    soundscripts\_snd::snd_register_message( "start_end_black_screen", ::_id_C7D8 );
    soundscripts\_snd::snd_register_message( "aud_afcaves_airstrip_heli01", ::_id_AB97 );
    soundscripts\_snd::snd_register_message( "aud_afcaves_airstrip_heli02", ::_id_B4C1 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_ACA6( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_sandstorm" );
}

_id_C7A0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_sandstorm" );
}

_id_A945( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C825( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AE93( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "af_caves_int" );
}

_id_AC58( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "af_caves_int" );
}

_id_BB1A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D0AC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "af_caves_int" );
}

_id_B3A2( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B608()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "rappel_sequence_mix" );
}

_id_BFFF()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "rappel_kill_guard_mix" );
}

_id_B0DF()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "rappel_sequence_mix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "rappel_kill_guard_mix" );
}

aud_start_patrol_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "patrol_mix" );
}

aud_stop_patrol_mix()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "patrol_mix" );
}

_id_C3F5()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "escape_sequence_mix" );
}

_id_D3B6()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "escape_cave_collapse_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "escape_cave_collapse_bs_mix" );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_afcaves_cave_collapse_tinnitus", undefined, 0.5, 4.0 );
}

_id_C19D()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "escape_cave_collapse_bs_mix" );
}

_id_CDA7()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "escape_cave_collapse_bs2_mix" );
}

_id_AFF1()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "escape_cave_collapse_bs2_mix" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_afcaves_cave_collapse_tinnitus" );
}

_id_D440()
{
    wait 1;
    soundscripts\_audio_mix_manager::mm_clear_submix( "escape_cave_collapse_mix" );
}

_id_C7D8()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "end_black_screen_mix" );
}

start_player_fall_death()
{
    level.player thread maps\_utility::play_sound_on_entity( "afcaves_plyr_fall_scream" );
    soundscripts\_audio_mix_manager::mm_add_submix( "player_fall_death_mix" );
}

_id_C800()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_intro_mix" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_intro_mix" );
}

_id_BC78( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level waittill( "slowmo_go" );
    _id_CD91( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _id_CE73( var_0, var_2, var_3, var_5 );
}

_id_CD91( var_0, var_1, var_2, var_3 )
{
    thread maps\_utility::battlechatter_off( "axis" );
    level.player _meth_8521();
    soundscripts\_snd_common::snd_enable_soundcontextoverride( "slomo" );
    level.player playsound( var_1 );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( var_2, undefined, 1.0, 1.0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "af_caves_int", "ambient_af_caves_int", 1.0 );
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

_id_ADB4()
{
    self endon( "death" );
    _id_C715();
    thread common_scripts\utility::play_loop_sound_on_entity( "scn_af_caves_bh_overlook_rappel_hover", undefined, 0.8, 0.8 );
    self waittill( "unloaded" );
    wait 5;
    common_scripts\utility::stop_loop_sound_on_entity( "scn_af_caves_bh_overlook_rappel_hover" );
    thread maps\_utility::play_sound_on_entity( "scn_af_caves_bh_overlook_rappel_leaving" );
}

_id_B74B()
{
    self endon( "death" );
    _id_C715();
    maps\_utility::play_sound_on_entity( "scn_af_caves_bh_overlook_01" );
}

_id_B637()
{
    self endon( "death" );
    _id_C715();
    self waittill( "unloading" );
    thread common_scripts\utility::play_loop_sound_on_entity( "scn_bh_skylight_01_hover", undefined, 0.8, 0.8 );
}

_id_AB97( var_0 )
{
    self endon( "death" );
    var_0 _id_C715();
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "scn_af_caves_airstrip_heli01_fly_in", undefined, 0.05, 0.8 );
    var_0 waittill( "unloading" );
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "scn_af_caves_airstrip_heli01_fly_in" );
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "scn_af_caves_airstrip_heli01_hover", undefined, 0.8, 0.8 );
    var_0 waittill( "unloaded" );
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "scn_af_caves_airstrip_heli01_hover" );
    var_0 thread maps\_utility::play_sound_on_entity( "scn_af_caves_airstrip_heli01_leaving" );
}

_id_B4C1( var_0 )
{
    self endon( "death" );
    var_0 _id_C715();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_af_caves_airstrip_heli02_landing" );
}

_id_C715()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

aud_chess_soldiers_barracks()
{
    var_0 = getent( "walla_chess_group", "targetname" );
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "emt_afcaves_wall_chess_group" );
    level waittill( "_stealth_spotted" );
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "emt_afcaves_wall_chess_group" );
}

aud_ammo_crate_guy_idle_foley( var_0 )
{
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_af_caves_ammo_crate_npc", "J_Head" );
}

aud_ammo_crate_guy_bump_into_foley( var_0 )
{
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_af_caves_ammo_crate_npc_react", "J_Head" );
}

price_start_typing_loop( var_0 )
{
    if ( !isdefined( var_0.price_typing ) )
        var_0.price_typing = 0;

    if ( !var_0.price_typing )
    {
        var_0 playloopsound( "scn_afcaves_enter_code_typing" );
        var_0.price_typing = 1;
    }
}

stop_price_typing_loop( var_0 )
{
    if ( isdefined( var_0.price_typing ) && var_0.price_typing )
    {
        var_0 stopsounds( "scn_afcaves_enter_code_typing" );
        var_0.price_typing = 0;
    }
}

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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_cliffhanger_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_AF9B();
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
    soundscripts\_snd::snd_register_message( "start_cave_checkpoint", ::_id_BF9C );
    soundscripts\_snd::snd_register_message( "start_e3_checkpoint", ::_id_CC95 );
    soundscripts\_snd::snd_register_message( "start_climb_checkpoint", ::_id_A80C );
    soundscripts\_snd::snd_register_message( "start_jump_checkpoint", ::_id_CC6D );
    soundscripts\_snd::snd_register_message( "start_clifftop_checkpoint", ::_id_B7AC );
    soundscripts\_snd::snd_register_message( "start_camp_checkpoint", ::_id_C6AF );
    soundscripts\_snd::snd_register_message( "start_c4_checkpoint", ::_id_BDAB );
    soundscripts\_snd::snd_register_message( "start_goto_hanger_checkpoint", ::_id_BB53 );
    soundscripts\_snd::snd_register_message( "start_hangerpath_checkpoint", ::_id_C6BA );
    soundscripts\_snd::snd_register_message( "start_hanger_checkpoint", ::_id_BCEA );
    soundscripts\_snd::snd_register_message( "start_satellite_checkpoint", ::_id_D286 );
    soundscripts\_snd::snd_register_message( "start_tarmac_checkpoint", ::_id_C40E );
    soundscripts\_snd::snd_register_message( "start_icepick_checkpoint", ::_id_AC92 );
    soundscripts\_snd::snd_register_message( "start_snowmobile_checkpoint", ::_id_C36B );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
    soundscripts\_snd::snd_register_message( "aud_change_hanger_ambience", ::_id_B0C5 );
    soundscripts\_snd::snd_register_message( "aud_turnoff_hanger_door_transition", ::_id_A892 );
    soundscripts\_snd::snd_register_message( "aud_activate_hanger_door_transition", ::_id_BFFE );
    soundscripts\_snd::snd_register_message( "aud_add_snowstorm_ambience", ::_id_D4C9 );
    soundscripts\_snd::snd_register_message( "aud_remove_snowstorm_ambience", ::_id_C6FF );
    soundscripts\_snd::snd_register_message( "aud_base_alarm_system", ::_id_B346 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_mig_passby", ::_id_B3D0 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_mig_passby", ::_id_D4E7 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_player_climbing", ::_id_AB57 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_player_climbing", ::_id_C305 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_initial_icepick", ::_id_AA40 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_initial_icepick", ::_id_B768 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_slowmo_jump_event", ::_id_AB4A );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_slowmo_jump_event", ::_id_BC24 );
    soundscripts\_snd::snd_register_message( "aud_mix_jet_landing", ::_id_C96C );
    soundscripts\_snd::snd_register_message( "aud_mix_stealth_takedown", ::_id_BD8C );
    soundscripts\_snd::snd_register_message( "aud_start_mix_stealth_busted", ::_id_BBCF );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_stealth_busted", ::_id_C2B5 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_mactavish_trapped", ::_id_BE75 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_mactavish_trapped", ::_id_B36F );
    soundscripts\_snd::snd_register_message( "aud_start_mix_slowmo_explosion", ::_id_C365 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_slowmo_explosion", ::_id_BF6B );
    soundscripts\_snd::snd_register_message( "aud_handle_explosion", ::_id_B1A8 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_snowmobile_ride", ::_id_CF8A );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_snowmobile_ride", ::_id_AA13 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_snowmobile_descent", ::_id_B3D3 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_snowmobile_descent", ::_id_CA79 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_snowmobile_jump", ::_id_B0BF );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_snowmobile_jump", ::_id_BB9D );
    soundscripts\_snd::snd_register_message( "start_fade_to_death", ::start_fade_to_death );
    soundscripts\_snd::snd_register_message( "start_tarmac_bmp_scripted_sfx", ::_id_B975 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_BF9C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_cliff" );
}

_id_CC95( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_cliff" );
}

_id_A80C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_cliff" );
}

_id_CC6D( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_cliff" );
}

_id_B7AC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_cliff" );
}

_id_C6AF( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_clifftop" );
}

_id_BDAB( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_camp" );
}

_id_BB53( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_camp" );
}

_id_C6BA( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_camp" );
}

_id_BCEA( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_metal_roof" );
}

_id_D286( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "office" );
}

_id_C40E( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "hanger" );
}

_id_AC92( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_mountain" );
}

_id_C36B( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_mountain" );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
}

_id_B3D0()
{
    wait 1.0;
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_mig_passby" );
}

_id_D4E7()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_mig_passby" );
}

_id_AB57()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_player_climbing" );
}

_id_C305()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_player_climbing" );
}

_id_AA40( var_0 )
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_initial_icepick" );
}

_id_B768( var_0 )
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_initial_icepick" );
}

_id_AB4A()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_slowmo_jump_event" );
}

_id_BC24()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_slowmo_jump_event" );
}

_id_C96C()
{
    wait 2.0;
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_jet_landing" );
    wait 8.0;
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_jet_landing" );
}

_id_BD8C()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_stealth_takedown" );
    common_scripts\utility::flag_wait( "clifftop_patrol1_dead" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_stealth_takedown" );
}

_id_BBCF()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_stealth_busted" );
}

_id_C2B5()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_stealth_busted" );
}

_id_BE75()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_mactavish_trapped" );
}

_id_B36F()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_mactavish_trapped" );
}

_id_C365()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_slowmo_explosion" );
}

_id_BF6B()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_slowmo_explosion" );
}

_id_CF8A()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_snowmobile_ride" );
}

_id_AA13()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_snowmobile_ride" );
}

_id_B3D3()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_snowmobile_descent" );
}

_id_CA79()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_snowmobile_descent" );
}

_id_B0BF()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_snowmobile_jump" );
}

_id_BB9D()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_snowmobile_jump" );
}

_id_B975( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_tarmac_bmp_stop" );
    wait 1.8;
    var_0 vehicle_turnengineoff();
    wait 3.0;
    var_0 thread maps\_utility::play_loop_sound_on_tag( "bmp_idle_low", undefined, 1, 1, 1.0 );
}

start_fade_to_death()
{
    thread common_scripts\utility::play_sound_in_space( "scn_cliff_plr_snowmobile_jump_fail", ( 0, 0, 0 ) );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_to_death_mix" );
}

_id_C800()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_intro_mix" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_intro_mix" );
}

_id_B938()
{
    self waittill( "trigger", var_0 );
    var_0 endon( "death" );
    var_0 thread maps\_utility::play_sound_on_entity( "scn_cliff_plane_passby" );
}

_id_AF9B()
{
    _id_AF3B( "climb_pullup_wind", "scn_cliffhanger_pullup_strong_wind" );
    _id_AF3B( "2nd_climb_pullup_wind", "scn_cliffhanger_pullup_strong_wind_2nd" );
}

_id_AF3B( var_0, var_1 )
{
    common_scripts\utility::flag_wait( var_0 );
    level.player playsound( var_1 );
}

_id_D4C9( var_0 )
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_heavy_wind_storm_active", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_clifftop", "ambient_cliff_ext_snowstorm", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_camp", "ambient_cliff_ext_snowstorm", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "between_hangar", "ambient_cliff_ext_snowstorm", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_metal_roof", "ambient_cliff_metal_roof_storm_front", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "exterior_clifftop", "exterior_storm", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "exterior_camp", "exterior_storm", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "between_hangar", "exterior_storm", var_0 );
    _id_C638();
}

_id_C6FF( var_0 )
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_heavy_wind_storm_active", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_clifftop", "ambient_cliffhanger_ext0", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_camp", "ambient_cliffhanger_ext0", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "between_hangar", "ambient_cliffhanger_ext0", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_streamed_ambience( "exterior_metal_roof", "ambient_cliffhanger_ext0", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "exterior_clifftop", "exterior", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "exterior_camp", "exterior", var_0 );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "between_hangar", "exterior", var_0 );
    _id_D026();
}

_id_A892()
{
    common_scripts\utility::trigger_off( "hangar_door", "script_noteworthy" );
}

_id_BFFE()
{
    common_scripts\utility::trigger_on( "hangar_door", "script_noteworthy" );
}

_id_B0C5()
{
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "hanger", "exterior_base", 0.5 );
    soundscripts\_audio_zone_manager::azm_set_zone_mix( "hanger", "hanger_open_mix", 0.5 );
}

_id_B346()
{
    var_0 = getent( "base_alarm_speaker", "targetname" );
    var_0 playloopsound( "emt_cliff_base_alarm" );
    common_scripts\utility::flag_wait( "player_snowmobile_available" );
    var_0 stopsounds();
}

_id_BA59()
{
    self endon( "death" );
    var_0 = _id_B5D2();
    common_scripts\utility::flag_wait( "truck_guys_alerted" );
    self waittill( "safe_to_unload" );
    thread _id_CB0E( var_0 );
    thread _id_CAA3();
}

_id_B5D2()
{
    var_0 = _id_C12B( "emt_cliff_jeep_wheel_lf", self, "tag_wheel_front_left" );
    var_1 = _id_C12B( "emt_cliff_jeep_wheel_rf", self, "tag_wheel_front_right" );
    var_2 = _id_C12B( "emt_cliff_jeep_wheel_lb", self, "tag_wheel_back_left" );
    var_3 = _id_C12B( "emt_cliff_jeep_wheel_rb", self, "tag_wheel_back_right" );
    var_4 = [ var_0, var_2, var_1, var_3 ];
    return var_4;
}

_id_CB0E( var_0 )
{
    self endon( "death" );
    thread maps\_utility::play_sound_on_tag( "scn_cliff_jeep_brake", "tag_body", 1 );

    foreach ( var_2 in var_0 )
        var_2 setvolume( 0, 1 );

    wait 1.5;

    foreach ( var_2 in var_0 )
        var_2 stopsounds();

    wait 0.05;
    self notify( "jeep_stopping" );

    foreach ( var_2 in var_0 )
        var_2 delete();
}

_id_CAA3()
{
    self vehicle_turnengineoff();
    thread maps\_utility::play_loop_sound_on_tag( "veh_uaz_idle_low", "tag_body", 1 );
}

_id_C12B( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3 linkto( var_1, var_2, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_3 playloopsound( var_0 );
    var_1 thread handle_entity_link_sound_death( var_3 );
    return var_3;
}

handle_entity_link_sound_death( var_0 )
{
    self endon( "jeep_stopping" );
    self waittill( "death" );
    var_0 stopsounds();
    wait 0.05;
    var_0 delete();
}

_id_C638()
{
    var_0 = getentarray( "wind_ent", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 playloopsound( "emt_wind_interior_wood" );
}

_id_D026()
{
    var_0 = getentarray( "wind_ent", "script_noteworthy" );
    var_1 = getentarray( "door_ent", "script_noteworthy" );

    foreach ( var_3 in var_0 )
        var_3 stopsounds();

    foreach ( var_6 in var_1 )
        var_6 stopsounds();
}

_id_B1A8( var_0, var_1 )
{
    switch ( var_0 )
    {
        case "mig1":
            var_1 thread common_scripts\utility::play_sound_in_space( "scn_hangar_jet_impact_01" );
            break;
        case "mig2":
            var_1 thread common_scripts\utility::play_sound_in_space( "scn_hangar_jet_impact_02" );
            break;
    }
}

_id_CA50( var_0 )
{
    level.price maps\_utility::dialogue_queue( "compromised" );
}

aud_setup_sitter_takedown()
{
    self endon( "death" );
    self waittill( "stealth_takedown_started" );
    soundscripts\_audio_mix_manager::mm_add_submix( "sitter_takedown_mix" );
    self waittill( "stealth_takedown_ended" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "sitter_takedown_mix" );
}

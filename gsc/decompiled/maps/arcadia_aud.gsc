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
    thread intro_start();
}

config_system()
{
    soundscripts\_audio::set_stringtable_mapname( "shg" );
    soundscripts\_snd_filters::snd_set_occlusion( "med_occlusion" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_arcadia_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_AC1E();
    thread _id_D455();
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
    soundscripts\_snd::snd_register_message( "startStreet_checkpoint", ::_id_AB88 );
    soundscripts\_snd::snd_register_message( "startCheckpoint_checkpoint", ::_id_CE2C );
    soundscripts\_snd::snd_register_message( "startGolf_checkpoint", ::_id_CD6C );
    soundscripts\_snd::snd_register_message( "startCrash_checkpoint", ::_id_A9BC );
    soundscripts\_snd::snd_register_message( "start_crash_mix", ::start_crash_mix );
    soundscripts\_snd::snd_register_message( "clear_crash_mix", ::clear_crash_mix );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_AB88( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_stryker_lvl_fade_in" );
    thread _id_BA23();
}

_id_CE2C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CD6C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior2" );
}

_id_A9BC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior2" );
}

start_crash_mix( var_0 )
{
    if ( !common_scripts\utility::flag( "c130_sequence_started" ) && !common_scripts\utility::flag( "mi17_sequence_started" ) )
        soundscripts\_audio_mix_manager::mm_add_submix( "vehicle_npc_crash_mix" );

    common_scripts\utility::flag_set( var_0 );
}

clear_crash_mix( var_0 )
{
    common_scripts\utility::flag_clear( var_0 );

    if ( !common_scripts\utility::flag( "c130_sequence_started" ) && !common_scripts\utility::flag( "mi17_sequence_started" ) )
        soundscripts\_audio_mix_manager::mm_clear_submix( "vehicle_npc_crash_mix" );
}

intro_start()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_fade_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_fade_stryker_mix" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "intro_fade_mix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "intro_fade_stryker_mix" );
}

_id_B4D5()
{
    var_0 = maps\_utility::getent_or_struct_or_node( "heli_street_01", "script_noteworthy" );
    var_0 waittill( "trigger", var_1 );
    soundscripts\_audio_mix_manager::mm_add_submix( "mi17_reinforcement_mix" );
    var_1 waittill( "unloaded" );
    wait 5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "mi17_reinforcement_mix" );
}

_id_AE43()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_B0F9( var_0 )
{
    var_1 = maps\_utility::getent_or_struct_or_node( var_0, "script_noteworthy" );
    var_1 waittill( "trigger", var_2 );
    return var_2;
}

_id_C0E4()
{
    _id_AE43();
    start_crash_mix( "mi17_sequence_started" );
    thread maps\_utility::play_loop_sound_on_tag( "scn_heli_street_blackhawk_01_arrival", undefined, 0, 0, 0.5, 2 );
    wait 8;
    common_scripts\utility::stop_loop_sound_on_entity( "scn_heli_street_blackhawk_01_arrival" );
    wait 8;
    clear_crash_mix( "mi17_sequence_started" );
}

_id_BEFE( var_0, var_1, var_2, var_3 )
{
    var_4 = _id_B0F9( var_0 );
    var_4 _id_AE43();
    var_4 thread maps\_utility::play_sound_on_tag( var_1, undefined, 1 );
    var_4 waittill( "near_goal" );
    var_4 thread maps\_utility::play_loop_sound_on_tag( var_2, undefined, 1, 1, 1.5, 1.5 );
    var_4 waittill( "unloaded" );
    var_4 common_scripts\utility::stop_loop_sound_on_entity( var_2 );
    var_4 thread maps\_utility::play_sound_on_tag( var_3, undefined, 1 );
}

_id_D375()
{
    thread _id_B4D5();
    thread _id_BEFE( "heli_street_01", "scn_heli_street_mi17_01_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_01_leaving" );
    thread _id_BEFE( "heli_street_02", "scn_heli_street_mi17_02_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_02_leaving" );
    thread _id_BEFE( "heli_street_03", "scn_heli_street_mi17_03_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_03_leaving" );
    thread _id_BEFE( "heli_street_04", "scn_heli_street_mi17_04_arrival", "scn_heli_street_mi17_idle", "scn_heli_street_mi17_04_leaving" );
}

_id_BA23()
{
    wait 10;
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_intro_passby_mix" );
    wait 18;
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_intro_passby_mix" );
}

_id_AC1E()
{
    wait 1;
    var_0 = maps\_utility::getent_or_struct_or_node( "stryker_covered_bridge", "script_noteworthy" );
    var_1 = maps\_utility::getent_or_struct_or_node( "stryker_covered_bridge_end", "script_noteworthy" );
    var_0 waittill( "trigger", var_2 );
    soundscripts\_audio_mix_manager::mm_add_submix( "covered_bridge_mix" );
    var_2 thread common_scripts\utility::play_loop_sound_on_entity( "scn_wood_creak_bridge_lp", undefined, 1, 1 );
    var_1 waittill( "trigger", var_2 );
    var_2 thread common_scripts\utility::stop_loop_sound_on_entity( "scn_wood_creak_bridge_lp" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "covered_bridge_mix" );
}

_id_BB79()
{
    self endon( "death" );
    _id_AE43();
    thread maps\_utility::play_loop_sound_on_tag( "scn_coupe_passby_01", undefined, 1, 1, 0.3, 0.3 );

    for (;;)
    {
        var_0 = distancesquared( level.player.origin, self.origin );

        if ( var_0 < 1000000 )
        {
            thread maps\_utility::play_sound_on_tag_endon_death( self._id_A95C, "TAG_BODY" );
            return;
        }

        wait 0.1;
    }
}

_id_B817()
{
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "exterior", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "interior_stone", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "interior_stone_open", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "interior_garage_open", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "interior_wood_small", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "interior_wood_medium", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "interior_wood_large", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "covered_bridge", "exterior2" );
    soundscripts\_audio_zone_manager::azm_set_zone_dynamic_ambience( "interior_arch", "exterior2" );
}

_id_BE8B()
{
    thread _id_AE43();
    maps\_utility::play_loop_sound_on_tag( "scn_harrier_idle", undefined, 1, 1, 0.5, 0.5 );
}

_id_C1B8()
{
    maps\_utility::play_sound_on_tag_endon_death( self._id_A95C );
    wait 5.5;
    soundscripts\_audio_mix_manager::mm_add_submix( "harrier_liftoff_mix" );
    wait 32;
    soundscripts\_audio_mix_manager::mm_clear_submix( "harrier_liftoff_mix" );
}

_id_D455()
{
    common_scripts\utility::flag_wait( "laser_golf_hint_print" );
    soundscripts\_audio_mix_manager::mm_add_submix( "artillery_ambient_heli_mix" );
    common_scripts\utility::flag_wait( "golfcourse_vehicles_dead" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "artillery_ambient_heli_mix" );
}

_id_CDB7( var_0 )
{
    level._id_C863 maps\_utility::play_sound_on_tag_endon_death( "scn_h2_arcadia_refrig_idle_foley", "J_Head" );
}

_id_D2D4( var_0 )
{
    level._id_C863 maps\_utility::play_sound_on_tag_endon_death( "scn_h2_arcadia_refrig_bump_into", "J_Head" );
}

_id_CD6A( var_0 )
{
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_h2_arcadia_refrig_react_foley", "J_Head" );
    var_0 maps\_utility::play_sound_on_tag_endon_death( "arcadia_ru1_refrig_guy_react_custom", "J_Head" );
}

_id_CC48()
{
    self waittill( "death" );
    level._id_C7A3 maps\_utility::play_sound_on_tag_endon_death( "h1_wpn_rpg_exp_default", "TAG_FRONT_LIGHT_LEFT" );
}

ambient_chopper_snd()
{
    var_0 = spawn( "script_origin", self.origin );
    var_0 linkto( self );
    var_0 playloopsound( "veh_helicopter_loop" );
    thread ambient_chopper_death( var_0 );
}

ambient_chopper_death( var_0 )
{
    self waittill( "death" );
    var_0 setvolume( 0, 4 );
    wait 4;
    var_0 delete();
}

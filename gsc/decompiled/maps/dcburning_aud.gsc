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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_dcburning_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_D375();
    thread _id_B53A();
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
    soundscripts\_snd::snd_register_message( "start_debug_checkpoint", ::_id_D2FB );
    soundscripts\_snd::snd_register_message( "start_default_checkpoint", ::_id_ACA6 );
    soundscripts\_snd::snd_register_message( "start_elevator_bottom_checkpoint", ::_id_AECA );
    soundscripts\_snd::snd_register_message( "start_elevator_top_checkpoint", ::_id_D30C );
    soundscripts\_snd::snd_register_message( "start_crows_nest_checkpoint", ::_id_B126 );
    soundscripts\_snd::snd_register_message( "start_crows_nest_armor_checkpoint", ::_id_C1EC );
    soundscripts\_snd::snd_register_message( "start_barrett_checkpoint", ::_id_BEC7 );
    soundscripts\_snd::snd_register_message( "start_to_roof_checkpoint", ::_id_C0D9 );
    soundscripts\_snd::snd_register_message( "start_roof_checkpoint", ::_id_C2D1 );
    soundscripts\_snd::snd_register_message( "start_heli_ride2_checkpoint", ::_id_B22A );
    soundscripts\_snd::snd_register_message( "start_crash_checkpoint", ::_id_D4BC );
    soundscripts\_snd::snd_register_message( "start_music_intropeak_mix", ::_id_A962 );
    soundscripts\_snd::snd_register_message( "start_heli_crash_black_screen", ::_id_AC06 );
    soundscripts\_snd::snd_register_message( "stop_heli_crash_black_screen", ::_id_C99C );
    soundscripts\_snd::snd_register_message( "start_space_transition_in_mix", ::start_space_transition_in_mix );
    soundscripts\_snd::snd_register_message( "start_m1a1_owned_idle", ::_id_B2BE );
    soundscripts\_snd::snd_register_message( "start_player_heli_landing", ::_id_D29F );
    soundscripts\_snd::snd_register_message( "start_heli_balcony_passby", ::_id_AE6C );
    soundscripts\_snd::snd_register_message( "start_player_on_turret", ::_id_BFE7 );
    soundscripts\_snd::snd_register_message( "start_player_off_turret", ::_id_B387 );
    soundscripts\_snd::snd_register_message( "start_missile_earthquake", ::_id_CBC3 );
    soundscripts\_snd::snd_register_message( "start_crowsnest_dialog_mix", ::_id_C08C );
    soundscripts\_snd::snd_register_message( "stop_crowsnest_dialog_mix", ::_id_B760 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_D2FB( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_bunker_small" );
}

_id_ACA6( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
}

_id_AECA( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone_entrance" );
}

_id_D30C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
}

_id_B126( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
}

_id_C1EC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
}

_id_BEC7( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
}

_id_C0D9( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
}

_id_C2D1( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B22A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_heli" );
    soundscripts\_audio_mix_manager::mm_add_submix( "player_heli_03a_mix" );
}

_id_D4BC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_helicopter" );
}

_id_A962()
{
    wait 5;
    soundscripts\_audio_mix_manager::mm_add_submix( "music_intropeak_mix" );
    wait 81;
    soundscripts\_audio_mix_manager::mm_clear_submix( "music_intropeak_mix" );
}

_id_B2BE( var_0 )
{
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "scn_m1a1_moving_01" );
    var_0 common_scripts\utility::play_loop_sound_on_entity( "m1a1_abrams_idle_close_loop", undefined, 0.5, 2 );
}

_id_D29F( var_0 )
{
    level._id_D27A setpitch( 0.85, 5.0 );
    var_0 maps\_utility::play_sound_on_entity( "scn_player_heli_landing" );
}

_id_AC06()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_crash_black_screen_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_crash_shellshock_mix" );
    level._id_CED1 notify( "stop soundscn_dcburning_plr_heli_dying_loop" );
    level._id_CED1 common_scripts\utility::stop_loop_sound_on_entity( "scn_dcburning_plr_heli_missile_hit_01" );
    level._id_CED1 common_scripts\utility::stop_loop_sound_on_entity( "scn_dcburning_plr_heli_damaged_loop" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_dcburning_plr_heli_crash" );
    common_scripts\utility::flag_wait( "obj_heli_ride_complete" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_heli_intro" );
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_helicopter" );
    soundscripts\_snd_filters::snd_fade_in_filter( "dcburning_plr_shellshock_filter", 2 );
    common_scripts\utility::flag_wait( "notetrack_player_lowerhands" );
    wait 0.5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_crash_shellshock_mix" );
    soundscripts\_snd_filters::snd_fade_out_filter( 2 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
}

_id_C99C()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_crash_mix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_crash_black_screen_mix" );
    common_scripts\utility::flag_wait( "notetrack_player_lowerhands" );
}

_id_AE6C( var_0 )
{
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_pre_liftoff_mix" );
    var_0 _id_C803();
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_heli_balcony_passby" );
}

_id_BFE7()
{
    level.player thread maps\_utility::play_sound_on_entity( "scn_dcburning_barret_player_grab_in" );
}

_id_B387()
{
    level.player thread maps\_utility::play_sound_on_entity( "scn_dcburning_barret_player_grab_out" );
}

_id_CBC3( var_0 )
{
    if ( common_scripts\utility::flag( "obj_commerce_defend_snipe_given" ) && !common_scripts\utility::flag( "player_roof_stairs_01" ) )
        common_scripts\utility::play_sound_in_space( "exp_artillery_underground_shake_crowsnest", ( -22208, 6986, 700 ) );
}

_id_C08C()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "crowsnest_dialog_mix" );
}

_id_B760()
{
    wait 7;
    soundscripts\_audio_mix_manager::mm_clear_submix( "crowsnest_dialog_mix" );
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

_id_CE79( var_0, var_1 )
{
    var_2 = maps\_utility::getent_or_struct_or_node( var_0, "script_noteworthy" );
    var_2 waittill( "trigger", var_3 );
    var_3 thread _id_C803();
    var_3 thread maps\_utility::play_loop_sound_on_tag( var_1, undefined, 1 );
}

_id_D375()
{
    thread _id_CE79( "helis_bunker_aud01", "scn_heli_bunker_01" );
    thread _id_CE79( "helis_bunker_aud02", "scn_heli_bunker_02" );
    thread _id_CE79( "helis_mezzanine_aud01", "scn_heli_mezzanine_01" );
    thread _id_CE79( "helis_mezzanine_aud02", "scn_heli_mezzanine_02" );
    thread _id_CE79( "helis_mezzanine_aud03", "scn_heli_mezzanine_03" );
}

_id_B2EB( var_0 )
{
    thread _id_C803();
    maps\_utility::play_sound_on_tag( var_0, undefined, 1 );
}

_id_D517()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_heli" );
    wait 4;
    level._id_D27A setpitch( 1.05, 4.0 );
    thread maps\_utility::play_sound_on_tag( "scn_player_heli_liftoff", undefined, 1 );
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_pre_liftoff_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_liftoff_mix" );
    common_scripts\utility::flag_wait( "player_heli_03a" );
    soundscripts\_audio_mix_manager::mm_add_submix( "player_heli_03a_mix" );
}

_id_D0B5()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "player_heli_03a_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_1st_missile_hit_mix" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_player_heli_hit_vo" );
    thread maps\_utility::play_sound_on_entity( "scn_dcburning_plr_heli_missile_hit_01" );
    thread common_scripts\utility::play_loop_sound_on_entity( "scn_player_heli_first_hit_alarm" );
    common_scripts\utility::play_loop_sound_on_entity( "scn_dcburning_plr_heli_damaged_loop", undefined, 2, 0.5 );
}

_id_B08F()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_1st_missile_hit_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_crash_mix" );
    maps\_utility::play_sound_on_entity( "scn_dcburning_plr_heli_crash_ant" );
}

_id_C56D()
{
    thread _id_C803();
    maps\_utility::play_sound_on_entity( "scn_littlebird_crash_01" );
}

_id_BD54()
{
    wait 0.1;
    var_0 = getentarray( "snd_play_metal_detector_sfx", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _id_B1FF();
}

_id_B1FF()
{
    for (;;)
    {
        self waittill( "trigger", var_0 );
        maps\_utility::play_sound_on_entity( "scn_metal_detector_sfx" );
        wait 1;
    }
}

_id_B67D( var_0 )
{
    wait 0.1;
    self waittill( "taking_off" );
    common_scripts\utility::stop_loop_sound_on_entity( "scn_dcburning_seaknight_idle_high" );
    thread maps\_utility::play_loop_sound_on_tag( var_0, undefined, 1 );
}

_id_D186( var_0 )
{
    wait 0.1;
    thread common_scripts\utility::play_sound_in_space( "slamraam_fire_npc", self.origin + ( 0, 0, 75 ) );
    wait 0.1;
    var_0 thread maps\_utility::play_sound_on_entity( "slamraam_ignition_npc" );
    var_0 maps\_utility::play_loop_sound_on_tag( "slamraam_proj_loop_npc", undefined, 1 );
}

_id_BE95()
{
    level waittill( "c4_placement_started" );
    level.player playsound( "scn_dcburning_plant_c4" );
}

_id_C6DA()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
    level._id_D27A = spawn( "script_origin", self.origin );
    level._id_D27A linkto( self );
    level._id_D27A playloopsound( "scn_player_heli_idle" );
    thread _id_D17C();
}

_id_D17C()
{
    self waittill( "death" );
    level._id_D27A playrumbleonentity();
    wait 0.1;
    level._id_D27A delete();
}

littlebird_monument_idle_sound()
{
    thread _id_C803();
    maps\_utility::play_loop_sound_on_tag( "scn_dcburning_littlebird_engine_low", undefined, 1, 1, 0.5, 3 );
}

littlebird_monument_taking_off_sound()
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_dcburning_littlebird_engine_low" );
    maps\_utility::play_sound_on_tag( "scn_littlebird_monument_taking_off_01", undefined, 1 );
}

_id_B4A4( var_0 )
{
    thread _id_C803();
    maps\_utility::play_loop_sound_on_tag( var_0, undefined, 1 );
}

heli_array_scripted_sound()
{
    thread _id_C803();
    common_scripts\utility::flag_wait( "player_approaching_monument" );
    maps\_utility::play_loop_sound_on_tag( self._id_A95C, undefined, 1 );
}

_id_C60D()
{
    self endon( "death" );
    _id_C803();
    thread maps\_utility::play_loop_sound_on_tag( "scn_mi28_trench_01", undefined, 1 );

    for (;;)
    {
        var_0 = distancesquared( level.player.origin, self.origin );

        if ( var_0 < 2250000 )
        {
            thread maps\_utility::play_sound_on_tag_endon_death( "scn_mi28_trench_passby_01", undefined );
            return;
        }

        wait 0.1;
    }
}

_id_BA1C()
{
    thread common_scripts\utility::play_loop_sound_on_entity( "m1a1_abrams_idle_close_loop", undefined, 0.5, 0.5 );
}

_id_B614()
{
    common_scripts\utility::stop_loop_sound_on_entity( "m1a1_abrams_idle_close_loop" );
    common_scripts\utility::play_loop_sound_on_entity( "scn_m1a1_moving_01", undefined, 0.5, 0.5 );
}

_id_B884()
{
    thread common_scripts\utility::play_loop_sound_on_entity( "slamraam_turret_spin", undefined, 1, 1 );
    wait 4;
    common_scripts\utility::stop_loop_sound_on_entity( "slamraam_turret_spin" );
}

_id_A9D1()
{
    thread maps\_utility::play_sound_on_entity( "scn_dcburning_npc_heli_crash_explo" );
    common_scripts\utility::play_loop_sound_on_entity( "scn_dcburning_npc_heli_crash_falling" );
}

_id_B2B6()
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_dcburning_npc_heli_crash_falling" );
}

_id_B53A()
{
    wait 0.1;
    var_0 = getent( "battlechatter_exit_bunker1", "targetname" );
    var_1 = getent( "battlechatter_exit_bunker2", "targetname" );
    var_2 = getent( "battlechatter_exit_bunker3", "targetname" );
    common_scripts\utility::flag_wait( "player_leaving_bunker" );
    var_0 thread maps\_utility::play_sound_on_entity( "TF_0_exposed_acquired_custom" );
    wait 2.4;
    var_1 thread maps\_utility::play_sound_on_entity( "TF_1_exposed_breaking_custom" );
    wait 3.2;
    var_2 thread maps\_utility::play_sound_on_entity( "TF_2_exposed_open_custom" );
}

intro_heli_sequence_snd()
{
    level.player thread maps\_utility::play_sound_on_entity( "scn_heli_intro" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_crash_black_screen_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "heli_crash_shellshock_mix" );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "dcburning_plr_shellshock_filter", 0.5 );
    common_scripts\utility::flag_wait( "notetrack_player_lowerhands" );
    wait 0.5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "heli_crash_shellshock_mix" );
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

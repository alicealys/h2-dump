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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_favela_global" );

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
    {
        soundscripts\_audio_zone_manager::azm_start_zone( "exterior_alley" );
        var_0 = maps\_utility::musiclength( "mus_favela_tension" );
        maps\_utility::music_loop( "mus_favela_tension", var_0 );
    }
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    if ( getdvar( "beautiful_corner" ) != "1" && getdvar( "beautiful_corner_demo" ) != "1" )
        thread _id_B195();

    thread _id_B1B2();
    thread _id_AB7C();
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
    soundscripts\_snd::snd_register_message( "start_street_checkpoint", ::_id_B06A );
    soundscripts\_snd::snd_register_message( "start_chase_checkpoint", ::_id_B9E7 );
    soundscripts\_snd::snd_register_message( "start_favela_checkpoint", ::_id_C21A );
    soundscripts\_snd::snd_register_message( "start_torture_checkpoint", ::_id_AF5A );
    soundscripts\_snd::snd_register_message( "start_soccer_checkpoint", ::_id_CEC7 );
    soundscripts\_snd::snd_register_message( "start_hilltop_checkpoint", ::_id_C165 );
    soundscripts\_snd::snd_register_message( "start_trailer1_checkpoint", ::_id_CDC4 );
    soundscripts\_snd::snd_register_message( "start_trailer2_checkpoint", ::_id_B0F3 );
    soundscripts\_snd::snd_register_message( "start_trailer3_checkpoint", ::_id_BA98 );
    soundscripts\_snd::snd_register_message( "start_end_checkpoint", ::_id_B028 );
    soundscripts\_snd::snd_register_message( "start_interior_vehicle_open", ::_id_C45F );
    soundscripts\_snd::snd_register_message( "start_player_exit_vehicle", ::_id_AEF7 );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
    soundscripts\_snd::snd_register_message( "start_ending_sequence_mix", ::_id_CDAE );
    soundscripts\_snd::snd_register_message( "start_ending_slowmo", ::_id_C903 );
    soundscripts\_snd::snd_register_message( "stop_ending_slowmo", ::_id_CA33 );
    soundscripts\_snd::snd_register_message( "start_van_arrival", ::start_van_arrival );
    soundscripts\_snd::snd_register_message( "intro_plr_car_bump", ::_id_C3A7 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_B06A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_vehicle" );
    _id_C593();
}

_id_B9E7( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
    _id_C593();
}

_id_C21A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_alley" );
}

_id_AF5A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_alley" );
}

_id_CEC7( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_soccer" );
}

_id_C165( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_hill" );
}

_id_CDC4( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_hill" );
}

_id_B0F3( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_soccer" );
}

_id_BA98( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_shanty" );
}

_id_B028( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_hill" );
}

_id_C45F()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_vehicle_open" );
    soundscripts\_audio_mix_manager::mm_add_submix( "vehicle_intro_mix" );
}

_id_AEF7()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "vehicle_intro_mix" );
    wait 0.7;
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
    common_scripts\utility::play_sound_in_space( "scn_favela_tanker_crash", ( 1149, -2993, 694.5 ) );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
    wait 2.0;
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_music_mix" );
}

_id_CDAE()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "ending_sequence_mix" );
}

_id_C903()
{
    level.player _meth_8521();
    soundscripts\_snd_common::snd_enable_soundcontextoverride( "slomo" );
    soundscripts\_audio_mix_manager::mm_add_submix( "ending_slowmo_mix" );
}

_id_CA33()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "ending_slowmo_mix" );
    level.player _meth_8522();
    soundscripts\_snd_common::snd_disable_soundcontextoverride( "slomo" );
    soundscripts\_snd_timescale::snd_set_timescale( "default" );
}

_id_C3A7( var_0 )
{
    wait 2.5;
    maps\_utility::play_sound_on_entity( "scn_favela_merc_drivein1_bump" );
}

start_van_arrival( var_0 )
{
    wait 0.6;
    maps\_utility::play_sound_on_entity( "scn_favela_van_door_open" );
}

_id_C800()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_level_mix" );
    level.player playsound( "mus_favela_intro_stinger" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_level_mix" );
}

_id_C593()
{
    var_0 = getentarray( "civilians_scream_intro", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread common_scripts\utility::play_loop_sound_on_entity( var_2._id_A95C );
}

_id_D534()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "post_runner_blackscreen_mix" );
    level waittill( "black_screen_finish" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "post_runner_blackscreen_mix" );
}

_id_B195()
{
    var_0 = getent( "snd_play_alley_falling_trashcan", "targetname" );
    var_1 = getent( "snd_alley_falling_trashcan_origin", "targetname" );
    var_0 waittill( "trigger", var_2 );
    var_1 maps\_utility::play_sound_on_entity( "scn_alley_falling_trashcan" );
}

_id_B28B()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_BB79()
{
    self endon( "death" );
    _id_B28B();

    for (;;)
    {
        var_0 = distancesquared( level.player.origin, self.origin );

        if ( var_0 < 1000000 )
        {
            self playsound( self._id_A95C );
            return;
        }

        wait 0.1;
    }
}

_id_B1B2()
{
    level.aud._id_D2BB = getent( "distant_fight", "targetname" );
    level.aud._id_D2BB thread common_scripts\utility::play_loop_sound_on_entity( "emt_distant_battle_lp", undefined, 0.5, 6 );
    wait 0.1;
    common_scripts\utility::flag_wait( "faust_appearance_3" );
    level.aud._id_D2BB thread common_scripts\utility::stop_loop_sound_on_entity( "emt_distant_battle_lp" );
}

_id_C848()
{
    var_0 = getent( "soccer_civilian_walla", "targetname" );
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "walla_favela_civ_dist_lp", undefined, 0.5, 0.5 );
    common_scripts\utility::flag_wait( "favela_civilians_alerted" );
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "walla_favela_civ_dist_lp" );
}

_id_AB7C()
{
    wait 1;
    var_0 = getentarray( "intro_car_alarm", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        var_3 = spawn( "script_origin", var_2.origin );
        var_3 thread common_scripts\utility::play_loop_sound_on_entity( "car_alarm" );
        var_2 thread _id_C75B( var_3 );
    }
}

_id_C75B( var_0 )
{
    self waittill( "stop_car_alarm" );
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "car_alarm" );
    wait 0.1;
    var_0 delete();
}

_id_C514( var_0 )
{
    var_1 = getent( "int_garage_snd_ent", "targetname" );
    var_1 maps\_utility::play_sound_on_entity( "scn_favela_garage_interior" );
}

_id_D571()
{
    var_0 = getent( "shockwave_ent", "targetname" );
    var_1 = getent( "shockwave_stop", "targetname" );
    var_0 thread maps\_utility::play_sound_on_entity( "scn_favela_tanker_explosion_shockwave" );
    var_0 moveto( var_1.origin, 3.2, 0.5, 0.05 );
}

set_ending_slowmo_timescale()
{
    soundscripts\_snd_timescale::snd_set_timescale( "favela_timescale_factor" );
}

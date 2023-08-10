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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_invasion_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_B18A();
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
    soundscripts\_snd::snd_register_message( "start_latvee_checkpoint", ::_id_CCAF );
    soundscripts\_snd::snd_register_message( "start_yards_checkpoint", ::_id_C89C );
    soundscripts\_snd::snd_register_message( "start_bmp_checkpoint", ::_id_BD0B );
    soundscripts\_snd::snd_register_message( "start_pizza_checkpoint", ::_id_B882 );
    soundscripts\_snd::snd_register_message( "start_gas_checkpoint", ::_id_C369 );
    soundscripts\_snd::snd_register_message( "start_crash_checkpoint", ::_id_D4BC );
    soundscripts\_snd::snd_register_message( "start_nates_roof_checkpoint", ::_id_A8F7 );
    soundscripts\_snd::snd_register_message( "start_attack_dinner_checkpoint", ::_id_B441 );
    soundscripts\_snd::snd_register_message( "start_defend_dinner_checkpoint", ::_id_C60A );
    soundscripts\_snd::snd_register_message( "start_diner_checkpoint", ::_id_B098 );
    soundscripts\_snd::snd_register_message( "start_burgertown_checkpoint", ::_id_C496 );
    soundscripts\_snd::snd_register_message( "start_vip_escort_checkpoint", ::_id_C4A2 );
    soundscripts\_snd::snd_register_message( "start_defend_BT_checkpoint", ::_id_D121 );
    soundscripts\_snd::snd_register_message( "start_helis_checkpoint", ::_id_CA66 );
    soundscripts\_snd::snd_register_message( "start_convoy_checkpoint", ::_id_C915 );
    soundscripts\_snd::snd_register_message( "start_btr80_smash_checkpoint", ::_id_AE80 );
    soundscripts\_snd::snd_register_message( "start_interior_vehicle_open", ::_id_C45F );
    soundscripts\_snd::snd_register_message( "start_player_exit_vehicle", ::_id_AEF7 );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
    soundscripts\_snd::snd_register_message( "stop_laatpv_ride_intro", ::_id_ABE7 );
    soundscripts\_snd::snd_register_message( "start_plr_latvee_engine", ::_id_B0D0 );
    soundscripts\_snd::snd_register_message( "stop_plr_latvee_engine", ::_id_C901 );
    soundscripts\_snd::snd_register_message( "intro_btr_showing_up", ::_id_B83B );
    soundscripts\_snd::snd_register_message( "start_convoy_bradley_01", ::_id_C111 );
    soundscripts\_snd::snd_register_message( "stop_convoy_bradley_01", ::_id_BB73 );
    soundscripts\_snd::snd_register_message( "start_convoy_bradley_02", ::_id_D402 );
    soundscripts\_snd::snd_register_message( "stop_convoy_bradley_02", ::_id_C2A8 );
    soundscripts\_snd::snd_register_message( "start_convoy_laatpv_01", ::_id_D26A );
    soundscripts\_snd::snd_register_message( "stop_convoy_laatpv_01", ::_id_CF33 );
    soundscripts\_snd::snd_register_message( "start_convoy_laatpv_02", ::_id_BB58 );
    soundscripts\_snd::snd_register_message( "stop_convoy_laatpv_02", ::_id_A8A8 );
    soundscripts\_snd::snd_register_message( "start_convoy_laatpv_03", ::_id_AE4A );
    soundscripts\_snd::snd_register_message( "stop_convoy_laatpv_03", ::_id_AF91 );
    soundscripts\_snd::snd_register_message( "start_gas_station_truck", ::_id_C56E );
    soundscripts\_snd::snd_register_message( "stop_gas_station_truck", ::_id_C9DB );
    soundscripts\_snd::snd_register_message( "start_btr80_intro_01", ::_id_BAC5 );
    soundscripts\_snd::snd_register_message( "stop_btr80_intro_01", ::_id_CE27 );
    soundscripts\_snd::snd_register_message( "start_bm21_nate_rooftop_01", ::_id_C11C );
    soundscripts\_snd::snd_register_message( "stop_bm21_nate_rooftop_01", ::_id_A9B8 );
    soundscripts\_snd::snd_register_message( "start_bm21_nate_rooftop_02", ::_id_C5AC );
    soundscripts\_snd::snd_register_message( "stop_bm21_nate_rooftop_02", ::_id_C686 );
    soundscripts\_snd::snd_register_message( "start_bm21_north_01", ::_id_C887 );
    soundscripts\_snd::snd_register_message( "stop_bm21_north_01", ::_id_CDE5 );
    soundscripts\_snd::snd_register_message( "start_bm21_north_02", ::_id_C9D7 );
    soundscripts\_snd::snd_register_message( "stop_bm21_north_02", ::_id_B82A );
    soundscripts\_snd::snd_register_message( "play_additionnal_fs_sfx", ::_id_CBDB );
    soundscripts\_snd::snd_register_message( "player_predator_use", ::_id_C7A2 );
    soundscripts\_snd::snd_register_message( "player_predator_end", ::_id_C4E0 );
    soundscripts\_snd::snd_register_message( "start_carrier_putdown", ::start_carrier_putdown );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_CCAF( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_vehicle_open" );
    soundscripts\_audio_mix_manager::mm_add_submix( "laatpv_ride_intro" );
    level.player maps\_utility::play_sound_on_tag( "scn_player_intro_blackscreen", undefined, undefined );
}

_id_C89C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior0" );
}

_id_BD0B( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior0" );
}

_id_B882( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior0" );
}

_id_C369( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_D4BC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_A8F7( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_roof" );
}

_id_B441( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_C60A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior" );
}

_id_B098( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior" );
}

_id_C496( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior" );
}

_id_C4A2( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_D121( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_CA66( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_C915( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_AE80( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior1" );
}

_id_C45F()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_vehicle_open" );
}

_id_AEF7()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior0" );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
}

_id_B83B()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_btr_showing_up" );
}

_id_B0D0( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_plr_laatpv_intro_01", "tag_engine_right", 1, 1 );
}

_id_C901()
{
    level._id_CA77 common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_plr_laatpv_intro_01" );
    level._id_CA77 thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_plr_laatpv_brake_01", "tag_wheel_front_right" );
    level._id_CA77 maps\_utility::play_loop_sound_on_tag( "scn_invasion_plr_laatpv_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_C111( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bradley_approach_01", "tag_engine_right", 1, 1 );
}

_id_BB73( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_bradley_approach_01" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_bradley_breaking_01", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bradley_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_D402( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bradley_approach_02", "tag_engine_right", 1, 1 );
}

_id_C2A8( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_bradley_approach_02" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_bradley_breaking_02", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bradley_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_D26A( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_laatpv_approach_01", "tag_engine_right", 1, 1 );
}

_id_CF33( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_laatpv_approach_01" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_laatpv_breaking_01", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_laatpv_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_BB58( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_laatpv_approach_02", "tag_engine_right", 1, 1 );
}

_id_A8A8( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_laatpv_approach_02" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_laatpv_breaking_02", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_laatpv_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_AE4A( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_laatpv_approach_03", "tag_engine_right", 1, 1 );
}

_id_AF91( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_laatpv_approach_03" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_laatpv_breaking_03", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_laatpv_idle_03", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_C56E( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_gas_truck_approach_01", "tag_engine_right", 1, 1, 1.0, 0.1 );
}

_id_C9DB( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_gas_truck_approach_01" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_gas_truck_breaking_01", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_gas_truck_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_BAC5( var_0 )
{
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_btr80_intro_brake_01", "tag_wheel_front_right" );
}

_id_CE27( var_0 )
{
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_btr80_intro_brake_01", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_btr80_intro_idle_01", "tag_engine_right", 1, 1, 1.0, 0.3 );
}

_id_C11C( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_engine_01", "tag_engine_right", 1, 1 );
}

_id_A9B8( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_bm21_engine_01" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_bm21_break_01", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_C5AC( var_0 )
{
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_engine_02", "tag_engine_right", 1, 1 );
}

_id_C686( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_bm21_engine_02" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_bm21_break_02", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_C887( var_0 )
{
    thread _id_CA7A();
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_north_lp_01", "tag_engine_right", 1, 1, 1, 1 );
}

_id_CDE5( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_bm21_north_lp_01" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_bm21_north_brake_01", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_north_idle_01", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_C9D7( var_0 )
{
    thread _id_CA7A();
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_north_lp_02", "tag_engine_right", 1, 1, 1, 1 );
}

_id_B82A( var_0 )
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_invasion_bm21_north_lp_02" );
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_bm21_north_brake_02", "tag_wheel_front_right" );
    maps\_utility::play_loop_sound_on_tag( "scn_invasion_bm21_north_idle_02", "tag_engine_right", 1, 1, 0.6, 0.3 );
}

_id_C7A2()
{
    level.player thread maps\_utility::play_loop_sound_on_tag( "predator_drone_ambient_lp", undefined, 1, 1, 0.5, 0.5 );
    soundscripts\_audio_mix_manager::mm_add_submix( "predator_missile_mix" );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "predator_missile_filter", 0.5 );
    enablecontext( "predator_missile" );
}

_id_C4E0()
{
    common_scripts\utility::stop_loop_sound_on_entity( "predator_drone_ambient_lp" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "predator_missile_mix" );
    soundscripts\_snd_filters::snd_fade_out_filter( 0.5 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
    disablecontext();
}

start_carrier_putdown()
{
    level._id_CE19 maps\_utility::play_sound_on_tag_endon_death( "scn_invasion_raptor_civ_drop", undefined );
}

_id_C800()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_intro_mix" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    wait 0.6;
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_intro_mix" );
}

_id_ABE7()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "laatpv_ride_intro" );
}

_id_BE55( var_0 )
{
    self waittill( "death" );
    self playsound( var_0 );
}

_id_CA7A()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_A9A9()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "havoc_attacking_mix" );
    self waittill( "death" );
    wait 11;
    soundscripts\_audio_mix_manager::mm_clear_submix( "havoc_attacking_mix" );
}

_id_C3DF( var_0 )
{
    var_0 endon( "death" );
    self waittill( "death" );
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_id_C7D5()
{
    wait 4.1;
    var_0 = maps\_utility::get_vehicle( "latvee_player", "targetname" );
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_1 linkto( var_0, "tag_body", ( 48, 10, 20 ), ( 0, 0, 0 ) );
    var_0 thread _id_C3DF( var_1 );
    level._id_B8EA = var_1;
}

_id_B965( var_0 )
{
    maps\_utility::bcs_scripted_dialogue_start();

    if ( isdefined( level._id_B8EA ) )
        level._id_B8EA maps\_utility::function_stack( ::_id_B892, var_0 );
}

_id_B892( var_0 )
{
    self endon( "death" );
    self playsound( var_0, "vo_done" );
    self waittill( "vo_done" );
}

_id_CBDB()
{
    if ( self == level._id_CE19 )
        thread maps\_utility::play_sound_on_entity( "scn_invasion_raptor_fs_layer" );
}

_id_BB79()
{
    var_0 = distancesquared( level.player.origin, self.origin );

    if ( var_0 < 900000000 )
        thread maps\_utility::play_sound_on_entity( "veh_jet_passenger_slow_linear_short" );
    else
        thread maps\_utility::play_sound_on_entity( "veh_jet_passenger_slow_linear_long" );
}

_id_B18A()
{
    var_0 = getentarray( "ambient_zones_nates_before_explosion", "targetname" );
    var_1 = getentarray( "ambient_zones_nates_after_explosion", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 common_scripts\utility::trigger_off_proc();

    level waittill( "move_president_to_prep" );
    thread _id_B5FE( var_1 );
    thread _id_C10E( var_0 );
}

_id_B5FE( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 common_scripts\utility::trigger_on_proc();
}

_id_C10E( var_0 )
{
    foreach ( var_2 in var_0 )
        var_2 common_scripts\utility::trigger_off_proc();
}

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
    thread _id_CA26();
}

config_system()
{
    soundscripts\_audio::set_stringtable_mapname( "shg" );
    soundscripts\_snd_filters::snd_set_occlusion( "med_occlusion" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_contingency_global" );
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
    soundscripts\_snd::snd_register_message( "start_start_checkpoint", ::_id_D5BF );
    soundscripts\_snd::snd_register_message( "start_slide_checkpoint", ::_id_B73F );
    soundscripts\_snd::snd_register_message( "start_woods_checkpoint", ::_id_C839 );
    soundscripts\_snd::snd_register_message( "start_midwoods_checkpoint", ::_id_C2A9 );
    soundscripts\_snd::snd_register_message( "start_ridge_checkpoint", ::_id_CAC7 );
    soundscripts\_snd::snd_register_message( "start_base_checkpoint", ::_id_C6A3 );
    soundscripts\_snd::snd_register_message( "start_defend_sub_checkpoint", ::_id_C7BB );
    soundscripts\_snd::snd_register_message( "aud_start_mix_price_arriving", ::_id_AF2C );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_price_arriving", ::_id_AE23 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_jeep_convoy", ::_id_BB7A );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_jeep_convoy", ::_id_B037 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_2nd_heli_flyby", ::_id_D211 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_2nd_heli_flyby", ::_id_C0B9 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_tank_attacks", ::_id_AD3F );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_tank_attacks", ::_id_B0A6 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_missile_uav", ::_id_C17C );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_missile_uav", ::_id_D074 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_sam_explosion", ::_id_C5FB );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_sam_explosion", ::_id_BD1E );
    soundscripts\_snd::snd_register_message( "aud_start_mix_silo_doors", ::_id_C12D );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_silo_doors", ::_id_C207 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_nuclear_launch", ::_id_BE9F );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_nuclear_launch", ::_id_B19E );
    soundscripts\_snd::snd_register_message( "aud_start_heli_flyby_echo", ::_id_AD27 );
    soundscripts\_snd::snd_register_message( "scn_cargo_heli_01", ::_id_BCE7 );
    soundscripts\_snd::snd_register_message( "scn_cargo_heli_02", ::_id_C946 );
    soundscripts\_snd::snd_register_message( "scn_cargo_heli_03", ::_id_AA95 );
    soundscripts\_snd::snd_register_message( "aud_base_truck_linear_pass_01", ::_id_D525 );
    soundscripts\_snd::snd_register_message( "scn_start_hind_arrival_01", ::_id_BA1E );
    soundscripts\_snd::snd_register_message( "aud_defend_sub_jeep", ::aud_defend_sub_jeep );
    soundscripts\_snd::snd_register_message( "player_predator_use", ::_id_C7A2 );
    soundscripts\_snd::snd_register_message( "player_predator_end", ::_id_C4E0 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_D5BF( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B73F( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C839( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_forest" );
}

_id_C2A9( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_forest" );
}

_id_CAC7( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C6A3( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C7BB( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AF2C()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_price_arriving" );
}

_id_AE23()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_price_arriving" );
}

_id_BB7A()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_jeep_convoy" );
}

_id_B037()
{
    common_scripts\utility::flag_wait_any( "last_truck_left", "player_is_crossing_bridge", "all_bridge_guys_dead", "_stealth_spotted", "someone_became_alert" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_jeep_convoy" );
}

_id_D211()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_2nd_heli_flyby" );
}

_id_C0B9( var_0 )
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_2nd_heli_flyby" );
}

_id_AD3F()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_tank_attacks" );
}

_id_B0A6()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_tank_attacks" );
}

_id_C17C()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_missile_uav" );
}

_id_D074()
{
    wait 4.5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_missile_uav" );
}

_id_C5FB()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_sam_explosion" );
}

_id_BD1E()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_sam_explosion" );
}

_id_C12D()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_silo_doors" );
}

_id_C207()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_silo_doors" );
}

_id_BE9F()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_nuclear_launch" );
}

_id_B19E()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_nuclear_launch" );
}

_id_CA26()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "black_screen_intro_mix" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    wait 0.8;
    soundscripts\_audio_mix_manager::mm_clear_submix( "black_screen_intro_mix" );
}

_id_AD27()
{
    var_0 = getentarray( "cargo_choppers1_reverb", "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2 ) && isdefined( var_2._id_A95C ) )
            var_2 playsound( var_2._id_A95C );
    }
}

_id_BA59()
{
    var_0 = _id_B5D2();
    common_scripts\utility::flag_wait( "truck_guys_alerted" );
    common_scripts\utility::flag_wait( "convoy_half_way_across_bridge" );
    thread _id_CB0E( var_0 );
    thread _id_CAA3();
}

_id_B5D2()
{
    var_0 = _id_C12B( "veh_cont_jeep_wheel_lf", self, "tag_wheel_front_left" );
    var_1 = _id_C12B( "veh_cont_jeep_wheel_rf", self, "tag_wheel_front_right" );
    var_2 = _id_C12B( "veh_cont_jeep_wheel_lb", self, "tag_wheel_back_left" );
    var_3 = _id_C12B( "veh_cont_jeep_wheel_rb", self, "tag_wheel_back_right" );
    var_4 = [ var_0, var_2, var_1, var_3 ];
    return var_4;
}

_id_CB0E( var_0 )
{
    thread maps\_utility::play_sound_on_tag( "veh_cont_jeep_brake", "tag_body" );

    foreach ( var_2 in var_0 )
        var_2 setvolume( 0, 1 );

    wait 1.5;

    foreach ( var_2 in var_0 )
        var_2 stopsounds();
}

_id_CAA3()
{
    self vehicle_turnengineoff();
    thread maps\_utility::play_loop_sound_on_tag( "veh_uaz_idle_low", "tag_body" );
}

_id_AD54()
{
    var_0 = self[randomint( self.size )];
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "contigency_uaz_music" );
    common_scripts\utility::flag_wait( "truck_guys_alerted" );
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "contigency_uaz_music" );
}

_id_C12B( var_0, var_1, var_2 )
{
    var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_3 linkto( var_1, var_2, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_3 playloopsound( var_0 );
    return var_3;
}

_id_D3A8()
{
    self.script_disablevehicleaudio = 0;
    self vehicle_turnengineon();
}

_id_AFD0()
{
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_CA32()
{
    _id_AFD0();
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_cont_btr_slider_arrival" );
}

_id_BA1E( var_0 )
{
    var_0 _id_AFD0();
    wait 0.5;
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_cont_hind_arrival_01" );
    wait 6.5;
    var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_cont_hind_fly_loop_01", undefined, 1, 1, 0.8, 0.8 );
}

_id_BECA()
{
    var_0 = getent( "snd_dog_barking", "targetname" );
    var_1 = getent( "snd_dog_barking_origin", "targetname" );
    var_0 waittill( "trigger", var_2 );
    var_1 maps\_utility::play_sound_on_entity( "scn_dog_bark_dist_aust_shepherd" );
}

_id_BCE7( var_0 )
{
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_cargo_heli_01" );
}

_id_C946( var_0 )
{
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_cargo_heli_02" );
}

_id_AA95( var_0 )
{
    var_0 _id_AFD0();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_cargo_heli_03" );
}

_id_D261()
{
    _id_AFD0();
    maps\_utility::play_sound_on_entity( "scn_con_base_heli_lift_off" );
    thread common_scripts\utility::play_loop_sound_on_entity( "scn_con_base_heli_fly_lp" );
}

_id_D525( var_0 )
{
    var_0 _id_AFD0();
    var_0 playsound( "scn_con_base_truck_linear_pass_01" );
    var_0 waittill( "unloading" );
    var_0 playrumbleonentity();
    var_0 maps\_utility::play_sound_on_entity( "scn_con_base_truck_brake" );
    var_0 _id_D3A8();
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

aud_price_open_sub_hatch( var_0 )
{
    common_scripts\utility::play_sound_in_space( "scn_con_price_open_sub_hatch", level.hatch.origin + ( -40, 3, 35 ) );
}

aud_defend_sub_jeep( var_0 )
{
    var_0 _id_AFD0();
    var_0 playsound( "scn_cont_defend_sub_jeep_oneshot" );
    var_0 waittill( "unloading" );
    var_0 playrumbleonentity();
    var_0 thread maps\_utility::play_sound_on_tag( "veh_cont_jeep_brake", "tag_body" );
    var_0 _id_D3A8();
}

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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_roadkill_global" );
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
    soundscripts\_snd::snd_register_message( "start_riverbank_checkpoint", ::_id_D071 );
    soundscripts\_snd::snd_register_message( "start_convoy_checkpoint", ::_id_C915 );
    soundscripts\_snd::snd_register_message( "start_ride_checkpoint", ::_id_D5C1 );
    soundscripts\_snd::snd_register_message( "start_crazy_ride_checkpoint", ::_id_AD19 );
    soundscripts\_snd::snd_register_message( "start_crazy_ride_later_checkpoint", ::_id_AB49 );
    soundscripts\_snd::snd_register_message( "start_dismount_checkpoint", ::_id_AA18 );
    soundscripts\_snd::snd_register_message( "start_roadkill_school_fight_checkpoint", ::_id_BFA7 );
    soundscripts\_snd::snd_register_message( "start_roadkill_endfight_checkpoint", ::_id_D493 );
    soundscripts\_snd::snd_register_message( "start_roadkill_end_checkpoint", ::_id_BB8D );
    soundscripts\_snd::snd_register_message( "start_interior_vehicle_context", ::_id_C98B );
    soundscripts\_snd::snd_register_message( "stop_interior_vehicle_context", ::_id_CB7D );
    soundscripts\_snd::snd_register_message( "start_stryker_01", ::_id_CCA4 );
    soundscripts\_snd::snd_register_message( "start_stryker_02", ::_id_CAA0 );
    soundscripts\_snd::snd_register_message( "scn_npc_technical_stop_to_shoot_01", ::scn_npc_technical_stop_to_shoot_01 );
    soundscripts\_snd::snd_register_message( "start_technical_pickup_blocking_path", ::start_technical_pickup_blocking_path );
    soundscripts\_snd::snd_register_message( "start_shellshock_mix", ::start_shellshock_mix );
    soundscripts\_snd::snd_register_message( "stop_shellshock_mix", ::stop_shellshock_mix );
    soundscripts\_snd::snd_register_message( "start_pushed_truck_mix", ::start_pushed_truck_mix );
    soundscripts\_snd::snd_register_message( "stop_pushed_truck_mix", ::stop_pushed_truck_mix );
    soundscripts\_snd::snd_register_message( "start_ambush_mix", ::start_ambush_mix );
    soundscripts\_snd::snd_register_message( "start_ambush_flee_mix", ::start_ambush_flee_mix );
    soundscripts\_snd::snd_register_message( "scn_plr_laatpv_05_flee_area_02", ::player_laatpv_flee_area_02 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_D071( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_level_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_inside_vehicle_mix" );
    level.player thread maps\_utility::play_sound_on_tag( "scn_roadkill_blackscreen_front", undefined, 1 );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_level_mix" );
}

_id_C915( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D5C1( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
}

_id_AD19( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
}

_id_AB49( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
}

_id_AA18( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
}

_id_BFA7( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
}

_id_D493( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BB8D( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_street" );
}

_id_C98B()
{
    enablecontext( "bullet_metal_vehicle" );
}

_id_CB7D()
{
    disablecontext( "bullet_metal_vehicle" );
}

_id_CCA4( var_0 )
{
    common_scripts\utility::flag_wait( "convoy_oscar_mike_after_explosion" );
    wait 1.5;
    var_0 thread maps\_utility::play_sound_on_tag( "scn_npc_stryker_enter_city_01", undefined, 1 );
}

_id_CAA0( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_tag( "scn_npc_stryker_enter_city_02", undefined, 1 );
}

start_shellshock_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "shellshock_intro_plr_get_up_mix" );
}

stop_shellshock_mix()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "shellshock_intro_plr_get_up_mix" );
}

start_pushed_truck_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "ram_pickup_mix" );
}

stop_pushed_truck_mix()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "ram_pickup_mix" );
}

start_ambush_mix()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "vehicle_ride_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "ambush_mix" );
}

start_ambush_flee_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "ambush_flee_mix" );
}

_id_B715( var_0, var_1, var_2 )
{
    _id_BA2E( var_0, 0.05 );

    if ( isdefined( var_1 ) )
        level.player thread maps\_utility::play_sound_on_entity( var_1 );

    if ( isdefined( var_2 ) )
    {
        soundscripts\_audio_mix_manager::mm_add_submix( var_2 );

        if ( var_2 == "shellshock_intro_mix" )
        {
            soundscripts\_audio_mix_manager::mm_clear_submix( "intro_inside_vehicle_mix" );
            soundscripts\_audio_mix_manager::mm_clear_submix( "intro_inside_vehicle_explosion_mix" );
        }

        if ( var_2 == "shellshock_latvee_ambush_02_mix" )
        {
            soundscripts\_audio_mix_manager::mm_clear_submix( "ambush_mix" );
            soundscripts\_audio_mix_manager::mm_clear_submix( "ambush_flee_mix" );
            soundscripts\_audio_mix_manager::mm_clear_submix( "shellshock_latvee_ambush_02_slomo_mix" );
            soundscripts\_snd_common::snd_disable_soundcontextoverride( "slomo" );
        }
    }

    wait( var_0 );

    if ( isdefined( var_2 ) )
        soundscripts\_audio_mix_manager::mm_clear_submix( var_2 );

    _id_AE22( 1 );
}

_id_BA2E( var_0, var_1 )
{
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "post_explosion_filter", var_1 );
}

_id_AE22( var_0 )
{
    soundscripts\_snd_filters::snd_fade_out_filter( var_0 );
    wait( var_0 + 0.05 );
    soundscripts\_snd_filters::snd_clear_filter( 0 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
}

_id_BB2F()
{
    wait 0.1;
    thread _id_D285( level._id_BD77, "scn_friendly_open_latvee_arrive_01" );
    thread _id_D285( level._id_CE62["detour"], "scn_laatpv_detour_arrive_01" );
    thread _id_D285( level._id_CE62["player"], "scn_laatpv_player_arrive_01" );
    thread _id_D285( level._id_CE62["rear"], "scn_laatpv_rear_arrive_01" );
}

_id_D285( var_0, var_1 )
{
    var_0 _id_C3BF();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( var_1 );
    var_0 waittill( "vehicle_flag_arrived" );
    var_0 _id_B93A();
}

_id_C82D( var_0, var_1 )
{
    common_scripts\utility::flag_wait( var_0 );
    _id_C3BF();
    maps\_utility::play_sound_on_tag_endon_death( var_1 );
    _id_B93A();
}

_id_B713()
{
    switch ( level.start_point )
    {
        case "convoy":
        case "move_out":
        case "riverbank":
        case "intro":
        case "default":
            common_scripts\utility::flag_wait( "convoy_crosses_bridge3" );
            thread _id_C3BF();
            thread maps\_utility::play_loop_sound_on_tag( "scn_plr_laatpv_02_enter_city_01", undefined, 1, undefined, 0, 1 );
        case "ride":
            common_scripts\utility::flag_wait( "shot_rings_out" );
            wait 1.5;
            thread common_scripts\utility::stop_loop_sound_on_entity( "scn_plr_laatpv_02_enter_city_01" );
            thread maps\_utility::play_loop_sound_on_tag( "scn_plr_laatpv_02_enter_city_02", undefined, 1, 1, 0.1, 0.5 );
        case "ride_end":
        case "ride_later":
        case "ambush":
            common_scripts\utility::flag_wait( "ambush" );
            thread common_scripts\utility::stop_loop_sound_on_entity( "scn_plr_laatpv_02_enter_city_02" );
        case "endfight":
        case "school":
        case "dismount":
        case "end":
            break;
        default:
            break;
    }
}

_id_AC2A()
{
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_plr_laatpv_03_shellshock_rev_01" );
}

_id_AEF5()
{
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_plr_laatpv_05_flee_area_01" );
}

player_laatpv_flee_area_02( var_0 )
{
    maps\_utility::play_sound_on_tag_endon_death( "scn_plr_laatpv_05_flee_area_02" );
}

_id_B95A()
{
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_plr_laatpv_05_flee_area_03" );
}

player_laatpv_flee_area_04( var_0 )
{
    level._id_BA6B thread maps\_utility::play_sound_on_tag_endon_death( "scn_plr_laatpv_05_flee_area_04" );
}

_id_C3BF()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_B93A()
{
    wait 0.1;
    self vehicle_turnengineon();
    self.script_disablevehicleaudio = 0;
}

_id_BB0B()
{
    common_scripts\utility::flag_wait( "h2_intro_done" );
    var_0 = maps\_utility::getent_or_struct_or_node( "intro_soldier_01", "script_noteworthy" );
    var_1 = maps\_utility::getent_or_struct_or_node( "intro_soldier_02", "script_noteworthy" );
    wait 2;
    wait 2;
    var_1 maps\_utility::play_sound_on_entity( "roadkill_custom_target_acquired" );
}

_id_BF80( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "script_noteworthy";

    var_3 = maps\_utility::getent_or_struct_or_node( var_0, var_2 );
    var_3 waittill( "trigger", var_4 );
    var_4 maps\_utility::play_sound_on_tag( var_1, undefined, 1 );
    return var_4;
}

_id_B4F1()
{
    var_0 = _id_BF80( "pickup_arrival_node", "scn_roadkill_pickup_truck_appear_01", "script_noteworthy" );
    common_scripts\utility::flag_wait( "bridge_truck_leaves" );
    var_0 maps\_utility::play_sound_on_tag( "scn_roadkill_pickup_truck_leave_01", undefined, 1 );
}

_id_BA67( var_0 )
{
    common_scripts\utility::play_sound_in_space( "scn_shellshock_intro_plr_getup", ( 0, 0, 0 ) );
}

scn_apache_show_building_scripted_sfx()
{
    _id_C3BF();
    maps\_utility::play_sound_on_tag_endon_death( self._id_A95C );
}

_id_D102()
{
    thread _id_C3BF();
    self playsound( "scn_roadkill_bridge_tank_crossing" );
}

_id_C9EF()
{
    thread _id_C3BF();
    common_scripts\utility::play_loop_sound_on_entity( "scn_npc_heli_idle_01", undefined, undefined, 1.5 );
}

_id_CD89()
{
    common_scripts\utility::stop_loop_sound_on_entity( "scn_npc_heli_idle_01" );
    self playsound( "scn_npc_heli_flyaway_01" );
}

_id_C34B()
{
    wait 9;
    thread common_scripts\utility::play_sound_in_space( "AB_1_callout_contactclock_10_Custom", ( -8391.91, 6239.21, 681.8 ) );
    wait 5;
    thread common_scripts\utility::play_sound_in_space( "AB_1_callout_contactclock_1_Custom", ( -7496.85, 6590.91, 560.12 ) );
    wait 6;
    thread common_scripts\utility::play_sound_in_space( "AB_1_callout_contactclock_11_Custom", ( -8202.69, 7598.86, 528 ) );
}

plr_oob_gunfire_aud()
{
    level.player endon( "death" );
    var_0 = getent( "oob_gunfire_ent", "targetname" );

    for (;;)
    {
        var_0 thread maps\_utility::play_sound_on_entity( "scn_h2_wpn_ak47_npc_close" );
        wait 0.1;
    }
}

scn_npc_technical_stop_to_shoot_01( var_0 )
{
    var_0 _id_C3BF();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_npc_technical_stop_to_shoot_01" );
}

start_technical_pickup_blocking_path()
{
    level._id_CBAB thread maps\_utility::play_sound_on_entity( "scn_npc_technical_pickup_blocking_path" );
}

scripted_sfx_intro_ride_explosion()
{
    self waittill( "death" );
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_inside_vehicle_explosion_mix" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_mission_truck_intro_player_impact" );
}

bridge_layer_impact_snd()
{
    level endon( "bridge_baddies_retreat" );

    for (;;)
    {
        self waittill( "damage" );
        self playsound( "scn_roadkill_bridge_tank_impact" );
    }
}

bridge_lower_end()
{
    self playsound( "scn_roadkill_bridgedown_part2" );
    self waittillmatch( "single anim", "bridge_lower_end" );
    self setvolume( 0, 1.5 );
    thread maps\_utility::play_sound_on_entity( "scn_roadkill_bridgedown_part2_end" );
    wait 1.5;
    self _meth_8561( "scn_roadkill_bridgedown_part2" );
}

dismount_rpg_slomo_mix()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "shellshock_latvee_ambush_02_slomo_mix" );
    soundscripts\_snd_common::snd_enable_soundcontextoverride( "slomo" );
    level.player maps\_utility::play_sound_on_entity( "scn_ride_killer_rpg_shoot_slomo_in" );
}

traffic_jam_truck_impact_01( var_0 )
{
    common_scripts\utility::play_sound_in_space( "scn_npc_technical_pickup_impact_01", ( -3897.13, 8096.47, 462.814 ) );
}

traffic_jam_truck_impact_02( var_0 )
{
    common_scripts\utility::play_sound_in_space( "scn_npc_technical_pickup_impact_02", ( -3897.13, 8096.47, 462.814 ) );
}

school_latvee_sounds()
{
    thread _id_C3BF();
    thread maps\_utility::play_sound_on_tag_endon_death( self._id_A95C, undefined );
}

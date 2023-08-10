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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_oilrig_global" );
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
    soundscripts\_snd::snd_register_message( "start_underwater_checkpoint", ::_id_AC8D );
    soundscripts\_snd::snd_register_message( "start_surface_checkpoint", ::_id_B6B1 );
    soundscripts\_snd::snd_register_message( "start_rig_checkpoint", ::_id_B7E7 );
    soundscripts\_snd::snd_register_message( "start_deck1_checkpoint", ::_id_BBAC );
    soundscripts\_snd::snd_register_message( "start_heli_checkpoint", ::_id_C8F5 );
    soundscripts\_snd::snd_register_message( "start_deck2_checkpoint", ::_id_D468 );
    soundscripts\_snd::snd_register_message( "start_deck3_checkpoint", ::_id_AF43 );
    soundscripts\_snd::snd_register_message( "start_escape_checkpoint", ::_id_AB18 );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_stealth_kill", ::_id_C894 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_stealth_kill", ::_id_B9CC );
    soundscripts\_snd::snd_register_message( "aud_start_stealth_kill_amb_transition", ::aud_start_stealth_kill_amb_transition );
    soundscripts\_snd::snd_register_message( "aud_start_mix_lbs_reveal", ::aud_start_mix_lbs_reveal );
    soundscripts\_snd::snd_register_message( "aud_start_mix_room_clear", ::_id_BBA2 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_room_clear", ::_id_A86A );
    soundscripts\_snd::snd_register_message( "aud_start_mix_escape", ::_id_B1E3 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_escape", ::_id_A912 );
    soundscripts\_snd::snd_register_message( "aud_underwater_ambience", ::_id_B96E );
    soundscripts\_snd::snd_register_message( "aud_start_player_inside_helicopter", ::_id_B44A );
    soundscripts\_snd::snd_register_message( "aud_scn_oilrig_chopper_lz_flyby", ::aud_scn_oilrig_chopper_lz_flyby );
    soundscripts\_snd::snd_register_message( "aud_scn_oilrig_lower_lbs", ::aud_scn_oilrig_lower_lbs );
    soundscripts\_snd::snd_register_message( "aud_scn_oilrig_upper_lbs", ::aud_scn_oilrig_upper_lbs );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_AC8D( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "underwater_silo" );
}

_id_B6B1( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B7E7( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_rig_intro" );
}

_id_BBAC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_metal_small" );
}

_id_C8F5( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_rig" );
}

_id_D468( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_rig" );
}

_id_AF43( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_rig" );
}

_id_AB18( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_metal_open" );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
}

_id_C894()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_stealth_kill" );
}

_id_B9CC()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_stealth_kill" );
}

aud_start_mix_lbs_reveal()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_lbs_reveal" );
    common_scripts\utility::flag_wait_any( "heli_deck2_shot_down", "derrick_room_getting_breached" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_lbs_reveal" );
}

_id_B1E3()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_escape" );
}

_id_A912()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_escape" );
}

_id_BBA2()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_room_clear" );
}

_id_A86A()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_room_clear" );
}

aud_start_stealth_kill_amb_transition()
{
    var_0 = getent( "underwater_transition_zone", "targetname" );
    var_0 common_scripts\utility::trigger_off_proc();
    wait 6.2;
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_rig_intro" );
}

vehicle_turn_engine_off()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_B117( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "underwater" );
    var_0 playsound( "scn_oilrig_exit_sub_silo" );
}

_id_C22C()
{
    var_0 = spawn( "script_origin", self.origin );
    var_0 linkto( self, "TAG_PROPELLER" );
    var_0 playloopsound( "scn_oilrig_diveboat_plr_layer2" );
    var_0 setvolume( 0, 0 );
    wait 0.5;
    var_0 setvolume( 1, 4 );
    self waittill( "stopped_moving" );
    var_0 setvolume( 0, 3 );
    wait 3.0;
    var_0 stopsounds();
}

_id_B96E()
{
    level.player maps\_utility::play_sound_on_entity( "elm_oilrig_fish" );
    level.player maps\_utility::play_sound_on_entity( "elm_oilrig_whales" );
    wait 1.0;
    level.player maps\_utility::play_sound_on_entity( "elm_oilrig_fish" );
    wait 1.0;
    level.player maps\_utility::play_sound_on_entity( "elm_oilrig_whales" );
}

_id_BC78( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    soundscripts\_audio_mix_manager::mm_add_submix( "breach_initiated_mix" );
    level waittill( "slowmo_go" );
    _id_CD91( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _id_CE73( var_0, var_2, var_3, var_5 );
    soundscripts\_audio_mix_manager::mm_clear_submix( "breach_initiated_mix" );
}

_id_CD91( var_0, var_1, var_2, var_3 )
{
    thread maps\_utility::battlechatter_off( "axis" );
    level.player _meth_8521();
    soundscripts\_snd_common::snd_enable_soundcontextoverride( "slomo" );
    level.player playsound( var_1 );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( var_2, undefined, 1.0, 1.0 );
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
    maps\_utility::delaythread( 1.0, soundscripts\_snd_filters::snd_clear_filter );
    maps\_utility::delaythread( 1.05, soundscripts\_audio_zone_manager::azm_set_filter_bypass, 0 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 0 );
    soundscripts\_audio_reverb::rvb_start_preset( var_3 );
    thread maps\_utility::battlechatter_on( "axis" );
}

_id_D59D()
{
    _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "slomo_breach_filter", "interior_stone" );
}

_id_CC29()
{
    _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "slomo_breach_filter", "interior_stone" );
}

_id_B59C()
{
    _id_BC78( "breach_mix", "scn_breach_slomo_in", "scn_breach_slomo_lp", "scn_breach_slomo_out", "slomo_breach_filter", "interior_metal_med" );
}

_id_BCE6( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_room2a_takedown_soldier" );
}

_id_B6E1()
{
    vehicle_turn_engine_off();
    common_scripts\utility::flag_wait( "player_approaching_derrick_building_exit" );
    thread maps\_utility::play_sound_on_entity( "scn_player_heli_landing" );
    self waittill( "touch_down" );
    thread maps\_utility::play_loop_sound_on_tag( "scn_player_heli_idle", undefined, 1, 1, 0.8, 0.8 );
}

_id_B44A()
{
    level.player thread maps\_utility::play_sound_on_entity( "scn_player_mount_escape_heli" );
    wait 0.5;
    soundscripts\_audio_zone_manager::azm_start_zone( "helicopter" );
    common_scripts\utility::flag_wait( "littlebird_escape_lifted_off" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_player_heli_liftoff" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_player_heli_liftoff" );
}

heli_patrol_02_flyby()
{
    self endon( "death" );
    thread maps\_utility::play_loop_sound_on_tag( "scn_heli_patrol_02_flyby_01", undefined, 1, 1, 0.05, 0.5 );
    self waittill( "damage" );
    thread maps\_utility::play_sound_on_tag( "scn_heli_patrol_02_spot_plr", undefined, 1 );
    common_scripts\utility::stop_loop_sound_on_entity( "scn_heli_patrol_02_flyby_01" );
}

player_moves_on_water_surface()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = "scn_player_move_surface_in";
    var_2 = "scn_player_move_surface_lp";
    var_3 = "scn_player_move_surface_out";
    var_4 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_4 linkto( self );
    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_5 linkto( self );
    var_6 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_6 linkto( self );
    var_5 setvolume( 0 );
    var_5 playloopsound( var_2 );
    var_7 = 0;

    while ( !common_scripts\utility::flag( "player_starting_stealth_kill" ) )
    {
        var_8 = self getnormalizedmovement();
        var_9 = max( abs( var_8[0] ), abs( var_8[1] ) );

        if ( var_9 <= 0.1 )
        {
            if ( var_7 )
            {
                var_4 setvolume( 0, 0.5 );
                var_6 setvolume( 1, 0 );
                var_6 playsound( var_3 );
                var_7 = 0;
            }

            var_5 setvolume( 0, 0.1 );
        }
        else
        {
            if ( !var_7 )
            {
                var_6 setvolume( 0, 0.5 );
                var_4 setvolume( 1, 0 );
                var_4 playsound( var_1 );
                var_7 = 1;
            }

            var_5 setvolume( var_9, 0.1 );
        }

        wait 0.1;
    }

    var_5 setvolume( 0, 0.5 );
    wait 0.5;
    var_4 playrumbleonentity();
    var_5 stopsounds( var_2 );
    var_6 playrumbleonentity();
    wait 0.1;
    var_4 delete();
    var_5 delete();
    var_6 delete();
}

aud_scn_oilrig_chopper_lz_flyby( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_oilrig_chopper_lz_flyby" );
    var_0 waittill( "reached_dynamic_path_end" );
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "scn_oilrig_chopper_lz_lp" );
}

aud_scn_oilrig_lower_lbs( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_oilrig_lower_lbs" );
}

aud_scn_oilrig_upper_lbs( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_oilrig_upper_lbs" );
    wait 2.0;
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_finale_lbs_approach" );
}

heli_deck2_audio()
{
    self endon( "death" );
    vehicle_turn_engine_off();
    self.scripted_move_sfx = 1;
    thread maps\_utility::play_sound_on_entity( "scn_oilrig_chopper_appear" );
    var_0 = 0;
    var_1 = spawn( "script_origin", self.origin );
    var_1 linkto( self );
    var_2 = spawn( "script_origin", self.origin );
    var_2 linkto( self );
    thread heli_deck2_handle_death( var_1 );
    thread heli_deck2_handle_death( var_2 );
    var_2 setvolume( 0, 0 );
    var_2 setpitch( 1, 0 );
    var_2 playloopsound( "scn_heli_deck_2_loop" );
    var_2 setvolume( 1, 0.8 );

    for (;;)
    {
        self waittill( "start_heli_scripted_move_sfx" );
        var_1 setvolume( 1, 0 );
        var_1 playsound( "scn_heli_deck_2_moving" );
        var_2 setpitch( 1.1, 0.8 );
        self waittill( "stop_heli_scripted_move_sfx" );
        var_1 setvolume( 0, 0.8 );
        var_2 setpitch( 1, 0.8 );
    }
}

heli_deck2_handle_death( var_0 )
{
    self waittill( "death" );
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

breach_2_fire_sounds()
{
    var_0 = getentarray( "breach2_fire_ent", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread common_scripts\utility::play_loop_sound_on_entity( "emt_fire_metal_small", undefined, 1, 1 );

    wait 53;

    foreach ( var_2 in var_0 )
        var_2 thread common_scripts\utility::stop_loop_sound_on_entity( "emt_fire_metal_small" );
}

aud_handle_alarm()
{
    var_0 = getent( "origin_alarm", "targetname" );
    var_1 = 7;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_0 playsound( "emt_oilrig_alarm_alert_oneshot" );
        wait 3.0;
    }
}

deck_1_disable_enemy_battlechatter()
{
    thread maps\_utility::battlechatter_off( "axis" );
    level waittill( "slomo_breach_over" );
    maps\_utility::battlechatter_on( "axis" );
}

aud_zodiac_hostage_extraction()
{
    thread maps\_utility::play_sound_on_entity( "scn_zodiac_hostage_extraction" );
}

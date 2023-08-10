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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_gulag_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    _id_B940();
    thread _id_C778();
    soundscripts\_snd_timescale::snd_set_timescale( "gulag_timescale_factor" );
    thread _id_D40A();
    thread unstable_platform_landing_sfx();
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
    soundscripts\_snd::snd_register_message( "start_run_checkpoint", ::_id_AEE4 );
    soundscripts\_snd::snd_register_message( "start_cafeteria_checkpoint", ::_id_B644 );
    soundscripts\_snd::snd_register_message( "start_evac_checkpoint", ::_id_B74C );
    soundscripts\_snd::snd_register_message( "start_empty_checkpoint", ::_id_D404 );
    soundscripts\_snd::snd_register_message( "start_approach_checkpoint", ::_id_ACF1 );
    soundscripts\_snd::snd_register_message( "start_f15_checkpoint", ::_id_CF47 );
    soundscripts\_snd::snd_register_message( "start_control_room_checkpoint", ::_id_D0AC );
    soundscripts\_snd::snd_register_message( "start_armory_checkpoint", ::_id_CC80 );
    soundscripts\_snd::snd_register_message( "start_rappel_checkpoint", ::_id_A945 );
    soundscripts\_snd::snd_register_message( "start_tunnel_checkpoint", ::_id_C9A8 );
    soundscripts\_snd::snd_register_message( "start_bathroom_checkpoint", ::_id_B797 );
    soundscripts\_snd::snd_register_message( "start_rescue_checkpoint", ::_id_BF53 );
    soundscripts\_snd::snd_register_message( "start_helicopter_landing", ::_id_C1DF );
    soundscripts\_snd::snd_register_message( "start_evac_rock_falling", ::_id_CE94 );
    soundscripts\_snd::snd_register_message( "start_evac_rock_falling_black_screen", ::_id_B37F );
    soundscripts\_snd::snd_register_message( "stop_evac_rock_falling_black_screen", ::_id_C817 );
    soundscripts\_snd::snd_register_message( "start_evac_slomo", ::_id_BF8F );
    soundscripts\_snd::snd_register_message( "stop_evac_slomo", ::_id_B7A0 );
    soundscripts\_snd::snd_register_message( "start_evac_player", ::_id_C5F0 );
    soundscripts\_snd::snd_register_message( "start_plr_shield_mix", ::_id_BC67 );
    soundscripts\_snd::snd_register_message( "stop_plr_shield_mix", ::_id_BCF8 );
    soundscripts\_snd::snd_register_message( "start_hallway_attack", ::_id_C62C );
    soundscripts\_snd::snd_register_message( "start_price_hit_unconscious", ::_id_AA1E );
    soundscripts\_snd::snd_register_message( "start_limited_mode_fade_out", ::_id_D4D0 );
    soundscripts\_snd::snd_register_message( "start_balcony_destruction", ::_id_B91F );
    soundscripts\_snd::snd_register_message( "final_explosion_mix", ::_id_B439 );
    soundscripts\_snd::snd_register_message( "start_heli_bullet_impact_mix", ::_id_CAA6 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_AEE4( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
    wait 0.1;
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_id_B644( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
    wait 0.1;
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_id_B74C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_evac_rock_falling" );
    wait 0.1;
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_gulag_evac_jet_attack_loop", undefined, 1.0, 1.0 );
}

_id_D404( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "helicopter" );
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_siren_mix" );
}

_id_ACF1( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "helicopter" );
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_siren_mix" );
}

_id_CF47( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "helicopter" );
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_siren_mix" );
}

_id_D0AC( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CC80( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_large" );
}

_id_A945( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_large" );
}

_id_C9A8( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_tunnel" );
}

_id_B797( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_tunnel" );
}

_id_BF53( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_sewer" );
}

_id_D4D0( var_0 )
{
    soundscripts\_audio_mix_manager::mm_add_submix( "limited_mode_fade_out_mix", var_0 );
}

_id_B91F()
{
    var_0 = getent( "balcony_destruction_sfx_01", "targetname" );
    var_1 = getent( "balcony_destruction_sfx_02", "targetname" );
    wait 2;
    var_0 thread maps\_utility::play_sound_on_entity( "scn_gulag_bhd_balcony_destruction_01" );
    wait 8;
    var_1 thread maps\_utility::play_sound_on_entity( "scn_gulag_bhd_balcony_destruction_02" );
}

_id_CAA6()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "intro_heli_bullet_impact_mix" );
}

_id_C1DF()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "intro_siren_mix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "intro_heli_bullet_impact_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "plr_heli_landing" );
    wait 8;
    soundscripts\_audio_mix_manager::mm_clear_submix( "plr_heli_landing" );
}

_id_BF0D()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_C19A( var_0 )
{
    self waittill( "trigger", var_1 );
    var_1 endon( "death" );
    var_1 notify( var_0 );
}

_id_B528( var_0 )
{
    var_1 = maps\_utility::getent_or_struct_or_node( var_0, "script_noteworthy" );
    var_1 thread _id_C19A( var_0 );
}

_id_C831( var_0, var_1, var_2 )
{
    _id_B528( var_0 );
    common_scripts\utility::waittill_any( var_0 );
    self setpitch( var_1, var_2 );
}

_id_D375( var_0, var_1, var_2 )
{
    _id_B528( var_0 );
    common_scripts\utility::waittill_any( var_0 );
    wait( var_1 );
    maps\_utility::play_sound_on_entity( var_2 );
}

_id_B29F( var_0, var_1, var_2, var_3 )
{
    _id_B528( var_0 );
    common_scripts\utility::waittill_any( var_0 );
    wait( var_1 );
    self setvolume( var_2, var_3 );
}

_id_BC30( var_0, var_1 )
{
    var_2 = maps\_utility::getent_or_struct_or_node( var_0, "script_noteworthy" );
    var_2 waittill( "trigger", var_3 );
    var_3 playsound( var_1 );
}

_id_CE86()
{
    self endon( "death" );
    thread _id_BF0D();
    wait 0.4;
    self playsound( "scn_gulag_helicopter_intro" );
    thread _id_C831( "heli_aud_01", 0.925, 3 );
    common_scripts\utility::flag_wait( "stab1_clear" );
    wait 3;
    self setpitch( 1, 1.5 );
    wait 5.5;
    self setpitch( 0.925, 1.5 );
    common_scripts\utility::flag_wait( "stab2_clear" );
    wait 1;
    self setpitch( 1, 1.5 );
    thread _id_C831( "heli_aud_04", 0.91, 2 );
    thread _id_C831( "heli_aud_05", 1, 2 );
    thread _id_D375( "heli_aud_02", 0, "scn_gulag_helicopter_intro_landing" );
    thread _id_D375( "heli_aud_03", 2.5, "scn_gulag_helicopter_leave" );
    thread _id_B29F( "heli_aud_03", 5, 0, 4 );
}

_id_B940()
{
    thread _id_BC30( "ai_heli_01", "scn_gulag_ai_helicopter_leave_01" );
    thread _id_BC30( "ai_heli_02", "scn_gulag_ai_helicopter_leave_02" );
    thread _id_BC30( "ai_heli_03", "scn_gulag_ai_helicopter_leave_03" );
    thread _id_BC30( "ai_heli_04", "scn_gulag_ai_helicopter_passby_01" );
    thread _id_BC30( "ai_heli_05", "scn_gulag_ai_helicopter_passby_02" );
    thread _id_BC30( "ai_heli_06", "scn_gulag_ai_helicopter_passby_03" );
    thread _id_BC30( "aud_heli_steady", "scn_gulag_ai_helicopter_steady" );
}

_id_CC9B()
{
    thread _id_BF0D();
    var_0 = maps\_utility::getent_or_struct_or_node( "aud_tunnel_heli_sfx", "script_noteworthy" );
    var_0 waittill( "trigger", var_1 );
    thread common_scripts\utility::play_loop_sound_on_entity( "scn_gulag_ending_window_heli", undefined, 0.8, 2 );
    common_scripts\utility::flag_wait( "exit_collapses" );
    common_scripts\utility::stop_loop_sound_on_entity( "scn_gulag_ending_window_heli" );
}

_id_CE94()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_evac_rock_falling" );
    level.player playsound( "scn_gulag_evac_rock_falling_plr" );
}

_id_B37F()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_evac_rock_falling_black_screen" );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "evac_rock_falling_filter", 0.5 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 1 );
    soundscripts\_audio_reverb::rvb_start_preset( "slowmo" );
    level.player playsound( "scn_gulag_price_remove_debris_ant" );
}

_id_C817()
{
    level.player playsound( "scn_gulag_evac_rock_falling_shellshock_out" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_evac_rock_falling_black_screen" );
    soundscripts\_snd_filters::snd_fade_out_filter( 1 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 0 );
    soundscripts\_audio_reverb::rvb_start_preset( "evac_event_room" );
}

_id_BF8F()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_evac_slomo" );
    _id_AB0E( "mix_evac_slomo", "scn_gulag_evac_slomo_in", "scn_gulag_evac_slomo_loop", "evac_slomo_filter" );
}

_id_B7A0()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_evac_rock_falling" );
    _id_CE9D( "mix_evac_slomo", "scn_gulag_evac_slomo_loop", "scn_gulag_evac_slomo_out", "evac_event_room" );
}

_id_C5F0()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_evac_player" );
    level.player playsound( "scn_gulag_evac_player" );
}

_id_BC67()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "plr_shield_mix" );
}

_id_BCF8()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "plr_shield_mix" );
}

_id_D57C( var_0 )
{
    level.player _meth_8522();
    soundscripts\_snd_common::snd_disable_soundcontextoverride( var_0 );
}

_id_BC78( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    thread maps\_utility::battlechatter_off();
    level waittill( "plant_go" );
    level waittill( "slowmo_go" );
    _id_AB0E( var_0, var_1, var_2, var_4 );
    level waittill( "slowmo_breach_ending" );
    _id_CE9D( var_0, var_2, var_3, var_5 );
    maps\_utility::battlechatter_on();
}

_id_AB0E( var_0, var_1, var_2, var_3 )
{
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

_id_CE9D( var_0, var_1, var_2, var_3 )
{
    _id_D57C( "slomo" );
    soundscripts\_audio_mix_manager::mm_clear_submix( var_0 );
    level.player common_scripts\utility::stop_loop_sound_on_entity( var_1 );
    level.player playsound( var_2 );
    soundscripts\_snd_filters::snd_fade_out_filter( 1 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 0 );
    soundscripts\_audio_reverb::rvb_start_preset( var_3 );
}

_id_CC62()
{
    _id_BC78( "bathroom_breach_mix", "scn_bathroom_breach_slomo_in", "scn_bathroom_breach_slomo_lp", "scn_bathroom_breach_slomo_out", "slomo_breach_filter", "interior_shower_large" );
}

_id_B6B8()
{
    _id_BC78( "rescue_breach_mix", "scn_rescue_breach_slomo_in", "scn_rescue_breach_slomo_lp", "scn_rescue_breach_slomo_out", "slomo_breach_filter", "price_rescue_room" );
}

_id_C778()
{
    level endon( "stop_exterior_alarm" );
    var_0 = getentarray( "alarm_speaker", "script_noteworthy" );

    for (;;)
    {
        foreach ( var_2 in var_0 )
            var_2 thread maps\_utility::play_sound_on_entity( var_2._id_A95C );

        wait 5;
    }
}

_id_C8B4()
{
    _id_BF0D();
    var_0 = spawn( "script_origin", self.origin );
    var_0.script_ghettotag = 1;
    var_0 linkto( self );
    var_0 playsound( "scn_gulag_heli_reinforcement_arrival_01" );
    common_scripts\utility::flag_wait( "bhd_attack" );
    thread _id_AB36();
    common_scripts\utility::flag_wait( "bhd_heli_flies_off" );
    self playsound( "scn_gulag_heli_reinforcement_leave_01" );
    var_0 setvolume( 0, 1.5 );
    wait 1.5;
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_id_AB36()
{
    var_0 = getent( "aud_bhd_attack_submix", "script_noteworthy" );

    if ( !isdefined( var_0 ) )
        return;

    for (;;)
    {
        var_0 waittill( "trigger", var_1 );

        if ( !isplayer( var_1 ) )
            continue;

        soundscripts\_audio_mix_manager::mm_add_submix( "bhd_attack_mix" );

        while ( var_1 istouching( var_0 ) && !common_scripts\utility::flag( "bhd_heli_flies_off" ) )
            wait 0.1;

        soundscripts\_audio_mix_manager::mm_clear_submix( "bhd_attack_mix" );

        if ( common_scripts\utility::flag( "bhd_heli_flies_off" ) )
            break;
    }
}

_id_C62C()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "1st_hallway_collapse_mix" );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "1st_hallway_collapse_filter", 0.5 );
    thread common_scripts\utility::play_sound_in_space( "scn_gulag_shellshock_01_explo_rear", ( -3065.64, -1606.94, 744.227 ) );
    level waittill( "stop_hallway_attack" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "1st_hallway_collapse_mix" );
    soundscripts\_snd_filters::snd_fade_out_filter( 1 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
}

_id_AA1E()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "price_hit_unconscious_mix" );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "price_hit_unconscious_filter", 0.5 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 1 );
    soundscripts\_audio_reverb::rvb_start_preset( "slowmo" );
    wait 4;
    soundscripts\_audio_mix_manager::mm_clear_submix( "price_hit_unconscious_mix" );
    soundscripts\_snd_filters::snd_fade_out_filter( 3 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 0 );
    soundscripts\_audio_reverb::rvb_start_preset( "price_rescue_room" );
}

_id_D478()
{
    var_0 = getent( "bombardment_hallway", "targetname" );
    var_0 playloopsound( "emt_offshore_bombardment_shellshock1_area" );
    level waittill( "stop_hallway_bombardment" );
    var_0 setvolume( 0, 4 );
    wait 4;
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_id_AF8E()
{
    var_0 = getent( "rescue_room_alarm", "targetname" );
    wait 2;
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "emt_gulag_escape_alarm_01" );
}

_id_B02A()
{
    self playsound( "scn_dizzy_soldier_01" );
    self waittill( "death" );
    self playrumbleonentity();
    wait 0.1;
    self playsound( "scn_dizzy_soldier_01_death" );
}

_id_D40A()
{
    var_0 = getent( "tower_exit", "targetname" );

    if ( isdefined( var_0 ) )
    {
        var_0 waittill( "trigger", var_1 );
        soundscripts\_audio_mix_manager::mm_add_submix( "tower_exit_mix" );
    }
}

_id_B439()
{
    wait 6.15;
    soundscripts\_audio_mix_manager::mm_add_submix( "final_explosion_mix" );
    wait 1.7;
    soundscripts\_audio_mix_manager::mm_add_submix( "black_screen_mix" );
}

_id_CDD6( var_0 )
{
    level._id_BB90 thread maps\_utility::play_sound_on_entity( "scn_gulag_rappel_metal_plate" );
}

_id_CADC( var_0 )
{
    level._id_B8BC thread maps\_utility::play_sound_on_tag( "scn_gulag_rappel_soap_rope", "RopeJoint142" );
}

_id_ABC2()
{
    var_0 = getent( "aud_rockslide_explosion_slapback", "targetname" );
    common_scripts\utility::flag_wait( "rockslide_event" );
    var_0 thread maps\_utility::play_sound_on_entity( "scn_gulag_rockslide_before_antenna_slap" );
}

pipe_room_breach_dialog_flag()
{
    common_scripts\utility::flag_set( "bathroom_breach_objective_dialog" );
    wait 7;
    common_scripts\utility::flag_clear( "bathroom_breach_objective_dialog" );
}

unstable_platform_landing_sfx()
{
    level.player endon( "death" );

    for (;;)
    {
        level.player waittill( "foley", var_0, var_1, var_2 );

        if ( common_scripts\utility::flag( "stairs_unstable_platform" ) )
        {
            switch ( var_0 )
            {
                case "heavyland":
                case "mediumland":
                case "lightland":
                    level.player thread maps\_utility::play_sound_on_entity( "step_land_gulag_unstable_platform_plr" );
                    break;
            }
        }

        wait 0.5;
    }
}

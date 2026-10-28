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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_favela_global" );
}

init_snd_flags()
{

}

init_globals()
{

}

launch_threads()
{
    thread _id_C494();
    soundscripts\_snd_timescale::snd_set_timescale( "favela_escape_timescale_factor" );
    thread crucified_rojas_head_pos();
    thread solorun_pavelow_passby();
    thread chopper_jump_death_scream();
    thread _id_C800();
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
    soundscripts\_snd::snd_register_message( "start_intro_checkpoint", ::_id_CCA0 );
    soundscripts\_snd::snd_register_message( "start_street_checkpoint", ::_id_B06A );
    soundscripts\_snd::snd_register_message( "start_street_mid_checkpoint", ::_id_BE23 );
    soundscripts\_snd::snd_register_message( "start_street_vista2_checkpoint", ::_id_B9C0 );
    soundscripts\_snd::snd_register_message( "start_market_checkpoint", ::_id_CCDB );
    soundscripts\_snd::snd_register_message( "start_market_evac_checkpoint", ::_id_CAB3 );
    soundscripts\_snd::snd_register_message( "start_market_evac_escape_checkpoint", ::_id_B63D );
    soundscripts\_snd::snd_register_message( "start_roofrun_checkpoint", ::_id_C9F5 );
    soundscripts\_snd::snd_register_message( "start_roofrun_bigjump_checkpoint", ::_id_C6E0 );
    soundscripts\_snd::snd_register_message( "start_solorun_checkpoint", ::_id_B5D5 );
    soundscripts\_snd::snd_register_message( "start_solorun_rooftops_checkpoint", ::_id_B7B9 );
    soundscripts\_snd::snd_register_message( "start_solorun_chopper_checkpoint", ::_id_C921 );
    soundscripts\_snd::snd_register_message( "start_fade_out_level", ::_id_CC32 );
    soundscripts\_snd::snd_register_message( "start_gate_truck_01", ::_id_ABF0 );
    soundscripts\_snd::snd_register_message( "start_donut_truck_01", ::_id_B8BD );
    soundscripts\_snd::snd_register_message( "start_break_truck_01", ::_id_D10E );
    soundscripts\_snd::snd_register_message( "stop_break_truck_01", ::_id_CC02 );
    soundscripts\_snd::snd_register_message( "start_gate_truck_02", ::_id_B59E );
    soundscripts\_snd::snd_register_message( "start_market_truck_arrival", ::_id_D0D3 );
    soundscripts\_snd::snd_register_message( "start_market_truck_break", ::_id_BC4A );
    soundscripts\_snd::snd_register_message( "start_evac_fakefire_rpgs", ::start_evac_fakefire_rpgs );
    soundscripts\_snd::snd_register_message( "stop_evac_fakefire_rpgs", ::stop_evac_fakefire_rpgs );
    soundscripts\_snd::snd_register_message( "start_player_normal_fall", ::_id_AD39 );
    soundscripts\_snd::snd_register_message( "start_player_bigjump", ::_id_B052 );
    soundscripts\_snd::snd_register_message( "start_player_recovery_done", ::_id_D266 );
    soundscripts\_snd::snd_register_message( "start_market_chopper_distant", ::_id_B47B );
    soundscripts\_snd::snd_register_message( "start_bird_startle_flyaway_01", ::_id_A806 );
    soundscripts\_snd::snd_register_message( "start_bird_startle_flyaway_02", ::_id_CE10 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_CCA0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_shanty_intro" );
}

_id_B06A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_combat" );
}

_id_BE23( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_edge" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_combat" );
}

_id_B9C0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_shanty_street" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_combat" );
}

_id_CCDB( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_edge" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_combat" );
}

_id_CAB3( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_shanty_market" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_combat" );
}

_id_B63D( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_soccer_field" );
}

_id_C9F5( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_roof_alley" );
}

_id_C6E0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_roof" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_waveoff" );
}

_id_B5D5( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior_shanty_street" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_finalrun" );
    soundscripts\_audio_mix_manager::mm_add_submix( "solo_run_mix" );
}

_id_B7B9( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_finalrun" );
}

_id_C921( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_stone" );
    maps\_utility::musicplaywrapper( "mus_favelaescape_finalrun" );
}

_id_C45F()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "interior_vehicle_open" );
}

_id_AEF7()
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_CC32()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_out_level_mix" );
}

_id_ABF0( var_0 )
{
    var_0 thread _id_CA7A();
    var_0 maps\_utility::play_sound_on_tag( "scn_favela_escape_truck_run_01", undefined, 1 );
}

_id_B8BD( var_0 )
{
    var_0._id_D04A = 0;
    var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_truck_donut_01", undefined, 1, undefined, 0.5, 1 );
    var_0 waittill( "driver dead" );
    var_0._id_D04A = 1;

    if ( common_scripts\utility::flag( "start_truck_break" ) )
    {
        wait 0.2;
        var_0 thread common_scripts\utility::stop_loop_sound_on_entity( "scn_favela_escape_truck_donut_01" );
        var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_truck_interrupt_01" );
    }
    else
    {
        var_0 thread common_scripts\utility::stop_loop_sound_on_entity( "scn_favela_escape_truck_donut_01" );
        var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_truck_interrupt_01" );
    }
}

_id_D10E( var_0 )
{
    if ( isdefined( var_0._id_D04A ) && !var_0._id_D04A )
    {
        var_0 thread common_scripts\utility::stop_loop_sound_on_entity( "scn_favela_escape_truck_donut_01" );
        var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_truck_break_01", undefined, 1, undefined, 1, 1 );
    }
}

_id_CC02( var_0 )
{
    var_0 common_scripts\utility::stop_loop_sound_on_entity( "scn_favela_escape_truck_break_01" );
}

_id_B59E( var_0 )
{
    var_0 thread _id_CA7A();
    var_0 thread maps\_utility::play_sound_on_tag( "scn_favela_escape_truck_run_02", undefined, 1 );
    common_scripts\utility::flag_wait( "radiotower_escape_technical_2_arrival" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_truck_break_02" );
}

_id_D0D3( var_0 )
{
    var_0 thread _id_CA7A();
    var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_truck2_arrival", undefined, 1, undefined, 1, 1 );
}

_id_BC4A( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_truck2_break" );
    wait 1.0;
    var_0 thread common_scripts\utility::stop_loop_sound_on_entity( "scn_favela_escape_truck2_arrival" );
}

start_evac_fakefire_rpgs()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "evac_fake_rpg_mix" );
}

stop_evac_fakefire_rpgs()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "evac_fake_rpg_mix" );
}

_id_AD39()
{
    thread favesc_falling_music_fail();
    soundscripts\_audio_mix_manager::mm_add_submix( "big_jump_mix" );
    wait 0.2;
    level.player playsound( "scn_player_jump_fail" );
}

_id_B052()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "big_jump_mix" );
}

_id_D266()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "big_jump_mix" );
    soundscripts\_audio_mix_manager::mm_clear_submix( "friendly_fire_failed_mix" );
    soundscripts\_audio_mix_manager::mm_add_submix( "solo_run_mix" );
    thread footstep_player_additional_layer();
}

_id_B47B( var_0 )
{
    wait 2.2;
    level._id_B516 = spawn( "script_origin", var_0.origin );
    var_1 = getent( "market_chopper_distant_destination", "targetname" );
    level._id_B516 thread common_scripts\utility::play_loop_sound_on_entity( "emt_fav_escape_heli_dist_circle_loop", undefined, 0.8, 2.0 );
    level._id_B516 moveto( var_1.origin, 7.0, 0.05, 0.05 );
}

_id_A806()
{
    var_0 = getent( "bird_flyaway_01_start", "targetname" );
    var_1 = getent( "bird_flyaway_01_end", "targetname" );
    var_0 thread maps\_utility::play_sound_on_entity( "anml_bird_startle_flyaway" );
    var_0 moveto( var_1.origin, 3.5, 0.5, 0.05 );
}

_id_CE10()
{
    var_0 = getent( "bird_flyaway_02_start", "targetname" );
    var_1 = getent( "bird_flyaway_02_end", "targetname" );
    var_0 thread maps\_utility::play_sound_on_entity( "anml_bird_startle_flyaway" );
    var_0 moveto( var_1.origin, 3.0, 0.05, 0.05 );
}

_id_C800()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_intro_mix" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    wait 0.6;
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_intro_mix" );
}

_id_CA7A()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_A9B9()
{
    thread _id_CA7A();
    thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_heli_roofrun_flyover_01", "main_rotor_jnt", 1, undefined, 0.5, 3.0 );
    self waittill( "reached_dynamic_path_end" );
    thread common_scripts\utility::stop_loop_sound_on_entity( "scn_favela_escape_heli_roofrun_flyover_01" );
    thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_heli_roofrun_flyover_idle", "main_rotor_jnt" );
    thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_heli_roofrun_flyover_engine", "main_rotor_jnt" );
}

_id_AEEE()
{
    common_scripts\utility::flag_wait( "solorun_chopper_move1" );
    thread maps\_utility::play_sound_on_tag( "scn_favela_escape_heli_solorun_passby_01", "main_rotor_jnt", 1 );
}

_id_C434()
{
    thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_heli_solorun_jump_distant", "main_rotor_jnt", 1, undefined, 0.5, 0.5 );
    common_scripts\utility::flag_wait( "chopperjump_player_jump" );
    soundscripts\_audio_mix_manager::mm_add_submix( "final_jump_mix" );
}

_id_D11E()
{
    thread _id_CA7A();
    thread maps\_utility::play_loop_sound_on_tag( "scn_favela_escape_fire_car_slope_01", undefined, 1, undefined, 1, 1 );
    soundscripts\_audio_mix_manager::mm_add_submix( "flaming_truck_mix" );
    self waittill( "reached_end_node" );
    thread maps\_utility::play_sound_on_tag( "scn_favela_escape_fire_car_impact", undefined, undefined );
    soundscripts\_audio_mix_manager::mm_clear_submix( "flaming_truck_mix" );
}

_id_D230()
{
    thread _id_CA7A();
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_heli_flyover_market" );
}

_id_C494()
{
    var_0 = getent( "favela_escape_slide", "script_noteworthy" );
    var_0 waittill( "trigger", var_1 );
    var_1 maps\_utility::play_sound_on_entity( "scn_favela_escape_player_slide" );
}

_id_C1C9()
{
    thread _id_CA7A();
    thread maps\_utility::play_sound_on_entity( "scn_favela_escape_heli_land" );
    wait 1;
    level._id_B516 common_scripts\utility::stop_loop_sound_on_entity( "emt_fav_escape_heli_dist_circle_loop" );
    wait 2.5;
    level._id_B516 delete();
}

_id_AB0E()
{
    level.player playsound( "scn_favela_escape_bigjump_slomo_in" );
    level.player thread common_scripts\utility::play_loop_sound_on_entity( "scn_favela_escape_bigjump_slomo_lp", undefined, 1.0, 1.0 );
    soundscripts\_audio_mix_manager::mm_add_submix( "big_jump_slomo_mix" );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 1 );
    soundscripts\_snd_filters::snd_fade_in_filter( "big_jump_slomo_filter", 0.5 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 1 );
    soundscripts\_audio_reverb::rvb_start_preset( "slowmo" );
}

_id_CE9D()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "big_jump_slomo_mix" );
    level.player common_scripts\utility::stop_loop_sound_on_entity( "scn_favela_escape_bigjump_slomo_lp" );
    level.player playsound( "scn_favela_escape_bigjump_slomo_out" );
    soundscripts\_snd_filters::snd_fade_out_filter( 1 );
    soundscripts\_audio_zone_manager::azm_set_filter_bypass( 0 );
    soundscripts\_audio_zone_manager::azm_set_reverb_bypass( 0 );
    soundscripts\_audio_reverb::rvb_start_preset( "shanty" );
}

_id_C7F6( var_0 )
{
    wait 2.3;
    level._id_C947 thread maps\favela_escape_code::dialogue( "favesc_gst_worksforme" );
    wait 3;
    common_scripts\utility::flag_set( "runpath_resume_dialogue" );
}

crucified_rojas_head_pos()
{
    wait 1;

    if ( isdefined( level.rojas ) )
    {
        var_0 = level.rojas gettagorigin( "j_head" );
        level.rojas_head = spawn( "script_origin", var_0 );
    }
}

crucified_rojas_idle( var_0 )
{
    if ( isdefined( level.rojas_head ) )
        level.rojas_head playsound( "scn_favela_escape_crucified_rojas_mumbling" );
}

crucified_rojas_death()
{
    if ( isdefined( level.rojas_head ) )
    {
        level.rojas_head playrumbleonentity();
        level.rojas_head playsound( "scn_favela_escape_rojas_death" );
        wait 0.1;
        level.rojas_head delete();
    }
}

footstep_player_additional_layer()
{
    level.player endon( "death" );

    for (;;)
    {
        level.player waittill( "foley", var_0, var_1, var_2 );

        switch ( var_0 )
        {
            case "walk":
                level.player thread maps\_utility::play_sound_on_entity( "scn_favela_escape_player_fs_layer_walk" );
                break;
            case "run":
                level.player thread maps\_utility::play_sound_on_entity( "scn_favela_escape_player_fs_layer_run" );
                break;
            case "sprint":
                level.player thread maps\_utility::play_sound_on_entity( "scn_favela_escape_player_fs_layer_sprint" );
                break;
        }
    }
}

soap_hanging_up_phone( var_0 )
{
    if ( isdefined( var_0.payphone ) )
        var_0.payphone common_scripts\utility::play_sound_in_space( "scn_favela_escape_soap_intro_phone", var_0.payphone.origin + ( 0, 12, 50 ) );
}

solorun_pavelow_passby()
{
    wait 1;
    var_0 = getent( "solorun_pavelow_passby", "targetname" );
    var_0 maps\_utility::add_spawn_function( ::solorun_pavelow_sounds );
}

solorun_pavelow_sounds()
{
    thread _id_CA7A();
    maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_heli_solorun_passby_02" );
}

chopperjump_player_foley_sounds()
{
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_end_arms" );
    wait 1.1;
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_favela_escape_end_grab" );
}

chopper_jump_death_scream()
{
    wait 1;
    var_0 = getent( "trigger_death_scream", "targetname" );
    var_0 waittill( "trigger", var_1 );

    if ( isplayer( var_1 ) )
        var_1 playsound( "scn_favela_escape_plr_fall_scream" );
}

favesc_falling_music_fail()
{
    maps\_utility::music_stop( 3 );
    level.player maps\_utility::play_sound_on_entity( "mus_favelaescape_fixedfall_fail", "fixedfall_music_done" );
}

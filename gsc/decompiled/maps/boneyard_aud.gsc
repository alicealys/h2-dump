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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_boneyard_global" );
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
    soundscripts\_snd::snd_register_message( "start_intro_checkpoint", ::_id_CCA0 );
    soundscripts\_snd::snd_register_message( "start_road_checkpoint", ::_id_C7A0 );
    soundscripts\_snd::snd_register_message( "start_flyby_checkpoint", ::_id_D359 );
    soundscripts\_snd::snd_register_message( "start_higround_checkpoint", ::_id_ACAB );
    soundscripts\_snd::snd_register_message( "start_ride_checkpoint", ::_id_D5C1 );
    soundscripts\_snd::snd_register_message( "start_ride_end_checkpoint", ::_id_BB99 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_ac130_passby", ::_id_B27D );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_ac130_passby", ::_id_AFEC );
    soundscripts\_snd::snd_register_message( "aud_start_mix_makarov_discussion", ::_id_B9F5 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_makarov_discussion", ::_id_C087 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_jeep_ride", ::_id_B9D5 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_driver_gets_shot", ::_id_CE9F );
    soundscripts\_snd::snd_register_message( "aud_plane_rattle_sounds", ::_id_C8FF );
    soundscripts\_snd::snd_register_message( "aud_start_evac_sequence", ::_id_D0AE );
    soundscripts\_snd::snd_register_message( "aud_start_level_fadeout", ::_id_B7BB );
    soundscripts\_snd::snd_register_message( "aud_bone_intro_littlebirds", ::aud_bone_intro_littlebirds );
    soundscripts\_snd::snd_register_message( "aud_bone_front_suburban", ::aud_bone_front_suburban );
    soundscripts\_snd::snd_register_message( "aud_bone_road_littlebird", ::aud_bone_road_littlebird );
    soundscripts\_snd::snd_register_message( "aud_bone_road_laatpv", ::aud_bone_road_laatpv );
    soundscripts\_snd::snd_register_message( "aud_bone_road_pickup", ::aud_bone_road_pickup );
    soundscripts\_snd::snd_register_message( "aud_bone_afterslide_suburban", ::aud_bone_afterslide_suburban );
    soundscripts\_snd::snd_register_message( "aud_bone_afterslide_turret_suburban", ::aud_bone_afterslide_turret_suburban );
    soundscripts\_snd::snd_register_message( "aud_bone_afterslide_btr", ::aud_bone_afterslide_btr );
    soundscripts\_snd::snd_register_message( "aud_start_jeep_wait_for_player", ::_id_A812 );
    soundscripts\_snd::snd_register_message( "aud_start_uaz_reverse", ::_id_C5BC );
    soundscripts\_snd::snd_register_message( "aud_start_uaz_180", ::_id_CC1E );
    soundscripts\_snd::snd_register_message( "aud_start_uaz_roll_on_plane", ::_id_CB8C );
    soundscripts\_snd::snd_register_message( "aud_start_uaz_break_behind_plane", ::_id_C7E0 );
    soundscripts\_snd::snd_register_message( "aud_start_uaz_accel_behind_plane", ::_id_BE5D );
    soundscripts\_snd::snd_register_message( "scn_crashing_suburban_01_arrival", ::scn_crashing_suburban_01_arrival );
    soundscripts\_snd::snd_register_message( "scn_crashing_suburban_01_crash", ::scn_crashing_suburban_01_crash );
    soundscripts\_snd::snd_register_message( "scn_bone_side_tbone_truck_01", ::scn_bone_side_tbone_truck_01 );
    soundscripts\_snd::snd_register_message( "scn_bone_side_tbone_truck_02", ::scn_bone_side_tbone_truck_02 );
    soundscripts\_snd::snd_register_message( "scn_ride_following_suburban_passby_01", ::scn_ride_following_suburban_passby_01 );
    soundscripts\_snd::snd_register_message( "scn_ride_following_suburban_crash_01", ::scn_ride_following_suburban_crash_01 );
    soundscripts\_snd::snd_register_message( "scn_ride_jeep_passby_front_01", ::scn_ride_jeep_passby_front_01 );
    soundscripts\_snd::snd_register_message( "scn_ride_suburban_front_passby_01", ::scn_ride_suburban_front_passby_01 );
    soundscripts\_snd::snd_register_message( "scn_ride_suburban_front_passby_02", ::scn_ride_suburban_front_passby_02 );
    soundscripts\_snd::snd_register_message( "scn_ride_suburban_sniper_arrival_01", ::scn_ride_suburban_sniper_arrival_01 );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_CCA0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C7A0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D359( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_ACAB( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D5C1( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior2" );
}

_id_BB99( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior2" );
}

_id_B27D()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_ac130_passby" );
}

_id_AFEC()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_ac130_passby" );
}

_id_B9F5()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_makarov_discussion" );
}

_id_C087()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_makarov_discussion" );
}

_id_B9D5()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_jeep_ride" );
    maps\_utility::_id_D296( 0 );
}

_id_CE9F()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_jeep_ride" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_driver_gets_shot" );
}

_id_D0AE()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "evac_mix" );
    soundscripts\_snd_filters::snd_fade_in_filter( "interior_plane_filter", 0.5 );
}

_id_B7BB()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "boneyard_fade_to_black_end_mix" );
}

aud_bone_intro_littlebirds( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0.script_disablevehicleaudio = 1;

    if ( isdefined( var_0.script_noteworthy ) )
        var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_bone_" + var_0.script_noteworthy + "_lp", undefined, 1 );
}

aud_bone_intro_btr80()
{
    self vehicle_turnengineoff();
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_intro_btr80" );
}

aud_bone_scene_a_suburban()
{
    self vehicle_turnengineoff();
    thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_scene_a_suburban" );
}

aud_bone_front_suburban( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_front_suburban" );
}

aud_bone_road_littlebird( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0.script_disablevehicleaudio = 1;
    var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_bone_road_littlebird_lp", undefined, 1 );
}

aud_bone_road_laatpv( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_road_laatpv" );
    common_scripts\utility::flag_wait( "laatpv_destroy" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_road_laatpv_reverse" );
}

aud_bone_road_pickup( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_road_pickup" );
}

aud_bone_afterslide_suburban( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_suburban" );
    common_scripts\utility::flag_wait( "flyby_suburban_go" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_suburban_p2" );
}

aud_bone_afterslide_turret_suburban( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_turret_suburban" );
    common_scripts\utility::flag_wait( "suburban_target_btr80" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_turret_suburban_p1" );
    wait 1.0;
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p2", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_turret_suburban_p2" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p3", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_turret_suburban_p3" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p4", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_turret_suburban_p4" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p5", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_turret_suburban_p5" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_p6", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_turret_suburban_p6" );
    var_1 = getvehiclenode( "scn_bone_afterslide_turret_suburban_idle", "script_noteworthy" );
    var_1 waittill( "trigger" );
    var_0 thread maps\_utility::play_loop_sound_on_tag( "scn_bone_afterslide_turret_suburban_idle", undefined, 1 );
}

aud_bone_afterslide_btr( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_1 = spawn( "script_origin", self.origin );
    var_1 linkto( self );
    var_1 playloopsound( "scn_bone_afterslide_btr_idle" );
    var_1 setvolume( 0, 0 );
    common_scripts\utility::flag_wait( "flyby_suburban_go" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_btr" );
    var_2 = getvehiclenode( "scn_bone_afterslide_btr_p1", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_btr_p1" );
    var_2 = getvehiclenode( "scn_bone_afterslide_btr_p2", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_1 setvolume( 1, 1 );
    common_scripts\utility::flag_wait( "higround_ascend" );
    var_1 setvolume( 0, 1 );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_btr_p2" );
    var_2 = getvehiclenode( "scn_bone_afterslide_btr_p3", "script_noteworthy" );
    var_2 waittill( "trigger" );
    var_1 setvolume( 1, 1 );
    common_scripts\utility::flag_wait( "higround_2" );
    var_1 setvolume( 0, 0.5 );
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_bone_afterslide_btr_p3" );
    wait 0.5;
    var_1 setvolume( 1, 2 );
}

_id_A812( var_0 )
{
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_boneyard_uaz_skid_before_reverse", "TAG_HOOD" );
}

_id_C5BC( var_0 )
{
    common_scripts\utility::flag_wait( "uaz_drive" );
    soundscripts\_audio_mix_manager::mm_add_submix( "uaz_reverse_mix" );
    var_1 = var_0 gettagorigin( "TAG_HOOD" );
    var_2 = spawn( "script_origin", var_1 );
    var_2 linkto( var_0 );
    var_2 playsound( "scn_boneyard_uaz_engine_reverse" );
    common_scripts\utility::flag_wait( "blow_tanker_first" );
    var_2 setvolume( 0, 0.5 );
    soundscripts\_audio_mix_manager::mm_clear_submix( "uaz_reverse_mix" );
    wait 0.5;
    var_2 playrumbleonentity();
    wait 0.1;
    var_2 delete();
}

_id_CC1E( var_0 )
{
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_boneyard_uaz_180", "TAG_HOOD" );
}

_id_CB8C( var_0 )
{
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_boneyard_uaz_susp_bump", "TAG_HOOD" );
}

_id_C7E0( var_0 )
{
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_boneyard_uaz_brake_behind_plane", "TAG_HOOD" );
}

_id_BE5D( var_0 )
{
    wait 1.0;
    var_0 maps\_utility::play_sound_on_tag_endon_death( "scn_boneyard_uaz_accel_behind_plane", "TAG_HOOD" );
}

scn_crashing_suburban_01_arrival( var_0 )
{
    var_0 vehicle_turn_engine_off();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_crashing_suburban_01_arrival" );
}

scn_crashing_suburban_01_crash( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_crashing_suburban_01_crash" );
}

scn_ride_following_suburban_passby_01( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_ride_following_suburban_passby_01" );
}

scn_ride_following_suburban_crash_01( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_ride_following_suburban_crash_01" );
}

scn_ride_jeep_passby_front_01( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_ride_jeep_passby_front_01" );
}

scn_ride_suburban_front_passby_01( var_0 )
{
    while ( distancesquared( level.player.origin, var_0.origin ) > 9000000 )
        wait 0.1;

    var_0 thread maps\_utility::play_sound_on_entity( "scn_ride_suburban_front_passby_01" );
}

scn_ride_suburban_front_passby_02( var_0 )
{
    while ( distancesquared( level.player.origin, var_0.origin ) > 9000000 )
        wait 0.1;

    var_0 thread maps\_utility::play_sound_on_entity( "scn_ride_suburban_front_passby_02" );
}

scn_ride_suburban_sniper_arrival_01( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_ride_suburban_sniper_arrival_01" );
}

scn_bone_side_tbone_truck_01( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_bone_side_tbone_truck_01" );
}

scn_bone_side_tbone_truck_02( var_0 )
{
    var_0 thread maps\_utility::play_sound_on_entity( "scn_bone_side_tbone_truck_02" );
}

_id_C800()
{
    common_scripts\utility::flag_wait( "introscreen_activate" );
    soundscripts\_audio_mix_manager::mm_add_submix( "fade_in_level_mix" );
    common_scripts\utility::flag_wait( "introscreen_remove_submix" );
    wait 1.5;
    soundscripts\_audio_mix_manager::mm_clear_submix( "fade_in_level_mix" );
}

_id_C8FF()
{
    var_0 = getentarray( "rattle1", "targetname" );
    var_1 = getentarray( "rattle2", "targetname" );

    foreach ( var_3 in var_0 )
        var_3 thread maps\_utility::play_sound_on_entity( "emt_boneyard_inside_plane_rattle" );

    foreach ( var_3 in var_1 )
        var_3 thread maps\_utility::play_sound_on_entity( "emt_boneyard_inside_plane_rattle_2" );
}

_id_CAB7()
{
    vehicle_turn_engine_off();
    var_0 = self gettagorigin( "TAG_HOOD" );
    var_1 = self gettagorigin( "TAG_WHEEL_BACK_LEFT" );
    level.aud._id_D44B = spawn( "script_origin", var_0 );
    level.aud._id_BA00 = spawn( "script_origin", var_1 );
    level.aud._id_CE61 = spawn( "script_origin", var_0 );
    level.aud._id_D44B linkto( self );
    level.aud._id_BA00 linkto( self );
    level.aud._id_CE61 linkto( self );
    level.aud._id_D44B playloopsound( "scn_boneyard_uaz_engine_front" );
    level.aud._id_BA00 playloopsound( "scn_boneyard_uaz_engine_back" );
    level.aud._id_CE61 playloopsound( "scn_boneyard_uaz_idle_front" );
    thread _id_C06A();
    self waittill( "death" );
    level.aud._id_D44B stopsounds();
    level.aud._id_BA00 stopsounds();
    level.aud._id_CE61 stopsounds();
    wait 0.1;
    level.aud._id_D44B delete();
    level.aud._id_BA00 delete();
    level.aud._id_CE61 delete();
}

_id_C06A()
{
    self endon( "death" );
    var_0 = 60;

    for (;;)
    {
        var_1 = self vehicle_getspeed();
        var_2 = clamp( 1 * var_1 / var_0, 0, 1 );
        level.aud._id_D44B setvolume( var_2, 0.1 );
        level.aud._id_BA00 setvolume( var_2, 0.1 );
        level.aud._id_CE61 setvolume( 1.0 - var_2, 0.1 );
        wait 0.1;
    }
}

vehicle_turn_engine_off()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

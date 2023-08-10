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
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_af_chase_global" );
}

init_snd_flags()
{

}

init_globals()
{
    level.aud._id_B35B = 250;
    level.aud._id_BC81 = 60;
    level._id_BF47 = 0;
}

launch_threads()
{
    thread _id_CCF9();
    thread _id_B4E5();
    thread _id_A8A6();
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
    soundscripts\_snd::snd_register_message( "start_default_checkpoint", ::_id_ACA6 );
    soundscripts\_snd::snd_register_message( "start_wakeup_after_crash_checkpoint", ::_id_D173 );
    soundscripts\_snd::snd_register_message( "start_turnbuckle_checkpoint", ::_id_B054 );
    soundscripts\_snd::snd_register_message( "start_shepherd_gloats_checkpoint", ::_id_B0CA );
    soundscripts\_snd::snd_register_message( "start_gun_drop_checkpoint", ::_id_ACAD );
    soundscripts\_snd::snd_register_message( "start_gun_crawl_checkpoint", ::_id_BCD5 );
    soundscripts\_snd::snd_register_message( "start_gun_kick_checkpoint", ::_id_BC3C );
    soundscripts\_snd::snd_register_message( "start_wounded_show_checkpoint", ::_id_AC90 );
    soundscripts\_snd::snd_register_message( "start_knife_pullout_checkpoint", ::_id_AA76 );
    soundscripts\_snd::snd_register_message( "start_knife_kill_checkpoint", ::_id_B460 );
    soundscripts\_snd::snd_register_message( "start_price_wakeup_checkpoint", ::_id_C812 );
    soundscripts\_snd::snd_register_message( "start_walkoff_checkpoint", ::_id_D2E0 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_nofail_checkpoint", ::_id_AA65 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_begin_checkpoint", ::_id_CEC6 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_lake_checkpoint", ::_id_B69C );
    soundscripts\_snd::snd_register_message( "start_boatdrive_lake_mid_checkpoint", ::_id_C693 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_rapids_checkpoint", ::_id_A961 );
    soundscripts\_snd::snd_register_message( "start_boatdrive_river_below_rapids_checkpoint", ::_id_D09B );
    soundscripts\_snd::snd_register_message( "start_boatdrive_end_checkpoint", ::_id_BF81 );
    soundscripts\_snd::snd_register_message( "start_debug_boatdrive_checkpoint", ::_id_D45A );
    soundscripts\_snd::snd_register_message( "aud_reverse_engine_plr_boat", ::_id_C7B8 );
    soundscripts\_snd::snd_register_message( "aud_stop_mix_steady_boat", ::_id_CE08 );
    soundscripts\_snd::snd_register_message( "aud_start_mix_seaknight_down", ::_id_C6A0 );
    soundscripts\_snd::snd_register_message( "stop_heli_passby_submix", ::_id_CF23 );
    soundscripts\_snd::snd_register_message( "aud_start_heli_passby_01", ::_id_B266 );
    soundscripts\_snd::snd_register_message( "aud_rapids_littlebird_passby1", ::_id_CC3B );
    soundscripts\_snd::snd_register_message( "start_over_waterfall", ::_id_AEEC );
    soundscripts\_snd::snd_register_message( "start_truck_arrival_01", ::_id_C1CA );
}

zone_handler( var_0, var_1 )
{

}

music_handler( var_0, var_1 )
{

}

_id_ACA6( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "corridor" );
}

_id_D173( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B054( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B0CA( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_ACAD( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BCD5( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_BC3C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AC90( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AA76( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_B460( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_C812( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_D2E0( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "exterior" );
}

_id_AA65( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "corridor" );
}

_id_CEC6( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "tunnel" );
}

_id_B69C( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "tunnel_small" );
}

_id_C693( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "lake" );
}

_id_A961( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "lake" );
}

_id_D09B( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "rapids" );
}

_id_BF81( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "rapids" );
}

_id_D45A( var_0 )
{
    soundscripts\_audio_zone_manager::azm_start_zone( "tunnel" );
}

_id_CE08()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_steady_boat" );
}

_id_C6A0()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_seaknight_down" );
}

_id_A8A6()
{
    var_0 = getent( "trigger_out_of_caves", "targetname" );
    var_0 waittill( "trigger", var_1 );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_enter_lake" );
    wait 1.0;
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_enter_lake" );
}

_id_C1CA( var_0 )
{
    var_0 vehicle_turnengineoff();
    var_0.script_disablevehicleaudio = 1;
    var_0 thread maps\_utility::play_sound_on_tag_endon_death( "scn_truck_arrival_01" );
}

_id_C66D()
{
    level._id_B538 endon( "zodiac_fall_over_waterfall" );
    level._id_B538 endon( "death" );
    var_0 = 0;

    for (;;)
    {
        var_1 = level._id_B538 vehicle_getspeed();

        if ( isdefined( var_1 ) )
        {
            if ( var_1 >= 20 && !var_0 )
            {
                soundscripts\_audio_mix_manager::mm_add_submix( "mix_zodiac_high_speed" );
                var_0 = 1;
            }
            else if ( var_1 < 20 && var_0 )
            {
                soundscripts\_audio_mix_manager::mm_clear_submix( "mix_zodiac_high_speed" );
                var_0 = 0;
            }
        }

        wait 0.5;
    }
}

_id_C715()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self.script_disablevehicleaudio = 1;
}

_id_B169()
{
    wait 0.1;
    thread maps\_utility::play_sound_on_entity( "scn_sheperd_boat_start" );
}

_id_CCF9()
{
    var_0 = getentarray( "rocks_falling", "script_noteworthy" );
    common_scripts\utility::flag_wait( "distant_explosion" );
    level.player playsound( "scn_afchase_explosion_far_front" );
    wait 0.5;

    foreach ( var_2 in var_0 )
        var_2 thread maps\_utility::play_sound_on_entity( "emt_afchase_explosion_far_debris" );
}

_id_BB8C()
{
    if ( isdefined( self._id_B8B2 ) && gettime() < self._id_B8B2 )
        return;

    self._id_B8B2 = gettime() + 500;
    var_0 = spawn( "script_origin", self.origin );
    var_0 linkto( self );
    var_1 = common_scripts\utility::ter_op( self == level._id_B538, "zodiac_jumping_one_shot_plr", "zodiac_jumping_one_shot" );
    var_0 playsound( var_1 );
    common_scripts\utility::waittill_any_timeout( 2.5, "veh_landed", "death" );
    var_2 = 1.2;
    var_0 setvolume( 0, var_2 );
    var_0 setpitch( 0.5, var_2 );
    wait( var_2 );
    var_0 playrumbleonentity();
    wait 0.1;
    var_0 delete();
}

_id_B4E5()
{
    thread _id_AF3B( "metal_ramp", "scn_afchase_metal_ramp_jump" );
    thread _id_AF3B( "wood_ramp", "scn_afchase_ramp_jump" );
}

_id_AF3B( var_0, var_1 )
{
    common_scripts\utility::flag_wait( var_0 );
    level.player playsound( var_1 );
}

_id_B1B8()
{
    wait 0.1;
    var_0 = spawn( "script_origin", self.origin + vectornormalize( anglestoright( self.angles ) ) * 90 );
    var_1 = spawn( "script_origin", self.origin + vectornormalize( anglestoright( self.angles ) ) * -90 );
    var_0 linkto( self );
    var_1 linkto( self );
    var_2 = "zodiac_player_wind_loop";
    var_0 playloopsound( var_2 );
    var_1 playloopsound( var_2 );
    thread _id_AF24( var_0, var_2 );
    thread _id_AF24( var_1, var_2 );
    thread _id_ADA2( var_0, 1 );
    thread _id_ADA2( var_1 );
}

_id_ADA2( var_0, var_1 )
{
    self endon( "death" );

    for (;;)
    {
        var_2 = vectornormalize( anglestoright( self.angles ) );

        if ( !isdefined( var_1 ) || var_1 == 0 )
            var_2 *= -1;

        var_3 = self.origin + ( 0, 0, 50 );
        var_4 = bullettrace( var_3, var_3 + var_2 * level.aud._id_B35B, 0, self );

        if ( var_4["fraction"] < 1 )
        {
            var_5 = self vehicle_getspeed();
            var_6 = var_5 / level.aud._id_BC81;
            var_0 setvolume( ( 1 - var_4["fraction"] ) * var_6, 0.1 );
        }
        else
            var_0 setvolume( 0, 0.1 );

        wait 0.1;
    }
}

_id_AF24( var_0, var_1 )
{
    self waittill( "death" );
    var_0 stopsounds( var_1 );
    var_0 delete();
}

_id_CF23()
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "mix_heli_passby" );
}

_id_B266( var_0 )
{
    var_0 thread _id_C715();
    var_0 thread maps\_utility::play_sound_on_entity( "scn_helicopter_01_passby" );
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_heli_passby" );
    wait 1;
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "scn_helicopter_01_lp" );
}

_id_CC3B( var_0 )
{
    var_0 thread _id_C715();
    var_0 thread common_scripts\utility::play_loop_sound_on_entity( "scn_afchase_rapids_littlebird_passby1" );
}

_id_C7B8()
{
    soundscripts\_audio_mix_manager::mm_add_submix( "mix_steady_boat" );
    level._id_B538 vehicle_turnengineoff();
    level._id_B538.script_disablevehicleaudio = 1;
    level._id_B538 playsound( "scn_afchase_plr_boat_switch_reverse" );
}

_id_AEEC()
{
    level._id_B538 notify( "zodiac_fall_over_waterfall" );
    soundscripts\_audio_mix_manager::mm_add_submix( "over_waterfall_mix" );
    level._id_B538 _meth_8561( "scn_afchase_plr_boat_switch_reverse" );
    level._id_B538 thread maps\_utility::play_sound_on_tag_endon_death( "scn_boat_falling_over_waterfall" );
    level.player thread maps\_utility::play_sound_on_entity( "scn_player_falling_over_waterfall" );
}

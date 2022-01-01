// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID8467();
    _ID19806();
    _ID19703();
    _ID22056();
    _ID22043();
    thread _ID22042();
    _ID9159();
    _ID28366();
    _ID29419();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_dcburning_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID54133();
    thread _ID46394();
}

_ID22043()
{

}

_ID22042()
{
    wait 0.1;
}

_ID9159()
{

}

_ID28366()
{

}

_ID29419()
{
    _ID42475::_ID34640( "start_debug_checkpoint", ::_ID54011 );
    _ID42475::_ID34640( "start_default_checkpoint", ::_ID44198 );
    _ID42475::_ID34640( "start_elevator_bottom_checkpoint", ::_ID44746 );
    _ID42475::_ID34640( "start_elevator_top_checkpoint", ::_ID54028 );
    _ID42475::_ID34640( "start_crows_nest_checkpoint", ::_ID45350 );
    _ID42475::_ID34640( "start_crows_nest_armor_checkpoint", ::_ID49644 );
    _ID42475::_ID34640( "start_barrett_checkpoint", ::_ID48839 );
    _ID42475::_ID34640( "start_to_roof_checkpoint", ::_ID49369 );
    _ID42475::_ID34640( "start_roof_checkpoint", ::_ID49873 );
    _ID42475::_ID34640( "start_heli_ride2_checkpoint", ::_ID45610 );
    _ID42475::_ID34640( "start_crash_checkpoint", ::_ID54460 );
    _ID42475::_ID34640( "start_music_intropeak_mix", ::_ID43362 );
    _ID42475::_ID34640( "start_heli_crash_black_screen", ::_ID44038 );
    _ID42475::_ID34640( "stop_heli_crash_black_screen", ::_ID51612 );
    _ID42475::_ID34640( "start_space_transition_in_mix", ::start_space_transition_in_mix );
    _ID42475::_ID34640( "start_m1a1_owned_idle", ::_ID45758 );
    _ID42475::_ID34640( "start_player_heli_landing", ::_ID53919 );
    _ID42475::_ID34640( "start_heli_balcony_passby", ::_ID44652 );
    _ID42475::_ID34640( "start_player_on_turret", ::_ID49127 );
    _ID42475::_ID34640( "start_player_off_turret", ::_ID45959 );
    _ID42475::_ID34640( "start_missile_earthquake", ::_ID52163 );
    _ID42475::_ID34640( "start_crowsnest_dialog_mix", ::_ID49292 );
    _ID42475::_ID34640( "stop_crowsnest_dialog_mix", ::_ID46944 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID54011( var_0 )
{
    _ID42474::_ID4669( "interior_bunker_small" );
}

_ID44198( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
}

_ID44746( var_0 )
{
    _ID42474::_ID4669( "interior_stone_entrance" );
}

_ID54028( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
}

_ID45350( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
}

_ID49644( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
}

_ID48839( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
}

_ID49369( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
}

_ID49873( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID45610( var_0 )
{
    _ID42474::_ID4669( "interior_heli" );
    _ID42465::_ID23797( "player_heli_03a_mix" );
}

_ID54460( var_0 )
{
    _ID42474::_ID4669( "interior_helicopter" );
}

_ID43362()
{
    wait 5;
    _ID42465::_ID23797( "music_intropeak_mix" );
    wait 81;
    _ID42465::_ID23801( "music_intropeak_mix" );
}

_ID45758( var_0 )
{
    var_0 _ID42237::_ID36516( "scn_m1a1_moving_01" );
    var_0 _ID42237::_ID27000( "m1a1_abrams_idle_close_loop", undefined, 0.5, 2 );
}

_ID53919( var_0 )
{
    level._ID53882 setpitch( 0.85, 5.0 );
    var_0 _ID42407::_ID27079( "scn_player_heli_landing" );
}

_ID44038()
{
    _ID42465::_ID23797( "heli_crash_black_screen_mix" );
    _ID42465::_ID23797( "heli_crash_shellshock_mix" );
    level._ID52945 notify( "stop soundscn_dcburning_plr_heli_dying_loop" );
    level._ID52945 _ID42237::_ID36516( "scn_dcburning_plr_heli_missile_hit_01" );
    level._ID52945 _ID42237::_ID36516( "scn_dcburning_plr_heli_damaged_loop" );
    level._ID794 thread _ID42407::_ID27079( "scn_dcburning_plr_heli_crash" );
    _ID42237::_ID14413( "obj_heli_ride_complete" );
    level._ID794 thread _ID42407::_ID27079( "scn_heli_intro" );
    _ID42474::_ID4669( "interior_helicopter" );
    _ID42490::_ID34526( "dcburning_plr_shellshock_filter", 2 );
    _ID42237::_ID14413( "notetrack_player_lowerhands" );
    wait 0.5;
    _ID42465::_ID23801( "heli_crash_shellshock_mix" );
    _ID42490::_ID34527( 2 );
    _ID42474::_ID4655( 0 );
}

_ID51612()
{
    _ID42465::_ID23801( "heli_crash_mix" );
    _ID42465::_ID23801( "heli_crash_black_screen_mix" );
    _ID42237::_ID14413( "notetrack_player_lowerhands" );
}

_ID44652( var_0 )
{
    _ID42465::_ID23797( "heli_pre_liftoff_mix" );
    var_0 _ID51203();
    var_0 _ID42407::_ID27081( "scn_heli_balcony_passby" );
}

_ID49127()
{
    level._ID794 thread _ID42407::_ID27079( "scn_dcburning_barret_player_grab_in" );
}

_ID45959()
{
    level._ID794 thread _ID42407::_ID27079( "scn_dcburning_barret_player_grab_out" );
}

_ID52163( var_0 )
{
    if ( _ID42237::_ID14385( "obj_commerce_defend_snipe_given" ) && !_ID42237::_ID14385( "player_roof_stairs_01" ) )
        _ID42237::_ID27077( "exp_artillery_underground_shake_crowsnest", ( -22208, 6986, 700 ) );
}

_ID49292()
{
    _ID42465::_ID23797( "crowsnest_dialog_mix" );
}

_ID46944()
{
    wait 7;
    _ID42465::_ID23801( "crowsnest_dialog_mix" );
}

start_space_transition_in_mix()
{
    _ID42465::_ID23797( "transition_space_in_mix" );
    wait 19;
    _ID42465::_ID23801( "transition_space_in_mix" );
}

_ID51203()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID52857( var_0, var_1 )
{
    var_2 = _ID42407::_ID16262( var_0, "script_noteworthy" );
    var_2 waittill( "trigger",  var_3  );
    var_3 thread _ID51203();
    var_3 thread _ID42407::_ID27001( var_1, undefined, 1 );
}

_ID54133()
{
    thread _ID52857( "helis_bunker_aud01", "scn_heli_bunker_01" );
    thread _ID52857( "helis_bunker_aud02", "scn_heli_bunker_02" );
    thread _ID52857( "helis_mezzanine_aud01", "scn_heli_mezzanine_01" );
    thread _ID52857( "helis_mezzanine_aud02", "scn_heli_mezzanine_02" );
    thread _ID52857( "helis_mezzanine_aud03", "scn_heli_mezzanine_03" );
}

_ID45803( var_0 )
{
    thread _ID51203();
    _ID42407::_ID27080( var_0, undefined, 1 );
}

_ID54551()
{
    _ID42474::_ID4669( "interior_heli" );
    wait 4;
    level._ID53882 setpitch( 1.05, 4.0 );
    thread _ID42407::_ID27080( "scn_player_heli_liftoff", undefined, 1 );
    _ID42465::_ID23801( "heli_pre_liftoff_mix" );
    _ID42465::_ID23797( "heli_liftoff_mix" );
    _ID42237::_ID14413( "player_heli_03a" );
    _ID42465::_ID23797( "player_heli_03a_mix" );
}

_ID53429()
{
    _ID42465::_ID23801( "player_heli_03a_mix" );
    _ID42465::_ID23797( "heli_1st_missile_hit_mix" );
    level._ID794 thread _ID42407::_ID27079( "scn_player_heli_hit_vo" );
    thread _ID42407::_ID27079( "scn_dcburning_plr_heli_missile_hit_01" );
    thread _ID42237::_ID27000( "scn_player_heli_first_hit_alarm" );
    _ID42237::_ID27000( "scn_dcburning_plr_heli_damaged_loop", undefined, 2, 0.5 );
}

_ID45199()
{
    _ID42465::_ID23801( "heli_1st_missile_hit_mix" );
    _ID42465::_ID23797( "heli_crash_mix" );
    _ID42407::_ID27079( "scn_dcburning_plr_heli_crash_ant" );
}

_ID50541()
{
    thread _ID51203();
    _ID42407::_ID27079( "scn_littlebird_crash_01" );
}

_ID48468()
{
    wait 0.1;
    var_0 = getentarray( "snd_play_metal_detector_sfx", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID45567();
}

_ID45567()
{
    for (;;)
    {
        self waittill( "trigger",  var_0  );
        _ID42407::_ID27079( "scn_metal_detector_sfx" );
        wait 1;
    }
}

_ID46717( var_0 )
{
    wait 0.1;
    self waittill( "taking_off" );
    _ID42237::_ID36516( "scn_dcburning_seaknight_idle_high" );
    thread _ID42407::_ID27001( var_0, undefined, 1 );
}

_ID53638( var_0 )
{
    wait 0.1;
    thread _ID42237::_ID27077( "slamraam_fire_npc", self._ID740 + ( 0, 0, 75 ) );
    wait 0.1;
    var_0 thread _ID42407::_ID27079( "slamraam_ignition_npc" );
    var_0 _ID42407::_ID27001( "slamraam_proj_loop_npc", undefined, 1 );
}

_ID48789()
{
    level waittill( "c4_placement_started" );
    level._ID794 playsound( "scn_dcburning_plant_c4" );
}

_ID50906()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
    level._ID53882 = spawn( "script_origin", self._ID740 );
    level._ID53882 linkto( self );
    level._ID53882 playloopsound( "scn_player_heli_idle" );
    thread _ID53628();
}

_ID53628()
{
    self waittill( "death" );
    level._ID53882 playrumbleonentity();
    wait 0.1;
    level._ID53882 delete();
}

littlebird_monument_idle_sound()
{
    thread _ID51203();
    _ID42407::_ID27001( "scn_dcburning_littlebird_engine_low", undefined, 1, 1, 0.5, 3 );
}

littlebird_monument_taking_off_sound()
{
    _ID42237::_ID36516( "scn_dcburning_littlebird_engine_low" );
    _ID42407::_ID27080( "scn_littlebird_monument_taking_off_01", undefined, 1 );
}

_ID46244( var_0 )
{
    thread _ID51203();
    _ID42407::_ID27001( var_0, undefined, 1 );
}

heli_array_scripted_sound()
{
    thread _ID51203();
    _ID42237::_ID14413( "player_approaching_monument" );
    _ID42407::_ID27001( self._ID43356, undefined, 1 );
}

_ID50701()
{
    self endon( "death" );
    _ID51203();
    thread _ID42407::_ID27001( "scn_mi28_trench_01", undefined, 1 );

    for (;;)
    {
        var_0 = distancesquared( level._ID794._ID740, self._ID740 );

        if ( var_0 < 2250000 )
        {
            thread _ID42407::_ID27081( "scn_mi28_trench_passby_01", undefined );
            return;
        }

        wait 0.1;
    }
}

_ID47644()
{
    thread _ID42237::_ID27000( "m1a1_abrams_idle_close_loop", undefined, 0.5, 0.5 );
}

_ID46612()
{
    _ID42237::_ID36516( "m1a1_abrams_idle_close_loop" );
    _ID42237::_ID27000( "scn_m1a1_moving_01", undefined, 0.5, 0.5 );
}

_ID47236()
{
    thread _ID42237::_ID27000( "slamraam_turret_spin", undefined, 1, 1 );
    wait 4;
    _ID42237::_ID36516( "slamraam_turret_spin" );
}

_ID43473()
{
    thread _ID42407::_ID27079( "scn_dcburning_npc_heli_crash_explo" );
    _ID42237::_ID27000( "scn_dcburning_npc_heli_crash_falling" );
}

_ID45750()
{
    _ID42237::_ID36516( "scn_dcburning_npc_heli_crash_falling" );
}

_ID46394()
{
    wait 0.1;
    var_0 = getent( "battlechatter_exit_bunker1", "targetname" );
    var_1 = getent( "battlechatter_exit_bunker2", "targetname" );
    var_2 = getent( "battlechatter_exit_bunker3", "targetname" );
    _ID42237::_ID14413( "player_leaving_bunker" );
    var_0 thread _ID42407::_ID27079( "TF_0_exposed_acquired_custom" );
    wait 2.4;
    var_1 thread _ID42407::_ID27079( "TF_1_exposed_breaking_custom" );
    wait 3.2;
    var_2 thread _ID42407::_ID27079( "TF_2_exposed_open_custom" );
}

intro_heli_sequence_snd()
{
    level._ID794 thread _ID42407::_ID27079( "scn_heli_intro" );
    _ID42465::_ID23797( "heli_crash_black_screen_mix" );
    _ID42465::_ID23797( "heli_crash_shellshock_mix" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "dcburning_plr_shellshock_filter", 0.5 );
    _ID42237::_ID14413( "notetrack_player_lowerhands" );
    wait 0.5;
    _ID42465::_ID23801( "heli_crash_shellshock_mix" );
    _ID42490::_ID34527( 2 );
    _ID42474::_ID4655( 0 );
}

crashsite_heli_rappel()
{
    var_0 = getent( "heli_crash_rappel_01", "script_noteworthy" );
    var_1 = getent( "heli_crash_rappel_02", "script_noteworthy" );
    var_0 _ID42407::_ID1947( ::crashsite_heli_rappel_snd, "scn_dcemp_heli1_arrival", "scn_dcemp_heli1_idle", "scn_dcemp_heli1_leaving" );
    var_1 _ID42407::_ID1947( ::crashsite_heli_rappel_snd, "scn_dcemp_heli2_arrival", "scn_dcemp_heli2_idle", "scn_dcemp_heli2_leaving", "heli_rappel_mix" );
}

crashsite_heli_rappel_snd( var_0, var_1, var_2, var_3 )
{
    thread _ID51203();
    self playsound( var_0 );

    if ( isdefined( var_3 ) )
        _ID42465::_ID23797( var_3 );

    self waittill( "near_goal" );
    thread _ID42237::_ID27000( var_1, undefined, 1, 1 );
    self waittill( "unloaded" );
    _ID42237::_ID36516( var_1 );
    self playsound( var_2 );

    if ( isdefined( var_3 ) )
        _ID42465::_ID23801( var_3 );
}

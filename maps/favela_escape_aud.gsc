// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
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
    _ID42465::_ID23797( "mix_favela_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID50324();
    _ID42495::_ID34653( "favela_escape_timescale_factor" );
    thread crucified_rojas_head_pos();
    thread solorun_pavelow_passby();
    thread chopper_jump_death_scream();
    thread _ID51200();
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
    _ID42475::_ID34640( "start_intro_checkpoint", ::_ID52384 );
    _ID42475::_ID34640( "start_street_checkpoint", ::_ID45162 );
    _ID42475::_ID34640( "start_street_mid_checkpoint", ::_ID48675 );
    _ID42475::_ID34640( "start_street_vista2_checkpoint", ::_ID47552 );
    _ID42475::_ID34640( "start_market_checkpoint", ::_ID52443 );
    _ID42475::_ID34640( "start_market_evac_checkpoint", ::_ID51891 );
    _ID42475::_ID34640( "start_market_evac_escape_checkpoint", ::_ID46653 );
    _ID42475::_ID34640( "start_roofrun_checkpoint", ::_ID51701 );
    _ID42475::_ID34640( "start_roofrun_bigjump_checkpoint", ::_ID50912 );
    _ID42475::_ID34640( "start_solorun_checkpoint", ::_ID46549 );
    _ID42475::_ID34640( "start_solorun_rooftops_checkpoint", ::_ID47033 );
    _ID42475::_ID34640( "start_solorun_chopper_checkpoint", ::_ID51489 );
    _ID42475::_ID34640( "start_fade_out_level", ::_ID52274 );
    _ID42475::_ID34640( "start_gate_truck_01", ::_ID44016 );
    _ID42475::_ID34640( "start_donut_truck_01", ::_ID47293 );
    _ID42475::_ID34640( "start_break_truck_01", ::_ID53518 );
    _ID42475::_ID34640( "stop_break_truck_01", ::_ID52226 );
    _ID42475::_ID34640( "start_gate_truck_02", ::_ID46494 );
    _ID42475::_ID34640( "start_market_truck_arrival", ::_ID53459 );
    _ID42475::_ID34640( "start_market_truck_break", ::_ID48202 );
    _ID42475::_ID34640( "start_evac_fakefire_rpgs", ::start_evac_fakefire_rpgs );
    _ID42475::_ID34640( "stop_evac_fakefire_rpgs", ::stop_evac_fakefire_rpgs );
    _ID42475::_ID34640( "start_player_normal_fall", ::_ID44345 );
    _ID42475::_ID34640( "start_player_bigjump", ::_ID45138 );
    _ID42475::_ID34640( "start_player_recovery_done", ::_ID53862 );
    _ID42475::_ID34640( "start_market_chopper_distant", ::_ID46203 );
    _ID42475::_ID34640( "start_bird_startle_flyaway_01", ::_ID43014 );
    _ID42475::_ID34640( "start_bird_startle_flyaway_02", ::_ID52752 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID52384( var_0 )
{
    _ID42474::_ID4669( "exterior_shanty_intro" );
}

_ID45162( var_0 )
{
    _ID42474::_ID4669( "exterior" );
    _ID42407::_ID24587( "mus_favelaescape_combat" );
}

_ID48675( var_0 )
{
    _ID42474::_ID4669( "exterior_edge" );
    _ID42407::_ID24587( "mus_favelaescape_combat" );
}

_ID47552( var_0 )
{
    _ID42474::_ID4669( "exterior_shanty_street" );
    _ID42407::_ID24587( "mus_favelaescape_combat" );
}

_ID52443( var_0 )
{
    _ID42474::_ID4669( "exterior_edge" );
    _ID42407::_ID24587( "mus_favelaescape_combat" );
}

_ID51891( var_0 )
{
    _ID42474::_ID4669( "exterior_shanty_market" );
    _ID42407::_ID24587( "mus_favelaescape_combat" );
}

_ID46653( var_0 )
{
    _ID42474::_ID4669( "exterior_soccer_field" );
}

_ID51701( var_0 )
{
    _ID42474::_ID4669( "exterior_roof_alley" );
}

_ID50912( var_0 )
{
    _ID42474::_ID4669( "exterior_roof" );
    _ID42407::_ID24587( "mus_favelaescape_waveoff" );
}

_ID46549( var_0 )
{
    _ID42474::_ID4669( "exterior_shanty_street" );
    _ID42407::_ID24587( "mus_favelaescape_finalrun" );
    _ID42465::_ID23797( "solo_run_mix" );
}

_ID47033( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    _ID42407::_ID24587( "mus_favelaescape_finalrun" );
}

_ID51489( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    _ID42407::_ID24587( "mus_favelaescape_finalrun" );
}

_ID50271()
{
    _ID42474::_ID4669( "interior_vehicle_open" );
}

_ID44791()
{
    _ID42474::_ID4669( "exterior" );
}

_ID52274()
{
    _ID42465::_ID23797( "fade_out_level_mix" );
}

_ID44016( var_0 )
{
    var_0 thread _ID51834();
    var_0 _ID42407::_ID27080( "scn_favela_escape_truck_run_01", undefined, 1 );
}

_ID47293( var_0 )
{
    var_0._ID53322 = 0;
    var_0 thread _ID42407::_ID27001( "scn_favela_escape_truck_donut_01", undefined, 1, undefined, 0.5, 1 );
    var_0 waittill( "driver dead" );
    var_0._ID53322 = 1;

    if ( _ID42237::_ID14385( "start_truck_break" ) )
    {
        wait 0.2;
        var_0 thread _ID42237::_ID36516( "scn_favela_escape_truck_donut_01" );
        var_0 _ID42407::_ID27081( "scn_favela_escape_truck_interrupt_01" );
    }
    else
    {
        var_0 thread _ID42237::_ID36516( "scn_favela_escape_truck_donut_01" );
        var_0 _ID42407::_ID27081( "scn_favela_escape_truck_interrupt_01" );
    }
}

_ID53518( var_0 )
{
    if ( isdefined( var_0._ID53322 ) && !var_0._ID53322 )
    {
        var_0 thread _ID42237::_ID36516( "scn_favela_escape_truck_donut_01" );
        var_0 thread _ID42407::_ID27001( "scn_favela_escape_truck_break_01", undefined, 1, undefined, 1, 1 );
    }
}

_ID52226( var_0 )
{
    var_0 _ID42237::_ID36516( "scn_favela_escape_truck_break_01" );
}

_ID46494( var_0 )
{
    var_0 thread _ID51834();
    var_0 thread _ID42407::_ID27080( "scn_favela_escape_truck_run_02", undefined, 1 );
    _ID42237::_ID14413( "radiotower_escape_technical_2_arrival" );
    var_0 thread _ID42407::_ID27081( "scn_favela_escape_truck_break_02" );
}

_ID53459( var_0 )
{
    var_0 thread _ID51834();
    var_0 thread _ID42407::_ID27001( "scn_favela_escape_truck2_arrival", undefined, 1, undefined, 1, 1 );
}

_ID48202( var_0 )
{
    var_0 thread _ID42407::_ID27081( "scn_favela_escape_truck2_break" );
    wait 1.0;
    var_0 thread _ID42237::_ID36516( "scn_favela_escape_truck2_arrival" );
}

start_evac_fakefire_rpgs()
{
    _ID42465::_ID23797( "evac_fake_rpg_mix" );
}

stop_evac_fakefire_rpgs()
{
    _ID42465::_ID23801( "evac_fake_rpg_mix" );
}

_ID44345()
{
    thread favesc_falling_music_fail();
    _ID42465::_ID23797( "big_jump_mix" );
    wait 0.2;
    level.player playsound( "scn_player_jump_fail" );
}

_ID45138()
{
    _ID42465::_ID23797( "big_jump_mix" );
}

_ID53862()
{
    _ID42465::_ID23801( "big_jump_mix" );
    _ID42465::_ID23801( "friendly_fire_failed_mix" );
    _ID42465::_ID23797( "solo_run_mix" );
    thread footstep_player_additional_layer();
}

_ID46203( var_0 )
{
    wait 2.2;
    level._ID46358 = spawn( "script_origin", var_0.origin );
    var_1 = getent( "market_chopper_distant_destination", "targetname" );
    level._ID46358 thread _ID42237::_ID27000( "emt_fav_escape_heli_dist_circle_loop", undefined, 0.8, 2.0 );
    level._ID46358 moveto( var_1.origin, 7.0, 0.05, 0.05 );
}

_ID43014()
{
    var_0 = getent( "bird_flyaway_01_start", "targetname" );
    var_1 = getent( "bird_flyaway_01_end", "targetname" );
    var_0 thread _ID42407::_ID27079( "anml_bird_startle_flyaway" );
    var_0 moveto( var_1.origin, 3.5, 0.5, 0.05 );
}

_ID52752()
{
    var_0 = getent( "bird_flyaway_02_start", "targetname" );
    var_1 = getent( "bird_flyaway_02_end", "targetname" );
    var_0 thread _ID42407::_ID27079( "anml_bird_startle_flyaway" );
    var_0 moveto( var_1.origin, 3.0, 0.05, 0.05 );
}

_ID51200()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "fade_in_intro_mix" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    wait 0.6;
    _ID42465::_ID23801( "fade_in_intro_mix" );
}

_ID51834()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID43449()
{
    thread _ID51834();
    thread _ID42407::_ID27001( "scn_favela_escape_heli_roofrun_flyover_01", "main_rotor_jnt", 1, undefined, 0.5, 3.0 );
    self waittill( "reached_dynamic_path_end" );
    thread _ID42237::_ID36516( "scn_favela_escape_heli_roofrun_flyover_01" );
    thread _ID42407::_ID27001( "scn_favela_escape_heli_roofrun_flyover_idle", "main_rotor_jnt" );
    thread _ID42407::_ID27001( "scn_favela_escape_heli_roofrun_flyover_engine", "main_rotor_jnt" );
}

_ID44782()
{
    _ID42237::_ID14413( "solorun_chopper_move1" );
    thread _ID42407::_ID27080( "scn_favela_escape_heli_solorun_passby_01", "main_rotor_jnt", 1 );
}

_ID50228()
{
    thread _ID42407::_ID27001( "scn_favela_escape_heli_solorun_jump_distant", "main_rotor_jnt", 1, undefined, 0.5, 0.5 );
    _ID42237::_ID14413( "chopperjump_player_jump" );
    _ID42465::_ID23797( "final_jump_mix" );
}

_ID53534()
{
    thread _ID51834();
    thread _ID42407::_ID27001( "scn_favela_escape_fire_car_slope_01", undefined, 1, undefined, 1, 1 );
    _ID42465::_ID23797( "flaming_truck_mix" );
    self waittill( "reached_end_node" );
    thread _ID42407::_ID27080( "scn_favela_escape_fire_car_impact", undefined, undefined );
    _ID42465::_ID23801( "flaming_truck_mix" );
}

_ID53808()
{
    thread _ID51834();
    thread _ID42407::_ID27081( "scn_favela_escape_heli_flyover_market" );
}

_ID50324()
{
    var_0 = getent( "favela_escape_slide", "script_noteworthy" );
    var_0 waittill( "trigger",  var_1  );
    var_1 _ID42407::_ID27079( "scn_favela_escape_player_slide" );
}

_ID49609()
{
    thread _ID51834();
    thread _ID42407::_ID27079( "scn_favela_escape_heli_land" );
    wait 1;
    level._ID46358 _ID42237::_ID36516( "emt_fav_escape_heli_dist_circle_loop" );
    wait 2.5;
    level._ID46358 delete();
}

_ID43790()
{
    level.player playsound( "scn_favela_escape_bigjump_slomo_in" );
    level.player thread _ID42237::_ID27000( "scn_favela_escape_bigjump_slomo_lp", undefined, 1.0, 1.0 );
    _ID42465::_ID23797( "big_jump_slomo_mix" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "big_jump_slomo_filter", 0.5 );
    _ID42474::_ID4662( 1 );
    _ID42469::_ID30454( "slowmo" );
}

_ID52893()
{
    _ID42465::_ID23801( "big_jump_slomo_mix" );
    level.player _ID42237::_ID36516( "scn_favela_escape_bigjump_slomo_lp" );
    level.player playsound( "scn_favela_escape_bigjump_slomo_out" );
    _ID42490::_ID34527( 1 );
    _ID42474::_ID4655( 0 );
    _ID42474::_ID4662( 0 );
    _ID42469::_ID30454( "shanty" );
}

_ID51190( var_0 )
{
    wait 2.3;
    level._ID51527 thread maps\favela_escape_code::_ID10742( "favesc_gst_worksforme" );
    wait 3;
    _ID42237::_ID14402( "runpath_resume_dialogue" );
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
        level.player waittill( "foley",  var_0, var_1, var_2  );

        switch ( var_0 )
        {
            case "walk":
                level.player thread _ID42407::_ID27079( "scn_favela_escape_player_fs_layer_walk" );
                continue;
            case "run":
                level.player thread _ID42407::_ID27079( "scn_favela_escape_player_fs_layer_run" );
                continue;
            case "sprint":
                level.player thread _ID42407::_ID27079( "scn_favela_escape_player_fs_layer_sprint" );
                continue;
        }
    }
}

soap_hanging_up_phone( var_0 )
{
    if ( isdefined( var_0.payphone ) )
        var_0.payphone _ID42237::_ID27077( "scn_favela_escape_soap_intro_phone", var_0.payphone.origin + ( 0, 12, 50 ) );
}

solorun_pavelow_passby()
{
    wait 1;
    var_0 = getent( "solorun_pavelow_passby", "targetname" );
    var_0 _ID42407::_ID1947( ::solorun_pavelow_sounds );
}

solorun_pavelow_sounds()
{
    thread _ID51834();
    _ID42407::_ID27081( "scn_favela_escape_heli_solorun_passby_02" );
}

chopperjump_player_foley_sounds()
{
    thread _ID42407::_ID27081( "scn_favela_escape_end_arms" );
    wait 1.1;
    thread _ID42407::_ID27081( "scn_favela_escape_end_grab" );
}

chopper_jump_death_scream()
{
    wait 1;
    var_0 = getent( "trigger_death_scream", "targetname" );
    var_0 waittill( "trigger",  var_1  );

    if ( isplayernumber( var_1 ) )
        var_1 playsound( "scn_favela_escape_plr_fall_scream" );
}

favesc_falling_music_fail()
{
    _ID42407::_ID24584( 3 );
    level.player _ID42407::_ID27079( "mus_favelaescape_fixedfall_fail", "fixedfall_music_done" );
}

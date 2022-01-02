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
    _ID42465::_ID23797( "mix_airport_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID44130();
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
    _ID42475::_ID34575( "start_airport_nofail_checkpoint", ::_ID51889 );
    _ID42475::_ID34640( "start_intro_checkpoint", ::_ID52384 );
    _ID42475::_ID34640( "start_stairs_checkpoint", ::_ID45709 );
    _ID42475::_ID34640( "start_massacre_checkpoint", ::_ID43084 );
    _ID42475::_ID34640( "start_gate_checkpoint", ::_ID49228 );
    _ID42475::_ID34640( "start_basement_checkpoint", ::_ID54332 );
    _ID42475::_ID34640( "start_tarmac_checkpoint", ::_ID50190 );
    _ID42475::_ID34640( "start_escape_checkpoint", ::_ID43800 );
    _ID42475::_ID34640( "start_grigs_checkpoint", ::_ID45597 );
    _ID42475::_ID34640( "start_fade_out_level", ::_ID52274 );
    _ID42475::_ID34640( "start_fade_to_white_sequence", ::start_fade_to_white_sequence );
    _ID42475::_ID34640( "start_escape_kill_player_sequence", ::start_escape_kill_player_sequence );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p1", ::_ID52769 );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p2", ::_ID43468 );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p3", ::_ID43085 );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p4", ::_ID51076 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID51889( var_0 )
{
    _ID42474::_ID4669( "elevator" );
}

_ID52384( var_0 )
{
    _ID42474::_ID4669( "elevator" );
}

_ID45709( var_0 )
{
    _ID42474::_ID4669( "terminal" );
}

_ID43084( var_0 )
{
    _ID42474::_ID4669( "terminal" );
}

_ID49228( var_0 )
{
    _ID42474::_ID4669( "terminal" );
}

_ID54332( var_0 )
{
    _ID42474::_ID4669( "terminal" );
}

_ID50190( var_0 )
{
    _ID42474::_ID4669( "basement" );
}

_ID43800( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID45597( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID52274()
{
    _ID42465::_ID23797( "fade_out_level_mix" );
}

start_fade_to_white_sequence()
{
    _ID42465::_ID23797( "fade_to_white_mix" );
}

start_escape_kill_player_sequence()
{
    level.player thread _ID42237::_ID27000( "scn_player_get_shot_death_loop", undefined, 0.5, 2.0 );
    wait 8;
    level.player _ID42237::_ID36516( "scn_player_get_shot_death_loop" );
}

turn_off_vehicle_engine()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID44130()
{
    level endon( "basement_moveout2" );
    var_0 = _ID45466();
    var_1 = 0;
    _ID42237::_ID14413( "elevator_up_done" );
    wait 2.0;
    _ID46296( "airport_anc_nowboarding" );
    wait 5.0;

    for (;;)
    {
        wait(randomintrange( 20, 40 ));
        var_2 = var_0[var_1];
        var_1++;
        var_1 %= var_0.size;
        _ID46296( var_2 );
    }
}

_ID46296( var_0 )
{
    var_1 = getentarray( "airport_pa_system", "targetname" );

    foreach ( var_3 in var_1 )
    {
        var_3 thread _ID42407::_ID27079( "scn_pa_chimes" );
        var_3 playsound( var_0 );
    }
}

_ID45466()
{
    var_0 = [];
    var_0[var_0.size] = "airport_anc_cherubinis";
    var_0[var_0.size] = "airport_anc_giftshop";
    var_0[var_0.size] = "airport_anc_infocounter";
    var_0[var_0.size] = "airport_anc_meetparty";
    var_0[var_0.size] = "airport_anc_parking";
    var_0[var_0.size] = "airport_anc_security";
    var_0 = _ID42237::_ID3320( var_0 );
    return var_0;
}

_ID52769( var_0 )
{
    var_0 turn_off_vehicle_engine();
    var_0 thread _ID42407::_ID27079( "scn_tarmac_heli2_p1" );
}

_ID43468( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_tarmac_heli2_p2" );
}

_ID43085( var_0 )
{
    var_0 thread _ID42407::_ID27079( "scn_tarmac_heli2_p3" );
}

_ID51076( var_0 )
{
    var_0 _ID42407::_ID27079( "scn_tarmac_heli2_p4" );
}

start_tarmac_swat_van( var_0 )
{
    turn_off_vehicle_engine();
    thread _ID42407::_ID27081( var_0 );
}

start_emergency_convoy_arrival_sfx()
{
    var_0 = getent( "trig_emergency_convoy", "targetname" );
    var_0 waittill( "trigger" );
    var_1 = _ID42237::_ID16638( "scn_airport_emergency_arriving", "targetname" );
    thread _ID42237::_ID27077( "scn_airport_emergency_arriving", var_1.origin );
    var_2 = getent( "trig_emergency_convoy_group_6", "targetname" );
    var_2 waittill( "trigger" );
    var_1 = _ID42237::_ID16638( "scn_emergency_convoy_door_arriving", "targetname" );
    thread _ID42237::_ID27077( "scn_emergency_convoy_door_arriving", var_1.origin );
}

start_scripted_escape_van()
{
    turn_off_vehicle_engine();
    thread _ID42237::_ID27000( "scn_ambulance_idle_loop", undefined, 0.3, 0.8 );
    _ID42237::_ID14413( "ambulance_ready_to_leave" );
    _ID42237::_ID36516( "scn_ambulance_idle_loop" );
}

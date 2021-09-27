// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000E();
    _unknown_001B();
    _unknown_001F();
    _unknown_0023();
    _unknown_0029();
    thread _unknown_002D();
    _unknown_0034();
    _unknown_0038();
    _unknown_003C();
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
    thread _unknown_00D6();
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
    _ID42475::_ID34575( "start_airport_nofail_checkpoint", ::_unknown_00AF );
    _ID42475::_ID34640( "start_intro_checkpoint", ::_unknown_00BE );
    _ID42475::_ID34640( "start_stairs_checkpoint", ::_unknown_00CD );
    _ID42475::_ID34640( "start_massacre_checkpoint", ::_unknown_00DC );
    _ID42475::_ID34640( "start_gate_checkpoint", ::_unknown_00EB );
    _ID42475::_ID34640( "start_basement_checkpoint", ::_unknown_00FA );
    _ID42475::_ID34640( "start_tarmac_checkpoint", ::_unknown_0109 );
    _ID42475::_ID34640( "start_escape_checkpoint", ::_unknown_0118 );
    _ID42475::_ID34640( "start_grigs_checkpoint", ::_unknown_0127 );
    _ID42475::_ID34640( "start_fade_out_level", ::_unknown_0136 );
    _ID42475::_ID34640( "start_fade_to_white_sequence", ::_unknown_0145 );
    _ID42475::_ID34640( "start_escape_kill_player_sequence", ::_unknown_0153 );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p1", ::_unknown_01A7 );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p2", ::_unknown_01B8 );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p3", ::_unknown_01C7 );
    _ID42475::_ID34640( "aud_tarmac_heli2_passby_p4", ::_unknown_01D6 );
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
    level._ID794 thread _ID42237::_ID27000( "scn_player_get_shot_death_loop", undefined, 0.5, 2.0 );
    wait 8;
    level._ID794 _ID42237::_ID36516( "scn_player_get_shot_death_loop" );
}

turn_off_vehicle_engine()
{
    wait 0.1;
    self _meth_8295();
    self._ID31138 = 1;
}

_ID44130()
{
    level endon( "basement_moveout2" );
    var_0 = _unknown_0279();
    var_1 = 0;
    _ID42237::_ID14413( "elevator_up_done" );
    wait 2.0;
    _unknown_027F( "airport_anc_nowboarding" );
    wait 5.0;

    for (;;)
    {
        wait(_func_0B9( 20, 40 ));
        var_2 = var_0[var_1];
        var_1++;
        var_1 %= var_0.size;
        _unknown_029B( var_2 );
    }
}

_ID46296( var_0 )
{
    var_1 = _func_1A2( "airport_pa_system", "targetname" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 thread _ID42407::_ID27079( "scn_pa_chimes" );
        var_3 _meth_80A1( var_0 );
    }

    var_clear_2
    var_clear_0
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
    var_0 _unknown_02F4();
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
    _unknown_0328();
    thread _ID42407::_ID27081( var_0 );
}

start_emergency_convoy_arrival_sfx()
{
    var_0 = _func_1A1( "trig_emergency_convoy", "targetname" );
    var_0 waittill( "trigger" );
    var_1 = _ID42237::_ID16638( "scn_airport_emergency_arriving", "targetname" );
    thread _ID42237::_ID27077( "scn_airport_emergency_arriving", var_1._ID740 );
    var_2 = _func_1A1( "trig_emergency_convoy_group_6", "targetname" );
    var_2 waittill( "trigger" );
    var_1 = _ID42237::_ID16638( "scn_emergency_convoy_door_arriving", "targetname" );
    thread _ID42237::_ID27077( "scn_emergency_convoy_door_arriving", var_1._ID740 );
}

start_scripted_escape_van()
{
    _unknown_0388();
    thread _ID42237::_ID27000( "scn_ambulance_idle_loop", undefined, 0.3, 0.8 );
    _ID42237::_ID14413( "ambulance_ready_to_leave" );
    _ID42237::_ID36516( "scn_ambulance_idle_loop" );
}

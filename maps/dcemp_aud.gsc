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
    _ID42465::_ID23797( "mix_dcemp_global" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID52479();
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
    _ID42475::_ID34640( "start_iss_checkpoint", ::_ID50945 );
    _ID42475::_ID34640( "start_emp_checkpoint", ::_ID47569 );
    _ID42475::_ID34640( "start_street_checkpoint", ::_ID45162 );
    _ID42475::_ID34640( "start_corner_checkpoint", ::_ID48024 );
    _ID42475::_ID34640( "start_meetup_checkpoint", ::_ID43403 );
    _ID42475::_ID34640( "start_lobby_checkpoint", ::_ID51487 );
    _ID42475::_ID34640( "start_office_checkpoint", ::_ID47548 );
    _ID42475::_ID34640( "start_parking_checkpoint", ::_ID48130 );
    _ID42475::_ID34640( "start_plaza_checkpoint", ::_ID43766 );
    _ID42475::_ID34640( "start_tunnels_checkpoint", ::_ID51154 );
    _ID42475::_ID34640( "start_iss_ambience", ::_ID53337 );
    _ID42475::_ID34640( "stop_iss_ambience", ::_ID46689 );
    _ID42475::_ID34640( "start_exterior_ambience", ::_ID48883 );
    _ID42475::_ID34640( "stop_heli_crash_black_screen", ::_ID51612 );
    _ID42475::_ID34640( "start_building_shellshock_filter", ::start_building_shellshock_filter );
    _ID42475::_ID34640( "start_iss_fadeout_mix", ::start_iss_fadeout_mix );
    _ID42475::_ID34640( "start_jet_crash_mix", ::start_jet_crash_mix );
    _ID42475::_ID34640( "start_emp_mix", ::start_emp_mix );
    _ID42475::_ID34640( "start_space_transition_in_mix", ::start_space_transition_in_mix );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID52384( var_0 )
{
    _ID42474::_ID4669( "interior_helicopter" );
    _ID42465::_ID23797( "emt_rain_mix" );
}

_ID50945( var_0 )
{
    _ID42474::_ID4669( "exterior_space" );
    _ID42465::_ID23797( "emt_rain_mix" );
}

_ID47569( var_0 )
{
    _ID42474::_ID4669( "interior_heli_emp" );
    _ID42465::_ID23797( "emt_rain_mix" );
}

_ID45162( var_0 )
{
    _ID42474::_ID4669( "exterior" );
    _ID42465::_ID23797( "emt_rain_mix" );
}

_ID48024( var_0 )
{
    _ID42474::_ID4669( "interior_stone_open" );
    _ID42465::_ID23797( "emt_rain_mix" );
}

_ID43403( var_0 )
{
    _ID42474::_ID4669( "exterior" );
    _ID42465::_ID23797( "emt_rain_mix" );
}

_ID51487( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID47548( var_0 )
{
    _ID42474::_ID4669( "interior_hall" );
}

_ID48130( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
}

_ID43766( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID51154( var_0 )
{
    _ID42474::_ID4669( "exterior" );
}

_ID53337()
{
    _ID42474::_ID4669( "exterior_space" );
}

_ID46689()
{
    _ID42474::_ID4670( "exterior_space" );
    _ID42474::_ID4669( "interior_heli_emp" );
}

_ID48883()
{
    _ID42474::_ID4670( "interior_heli_emp" );
    _ID42474::_ID4669( "exterior" );
}

_ID51612()
{
    _ID42465::_ID23801( "heli_crash_black_screen_mix" );
    level._ID794 playsound( "scn_heli_intro_plr" );
}

start_building_shellshock_filter()
{
    thread start_shellshock_filter();
    _ID42465::_ID23801( "emp_sequence_mix" );
    _ID42465::_ID23797( "emp_building_shellshock_mix" );
    level._ID794 playsound( "scn_dcemp_emp_building_shellshock" );
    wait 2.5;
    _ID42465::_ID23801( "emp_building_shellshock_mix" );
}

start_iss_fadeout_mix()
{
    _ID42465::_ID23797( "iss_fadeout_mix" );
    wait 4;
    _ID42465::_ID23801( "iss_fadeout_mix" );
}

start_jet_crash_mix()
{
    _ID42465::_ID23797( "jet_crash_offscreen" );
    wait 8.5;
    _ID42465::_ID23801( "jet_crash_offscreen" );
}

start_emp_mix()
{
    _ID42465::_ID23797( "emp_sequence_mix" );
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

_ID52479()
{
    wait 1;
    _ID42237::_ID3350( getentarray( "amb_emitters_window", "targetname" ), _ID42237::_ID27000, "amb_emt_windows", undefined, undefined, 5 );
    _ID42237::_ID3350( getentarray( "amb_emitters_door", "targetname" ), _ID42237::_ID27000, "amb_emt_doors", undefined, undefined, 5 );
    _ID42237::_ID3350( getentarray( "amb_emitters_wall", "targetname" ), _ID42237::_ID27000, "amb_emt_walls", undefined, undefined, 5 );
    _ID42237::_ID14413( "start_rain_ambience" );
    _ID42237::_ID3350( getentarray( "amb_emitters_window", "targetname" ), ::amb_emitters_rain_transition, "amb_emt_windows_rain", "amb_emt_windows" );
    _ID42237::_ID3350( getentarray( "amb_emitters_door", "targetname" ), ::amb_emitters_rain_transition, "amb_emt_doors_rain", "amb_emt_doors" );
    _ID42237::_ID3350( getentarray( "amb_emitters_wall", "targetname" ), ::amb_emitters_rain_transition, "amb_emt_walls_rain", "amb_emt_walls" );
    level._ID794 thread _ID42237::_ID27000( "ambient_dcemp_heavy_rain", undefined, 10, undefined );
    _ID42465::_ID23801( "emt_rain_mix" );
    _ID42474::_ID4668( "exterior", "none", 10 );
}

amb_emitters_rain_transition( var_0, var_1 )
{
    thread _ID42237::_ID27000( var_0, undefined, 12, undefined );
    _ID42237::_ID36516( var_1 );
}

intro_heli_sequence_snd()
{
    level._ID794 thread _ID42407::_ID27079( "scn_heli_intro" );
    _ID42465::_ID23797( "heli_crash_black_screen_mix" );
    _ID42465::_ID23797( "heli_crash_shellshock_mix" );
    _ID42465::_ID23797( "emt_rain_mix" );
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "dcemp_plr_shellshock_filter", 0.5 );
    _ID42237::_ID14413( "notetrack_player_lowerhands" );
    wait 0.5;
    _ID42465::_ID23801( "heli_crash_shellshock_mix" );
    _ID42490::_ID34527( 2 );
    _ID42474::_ID4655( 0 );
}

start_shellshock_filter()
{
    _ID42474::_ID4655( 1 );
    _ID42490::_ID34526( "dcemp_plr_shellshock_filter", 0.5 );
    wait 2.5;
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

street_crash_heli_building()
{
    var_0 = getent( "street_crash_heli_building", "targetname" );
    var_0 playsound( "scn_dcemp_building_heli_crash_anticipation" );
}

iss_emp_exp_interrupt()
{
    _ID42465::_ID23797( "iss_emp_vo_interrupt_mix" );
    level._ID794 playsound( "scn_iss_emp_explosion" );
    level._ID794 playsound( "scn_dcemp_is_emp_comm_interrupt" );
    wait 8;
    _ID42465::_ID23801( "iss_emp_vo_interrupt_mix" );
}

runner_meetup_dialog()
{
    _ID42237::_ID14413( "foley_street_dialog_end" );
    wait 0.3;
    level._ID46628 _ID42407::_ID10805( "dcemp_ar3_whiskeyhotel" );
}

parking_foley_dialog()
{
    _ID42407::_ID10805( "dcemp_fly_moveintopos" );
    wait 0.2;
    _ID42237::_ID14402( "parking_dialog_resume" );
}

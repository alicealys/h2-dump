// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_0010();
    _unknown_002E();
    _unknown_0032();
    _unknown_0036();
    _unknown_0048();
    thread _unknown_004C();
    _unknown_0053();
    _unknown_0057();
    _unknown_005B();
    thread _unknown_0109();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_favela_global" );

    if ( _func_039( "beautiful_corner" ) == "1" || _func_039( "beautiful_corner_demo" ) == "1" )
    {
        _ID42474::_ID4669( "exterior_alley" );
        var_0 = _ID42407::_ID24586( "mus_favela_tension" );
        _ID42407::_ID24577( "mus_favela_tension", var_0 );
    }
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    if ( _func_039( "beautiful_corner" ) != "1" && _func_039( "beautiful_corner_demo" ) != "1" )
        thread _unknown_01A2();

    thread _unknown_01C8();
    thread _unknown_01F1();
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
    _ID42475::_ID34640( "start_street_checkpoint", ::_unknown_0133 );
    _ID42475::_ID34640( "start_chase_checkpoint", ::_unknown_0143 );
    _ID42475::_ID34640( "start_favela_checkpoint", ::_unknown_0153 );
    _ID42475::_ID34640( "start_torture_checkpoint", ::_unknown_0162 );
    _ID42475::_ID34640( "start_soccer_checkpoint", ::_unknown_0171 );
    _ID42475::_ID34640( "start_hilltop_checkpoint", ::_unknown_0180 );
    _ID42475::_ID34640( "start_trailer1_checkpoint", ::_unknown_018F );
    _ID42475::_ID34640( "start_trailer2_checkpoint", ::_unknown_019E );
    _ID42475::_ID34640( "start_trailer3_checkpoint", ::_unknown_01AD );
    _ID42475::_ID34640( "start_end_checkpoint", ::_unknown_01BC );
    _ID42475::_ID34640( "start_interior_vehicle_open", ::_unknown_01CB );
    _ID42475::_ID34640( "start_player_exit_vehicle", ::_unknown_01DD );
    _ID42475::_ID34640( "start_fade_out_level", ::_unknown_01F5 );
    _ID42475::_ID34640( "start_ending_sequence_mix", ::_unknown_0208 );
    _ID42475::_ID34640( "start_ending_slowmo", ::_unknown_0217 );
    _ID42475::_ID34640( "stop_ending_slowmo", ::_unknown_022A );
    _ID42475::_ID34640( "start_van_arrival", ::_unknown_0245 );
    _ID42475::_ID34640( "intro_plr_car_bump", ::_unknown_024B );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID45162( var_0 )
{
    _ID42474::_ID4669( "interior_vehicle" );
    _unknown_0282();
}

_ID47591( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
    _unknown_0291();
}

_ID49690( var_0 )
{
    _ID42474::_ID4669( "exterior_alley" );
}

_ID44890( var_0 )
{
    _ID42474::_ID4669( "exterior_alley" );
}

_ID52935( var_0 )
{
    _ID42474::_ID4669( "exterior_soccer" );
}

_ID49509( var_0 )
{
    _ID42474::_ID4669( "exterior_hill" );
}

_ID52676( var_0 )
{
    _ID42474::_ID4669( "exterior_hill" );
}

_ID45299( var_0 )
{
    _ID42474::_ID4669( "exterior_soccer" );
}

_ID47768( var_0 )
{
    _ID42474::_ID4669( "exterior_shanty" );
}

_ID45096( var_0 )
{
    _ID42474::_ID4669( "exterior_hill" );
}

_ID50271()
{
    _ID42474::_ID4669( "interior_vehicle_open" );
    _ID42465::_ID23797( "vehicle_intro_mix" );
}

_ID44791()
{
    _ID42465::_ID23801( "vehicle_intro_mix" );
    wait 0.7;
    _ID42474::_ID4669( "exterior_street" );
    _ID42237::_ID27077( "scn_favela_tanker_crash", ( 1149, -2993, 694.5 ) );
}

_ID52274()
{
    _ID42465::_ID23797( "fade_out_level_mix" );
    wait 2.0;
    _ID42465::_ID23797( "fade_out_level_music_mix" );
}

_ID52654()
{
    _ID42465::_ID23797( "ending_sequence_mix" );
}

_ID51459()
{
    level._ID794 _meth_8521();
    _ID42476::_ID34518( "slomo" );
    _ID42465::_ID23797( "ending_slowmo_mix" );
}

_ID51763()
{
    _ID42465::_ID23801( "ending_slowmo_mix" );
    level._ID794 _meth_8522();
    _ID42476::_ID34512( "slomo" );
    _ID42495::_ID34653( "default" );
}

_ID50087( var_0 )
{
    wait 2.5;
    _ID42407::_ID27079( "scn_favela_merc_drivein1_bump" );
}

start_van_arrival( var_0 )
{
    wait 0.6;
    _ID42407::_ID27079( "scn_favela_van_door_open" );
}

_ID51200()
{
    _ID42237::_ID14413( "introscreen_activate" );
    _ID42465::_ID23797( "fade_in_level_mix" );
    level._ID794 _meth_80A1( "mus_favela_intro_stinger" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    _ID42465::_ID23801( "fade_in_level_mix" );
}

_ID50579()
{
    var_0 = _func_1A2( "civilians_scream_intro", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _ID42237::_ID27000( var_2._ID43356 );
    }

    var_clear_2
    var_clear_0
}

_ID54580()
{
    _ID42465::_ID23797( "post_runner_blackscreen_mix" );
    level waittill( "black_screen_finish" );
    _ID42465::_ID23801( "post_runner_blackscreen_mix" );
}

_ID45461()
{
    var_0 = _func_1A1( "snd_play_alley_falling_trashcan", "targetname" );
    var_1 = _func_1A1( "snd_alley_falling_trashcan_origin", "targetname" );
    var_1 waittill( "trigger",  var_2  );
    var_1 _ID42407::_ID27079( "scn_alley_falling_trashcan" );
}

_ID45707()
{
    wait 0.1;
    self _meth_8295();
    self._ID31138 = 1;
}

_ID47993()
{
    self endon( "death" );
    _unknown_0478();

    for (;;)
    {
        var_0 = _func_0F5( level._ID794._ID740, self._ID740 );

        if ( var_0 < 1000000 )
        {
            self _meth_80A1( self._ID43356 );
            return;
        }

        wait 0.1;
    }
}

_ID45490()
{
    level._ID3674._ID53947 = _func_1A1( "distant_fight", "targetname" );
    level._ID3674._ID53947 thread _ID42237::_ID27000( "emt_distant_battle_lp", undefined, 0.5, 6 );
    wait 0.1;
    _ID42237::_ID14413( "faust_appearance_3" );
    level._ID3674._ID53947 thread _ID42237::_ID36516( "emt_distant_battle_lp" );
}

_ID51272()
{
    var_0 = _func_1A1( "soccer_civilian_walla", "targetname" );
    var_0 thread _ID42237::_ID27000( "walla_favela_civ_dist_lp", undefined, 0.5, 0.5 );
    _ID42237::_ID14413( "favela_civilians_alerted" );
    var_0 _ID42237::_ID36516( "walla_favela_civ_dist_lp" );
}

_ID43900()
{
    wait 1;
    var_0 = _func_1A2( "intro_car_alarm", "script_noteworthy" );
    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _func_06A( "script_origin", var_2._ID740 );
        var_3 thread _ID42237::_ID27000( "car_alarm" );
        var_2 thread _unknown_0591( var_3 );
    }

    var_clear_3
    var_clear_0
}

_ID51035( var_0 )
{
    self waittill( "stop_car_alarm" );
    var_0 _ID42237::_ID36516( "car_alarm" );
    wait 0.1;
    var_0 _meth_80B7();
}

_ID50452( var_0 )
{
    var_1 = _func_1A1( "int_garage_snd_ent", "targetname" );
    var_1 _ID42407::_ID27079( "scn_favela_garage_interior" );
}

_ID54641()
{
    var_0 = _func_1A1( "shockwave_ent", "targetname" );
    var_1 = _func_1A1( "shockwave_stop", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_favela_tanker_explosion_shockwave" );
    var_0 _meth_82B8( var_1._ID740, 3.2, 0.5, 0.05 );
}

set_ending_slowmo_timescale()
{
    _ID42495::_ID34653( "favela_timescale_factor" );
}

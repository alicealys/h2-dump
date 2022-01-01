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
    thread _ID51200();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "mix_favela_global" );

    if ( getdvar( "beautiful_corner" ) == "1" || getdvar( "beautiful_corner_demo" ) == "1" )
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
    if ( getdvar( "beautiful_corner" ) != "1" && getdvar( "beautiful_corner_demo" ) != "1" )
        thread _ID45461();

    thread _ID45490();
    thread _ID43900();
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
    _ID42475::_ID34640( "start_street_checkpoint", ::_ID45162 );
    _ID42475::_ID34640( "start_chase_checkpoint", ::_ID47591 );
    _ID42475::_ID34640( "start_favela_checkpoint", ::_ID49690 );
    _ID42475::_ID34640( "start_torture_checkpoint", ::_ID44890 );
    _ID42475::_ID34640( "start_soccer_checkpoint", ::_ID52935 );
    _ID42475::_ID34640( "start_hilltop_checkpoint", ::_ID49509 );
    _ID42475::_ID34640( "start_trailer1_checkpoint", ::_ID52676 );
    _ID42475::_ID34640( "start_trailer2_checkpoint", ::_ID45299 );
    _ID42475::_ID34640( "start_trailer3_checkpoint", ::_ID47768 );
    _ID42475::_ID34640( "start_end_checkpoint", ::_ID45096 );
    _ID42475::_ID34640( "start_interior_vehicle_open", ::_ID50271 );
    _ID42475::_ID34640( "start_player_exit_vehicle", ::_ID44791 );
    _ID42475::_ID34640( "start_fade_out_level", ::_ID52274 );
    _ID42475::_ID34640( "start_ending_sequence_mix", ::_ID52654 );
    _ID42475::_ID34640( "start_ending_slowmo", ::_ID51459 );
    _ID42475::_ID34640( "stop_ending_slowmo", ::_ID51763 );
    _ID42475::_ID34640( "start_van_arrival", ::start_van_arrival );
    _ID42475::_ID34640( "intro_plr_car_bump", ::_ID50087 );
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
    _ID50579();
}

_ID47591( var_0 )
{
    _ID42474::_ID4669( "exterior_street" );
    _ID50579();
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
    level._ID794 playsound( "mus_favela_intro_stinger" );
    _ID42237::_ID14413( "introscreen_remove_submix" );
    _ID42465::_ID23801( "fade_in_level_mix" );
}

_ID50579()
{
    var_0 = getentarray( "civilians_scream_intro", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID42237::_ID27000( var_2._ID43356 );
}

_ID54580()
{
    _ID42465::_ID23797( "post_runner_blackscreen_mix" );
    level waittill( "black_screen_finish" );
    _ID42465::_ID23801( "post_runner_blackscreen_mix" );
}

_ID45461()
{
    var_0 = getent( "snd_play_alley_falling_trashcan", "targetname" );
    var_1 = getent( "snd_alley_falling_trashcan_origin", "targetname" );
    var_0 waittill( "trigger",  var_2  );
    var_1 _ID42407::_ID27079( "scn_alley_falling_trashcan" );
}

_ID45707()
{
    wait 0.1;
    self vehicle_turnengineoff();
    self._ID31138 = 1;
}

_ID47993()
{
    self endon( "death" );
    _ID45707();

    for (;;)
    {
        var_0 = distancesquared( level._ID794._ID740, self._ID740 );

        if ( var_0 < 1000000 )
        {
            self playsound( self._ID43356 );
            return;
        }

        wait 0.1;
    }
}

_ID45490()
{
    level._ID3674._ID53947 = getent( "distant_fight", "targetname" );
    level._ID3674._ID53947 thread _ID42237::_ID27000( "emt_distant_battle_lp", undefined, 0.5, 6 );
    wait 0.1;
    _ID42237::_ID14413( "faust_appearance_3" );
    level._ID3674._ID53947 thread _ID42237::_ID36516( "emt_distant_battle_lp" );
}

_ID51272()
{
    var_0 = getent( "soccer_civilian_walla", "targetname" );
    var_0 thread _ID42237::_ID27000( "walla_favela_civ_dist_lp", undefined, 0.5, 0.5 );
    _ID42237::_ID14413( "favela_civilians_alerted" );
    var_0 _ID42237::_ID36516( "walla_favela_civ_dist_lp" );
}

_ID43900()
{
    wait 1;
    var_0 = getentarray( "intro_car_alarm", "script_noteworthy" );

    foreach ( var_2 in var_0 )
    {
        var_3 = spawn( "script_origin", var_2._ID740 );
        var_3 thread _ID42237::_ID27000( "car_alarm" );
        var_2 thread _ID51035( var_3 );
    }
}

_ID51035( var_0 )
{
    self waittill( "stop_car_alarm" );
    var_0 _ID42237::_ID36516( "car_alarm" );
    wait 0.1;
    var_0 delete();
}

_ID50452( var_0 )
{
    var_1 = getent( "int_garage_snd_ent", "targetname" );
    var_1 _ID42407::_ID27079( "scn_favela_garage_interior" );
}

_ID54641()
{
    var_0 = getent( "shockwave_ent", "targetname" );
    var_1 = getent( "shockwave_stop", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_favela_tanker_explosion_shockwave" );
    var_0 moveto( var_1._ID740, 3.2, 0.5, 0.05 );
}

set_ending_slowmo_timescale()
{
    _ID42495::_ID34653( "favela_timescale_factor" );
}

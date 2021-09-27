// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49665()
{
    _ID42475::_ID34575( "start_tunnels_checkpoint" );
    maps\dcemp::_ID48475( 1 );
    _ID42237::_ID14402( "rain_fx" );
    _ID42237::_ID14402( "tunnels_main" );
    _ID42237::_ID14402( "start_rain_ambience" );
    _unknown_01D5();
    waitframe;
    _ID42407::_ID10226( 0.5, _ID42422::_ID28924, 0.1 );
    _ID42407::_ID10226( 0.5, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
    maps\dcemp_code::_ID44803( level._ID1194, _ID42237::_ID16640( "tunnels_start_points", "targetname" ) );
    maps\dcemp_code::_ID47900();
    level._ID43168 _meth_80B7();
    _ID42407::_ID10226( 0.25, _ID42407::_ID1804, "tunnels_spawn_trigger" );
}

_ID52554()
{
    _ID42237::_ID14400( "tunnels_teleport_done" );
    _ID42237::_ID14400( "tunnels_teleport" );
    _ID42237::_ID14400( "tunnels_door_open" );
    _ID42237::_ID14400( "tunnels_door_open_done" );

    if ( !_ID42237::_ID14396( "dc_emp_bunker" ) )
        _ID42237::_ID14400( "dc_emp_bunker" );
}

_ID46100()
{
    level._ID8760["60"] = _func_0BC( 60 );
    _unknown_00E2();
    level._ID11971 = maps\dcemp_endpart_code::_ID50463;
    _ID42407::_ID3343( "tunnels_dead_guy", ::_unknown_0215 );
    _ID42407::_ID3343( "tunnels_dead_check", ::_unknown_022D );
    wait 0.2;
    _ID42407::_ID1985( _ID42407::_ID38929, "tunnels_first_color_trig" );
    _ID42407::_ID1890( ::_unknown_0296 );
    thread _ID42407::_ID11231();
    level thread _unknown_0198();
    _ID42237::_ID14413( "tunnels_main" );
    level thread _unknown_0229();
    maps\dcemp_endpart_code::_ID53326();
    thread _ID42407::_ID4917( "allies" );
    level._ID1194["marine1"] _ID42407::_ID32315( "g" );
    level._ID388 _ID42407::_ID32315( "y" );
    level._ID44224 _ID42407::_ID32315( "o" );

    if ( !_ID42237::_ID14385( "tunnels_indoor" ) )
        _ID42407::_ID1805( "tunnels_color_trigger" );

    level thread _unknown_01E2();
    level thread _unknown_01D7();
    _ID42237::_ID14413( "tunnels_foley_dialogue" );
    _ID42237::_ID14421( "tunnels_door_open", "tunnels_teleport_done" );

    if ( _ID42237::_ID14385( "tunnels_door_open" ) )
    {
        _ID42407::_ID1805( "pre_teleport_color_trigger" );
        level._ID388 _ID42407::_ID10226( 4, _ID42407::_ID12445 );
        level._ID44224 _ID42407::_ID10226( 1, _ID42407::_ID12445 );
    }

    level waittill( "wait_for_ever" );
}

_ID46388()
{
    var_0 = _func_1A1( "tunnels_teleport_trigger", "targetname" );
    var_0 waittill( "trigger" );
    wait 1;
    _ID42325::_ID30753( "dcemp" );

    if ( _ID42407::_ID20505() )
        _ID42407::_ID24793();
    else
        _func_19F( "DEVELOPER: END OF SCRIPTED LEVEL" );
}

_ID50511()
{
    _ID42237::_ID14413( "tunnels_indoor" );
    _ID42237::_ID14388( "_weather_lightning_enabled" );
    _ID42237::_ID14413( "tunnels_teleport_done" );
    _ID42237::_ID14402( "_weather_lightning_enabled" );
}

_ID51006()
{
    level endon( "tunnels_teleport" );
    var_0 = _func_1A1( "tunnel_door_animent", "targetname" );
    var_1 = _func_1A1( "tunnel_door_guys_org", "targetname" );
    var_2 = _unknown_02FB( var_0 );
    _ID42237::_ID14413( "tunnels_main" );
    _ID42237::_ID14413( "tunnels_door_start" );
    level thread _unknown_0325();
    var_3 = [];
    var_3[0] = level._ID44224;
    var_3[1] = level._ID388;
    level thread _unknown_0319( var_0 );
    level._ID44224 _ID42407::_ID41232();
    level._ID388 _ID42407::_ID41232();
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5._ID7._ID50527 = 5.5;
    }

    var_clear_2
    var_clear_0
    var_1 _ID42259::_ID3061( var_3, "DCemp_door_sequence" );
    var_0 thread _ID42259::_ID3111( var_2, "DCemp_door_sequence" );
    var_1 _ID42259::_ID3099( var_3, "DCemp_door_sequence" );
    var_7 = var_3;

    for ( var_8 = _func_1DA( var_7 ); _func_02F( var_8 ); var_8 = _func_1BF( var_7, var_8 ) )
    {
        var_5 = var_7[var_8];
        var_5._ID7._ID50527 = undefined;
    }

    var_clear_1
    var_clear_0
    _ID42237::_ID14402( "tunnels_door_open" );
    level._ID388 _meth_81B2( level._ID388._ID740 );
    _ID42237::_ID14402( "tunnels_foley_dialogue" );
}

_ID50148( var_0 )
{
    _ID42237::_ID14413( "tunnels_teleport" );
    var_0 notify( "foley_idle_end" );
    level._ID44224 _ID42407::_ID3136();
    level._ID388 _ID42407::_ID3136();
}

_ID54481( var_0 )
{
    var_1 = _func_1A1( "tunnel_door", "targetname" );
    var_1 _ID42407::_ID3428( "tunnel_door" );
    var_2 = _func_1A1( "tunnel_door_col", "targetname" );
    var_2 _meth_8053( var_1 );
    var_2 _meth_805F();
    var_2 thread maps\dcemp_code::tunnel_door_not_solid_watcher();
    var_0 _ID42259::_ID3018( var_1, "DCemp_door_sequence" );
    return var_1;
}

_ID47702()
{
    _ID42237::_ID14413( "tunnels_door_teleport" );
    var_0 = _ID42237::_ID16638( "tunnels_door_foley", "script_noteworthy" );
    var_1 = _ID42237::_ID16638( "tunnels_door_dunn", "script_noteworthy" );
    var_2 = _func_1A1( "tunnels_door_volume", "targetname" );

    if ( !level._ID388 _meth_80B0( var_2 ) )
        level._ID388 _meth_81D2( var_0._ID740, var_0._ID65 );

    if ( !level._ID44224 _meth_80B0( var_2 ) )
        level._ID44224 _meth_81D2( var_1._ID740, var_1._ID65 );
}

_ID52169()
{
    _ID42237::_ID14413( "tunnels_indoor" );
    level._ID1194["marine1"] _ID42407::_ID10805( "dcemp_ar1_feetdry" );
    wait 0.5;
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_huah3" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_cutchatter" );
    _ID42237::_ID14413( "tunnels_door_start" );
    _ID42237::_ID14402( "dc_emp_bunker" );
    level._ID44224 _ID42237::_ID41078( 4, "goal" );
    _ID42237::_ID14413( "tunnels_foley_dialogue" );
    wait 0.65;
    _ID42237::_ID14413( "tunnels_teleport_done" );
    wait 0.5;
    _ID42237::_ID14413( "whitehouse_ambience" );
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_partystarted" );
    level._ID388 _ID42407::_ID10805( "dcemp_fly_rogerstayfrosty" );
}

_ID51484()
{
    maps\dcemp_endpart_code::_ID52941();
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_0 _ID42259::_ID3023( self, "death_sitting_pose_v1" );
    _ID42237::_ID14413( "tunnels_dunn_anim_end" );
    self _meth_80B7();
}

_ID48421()
{
    level endon( "tunnels_teleport" );
    level endon( "tunnels_dunn_anim_end" );
    self._ID3189 = "dead_guy";
    maps\dcemp_endpart_code::_ID52941();
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_0 thread _ID42259::_ID3044( self, "hunted_woundedhostage_idle_start" );
    level thread _unknown_05E0( self, var_0 );
    _ID42237::_ID14413( "tunnels_main" );
    wait 0.1;
    _ID42237::_ID14413( "tunnels_dead_check" );
    var_1 = _func_1A1( "parking_throw_flare", "script_noteworthy" );
    var_1 _meth_84A7( "normal" );
    level._ID44224 _ID42407::_ID10871();
    level._ID44224 _ID42407::_ID41232();
    var_0 _ID42259::_ID3074( level._ID44224, "hunted_woundedhostage_check" );
    var_0 _ID42407::_ID3136();
    var_2 = [];
    var_2[0] = level._ID44224;
    var_2[1] = self;
    level._ID44224 _ID42407::_ID41231();
    var_0 _ID42259::_ID3099( var_2, "hunted_woundedhostage_check" );
    var_0 thread _ID42259::_ID3018( self, "hunted_woundedhostage_idle_end" );
    level._ID44224 _ID42407::_ID12445();
    var_0 _ID42259::_ID3111( level._ID44224, "hunted_woundedhostage_check_soldier_end" );
    level notify( "tunnels_dead_check_done" );
}

_ID46617( var_0, var_1 )
{
    level endon( "tunnels_dead_check_done" );
    _ID42237::_ID14413( "tunnels_dunn_anim_end" );
    level._ID44224 _ID42407::_ID3136();

    if ( _ID42237::_ID14385( "tunnels_main" ) )
        level._ID44224 _ID42407::_ID12445();

    var_0 _ID42407::_ID3136();
    var_1 _ID42407::_ID3136();
    var_0 _meth_80B7();
}

_ID51608()
{
    _ID42237::_ID14388( "spotlight_lightning" );
    var_0 = _func_1A2( "parking_lighting_primary", "script_noteworthy" );
    _ID42237::_ID3294( var_0, ::_meth_81EB, 0 );
    thread _ID42407::_ID32515( "dcemp_tunnels", 4 );
    thread _ID42407::_ID40561( "dcemp_tunnels", 4 );
}

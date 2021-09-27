// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000E();
    _unknown_001B();
    _unknown_0022();
    _unknown_0026();
    _unknown_0032();
    thread _unknown_0036();
    _unknown_003C();
    _unknown_0041();
    _unknown_0045();
}

_ID8467()
{
    _ID42463::_ID32459( "shg" );
    _ID42490::_ID34650( "med_occlusion" );
    _ID42465::_ID23797( "dc_whitehouse_global_mix" );
}

_ID19806()
{
    _ID42237::_ID14400( "picture_frame_is_over_pa" );
}

_ID19703()
{

}

_ID22056()
{
    thread _unknown_00D4();
    thread _unknown_0111();
    thread _unknown_0131();
    thread _unknown_0141();
    thread _unknown_015B();
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
    _ID42475::_ID34640( "start_tunnels_checkpoint", ::_unknown_00A9 );
    _ID42475::_ID34640( "start_oval_office_checkpoint", ::_unknown_00BE );
    _ID42475::_ID34640( "start_flare_checkpoint", ::_unknown_0101 );
    _ID42475::_ID34640( "start_endrun_mix", ::_unknown_0112 );
    _ID42475::_ID34640( "start_fade_out_mix", ::_unknown_0121 );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID51154( var_0 )
{
    _ID42474::_ID4669( "interior_tunnel" );
    _ID42237::_ID14402( "picture_frame_is_over_pa" );
    _ID42465::_ID23797( "vo_behind_frame_mix" );
}

_ID50172( var_0 )
{
    _ID42474::_ID4669( "exterior" );
    _ID42237::_ID14402( "picture_frame_is_over_pa" );
    _ID42465::_ID23797( "vo_behind_frame_mix" );
    _ID42474::_ID4668( "exterior", "ambient_dcwhitehouse_dry", 0.05 );
    _ID42474::_ID4668( "interior_tunnel_open", "ambient_dcwhitehouse_dry", 0.05 );
    _ID42474::_ID4668( "exterior_covered", "ambient_dcwhitehouse_dry", 0.05 );
    _ID42407::_ID24577( "mus_dc_whitehouse_attack_int", 328, 1 );
    wait 0.1;
    var_1 = _func_1A2( "field_rain_emitter", "script_noteworthy" );
    var_2 = var_1;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _meth_80B2();
        wait 0.1;
        var_3 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "whitehouse_2min" );
    _ID42407::_ID24582( "mus_dc_whitehouse_endrun", 5 );
    _ID42465::_ID23797( "endrun_mix" );
}

_ID47049( var_0 )
{
    _ID42474::_ID4669( "interior_stone" );
    _ID42465::_ID23797( "endrun_mix" );
}

start_endrun_mix()
{
    _ID42465::_ID23797( "endrun_mix" );
}

start_fade_out_mix()
{
    _ID42465::_ID23797( "dc_white_fade_to_black_end_mix" );
}

_ID49694()
{
    wait 1;
    var_0 = _func_1A2( "field_rain_emitter", "script_noteworthy" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_807C( var_2._ID43356 );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14413( "whitehouse_spotlight" );
    wait 4;
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_8076( 0, 5 );
    }

    var_clear_1
    var_clear_0
    _ID42474::_ID4668( "exterior", "ambient_dcwhitehouse_dry", 11 );
    _ID42474::_ID4668( "interior_tunnel_open", "ambient_dcwhitehouse_dry", 11 );
    _ID42474::_ID4668( "exterior_covered", "ambient_dcwhitehouse_dry", 10 );
    wait 2;
    var_6 = var_0;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_2 = var_6[var_7];
        var_2 _meth_80B2();
        wait 0.1;
        var_2 _meth_80B7();
    }

    var_clear_1
    var_clear_0
}

_ID51114()
{
    var_0 = _func_06A( "script_origin", ( -8072, 6168, -443 ) );
    var_0 thread _ID42237::_ID27000( "amb_emt_firefight_tunnel", undefined, 1, 3 );

    for (;;)
    {
        var_1 = _func_0DE( "axis" );

        if ( _ID42237::_ID14385( "whitehouse_entrance_clear" ) && var_1.size < 3 )
        {
            var_0 _ID42237::_ID36516( "amb_emt_firefight_tunnel" );
            _ID42465::_ID23801( "exterior_battle_mix" );
            break;
        }

        wait 0.5;
    }
}

aud_outside_tunnel_chatter()
{
    var_0 = _func_1A1( "outside_chatter", "targetname" );

    for (;;)
    {
        var_0 thread _ID42407::_ID27079( "scn_dcwhitehouse_outside_tunnel_chatter" );
        wait(_func_0BA( 3.0, 8.0 ));
    }
}

_ID47746()
{
    _ID42237::_ID14413( "whitehouse_marshall_dialogue" );
    _ID42465::_ID23797( "exterior_battle_mix" );
}

aud_mission_failed_jet_flyby()
{
    var_0 = _func_1A1( "jet_mission_failed_start", "targetname" );
    var_1 = _func_1A1( "jet_mission_failed_stop", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_dcwhitehouse_failed_flyby" );
    var_0 _meth_82B8( var_1._ID740, 4.0 );
}

intro_distant_thunder()
{
    wait 0.1;
    var_0 = _func_1A1( "intro_thunder", "targetname" );
    var_1 waittill( "trigger",  var_1  );
    level._ID794 thread _ID42407::_ID27079( "elm_thunder_distant_intro" );
}

start_speaker_reveal_mix( var_0 )
{
    _ID42237::_ID14388( "picture_frame_is_over_pa" );
    _ID42465::_ID23801( "vo_behind_frame_mix" );
    level.pa_behind_pictureframe _meth_8076( 0, 0.7 );
    wait 0.8;
    level.pa_behind_pictureframe _meth_80B7();
}

flare_breach_debris_snd()
{
    var_0 = _func_1A1( "flare_breach_debris", "targetname" );
    var_0 _meth_80A1( "scn_flare_breach_debris" );
}

play_speaker_vo( var_0 )
{
    if ( _ID42237::_ID14385( "picture_frame_is_over_pa" ) )
    {
        if ( _func_02F( self._ID922 ) && self._ID922 == "oval_room_speaker" )
        {
            if ( !_func_02F( level.pa_behind_pictureframe ) )
                level.pa_behind_pictureframe = _func_06A( "script_origin", self._ID740 );

            level.pa_behind_pictureframe _meth_80A1( var_0 + "_bf" );
        }
    }

    self _meth_80A1( var_0, "sounddone" );
}

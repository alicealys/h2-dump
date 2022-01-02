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
    thread _ID49694();
    thread _ID51114();
    thread aud_outside_tunnel_chatter();
    thread _ID47746();
    thread intro_distant_thunder();
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
    _ID42475::_ID34640( "start_tunnels_checkpoint", ::_ID51154 );
    _ID42475::_ID34640( "start_oval_office_checkpoint", ::_ID50172 );
    _ID42475::_ID34640( "start_flare_checkpoint", ::_ID47049 );
    _ID42475::_ID34640( "start_endrun_mix", ::start_endrun_mix );
    _ID42475::_ID34640( "start_fade_out_mix", ::start_fade_out_mix );
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
    var_1 = getentarray( "field_rain_emitter", "script_noteworthy" );

    foreach ( var_3 in var_1 )
    {
        var_3 stopsounds();
        wait 0.1;
        var_3 delete();
    }

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
    var_0 = getentarray( "field_rain_emitter", "script_noteworthy" );

    foreach ( var_2 in var_0 )
        var_2 playloopsound( var_2._ID43356 );

    _ID42237::_ID14413( "whitehouse_spotlight" );
    wait 4;

    foreach ( var_2 in var_0 )
        var_2 setvolume( 0, 5 );

    _ID42474::_ID4668( "exterior", "ambient_dcwhitehouse_dry", 11 );
    _ID42474::_ID4668( "interior_tunnel_open", "ambient_dcwhitehouse_dry", 11 );
    _ID42474::_ID4668( "exterior_covered", "ambient_dcwhitehouse_dry", 10 );
    wait 2;

    foreach ( var_2 in var_0 )
    {
        var_2 stopsounds();
        wait 0.1;
        var_2 delete();
    }
}

_ID51114()
{
    var_0 = spawn( "script_origin", ( -8072, 6168, -443 ) );
    var_0 thread _ID42237::_ID27000( "amb_emt_firefight_tunnel", undefined, 1, 3 );

    for (;;)
    {
        var_1 = getaiarray( "axis" );

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
    var_0 = getent( "outside_chatter", "targetname" );

    for (;;)
    {
        var_0 thread _ID42407::_ID27079( "scn_dcwhitehouse_outside_tunnel_chatter" );
        wait(randomfloatrange( 3.0, 8.0 ));
    }
}

_ID47746()
{
    _ID42237::_ID14413( "whitehouse_marshall_dialogue" );
    _ID42465::_ID23797( "exterior_battle_mix" );
}

aud_mission_failed_jet_flyby()
{
    var_0 = getent( "jet_mission_failed_start", "targetname" );
    var_1 = getent( "jet_mission_failed_stop", "targetname" );
    var_0 thread _ID42407::_ID27079( "scn_dcwhitehouse_failed_flyby" );
    var_0 moveto( var_1.origin, 4.0 );
}

intro_distant_thunder()
{
    wait 0.1;
    var_0 = getent( "intro_thunder", "targetname" );
    var_0 waittill( "trigger",  var_1  );
    level.player thread _ID42407::_ID27079( "elm_thunder_distant_intro" );
}

start_speaker_reveal_mix( var_0 )
{
    _ID42237::_ID14388( "picture_frame_is_over_pa" );
    _ID42465::_ID23801( "vo_behind_frame_mix" );
    level.pa_behind_pictureframe setvolume( 0, 0.7 );
    wait 0.8;
    level.pa_behind_pictureframe delete();
}

flare_breach_debris_snd()
{
    var_0 = getent( "flare_breach_debris", "targetname" );
    var_0 playsound( "scn_flare_breach_debris" );
}

play_speaker_vo( var_0 )
{
    if ( _ID42237::_ID14385( "picture_frame_is_over_pa" ) )
    {
        if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "oval_room_speaker" )
        {
            if ( !isdefined( level.pa_behind_pictureframe ) )
                level.pa_behind_pictureframe = spawn( "script_origin", self.origin );

            level.pa_behind_pictureframe playsound( var_0 + "_bf" );
        }
    }

    self playsound( var_0, "sounddone" );
}

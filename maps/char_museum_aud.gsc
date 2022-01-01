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
    _ID42465::_ID23797( "mix_ending_global" );
    _ID42474::_ID4669( "showroom" );
}

_ID19806()
{

}

_ID19703()
{

}

_ID22056()
{
    thread _ID43054( "af_caves" );
    thread _ID43054( "airport" );
    thread _ID43054( "arcadia" );
    thread _ID43054( "cliffhanger" );
    thread _ID43054( "dc_burning" );
    thread _ID43054( "estate" );
    thread _ID43054( "favela" );
    thread _ID43054( "hostage" );
    thread _ID43054( "oilrig" );
    thread _ID43054( "trainer" );
    thread aud_play_vehicles_scene_ambience( "f15" );
    thread aud_play_vehicles_scene_ambience( "lbs" );
    thread aud_play_vehicles_scene_ambience( "m1a1" );
    thread aud_play_vehicles_scene_ambience( "pavelow" );
    thread aud_play_vehicles_scene_ambience( "stryker" );
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
    _ID42475::_ID34640( "aud_start_battle_mix", ::_ID47583 );
    _ID42475::_ID34640( "aud_stop_battle_mix", ::_ID44477 );
    _ID42475::_ID34640( "start_credits_mix", ::start_credits_mix );
    _ID42475::_ID34640( "stop_credits_mix", ::stop_credits_mix );
}

_ID41961( var_0, var_1 )
{

}

_ID24576( var_0, var_1 )
{

}

_ID44198( var_0 )
{
    _ID42474::_ID4669( "showroom" );
}

_ID47583()
{
    _ID42465::_ID23797( "battle_mix" );
    _ID42407::_ID24587( "music_museum_firefight" );
}

_ID44477()
{
    _ID42465::_ID23801( "battle_mix" );
    musicstop( 0.5 );
}

start_credits_mix()
{
    _ID42465::_ID23797( "mix_credits" );
    _ID42476::_ID34518( "credits" );
    _ID42465::_ID23801( "mix_level_fadeout" );
}

stop_credits_mix()
{
    _ID42476::_ID34512( "credits" );
    _ID42465::_ID23801( "mix_credits" );
}

_ID43054( var_0 )
{
    _ID42237::_ID14413( var_0 + "_go" );
    var_1 = getent( "amb_" + var_0, "targetname" );
    var_1 thread _ID42237::_ID27000( "scn_museum_" + var_0 + "_amb", ( 0, 0, 0 ), 0.5, 0.5 );
    _ID42237::_ID14413( var_0 + "_done" );
    var_1 _ID42237::_ID36516( "scn_museum_" + var_0 + "_amb" );
}

aud_play_vehicles_scene_ambience( var_0 )
{
    _ID42237::_ID14413( var_0 + "_go" );
    var_1 = getent( "amb_" + var_0, "targetname" );
    var_1 playsound( "scn_museum_" + var_0 + "_amb" );
}

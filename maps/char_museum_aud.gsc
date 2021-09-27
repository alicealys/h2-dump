// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000E();
    _unknown_001D();
    _unknown_0022();
    _unknown_0026();
    _unknown_0053();
    thread _unknown_0058();
    _unknown_005E();
    _unknown_0062();
    _unknown_0067();
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
    thread _unknown_00C6( "af_caves" );
    thread _unknown_00CE( "airport" );
    thread _unknown_00D6( "arcadia" );
    thread _unknown_00DE( "cliffhanger" );
    thread _unknown_00E7( "dc_burning" );
    thread _unknown_00EF( "estate" );
    thread _unknown_00F7( "favela" );
    thread _unknown_00FF( "hostage" );
    thread _unknown_0108( "oilrig" );
    thread _unknown_0110( "trainer" );
    thread _unknown_0134( "f15" );
    thread _unknown_013C( "lbs" );
    thread _unknown_0144( "m1a1" );
    thread _unknown_014C( "pavelow" );
    thread _unknown_0155( "stryker" );
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
    _ID42475::_ID34640( "aud_start_battle_mix", ::_unknown_0130 );
    _ID42475::_ID34640( "aud_stop_battle_mix", ::_unknown_0141 );
    _ID42475::_ID34640( "start_credits_mix", ::_unknown_0152 );
    _ID42475::_ID34640( "stop_credits_mix", ::_unknown_0166 );
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
    _func_078( 0.5 );
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
    var_1 = _func_1A1( "amb_" + var_0, "targetname" );
    var_1 thread _ID42237::_ID27000( "scn_museum_" + var_0 + "_amb", ( 0, 0, 0 ), 0.5, 0.5 );
    _ID42237::_ID14413( var_0 + "_done" );
    var_1 _ID42237::_ID36516( "scn_museum_" + var_0 + "_amb" );
}

aud_play_vehicles_scene_ambience( var_0 )
{
    _ID42237::_ID14413( var_0 + "_go" );
    var_1 = _func_1A1( "amb_" + var_0, "targetname" );
    var_1 _meth_80A1( "scn_museum_" + var_0 + "_amb" );
}

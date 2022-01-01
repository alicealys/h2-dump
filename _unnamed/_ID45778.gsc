// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    _ID42358::_ID1942( "generic" );
    level._ID30895["generic"]["sit_load_ak_idle"][0] = %sitting_guard_loadak_idle;
    level._ID30895["generic"]["sit_load_ak_react"] = %sitting_guard_loadak_react1;
    _ID42259::_ID2058( "generic", "detach clip left", ::_ID50354, "sit_load_ak_react" );
    _ID31296();
}

_ID50354( var_0 )
{
    var_0._ID9813 = %exposed_death_nerve;
    var_0 endon( "death" );
    wait 2;
    var_0._ID9813 = undefined;
}
#using_animtree("script_model");

_ID31296()
{
    level._ID30895["chair_ak"]["sit_load_ak_react"] = %sitting_guard_loadak_idle_chair;
    level._ID30900["chair_ak"] = #animtree;
    level._ID30904["chair_ak"] = "com_folding_chair";
}

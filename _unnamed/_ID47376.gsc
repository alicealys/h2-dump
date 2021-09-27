// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("animated_props");

_ID616()
{
    if ( !_func_02F( level._ID3055 ) )
        level._ID3055 = [];

    var_0 = "hanging_apron";

    if ( _ID42237::_ID20913() )
        level._ID3055[var_0]["wind_medium"] = %hanging_clothes_apron_wind_medium;
    else
        level._ID3055[var_0]["wind_medium"] = "hanging_clothes_apron_wind_medium";
}

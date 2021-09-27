// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("animated_props");

_ID616()
{
    if ( !_func_02F( level._ID3055 ) )
        level._ID3055 = [];

    var_0 = "foliage_pacific_bushtree01_animated";

    if ( _ID42237::_ID20913() )
        level._ID3055[var_0]["sway"] = %foliage_pacific_bushtree01_sway;
    else
        level._ID3055[var_0]["sway"] = "foliage_pacific_bushtree01_sway";
}

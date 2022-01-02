// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("animated_props");

main()
{
    if ( !isdefined( level._ID3055 ) )
        level._ID3055 = [];

    var_0 = "hanging_short_sleeve";

    if ( _ID42237::_ID20913() )
        level._ID3055[var_0]["wind_medium"] = %hanging_clothes_short_sleeve_wind_medium;
    else
        level._ID3055[var_0]["wind_medium"] = "hanging_clothes_short_sleeve_wind_medium";

    var_0 = "lag_hanging_sheets_03";

    if ( _ID42237::_ID20913() )
        level._ID3055[var_0]["wind_medium"] = %hanging_clothes_short_sleeve_wind_medium;
    else
        level._ID3055[var_0]["wind_medium"] = "hanging_clothes_short_sleeve_wind_medium";
}

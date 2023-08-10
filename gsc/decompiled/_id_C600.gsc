// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("animated_props");

main()
{
    if ( !isdefined( level.anim_prop_models ) )
        level.anim_prop_models = [];

    var_0 = "hanging_short_sleeve";

    if ( common_scripts\utility::issp() )
        level.anim_prop_models[var_0]["wind_medium"] = %hanging_clothes_short_sleeve_wind_medium;
    else
        level.anim_prop_models[var_0]["wind_medium"] = "hanging_clothes_short_sleeve_wind_medium";

    var_0 = "lag_hanging_sheets_03";

    if ( common_scripts\utility::issp() )
        level.anim_prop_models[var_0]["wind_medium"] = %hanging_clothes_short_sleeve_wind_medium;
    else
        level.anim_prop_models[var_0]["wind_medium"] = "hanging_clothes_short_sleeve_wind_medium";
}

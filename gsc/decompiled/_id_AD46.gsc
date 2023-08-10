// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("animated_props");

main()
{
    if ( !isdefined( level.anim_prop_models ) )
        level.anim_prop_models = [];

    var_0 = "hanging_sheet";

    if ( common_scripts\utility::issp() )
        level.anim_prop_models[var_0]["wind_medium"] = %hanging_clothes_sheet_wind_medium;
    else
        level.anim_prop_models[var_0]["wind_medium"] = "hanging_clothes_sheet_wind_medium";
}

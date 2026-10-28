// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("animated_props");

main()
{
    if ( !isdefined( level.anim_prop_models ) )
        level.anim_prop_models = [];

    var_0 = tolower( getdvar( "mapname" ) );
    var_1 = 1;

    if ( common_scripts\utility::string_starts_with( var_0, "mp_" ) )
        var_1 = 0;

    var_2 = "foliage_tree_palm_tall_2";

    if ( var_1 )
    {
        level.anim_prop_models[var_2]["still"] = %palmtree_tall2_still;
        level.anim_prop_models[var_2]["strong"] = %palmtree_tall2_sway;
    }
    else
        level.anim_prop_models[var_2]["strong"] = "palmtree_mp_tall2_sway";
}

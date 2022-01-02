// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("animated_props");

main()
{
    if ( !isdefined( level._ID3055 ) )
        level._ID3055 = [];

    var_0 = tolower( getdvar( "mapname" ) );
    var_1 = 1;

    if ( _ID42237::_ID36698( var_0, "mp_" ) )
        var_1 = 0;

    var_2 = "foliage_tree_palm_tall_2";

    if ( var_1 )
    {
        level._ID3055[var_2]["still"] = %palmtree_tall2_still;
        level._ID3055[var_2]["strong"] = %palmtree_tall2_sway;
    }
    else
        level._ID3055[var_2]["strong"] = "palmtree_mp_tall2_sway";
}

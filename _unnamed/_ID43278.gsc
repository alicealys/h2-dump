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

    var_2 = "foliage_pacific_fern02_animated";

    if ( var_1 )
        level._ID3055[var_2]["sway"] = %foliage_pacific_fern02_sway;
    else
        level._ID3055[var_2]["sway"] = "foliage_pacific_fern02_sway";
}

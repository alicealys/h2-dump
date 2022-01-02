// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::_ID11456( "window_40", 40 );
    else
        _ID22688();
}
#using_animtree("generic_human");

_ID22688()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse40;
    var_0["traverseToCoverAnim"] = %traverse40_2_cover;
    var_0["coverType"] = "Cover Crouch";
    var_0["traverseHeight"] = 40.0;
    var_0["interruptDeathAnim"][0] = animscripts\utility::_ID3291( %traverse40_death_start, %traverse40_death_start_2 );
    var_0["interruptDeathAnim"][1] = animscripts\utility::_ID3291( %traverse40_death_end, %traverse40_death_end_2 );
    var_0["traverseSound"] = "npc_wall_over_40";
    animscripts\traverse\shared::_ID11657( var_0 );
}

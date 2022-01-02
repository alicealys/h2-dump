// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::_ID11456( "window_40", 40 );
    else
        _ID21185();
}
#using_animtree("generic_human");

_ID21185()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_window_m_2_run;
    var_0["traverseToCoverAnim"] = %traverse_window_m_2_stop;
    var_0["coverType"] = "Cover Crouch";
    var_0["traverseHeight"] = 36.0;
    var_0["interruptDeathAnim"][0] = animscripts\utility::_ID3291( %traverse_window_death_start );
    var_0["interruptDeathAnim"][1] = animscripts\utility::_ID3291( %traverse_window_death_end );
    var_0["traverseSound"] = "npc_wall_over_40";
    animscripts\traverse\shared::_ID11657( var_0 );
}

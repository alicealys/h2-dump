// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    var_0 = [];
    var_0["traverseAnim"] = %h2_gulag_traverse_cqbwalk;
    var_0["coverType"] = "Cover Crouch";
    var_0["traverseHeight"] = 36.0;
    var_0["interruptDeathAnim"][0] = animscripts\utility::array( %traverse_window_death_start );
    var_0["interruptDeathAnim"][1] = animscripts\utility::array( %traverse_window_death_end );
    var_0["traverseSound"] = "npc_window_quick_over";
    animscripts\traverse\shared::dotraverse( var_0 );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    low_wall_human();
}

#using_animtree("generic_human");

low_wall_human()
{
    var_0 = [];
    var_0["traverseAnim"] = %h2_traverse_stepup_35;
    var_0["traverseHeight"] = 35.0;
    var_0["traverseSound"] = "npc_step_up_38";
    animscripts\traverse\shared::dotraverse( var_0 );
}

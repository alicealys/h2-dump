// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    high_wall_human();
}

#using_animtree("generic_human");

high_wall_human()
{
    var_0 = [];
    var_0["traverseAnim"] = %h2_traverse_jumpdown_300;
    animscripts\traverse\shared::dotraverse( var_0 );
}

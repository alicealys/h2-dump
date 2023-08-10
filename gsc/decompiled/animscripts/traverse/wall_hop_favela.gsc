// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::dog_wall_and_window_hop( "wallhop", 40 );
    else
        wall_hop_human();
}

#using_animtree("generic_human");

wall_hop_human()
{
    var_0 = [];
    var_0["traverseAnim"] = %h2_traverse_wallhop_04;
    var_0["traverseHeight"] = 40.0;
    animscripts\traverse\shared::dotraverse( var_0 );
}

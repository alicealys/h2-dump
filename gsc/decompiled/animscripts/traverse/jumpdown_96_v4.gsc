// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::dog_jump_down( 7, 0.8 );
    else
        low_wall_human();
}

#using_animtree("generic_human");

low_wall_human()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_jumpdown_96_v4;
    animscripts\traverse\shared::dotraverse( var_0 );
}

// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::dog_jump_down( 5, 1.0 );
    else
        low_wall_human();
}
#using_animtree("generic_human");

low_wall_human()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_jumpdown_56;
    animscripts\traverse\shared::dotraverse( var_0 );
}

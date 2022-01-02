// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::_ID11435( 7, 0.8 );
    else
        _ID22688();
}
#using_animtree("generic_human");

_ID22688()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_jumpdown_96;
    animscripts\traverse\shared::_ID11657( var_0 );
}

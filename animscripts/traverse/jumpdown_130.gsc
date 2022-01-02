// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::_ID11435( 7, 0.7 );
    else
        _ID21191();
}
#using_animtree("generic_human");

_ID21191()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_jumpdown_130;
    animscripts\traverse\shared::_ID11657( var_0 );
}

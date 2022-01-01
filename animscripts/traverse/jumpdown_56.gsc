// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( self._ID1244 == "dog" )
        animscripts\traverse\shared::_ID11435( 5, 1.0 );
    else
        _ID22688();
}
#using_animtree("generic_human");

_ID22688()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_jumpdown_56;
    animscripts\traverse\shared::_ID11657( var_0 );
}

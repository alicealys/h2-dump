// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( self._ID1244 == "dog" )
        animscripts\traverse\shared::_ID11456( "wallhop", 40 );
    else
        _unknown_001E();
}
#using_animtree("generic_human");

_ID41291()
{
    var_0 = [];
    var_0["traverseAnim"] = %h2_traverse_wallhop_04;
    var_0["traverseHeight"] = 40.0;
    animscripts\traverse\shared::_ID11657( var_0 );
}

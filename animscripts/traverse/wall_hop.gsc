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
    var_0["traverseAnim"] = %traverse_window_quick;
    var_0["traverseHeight"] = 40.0;
    var_1 = _func_02F( level._ID49970 ) && level._ID49970 == 1;

    if ( var_1 || _func_0B7( 100 ) < 30 )
        var_0["traverseAnim"] = %traverse_wallhop_3;
    else
        var_0["traverseAnim"] = %traverse_wallhop;

    animscripts\traverse\shared::_ID11657( var_0 );
}

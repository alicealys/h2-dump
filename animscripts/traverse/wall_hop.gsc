// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        animscripts\traverse\shared::_ID11456( "wallhop", 40 );
    else
        _ID41291();
}
#using_animtree("generic_human");

_ID41291()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_window_quick;
    var_0["traverseHeight"] = 40.0;
    var_1 = isdefined( level._ID49970 ) && level._ID49970 == 1;

    if ( var_1 || randomint( 100 ) < 30 )
        var_0["traverseAnim"] = %traverse_wallhop_3;
    else
        var_0["traverseAnim"] = %traverse_wallhop;

    animscripts\traverse\shared::_ID11657( var_0 );
}

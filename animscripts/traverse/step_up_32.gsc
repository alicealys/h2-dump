// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( self._ID1244 == "dog" )
        animscripts\traverse\shared::_ID11436( 32.0, 5 );
    else
        _ID22688();
}
#using_animtree("generic_human");

_ID22688()
{
    var_0 = [];
    var_0["traverseAnim"] = %ch_pragueb_7_5_crosscourt_aimantle_a;
    var_0["traverseHeight"] = 32.0;
    animscripts\traverse\shared::_ID11657( var_0 );
}

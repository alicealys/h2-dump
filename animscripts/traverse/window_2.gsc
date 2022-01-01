// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    if ( self._ID1244 == "dog" )
        animscripts\traverse\shared::_ID11456( "wallhop", 40 );
    else
        _ID2180( %windowclimb, 35 );
}

_ID2180( var_0, var_1 )
{
    var_2 = [];
    var_2["traverseAnim"] = var_0;
    var_2["traverseHeight"] = var_1;
    var_2["traverseSound"] = "npc_wall_over_40";
    animscripts\traverse\shared::_ID11657( var_2 );
}

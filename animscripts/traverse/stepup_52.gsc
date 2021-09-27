// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( self._ID1244 == "dog" )
        animscripts\traverse\shared::_ID11436( 52.0, 5 );
    else if ( self._ID1244 == "civilian" )
        _unknown_0039();
    else
        _unknown_0030();
}
#using_animtree("generic_human");

_ID22688()
{
    var_0 = [];
    var_0["traverseAnim"] = %traverse_stepup_52;
    var_0["traverseHeight"] = 52.0;
    var_0["traverseSound"] = "npc_step_up_52";
    animscripts\traverse\shared::_ID11657( var_0 );
}

_ID51275()
{
    var_0 = [ %h2_civilian_traverse_01, %h2_civilian_traverse_02, %h2_civilian_traverse_03, %h2_civilian_traverse_04 ];
    var_1 = [ 4, 4, 4, 1 ];
    var_1 = _ID42237::_ID15649( var_1 );
    var_2 = [];
    var_2["traverseAnim"] = _ID42237::_ID7490( var_0, var_1 );
    var_2["traverseHeight"] = 52.0;
    var_2["traverseSound"] = "npc_step_up_52";
    animscripts\traverse\shared::_ID11657( var_2 );
}

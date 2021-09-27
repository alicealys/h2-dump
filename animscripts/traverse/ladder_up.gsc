// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    if ( _func_02F( self._ID1244 ) && self._ID1244 == "dog" )
        return;

    animscripts\traverse\shared::_ID11664( %h2_ladder_in_up, %h2_ladder_loop_up, %h2_ladder_out_up, "noclip", "crouch", "run" );
}

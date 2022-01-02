// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main()
{
    if ( isdefined( self.type ) && self.type == "dog" )
        return;

    animscripts\traverse\shared::_ID11664( %h2_ladder_in_up, %h2_ladder_loop_up, %h2_ladder_out_up, "noclip", "crouch", "run" );
}

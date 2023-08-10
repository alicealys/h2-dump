// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    if ( isdefined( self.type ) && self.type == "dog" )
        return;

    animscripts\traverse\shared::dovariablelengthtraverse( %h2_ladder_in_up, %h2_ladder_loop_up, %h2_ladder_out_up, "noclip", "crouch", "run" );
}

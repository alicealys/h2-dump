// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    self.desired_anim_pose = "crouch";
    animscripts\utility::updateanimpose();
    self endon( "killanimscript" );
    self.a.movement = "walk";
    self.a._id_C44B = "alert";
    self traversemode( "nogravity" );
    var_0 = self getnegotiationstartnode();
    self orientmode( "face angle", var_0.angles[1] );
    self setflaggedanimknoballrestart( "stepanim", %h2_traverse_jumpdown_56_gulag, %body, 1, 0.1, 1 );
    self waittillmatch( "stepanim", "gravity on" );
    self traversemode( "gravity" );
    animscripts\shared::donotetracks( "stepanim" );
    self setanimknoballrestart( %crouch_fastwalk_f, %body, 1, 0.1, 1 );
}

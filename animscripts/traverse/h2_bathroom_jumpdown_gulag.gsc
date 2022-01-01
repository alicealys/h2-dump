// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    self._ID10423 = "crouch";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self._ID7._ID24414 = "walk";
    self._ID7._ID50251 = "alert";
    self traversemode( "nogravity" );
    var_0 = self getnegotiationstartnode();
    self orientmode( "face angle", var_0._ID65[1] );
    self setflaggedanimknoballrestart( "stepanim", %h2_traverse_jumpdown_56_gulag, %body, 1, 0.1, 1 );
    self waittillmatch( "stepanim",  "gravity on"  );
    self traversemode( "gravity" );
    animscripts\shared::_ID11529( "stepanim" );
    self setanimknoballrestart( %crouch_fastwalk_f, %body, 1, 0.1, 1 );
}

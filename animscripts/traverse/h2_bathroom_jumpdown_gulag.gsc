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
    self _meth_8199( "nogravity" );
    var_0 = self _meth_81A9();
    self _meth_819B( "face angle", var_0._ID65[1] );
    self _meth_8119( "stepanim", %h2_traverse_jumpdown_56_gulag, %body, 1, 0.1, 1 );
    self waittillmatch( "stepanim",  "gravity on"  );
    self _meth_8199( "gravity" );
    animscripts\shared::_ID11529( "stepanim" );
    self _meth_8153( %crouch_fastwalk_f, %body, 1, 0.1, 1 );
}

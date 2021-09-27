// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID616()
{
    if ( self._ID1244 == "dog" )
    {
        animscripts\traverse\shared::_ID11438( "wallhop", 20 );
        return;
    }

    self._ID10423 = "stand";
    animscripts\utility::_ID39672();
    self endon( "killanimscript" );
    self _meth_8199( "nogravity" );
    self _meth_8199( "noclip" );
    var_0 = self _meth_81A9();
    self _meth_819B( "face angle", var_0._ID65[1] );
    self _meth_8119( "jumpanim", %jump_across_72, %body, 1, 0.1, 1 );
    self waittillmatch( "jumpanim",  "gravity on"  );
    self _meth_8199( "gravity" );
    animscripts\shared::_ID11529( "jumpanim" );
}

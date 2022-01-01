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
    self traversemode( "nogravity" );
    self traversemode( "noclip" );
    var_0 = self getnegotiationstartnode();
    self orientmode( "face angle", var_0._ID65[1] );
    self setflaggedanimknoballrestart( "jumpanim", %jump_across_72, %body, 1, 0.1, 1 );
    self waittillmatch( "jumpanim",  "gravity on"  );
    self traversemode( "gravity" );
    animscripts\shared::_ID11529( "jumpanim" );
}

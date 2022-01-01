// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self endon( "death" );
    self endon( "stop_first_frame" );
    self notify( "killanimscript" );
    self._ID846 = 0;
    self clearanim( self._ID30178, 0.3 );
    self orientmode( "face angle", self._ID65[1] );
    self setanim( level._ID30895[self._ID1366][self._ID1456], 1, 0, 0 );
    self._ID1456 = undefined;
    self waittill( "killanimscript" );
}

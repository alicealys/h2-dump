// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_opforce_sniper_ghillie" );
    self attach( "head_opforce_sniper_ghillie", "", 1 );
    self._ID18304 = "head_opforce_sniper_ghillie";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_opforce_sniper_ghillie" );
    precachemodel( "head_opforce_sniper_ghillie" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_ultra_nationalist_assault_c" );
    self attach( "head_spetsnaz_assault_boris", "", 1 );
    self._ID18304 = "head_spetsnaz_assault_boris";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_ultra_nationalist_assault_c" );
    precachemodel( "head_spetsnaz_assault_boris" );
}

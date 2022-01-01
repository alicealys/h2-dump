// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_spetsnaz_assault_boris" );
    self attach( "head_spetsnaz_assault_boris", "", 1 );
    self._ID18304 = "head_spetsnaz_assault_boris";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_spetsnaz_assault_boris" );
    precachemodel( "head_spetsnaz_assault_boris" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_ultra_nationalist_assault_d" );
    self attach( "head_spetsnaz_assault_geoff", "", 1 );
    self._ID18304 = "head_spetsnaz_assault_geoff";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_ultra_nationalist_assault_d" );
    precachemodel( "head_spetsnaz_assault_geoff" );
}

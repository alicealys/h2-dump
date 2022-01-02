// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_ultra_nationalist_assault_b" );
    self attach( "head_spetsnaz_assault_vlad_facemask", "", 1 );
    self._ID18304 = "head_spetsnaz_assault_vlad_facemask";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_ultra_nationalist_assault_b" );
    precachemodel( "head_spetsnaz_assault_vlad_facemask" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_assault_a" );
    self attach( "head_airport_a", "", 1 );
    self._ID18304 = "head_airport_a";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_airborne_assault_a" );
    precachemodel( "head_airport_a" );
}

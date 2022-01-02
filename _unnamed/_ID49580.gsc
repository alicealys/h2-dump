// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airport_com_d" );
    self attach( "head_airport_b", "", 1 );
    self._ID18304 = "head_airport_b";
    self._ID40757 = "seal";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_airport_com_d" );
    precachemodel( "head_airport_b" );
}

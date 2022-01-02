// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airport_com_b" );
    self attach( "head_airport_anatoly", "", 1 );
    self._ID18304 = "head_airport_anatoly";
    self._ID40757 = "seal";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_airport_com_b" );
    precachemodel( "head_airport_anatoly" );
}

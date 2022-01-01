// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_airport_com_e" );
    self attach( "head_airport_yuri", "", 1 );
    self._ID18304 = "head_airport_yuri";
    self._ID40757 = "seal";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_airport_com_e" );
    precachemodel( "head_airport_yuri" );
}

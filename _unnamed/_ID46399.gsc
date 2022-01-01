// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_airport_com_a" );
    self attach( "h2_head_vil_makarov", "", 1 );
    self._ID18304 = "h2_head_vil_makarov";
    self._ID40757 = "seal";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_airport_com_a" );
    precachemodel( "h2_head_vil_makarov" );
}

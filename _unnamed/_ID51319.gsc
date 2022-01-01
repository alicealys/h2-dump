// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_riot_udt" );
    self attach( "head_riot_udt", "", 1 );
    self._ID18304 = "head_riot_udt";
    self._ID40757 = "shadowcompany";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_riot_udt" );
    precachemodel( "head_riot_udt" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_force_assault_woodland" );
    self attach( "head_force_assault", "", 1 );
    self._ID18304 = "head_force_assault";
    self._ID40757 = "british";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_force_assault_woodland" );
    precachemodel( "head_force_assault" );
}

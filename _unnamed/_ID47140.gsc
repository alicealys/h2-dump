// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_force_c_woodland" );
    self attach( "head_force_c", "", 1 );
    self._ID18304 = "head_force_c";
    self._ID40757 = "british";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_force_c_woodland" );
    precachemodel( "head_force_c" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_force_b_woodland" );
    self attach( "head_force_chad", "", 1 );
    self._ID18304 = "head_force_chad";
    self._ID40757 = "british";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_force_b_woodland" );
    precachemodel( "head_force_chad" );
}

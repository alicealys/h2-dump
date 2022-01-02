// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_shadow_co_smg" );
    self attach( "head_shadow_co_c", "", 1 );
    self._ID18304 = "head_shadow_co_c";
    self._ID40757 = "shadowcompany";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_shadow_co_smg" );
    precachemodel( "head_shadow_co_c" );
}

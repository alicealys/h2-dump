// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_seal_udt_smg" );
    self attach( "h2_head_seal_udt_b_c", "", 1 );
    self._ID18304 = "h2_head_seal_udt_b_c";
    self._ID40757 = "seal";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "h2_body_seal_udt_smg" );
    precachemodel( "h2_head_seal_udt_b_c" );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_seal_udt_smg" );
    self attach( "h2_head_seal_udt_b_c", "", 1 );
    self.headmodel = "h2_head_seal_udt_b_c";
    self.voice = "seal";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "h2_body_seal_udt_smg" );
    precachemodel( "h2_head_seal_udt_b_c" );
}

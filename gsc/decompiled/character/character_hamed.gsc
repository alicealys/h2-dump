// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arab_smg_a_hamed" );
    self attach( "head_trn_hamed", "", 1 );
    self.headmodel = "head_trn_hamed";
    self.voice = "arab";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_arab_smg_a_hamed" );
    precachemodel( "head_trn_hamed" );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_shadow_co_smg_pilot" );
    self attach( "head_shadow_co_c_pilot", "", 1 );
    self.headmodel = "head_shadow_co_c_pilot";
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_shadow_co_smg_pilot" );
    precachemodel( "head_shadow_co_c_pilot" );
}

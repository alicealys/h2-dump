// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_sniper_ghillie" );
    self attach( "head_opforce_sniper_ghillie", "", 1 );
    self.headmodel = "head_opforce_sniper_ghillie";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_sniper_ghillie" );
    precachemodel( "head_opforce_sniper_ghillie" );
}

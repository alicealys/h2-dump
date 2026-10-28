// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "Body_US_army_Shotgun" );
    self attach( "h2_head_riot_udt", "", 1 );
    self.headmodel = "h2_head_riot_udt";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "Body_US_army_Shotgun" );
    precachemodel( "h2_head_riot_udt" );
}

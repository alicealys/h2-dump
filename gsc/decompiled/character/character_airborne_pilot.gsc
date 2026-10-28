// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_airborne_pilot" );
    self attach( "h2_head_airborne_pilot", "", 1 );
    self.headmodel = "h2_head_airborne_pilot";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "h2_body_airborne_pilot" );
    precachemodel( "h2_head_airborne_pilot" );
}

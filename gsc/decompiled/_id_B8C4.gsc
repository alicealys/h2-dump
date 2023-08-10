// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_airborne_shotgun_c" );
    self attach( "h2_head_airborne_a", "", 1 );
    self.headmodel = "h2_head_airborne_a";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "h2_body_airborne_shotgun_c" );
    precachemodel( "h2_head_airborne_a" );
}

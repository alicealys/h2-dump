// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_assault_a" );
    self attach( "head_airport_a", "", 1 );
    self.headmodel = "head_airport_a";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airborne_assault_a" );
    precachemodel( "head_airport_a" );
}

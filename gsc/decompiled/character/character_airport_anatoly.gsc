// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airport_com_b" );
    self attach( "head_airport_anatoly", "", 1 );
    self.headmodel = "head_airport_anatoly";
    self.voice = "seal";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airport_com_b" );
    precachemodel( "head_airport_anatoly" );
}

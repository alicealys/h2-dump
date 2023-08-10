// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airport_com_e" );
    self attach( "head_airport_yuri", "", 1 );
    self.headmodel = "head_airport_yuri";
    self.voice = "seal";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airport_com_e" );
    precachemodel( "head_airport_yuri" );
}

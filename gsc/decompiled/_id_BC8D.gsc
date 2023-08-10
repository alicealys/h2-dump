// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_tf141_assault_a" );
    self attach( "head_hero_price_arctic", "", 1 );
    self.headmodel = "head_hero_price_arctic";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_tf141_assault_a" );
    precachemodel( "head_hero_price_arctic" );
}

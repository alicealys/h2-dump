// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_assault_a_foley" );
    self attach( "head_hero_foley", "", 1 );
    self.headmodel = "head_hero_foley";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_assault_a_foley" );
    precachemodel( "head_hero_foley" );
}

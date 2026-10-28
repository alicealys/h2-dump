// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_desert_tf141_zodiac" );
    self attach( "head_hero_price_desert", "", 1 );
    self.headmodel = "head_hero_price_desert";
    self.voice = "seal";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_desert_tf141_zodiac" );
    precachemodel( "head_hero_price_desert" );
}

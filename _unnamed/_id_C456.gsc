// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_price_gulag" );
    self attach( "head_hero_price_gulag", "", 1 );
    self.headmodel = "head_hero_price_gulag";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_hero_price_gulag" );
    precachemodel( "head_hero_price_gulag" );
}

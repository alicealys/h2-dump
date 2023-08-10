// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_seal_udt_ghost" );
    self attach( "head_hero_ghost_udt", "", 1 );
    self.headmodel = "head_hero_ghost_udt";
    self.voice = "seal";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_hero_seal_udt_ghost" );
    precachemodel( "head_hero_ghost_udt" );
}

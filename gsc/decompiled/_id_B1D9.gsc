// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_ghost" );
    self attach( "head_hero_ghost_forest", "", 1 );
    self.headmodel = "head_hero_ghost_forest";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_forest_tf141_ghost" );
    precachemodel( "head_hero_ghost_forest" );
}

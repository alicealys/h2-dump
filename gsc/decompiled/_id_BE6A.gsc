// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_ghost_socom" );
    self attach( "head_hero_ghost_soccom", "", 1 );
    self.headmodel = "head_hero_ghost_soccom";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_hero_ghost_socom" );
    precachemodel( "head_hero_ghost_soccom" );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_arctic_tf141_ghost" );
    self attach( "head_hero_ghost_arctic", "", 1 );
    self.headmodel = "head_hero_ghost_arctic";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_arctic_tf141_ghost" );
    precachemodel( "head_hero_ghost_arctic" );
}

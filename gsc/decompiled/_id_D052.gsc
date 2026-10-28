// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_nikolai" );
    self attach( "head_hero_nikolai", "", 1 );
    self.headmodel = "head_hero_nikolai";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_hero_nikolai" );
    precachemodel( "head_hero_nikolai" );
}

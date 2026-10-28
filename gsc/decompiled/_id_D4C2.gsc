// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_lmg_dunn" );
    self attach( "head_hero_dunn", "", 1 );
    self.headmodel = "head_hero_dunn";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_lmg_dunn" );
    precachemodel( "head_hero_dunn" );
}

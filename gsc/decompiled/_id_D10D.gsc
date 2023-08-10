// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_corpse_civ_male_a" );
    self attach( "head_corpse_civ_male_a", "", 1 );
    self.headmodel = "head_corpse_civ_male_a";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_corpse_civ_male_a" );
    precachemodel( "head_corpse_civ_male_a" );
}

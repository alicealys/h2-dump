// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_slum_civ_female_a" );
    codescripts\character::attachhead( "alias_civ_slum_heads_female", xmodelalias\alias_civ_slum_heads_female::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_slum_civ_female_a" );
    codescripts\character::precachemodelarray( xmodelalias\alias_civ_slum_heads_female::main() );
}

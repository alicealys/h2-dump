// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_slum_civ_male_ab" );
    codescripts\character::attachhead( "alias_civilian_slum_heads", _id_A687::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_slum_civ_male_ab" );
    codescripts\character::precachemodelarray( _id_A687::main() );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_city_civ_male_a" );
    codescripts\character::attachhead( "alias_city_civ_male_heads", _id_BD16::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_city_civ_male_a" );
    codescripts\character::precachemodelarray( _id_BD16::main() );
}

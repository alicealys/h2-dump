// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_city_civ_male_a_drone" );
    codescripts\character::attachhead( "alias_civilian_urban_heads_wht_drone", _id_CB81::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_city_civ_male_a_drone" );
    codescripts\character::precachemodelarray( _id_CB81::main() );
}

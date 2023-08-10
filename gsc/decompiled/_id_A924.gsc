// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_urban_civ_female_a_drone" );
    codescripts\character::attachhead( "alias_civilian_urban_heads_fem_drone", _id_B8DA::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_urban_civ_female_a_drone" );
    codescripts\character::precachemodelarray( _id_B8DA::main() );
}

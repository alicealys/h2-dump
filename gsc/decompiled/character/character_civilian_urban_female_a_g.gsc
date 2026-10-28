// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_urban_civ_female_a_g" );
    codescripts\character::attachhead( "alias_civilian_urban_heads_female", _id_B934::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_urban_civ_female_a_g" );
    codescripts\character::precachemodelarray( _id_B934::main() );
}

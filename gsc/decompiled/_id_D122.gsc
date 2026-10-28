// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_urban_civ_male_ac_drone" );
    codescripts\character::attachhead( "alias_civilian_urban_heads_wht_drone", _id_CB81::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_urban_civ_male_ac_drone" );
    codescripts\character::precachemodelarray( _id_CB81::main() );
}

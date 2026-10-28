// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_urban_civ_male_bc_white" );
    codescripts\character::attachhead( "alias_civilian_urban_heads_wht", _id_C06D::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_urban_civ_male_bc_white" );
    codescripts\character::precachemodelarray( _id_C06D::main() );
}

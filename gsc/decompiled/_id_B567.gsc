// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_dmg_b_wht" );
    codescripts\character::attachhead( "alias_us_army_heads_dmg_wht", _id_BEA4::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_dmg_b_wht" );
    codescripts\character::precachemodelarray( _id_BEA4::main() );
}

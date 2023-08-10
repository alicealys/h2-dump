// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_lmg" );
    codescripts\character::attachhead( "alias_us_army_heads", _id_A89C::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_lmg" );
    codescripts\character::precachemodelarray( _id_A89C::main() );
}

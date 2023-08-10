// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_ally_arab_trn_assault_a" );
    codescripts\character::attachhead( "alias_trn_arab_heads", _id_BCD6::main() );
    self.voice = "arab";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_ally_arab_trn_assault_a" );
    codescripts\character::precachemodelarray( _id_BCD6::main() );
}

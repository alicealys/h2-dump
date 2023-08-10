// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arab_assault_a" );
    codescripts\character::attachhead( "alias_opforce_arab_heads", _id_BBE0::main() );
    self.voice = "arab";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_arab_assault_a" );
    codescripts\character::precachemodelarray( _id_BBE0::main() );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arctic_assault_b" );
    codescripts\character::attachhead( "alias_opforce_arctic_heads", _id_D127::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_arctic_assault_b" );
    codescripts\character::precachemodelarray( _id_D127::main() );
}

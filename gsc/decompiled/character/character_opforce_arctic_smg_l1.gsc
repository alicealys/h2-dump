// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arctic_smg_L1" );
    codescripts\character::attachhead( "alias_opforce_arctic_heads_L1", xmodelalias\alias_opforce_arctic_heads_l1::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_arctic_smg_L1" );
    codescripts\character::precachemodelarray( xmodelalias\alias_opforce_arctic_heads_l1::main() );
}

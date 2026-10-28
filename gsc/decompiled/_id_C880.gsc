// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_seal_udt_dive_a" );
    codescripts\character::attachhead( "alias_seal_udt_heads_dive", _id_C2EE::main() );
    self.voice = "seal";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_seal_udt_dive_a" );
    codescripts\character::precachemodelarray( _id_C2EE::main() );
}

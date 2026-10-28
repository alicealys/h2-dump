// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_seal_udt_smg" );
    codescripts\character::attachhead( "alias_seal_udt_heads", _id_BAEB::main() );
    self.voice = "seal";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_seal_udt_smg" );
    codescripts\character::precachemodelarray( _id_BAEB::main() );
}

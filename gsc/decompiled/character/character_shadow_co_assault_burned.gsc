// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_shadow_co_assault_burned" );
    codescripts\character::attachhead( "alias_shad_co_heads", _id_CEEA::main() );
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "h2_body_shadow_co_assault_burned" );
    codescripts\character::precachemodelarray( _id_CEEA::main() );
}

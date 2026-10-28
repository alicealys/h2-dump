// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_sp_cobra_pilot_woodland_zack" );
    codescripts\character::attachhead( "alias_shad_co_heads", _id_CEEA::main() );
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_sp_cobra_pilot_woodland_zack" );
    codescripts\character::precachemodelarray( _id_CEEA::main() );
}

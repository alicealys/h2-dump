// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_secret_service_shotgun" );
    codescripts\character::attachhead( "alias_secret_service_heads_blazer", _id_AF9A::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_secret_service_shotgun" );
    codescripts\character::precachemodelarray( _id_AF9A::main() );
}

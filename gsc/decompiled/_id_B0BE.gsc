// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_tf141_assault_a" );
    codescripts\character::attachhead( "alias_tf141_heads_arctic", _id_AE76::main() );
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_tf141_assault_a" );
    codescripts\character::precachemodelarray( _id_AE76::main() );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_seal_soccom_assault_c_blk" );
    codescripts\character::attachhead( "alias_seal_soccom_heads_h_blk", _id_BA38::main() );
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_seal_soccom_assault_c_blk" );
    codescripts\character::precachemodelarray( _id_BA38::main() );
}

// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_seal_soccom_assault_d" );
    codescripts\character::attachhead( "alias_seal_soccom_heads_h", _id_CE44::main() );
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_seal_soccom_assault_d" );
    codescripts\character::precachemodelarray( _id_CE44::main() );
}

// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_shotgun" );
    codescripts\character::attachhead( "alias_tf141_heads_forest", _id_C03B::main() );
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_forest_tf141_shotgun" );
    codescripts\character::precachemodelarray( _id_C03B::main() );
}

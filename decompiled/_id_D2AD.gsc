// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_merc_shotgun_a" );
    codescripts\character::attachhead( "alias_opforce_merc_heads", _id_CA8C::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_merc_shotgun_a" );
    codescripts\character::precachemodelarray( _id_CA8C::main() );
}

// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_us_army_paramedic" );
    codescripts\character::attachhead( "alias_us_army_heads", _id_A89C::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "h2_body_us_army_paramedic" );
    codescripts\character::precachemodelarray( _id_A89C::main() );
}

// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_slum_civ_male_ab_wht" );
    codescripts\character::attachhead( "alias_civilian_slum_heads_wht", _id_A688::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_slum_civ_male_ab_wht" );
    codescripts\character::precachemodelarray( _id_A688::main() );
}

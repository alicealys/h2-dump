// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_dmg_a_blk" );
    codescripts\character::attachhead( "alias_us_army_heads_dmg_blk", _id_BF96::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_dmg_a_blk" );
    codescripts\character::precachemodelarray( _id_BF96::main() );
}

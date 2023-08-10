// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_casual_a_blk" );
    codescripts\character::attachhead( "alias_us_army_heads_casual_blk", xmodelalias\alias_us_army_heads_casual_blk::main() );
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_casual_a_blk" );
    codescripts\character::precachemodelarray( xmodelalias\alias_us_army_heads_casual_blk::main() );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_fsb_shotgun" );
    codescripts\character::attachhead( "alias_opforce_fsb_heads", _id_BB77::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_fsb_shotgun" );
    codescripts\character::precachemodelarray( _id_BB77::main() );
}

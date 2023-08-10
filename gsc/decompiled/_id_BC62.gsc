// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_militia_smg_aa_wht" );
    codescripts\character::attachhead( "alias_opforce_militia_heads_wht", _id_BB1E::main() );
    self.voice = "portuguese";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_militia_smg_aa_wht" );
    codescripts\character::precachemodelarray( _id_BB1E::main() );
}

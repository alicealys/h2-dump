// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_op_miltia_sniper" );
    self attach( "head_op_militia_sniper", "", 1 );
    self.headmodel = "head_op_militia_sniper";
    self.voice = "portuguese";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_op_miltia_sniper" );
    precachemodel( "head_op_militia_sniper" );
}

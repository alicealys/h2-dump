// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_op_arctic_sniper" );
    self attach( "head_op_arctic_sniper", "", 1 );
    self.headmodel = "head_op_arctic_sniper";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_op_arctic_sniper" );
    precachemodel( "head_op_arctic_sniper" );
}

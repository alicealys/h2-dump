// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_desert_tf141_lmg" );
    self attach( "head_seal_soccom_rook", "", 1 );
    self.headmodel = "head_seal_soccom_rook";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_desert_tf141_lmg" );
    precachemodel( "head_seal_soccom_rook" );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_faust" );
    self attach( "head_vil_faust", "", 1 );
    self.headmodel = "head_vil_faust";
    self.voice = "portuguese";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_vil_faust" );
    precachemodel( "head_vil_faust" );
}

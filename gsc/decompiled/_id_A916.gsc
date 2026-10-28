// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_faust_assist" );
    self attach( "head_vil_faust_assist", "", 1 );
    self.headmodel = "head_vil_faust_assist";
    self.voice = "portuguese";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_vil_faust_assist" );
    precachemodel( "head_vil_faust_assist" );
}

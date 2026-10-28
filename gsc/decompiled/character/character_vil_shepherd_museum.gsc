// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_vil_shepherd_cheat" );
    self attach( "head_vil_shepherd", "", 1 );
    self.headmodel = "head_vil_shepherd";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "h2_body_vil_shepherd_cheat" );
    precachemodel( "head_vil_shepherd" );
}

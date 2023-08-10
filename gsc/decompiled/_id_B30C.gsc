// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_shepherd_no_gun" );
    self attach( "head_vil_shepherd", "", 1 );
    self.headmodel = "head_vil_shepherd";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_vil_shepherd_no_gun" );
    precachemodel( "head_vil_shepherd" );
}

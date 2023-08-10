// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_casual_a_wht" );
    self attach( "head_army_welder", "", 1 );
    self.headmodel = "head_army_welder";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_casual_a_wht" );
    precachemodel( "head_army_welder" );
}

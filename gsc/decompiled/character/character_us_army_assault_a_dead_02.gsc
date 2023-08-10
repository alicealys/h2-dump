// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_assault_a_dead_elevator_02" );
    self attach( "head_us_army_c_dead_elevator", "", 1 );
    self.headmodel = "head_us_army_c_dead_elevator";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_us_army_assault_a_dead_elevator_02" );
    precachemodel( "head_us_army_c_dead_elevator" );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_work_civ_male_a" );
    self attach( "head_work_civ_welder", "", 1 );
    self.headmodel = "head_work_civ_welder";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_work_civ_male_a" );
    precachemodel( "head_work_civ_welder" );
}

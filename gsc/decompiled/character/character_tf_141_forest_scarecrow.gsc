// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_assault_b" );
    self attach( "head_tf141_scarecrow", "", 1 );
    self.headmodel = "head_tf141_scarecrow";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_forest_tf141_assault_b" );
    precachemodel( "head_tf141_scarecrow" );
}

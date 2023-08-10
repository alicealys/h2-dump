// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_shotgun" );
    self attach( "head_tf141_forest_b", "", 1 );
    self.headmodel = "head_tf141_forest_b";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_forest_tf141_shotgun" );
    precachemodel( "head_tf141_forest_b" );
}

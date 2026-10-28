// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_shepherd_no_gun_dmg" );
    self attach( "h2_head_vil_shepherd_dmg_light", "", 1 );
    self.headmodel = "h2_head_vil_shepherd_dmg_light";
    self.voice = "american";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_vil_shepherd_no_gun_dmg" );
    precachemodel( "h2_head_vil_shepherd_dmg_light" );
}

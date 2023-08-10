// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level.tweakfile = 0;
    var_0 = maps\_utility::create_vision_set_fog( "trainer_start" );
    var_0.startdist = 397.849;
    var_0.halfwaydist = 5634.92;
    var_0.red = 0.59127;
    var_0.green = 0.516798;
    var_0.blue = 0.510139;
    var_0.maxopacity = 0.510139;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 1;
    var_0.sunred = 0.59127;
    var_0.sungreen = 0.516798;
    var_0.sunblue = 0.510139;
    var_0.sundir = ( 1, 0.069, 0.06 );
    var_0.sunbeginfadeangle = 0;
    var_0.sunendfadeangle = 90;
    var_0.normalfogscale = 1;
    var_0 = maps\_utility::create_vision_set_fog( "trainer_pit" );
    var_0.startdist = 190;
    var_0.halfwaydist = 2027;
    var_0.red = 0.59127;
    var_0.green = 0.516798;
    var_0.blue = 0.510139;
    var_0.maxopacity = 0.354791;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 1;
    var_0.sunred = 0.664398;
    var_0.sungreen = 0.530552;
    var_0.sunblue = 0.369598;
    var_0.sundir = ( -0.00230909, -0.00172138, -0.40625 );
    var_0.sunbeginfadeangle = 65;
    var_0.sunendfadeangle = 90;
    var_0.normalfogscale = 2;
    var_0 = maps\_utility::create_vision_set_fog( "trainer_pit_splitscreen" );
    var_0.startdist = 50;
    var_0.halfwaydist = 527;
    var_0.red = 0.99127;
    var_0.green = 0.516798;
    var_0.blue = 0.510139;
    var_0.maxopacity = 0.354791;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 1;
    var_0.sunred = 0.664398;
    var_0.sungreen = 0.530552;
    var_0.sunblue = 0.369598;
    var_0.sundir = ( -0.00230909, -0.00172138, -0.40625 );
    var_0.sunbeginfadeangle = 65;
    var_0.sunendfadeangle = 90;
    var_0.normalfogscale = 2;
    maps\_utility::vision_set_fog_changes( "trainer_start", 0 );
}

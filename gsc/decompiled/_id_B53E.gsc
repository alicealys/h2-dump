// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    var_0 = maps\_utility::create_vision_set_fog( "favela" );
    var_0.startdist = 200;
    var_0.halfwaydist = 22000;
    var_0.red = 0.562109;
    var_0.green = 0.600449;
    var_0.blue = 0.678415;
    var_0.maxopacity = 0.5;
    var_0.transitiontime = 10;
    var_0.sunfogenabled = 1;
    var_0.sunred = 0.88;
    var_0.sungreen = 0.88;
    var_0.sunblue = 0.864;
    var_0.sundir = ( 0.89008, -0.302316, -0.341119 );
    var_0.sunbeginfadeangle = 0;
    var_0.sunendfadeangle = 51;
    var_0.normalfogscale = 1.8;
    var_0 = maps\_utility::create_vision_set_fog( "favela_shanty" );
    var_0.startdist = 200;
    var_0.halfwaydist = 25000;
    var_0.red = 0.562109;
    var_0.green = 0.600449;
    var_0.blue = 0.678415;
    var_0.maxopacity = 0.5;
    var_0.transitiontime = 10;
    var_0.sunfogenabled = 1;
    var_0.sunred = 0.88;
    var_0.sungreen = 0.88;
    var_0.sunblue = 0.864;
    var_0.sundir = ( 0.89008, -0.302316, -0.341119 );
    var_0.sunbeginfadeangle = 0;
    var_0.sunendfadeangle = 51;
    var_0.normalfogscale = 1.8;
    maps\_utility::vision_set_fog_changes( "favela", 0 );
}

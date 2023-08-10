// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    sunflare();
    var_0 = maps\_utility::create_vision_set_fog( "boneyard" );
    var_0.startdist = 3764.17;
    var_0.halfwaydist = 19391;
    var_0.red = 1;
    var_0.green = 0.925269;
    var_0.blue = 0.847076;
    var_0.hdrcolorintensity = 12.2088;
    var_0.maxopacity = 0.7;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0, 0, 0 );
    var_0.sunbeginfadeangle = 0;
    var_0.sunendfadeangle = 1;
    var_0.normalfogscale = 1;
    var_0.skyfogintensity = 0;
    var_0.skyfogminangle = 0;
    var_0.skyfogmaxangle = 0;
    var_0.heightfogenabled = 0;
    var_0.heightfogbaseheight = 0;
    var_0.heightfoghalfplanedistance = 1000;
    var_0.atmosfogenabled = 1;
    var_0.atmosfogsunfogcolor = ( 0.483613, 0.493639, 0.539063 );
    var_0.atmosfoghazecolor = ( 0.710938, 0.506698, 0.365664 );
    var_0.atmosfoghazestrength = 0.0468069;
    var_0.atmosfoghazespread = 0.0147601;
    var_0.atmosfogextinctionstrength = 0.940959;
    var_0.atmosfoginscatterstrength = 20.0111;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 11181.8;
    var_0.atmosfogstartdistance = 227.43;
    var_0.atmosfogdistancescale = 1.0076;
    var_0.atmosfogskydistance = 100000;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 0;
    var_0.atmosfogskyfalloffanglerange = 24.5756;
    var_0.atmosfogsundirection = ( 0.686494, 0.7115, 0.149976 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = 0;
    var_0.atmosfogheightfoghalfplanedistance = 705;
    var_0 = maps\_utility::create_vision_set_fog( "boneyard_flyby" );
    var_0.startdist = 3764.17;
    var_0.halfwaydist = 19391;
    var_0.red = 1;
    var_0.green = 0.925269;
    var_0.blue = 0.847076;
    var_0.hdrcolorintensity = 12.2088;
    var_0.maxopacity = 0.7;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0, 0, 0 );
    var_0.sunbeginfadeangle = 0;
    var_0.sunendfadeangle = 1;
    var_0.normalfogscale = 1;
    var_0.skyfogintensity = 0;
    var_0.skyfogminangle = 0;
    var_0.skyfogmaxangle = 0;
    var_0.heightfogenabled = 0;
    var_0.heightfogbaseheight = 0;
    var_0.heightfoghalfplanedistance = 1000;
    var_0.atmosfogenabled = 1;
    var_0.atmosfogsunfogcolor = ( 0.483613, 0.493639, 0.539063 );
    var_0.atmosfoghazecolor = ( 0.710938, 0.506698, 0.365664 );
    var_0.atmosfoghazestrength = 0.0468069;
    var_0.atmosfoghazespread = 0.0147601;
    var_0.atmosfogextinctionstrength = 0.940959;
    var_0.atmosfoginscatterstrength = 20.0111;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 11181.8;
    var_0.atmosfogstartdistance = 227.43;
    var_0.atmosfogdistancescale = 1.0076;
    var_0.atmosfogskydistance = 100000;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 0;
    var_0.atmosfogskyfalloffanglerange = 24.5756;
    var_0.atmosfogsundirection = ( 0.686494, 0.7115, 0.149976 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = 0;
    var_0.atmosfogheightfoghalfplanedistance = 705;
}

sunflare()
{
    var_0 = maps\_utility::create_sunflare_setting( "default" );
    var_0.position = ( -10.9988, 43.0526, 0 );
    maps\_art::sunflare_changes( "default", 0 );
}

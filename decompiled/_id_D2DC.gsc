// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    sunflare();
    var_0 = maps\_utility::create_vision_set_fog( "contingency" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.818987, 0.898798, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.907595, 0.792405 );
    var_0.atmosfoghazestrength = 0.0730198;
    var_0.atmosfoghazespread = 0.0148515;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 19.2502;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 7750;
    var_0.atmosfogstartdistance = 700;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 150000;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 35;
    var_0.atmosfogskyfalloffanglerange = 150;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = -0.0761897;
    var_0.atmosfogheightfoghalfplanedistance = 1436.5;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_interior" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.818987, 0.898798, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.8475, 0.6588 );
    var_0.atmosfoghazestrength = 0.109329;
    var_0.atmosfoghazespread = 0.033;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 18.3366;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 4827.72;
    var_0.atmosfogstartdistance = 1860;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 145773;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 18.4901;
    var_0.atmosfogskyfalloffanglerange = 19.604;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = -0.0761897;
    var_0.atmosfogheightfoghalfplanedistance = 1436.5;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_forest" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.925406, 0.958296, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.880152, 0.731646 );
    var_0.atmosfoghazestrength = 0;
    var_0.atmosfoghazespread = 0.033;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 16.5;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = -15;
    var_0._id_BB60 = 30;
    var_0.atmosfoghalfplanedistance = 600;
    var_0.atmosfogstartdistance = -15;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 150000;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 35;
    var_0.atmosfogskyfalloffanglerange = 150;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = 349.855;
    var_0.atmosfogheightfoghalfplanedistance = 860.972;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_river_alt" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.925406, 0.958296, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.880152, 0.731646 );
    var_0.atmosfoghazestrength = 0;
    var_0.atmosfoghazespread = 0.033;
    var_0.atmosfogextinctionstrength = 0.8;
    var_0.atmosfoginscatterstrength = 18.5;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 1000;
    var_0.atmosfogstartdistance = 250;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 150000;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 35;
    var_0.atmosfogskyfalloffanglerange = 150;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = 0;
    var_0.atmosfogheightfoghalfplanedistance = 1150;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_river" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.834442, 0.920037, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.880152, 0.731646 );
    var_0.atmosfoghazestrength = 0;
    var_0.atmosfoghazespread = 0.033;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 18.5;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 3000;
    var_0.atmosfogstartdistance = 700;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 150000;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 35;
    var_0.atmosfogskyfalloffanglerange = 150;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = 0;
    var_0.atmosfogheightfoghalfplanedistance = 1150;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_bayview" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.818987, 0.898798, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.8475, 0.6588 );
    var_0.atmosfoghazestrength = 0.155;
    var_0.atmosfoghazespread = 0.0334158;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 19.28;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 24980;
    var_0.atmosfogstartdistance = 250;
    var_0.atmosfogdistancescale = 1.125;
    var_0.atmosfogskydistance = 120050;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 18.4901;
    var_0.atmosfogskyfalloffanglerange = 19.604;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = -0.0761897;
    var_0.atmosfogheightfoghalfplanedistance = 3565;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_village" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.818987, 0.898798, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.8475, 0.6588 );
    var_0.atmosfoghazestrength = 0.109329;
    var_0.atmosfoghazespread = 0.033;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 18.3366;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 7055.43;
    var_0.atmosfogstartdistance = 1625;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 145773;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 18.4901;
    var_0.atmosfogskyfalloffanglerange = 19.604;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = -0.0761897;
    var_0.atmosfogheightfoghalfplanedistance = 1436.5;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_port" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.818987, 0.898798, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.8475, 0.6588 );
    var_0.atmosfoghazestrength = 0.109329;
    var_0.atmosfoghazespread = 0.033;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 18.3366;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 4827.72;
    var_0.atmosfogstartdistance = 1860;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 145773;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 18.4901;
    var_0.atmosfogskyfalloffanglerange = 19.604;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = -0.0761897;
    var_0.atmosfogheightfoghalfplanedistance = 1436.5;
    var_0 = maps\_utility::create_vision_set_fog( "contingency_nukelaunch" );
    var_0.startdist = 17346.3;
    var_0.halfwaydist = 32487.6;
    var_0.red = 1;
    var_0.green = 0.957944;
    var_0.blue = 0.747583;
    var_0.hdrcolorintensity = 12.029;
    var_0.maxopacity = 1;
    var_0.transitiontime = 0;
    var_0.sunfogenabled = 0;
    var_0.sunred = 0.5;
    var_0.sungreen = 0.5;
    var_0.sunblue = 0.5;
    var_0.hdrsuncolorintensity = -8;
    var_0.sundir = ( 0.0, 0.0, 0.0 );
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
    var_0.atmosfogsunfogcolor = ( 0.818987, 0.898798, 1.0 );
    var_0.atmosfoghazecolor = ( 1.0, 0.8475, 0.6588 );
    var_0.atmosfoghazestrength = 0.109329;
    var_0.atmosfoghazespread = 0.033;
    var_0.atmosfogextinctionstrength = 1;
    var_0.atmosfoginscatterstrength = 18.3366;
    var_0._id_BE60 = 0;
    var_0._id_CFD8 = 0;
    var_0._id_C92F = 3;
    var_0._id_BB60 = 10;
    var_0.atmosfoghalfplanedistance = 4827.72;
    var_0.atmosfogstartdistance = 1860;
    var_0.atmosfogdistancescale = 1;
    var_0.atmosfogskydistance = 145773;
    var_0.atmosfogskyangularfalloffenabled = 1;
    var_0.atmosfogskyfalloffstartangle = 18.4901;
    var_0.atmosfogskyfalloffanglerange = 19.604;
    var_0.atmosfogsundirection = ( 0.641288, 0.679329, 0.356738 );
    var_0.atmosfogheightfogenabled = 1;
    var_0.atmosfogheightfogbaseheight = -0.0761897;
    var_0.atmosfogheightfoghalfplanedistance = 1436.5;
}

sunflare()
{
    var_0 = maps\_utility::create_sunflare_setting( "default" );
    var_0.position = ( -19.7326, 46.8885, 0.0 );
    maps\_art::sunflare_changes( "default", 0 );
}

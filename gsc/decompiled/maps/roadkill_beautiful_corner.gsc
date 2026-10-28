// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_AB15::init();
    _id_B342::main();
    _id_D0E9::main();
    _id_C028::main();
    maps\roadkill_anim::main();
    _id_B42D::main();
    common_scripts\utility::flag_init( "intro_started" );
    common_scripts\utility::flag_init( "ambush" );
    common_scripts\utility::flag_init( "roadkill_town_dialogue" );
    thread _id_C9D0();
    maps\_load::main();
    maps\roadkill_aud::main();
    maps\roadkill_lighting::main();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _id_C056::initialize();
    thread _id_B1F8();
    _id_C056::_id_BAA1();
    return 1;
}

_id_C9D0()
{
    level waittill( "move_view_request" );
    var_0 = maps\_utility::getfxarraybyid( "explosion_air" );

    foreach ( var_2 in var_0 )
        var_2.looper delete();
}

_id_B1F8()
{
    var_0 = spawn( "script_origin", ( -7760.75, 9455.78, 630.365 ) );
    var_0.angles = ( 2.02118, -173.394, 0 );
    var_0.targetname = "beautiful_corner_start";
    var_0 = spawn( "script_origin", ( -7760.75, 9455.78, 630.365 ) );
    var_0.angles = ( 2.02118, -173.394, 0 );
    var_0.targetname = "beautiful_corner_start_static";
    var_0 = spawn( "script_origin", ( -8287.64, 9440.2, 630.365 ) );
    var_0.angles = ( 2.02118, -173.394, 0 );
    var_0.targetname = "beautiful_corner_start_end";
    var_0 = spawn( "script_origin", ( -8287.64, 9440.2, 630.365 ) );
    var_0.angles = ( 2.02118, -173.394, 0 );
    var_0.targetname = "beautiful_corner_start_static_end";
    var_0 = spawn( "script_origin", ( -10560.9, 11256.9, 493.231 ) );
    var_0.angles = ( -9.18032, 50.1934, 0 );
    var_0.targetname = "beautiful_corner_start2";
    var_0 = spawn( "script_origin", ( -10560.9, 11256.9, 493.231 ) );
    var_0.angles = ( -9.18032, 50.1934, 0 );
    var_0.targetname = "beautiful_corner_start2_static";
    var_0 = spawn( "script_origin", ( -10145.2, 11549.9, 493.231 ) );
    var_0.angles = ( -11.7007, 54.5665, 0 );
    var_0.targetname = "beautiful_corner_start2_end";
    var_0 = spawn( "script_origin", ( -10145.2, 11549.9, 493.231 ) );
    var_0.angles = ( -11.7007, 54.5665, 0 );
    var_0.targetname = "beautiful_corner_start2_static_end";
    var_0 = spawn( "script_origin", ( -3177.33, 1644.84, 326.451 ) );
    var_0.angles = ( -21.4525, 101.183, 0 );
    var_0.targetname = "beautiful_corner_start3";
    var_0 = spawn( "script_origin", ( -3177.33, 1644.84, 326.451 ) );
    var_0.angles = ( -21.4525, 101.183, 0 );
    var_0.targetname = "beautiful_corner_start3_static";
    var_0 = spawn( "script_origin", ( -3153.15, 1571.7, 215.307 ) );
    var_0.angles = ( -22.725, 72.6216, 0 );
    var_0.targetname = "beautiful_corner_start3_end";
    var_0 = spawn( "script_origin", ( -3153.15, 1571.7, 215.307 ) );
    var_0.angles = ( -22.725, 72.6216, 0 );
    var_0.targetname = "beautiful_corner_start3_static_end";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner_start" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner_start2" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner_start3" );
    level._id_D39A["beautiful_corner_start"] = "roadkill_inside_school";
    level._id_D39A["beautiful_corner_start2"] = "roadkill";
    level._id_D39A["beautiful_corner_start3"] = "roadkill";
    level._id_C37F["beautiful_corner_start"] = "roadkill_interior";
    level._id_C37F["beautiful_corner_start2"] = "roadkill";
    level._id_C37F["beautiful_corner_start3"] = "roadkill";
    level._id_D4BE["beautiful_corner_start"] = "";
    level._id_D4BE["beautiful_corner_start2"] = "";
    level._id_D4BE["beautiful_corner_start3"] = "";
    level._id_B5A8["beautiful_corner_start"] = [];
    level._id_B5A8["beautiful_corner_start"]["fstop"] = 2.8;
    level._id_B5A8["beautiful_corner_start"]["focus_distance"] = 2000;
    level._id_B5A8["beautiful_corner_start"]["focus_speed"] = 20;
    level._id_B5A8["beautiful_corner_start"]["aperture_speed"] = 20;
    level._id_B5A8["beautiful_corner_start2"] = [];
    level._id_B5A8["beautiful_corner_start2"]["fstop"] = 6;
    level._id_B5A8["beautiful_corner_start2"]["focus_distance"] = 3600;
    level._id_B5A8["beautiful_corner_start2"]["focus_speed"] = 4;
    level._id_B5A8["beautiful_corner_start2"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner_start3"] = [];
    level._id_B5A8["beautiful_corner_start3"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner_start3"]["focus_distance"] = 2300;
    level._id_B5A8["beautiful_corner_start3"]["focus_speed"] = 4;
    level._id_B5A8["beautiful_corner_start3"]["aperture_speed"] = 1;
    level._id_B385["beautiful_corner_start"] = 75;
    level._id_B385["beautiful_corner_start2"] = 77;
    level._id_B385["beautiful_corner_start3"] = 75;
    level._id_B6BA["beautiful_corner_start"] = 15;
    level._id_B4A6["beautiful_corner_start"] = 0;
    level._id_CAC9["beautiful_corner_start"] = -0.5;
    level._id_B6BA["beautiful_corner_start2"] = 15;
    level._id_B4A6["beautiful_corner_start2"] = 0;
    level._id_CAC9["beautiful_corner_start2"] = -0.5;
    level._id_B6BA["beautiful_corner_start3"] = 15;
    level._id_B4A6["beautiful_corner_start3"] = 0;
    level._id_CAC9["beautiful_corner_start3"] = -0.5;
}

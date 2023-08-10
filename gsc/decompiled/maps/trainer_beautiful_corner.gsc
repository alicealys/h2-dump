// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C662()
{
    maps\trainer::pre_load();
    maps\_load::main();
    maps\trainer::post_load();
    common_scripts\utility::flag_init( "remaster_blockout" );
    common_scripts\utility::flag_set( "remaster_blockout" );
    setdvar( "bcs_enable", 0 );
    _id_C056::initialize();
    var_0 = getentarray( "trigger_multiple_visionset", "classname" );

    foreach ( var_2 in var_0 )
        var_2 delete();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _id_B1F8();
    _id_C056::_id_BAA1();
    return 1;
}

_id_B1F8()
{
    var_0 = spawn( "script_origin", ( -2734.51, 4680.94, -94.7982 ) );
    var_0.angles = ( -6.81363, -43.409, 0 );
    var_0.targetname = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( -2734.51, 4680.94, -94.7982 ) );
    var_0.angles = ( -6.81363, -43.409, 0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -2775.33, 4585.88, 82.2454 ) );
    var_0.angles = ( 13.3062, -44.0695, 0 );
    var_0.targetname = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( -2775.33, 4585.88, 82.2454 ) );
    var_0.angles = ( 13.3062, -44.0695, 0 );
    var_0.targetname = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( -5516.93, 2856.31, -57.2168 ) );
    var_0.angles = ( -1.27373, -21.6926, 0 );
    var_0.targetname = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( -5516.93, 2856.31, -57.2168 ) );
    var_0.angles = ( -1.27373, -21.6926, 0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( -4859.42, 2758.27, 52.8312 ) );
    var_0.angles = ( 11.1922, -34.7326, 0 );
    var_0.targetname = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( -4859.42, 2758.27, 52.8312 ) );
    var_0.angles = ( 11.1922, -34.7326, 0 );
    var_0.targetname = "beautiful_corner2_static_end";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner1" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner2" );
    level._id_D39A["beautiful_corner1"] = "trainer_start";
    level._id_D39A["beautiful_corner2"] = "trainer_start";
    level._id_C37F["beautiful_corner1"] = "trainer";
    level._id_C37F["beautiful_corner2"] = "trainer_pit";
    level._id_D4BE["beautiful_corner1"] = "";
    level._id_D4BE["beautiful_corner2"] = "";
    level._id_B5A8["beautiful_corner1"] = [];
    level._id_B5A8["beautiful_corner1"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner1"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner1"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner1"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner2"] = [];
    level._id_B5A8["beautiful_corner2"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner2"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner2"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner2"]["aperture_speed"] = 1;
    level._id_B385["beautiful_corner1"] = 75;
    level._id_B385["beautiful_corner2"] = 75;
    level._id_B6BA["beautiful_corner1"] = 15;
    level._id_B4A6["beautiful_corner1"] = 0;
    level._id_CAC9["beautiful_corner1"] = -0.5;
    level._id_B6BA["beautiful_corner2"] = 15;
    level._id_B4A6["beautiful_corner2"] = 0;
    level._id_CAC9["beautiful_corner2"] = -0.5;
}

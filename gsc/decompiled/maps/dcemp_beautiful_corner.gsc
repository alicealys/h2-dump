// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C662()
{
    maps\_utility::add_start( "corner", maps\dcemp::_id_D33D, "[corner] -> watch the plane crash", maps\dcemp::_id_A8B3 );
    level.start_point = "corner";
    maps\dcemp::_id_B5B0();
    maps\dcemp::_id_C2B0();
    level thread maps\dcemp_endpart::_id_C73E();
    thread maps\_weather::rainmedium( 1 );
    _id_C056::initialize();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _id_B1F8();
    _id_C056::_id_BAA1();
    return 1;
}

_id_B1F8()
{
    var_0 = spawn( "script_origin", ( -45711, 12085.1, -383.042 ) );
    var_0.angles = ( -11.4381, 34.3818, 0 );
    var_0.targetname = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( -45711, 12085.1, -383.042 ) );
    var_0.angles = ( -11.4381, 34.3818, 0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -45295.9, 12184.9, -383.561 ) );
    var_0.angles = ( -19.5305, 44.1777, 0 );
    var_0.targetname = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( -45295.9, 12184.9, -383.561 ) );
    var_0.angles = ( -19.5305, 44.1777, 0 );
    var_0.targetname = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0.angles = ( 7.20392, 41.7512, 0 );
    var_0.targetname = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0.angles = ( 7.20392, 41.7512, 0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0.angles = ( -29.1134, -53.8974, 0 );
    var_0.targetname = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0.angles = ( -29.1134, -53.8974, 0 );
    var_0.targetname = "beautiful_corner2_static_end";
    var_0 = spawn( "script_origin", ( -41189.1, 21555.3, -644.844 ) );
    var_0.angles = ( 7.35865, 17.9528, 0 );
    var_0.targetname = "beautiful_corner3";
    var_0 = spawn( "script_origin", ( -41189.1, 21555.3, -644.844 ) );
    var_0.angles = ( 7.35865, 17.9528, 0 );
    var_0.targetname = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( -40831.7, 21628, -644.844 ) );
    var_0.angles = ( 5.02659, 28.0979, 0 );
    var_0.targetname = "beautiful_corner3_end";
    var_0 = spawn( "script_origin", ( -40831.7, 21628, -644.844 ) );
    var_0.angles = ( 5.02659, 28.0979, 0 );
    var_0.targetname = "beautiful_corner3_static_end";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner1" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner2" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner3" );
    level._id_D39A["beautiful_corner1"] = "dcemp_postemp2";
    level._id_D39A["beautiful_corner2"] = "dcemp_postemp2";
    level._id_D39A["beautiful_corner3"] = "dcemp_tunnels";
    level._id_C37F["beautiful_corner1"] = "dcemp";
    level._id_C37F["beautiful_corner2"] = "dcemp";
    level._id_C37F["beautiful_corner3"] = "dcemp";
    level._id_D4BE["beautiful_corner1"] = "";
    level._id_D4BE["beautiful_corner2"] = "";
    level._id_D4BE["beautiful_corner3"] = "";
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
    level._id_B5A8["beautiful_corner3"] = [];
    level._id_B5A8["beautiful_corner3"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner3"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner3"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner3"]["aperture_speed"] = 1;
    level._id_B385["beautiful_corner1"] = 75;
    level._id_B385["beautiful_corner2"] = 75;
    level._id_B385["beautiful_corner3"] = 75;
    level._id_B6BA["beautiful_corner1"] = 15;
    level._id_B4A6["beautiful_corner1"] = 0;
    level._id_CAC9["beautiful_corner1"] = -0.5;
    level._id_B6BA["beautiful_corner2"] = 15;
    level._id_B4A6["beautiful_corner2"] = 0;
    level._id_CAC9["beautiful_corner2"] = -0.5;
    level._id_B6BA["beautiful_corner3"] = 15;
    level._id_B4A6["beautiful_corner3"] = 0;
    level._id_CAC9["beautiful_corner3"] = -0.5;
    level._id_AD38["beautiful_corner1"] = ::timed_lightning_strike;
    level._id_AD38["beautiful_corner2"] = ::timed_lightning_strike;
}

timed_lightning_strike()
{
    maps\_utility::delaythread( 3, maps\_weather::lightning, _id_CD74::lightning_normal, _id_CD74::lightning_flash );
}

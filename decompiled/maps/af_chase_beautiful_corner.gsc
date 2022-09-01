// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

_id_C662()
{
    _id_AB15::init();
    _id_BDA4::main();
    _id_D557::main();
    maps\af_chase_lighting::main();
    maps\af_chase_anim::_id_A902();
    _id_CC30::main();
    maps\_load::main();
    _id_BE1D::_id_CD39( "viewhands_player_tf141" );
    _id_B257::main();
    var_0 = getentarray( "script_vehicle_zodiac_player", "classname" );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, _id_BE1D::_id_C525 );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, maps\af_chase_code::_id_BCEC );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, maps\af_chase_code::_id_ACA8 );

    if ( getdvar( "beautiful_corner_demo" ) == "1" || getdvar( "beautiful_corner_hdr_demo" ) == "1" )
    {
        _id_C056::initialize();
        [[ common_scripts\utility::ter_op( getdvar( "beautiful_corner_demo" ) == "1", ::_id_B1F8, ::_id_AA8B ) ]]();
        _id_C056::_id_BAA1();
    }

    return 1;
}

_id_AA8B()
{
    level._id_AE3E = 1;
    var_0 = spawn( "script_origin", ( -13859.0, 984.0, 53.0 ) );
    var_0.angles = ( -5.09474, -80.4452, 0.0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -16414.0, -26198.0, 107.0 ) );
    var_0.angles = ( -7.36998, -45.76, 0.0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( 15356.0, -40312.0, 543.0 ) );
    var_0.angles = ( -2.75002, -15.1801, 0.0 );
    var_0.targetname = "beautiful_corner3_static";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner1" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner2" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner3" );
    level._id_D39A["beautiful_corner1"] = "af_chase_caves";
    level._id_D39A["beautiful_corner2"] = "af_chase";
    level._id_D39A["beautiful_corner3"] = "af_chase";
    level._id_C37F["beautiful_corner1"] = "af_chase_caves";
    level._id_C37F["beautiful_corner2"] = "af_chase";
    level._id_C37F["beautiful_corner3"] = "af_chase";
    level._id_D4BE["beautiful_corner1"] = "";
    level._id_D4BE["beautiful_corner2"] = "";
    level._id_D4BE["beautiful_corner3"] = "";
    level._id_B5A8["beautiful_corner1"] = undefined;
    level._id_B5A8["beautiful_corner2"] = undefined;
    level._id_B5A8["beautiful_corner3"] = undefined;
    level._id_B385["beautiful_corner1"] = 65;
    level._id_B385["beautiful_corner2"] = 65;
    level._id_B385["beautiful_corner3"] = 65;
    level._id_B6BA["beautiful_corner1"] = 0;
    level._id_B4A6["beautiful_corner1"] = 0;
    level._id_CAC9["beautiful_corner1"] = -0.5;
    level._id_B6BA["beautiful_corner2"] = 0;
    level._id_B4A6["beautiful_corner2"] = 0;
    level._id_CAC9["beautiful_corner2"] = -0.5;
    level._id_B6BA["beautiful_corner3"] = 0;
    level._id_B4A6["beautiful_corner3"] = 0;
    level._id_CAC9["beautiful_corner3"] = -0.5;
}

_id_B1F8()
{
    var_0 = spawn( "script_origin", ( -19533.8, 1238.38, 67.6755 ) );
    var_0.angles = ( -16.7402, 64.0057, 0.0 );
    var_0.targetname = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( -19533.8, 1238.38, 67.6755 ) );
    var_0.angles = ( -16.7402, 64.0057, 0.0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -19533.8, 1238.38, 67.6755 ) );
    var_0.angles = ( -17.5235, 13.1804, 0.0 );
    var_0.targetname = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( -19533.8, 1238.38, 67.6755 ) );
    var_0.angles = ( -17.5235, 13.1804, 0.0 );
    var_0.targetname = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( -15692.0, -3446.0, 51.0 ) );
    var_0.angles = ( -10.3498, -86.5061, 0.0 );
    var_0.targetname = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( -15692.0, -3446.0, 51.0 ) );
    var_0.angles = ( -10.3498, -86.5061, 0.0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( -15305.1, -3776.84, 51.0 ) );
    var_0.angles = ( -15.3441, -112.855, 0.0 );
    var_0.targetname = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( -15305.1, -3776.84, 51.0 ) );
    var_0.angles = ( -15.3441, -112.855, 0.0 );
    var_0.targetname = "beautiful_corner2_static_end";
    var_0 = spawn( "script_origin", ( -13695.2, 1294.13, 50.0 ) );
    var_0.angles = ( -8.12587, -68.0667, 0.0 );
    var_0.targetname = "beautiful_corner3";
    var_0 = spawn( "script_origin", ( -13695.2, 1294.13, 50.0 ) );
    var_0.angles = ( -8.12587, -68.0667, 0.0 );
    var_0.targetname = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( -13917.2, -187.502, 50.0 ) );
    var_0.angles = ( -18.4174, -94.0542, 0.0 );
    var_0.targetname = "beautiful_corner3_end";
    var_0 = spawn( "script_origin", ( -13917.2, -187.502, 50.0 ) );
    var_0.angles = ( -18.4174, -94.0542, 0.0 );
    var_0.targetname = "beautiful_corner3_static_end";
    var_0 = spawn( "script_origin", ( -16370.1, -16052.7, 144.977 ) );
    var_0.angles = ( -4.55559, -141.267, 0.0 );
    var_0.targetname = "beautiful_corner4";
    var_0 = spawn( "script_origin", ( -16370.1, -16052.7, 144.977 ) );
    var_0.angles = ( -4.55559, -141.267, 0.0 );
    var_0.targetname = "beautiful_corner4_static";
    var_0 = spawn( "script_origin", ( -19431.1, -18656.9, 144.977 ) );
    var_0.angles = ( -16.7398, -152.321, 0.0 );
    var_0.targetname = "beautiful_corner4_end";
    var_0 = spawn( "script_origin", ( -19431.1, -18656.9, 144.977 ) );
    var_0.angles = ( -16.7398, -152.321, 0.0 );
    var_0.targetname = "beautiful_corner4_static_end";
    var_0 = spawn( "script_origin", ( -18230.5, -12719.0, 78.6101 ) );
    var_0.angles = ( -1.73674, -51.7498, 0.0 );
    var_0.targetname = "beautiful_corner5";
    var_0 = spawn( "script_origin", ( -18230.5, -12719.0, 78.6101 ) );
    var_0.angles = ( -1.73674, -51.7498, 0.0 );
    var_0.targetname = "beautiful_corner5_static";
    var_0 = spawn( "script_origin", ( -17774.2, -13603.0, 78.6101 ) );
    var_0.angles = ( -7.46572, -41.2516, 0.0 );
    var_0.targetname = "beautiful_corner5_end";
    var_0 = spawn( "script_origin", ( -17774.2, -13603.0, 78.6101 ) );
    var_0.angles = ( -7.46572, -41.2516, 0.0 );
    var_0.targetname = "beautiful_corner5_static_end";
    var_0 = spawn( "script_origin", ( -18745.3, -23574.5, 48.2589 ) );
    var_0.angles = ( -2.85999, -55.02, 0.0 );
    var_0.targetname = "beautiful_corner6";
    var_0 = spawn( "script_origin", ( -18745.3, -23574.5, 48.2589 ) );
    var_0.angles = ( -2.85999, -55.02, 0.0 );
    var_0.targetname = "beautiful_corner6_static";
    var_0 = spawn( "script_origin", ( -15771.2, -27825.0, 198.318 ) );
    var_0.angles = ( -2.85999, -55.02, 0.0 );
    var_0.targetname = "beautiful_corner6_end";
    var_0 = spawn( "script_origin", ( -15771.2, -27825.0, 198.318 ) );
    var_0.angles = ( -2.85999, -55.02, 0.0 );
    var_0.targetname = "beautiful_corner6_static_end";
    var_0 = spawn( "script_origin", ( 23086.1, -31757.3, 132.0 ) );
    var_0.angles = ( -15.443, 100.144, 0.0 );
    var_0.targetname = "beautiful_corner7";
    var_0 = spawn( "script_origin", ( 23086.1, -31757.3, 132.0 ) );
    var_0.angles = ( -15.443, 100.144, 0.0 );
    var_0.targetname = "beautiful_corner7_static";
    var_0 = spawn( "script_origin", ( 25216.9, -29945.2, 132.0 ) );
    var_0.angles = ( -20.0926, 135.223, 0.0 );
    var_0.targetname = "beautiful_corner7_end";
    var_0 = spawn( "script_origin", ( 25216.9, -29945.2, 132.0 ) );
    var_0.angles = ( -20.0926, 135.223, 0.0 );
    var_0.targetname = "beautiful_corner7_static_end";
    var_0 = spawn( "script_origin", ( 17149.0, -41170.0, 326.0 ) );
    var_0.angles = ( 1.59842, 49.1439, 0.0 );
    var_0.targetname = "beautiful_corner8";
    var_0 = spawn( "script_origin", ( 17149.0, -41170.0, 326.0 ) );
    var_0.angles = ( 1.59842, 49.1439, 0.0 );
    var_0.targetname = "beautiful_corner8_static";
    var_0 = spawn( "script_origin", ( 19056.3, -38784.0, 236.969 ) );
    var_0.angles = ( 4.93104, 51.4362, 0.0 );
    var_0.targetname = "beautiful_corner8_end";
    var_0 = spawn( "script_origin", ( 19056.3, -38784.0, 236.969 ) );
    var_0.angles = ( 4.93104, 51.4362, 0.0 );
    var_0.targetname = "beautiful_corner8_static_end";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner1" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner2" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner3" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner4" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner5" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner6" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner7" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner8" );
    level._id_D39A["beautiful_corner1"] = "af_chase_caves_start";
    level._id_D39A["beautiful_corner2"] = "af_chase_caves";
    level._id_D39A["beautiful_corner3"] = "af_chase_caves_open";
    level._id_D39A["beautiful_corner4"] = "af_chase_caves_open";
    level._id_D39A["beautiful_corner5"] = "af_chase_caves_open";
    level._id_D39A["beautiful_corner6"] = "af_chase";
    level._id_D39A["beautiful_corner7"] = "af_chase";
    level._id_D39A["beautiful_corner8"] = "af_chase";
    level._id_C37F["beautiful_corner1"] = "af_chase_caves_start";
    level._id_C37F["beautiful_corner2"] = "af_chase_caves";
    level._id_C37F["beautiful_corner3"] = "af_chase_caves_open";
    level._id_C37F["beautiful_corner4"] = "af_chase_caves_open";
    level._id_C37F["beautiful_corner5"] = "af_chase_caves_open";
    level._id_C37F["beautiful_corner6"] = "af_chase";
    level._id_C37F["beautiful_corner7"] = "af_chase";
    level._id_C37F["beautiful_corner8"] = "af_chase";
    level._id_D4BE["beautiful_corner1"] = "";
    level._id_D4BE["beautiful_corner2"] = "";
    level._id_D4BE["beautiful_corner3"] = "";
    level._id_D4BE["beautiful_corner4"] = "";
    level._id_D4BE["beautiful_corner5"] = "";
    level._id_D4BE["beautiful_corner6"] = "";
    level._id_D4BE["beautiful_corner7"] = "";
    level._id_D4BE["beautiful_corner8"] = "";
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
    level._id_B5A8["beautiful_corner4"] = [];
    level._id_B5A8["beautiful_corner4"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner4"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner4"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner4"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner5"] = [];
    level._id_B5A8["beautiful_corner5"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner5"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner5"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner5"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner6"] = [];
    level._id_B5A8["beautiful_corner6"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner6"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner6"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner6"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner7"] = [];
    level._id_B5A8["beautiful_corner7"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner7"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner7"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner7"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner8"] = [];
    level._id_B5A8["beautiful_corner8"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner8"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner8"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner8"]["aperture_speed"] = 1;
    level._id_B385["beautiful_corner1"] = 75;
    level._id_B385["beautiful_corner2"] = 75;
    level._id_B385["beautiful_corner3"] = 75;
    level._id_B385["beautiful_corner4"] = 75;
    level._id_B385["beautiful_corner5"] = 75;
    level._id_B385["beautiful_corner6"] = 75;
    level._id_B385["beautiful_corner7"] = 75;
    level._id_B385["beautiful_corner8"] = 75;
    level._id_B6BA["beautiful_corner1"] = 15;
    level._id_B4A6["beautiful_corner1"] = 0;
    level._id_CAC9["beautiful_corner1"] = -0.5;
    level._id_B6BA["beautiful_corner2"] = 15;
    level._id_B4A6["beautiful_corner2"] = 0;
    level._id_CAC9["beautiful_corner2"] = -0.5;
    level._id_B6BA["beautiful_corner3"] = 15;
    level._id_B4A6["beautiful_corner3"] = 0;
    level._id_CAC9["beautiful_corner3"] = -0.5;
    level._id_B6BA["beautiful_corner4"] = 15;
    level._id_B4A6["beautiful_corner4"] = 0;
    level._id_CAC9["beautiful_corner4"] = -0.5;
    level._id_B6BA["beautiful_corner5"] = 15;
    level._id_B4A6["beautiful_corner5"] = 0;
    level._id_CAC9["beautiful_corner5"] = -0.5;
    level._id_B6BA["beautiful_corner6"] = 15;
    level._id_B4A6["beautiful_corner6"] = 0;
    level._id_CAC9["beautiful_corner6"] = -0.5;
    level._id_B6BA["beautiful_corner7"] = 15;
    level._id_B4A6["beautiful_corner7"] = 0;
    level._id_CAC9["beautiful_corner7"] = -0.5;
    level._id_B6BA["beautiful_corner8"] = 15;
    level._id_B4A6["beautiful_corner8"] = 0;
    level._id_CAC9["beautiful_corner8"] = -0.5;
}

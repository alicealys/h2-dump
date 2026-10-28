// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C662()
{
    if ( !_id_C056::initialize() )
        return 0;

    _id_AB15::init();
    _id_B22E::main();
    _id_C989::main();
    _id_C908::main();
    maps\estate_anim::main();
    _id_BA9C::main();
    maps\_load::main();
    maps\estate_aud::main();
    maps\estate_lighting::main();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _id_B1F8();
    _id_C056::_id_BAA1();
    return 1;
}

_id_B1F8()
{
    var_0 = spawn( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0.angles = ( 2.20589, -71.5575, 0 );
    var_0.targetname = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0.angles = ( 2.20589, -71.5575, 0 );
    var_0.targetname = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0.angles = ( 1.95522, -17.5269, 0 );
    var_0.targetname = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0.angles = ( 1.95522, -17.5269, 0 );
    var_0.targetname = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( -1922.16, 5032.95, -236.059 ) );
    var_0.angles = ( -9.7044, -24.3502, 0 );
    var_0.targetname = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( -1922.16, 5032.95, -236.059 ) );
    var_0.angles = ( -9.7044, -24.3502, 0 );
    var_0.targetname = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( -2052.68, 4619.73, -229.676 ) );
    var_0.angles = ( -7.95674, -0.9221, 0 );
    var_0.targetname = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( -2052.68, 4619.73, -229.676 ) );
    var_0.angles = ( -7.95674, -0.9221, 0 );
    var_0.targetname = "beautiful_corner2_static_end";
    var_0 = spawn( "script_origin", ( 1133.06, 982.983, 37.7682 ) );
    var_0.angles = ( -10.3412, -133.791, 0 );
    var_0.targetname = "beautiful_corner3";
    var_0 = spawn( "script_origin", ( 1133.06, 982.983, 37.7682 ) );
    var_0.angles = ( -10.3412, -133.791, 0 );
    var_0.targetname = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( 1597.06, 375.49, 25.7014 ) );
    var_0.angles = ( -10.2548, -166.111, 0 );
    var_0.targetname = "beautiful_corner3_end";
    var_0 = spawn( "script_origin", ( 1597.06, 375.49, 25.7014 ) );
    var_0.angles = ( -10.2548, -166.111, 0 );
    var_0.targetname = "beautiful_corner3_static_end";
    var_0 = spawn( "script_origin", ( -113.137, -428.731, -5.5314 ) );
    var_0.angles = ( -5.13261, -32.7386, 0 );
    var_0.targetname = "beautiful_corner4";
    var_0 = spawn( "script_origin", ( -113.137, -428.731, -5.5314 ) );
    var_0.angles = ( -5.13261, -32.7386, 0 );
    var_0.targetname = "beautiful_corner4_static";
    var_0 = spawn( "script_origin", ( 80.1618, -194.019, -5.5314 ) );
    var_0.angles = ( -6.38945, -48.0155, 0 );
    var_0.targetname = "beautiful_corner4_end";
    var_0 = spawn( "script_origin", ( 80.1618, -194.019, -5.5314 ) );
    var_0.angles = ( -6.38945, -48.0155, 0 );
    var_0.targetname = "beautiful_corner4_static_end";
    var_0 = spawn( "script_origin", ( 231.933, 411.053, 128.848 ) );
    var_0.angles = ( 13.2, 174.86, 0 );
    var_0.targetname = "beautiful_corner5";
    var_0 = spawn( "script_origin", ( 231.933, 411.053, 128.848 ) );
    var_0.angles = ( 13.2, 174.86, 0 );
    var_0.targetname = "beautiful_corner5_static";
    var_0 = spawn( "script_origin", ( 34.9582, 351.465, 381.565 ) );
    var_0.angles = ( 21.45, 160.26, 0 );
    var_0.targetname = "beautiful_corner5_end";
    var_0 = spawn( "script_origin", ( 34.9582, 351.465, 381.565 ) );
    var_0.angles = ( 21.45, 160.26, 0 );
    var_0.targetname = "beautiful_corner5_static_end";
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner1" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner2" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner3" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner4" );
    level._id_A949 = common_scripts\utility::array_add( level._id_A949, "beautiful_corner5" );
    level._id_D39A["beautiful_corner1"] = "estate";
    level._id_D39A["beautiful_corner2"] = "estate";
    level._id_D39A["beautiful_corner3"] = "estate";
    level._id_D39A["beautiful_corner4"] = "estate";
    level._id_D39A["beautiful_corner5"] = "estate_interior";
    level._id_C37F["beautiful_corner1"] = "estate";
    level._id_C37F["beautiful_corner2"] = "estate";
    level._id_C37F["beautiful_corner3"] = "estate";
    level._id_C37F["beautiful_corner4"] = "estate";
    level._id_C37F["beautiful_corner5"] = "estate_interior";
    level._id_D4BE["beautiful_corner1"] = "clut_estate";
    level._id_D4BE["beautiful_corner2"] = "clut_estate";
    level._id_D4BE["beautiful_corner3"] = "clut_estate";
    level._id_D4BE["beautiful_corner4"] = "clut_estate";
    level._id_D4BE["beautiful_corner5"] = "clut_estate";
    level._id_B5A8["beautiful_corner1"] = [];
    level._id_B5A8["beautiful_corner1"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner1"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner1"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner1"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner2"] = [];
    level._id_B5A8["beautiful_corner2"]["fstop"] = 1.6;
    level._id_B5A8["beautiful_corner2"]["focus_distance"] = 500;
    level._id_B5A8["beautiful_corner2"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner2"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner3"] = [];
    level._id_B5A8["beautiful_corner3"]["fstop"] = 5.6;
    level._id_B5A8["beautiful_corner3"]["focus_distance"] = 500;
    level._id_B5A8["beautiful_corner3"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner3"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner4"] = [];
    level._id_B5A8["beautiful_corner4"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner4"]["focus_distance"] = 200;
    level._id_B5A8["beautiful_corner4"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner4"]["aperture_speed"] = 1;
    level._id_B5A8["beautiful_corner5"] = [];
    level._id_B5A8["beautiful_corner5"]["fstop"] = 2;
    level._id_B5A8["beautiful_corner5"]["focus_distance"] = 150;
    level._id_B5A8["beautiful_corner5"]["focus_speed"] = 2;
    level._id_B5A8["beautiful_corner5"]["aperture_speed"] = 1;
    level._id_B385["beautiful_corner1"] = 75;
    level._id_B385["beautiful_corner2"] = 75;
    level._id_B385["beautiful_corner3"] = 75;
    level._id_B385["beautiful_corner4"] = 75;
    level._id_B385["beautiful_corner5"] = 75;
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
}

_id_C85F()
{
    var_0 = getent( "fake_backwards_door", "targetname" );
    var_1 = getent( "fake_backwards_door_clip", "targetname" );
    var_0 delete();
    var_1 delete();
    var_2 = getentarray( "breach_solid", "targetname" );
    common_scripts\utility::array_thread( var_2, maps\_utility::self_delete );
    var_3 = getent( "recroom_open_doors", "targetname" );
    var_4 = getent( "recroom_open_doors_model", "targetname" );
    var_4 hide();
    var_5 = getent( "recroom_closed_doors", "targetname" );
    var_6 = getent( "recroom_closed_doors_model", "targetname" );
    var_5 delete();
    var_6 delete();
    var_3 show();
    var_7 = getent( "paper_window_sightblocker", "targetname" );
    var_7 delete();
    var_8 = getentarray( "window_newspaper", "targetname" );

    foreach ( var_10 in var_8 )
        var_10 delete();

    var_12 = getentarray( "window_pane", "targetname" );

    foreach ( var_14 in var_12 )
        var_14 delete();

    var_16 = getentarray( "window_brokenglass", "targetname" );

    foreach ( var_18 in var_16 )
        var_18 show();

    var_20 = getentarray( "window_blinds", "targetname" );

    foreach ( var_22 in var_20 )
        var_22 delete();

    var_24 = getentarray( "window_smasher", "targetname" );

    foreach ( var_26 in var_24 )
        radiusdamage( var_26.origin, var_26.radius, 1000, 1000 );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50786()
{
    maps\trainer::_ID28333();
    _ID42323::main();
    maps\trainer::_ID28284();
    _ID42237::_ID14400( "remaster_blockout" );
    _ID42237::_ID14402( "remaster_blockout" );
    setdvar( "bcs_enable", 0 );
    _ID49238::_ID19930();
    var_0 = getentarray( "trigger_multiple_visionset", "classname" );

    foreach ( var_2 in var_0 )
        var_2 delete();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _ID45560();
    _ID49238::_ID47777();
    return 1;
}

_ID45560()
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
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID54170["beautiful_corner1"] = "trainer_start";
    level._ID54170["beautiful_corner2"] = "trainer_start";
    level._ID50047["beautiful_corner1"] = "trainer";
    level._ID50047["beautiful_corner2"] = "trainer_pit";
    level._ID54462["beautiful_corner1"] = "";
    level._ID54462["beautiful_corner2"] = "";
    level._ID46504["beautiful_corner1"] = [];
    level._ID46504["beautiful_corner1"]["fstop"] = 2;
    level._ID46504["beautiful_corner1"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner1"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner1"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner2"] = [];
    level._ID46504["beautiful_corner2"]["fstop"] = 2;
    level._ID46504["beautiful_corner2"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner2"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner2"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner1"] = 75;
    level._ID45957["beautiful_corner2"] = 75;
    level._ID46778["beautiful_corner1"] = 15;
    level._ID46246["beautiful_corner1"] = 0;
    level._ID51913["beautiful_corner1"] = -0.5;
    level._ID46778["beautiful_corner2"] = 15;
    level._ID46246["beautiful_corner2"] = 0;
    level._ID51913["beautiful_corner2"] = -0.5;
}

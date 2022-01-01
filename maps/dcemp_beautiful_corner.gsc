// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50786()
{
    _ID42407::_ID1951( "corner", maps\dcemp::_ID54077, "[corner] -> watch the plane crash", maps\dcemp::_ID43187 );
    level._ID35897 = "corner";
    maps\dcemp::_ID46512();
    maps\dcemp::_ID49840();
    level thread maps\dcemp_endpart::_ID51006();
    thread _ID42422::_ID28930( 1 );
    _ID49238::_ID19930();

    if ( getdvar( "beautiful_corner_demo" ) != "1" )
        return 1;

    _ID45560();
    _ID49238::_ID47777();
    return 1;
}

_ID45560()
{
    var_0 = spawn( "script_origin", ( -45711, 12085.1, -383.042 ) );
    var_0._ID65 = ( -11.4381, 34.3818, 0 );
    var_0._ID1193 = "beautiful_corner1";
    var_0 = spawn( "script_origin", ( -45711, 12085.1, -383.042 ) );
    var_0._ID65 = ( -11.4381, 34.3818, 0 );
    var_0._ID1193 = "beautiful_corner1_static";
    var_0 = spawn( "script_origin", ( -45295.9, 12184.9, -383.561 ) );
    var_0._ID65 = ( -19.5305, 44.1777, 0 );
    var_0._ID1193 = "beautiful_corner1_end";
    var_0 = spawn( "script_origin", ( -45295.9, 12184.9, -383.561 ) );
    var_0._ID65 = ( -19.5305, 44.1777, 0 );
    var_0._ID1193 = "beautiful_corner1_static_end";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0._ID65 = ( 7.20392, 41.7512, 0 );
    var_0._ID1193 = "beautiful_corner2";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0._ID65 = ( 7.20392, 41.7512, 0 );
    var_0._ID1193 = "beautiful_corner2_static";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0._ID65 = ( -29.1134, -53.8974, 0 );
    var_0._ID1193 = "beautiful_corner2_end";
    var_0 = spawn( "script_origin", ( -44008.5, 12580.3, -394.563 ) );
    var_0._ID65 = ( -29.1134, -53.8974, 0 );
    var_0._ID1193 = "beautiful_corner2_static_end";
    var_0 = spawn( "script_origin", ( -41189.1, 21555.3, -644.844 ) );
    var_0._ID65 = ( 7.35865, 17.9528, 0 );
    var_0._ID1193 = "beautiful_corner3";
    var_0 = spawn( "script_origin", ( -41189.1, 21555.3, -644.844 ) );
    var_0._ID65 = ( 7.35865, 17.9528, 0 );
    var_0._ID1193 = "beautiful_corner3_static";
    var_0 = spawn( "script_origin", ( -40831.7, 21628, -644.844 ) );
    var_0._ID65 = ( 5.02659, 28.0979, 0 );
    var_0._ID1193 = "beautiful_corner3_end";
    var_0 = spawn( "script_origin", ( -40831.7, 21628, -644.844 ) );
    var_0._ID65 = ( 5.02659, 28.0979, 0 );
    var_0._ID1193 = "beautiful_corner3_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID54170["beautiful_corner1"] = "dcemp_postemp2";
    level._ID54170["beautiful_corner2"] = "dcemp_postemp2";
    level._ID54170["beautiful_corner3"] = "dcemp_tunnels";
    level._ID50047["beautiful_corner1"] = "dcemp";
    level._ID50047["beautiful_corner2"] = "dcemp";
    level._ID50047["beautiful_corner3"] = "dcemp";
    level._ID54462["beautiful_corner1"] = "";
    level._ID54462["beautiful_corner2"] = "";
    level._ID54462["beautiful_corner3"] = "";
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
    level._ID46504["beautiful_corner3"] = [];
    level._ID46504["beautiful_corner3"]["fstop"] = 2;
    level._ID46504["beautiful_corner3"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner3"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner3"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner1"] = 75;
    level._ID45957["beautiful_corner2"] = 75;
    level._ID45957["beautiful_corner3"] = 75;
    level._ID46778["beautiful_corner1"] = 15;
    level._ID46246["beautiful_corner1"] = 0;
    level._ID51913["beautiful_corner1"] = -0.5;
    level._ID46778["beautiful_corner2"] = 15;
    level._ID46246["beautiful_corner2"] = 0;
    level._ID51913["beautiful_corner2"] = -0.5;
    level._ID46778["beautiful_corner3"] = 15;
    level._ID46246["beautiful_corner3"] = 0;
    level._ID51913["beautiful_corner3"] = -0.5;
    level._ID44344["beautiful_corner1"] = ::timed_lightning_strike;
    level._ID44344["beautiful_corner2"] = ::timed_lightning_strike;
}

timed_lightning_strike()
{
    _ID42407::_ID10226( 3, _ID42422::_ID22327, _ID52596::_ID22335, _ID52596::_ID22333 );
}

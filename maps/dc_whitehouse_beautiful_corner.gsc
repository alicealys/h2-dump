// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50786()
{
    _ID43797::_ID521();
    maps\dc_whitehouse::_ID46258();
    _ID50819::_ID616();
    _ID51366::_ID616();
    maps\dc_whitehouse_lighting::_ID616();
    _ID49734::_ID616();
    _ID54417::_ID616();
    _ID53829::_ID616();
    _ID42323::_ID616();
    maps\dc_whitehouse_anim::_ID616();
    maps\dc_whitehouse_aud::_ID616();
    level._ID1426["rain_10"] = _func_155( "fx/weather/rain_heavy_mist" );
    _ID42422::_ID28924( 1 );
    _ID42234::_ID21260( "5000" );
    _ID42234::_ID21260( "5004" );
    _ID42234::_ID13611( "5001" );
    _ID49238::_ID19930();

    if ( _func_039( "beautiful_corner_demo" ) != "1" )
        return 1;

    _unknown_0091();
    _ID49238::_ID47777();
    return 1;
}

_ID45560()
{
    var_0 = _func_06A( "script_origin", ( -8172.3, 5650.86, -675.088 ) );
    var_0._ID65 = ( -3.39184, 79.3223, 0 );
    var_0._ID1193 = "beautiful_corner1";
    var_0 = _func_06A( "script_origin", ( -8172.3, 5650.86, -675.088 ) );
    var_0._ID65 = ( -3.39184, 79.3223, 0 );
    var_0._ID1193 = "beautiful_corner1_static";
    var_0 = _func_06A( "script_origin", ( -8120.18, 6080.58, -675.088 ) );
    var_0._ID65 = ( -3.39184, 79.3223, 0 );
    var_0._ID1193 = "beautiful_corner1_end";
    var_0 = _func_06A( "script_origin", ( -8120.18, 6080.58, -675.088 ) );
    var_0._ID65 = ( -3.39184, 79.3223, 0 );
    var_0._ID1193 = "beautiful_corner1_static_end";
    var_0 = _func_06A( "script_origin", ( -7202.58, 7051, -704.487 ) );
    var_0._ID65 = ( -8.36047, 70.4356, 0 );
    var_0._ID1193 = "beautiful_corner2";
    var_0 = _func_06A( "script_origin", ( -7202.58, 7051, -704.487 ) );
    var_0._ID65 = ( -8.36047, 70.4356, 0 );
    var_0._ID1193 = "beautiful_corner2_static";
    var_0 = _func_06A( "script_origin", ( -7077.67, 7388.54, -684.654 ) );
    var_0._ID65 = ( -13.8477, 63.9559, 0 );
    var_0._ID1193 = "beautiful_corner2_end";
    var_0 = _func_06A( "script_origin", ( -7077.67, 7388.54, -684.654 ) );
    var_0._ID65 = ( -13.8477, 63.9559, 0 );
    var_0._ID1193 = "beautiful_corner2_static_end";
    var_0 = _func_06A( "script_origin", ( -1906.56, 9407.99, -275.604 ) );
    var_0._ID65 = ( 6.53337, -150.633, 0 );
    var_0._ID1193 = "beautiful_corner3";
    var_0 = _func_06A( "script_origin", ( -1906.56, 9407.99, -275.604 ) );
    var_0._ID65 = ( 6.53337, -150.633, 0 );
    var_0._ID1193 = "beautiful_corner3_static";
    var_0 = _func_06A( "script_origin", ( -1866.91, 9295.9, -275.604 ) );
    var_0._ID65 = ( 7.80484, -96.4484, 0 );
    var_0._ID1193 = "beautiful_corner3_end";
    var_0 = _func_06A( "script_origin", ( -1866.91, 9295.9, -275.604 ) );
    var_0._ID65 = ( 7.80484, -96.4484, 0 );
    var_0._ID1193 = "beautiful_corner3_static_end";
    var_0 = _func_06A( "script_origin", ( -2065.16, 8113.9, 136.483 ) );
    var_0._ID65 = ( -1.41756, 71.3538, 0 );
    var_0._ID1193 = "beautiful_corner4";
    var_0 = _func_06A( "script_origin", ( -2065.16, 8113.9, 136.483 ) );
    var_0._ID65 = ( -1.41756, 71.3538, 0 );
    var_0._ID1193 = "beautiful_corner4_static";
    var_0 = _func_06A( "script_origin", ( -1977.9, 8529.88, 136.483 ) );
    var_0._ID65 = ( 0.00911951, 68.5772, 0 );
    var_0._ID1193 = "beautiful_corner4_end";
    var_0 = _func_06A( "script_origin", ( -1977.9, 8529.88, 136.483 ) );
    var_0._ID65 = ( 0.00911951, 68.5772, 0 );
    var_0._ID1193 = "beautiful_corner4_static_end";
    var_0 = _func_06A( "script_origin", ( -2277.26, 8934.85, 360.913 ) );
    var_0._ID65 = ( 3.84054, -163.532, 0 );
    var_0._ID1193 = "beautiful_corner5";
    var_0 = _func_06A( "script_origin", ( -2277.26, 8934.85, 360.913 ) );
    var_0._ID65 = ( 3.84054, -163.532, 0 );
    var_0._ID1193 = "beautiful_corner5_static";
    var_0 = _func_06A( "script_origin", ( -3090.13, 8777.13, 360.913 ) );
    var_0._ID65 = ( 0.845754, 170.33, 0 );
    var_0._ID1193 = "beautiful_corner5_end";
    var_0 = _func_06A( "script_origin", ( -3090.13, 8777.13, 360.913 ) );
    var_0._ID65 = ( 0.845754, 170.33, 0 );
    var_0._ID1193 = "beautiful_corner5_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner4" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner5" );
    level._ID54170["beautiful_corner1"] = "dc_whitehouse_tunnel";
    level._ID54170["beautiful_corner2"] = "dc_whitehouse_tunnel";
    level._ID54170["beautiful_corner3"] = "dc_whitehouse_interior";
    level._ID54170["beautiful_corner4"] = "dc_whitehouse_interior";
    level._ID54170["beautiful_corner5"] = "dc_whitehouse_roof";
    level._ID50047["beautiful_corner1"] = "dc_whitehouse_tunnel";
    level._ID50047["beautiful_corner2"] = "dc_whitehouse_tunnel";
    level._ID50047["beautiful_corner3"] = "dc_whitehouse_interior";
    level._ID50047["beautiful_corner4"] = "dc_whitehouse_interior";
    level._ID50047["beautiful_corner5"] = "dc_whitehouse_balcony";
    level._ID54462["beautiful_corner1"] = "";
    level._ID54462["beautiful_corner2"] = "";
    level._ID54462["beautiful_corner3"] = "";
    level._ID54462["beautiful_corner4"] = "";
    level._ID54462["beautiful_corner5"] = "";
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
    level._ID46504["beautiful_corner4"] = [];
    level._ID46504["beautiful_corner4"]["fstop"] = 2;
    level._ID46504["beautiful_corner4"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner4"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner4"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner5"] = [];
    level._ID46504["beautiful_corner5"]["fstop"] = 2;
    level._ID46504["beautiful_corner5"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner5"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner5"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner1"] = 75;
    level._ID45957["beautiful_corner2"] = 75;
    level._ID45957["beautiful_corner3"] = 75;
    level._ID45957["beautiful_corner4"] = 75;
    level._ID45957["beautiful_corner5"] = 75;
    level._ID46778["beautiful_corner1"] = 15;
    level._ID46246["beautiful_corner1"] = 0;
    level._ID51913["beautiful_corner1"] = -0.5;
    level._ID46778["beautiful_corner2"] = 15;
    level._ID46246["beautiful_corner2"] = 0;
    level._ID51913["beautiful_corner2"] = -0.5;
    level._ID46778["beautiful_corner3"] = 15;
    level._ID46246["beautiful_corner3"] = 0;
    level._ID51913["beautiful_corner3"] = -0.5;
    level._ID46778["beautiful_corner4"] = 15;
    level._ID46246["beautiful_corner4"] = 0;
    level._ID51913["beautiful_corner4"] = -0.5;
    level._ID46778["beautiful_corner5"] = 15;
    level._ID46246["beautiful_corner5"] = 0;
    level._ID51913["beautiful_corner5"] = -0.5;
}

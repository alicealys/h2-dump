// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    if ( _func_039( "beautiful_corner" ) != "1" && _func_039( "beautiful_corner_demo" ) != "1" && _func_039( "beautiful_corner_security_cameras" ) != "1" )
        return 0;

    maps\af_caves::_ID52131();
    _ID43797::_ID521();
    _ID53206::_ID616();
    _ID44190::_ID616();
    maps\af_caves_anim::_ID616();
    _ID47599::_ID616();
    _ID42323::_ID616();
    maps\af_caves_lighting::_ID616();
    maps\af_caves_aud::_ID616();

    if ( _func_039( "beautiful_corner_security_cameras" ) == "1" )
    {
        _ID49238::_ID19930();
        _unknown_01B7();
        _ID49238::_ID47777();
    }
    else if ( _func_039( "beautiful_corner_demo" ) == "1" )
    {
        _ID49238::_ID19930();
        _unknown_00A5();
        _ID49238::_ID47777();
    }

    return 1;
}

_ID45560()
{
    var_0 = _func_06A( "script_origin", ( 2701.92, 13917.8, -1758.53 ) );
    var_0._ID65 = ( -13.1058, -20.3873, 0.999997 );
    var_0._ID1193 = "beautiful_corner1";
    var_0 = _func_06A( "script_origin", ( 2701.92, 13917.8, -1758.53 ) );
    var_0._ID65 = ( -13.1058, -20.3873, 0.999997 );
    var_0._ID1193 = "beautiful_corner1_static";
    var_0 = _func_06A( "script_origin", ( 2585.12, 13688.5, -1762.21 ) );
    var_0._ID65 = ( -4.83667, -100.724, 0.999997 );
    var_0._ID1193 = "beautiful_corner1_end";
    var_0 = _func_06A( "script_origin", ( 2585.12, 13688.5, -1762.21 ) );
    var_0._ID65 = ( -4.83667, -100.724, 0.999997 );
    var_0._ID1193 = "beautiful_corner1_static_end";
    var_0 = _func_06A( "script_origin", ( 4168.13, 6966.06, -3595.47 ) );
    var_0._ID65 = ( -16.8078, -88.1954, 0.999997 );
    var_0._ID1193 = "beautiful_corner2";
    var_0 = _func_06A( "script_origin", ( 4168.13, 6966.06, -3595.47 ) );
    var_0._ID65 = ( -16.8078, -88.1954, 0.999997 );
    var_0._ID1193 = "beautiful_corner2_static";
    var_0 = _func_06A( "script_origin", ( 3770.51, 6618.03, -3663.81 ) );
    var_0._ID65 = ( -26.9486, -51.9002, 0.999997 );
    var_0._ID1193 = "beautiful_corner2_end";
    var_0 = _func_06A( "script_origin", ( 3770.51, 6618.03, -3663.81 ) );
    var_0._ID65 = ( -26.9486, -51.9002, 0.999997 );
    var_0._ID1193 = "beautiful_corner2_static_end";
    var_0 = _func_06A( "script_origin", ( 9729.51, 7897.95, -3112.52 ) );
    var_0._ID65 = ( -29.7733, 155.272, 0.999997 );
    var_0._ID1193 = "beautiful_corner3";
    var_0 = _func_06A( "script_origin", ( 9729.51, 7897.95, -3112.52 ) );
    var_0._ID65 = ( -29.7733, 155.272, 0.999997 );
    var_0._ID1193 = "beautiful_corner3_static";
    var_0 = _func_06A( "script_origin", ( 9729.51, 7897.95, -3112.52 ) );
    var_0._ID65 = ( -21.2969, 85.8121, 0.999997 );
    var_0._ID1193 = "beautiful_corner3_end";
    var_0 = _func_06A( "script_origin", ( 9729.51, 7897.95, -3112.52 ) );
    var_0._ID65 = ( -21.2969, 85.8121, 0.999997 );
    var_0._ID1193 = "beautiful_corner3_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID54170["beautiful_corner1"] = "af_caves";
    level._ID54170["beautiful_corner2"] = "af_caves_ledge";
    level._ID54170["beautiful_corner3"] = "af_caves_outdoors_airstrip";
    level._ID50047["beautiful_corner1"] = "af_caves";
    level._ID50047["beautiful_corner2"] = "af_caves_ledge";
    level._ID50047["beautiful_corner3"] = "af_caves";
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
}

_ID43882()
{
    level._ID44606 = 1;
    level._ID50146 = 1;
    var_0 = _func_06A( "script_origin", ( 4883.37, 9119.98, -3518.06 ) );
    var_0._ID65 = ( 18.2058, -101.948, 0.999997 );
    var_0._ID1193 = "beautiful_corner_start";
    var_0 = _func_06A( "script_origin", ( 4883.37, 9119.98, -3518.06 ) );
    var_0._ID65 = ( 18.2058, -101.948, 0.999997 );
    var_0._ID1193 = "beautiful_corner_start_static";
    var_0 = _func_06A( "script_origin", ( 4883.37, 9119.98, -3518.06 ) );
    var_0._ID65 = ( 18.2058, -101.948, 0.999997 );
    var_0._ID1193 = "beautiful_corner_start_end";
    var_0 = _func_06A( "script_origin", ( 4883.37, 9119.98, -3518.06 ) );
    var_0._ID65 = ( 18.2058, -101.948, 0.999997 );
    var_0._ID1193 = "beautiful_corner_start_static_end";
    var_0 = _func_06A( "script_origin", ( 5152.28, 4070.58, -3383.14 ) );
    var_0._ID65 = ( 13.3324, -111.139, 0.999997 );
    var_0._ID1193 = "beautiful_corner2_start";
    var_0 = _func_06A( "script_origin", ( 5152.28, 4070.58, -3383.14 ) );
    var_0._ID65 = ( 13.3324, -111.139, 0.999997 );
    var_0._ID1193 = "beautiful_corner2_start_static";
    var_0 = _func_06A( "script_origin", ( 5152.28, 4070.58, -3383.14 ) );
    var_0._ID65 = ( 12.0621, -60.7259, 0.999997 );
    var_0._ID1193 = "beautiful_corner2_start_end";
    var_0 = _func_06A( "script_origin", ( 5152.28, 4070.58, -3383.14 ) );
    var_0._ID65 = ( 12.0621, -60.7259, 0.999997 );
    var_0._ID1193 = "beautiful_corner2_start_static_end";
    var_0 = _func_06A( "script_origin", ( 6858.34, 2761.06, -3212.04 ) );
    var_0._ID65 = ( 23.414, 175.421, 0.999997 );
    var_0._ID1193 = "beautiful_corner3_start";
    var_0 = _func_06A( "script_origin", ( 6858.34, 2761.06, -3212.04 ) );
    var_0._ID65 = ( 23.414, 175.421, 0.999997 );
    var_0._ID1193 = "beautiful_corner3_start_static";
    var_0 = _func_06A( "script_origin", ( 6858.34, 2761.06, -3212.04 ) );
    var_0._ID65 = ( 27.4958, 133.123, 0.999997 );
    var_0._ID1193 = "beautiful_corner3_start_end";
    var_0 = _func_06A( "script_origin", ( 6858.34, 2761.06, -3212.04 ) );
    var_0._ID65 = ( 27.4958, 133.123, 0.999997 );
    var_0._ID1193 = "beautiful_corner3_start_static_end";
    var_0 = _func_06A( "script_origin", ( 7969.54, 4459.52, -3310.1 ) );
    var_0._ID65 = ( 18.8721, 158.419, 0.999997 );
    var_0._ID1193 = "beautiful_corner4_start";
    var_0 = _func_06A( "script_origin", ( 7969.54, 4459.52, -3310.1 ) );
    var_0._ID65 = ( 18.8721, 158.419, 0.999997 );
    var_0._ID1193 = "beautiful_corner4_start_static";
    var_0 = _func_06A( "script_origin", ( 7969.54, 4459.52, -3310.1 ) );
    var_0._ID65 = ( 18.8721, 158.419, 0.999997 );
    var_0._ID1193 = "beautiful_corner4_start_end";
    var_0 = _func_06A( "script_origin", ( 7969.54, 4459.52, -3310.1 ) );
    var_0._ID65 = ( 18.8721, 158.419, 0.999997 );
    var_0._ID1193 = "beautiful_corner4_start_static_end";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 14.4139, -79.9279, 0.999997 );
    var_0._ID1193 = "beautiful_corner5_start";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 14.4139, -79.9279, 0.999997 );
    var_0._ID1193 = "beautiful_corner5_start_static";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 17.8324, -130.188, 0.999997 );
    var_0._ID1193 = "beautiful_corner5_start_end";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 17.8324, -130.188, 0.999997 );
    var_0._ID1193 = "beautiful_corner5_start_static_end";
    var_0 = _func_06A( "script_origin", ( 4175.56, 6940.75, -3500.19 ) );
    var_0._ID65 = ( 23.9519, -77.3676, 0.999997 );
    var_0._ID1193 = "beautiful_corner6_start";
    var_0 = _func_06A( "script_origin", ( 4175.56, 6940.75, -3500.19 ) );
    var_0._ID65 = ( 23.9519, -77.3676, 0.999997 );
    var_0._ID1193 = "beautiful_corner6_start_static";
    var_0 = _func_06A( "script_origin", ( 4175.56, 6940.75, -3500.19 ) );
    var_0._ID65 = ( 23.9519, -77.3676, 0.999997 );
    var_0._ID1193 = "beautiful_corner6_start_end";
    var_0 = _func_06A( "script_origin", ( 4175.56, 6940.75, -3500.19 ) );
    var_0._ID65 = ( 23.9519, -77.3676, 0.999997 );
    var_0._ID1193 = "beautiful_corner6_start_static_end";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 14.4139, -79.9279, 0.999997 );
    var_0._ID1193 = "beautiful_corner7_start";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 14.4139, -79.9279, 0.999997 );
    var_0._ID1193 = "beautiful_corner7_start_static";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 17.8324, -130.188, 0.999997 );
    var_0._ID1193 = "beautiful_corner7_start_end";
    var_0 = _func_06A( "script_origin", ( 4844.68, 9017.98, -3553.76 ) );
    var_0._ID65 = ( 17.8324, -130.188, 0.999997 );
    var_0._ID1193 = "beautiful_corner7_start_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner4_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner5_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner6_start" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner7_start" );
    level._ID54170["beautiful_corner_start"] = "af_caves_indoors";
    level._ID54170["beautiful_corner2_start"] = "af_caves";
    level._ID54170["beautiful_corner3_start"] = "af_caves_indoors";
    level._ID54170["beautiful_corner4_start"] = "af_caves_indoors";
    level._ID54170["beautiful_corner5_start"] = "af_caves_steamroom";
    level._ID54170["beautiful_corner6_start"] = "af_caves_ledge";
    level._ID54170["beautiful_corner7_start"] = "af_caves_indoors";
    level._ID50047["beautiful_corner_start"] = "af_caves_inside";
    level._ID50047["beautiful_corner2_start"] = "af_caves_overlook";
    level._ID50047["beautiful_corner3_start"] = "af_caves_inside";
    level._ID50047["beautiful_corner4_start"] = "af_caves_inside";
    level._ID50047["beautiful_corner5_start"] = "af_caves_steamroom";
    level._ID50047["beautiful_corner6_start"] = "af_caves_ledge";
    level._ID50047["beautiful_corner7_start"] = "af_caves_inside";
    level._ID54462["beautiful_corner_start"] = "";
    level._ID54462["beautiful_corner2_start"] = "";
    level._ID54462["beautiful_corner3_start"] = "";
    level._ID54462["beautiful_corner4_start"] = "";
    level._ID54462["beautiful_corner5_start"] = "";
    level._ID54462["beautiful_corner6_start"] = "";
    level._ID54462["beautiful_corner7_start"] = "";
    level._ID46504["beautiful_corner_start"] = [];
    level._ID46504["beautiful_corner_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner2_start"] = [];
    level._ID46504["beautiful_corner2_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner2_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner2_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner2_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner3_start"] = [];
    level._ID46504["beautiful_corner3_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner3_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner3_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner3_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner4_start"] = [];
    level._ID46504["beautiful_corner4_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner4_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner4_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner4_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner5_start"] = [];
    level._ID46504["beautiful_corner5_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner5_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner5_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner5_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner6_start"] = [];
    level._ID46504["beautiful_corner6_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner6_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner6_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner6_start"]["aperture_speed"] = 20;
    level._ID46504["beautiful_corner7_start"] = [];
    level._ID46504["beautiful_corner7_start"]["fstop"] = 2.8;
    level._ID46504["beautiful_corner7_start"]["focus_distance"] = 2000;
    level._ID46504["beautiful_corner7_start"]["focus_speed"] = 20;
    level._ID46504["beautiful_corner7_start"]["aperture_speed"] = 20;
    level._ID45957["beautiful_corner_start"] = 75;
    level._ID45957["beautiful_corner2_start"] = 75;
    level._ID45957["beautiful_corner3_start"] = 75;
    level._ID45957["beautiful_corner4_start"] = 75;
    level._ID45957["beautiful_corner5_start"] = 75;
    level._ID45957["beautiful_corner6_start"] = 75;
    level._ID45957["beautiful_corner7_start"] = 75;
    level._ID46778["beautiful_corner_start"] = 15;
    level._ID46246["beautiful_corner_start"] = 0;
    level._ID51913["beautiful_corner_start"] = -0.5;
    level._ID46778["beautiful_corner2_start"] = 15;
    level._ID46246["beautiful_corner2_start"] = 0;
    level._ID51913["beautiful_corner2_start"] = -0.5;
    level._ID46778["beautiful_corner3_start"] = 15;
    level._ID46246["beautiful_corner3_start"] = 0;
    level._ID51913["beautiful_corner3_start"] = -0.5;
    level._ID46778["beautiful_corner4_start"] = 15;
    level._ID46246["beautiful_corner4_start"] = 0;
    level._ID51913["beautiful_corner4_start"] = -0.5;
    level._ID46778["beautiful_corner5_start"] = 15;
    level._ID46246["beautiful_corner5_start"] = 0;
    level._ID51913["beautiful_corner5_start"] = -0.5;
    level._ID46778["beautiful_corner6_start"] = 15;
    level._ID46246["beautiful_corner6_start"] = 0;
    level._ID51913["beautiful_corner6_start"] = -0.5;
    level._ID46778["beautiful_corner7_start"] = 15;
    level._ID46246["beautiful_corner7_start"] = 0;
    level._ID51913["beautiful_corner7_start"] = -0.5;
}

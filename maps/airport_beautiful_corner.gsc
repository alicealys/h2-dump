// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50786()
{
    if ( !_ID49238::_ID19930() )
        return 0;

    _ID43797::_ID521();
    _unknown_006C();
    _unknown_004B();
    maps\airport::_ID49693();
    _ID45908::_ID616();
    _ID47439::_ID616();
    _ID47204::_ID616();
    _ID43172::_ID616();
    _ID48878::_ID616();
    _ID53660::_ID616();
    maps\airport_anim::_ID616();
    _ID42323::_ID616();
    maps\airport_lighting::_ID616();
    maps\airport_aud::_ID616();
    _func_1A1( "escape_van_dummy", "targetname" ) _ID42407::_ID1947( maps\airport_code::_ID49286, "escape_van" );
    _ID42407::_ID1801( "escape_van_spawn", "targetname" );
    var_0 = _func_1A2( "ambulance_door_right", "targetname" );
    var_0 = _ID42407::_ID3317( var_0, _func_1A2( "ambulance_door_left", "targetname" ) );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0

    if ( _func_039( "beautiful_corner_demo" ) != "1" )
        return 1;

    _unknown_010B();
    _ID49238::_ID47777();
    return 1;
}

_ID52688()
{
    var_0 = _func_1A2( "script_model", "classname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( var_2._ID669, "body_" ) )
            var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_0 = _func_1A2( "h2_intro_dead_people", "targetname" );
    var_0 = _ID42407::_ID3317( var_0, _func_1A2( "h2_departuregate_dead_people", "targetname" ) );
    var_4 = var_0;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_2 = var_4[var_5];
        var_2 _meth_80B7();
    }

    var_clear_1
    var_clear_0
}

_ID54482()
{
    _ID42237::_ID3294( _func_0E0(), ::_meth_80B7 );
    _ID42237::_ID3294( _func_0DE(), ::_meth_80B7 );
}

_ID45560()
{
    var_0 = _func_06A( "script_origin", ( 5547.72, 1645.04, 23.1178 ) );
    var_0._ID65 = ( -13.1434, 131.043, 0 );
    var_0._ID1193 = "beautiful_corner1";
    var_0 = _func_06A( "script_origin", ( 5547.72, 1645.04, 23.1178 ) );
    var_0._ID65 = ( -13.1434, 131.043, 0 );
    var_0._ID1193 = "beautiful_corner1_static";
    var_0 = _func_06A( "script_origin", ( 5484.13, 2131.84, 379.15 ) );
    var_0._ID65 = ( 2.83482, 146.93, 0 );
    var_0._ID1193 = "beautiful_corner1_end";
    var_0 = _func_06A( "script_origin", ( 5484.13, 2131.84, 379.15 ) );
    var_0._ID65 = ( 2.83482, 146.93, 0 );
    var_0._ID1193 = "beautiful_corner1_static_end";
    var_0 = _func_06A( "script_origin", ( 5067.97, 3136.66, 302.727 ) );
    var_0._ID65 = ( -3.15795, -117.973, 0 );
    var_0._ID1193 = "beautiful_corner2";
    var_0 = _func_06A( "script_origin", ( 5067.97, 3136.66, 302.727 ) );
    var_0._ID65 = ( -3.15795, -117.973, 0 );
    var_0._ID1193 = "beautiful_corner2_static";
    var_0 = _func_06A( "script_origin", ( 4714.15, 3140.97, 302.727 ) );
    var_0._ID65 = ( -3.15788, -117.971, 0 );
    var_0._ID1193 = "beautiful_corner2_end";
    var_0 = _func_06A( "script_origin", ( 4714.15, 3140.97, 302.727 ) );
    var_0._ID65 = ( -3.15788, -117.971, 0 );
    var_0._ID1193 = "beautiful_corner2_static_end";
    var_0 = _func_06A( "script_origin", ( 4415.46, 2293.62, 344.35 ) );
    var_0._ID65 = ( 6.46121, -130.429, 0 );
    var_0._ID1193 = "beautiful_corner3";
    var_0 = _func_06A( "script_origin", ( 4415.46, 2293.62, 344.35 ) );
    var_0._ID65 = ( 6.46121, -130.429, 0 );
    var_0._ID1193 = "beautiful_corner3_static";
    var_0 = _func_06A( "script_origin", ( 4011.46, 2305.2, 344.35 ) );
    var_0._ID65 = ( 6.44318, -115.899, 0 );
    var_0._ID1193 = "beautiful_corner3_end";
    var_0 = _func_06A( "script_origin", ( 4011.46, 2305.2, 344.35 ) );
    var_0._ID65 = ( 6.44318, -115.899, 0 );
    var_0._ID1193 = "beautiful_corner3_static_end";
    var_0 = _func_06A( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0._ID65 = ( 14.3518, 157.706, 0 );
    var_0._ID1193 = "beautiful_corner4";
    var_0 = _func_06A( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0._ID65 = ( 14.3518, 157.706, 0 );
    var_0._ID1193 = "beautiful_corner4_static";
    var_0 = _func_06A( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0._ID65 = ( 16.9029, -118.221, 0 );
    var_0._ID1193 = "beautiful_corner4_end";
    var_0 = _func_06A( "script_origin", ( 3207.45, 3298.68, 376.468 ) );
    var_0._ID65 = ( 16.9029, -118.221, 0 );
    var_0._ID1193 = "beautiful_corner4_static_end";
    var_0 = _func_06A( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0._ID65 = ( 3.41713, -133.427, 0 );
    var_0._ID1193 = "beautiful_corner5";
    var_0 = _func_06A( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0._ID65 = ( 3.41713, -133.427, 0 );
    var_0._ID1193 = "beautiful_corner5_static";
    var_0 = _func_06A( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0._ID65 = ( 4.00784, -56.3852, 0 );
    var_0._ID1193 = "beautiful_corner5_end";
    var_0 = _func_06A( "script_origin", ( 3803.06, 4317.91, 335.635 ) );
    var_0._ID65 = ( 4.00784, -56.3852, 0 );
    var_0._ID1193 = "beautiful_corner5_static_end";
    var_0 = _func_06A( "script_origin", ( 3267.67, 4670.03, 335.718 ) );
    var_0._ID65 = ( -3.71819, 45.3178, 0 );
    var_0._ID1193 = "beautiful_corner6";
    var_0 = _func_06A( "script_origin", ( 3267.67, 4670.03, 335.718 ) );
    var_0._ID65 = ( -3.71819, 45.3178, 0 );
    var_0._ID1193 = "beautiful_corner6_static";
    var_0 = _func_06A( "script_origin", ( 3583.51, 4565.98, 321.972 ) );
    var_0._ID65 = ( -8.66787, 100.833, 0 );
    var_0._ID1193 = "beautiful_corner6_end";
    var_0 = _func_06A( "script_origin", ( 3583.51, 4565.98, 321.972 ) );
    var_0._ID65 = ( -8.66787, 100.833, 0 );
    var_0._ID1193 = "beautiful_corner6_static_end";
    var_0 = _func_06A( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0._ID65 = ( -3.38675, 155.254, 0 );
    var_0._ID1193 = "beautiful_corner7";
    var_0 = _func_06A( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0._ID65 = ( -3.38675, 155.254, 0 );
    var_0._ID1193 = "beautiful_corner7_static";
    var_0 = _func_06A( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0._ID65 = ( -4.08897, -94.0619, 0 );
    var_0._ID1193 = "beautiful_corner7_end";
    var_0 = _func_06A( "script_origin", ( 3294.87, 4172.24, 327.424 ) );
    var_0._ID65 = ( -4.08897, -94.0619, 0 );
    var_0._ID1193 = "beautiful_corner7_static_end";
    var_0 = _func_06A( "script_origin", ( 2682.3, 4556.47, 286.172 ) );
    var_0._ID65 = ( -8.98089, -116.538, 0 );
    var_0._ID1193 = "beautiful_corner8";
    var_0 = _func_06A( "script_origin", ( 2682.3, 4556.47, 286.172 ) );
    var_0._ID65 = ( -8.98089, -116.538, 0 );
    var_0._ID1193 = "beautiful_corner8_static";
    var_0 = _func_06A( "script_origin", ( 2261.83, 4517.24, 286.172 ) );
    var_0._ID65 = ( -8.97072, -49.6633, 0 );
    var_0._ID1193 = "beautiful_corner8_end";
    var_0 = _func_06A( "script_origin", ( 2261.83, 4517.24, 286.172 ) );
    var_0._ID65 = ( -8.97072, -49.6633, 0 );
    var_0._ID1193 = "beautiful_corner8_static_end";
    var_0 = _func_06A( "script_origin", ( 2536.33, 4666.59, 307.819 ) );
    var_0._ID65 = ( -11.2841, -78.0111, 0 );
    var_0._ID1193 = "beautiful_corner9";
    var_0 = _func_06A( "script_origin", ( 2536.33, 4666.59, 307.819 ) );
    var_0._ID65 = ( -11.2841, -78.0111, 0 );
    var_0._ID1193 = "beautiful_corner9_static";
    var_0 = _func_06A( "script_origin", ( 2276.78, 4494.1, 310.361 ) );
    var_0._ID65 = ( -9.3, -60.8, 0 );
    var_0._ID1193 = "beautiful_corner9_end";
    var_0 = _func_06A( "script_origin", ( 2276.78, 4494.1, 310.361 ) );
    var_0._ID65 = ( -9.3, -60.8, 0 );
    var_0._ID1193 = "beautiful_corner9_static_end";
    var_0 = _func_06A( "script_origin", ( 2895.47, 3382.74, 179.472 ) );
    var_0._ID65 = ( 1.14801, 130.572, 0 );
    var_0._ID1193 = "beautiful_corner10";
    var_0 = _func_06A( "script_origin", ( 2895.47, 3382.74, 179.472 ) );
    var_0._ID65 = ( 1.14801, 130.572, 0 );
    var_0._ID1193 = "beautiful_corner10_static";
    var_0 = _func_06A( "script_origin", ( 2773.33, 3858.93, 164.229 ) );
    var_0._ID65 = ( -13.9278, 126.658, 0 );
    var_0._ID1193 = "beautiful_corner10_end";
    var_0 = _func_06A( "script_origin", ( 2773.33, 3858.93, 164.229 ) );
    var_0._ID65 = ( -13.9278, 126.658, 0 );
    var_0._ID1193 = "beautiful_corner10_static_end";
    var_0 = _func_06A( "script_origin", ( 3034.83, 4538.33, 347.588 ) );
    var_0._ID65 = ( 5.3129, -128.52, 0 );
    var_0._ID1193 = "beautiful_corner11";
    var_0 = _func_06A( "script_origin", ( 3034.83, 4538.33, 347.588 ) );
    var_0._ID65 = ( 5.3129, -128.52, 0 );
    var_0._ID1193 = "beautiful_corner11_static";
    var_0 = _func_06A( "script_origin", ( 2864.23, 4060.77, 305.394 ) );
    var_0._ID65 = ( 17.6122, -154.379, 0 );
    var_0._ID1193 = "beautiful_corner11_end";
    var_0 = _func_06A( "script_origin", ( 2864.23, 4060.77, 305.394 ) );
    var_0._ID65 = ( 17.6122, -154.379, 0 );
    var_0._ID1193 = "beautiful_corner11_static_end";
    var_0 = _func_06A( "script_origin", ( 1660.04, 4219.16, 381.956 ) );
    var_0._ID65 = ( 10.2925, -168.28, 0 );
    var_0._ID1193 = "beautiful_corner12";
    var_0 = _func_06A( "script_origin", ( 1660.04, 4219.16, 381.956 ) );
    var_0._ID65 = ( 10.2925, -168.28, 0 );
    var_0._ID1193 = "beautiful_corner12_static";
    var_0 = _func_06A( "script_origin", ( 227.466, 2800.3, 381.956 ) );
    var_0._ID65 = ( 1.31578, 140.766, 0 );
    var_0._ID1193 = "beautiful_corner12_end";
    var_0 = _func_06A( "script_origin", ( 227.466, 2800.3, 381.956 ) );
    var_0._ID65 = ( 1.31578, 140.766, 0 );
    var_0._ID1193 = "beautiful_corner12_static_end";
    var_0 = _func_06A( "script_origin", ( -3677.78, 4951.05, -129.489 ) );
    var_0._ID65 = ( -4.55152, -108.566, 0 );
    var_0._ID1193 = "beautiful_corner13";
    var_0 = _func_06A( "script_origin", ( -3677.78, 4951.05, -129.489 ) );
    var_0._ID65 = ( -4.55152, -108.566, 0 );
    var_0._ID1193 = "beautiful_corner13_static";
    var_0 = _func_06A( "script_origin", ( -3968.01, 4679.83, -129.489 ) );
    var_0._ID65 = ( -11.8402, -95.688, 0 );
    var_0._ID1193 = "beautiful_corner13_end";
    var_0 = _func_06A( "script_origin", ( -3968.01, 4679.83, -129.489 ) );
    var_0._ID65 = ( -11.8402, -95.688, 0 );
    var_0._ID1193 = "beautiful_corner13_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner4" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner5" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner6" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner7" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner8" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner9" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner10" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner11" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner12" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner13" );
    level._ID54170["beautiful_corner1"] = "airport";
    level._ID54170["beautiful_corner2"] = "airport";
    level._ID54170["beautiful_corner3"] = "airport";
    level._ID54170["beautiful_corner4"] = "airport";
    level._ID54170["beautiful_corner5"] = "airport";
    level._ID54170["beautiful_corner6"] = "airport";
    level._ID54170["beautiful_corner7"] = "airport";
    level._ID54170["beautiful_corner8"] = "airport";
    level._ID54170["beautiful_corner9"] = "airport";
    level._ID54170["beautiful_corner10"] = "airport";
    level._ID54170["beautiful_corner11"] = "airport";
    level._ID54170["beautiful_corner12"] = "airport";
    level._ID54170["beautiful_corner13"] = "airport";
    level._ID50047["beautiful_corner1"] = "airport";
    level._ID50047["beautiful_corner2"] = "airport";
    level._ID50047["beautiful_corner3"] = "airport";
    level._ID50047["beautiful_corner4"] = "airport";
    level._ID50047["beautiful_corner5"] = "airport";
    level._ID50047["beautiful_corner6"] = "airport";
    level._ID50047["beautiful_corner7"] = "airport";
    level._ID50047["beautiful_corner8"] = "airport";
    level._ID50047["beautiful_corner9"] = "airport";
    level._ID50047["beautiful_corner10"] = "airport";
    level._ID50047["beautiful_corner11"] = "airport";
    level._ID50047["beautiful_corner12"] = "airport";
    level._ID50047["beautiful_corner13"] = "airport";
    level._ID54462["beautiful_corner1"] = "";
    level._ID54462["beautiful_corner2"] = "";
    level._ID54462["beautiful_corner3"] = "";
    level._ID54462["beautiful_corner4"] = "";
    level._ID54462["beautiful_corner5"] = "";
    level._ID54462["beautiful_corner6"] = "";
    level._ID54462["beautiful_corner7"] = "";
    level._ID54462["beautiful_corner8"] = "";
    level._ID54462["beautiful_corner9"] = "";
    level._ID54462["beautiful_corner10"] = "";
    level._ID54462["beautiful_corner11"] = "";
    level._ID54462["beautiful_corner12"] = "";
    level._ID54462["beautiful_corner13"] = "";
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
    level._ID46504["beautiful_corner6"] = [];
    level._ID46504["beautiful_corner6"]["fstop"] = 2;
    level._ID46504["beautiful_corner6"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner6"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner6"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner7"] = [];
    level._ID46504["beautiful_corner7"]["fstop"] = 2;
    level._ID46504["beautiful_corner7"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner7"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner7"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner8"] = [];
    level._ID46504["beautiful_corner8"]["fstop"] = 2;
    level._ID46504["beautiful_corner8"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner8"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner8"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner9"] = [];
    level._ID46504["beautiful_corner9"]["fstop"] = 2;
    level._ID46504["beautiful_corner9"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner9"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner9"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner10"] = [];
    level._ID46504["beautiful_corner10"]["fstop"] = 2;
    level._ID46504["beautiful_corner10"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner10"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner10"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner11"] = [];
    level._ID46504["beautiful_corner11"]["fstop"] = 2;
    level._ID46504["beautiful_corner11"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner11"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner11"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner12"] = [];
    level._ID46504["beautiful_corner12"]["fstop"] = 2;
    level._ID46504["beautiful_corner12"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner12"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner12"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner13"] = [];
    level._ID46504["beautiful_corner13"]["fstop"] = 2;
    level._ID46504["beautiful_corner13"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner13"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner13"]["aperture_speed"] = 1;
    level._ID45957["beautiful_corner1"] = 75;
    level._ID45957["beautiful_corner2"] = 75;
    level._ID45957["beautiful_corner3"] = 75;
    level._ID45957["beautiful_corner4"] = 75;
    level._ID45957["beautiful_corner5"] = 75;
    level._ID45957["beautiful_corner6"] = 75;
    level._ID45957["beautiful_corner7"] = 75;
    level._ID45957["beautiful_corner8"] = 75;
    level._ID45957["beautiful_corner9"] = 75;
    level._ID45957["beautiful_corner10"] = 75;
    level._ID45957["beautiful_corner11"] = 75;
    level._ID45957["beautiful_corner12"] = 75;
    level._ID45957["beautiful_corner13"] = 75;
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
    level._ID46778["beautiful_corner6"] = 15;
    level._ID46246["beautiful_corner6"] = 0;
    level._ID51913["beautiful_corner6"] = -0.5;
    level._ID46778["beautiful_corner7"] = 15;
    level._ID46246["beautiful_corner7"] = 0;
    level._ID51913["beautiful_corner7"] = -0.5;
    level._ID46778["beautiful_corner8"] = 15;
    level._ID46246["beautiful_corner8"] = 0;
    level._ID51913["beautiful_corner8"] = -0.5;
    level._ID46778["beautiful_corner9"] = 15;
    level._ID46246["beautiful_corner9"] = 0;
    level._ID51913["beautiful_corner9"] = -0.5;
    level._ID46778["beautiful_corner10"] = 15;
    level._ID46246["beautiful_corner10"] = 0;
    level._ID51913["beautiful_corner10"] = -0.5;
    level._ID46778["beautiful_corner11"] = 15;
    level._ID46246["beautiful_corner11"] = 0;
    level._ID51913["beautiful_corner11"] = -0.5;
    level._ID46778["beautiful_corner12"] = 15;
    level._ID46246["beautiful_corner12"] = 0;
    level._ID51913["beautiful_corner12"] = -0.5;
    level._ID46778["beautiful_corner13"] = 15;
    level._ID46246["beautiful_corner13"] = 0;
    level._ID51913["beautiful_corner13"] = -0.5;
}

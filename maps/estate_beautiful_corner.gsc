// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50786()
{
    if ( !_ID49238::_ID19930() )
        return 0;

    _ID43797::_ID521();
    _ID45614::_ID616();
    _ID51593::_ID616();
    _ID51464::_ID616();
    maps\estate_anim::_ID616();
    _ID47772::_ID616();
    _ID42323::_ID616();
    maps\estate_aud::_ID616();
    maps\estate_lighting::_ID616();

    if ( _func_039( "beautiful_corner_demo" ) != "1" )
        return 1;

    _unknown_0050();
    _ID49238::_ID47777();
    return 1;
}

_ID45560()
{
    var_0 = _func_06A( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0._ID65 = ( 2.20589, -71.5575, 0 );
    var_0._ID1193 = "beautiful_corner1";
    var_0 = _func_06A( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0._ID65 = ( 2.20589, -71.5575, 0 );
    var_0._ID1193 = "beautiful_corner1_static";
    var_0 = _func_06A( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0._ID65 = ( 1.95522, -17.5269, 0 );
    var_0._ID1193 = "beautiful_corner1_end";
    var_0 = _func_06A( "script_origin", ( -4488.01, 5629.28, 636.978 ) );
    var_0._ID65 = ( 1.95522, -17.5269, 0 );
    var_0._ID1193 = "beautiful_corner1_static_end";
    var_0 = _func_06A( "script_origin", ( -1922.16, 5032.95, -236.059 ) );
    var_0._ID65 = ( -9.7044, -24.3502, 0 );
    var_0._ID1193 = "beautiful_corner2";
    var_0 = _func_06A( "script_origin", ( -1922.16, 5032.95, -236.059 ) );
    var_0._ID65 = ( -9.7044, -24.3502, 0 );
    var_0._ID1193 = "beautiful_corner2_static";
    var_0 = _func_06A( "script_origin", ( -2052.68, 4619.73, -229.676 ) );
    var_0._ID65 = ( -7.95674, -0.9221, 0 );
    var_0._ID1193 = "beautiful_corner2_end";
    var_0 = _func_06A( "script_origin", ( -2052.68, 4619.73, -229.676 ) );
    var_0._ID65 = ( -7.95674, -0.9221, 0 );
    var_0._ID1193 = "beautiful_corner2_static_end";
    var_0 = _func_06A( "script_origin", ( 1133.06, 982.983, 37.7682 ) );
    var_0._ID65 = ( -10.3412, -133.791, 0 );
    var_0._ID1193 = "beautiful_corner3";
    var_0 = _func_06A( "script_origin", ( 1133.06, 982.983, 37.7682 ) );
    var_0._ID65 = ( -10.3412, -133.791, 0 );
    var_0._ID1193 = "beautiful_corner3_static";
    var_0 = _func_06A( "script_origin", ( 1597.06, 375.49, 25.7014 ) );
    var_0._ID65 = ( -10.2548, -166.111, 0 );
    var_0._ID1193 = "beautiful_corner3_end";
    var_0 = _func_06A( "script_origin", ( 1597.06, 375.49, 25.7014 ) );
    var_0._ID65 = ( -10.2548, -166.111, 0 );
    var_0._ID1193 = "beautiful_corner3_static_end";
    var_0 = _func_06A( "script_origin", ( -113.137, -428.731, -5.5314 ) );
    var_0._ID65 = ( -5.13261, -32.7386, 0 );
    var_0._ID1193 = "beautiful_corner4";
    var_0 = _func_06A( "script_origin", ( -113.137, -428.731, -5.5314 ) );
    var_0._ID65 = ( -5.13261, -32.7386, 0 );
    var_0._ID1193 = "beautiful_corner4_static";
    var_0 = _func_06A( "script_origin", ( 80.1618, -194.019, -5.5314 ) );
    var_0._ID65 = ( -6.38945, -48.0155, 0 );
    var_0._ID1193 = "beautiful_corner4_end";
    var_0 = _func_06A( "script_origin", ( 80.1618, -194.019, -5.5314 ) );
    var_0._ID65 = ( -6.38945, -48.0155, 0 );
    var_0._ID1193 = "beautiful_corner4_static_end";
    var_0 = _func_06A( "script_origin", ( 231.933, 411.053, 128.848 ) );
    var_0._ID65 = ( 13.2, 174.86, 0 );
    var_0._ID1193 = "beautiful_corner5";
    var_0 = _func_06A( "script_origin", ( 231.933, 411.053, 128.848 ) );
    var_0._ID65 = ( 13.2, 174.86, 0 );
    var_0._ID1193 = "beautiful_corner5_static";
    var_0 = _func_06A( "script_origin", ( 34.9582, 351.465, 381.565 ) );
    var_0._ID65 = ( 21.45, 160.26, 0 );
    var_0._ID1193 = "beautiful_corner5_end";
    var_0 = _func_06A( "script_origin", ( 34.9582, 351.465, 381.565 ) );
    var_0._ID65 = ( 21.45, 160.26, 0 );
    var_0._ID1193 = "beautiful_corner5_static_end";
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner1" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner2" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner3" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner4" );
    level._ID43337 = _ID42237::_ID3293( level._ID43337, "beautiful_corner5" );
    level._ID54170["beautiful_corner1"] = "estate";
    level._ID54170["beautiful_corner2"] = "estate";
    level._ID54170["beautiful_corner3"] = "estate";
    level._ID54170["beautiful_corner4"] = "estate";
    level._ID54170["beautiful_corner5"] = "estate_interior";
    level._ID50047["beautiful_corner1"] = "estate";
    level._ID50047["beautiful_corner2"] = "estate";
    level._ID50047["beautiful_corner3"] = "estate";
    level._ID50047["beautiful_corner4"] = "estate";
    level._ID50047["beautiful_corner5"] = "estate_interior";
    level._ID54462["beautiful_corner1"] = "clut_estate";
    level._ID54462["beautiful_corner2"] = "clut_estate";
    level._ID54462["beautiful_corner3"] = "clut_estate";
    level._ID54462["beautiful_corner4"] = "clut_estate";
    level._ID54462["beautiful_corner5"] = "clut_estate";
    level._ID46504["beautiful_corner1"] = [];
    level._ID46504["beautiful_corner1"]["fstop"] = 2;
    level._ID46504["beautiful_corner1"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner1"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner1"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner2"] = [];
    level._ID46504["beautiful_corner2"]["fstop"] = 1.6;
    level._ID46504["beautiful_corner2"]["focus_distance"] = 500;
    level._ID46504["beautiful_corner2"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner2"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner3"] = [];
    level._ID46504["beautiful_corner3"]["fstop"] = 5.6;
    level._ID46504["beautiful_corner3"]["focus_distance"] = 500;
    level._ID46504["beautiful_corner3"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner3"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner4"] = [];
    level._ID46504["beautiful_corner4"]["fstop"] = 2;
    level._ID46504["beautiful_corner4"]["focus_distance"] = 200;
    level._ID46504["beautiful_corner4"]["focus_speed"] = 2;
    level._ID46504["beautiful_corner4"]["aperture_speed"] = 1;
    level._ID46504["beautiful_corner5"] = [];
    level._ID46504["beautiful_corner5"]["fstop"] = 2;
    level._ID46504["beautiful_corner5"]["focus_distance"] = 150;
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

_ID51295()
{
    var_0 = _func_1A1( "fake_backwards_door", "targetname" );
    var_1 = _func_1A1( "fake_backwards_door_clip", "targetname" );
    var_0 _meth_80B7();
    var_1 _meth_80B7();
    var_2 = _func_1A2( "breach_solid", "targetname" );
    _ID42237::_ID3350( var_2, _ID42407::_ID31860 );
    var_3 = _func_1A1( "recroom_open_doors", "targetname" );
    var_4 = _func_1A1( "recroom_open_doors_model", "targetname" );
    var_4 _meth_805A();
    var_5 = _func_1A1( "recroom_closed_doors", "targetname" );
    var_6 = _func_1A1( "recroom_closed_doors_model", "targetname" );
    var_5 _meth_80B7();
    var_6 _meth_80B7();
    var_3 _meth_8059();
    var_7 = _func_1A1( "paper_window_sightblocker", "targetname" );
    var_7 _meth_80B7();
    var_8 = _func_1A2( "window_newspaper", "targetname" );
    var_9 = var_8;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];
        var_10 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_12 = _func_1A2( "window_pane", "targetname" );
    var_13 = var_12;

    for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
    {
        var_14 = var_13[var_15];
        var_14 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_16 = _func_1A2( "window_brokenglass", "targetname" );
    var_17 = var_16;

    for ( var_19 = _func_1DA( var_17 ); _func_02F( var_19 ); var_19 = _func_1BF( var_17, var_19 ) )
    {
        var_18 = var_17[var_19];
        var_18 _meth_8059();
    }

    var_clear_2
    var_clear_0
    var_20 = _func_1A2( "window_blinds", "targetname" );
    var_21 = var_20;

    for ( var_23 = _func_1DA( var_21 ); _func_02F( var_23 ); var_23 = _func_1BF( var_21, var_23 ) )
    {
        var_22 = var_21[var_23];
        var_22 _meth_80B7();
    }

    var_clear_2
    var_clear_0
    var_24 = _func_1A2( "window_smasher", "targetname" );
    var_25 = var_24;

    for ( var_27 = _func_1DA( var_25 ); _func_02F( var_27 ); var_27 = _func_1BF( var_25, var_27 ) )
    {
        var_26 = var_25[var_27];
        _func_18F( var_26._ID740, var_26._ID851, 1000, 1000 );
    }

    var_clear_2
    var_clear_0
}

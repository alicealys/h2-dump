// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID22280()
{
    if ( !_func_02F( level._ID1507 ) )
    {
        level._ID1507 = _func_1A5();
        _unknown_0305();
        _unknown_0980();
        _unknown_09F3();
        _unknown_0519();
        _unknown_07D2();
        _unknown_0A94();
        thread _unknown_0033();
    }

    thread _unknown_0ACE();
}

_ID19799()
{
    level._ID31534 = 0;
    level._ID30907 = undefined;
    wait 0.05;
}

_ID13302( var_0 )
{
    var_1 = level._ID30906[var_0];
    var_1._ID36185 = 0;
    var_1._ID38616[0] = 0;
    thread _unknown_0116( 0, var_1 );

    for ( var_4 = 1; var_4 < var_1._ID38616.size; var_4++ )
        _ID42407::_ID10226( var_1._ID1210[var_4], ::_unknown_0128, var_4, var_1 );
}

_ID31542( var_0, var_1 )
{
    var_2 = _func_03A( "scr_prim_edit_lights" );
    var_3 = _func_03A( "scr_prim_light_state" );
    var_4 = _func_03A( "scr_prim_light_num" );
    var_5 = var_0._ID20129["curr"];

    while ( var_0._ID20 )
    {
        var_6 = var_0._ID28250["curr"];
        var_7 = var_0._ID10859["curr"];
        var_8 = _func_119( _func_11F( var_0._ID10859["curr"] ) );
        var_9 = var_0._ID28250["curr"];
        var_10 = var_0._ID20129["curr"];
        var_11 = var_0._ID196["curr"];
        var_12 = var_0._ID20033["curr"];
        var_13 = var_0._ID26049["curr"];
        var_14 = var_0._ID851["curr"];
        var_15 = var_0._ID22283;

        if ( _func_02F( var_0._ID3553 ) )
        {
            var_19 = var_0._ID3571._ID740;
            var_20 = _func_119( _func_11F( var_0._ID3571._ID65 ) );
            var_21 = _func_119( _func_11D( var_0._ID3571._ID65 ) );
            var_22 = _func_119( _func_11E( var_0._ID3571._ID65 ) );
            var_23 = _func_119( var_20 * var_8[0] + var_21 * var_8[2] - var_22 * var_8[1] );
            var_24 = var_20 * var_6[0] + var_21 * var_6[2] - var_22 * var_6[1];
            var_0._ID28547 _meth_8055();
            var_0._ID28547._ID65 = _func_11A( var_23 );
            var_0._ID28547._ID740 = var_19 + var_24;

            if ( _func_02F( var_0._ID8199 ) )
            {
                var_25 = var_0._ID8199 _meth_818C( var_0._ID8198 );
                var_0._ID28547._ID65 = _func_11A( _func_119( var_25 - var_0._ID28547._ID740 ) );
            }

            if ( _func_02F( var_0._ID8200 ) )
                var_0._ID28547._ID65 = _func_11A( _func_119( var_0._ID8200 - var_0._ID28547._ID740 ) );

            var_0._ID28547 _meth_8053( var_0._ID3571 );
        }
        else
        {
            var_0._ID28547._ID65 = var_7;

            if ( _func_02F( var_0._ID8199 ) )
            {
                var_25 = var_0._ID8199 _meth_818C( var_0._ID8198 );
                var_0._ID28547._ID65 = _func_11A( _func_119( var_25 - var_0._ID28547._ID740 ) );
            }

            if ( _func_02F( var_0._ID8200 ) )
                var_0._ID28547._ID65 = _func_11A( _func_119( var_0._ID8200 - var_0._ID28547._ID740 ) );

            var_0._ID28547._ID740 = var_6;
        }

        var_0._ID28547 _meth_81EB( var_10 );
        var_0._ID28547 _meth_8046( var_11 );
        var_0._ID28547 _meth_8020( var_13, var_12 );
        var_0._ID28547 _meth_804C( var_14 );
        wait 0.05;
    }
}

_ID13301( var_0, var_1 )
{
    var_2 = var_1._ID38616[var_0] * 20.0;
    var_3 = var_0 - 1;

    for ( var_4 = 0; var_4 < var_2; var_4++ )
    {
        var_5 = _func_0C2( var_4 ) / var_2;
        var_6 = 1.0 - var_5;
        var_1._ID28250["curr"] = var_1._ID28250[var_0] * var_5 + var_1._ID28250[var_3] * var_6;
        var_1._ID10859["curr"] = var_1._ID10859[var_0] * var_5 + var_1._ID10859[var_3] * var_6;
        var_1._ID20129["curr"] = var_1._ID20129[var_0] * var_5 + var_1._ID20129[var_3] * var_6;
        var_1._ID196["curr"] = var_1._ID196[var_0] * var_5 + var_1._ID196[var_3] * var_6;
        var_1._ID20033["curr"] = var_1._ID20033[var_0] * var_5 + var_1._ID20033[var_3] * var_6;
        var_1._ID26049["curr"] = var_1._ID26049[var_0] * var_5 + var_1._ID26049[var_3] * var_6;
        var_1._ID851["curr"] = var_1._ID851[var_0] * var_5 + var_1._ID851[var_3] * var_6;
        wait 0.05;
    }

    var_1._ID28250["curr"] = var_1._ID28250[var_0];
    var_1._ID10859["curr"] = var_1._ID10859[var_0];
    var_1._ID20129["curr"] = var_1._ID20129[var_0];
    var_1._ID196["curr"] = var_1._ID196[var_0];
    var_1._ID20033["curr"] = var_1._ID20033[var_0];
    var_1._ID26049["curr"] = var_1._ID26049[var_0];
    var_1._ID851["curr"] = var_1._ID851[var_0];
    var_1._ID36185 = var_0;
}

_ID36545( var_0 )
{
    var_1 = level._ID30906[var_0];
    var_1._ID20 = 0;

    if ( _func_02F( var_1._ID3553 ) )
    {
        if ( _func_02F( var_1._ID28547 ) )
            var_1._ID28547 _meth_8055();
    }
}

_ID33423( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = ( 0, 0, 0 );

    if ( !_func_02F( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !_func_02F( var_4 ) )
        var_4 = 5000;

    if ( !_func_02F( var_5 ) )
        var_5 = ( 1, 1, 1 );

    if ( !_func_02F( var_6 ) )
        var_6 = 60;

    if ( !_func_02F( var_7 ) )
        var_7 = 120;

    if ( !_func_02F( var_10 ) )
        var_10 = 50;

    var_11 = _func_1A5();
    var_11._ID22283 = var_1;
    var_11._ID1210[0] = 0;
    var_11._ID10859[0] = var_3;
    var_11._ID28250[0] = var_2;
    var_11._ID20 = 1;
    var_11._ID196[0] = var_5;
    var_11._ID20033[0] = var_6;
    var_11._ID26049[0] = var_7;
    var_11._ID851[0] = var_10;
    var_11._ID20129[0] = var_4;
    var_11._ID38616[0] = 0;
    var_11._ID10859["curr"] = var_3;
    var_11._ID28250["curr"] = var_2;
    var_11._ID196["curr"] = var_5;
    var_11._ID20033["curr"] = var_6;
    var_11._ID26049["curr"] = var_7;
    var_11._ID851["curr"] = var_10;
    var_11._ID20129["curr"] = 0.1;
    var_11._ID36185 = -1;
    var_11._ID28547 = _func_1A1( var_0, "targetname" );
    var_11._ID3553 = undefined;
    var_11._ID3549 = undefined;
    var_12 = undefined;

    if ( _func_031( var_8 ) )
    {
        if ( _func_031( var_8 ) )
        {
            var_12 = _func_1A1( var_8, "targetname" );
            var_11._ID3553 = var_12;
        }
    }
    else
        var_12 = var_8;

    if ( _func_02F( var_12 ) )
    {
        var_11._ID3553 = var_12;

        if ( !_func_02F( var_11._ID3553 ) )
            var_11._ID3553 = undefined;

        if ( _func_02F( var_9 ) && _func_02F( var_11._ID3553 ) )
            var_11._ID3549 = var_9;
        else
            var_11._ID3549 = undefined;

        var_11._ID3571 = _ID42237::_ID35164();

        if ( _func_02F( var_9 ) )
        {
            var_11._ID3571._ID740 = var_12 _meth_818C( var_9 );
            var_11._ID3571 _meth_8053( var_12, var_9, ( 0, 0, 0 ), ( 0, 0, 0 ) );
        }
        else
        {
            var_11._ID3571._ID740 = var_12._ID740;
            var_11._ID3571 _meth_8053( var_12 );
        }

        var_13 = var_11._ID3571._ID740;
        var_14 = _func_119( _func_11F( var_11._ID3571._ID65 ) );
        var_15 = _func_119( _func_11D( var_11._ID3571._ID65 ) );
        var_16 = _func_119( _func_11E( var_11._ID3571._ID65 ) );
        var_17 = _func_119( var_14 * var_3[0] + var_15 * var_3[2] - var_16 * var_3[1] );
        var_18 = var_14 * var_2[0] + var_15 * var_2[2] - var_16 * var_2[1];
        var_11._ID28547._ID65 = _func_11A( var_17 );
        var_11._ID28547._ID740 = var_13 + var_18;

        if ( !_func_02F( var_11._ID28547._ID22421 ) )
        {
            var_11._ID28547._ID22421 = 1;
            var_11._ID28547 _meth_8070();
        }

        var_11._ID28547 _meth_8053( var_11._ID3571 );
    }
    else
    {
        var_11._ID3553 = undefined;
        var_11._ID3549 = undefined;
    }

    var_19 = 0;

    if ( _func_02F( level._ID30906 ) )
        var_19 = level._ID30906.size;

    var_11._ID19286 = var_19;
    level._ID30906[var_19] = var_11;
    thread _unknown_0655( var_11, var_11._ID19286 );
    return var_11._ID19286;
}

_ID31533( var_0, var_1, var_2, var_3 )
{
    var_4 = level._ID30906[var_0];

    if ( _func_02F( var_2 ) )
    {
        var_1 = undefined;

        if ( !_func_02F( var_3 ) )
            var_3 = "tag_origin";
    }
    else if ( !_func_02F( var_1 ) )
        var_1 = ( 0, 0, 0 );

    level._ID30906[var_0]._ID8198 = var_3;
    level._ID30906[var_0]._ID8200 = var_1;
    level._ID30906[var_0]._ID8199 = var_2;
}

_ID31536( var_0, var_1, var_2, var_3 )
{
    _unknown_08E7( var_0, var_1, undefined, undefined, undefined, var_2, undefined, undefined, undefined, var_3 );
}

_ID31540( var_0, var_1, var_2, var_3 )
{
    _unknown_08FA( var_0, var_1, var_2, undefined, undefined, undefined, undefined, undefined, undefined, var_3 );
}

_ID31538( var_0, var_1, var_2, var_3 )
{
    _unknown_090E( var_0, var_1, undefined, var_2, undefined, undefined, undefined, undefined, undefined, var_3 );
}

_ID31539( var_0, var_1, var_2, var_3 )
{
    _unknown_0921( var_0, var_1, undefined, var_2, undefined, undefined, undefined, undefined, undefined, var_3 );
}

_ID31537( var_0, var_1, var_2, var_3, var_4 )
{
    _unknown_0936( var_0, var_1, undefined, undefined, undefined, var_2, var_3, undefined, undefined, var_4 );
}

_ID31541( var_0, var_1, var_2, var_3 )
{
    _unknown_094A( var_0, var_1, undefined, undefined, undefined, undefined, undefined, undefined, var_2, var_3 );
}

_ID31535( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = level._ID30906[var_0];
    var_11 = var_10._ID1210.size;

    if ( !_func_02F( var_3 ) )
        var_3 = var_10._ID10859[var_11 - 1];

    if ( !_func_02F( var_2 ) )
        var_2 = var_10._ID28250[var_11 - 1];

    if ( !_func_02F( var_4 ) )
        var_4 = var_10._ID20129[var_11 - 1];

    if ( !_func_02F( var_5 ) )
        var_5 = var_10._ID196[var_11 - 1];

    if ( !_func_02F( var_6 ) )
        var_6 = var_10._ID20033[var_11 - 1];

    if ( !_func_02F( var_7 ) )
        var_7 = var_10._ID26049[var_11 - 1];

    if ( !_func_02F( var_8 ) )
        var_8 = var_10._ID851[var_11 - 1];

    var_10._ID1210[var_11] = var_1;
    var_10._ID28250[var_11] = var_2;
    var_10._ID10859[var_11] = var_3;
    var_10._ID20129[var_11] = var_4;
    var_10._ID196[var_11] = var_5;
    var_10._ID20033[var_11] = var_6;
    var_10._ID26049[var_11] = var_7;
    var_10._ID851[var_11] = var_8;
    var_10._ID38616[var_11] = var_9;
}

_ID49006( var_0 )
{
    var_1 = var_0["targetname"];
    var_2 = var_0["anim_tree_name"];
    var_3 = var_0["anim_name"];
    var_4 = var_0["anim_tag"];
    var_5 = var_0["link_tag"];
    var_6 = var_0["link_origin_offset"];
    var_7 = var_0["link_angles_offset"];
    var_8 = var_0["fxids"];
    var_9 = var_0["min_delay"];
    var_10 = var_0["max_delay"];
    var_11 = var_0["ender"];

    if ( !_func_02F( var_9 ) )
        var_9 = 0.1;

    if ( !_func_02F( var_10 ) )
        var_10 = 1.0;

    if ( !_func_02F( var_6 ) )
        var_6 = ( 0, 0, 0 );

    if ( !_func_02F( var_7 ) )
        var_7 = ( 0, 0, 0 );

    self endon( "death" );

    if ( _func_02F( var_11 ) )
        level endon( var_11 );

    var_12 = _func_1A2( var_1, "targetname" );
    var_13 = var_12;

    for ( var_20 = _func_1DA( var_13 ); _func_02F( var_20 ); var_20 = _func_1BF( var_13, var_20 ) )
    {
        var_14 = var_13[var_20];

        if ( !_func_02F( var_14._ID1191 ) )
            continue;

        var_14._ID3189 = var_2;
        var_14 _ID42259::_ID32556();
        var_14 thread _ID42259::_ID3044( var_14, var_3, undefined, var_4 );
        var_15 = _func_1A1( var_14._ID1191, "targetname" );
        var_16 = _ID42237::_ID35164();
        var_16 _meth_8053( var_14, var_5, var_6, var_7 );
        var_15 thread _ID42407::_ID22901( var_16 );

        if ( _func_02F( var_8 ) )
        {
            var_17 = var_8;

            for ( var_19 = _func_1DA( var_17 ); _func_02F( var_19 ); var_19 = _func_1BF( var_17, var_19 ) )
            {
                var_18 = var_17[var_19];
                _func_157( level._ID1426[var_18], var_14, var_5 );
            }

            var_clear_2
            var_clear_0
        }

        wait(_func_0BA( var_9, var_10 ));
    }

    var_clear_4
    var_clear_0
}

_ID22291()
{
    if ( _func_242() )
    {
        _func_0DB( "r_veil", 1 );
        _func_0DB( "r_veilStrength", 0.087 );
        _func_0DB( "r_tonemap", 2 );
        _func_0DB( "r_tonemapBlack", 0.0 );
        _func_0DB( "r_tonemapCrossover", 1.0 );
        _func_0DB( "r_tonemapHighlightRange", 16.0 );
        _func_0DB( "r_tonemapDarkEv", 2.84 );
        _func_0DB( "r_tonemapMidEv", 7.823 );
        _func_0DB( "r_tonemapLightEv", 12.81 );
        _func_0DB( "r_tonemapDarkExposureAdjust", -3.17 );
        _func_0DB( "r_tonemapMidExposureAdjust", -0.0651 );
        _func_0DB( "r_tonemapLightExposureAdjust", 1.47 );
        _func_0DB( "r_tonemapMinExposureAdjust", -3.17 );
        _func_0DB( "r_tonemapMaxExposureAdjust", 2.3 );

        if ( level._ID844 )
            _func_0DB( "r_tonemapShoulder", 0.4 );
        else
            _func_0DB( "r_tonemapShoulder", 0.94 );

        _func_0DB( "r_tonemapToe", 0.0 );
        _func_0DB( "r_tonemapWhite", 512 );
        _func_0DB( "r_tonemapAdaptSpeed", 0.02 );
        _func_0DB( "r_tonemapLockAutoExposureAdjust", 0 );
        _func_0DB( "r_tonemapAutoExposureAdjust", 0.0 );
        _func_0DB( "r_tonemapExposure", -10.0 );
        _func_0DB( "r_tonemapMaxExposure", -10.0 );
    }

    if ( _func_243() )
    {
        _func_0DB( "r_ssaoPower", 12.0 );
        _func_0DB( "r_ssaoStrength", 0.45 );
        _func_0DB( "r_ssaominstrengthdepth", 25.0 );
        _func_0DB( "r_ssaomaxstrengthdepth", 40.0 );
    }

    _unknown_1516();
}

_ID31004( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _func_1B0( level._ID794 );
    var_8._ID1331 = 0;
    var_8._ID1339 = 0;
    var_8._ID998 = 1;
    var_8._ID44 = "left";
    var_8._ID45 = "top";
    var_8._ID983 = 1;
    var_8._ID408 = 0;
    var_8._ID499 = "fullscreen";
    var_8._ID1284 = "fullscreen";
    var_8._ID55 = var_4;
    var_8 thread _unknown_0E2D();

    if ( _func_02F( var_5 ) )
        var_8._ID1331 = var_5;

    if ( _func_02F( var_6 ) )
        var_8._ID1339 = var_6;

    if ( _func_02F( var_7 ) )
        var_8._ID983 = var_7;

    if ( _func_0D3( var_1 ) )
    {
        var_9 = var_1;

        for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
        {
            var_10 = var_9[var_11];
            var_8 _meth_80D3( var_10, 640, 480 );
        }

        var_clear_2
        var_clear_0
    }
    else
        var_8 _meth_80D3( var_1, 640, 480 );

    if ( var_0 > 0 )
    {
        var_8._ID55 = 0;
        var_12 = 1;

        if ( _func_02F( var_2 ) )
            var_12 = var_2;

        var_13 = 1;

        if ( _func_02F( var_3 ) )
            var_13 = var_3;

        var_14 = 1;

        if ( _func_02F( var_4 ) )
            var_14 = _func_0EE( var_4, 0.0, 1.0 );

        var_15 = 0.05;

        if ( var_12 > 0 )
        {
            var_16 = 0;
            var_17 = var_14 / var_12 / var_15;

            while ( var_16 < var_14 )
            {
                var_8._ID55 = var_16;
                var_16 += var_17;
                wait(var_15);
            }
        }

        var_8._ID55 = var_14;
        wait(var_0 - var_12 + var_13);

        if ( var_13 > 0 )
        {
            var_16 = var_14;
            var_18 = var_14 / var_13 / var_15;

            while ( var_16 > 0 )
            {
                var_8._ID55 = var_16;
                var_16 -= var_18;
                wait(var_15);
            }
        }

        var_8._ID55 = 0;
        var_8 _meth_808F();
    }

    level._ID26105 = var_8;
    return level._ID26105;
}

_ID7805()
{
    level waittill( "end_screen_effect" );
    self _meth_808F();
}

_ID5306()
{

}

_ID10866()
{
    var_0 = _func_1B0( level._ID794 );
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "fullscreen_dirt_bottom", 640, 480 );
    var_0 _meth_80D3( "fullscreen_dirt_bottom_b", 640, 480 );
    var_0 _meth_80D3( "fullscreen_dirt_left", 640, 480 );
    var_0 _meth_80D3( "fullscreen_dirt_right", 640, 480 );
    var_0._ID998 = 1;
    var_0._ID44 = "left";
    var_0._ID45 = "top";
    var_0._ID983 = 1;
    var_0._ID408 = 0;
    var_0._ID499 = "fullscreen";
    var_0._ID1284 = "fullscreen";
    var_0._ID55 = 1;
    var_0 _meth_808B( 3 );
    var_0._ID55 = 0;
}

_ID5388( var_0 )
{
    self endon( "stop_mask_bob" );
    var_1 = 0;
    var_2 = level._ID794 _meth_8346();
    var_3 = 0;
    var_4 = 0;
    var_5 = var_0._ID1339;
    var_6 = var_0._ID1331;
    var_7 = 0.05;

    for (;;)
    {
        if ( _func_02F( var_0 ) )
        {
            var_8 = level._ID794 _meth_8346();
            var_9 = level._ID794 _meth_8344();
            var_10 = var_9[2];
            var_9 -= var_9 * ( 0, 0, 1 );
            var_11 = _func_0F6( var_9 );
            var_12 = level._ID794 _meth_8188();
            var_13 = _func_0EE( var_11, 0, 280 ) / 280;
            var_14 = 0.1 + var_13 * 0.25;
            var_15 = 0.1 + var_13 * 0.25;
            var_16 = 1.0;

            if ( var_12 == "crouch" )
                var_16 = 0.75;

            if ( var_12 == "prone" )
                var_16 = 0.4;

            if ( var_12 == "stand" )
                var_16 = 1.0;

            var_17 = 5.0;
            var_18 = 0.9;
            var_19 = level._ID794 _meth_834B();
            var_20 = var_17 * 1.0 - var_19 + var_18 * var_19;
            var_20 *= 1 + var_13 * 2;
            var_21 = 5;
            var_22 = var_21 * var_14 * var_16;
            var_23 = var_21 * var_15 * var_16;
            var_1 += var_7 * 1000.0 * var_20;
            var_24 = 57.2958;
            var_25 = _func_0BB( var_1 * 0.001 * var_24 );
            var_26 = _func_0BB( var_1 * 0.0007 * var_24 );
            var_27 = _func_0F0( var_8[1] - var_2[1] );
            var_27 = _func_0EE( var_27, -10, 10 );
            var_28 = var_27 / 10 * var_21 * 1 - var_14;
            var_29 = var_28 - var_4;
            var_4 += _func_0EE( var_29, -1.0, 1.0 );
            var_30 = _func_0EE( var_10, -200, 200 ) / 200 * var_21 * 1 - var_15;
            var_31 = var_30 - var_3;
            var_3 += _func_0EE( var_31, -0.6, 0.6 );
            var_0 _meth_808D( 0.05 );
            var_0._ID1331 = var_6 + _func_0EE( var_25 * var_22 + var_4 - var_21, 0 - 2 * var_21, 0 );
            var_0._ID1339 = var_5 + _func_0EE( var_26 * var_23 + var_3 - var_21, 0 - 2 * var_21, 0 );
            var_2 = var_8;
        }

        wait(var_7);
    }
}

_ID15404( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 1;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_3 ) )
        var_3 = 0.25;

    if ( var_0 )
        _ID42313::_ID13798( var_1 );

    self._ID15399 = _func_1B0( self );
    self._ID15399._ID1331 = 0;
    self._ID15399._ID1339 = 0;
    self._ID15399._ID499 = "fullscreen";
    self._ID15399._ID1284 = "fullscreen";
    self._ID15399._ID408 = 0;
    self._ID15399._ID983 = -1;
    self._ID15399 _meth_80D3( "gasmask_overlay_delta2_top", 650, 138 );
    self._ID15399._ID55 = 1.0;
    self._ID15400 = _func_1B0( self );
    self._ID15400._ID1331 = 0;
    self._ID15400._ID1339 = 352;
    self._ID15400._ID499 = "fullscreen";
    self._ID15400._ID1284 = "fullscreen";
    self._ID15400._ID408 = 0;
    self._ID15400._ID983 = -1;
    self._ID15400 _meth_80D3( "gasmask_overlay_delta2_bottom", 650, 138 );
    self._ID15400._ID55 = 1.0;
    level._ID794 _ID42407::_ID10226( 1.0, ::_unknown_131D );
    thread _unknown_1243( self._ID15399 );
    thread _unknown_124A( self._ID15400 );

    if ( var_0 )
    {
        wait(var_3);
        _ID42313::_ID13791( var_2 );
    }
}

_ID15402()
{
    _ID42313::_ID13798( 0.25 );
    self notify( "stop_mask_bob" );

    if ( _func_02F( self._ID15399 ) )
    {
        self._ID15399 _meth_808F();
        self._ID15399 = undefined;
    }

    if ( _func_02F( self._ID15400 ) )
    {
        self._ID15400 _meth_808F();
        self._ID15400 = undefined;
    }

    level._ID794 notify( "stop_breathing" );
    wait 0.25;
    _ID42313::_ID13791( 1.5 );
}

_ID15398()
{
    var_0 = 1.0;
    self endon( "stop_breathing" );

    for (;;)
    {
        _ID42407::_ID27079( "breathing_gasmask" );
        wait(var_0);
    }
}

_ID15403()
{
    self._ID15397 = _func_06A( "script_model", ( 0, 0, 0 ) );
    self._ID15397 _meth_80B8( "prop_sas_gasmask" );
    self._ID15397 _meth_8053( self, "tag_eye", ( -4, 0, 2 ), ( 120, 0, 0 ) );
}

_ID15401()
{
    if ( _func_02F( self._ID15397 ) )
        self._ID15397 _meth_80B7();
}

_ID22290()
{
    _unknown_14E6( "fire", ( 0.972549, 0.62451, 0.345098 ), ( 0.2, 0.146275, 0.0878432 ), 0.005, 0.2, 8 );
    _unknown_150B( "blue_fire", ( 0.445098, 0.62451, 0.972549 ), ( 0.05, 0.150451, 0.307843 ), 0.005, 0.2, 8 );
    _unknown_1530( "white_fire", ( 0.972549, 0.972549, 0.972549 ), ( 0.2, 0.2, 0.2 ), 0.005, 0.2, 8 );
    _unknown_1557( "white_fire_dim", ( 0.972549, 0.972549, 0.972549 ), ( 0.2, 0.2, 0.2 ), 0.005, 0.2, 0.5 );
    _unknown_157C( "street_light", ( 0.972549, 0.972549, 0.972549 ), ( 0.572549, 0.572549, 0.572549 ), 0.005, 0.2, 8 );
    _unknown_159E( "pulse", ( 0, 0, 0 ), ( 255, 107, 107 ), 0.2, 1, 8 );
    _unknown_15C3( "lightbulb", ( 0.972549, 0.62451, 0.345098 ), ( 0.2, 0.146275, 0.0878432 ), 0.005, 0.2, 6 );
    _unknown_15E8( "fluorescent", ( 0.972549, 0.62451, 0.345098 ), ( 0.2, 0.146275, 0.0878432 ), 0.005, 0.2, 7 );
    _unknown_160C( "static_screen", ( 0.63, 0.72, 0.92 ), ( 0.4, 0.43, 0.48 ), 0.005, 0.2, 7 );
    _unknown_1631( "sfb_fire", ( 1, 0.65, 0.8 ), ( 0.4, 0.24, 0.3 ), 0.005, 0.2, 8 );
}

_ID9142( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( level._ID1507._ID14550 ) )
        level._ID1507._ID14550 = [];

    var_6 = _func_1A5();
    var_6._ID196 = var_1;
    var_6._ID20129 = var_2;
    var_6._ID23110 = var_3;
    var_6._ID23621 = var_4;
    var_6._ID23087 = var_5;
    level._ID1507._ID14550[var_0] = var_6;
}

_ID15732( var_0 )
{
    if ( _func_02F( level._ID1507._ID14550 ) && _func_02F( level._ID1507._ID14550[var_0] ) )
        return level._ID1507._ID14550[var_0];

    return undefined;
}

_ID26957( var_0, var_1 )
{
    var_2 = _func_1A2( var_1, "targetname" );

    if ( !_func_02F( var_2 ) || var_2.size <= 0 )
        return;

    var_3 = _unknown_1684( var_0 );

    if ( !_func_02F( var_3 ) )
        return;

    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_5 _meth_81EB( var_3._ID20129 );
        var_5._ID20810 = 1;
        var_5._ID20811 = 0;
        var_5 thread _unknown_1786( var_3._ID196, var_3._ID20129, var_3._ID23110, var_3._ID23621, var_3._ID23087 );
    }

    var_clear_2
    var_clear_0
    return var_2;
}

_ID9143( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( level._ID1507._ID14551 ) )
        level._ID1507._ID14551 = [];

    var_6 = _func_1A5();
    var_6._ID8263 = var_1;
    var_6._ID8265 = var_2;
    var_6._ID23621 = var_3;
    var_6._ID23087 = var_4;
    var_6._ID20129 = var_5;
    level._ID1507._ID14551[var_0] = var_6;
}

_ID15733( var_0 )
{
    if ( _func_02F( level._ID1507._ID14551 ) && _func_02F( level._ID1507._ID14551[var_0] ) )
        return level._ID1507._ID14551[var_0];

    return undefined;
}

_ID26958( var_0, var_1, var_2 )
{
    var_3 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_3 ) )
        return;

    var_4 = _unknown_1794( var_0 );

    if ( !_func_02F( var_4 ) )
        return;

    if ( _func_02F( var_2 ) )
    {
        if ( var_2 < 0 )
            var_2 = 0;

        var_4._ID20129 = var_2;
    }

    var_3 _meth_81EB( var_4._ID20129 );
    var_3._ID20810 = 1;
    var_3._ID20811 = 0;
    var_3 thread _unknown_1824( var_4._ID8263, var_4._ID8265, var_4._ID23621, var_4._ID23087 );
    return var_3;
}

_ID36494( var_0, var_1, var_2 )
{
    var_3 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_3 ) )
        return;

    if ( !_func_02F( var_3._ID20810 ) )
        return;

    if ( _func_02F( var_2 ) )
    {
        if ( var_2 < 0 )
            var_2 = 0;
    }

    var_3 _meth_81EB( var_2 );
    var_3 notify( "kill_flicker" );
    var_3._ID20810 = undefined;
}

_ID26399( var_0, var_1 )
{
    var_2 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_2 ) )
        return;

    if ( !_func_02F( var_2._ID20810 ) )
        return;

    var_2._ID20811 = 1;
}

_ID39513( var_0, var_1 )
{
    var_2 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_2 ) )
        return;

    if ( !_func_02F( var_2._ID20810 ) )
        return;

    var_2._ID20811 = 0;
}

_ID12250( var_0, var_1, var_2, var_3 )
{
    self endon( "kill_flicker" );
    var_4 = var_0;
    var_5 = 0.0;

    for (;;)
    {
        if ( self._ID20811 )
        {
            wait 0.05;
            continue;
        }

        var_6 = var_4;
        var_4 = var_0 + var_1 - var_0 * _func_0B8( 1.0 );

        if ( var_2 != var_3 )
            var_5 += _func_0BA( var_2, var_3 );
        else
            var_5 += var_2;

        if ( var_5 == 0 )
            var_5 += 1e-07;

        for ( var_7 = var_6 - var_4 * 1 / var_5; var_5 > 0 && !self._ID20811; var_5 -= 0.05 )
        {
            self _meth_8046( var_4 + var_7 * var_5 );
            wait 0.05;
        }
    }
}

_ID12251( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "kill_flicker" );
    self _meth_8046( var_0 );
    self _meth_81EB( var_1 );
    thread _unknown_1985();
    var_5 = self._ID740;
    var_6 = var_2;
    var_7 = var_2;
    var_8 = var_2;
    var_9 = var_3;
    var_10 = var_4;

    for (;;)
    {
        var_11 = _func_0BA( var_9, var_10 );
        var_12 = var_6 * _func_0BA( 0.1, 1 );
        var_13 = var_7 * _func_0BA( 0.1, 1 );
        var_14 = var_8 * _func_0BA( 0.1, 1 );
        var_15 = var_5 + ( var_12, var_13, var_14 );
        self _meth_82B8( var_15, var_11 );
        wait(var_11);

        while ( self._ID20811 )
            wait 0.05;
    }
}

_ID14262()
{
    var_0 = self _meth_81EA();
    self endon( "kill_flicker" );
    var_1 = var_0;

    for (;;)
    {
        var_2 = _func_0BA( var_0 * 0.5, var_0 * 1.2 );
        var_3 = _func_0BA( 0.2, 1.0 );
        var_3 *= 0.75;

        while ( self._ID20811 )
            wait 0.05;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            var_5 = var_2 * var_4 / var_3 + var_1 * var_3 - var_4 / var_3;
            self _meth_81EB( var_5 );
            wait 0.05;
        }

        var_1 = var_2;
    }
}

_ID9161( var_0, var_1 )
{
    var_2 = _func_1A5();
    var_3 = _func_1A2( var_0, "script_noteworthy" );
    var_2._ID22298 = [];
    var_2._ID23877 = [];
    var_4 = var_3;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( var_5._ID170 == "script_model" )
            var_2._ID23877[var_2._ID23877.size] = var_5;

        if ( var_5._ID170 == "light_spot" )
            var_2._ID22298[var_2._ID22298.size] = var_5;
    }

    var_clear_2
    var_clear_0
    var_2._ID15275 = var_1;
    return var_2;
}

_ID22284( var_0, var_1, var_2 )
{
    var_3 = self._ID22298;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _meth_81EB( var_0 );
        var_4 _meth_8046( var_1 );
    }

    var_clear_2
    var_clear_0

    if ( var_2 && !_func_02F( self._ID41407 ) )
    {
        _ID42234::_ID13611( self._ID15275 );
        var_6 = self._ID23877;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_7 _meth_8059();
        }

        var_clear_2
        var_clear_0
        self._ID41407 = 1;
    }
    else if ( _func_02F( self._ID41407 ) && !var_2 )
    {
        _ID42407::_ID36481( self._ID15275 );
        var_9 = self._ID23877;

        for ( var_10 = _func_1DA( var_9 ); _func_02F( var_10 ); var_10 = _func_1BF( var_9, var_10 ) )
        {
            var_7 = var_9[var_10];
            var_7 _meth_805A();
        }

        var_clear_2
        var_clear_0
        self._ID41407 = undefined;
    }
}

_ID14553( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_0 endon( "kill_flicker" );
    var_7 = 0;
    var_8 = 0.0;

    for (;;)
    {
        var_9 = var_7;
        var_7 = _func_0B8( 1.0 );

        if ( var_5 != var_6 )
            var_8 += _func_0BA( var_5, var_6 );
        else
            var_8 += var_6;

        if ( var_8 == 0 )
            var_8 += 1e-07;

        for ( var_10 = var_7 - var_9 / var_8; var_8 > 0; var_8 -= 0.05 )
        {
            var_11 = var_7 - var_8 * var_10;
            var_12 = _func_11C( var_1, var_3, var_11 );
            var_13 = _ID42407::_ID22382( var_11, var_2, var_4 );
            var_14 = var_11 > 0.5;
            var_0 _unknown_1C05( var_13, var_12, var_14 );
            wait 0.05;
        }
    }
}

_ID26586( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 2;
    var_6 = 3;
    var_7 = 5;

    for (;;)
    {
        var_8 = _func_0EE( _func_107( _func_03D() * 0.001 * var_5, 0, var_6, 2, var_7 ), 0, 1 );
        var_9 = _func_11C( var_1, var_3, var_8 );
        var_10 = _ID42407::_ID22382( var_8, var_2, var_4 );
        var_11 = var_8 > 0.5;
        var_0 _unknown_1C62( var_10, var_9, var_11 );
        wait 0.05;
    }
}

_ID22179( var_0, var_1, var_2 )
{
    var_3 = _func_1A1( var_0, "targetname" );

    if ( level._ID227 && _func_02F( var_3 ) == 0 )
        return;

    var_4 = var_3 _meth_81EA();
    var_3._ID12725 = var_2;
    var_5 = 0;

    while ( var_5 < var_1 )
    {
        var_6 = var_4 + var_2 - var_4 * var_5 / var_1;
        var_5 += 0.05;
        var_3 _meth_81EB( var_6 );
        wait 0.05;
    }

    var_3 _meth_81EB( var_2 );
}

_ID22180( var_0, var_1, var_2 )
{
    var_3 = _func_1A2( var_0, "targetname" );
    var_4 = var_3;

    for ( var_9 = _func_1DA( var_4 ); _func_02F( var_9 ); var_9 = _func_1BF( var_4, var_9 ) )
    {
        var_5 = var_4[var_9];
        var_6 = var_5 _meth_81EA();
        var_5._ID12725 = var_2;
        var_7 = 0;

        while ( var_7 < var_1 )
        {
            var_8 = var_6 + var_2 - var_6 * var_7 / var_1;
            var_7 += 0.05;
            var_5 _meth_81EB( var_8 );
            wait 0.05;
        }

        var_5 _meth_81EB( var_2 );
    }

    var_clear_5
    var_clear_0
}

_ID22181( var_0, var_1, var_2 )
{
    var_3 = _func_1A1( var_0, "targetname" );

    if ( level._ID227 && _func_02F( var_3 ) == 0 )
        return;

    var_4 = var_3 _meth_804B();
    var_3._ID12737 = var_2;
    var_5 = 0;

    while ( var_5 < var_1 )
    {
        var_6 = var_4 + var_2 - var_4 * var_5 / var_1;
        var_5 += 0.05;
        var_3 _meth_804C( var_6 );
        wait 0.05;
    }

    var_3 _meth_804C( var_2 );
}

_ID32449( var_0, var_1 )
{
    var_2 = _func_1A1( var_0, "targetname" );

    if ( level._ID227 && _func_02F( var_2 ) == 0 )
        return;

    var_2 _meth_81EB( var_1 );
}

_ID22178( var_0, var_1, var_2 )
{
    var_3 = _func_1A1( var_0, "targetname" );

    if ( level._ID227 && _func_02F( var_3 ) == 0 )
        return;

    var_4 = var_3 _meth_8045();
    var_3._ID12634 = var_2;
    var_5 = 0;

    while ( var_5 < var_1 )
    {
        var_6 = var_4 + var_2 - var_4 * var_5 / var_1;
        var_5 += 0.05;
        var_3 _meth_8046( var_6 );
        wait 0.05;
    }

    var_3 _meth_8046( var_2 );
}

_ID32448( var_0, var_1 )
{
    var_2 = _func_1A1( var_0, "targetname" );
    var_2 _meth_8046( var_1 );
}

_ID22292()
{
    _unknown_1F24( "red", 0.1, 0.1, 10000, ( 1, 0.2, 0.2 ), 2 );
    _unknown_1F43( "red2", 0.1, 0.1, 68200000, ( 1, 0.2, 0.2 ), 2 );
    _unknown_1F62( "yellow", 0.1, 0.1, 68200000, ( 1, 0.7, 0.2 ), 2 );
    _unknown_1F81( "white", 0.1, 0.1, 68200000, ( 1, 1, 1 ), 2 );
    _unknown_1F9E( "turbine_pulse", 0.1, 0.1, 10000, ( 0.9, 0.9, 1 ), 2 );
}

_ID9174( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( level._ID1507._ID28755 ) )
        level._ID1507._ID28755 = [];

    var_6 = _func_1A5();
    var_6._ID38674 = var_1;
    var_6._ID38673 = var_2;
    var_6._ID20129 = var_3;
    var_6._ID8264 = var_4;
    var_6._ID25216 = var_5;
    level._ID1507._ID28755[var_0] = var_6;
}

_ID15938( var_0 )
{
    if ( _func_02F( level._ID1507._ID28755 ) && _func_02F( level._ID1507._ID28755[var_0] ) )
        return level._ID1507._ID28755[var_0];

    return undefined;
}

_ID27032( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0 + var_1 + "_pulse";
    level notify( var_4 );
    level endon( var_4 );
    var_5 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_5 ) )
        return;

    var_6 = _unknown_2040( var_0 );

    if ( !_func_02F( var_6 ) )
        return;

    if ( _func_02F( var_2 ) )
    {
        if ( var_2 < 0 )
            var_2 = 0;

        var_6._ID20129 = var_2;
    }

    var_5 _meth_81EB( var_6._ID20129 );
    var_5 _meth_8046( var_6._ID8264 );
    var_7 = var_6._ID25216;
    var_8 = var_5 _meth_81EA();
    var_9 = 0.05;
    var_10 = var_8;
    var_11 = var_6._ID38674;
    var_12 = var_6._ID38673;
    var_13 = var_8 - var_9 / var_11 / 0.05;
    var_14 = var_8 - var_9 / var_12 / 0.05;
    var_15 = var_6._ID25216;

    for (;;)
    {
        var_16 = 1;
        var_17 = 0;

        while ( var_17 < var_12 )
        {
            var_10 -= var_14;
            var_10 = _func_0EE( var_10, 0, 1000000000 );
            var_5 _meth_81EB( var_10 );
            var_17 += 0.05;
            wait 0.05;
        }

        if ( _func_02F( var_3 ) )
            _ID42407::_ID36481( var_3 );

        wait 0.8;
        var_17 = 0;

        while ( var_17 < var_11 )
        {
            var_10 += var_13;
            var_10 = _func_0EE( var_10, 0, 1000000000 );
            var_5 _meth_81EB( var_10 );
            var_17 += 0.05;
            wait 0.05;
        }

        if ( _func_02F( var_3 ) )
            _ID42234::_ID13611( var_3 );

        wait 0.1;

        while ( var_16 < var_15 )
        {
            var_17 = 0;

            while ( var_17 < var_12 )
            {
                var_10 -= var_14;
                var_10 = _func_0EE( var_10, 0, 300000 );
                var_5 _meth_81EB( var_10 );
                var_17 += 0.05;
                wait 0.05;
            }

            wait 0.1;
            var_17 = 0;

            while ( var_17 < var_11 )
            {
                var_10 += var_13;
                var_10 = _func_0EE( var_10, 0, 300000 );
                var_5 _meth_81EB( var_10 );
                var_17 += 0.05;
                wait 0.05;
            }

            wait 0.1;
            var_16 += 1;
        }
    }

    return var_5;
}

_ID23869( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 )
{
    self endon( "death" );

    if ( _func_02F( var_10 ) )
        level endon( var_10 );

    var_13 = _func_1A2( var_0, "script_noteworthy" );

    if ( !_func_02F( var_13 ) )
        return;

    var_14 = [];
    var_15 = [];
    var_16 = var_13;

    for ( var_19 = _func_1DA( var_16 ); _func_02F( var_19 ); var_19 = _func_1BF( var_16, var_19 ) )
    {
        var_17 = var_16[var_19];

        if ( var_17._ID170 == "script_model" )
            var_15[var_15.size] = var_17;

        if ( var_17._ID170 == "light_spot" || var_17._ID170 == "light_omni" )
        {
            var_14[var_14.size] = var_17;
            var_18 = var_2;

            if ( var_3 > var_2 )
                var_18 = _func_0BA( var_2, var_3 );

            var_17 _meth_81EB( var_18 );
        }
    }

    var_clear_2
    var_clear_0
    var_20 = 0;
    var_21 = undefined;
    var_22 = undefined;
    var_23 = undefined;
    var_24 = undefined;
    var_25 = undefined;
    var_26 = 1;

    if ( _func_0D3( var_11 ) )
    {
        var_21 = var_11["on"];
        var_22 = var_11["off"];
        var_23 = var_11["loop"];
        var_25 = var_11["vol_env"];

        if ( _func_031( var_23 ) )
            var_24 = "model_flicker_preset_" + _ID42475::_ID34587();
    }

    var_27 = 0;

    if ( _func_02F( var_4 ) )
        _ID42234::_ID13611( var_4 );

    while ( var_27 < var_1 || var_1 == 0 )
    {
        var_28 = undefined;

        if ( _func_02F( var_12 ) )
            var_29 = var_12;
        else
            var_29 = 0.05;

        var_30 = 0.0;

        if ( _func_02F( var_6 ) && _func_02F( var_7 ) )
            var_31 = _func_0BA( var_6, var_7 );
        else
            var_31 = _func_0BA( 0.1, 0.8 );

        if ( _func_02F( var_8 ) && _func_02F( var_9 ) )
            var_32 = _func_0BA( var_8, var_9 );
        else
            var_32 = _func_0BA( 0.1, 0.8 );

        var_33 = var_14;

        for ( var_35 = _func_1DA( var_33 ); _func_02F( var_35 ); var_35 = _func_1BF( var_33, var_35 ) )
        {
            var_34 = var_33[var_35];

            if ( var_20 )
            {
                if ( _func_031( var_24 ) )
                    level notify( var_24 );

                if ( _func_02F( var_22 ) )
                    var_34 _ID42494::_ID34619( var_22, undefined, undefined, undefined, var_26 );

                var_20 = 0;
            }
        }

        var_clear_15
        var_clear_13

        if ( _func_02F( var_5 ) )
            _ID42407::_ID36481( var_5 );

        var_36 = var_15;

        for ( var_38 = _func_1DA( var_36 ); _func_02F( var_38 ); var_38 = _func_1BF( var_36, var_38 ) )
        {
            var_37 = var_36[var_38];
            var_37 _meth_805A();
        }

        var_clear_12
        var_clear_10
        var_39 = var_14;

        for ( var_41 = _func_1DA( var_39 ); _func_02F( var_41 ); var_41 = _func_1BF( var_39, var_41 ) )
        {
            var_40 = var_39[var_41];
            var_28 = var_40 _meth_81EA();
            var_40 _meth_81EB( var_29 );
        }

        var_clear_9
        var_clear_7
        wait(var_32);
        var_42 = var_14;

        for ( var_43 = _func_1DA( var_42 ); _func_02F( var_43 ); var_43 = _func_1BF( var_42, var_43 ) )
        {
            var_34 = var_42[var_43];
            var_18 = var_2;

            if ( var_3 > var_2 )
                var_18 = _func_0BA( var_2, var_3 );

            var_34 _meth_81EB( var_18 );

            if ( _func_02F( var_21 ) && !var_20 )
            {
                if ( _func_0D3( var_25 ) )
                    var_26 = _ID42475::_ID34571( var_18, var_25 );

                if ( _func_02F( var_21 ) )
                    var_34 _ID42494::_ID34619( var_21, undefined, undefined, undefined, var_26 );

                if ( _func_02F( var_23 ) )
                    var_34 _ID42494::_ID34629( var_23, var_24, 0.0, 0.1, var_26 );

                var_20 = 1;
            }
        }

        var_clear_6
        var_clear_4

        if ( _func_02F( var_5 ) )
            _ID42234::_ID13611( var_5 );

        var_44 = var_15;

        for ( var_45 = _func_1DA( var_44 ); _func_02F( var_45 ); var_45 = _func_1BF( var_44, var_45 ) )
        {
            var_37 = var_44[var_45];
            var_37 _meth_8059();
        }

        var_clear_3
        var_clear_2
        var_46 = var_14;

        for ( var_47 = _func_1DA( var_46 ); _func_02F( var_47 ); var_47 = _func_1BF( var_46, var_47 ) )
        {
            var_40 = var_46[var_47];
            var_40 _meth_81EB( var_28 );
        }

        var_clear_1
        var_clear_0
        wait(var_31);

        if ( var_1 != 0 )
            var_27++;
    }
}

_ID22288()
{
    _unknown_2601( "default", 1, 1, 4.5, 500, 500, 0.05, 0.5 );
    _unknown_261C( "viewmodel_blur", 1, 1, 4.5, 500, 500, 0.05, 0.5 );
    _unknown_2634( "close_none_viewmodel_blur", 1, 50, 4, 1000, 7000, 0.05, 0.5 );
    _unknown_264F( "river", 1, 104, 4.5, 500, 500, 1.8, 0.5 );
    _unknown_2669( "medium_none_viewmodel_blur", 1, 500, 10, 1000, 7000, 0.05, 0.5 );
}

_ID9134( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !_func_02F( level._ID1507._ID11369 ) )
        level._ID1507._ID11369 = [];

    var_8 = [];
    var_8["nearStart"] = var_1;
    var_8["nearEnd"] = var_2;
    var_8["nearBlur"] = var_3;
    var_8["farStart"] = var_4;
    var_8["farEnd"] = var_5;
    var_8["farBlur"] = var_6;
    var_8["bias"] = var_7;
    level._ID1507._ID11369[var_0] = var_8;
}

_ID22278( var_0 )
{
    if ( _func_02F( level._ID1507._ID11369 ) && _func_02F( level._ID1507._ID11369[var_0] ) )
        return level._ID1507._ID11369[var_0];
}

_ID5275( var_0, var_1, var_2 )
{
    if ( _func_02F( level._ID1507._ID11369 ) )
    {
        var_3 = _unknown_2710( var_0 );
        var_4 = _unknown_2716( var_1 );

        if ( _func_02F( var_3 ) && _func_02F( var_4 ) )
            _ID42262::_ID11342( var_4["nearStart"], var_4["nearEnd"], var_4["nearBlur"], var_4["farStart"], var_4["farEnd"], var_4["farBlur"], var_2, var_4["bias"] );
        else
        {

        }
    }
}

_ID22289()
{
    _unknown_278D( "default", 2, 8 );
    _unknown_2799( "viewmodel_blur", 10, 90 );
    _unknown_27A4( "max", 2, 128 );
}

_ID9135( var_0, var_1, var_2 )
{
    if ( !_func_02F( level._ID1507._ID11388 ) )
        level._ID1507._ID11388 = [];

    var_3["start"] = var_1;
    var_3["end"] = var_2;
    level._ID794._ID40477 = var_3["start"];
    level._ID794._ID40476 = var_3["end"];
    level._ID1507._ID11388[var_0] = var_3;
}

_ID22279( var_0 )
{
    if ( _func_02F( level._ID1507._ID11388 ) && _func_02F( level._ID1507._ID11388[var_0] ) )
        return level._ID1507._ID11388[var_0];
}

_ID5276( var_0, var_1, var_2 )
{
    if ( _func_02F( level._ID1507._ID11388 ) )
    {
        var_3 = _unknown_2832( var_0 );
        var_4 = _unknown_2838( var_1 );

        if ( _func_02F( var_3 ) && _func_02F( var_4 ) )
            _unknown_2866( var_3, var_4, var_2 );
        else
        {

        }
    }
}

_ID5283( var_0, var_1, var_2 )
{
    if ( var_2 > 0 )
    {
        var_3 = var_1["start"] - var_0["start"] * 0.05 / var_2;
        var_4 = var_1["end"] - var_0["end"] * 0.05 / var_2;
        thread _unknown_28B9( var_1, var_3, var_4 );
    }
    else
    {
        level._ID794._ID40477 = var_1["start"];
        level._ID794._ID40476 = var_1["end"];
    }
}

_ID22193( var_0, var_1, var_2 )
{
    level notify( "lerp_viewmodel_dof" );
    level endon( "lerp_viewmodel_dof" );
    var_3 = 0;
    var_4 = 0;

    while ( !var_3 || !var_4 )
    {
        if ( !var_3 )
        {
            level._ID794._ID40477 = level._ID794._ID40477 + var_1;

            if ( var_1 > 0 && level._ID794._ID40477 > var_0["start"] || var_1 < 0 && level._ID794._ID40477 < var_0["start"] )
            {
                level._ID794._ID40477 = var_0["start"];
                var_3 = 1;
            }
        }

        if ( !var_4 )
        {
            level._ID794._ID40476 = level._ID794._ID40476 + var_2;

            if ( var_2 > 0 && level._ID794._ID40476 > var_0["end"] || var_2 < 0 && level._ID794._ID40476 < var_0["end"] )
            {
                level._ID794._ID40476 = var_0["end"];
                var_4 = 1;
            }
        }

        level._ID794 _meth_8193( level._ID794._ID40477, level._ID794._ID40476 );
        wait 0.05;
    }
}

_ID22282()
{
    level._ID1507._ID23484 = [];
}

_ID22274()
{

}

_ID22285( var_0, var_1 )
{
    level._ID1507._ID23484[var_0] = var_1;
}

_ID22281( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( level._ID1507._ID23484[var_0] ) )
    {
        if ( _func_02F( var_3 ) )
            thread [[ level._ID1507._ID23484[var_0] ]]( var_1, var_2, var_3 );
        else if ( _func_02F( var_2 ) )
            thread [[ level._ID1507._ID23484[var_0] ]]( var_1, var_2 );
        else if ( _func_02F( var_1 ) )
            thread [[ level._ID1507._ID23484[var_0] ]]( var_1 );
        else
            thread [[ level._ID1507._ID23484[var_0] ]]();
    }
}

_ID22161( var_0, var_1, var_2, var_3, var_4 )
{
    for ( var_5 = 0; var_5 <= var_4; var_5 += 0.05 )
    {
        var_6 = var_5 / var_4;
        self _meth_8020( _ID42407::_ID22382( var_6, var_0, var_2 ), _ID42407::_ID22382( var_6, var_1, var_3 ) );
        waittillframeend;
    }
}

_ID49740()
{
    var_0 = _func_1A2( "emissive_intensity_0", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _meth_83B4( 0.0, 0.0 );
    }

    var_clear_2
    var_clear_0
    var_4 = _func_1A2( "emissive_intensity_25", "targetname" );
    var_5 = var_4;

    for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
    {
        var_2 = var_5[var_6];
        var_2 _meth_83B4( 0.25, 0.0 );
    }

    var_clear_1
    var_clear_0
    var_7 = _func_1A2( "emissive_intensity_50", "targetname" );
    var_8 = var_7;

    for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
    {
        var_2 = var_8[var_9];
        var_2 _meth_83B4( 0.5, 0.0 );
    }

    var_clear_1
    var_clear_0
    var_10 = _func_1A2( "emissive_intensity_75", "targetname" );
    var_11 = var_10;

    for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
    {
        var_2 = var_11[var_12];
        var_2 _meth_83B4( 0.75, 0.0 );
    }

    var_clear_1
    var_clear_0
    var_13 = _func_1A2( "emissive_intensity_100", "targetname" );
    var_14 = var_13;

    for ( var_15 = _func_1DA( var_14 ); _func_02F( var_15 ); var_15 = _func_1BF( var_14, var_15 ) )
    {
        var_2 = var_14[var_15];
        var_2 _meth_83B4( 1.0, 0.0 );
    }

    var_clear_1
    var_clear_0
    var_16 = _func_1A2( "emissive_intensity", "targetname" );
    var_17 = var_16;

    for ( var_19 = _func_1DA( var_17 ); _func_02F( var_19 ); var_19 = _func_1BF( var_17, var_19 ) )
    {
        var_2 = var_17[var_19];
        var_18 = _func_0C2( var_2._ID922 ) * 0.01;
        var_2 _meth_83B4( var_18, 0.0 );
    }

    var_clear_2
    var_clear_0
}

_ID46743()
{
    if ( !level._ID765 )
        return;

    switch ( level._ID912 )
    {

    }

    case "so_ghillies":
    case "trainer":
    case "roadkill":
    case "oilrig":
    case "iw4_credits":
    case "invasion":
    case "favela_escape":
    case "estate":
    case "ending":
    case "development":
    case "dcemp":
    case "dcburning":
    case "dc_whitehouse":
    case "contingency":
    case "co_hunted":
    case "cliffhanger":
    case "boneyard":
    case "arcadia":
    case "airport":
    case "af_chase":
    case "village_defend":
    case "af_caves":
    case "village_assault":
    case "sniperescape":
    case "scoutsniper":
    case "launchfacility_b":
    case "killhouse":
    case "launchfacility_a":
    case "jeepride":
    case "icbm":
    case "coup":
    case "hunted":
    case "cargoship":
    case "bog_b":
    case "bog_a":
    case "armada":
    case "blackout":
    case "airplane":
    case "airlift":
    case "aftermath":
    case "ac130":
    case "gulag":
    case "ambush":
    case "favela":
    default:
}

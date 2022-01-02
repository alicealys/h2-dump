// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID22280()
{
    if ( !isdefined( level._ID1507 ) )
    {
        level._ID1507 = spawnstruct();
        _ID22291();
        _ID22288();
        _ID22289();
        _ID22290();
        _ID22292();
        _ID22282();
        thread _ID19799();
    }

    thread _ID49740();
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
    thread _ID13301( 0, var_1 );

    for ( var_4 = 1; var_4 < var_1._ID38616.size; var_4++ )
        _ID42407::_ID10226( var_1._ID1210[var_4], ::_ID13301, var_4, var_1 );
}

_ID31542( var_0, var_1 )
{
    var_2 = getdvarint( "scr_prim_edit_lights" );
    var_3 = getdvarint( "scr_prim_light_state" );
    var_4 = getdvarint( "scr_prim_light_num" );
    var_5 = var_0._ID20129["curr"];

    while ( var_0._ID20 )
    {
        var_6 = var_0._ID28250["curr"];
        var_7 = var_0._ID10859["curr"];
        var_8 = vectornormalize( anglestoforward( var_0._ID10859["curr"] ) );
        var_9 = var_0._ID28250["curr"];
        var_10 = var_0._ID20129["curr"];
        var_11 = var_0.color["curr"];
        var_12 = var_0._ID20033["curr"];
        var_13 = var_0._ID26049["curr"];
        var_14 = var_0.radius["curr"];
        var_15 = var_0._ID22283;

        if ( isdefined( var_0._ID3553 ) )
        {
            var_19 = var_0._ID3571.origin;
            var_20 = vectornormalize( anglestoforward( var_0._ID3571.angles ) );
            var_21 = vectornormalize( anglestoup( var_0._ID3571.angles ) );
            var_22 = vectornormalize( anglestoright( var_0._ID3571.angles ) );
            var_23 = vectornormalize( var_20 * var_8[0] + var_21 * var_8[2] - var_22 * var_8[1] );
            var_24 = var_20 * var_6[0] + var_21 * var_6[2] - var_22 * var_6[1];
            var_0._ID28547 unlink();
            var_0._ID28547.angles = vectortoangles( var_23 );
            var_0._ID28547.origin = var_19 + var_24;

            if ( isdefined( var_0._ID8199 ) )
            {
                var_25 = var_0._ID8199 gettagorigin( var_0._ID8198 );
                var_0._ID28547.angles = vectortoangles( vectornormalize( var_25 - var_0._ID28547.origin ) );
            }

            if ( isdefined( var_0._ID8200 ) )
                var_0._ID28547.angles = vectortoangles( vectornormalize( var_0._ID8200 - var_0._ID28547.origin ) );

            var_0._ID28547 linkto( var_0._ID3571 );
        }
        else
        {
            var_0._ID28547.angles = var_7;

            if ( isdefined( var_0._ID8199 ) )
            {
                var_25 = var_0._ID8199 gettagorigin( var_0._ID8198 );
                var_0._ID28547.angles = vectortoangles( vectornormalize( var_25 - var_0._ID28547.origin ) );
            }

            if ( isdefined( var_0._ID8200 ) )
                var_0._ID28547.angles = vectortoangles( vectornormalize( var_0._ID8200 - var_0._ID28547.origin ) );

            var_0._ID28547.origin = var_6;
        }

        var_0._ID28547 setlightintensity( var_10 );
        var_0._ID28547 setlightcolor( var_11 );
        var_0._ID28547 setlightfovrange( var_13, var_12 );
        var_0._ID28547 setlightradius( var_14 );
        wait 0.05;
    }
}

_ID13301( var_0, var_1 )
{
    var_2 = var_1._ID38616[var_0] * 20.0;
    var_3 = var_0 - 1;

    for ( var_4 = 0; var_4 < var_2; var_4++ )
    {
        var_5 = float( var_4 ) / var_2;
        var_6 = 1.0 - var_5;
        var_1._ID28250["curr"] = var_1._ID28250[var_0] * var_5 + var_1._ID28250[var_3] * var_6;
        var_1._ID10859["curr"] = var_1._ID10859[var_0] * var_5 + var_1._ID10859[var_3] * var_6;
        var_1._ID20129["curr"] = var_1._ID20129[var_0] * var_5 + var_1._ID20129[var_3] * var_6;
        var_1.color["curr"] = var_1.color[var_0] * var_5 + var_1.color[var_3] * var_6;
        var_1._ID20033["curr"] = var_1._ID20033[var_0] * var_5 + var_1._ID20033[var_3] * var_6;
        var_1._ID26049["curr"] = var_1._ID26049[var_0] * var_5 + var_1._ID26049[var_3] * var_6;
        var_1.radius["curr"] = var_1.radius[var_0] * var_5 + var_1.radius[var_3] * var_6;
        wait 0.05;
    }

    var_1._ID28250["curr"] = var_1._ID28250[var_0];
    var_1._ID10859["curr"] = var_1._ID10859[var_0];
    var_1._ID20129["curr"] = var_1._ID20129[var_0];
    var_1.color["curr"] = var_1.color[var_0];
    var_1._ID20033["curr"] = var_1._ID20033[var_0];
    var_1._ID26049["curr"] = var_1._ID26049[var_0];
    var_1.radius["curr"] = var_1.radius[var_0];
    var_1._ID36185 = var_0;
}

_ID36545( var_0 )
{
    var_1 = level._ID30906[var_0];
    var_1._ID20 = 0;

    if ( isdefined( var_1._ID3553 ) )
    {
        if ( isdefined( var_1._ID28547 ) )
            var_1._ID28547 unlink();
    }
}

_ID33423( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !isdefined( var_3 ) )
        var_3 = ( 0, 0, 0 );

    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 0, 0 );

    if ( !isdefined( var_4 ) )
        var_4 = 5000;

    if ( !isdefined( var_5 ) )
        var_5 = ( 1, 1, 1 );

    if ( !isdefined( var_6 ) )
        var_6 = 60;

    if ( !isdefined( var_7 ) )
        var_7 = 120;

    if ( !isdefined( var_10 ) )
        var_10 = 50;

    var_11 = spawnstruct();
    var_11._ID22283 = var_1;
    var_11._ID1210[0] = 0;
    var_11._ID10859[0] = var_3;
    var_11._ID28250[0] = var_2;
    var_11._ID20 = 1;
    var_11.color[0] = var_5;
    var_11._ID20033[0] = var_6;
    var_11._ID26049[0] = var_7;
    var_11.radius[0] = var_10;
    var_11._ID20129[0] = var_4;
    var_11._ID38616[0] = 0;
    var_11._ID10859["curr"] = var_3;
    var_11._ID28250["curr"] = var_2;
    var_11.color["curr"] = var_5;
    var_11._ID20033["curr"] = var_6;
    var_11._ID26049["curr"] = var_7;
    var_11.radius["curr"] = var_10;
    var_11._ID20129["curr"] = 0.1;
    var_11._ID36185 = -1;
    var_11._ID28547 = getent( var_0, "targetname" );
    var_11._ID3553 = undefined;
    var_11._ID3549 = undefined;
    var_12 = undefined;

    if ( isstring( var_8 ) )
    {
        if ( isstring( var_8 ) )
        {
            var_12 = getent( var_8, "targetname" );
            var_11._ID3553 = var_12;
        }
    }
    else
        var_12 = var_8;

    if ( isdefined( var_12 ) )
    {
        var_11._ID3553 = var_12;

        if ( !isdefined( var_11._ID3553 ) )
            var_11._ID3553 = undefined;

        if ( isdefined( var_9 ) && isdefined( var_11._ID3553 ) )
            var_11._ID3549 = var_9;
        else
            var_11._ID3549 = undefined;

        var_11._ID3571 = _ID42237::_ID35164();

        if ( isdefined( var_9 ) )
        {
            var_11._ID3571.origin = var_12 gettagorigin( var_9 );
            var_11._ID3571 linkto( var_12, var_9, ( 0, 0, 0 ), ( 0, 0, 0 ) );
        }
        else
        {
            var_11._ID3571.origin = var_12.origin;
            var_11._ID3571 linkto( var_12 );
        }

        var_13 = var_11._ID3571.origin;
        var_14 = vectornormalize( anglestoforward( var_11._ID3571.angles ) );
        var_15 = vectornormalize( anglestoup( var_11._ID3571.angles ) );
        var_16 = vectornormalize( anglestoright( var_11._ID3571.angles ) );
        var_17 = vectornormalize( var_14 * var_3[0] + var_15 * var_3[2] - var_16 * var_3[1] );
        var_18 = var_14 * var_2[0] + var_15 * var_2[2] - var_16 * var_2[1];
        var_11._ID28547.angles = vectortoangles( var_17 );
        var_11._ID28547.origin = var_13 + var_18;

        if ( !isdefined( var_11._ID28547._ID22421 ) )
        {
            var_11._ID28547._ID22421 = 1;
            var_11._ID28547 enablelinkto();
        }

        var_11._ID28547 linkto( var_11._ID3571 );
    }
    else
    {
        var_11._ID3553 = undefined;
        var_11._ID3549 = undefined;
    }

    var_19 = 0;

    if ( isdefined( level._ID30906 ) )
        var_19 = level._ID30906.size;

    var_11._ID19286 = var_19;
    level._ID30906[var_19] = var_11;
    thread _ID31542( var_11, var_11._ID19286 );
    return var_11._ID19286;
}

_ID31533( var_0, var_1, var_2, var_3 )
{
    var_4 = level._ID30906[var_0];

    if ( isdefined( var_2 ) )
    {
        var_1 = undefined;

        if ( !isdefined( var_3 ) )
            var_3 = "tag_origin";
    }
    else if ( !isdefined( var_1 ) )
        var_1 = ( 0, 0, 0 );

    level._ID30906[var_0]._ID8198 = var_3;
    level._ID30906[var_0]._ID8200 = var_1;
    level._ID30906[var_0]._ID8199 = var_2;
}

_ID31536( var_0, var_1, var_2, var_3 )
{
    _ID31535( var_0, var_1, undefined, undefined, undefined, var_2, undefined, undefined, undefined, var_3 );
}

_ID31540( var_0, var_1, var_2, var_3 )
{
    _ID31535( var_0, var_1, var_2, undefined, undefined, undefined, undefined, undefined, undefined, var_3 );
}

_ID31538( var_0, var_1, var_2, var_3 )
{
    _ID31535( var_0, var_1, undefined, var_2, undefined, undefined, undefined, undefined, undefined, var_3 );
}

_ID31539( var_0, var_1, var_2, var_3 )
{
    _ID31535( var_0, var_1, undefined, var_2, undefined, undefined, undefined, undefined, undefined, var_3 );
}

_ID31537( var_0, var_1, var_2, var_3, var_4 )
{
    _ID31535( var_0, var_1, undefined, undefined, undefined, var_2, var_3, undefined, undefined, var_4 );
}

_ID31541( var_0, var_1, var_2, var_3 )
{
    _ID31535( var_0, var_1, undefined, undefined, undefined, undefined, undefined, undefined, var_2, var_3 );
}

_ID31535( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = level._ID30906[var_0];
    var_11 = var_10._ID1210.size;

    if ( !isdefined( var_3 ) )
        var_3 = var_10._ID10859[var_11 - 1];

    if ( !isdefined( var_2 ) )
        var_2 = var_10._ID28250[var_11 - 1];

    if ( !isdefined( var_4 ) )
        var_4 = var_10._ID20129[var_11 - 1];

    if ( !isdefined( var_5 ) )
        var_5 = var_10.color[var_11 - 1];

    if ( !isdefined( var_6 ) )
        var_6 = var_10._ID20033[var_11 - 1];

    if ( !isdefined( var_7 ) )
        var_7 = var_10._ID26049[var_11 - 1];

    if ( !isdefined( var_8 ) )
        var_8 = var_10.radius[var_11 - 1];

    var_10._ID1210[var_11] = var_1;
    var_10._ID28250[var_11] = var_2;
    var_10._ID10859[var_11] = var_3;
    var_10._ID20129[var_11] = var_4;
    var_10.color[var_11] = var_5;
    var_10._ID20033[var_11] = var_6;
    var_10._ID26049[var_11] = var_7;
    var_10.radius[var_11] = var_8;
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

    if ( !isdefined( var_9 ) )
        var_9 = 0.1;

    if ( !isdefined( var_10 ) )
        var_10 = 1.0;

    if ( !isdefined( var_6 ) )
        var_6 = ( 0, 0, 0 );

    if ( !isdefined( var_7 ) )
        var_7 = ( 0, 0, 0 );

    self endon( "death" );

    if ( isdefined( var_11 ) )
        level endon( var_11 );

    var_12 = getentarray( var_1, "targetname" );

    foreach ( var_14 in var_12 )
    {
        if ( !isdefined( var_14.target ) )
            continue;

        var_14._ID3189 = var_2;
        var_14 _ID42259::_ID32556();
        var_14 thread _ID42259::_ID3044( var_14, var_3, undefined, var_4 );
        var_15 = getent( var_14.target, "targetname" );
        var_16 = _ID42237::_ID35164();
        var_16 linkto( var_14, var_5, var_6, var_7 );
        var_15 thread _ID42407::_ID22901( var_16 );

        if ( isdefined( var_8 ) )
        {
            foreach ( var_18 in var_8 )
                playfxontag( level._ID1426[var_18], var_14, var_5 );
        }

        wait(randomfloatrange( var_9, var_10 ));
    }
}

_ID22291()
{
    if ( _func_242() )
    {
        setsaveddvar( "r_veil", 1 );
        setsaveddvar( "r_veilStrength", 0.087 );
        setsaveddvar( "r_tonemap", 2 );
        setsaveddvar( "r_tonemapBlack", 0.0 );
        setsaveddvar( "r_tonemapCrossover", 1.0 );
        setsaveddvar( "r_tonemapHighlightRange", 16.0 );
        setsaveddvar( "r_tonemapDarkEv", 2.84 );
        setsaveddvar( "r_tonemapMidEv", 7.823 );
        setsaveddvar( "r_tonemapLightEv", 12.81 );
        setsaveddvar( "r_tonemapDarkExposureAdjust", -3.17 );
        setsaveddvar( "r_tonemapMidExposureAdjust", -0.0651 );
        setsaveddvar( "r_tonemapLightExposureAdjust", 1.47 );
        setsaveddvar( "r_tonemapMinExposureAdjust", -3.17 );
        setsaveddvar( "r_tonemapMaxExposureAdjust", 2.3 );

        if ( level._ID844 )
            setsaveddvar( "r_tonemapShoulder", 0.4 );
        else
            setsaveddvar( "r_tonemapShoulder", 0.94 );

        setsaveddvar( "r_tonemapToe", 0.0 );
        setsaveddvar( "r_tonemapWhite", 512 );
        setsaveddvar( "r_tonemapAdaptSpeed", 0.02 );
        setsaveddvar( "r_tonemapLockAutoExposureAdjust", 0 );
        setsaveddvar( "r_tonemapAutoExposureAdjust", 0.0 );
        setsaveddvar( "r_tonemapExposure", -10.0 );
        setsaveddvar( "r_tonemapMaxExposure", -10.0 );
    }

    if ( _func_243() )
    {
        setsaveddvar( "r_ssaoPower", 12.0 );
        setsaveddvar( "r_ssaoStrength", 0.45 );
        setsaveddvar( "r_ssaominstrengthdepth", 25.0 );
        setsaveddvar( "r_ssaomaxstrengthdepth", 40.0 );
    }

    _ID46743();
}

_ID31004( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = newclienthudelem( level.player );
    var_8.x = 0;
    var_8.y = 0;
    var_8._ID998 = 1;
    var_8.alignx = "left";
    var_8.aligny = "top";
    var_8.sort = 1;
    var_8.foreground = 0;
    var_8.horzalign = "fullscreen";
    var_8.vertalign = "fullscreen";
    var_8.alpha = var_4;
    var_8 thread _ID7805();

    if ( isdefined( var_5 ) )
        var_8.x = var_5;

    if ( isdefined( var_6 ) )
        var_8.y = var_6;

    if ( isdefined( var_7 ) )
        var_8.sort = var_7;

    if ( isarray( var_1 ) )
    {
        foreach ( var_10 in var_1 )
            var_8 setshader( var_10, 640, 480 );
    }
    else
        var_8 setshader( var_1, 640, 480 );

    if ( var_0 > 0 )
    {
        var_8.alpha = 0;
        var_12 = 1;

        if ( isdefined( var_2 ) )
            var_12 = var_2;

        var_13 = 1;

        if ( isdefined( var_3 ) )
            var_13 = var_3;

        var_14 = 1;

        if ( isdefined( var_4 ) )
            var_14 = clamp( var_4, 0.0, 1.0 );

        var_15 = 0.05;

        if ( var_12 > 0 )
        {
            var_16 = 0;
            var_17 = var_14 / ( var_12 / var_15 );

            while ( var_16 < var_14 )
            {
                var_8.alpha = var_16;
                var_16 += var_17;
                wait(var_15);
            }
        }

        var_8.alpha = var_14;
        wait(var_0 - var_12 + var_13);

        if ( var_13 > 0 )
        {
            var_16 = var_14;
            var_18 = var_14 / ( var_13 / var_15 );

            while ( var_16 > 0 )
            {
                var_8.alpha = var_16;
                var_16 -= var_18;
                wait(var_15);
            }
        }

        var_8.alpha = 0;
        var_8 destroy();
    }

    level._ID26105 = var_8;
    return level._ID26105;
}

_ID7805()
{
    level waittill( "end_screen_effect" );
    self destroy();
}

_ID5306()
{

}

_ID10866()
{
    var_0 = newclienthudelem( level.player );
    var_0.x = 0;
    var_0.y = 0;
    var_0 setshader( "fullscreen_dirt_bottom", 640, 480 );
    var_0 setshader( "fullscreen_dirt_bottom_b", 640, 480 );
    var_0 setshader( "fullscreen_dirt_left", 640, 480 );
    var_0 setshader( "fullscreen_dirt_right", 640, 480 );
    var_0._ID998 = 1;
    var_0.alignx = "left";
    var_0.aligny = "top";
    var_0.sort = 1;
    var_0.foreground = 0;
    var_0.horzalign = "fullscreen";
    var_0.vertalign = "fullscreen";
    var_0.alpha = 1;
    var_0 fadeovertime( 3 );
    var_0.alpha = 0;
}

_ID5388( var_0 )
{
    self endon( "stop_mask_bob" );
    var_1 = 0;
    var_2 = level.player getplayerangles();
    var_3 = 0;
    var_4 = 0;
    var_5 = var_0.y;
    var_6 = var_0.x;
    var_7 = 0.05;

    for (;;)
    {
        if ( isdefined( var_0 ) )
        {
            var_8 = level.player getplayerangles();
            var_9 = level.player getvelocity();
            var_10 = var_9[2];
            var_9 -= var_9 * ( 0, 0, 1 );
            var_11 = length( var_9 );
            var_12 = level.player getstance();
            var_13 = clamp( var_11, 0, 280 ) / 280;
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
            var_19 = level.player playerads();
            var_20 = var_17 * ( 1.0 - var_19 ) + var_18 * var_19;
            var_20 *= ( 1 + var_13 * 2 );
            var_21 = 5;
            var_22 = var_21 * var_14 * var_16;
            var_23 = var_21 * var_15 * var_16;
            var_1 += var_7 * 1000.0 * var_20;
            var_24 = 57.2958;
            var_25 = sin( var_1 * 0.001 * var_24 );
            var_26 = sin( var_1 * 0.0007 * var_24 );
            var_27 = angleclamp180( var_8[1] - var_2[1] );
            var_27 = clamp( var_27, -10, 10 );
            var_28 = var_27 / 10 * var_21 * ( 1 - var_14 );
            var_29 = var_28 - var_4;
            var_4 += clamp( var_29, -1.0, 1.0 );
            var_30 = clamp( var_10, -200, 200 ) / 200 * var_21 * ( 1 - var_15 );
            var_31 = var_30 - var_3;
            var_3 += clamp( var_31, -0.6, 0.6 );
            var_0 moveovertime( 0.05 );
            var_0.x = var_6 + clamp( var_25 * var_22 + var_4 - var_21, 0 - 2 * var_21, 0 );
            var_0.y = var_5 + clamp( var_26 * var_23 + var_3 - var_21, 0 - 2 * var_21, 0 );
            var_2 = var_8;
        }

        wait(var_7);
    }
}

_ID15404( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 0.25;

    if ( var_0 )
        _ID42313::_ID13798( var_1 );

    self._ID15399 = newclienthudelem( self );
    self._ID15399.x = 0;
    self._ID15399.y = 0;
    self._ID15399.horzalign = "fullscreen";
    self._ID15399.vertalign = "fullscreen";
    self._ID15399.foreground = 0;
    self._ID15399.sort = -1;
    self._ID15399 setshader( "gasmask_overlay_delta2_top", 650, 138 );
    self._ID15399.alpha = 1.0;
    self._ID15400 = newclienthudelem( self );
    self._ID15400.x = 0;
    self._ID15400.y = 352;
    self._ID15400.horzalign = "fullscreen";
    self._ID15400.vertalign = "fullscreen";
    self._ID15400.foreground = 0;
    self._ID15400.sort = -1;
    self._ID15400 setshader( "gasmask_overlay_delta2_bottom", 650, 138 );
    self._ID15400.alpha = 1.0;
    level.player _ID42407::_ID10226( 1.0, ::_ID15398 );
    thread _ID5388( self._ID15399 );
    thread _ID5388( self._ID15400 );

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

    if ( isdefined( self._ID15399 ) )
    {
        self._ID15399 destroy();
        self._ID15399 = undefined;
    }

    if ( isdefined( self._ID15400 ) )
    {
        self._ID15400 destroy();
        self._ID15400 = undefined;
    }

    level.player notify( "stop_breathing" );
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
    self._ID15397 = spawn( "script_model", ( 0, 0, 0 ) );
    self._ID15397 setmodel( "prop_sas_gasmask" );
    self._ID15397 linkto( self, "tag_eye", ( -4, 0, 2 ), ( 120, 0, 0 ) );
}

_ID15401()
{
    if ( isdefined( self._ID15397 ) )
        self._ID15397 delete();
}

_ID22290()
{
    _ID9143( "fire", ( 0.972549, 0.62451, 0.345098 ), ( 0.2, 0.146275, 0.0878432 ), 0.005, 0.2, 8 );
    _ID9143( "blue_fire", ( 0.445098, 0.62451, 0.972549 ), ( 0.05, 0.150451, 0.307843 ), 0.005, 0.2, 8 );
    _ID9143( "white_fire", ( 0.972549, 0.972549, 0.972549 ), ( 0.2, 0.2, 0.2 ), 0.005, 0.2, 8 );
    _ID9143( "white_fire_dim", ( 0.972549, 0.972549, 0.972549 ), ( 0.2, 0.2, 0.2 ), 0.005, 0.2, 0.5 );
    _ID9143( "street_light", ( 0.972549, 0.972549, 0.972549 ), ( 0.572549, 0.572549, 0.572549 ), 0.005, 0.2, 8 );
    _ID9143( "pulse", ( 0, 0, 0 ), ( 255, 107, 107 ), 0.2, 1, 8 );
    _ID9143( "lightbulb", ( 0.972549, 0.62451, 0.345098 ), ( 0.2, 0.146275, 0.0878432 ), 0.005, 0.2, 6 );
    _ID9143( "fluorescent", ( 0.972549, 0.62451, 0.345098 ), ( 0.2, 0.146275, 0.0878432 ), 0.005, 0.2, 7 );
    _ID9143( "static_screen", ( 0.63, 0.72, 0.92 ), ( 0.4, 0.43, 0.48 ), 0.005, 0.2, 7 );
    _ID9143( "sfb_fire", ( 1, 0.65, 0.8 ), ( 0.4, 0.24, 0.3 ), 0.005, 0.2, 8 );
}

_ID9142( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID1507._ID14550 ) )
        level._ID1507._ID14550 = [];

    var_6 = spawnstruct();
    var_6.color = var_1;
    var_6._ID20129 = var_2;
    var_6._ID23110 = var_3;
    var_6._ID23621 = var_4;
    var_6._ID23087 = var_5;
    level._ID1507._ID14550[var_0] = var_6;
}

_ID15732( var_0 )
{
    if ( isdefined( level._ID1507._ID14550 ) && isdefined( level._ID1507._ID14550[var_0] ) )
        return level._ID1507._ID14550[var_0];

    return undefined;
}

_ID26957( var_0, var_1 )
{
    var_2 = getentarray( var_1, "targetname" );

    if ( !isdefined( var_2 ) || var_2.size <= 0 )
        return;

    var_3 = _ID15732( var_0 );

    if ( !isdefined( var_3 ) )
        return;

    foreach ( var_5 in var_2 )
    {
        var_5 setlightintensity( var_3._ID20129 );
        var_5._ID20810 = 1;
        var_5._ID20811 = 0;
        var_5 thread _ID12251( var_3.color, var_3._ID20129, var_3._ID23110, var_3._ID23621, var_3._ID23087 );
    }

    return var_2;
}

_ID9143( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID1507._ID14551 ) )
        level._ID1507._ID14551 = [];

    var_6 = spawnstruct();
    var_6._ID8263 = var_1;
    var_6._ID8265 = var_2;
    var_6._ID23621 = var_3;
    var_6._ID23087 = var_4;
    var_6._ID20129 = var_5;
    level._ID1507._ID14551[var_0] = var_6;
}

_ID15733( var_0 )
{
    if ( isdefined( level._ID1507._ID14551 ) && isdefined( level._ID1507._ID14551[var_0] ) )
        return level._ID1507._ID14551[var_0];

    return undefined;
}

_ID26958( var_0, var_1, var_2 )
{
    var_3 = getent( var_1, "targetname" );

    if ( !isdefined( var_3 ) )
        return;

    var_4 = _ID15733( var_0 );

    if ( !isdefined( var_4 ) )
        return;

    if ( isdefined( var_2 ) )
    {
        if ( var_2 < 0 )
            var_2 = 0;

        var_4._ID20129 = var_2;
    }

    var_3 setlightintensity( var_4._ID20129 );
    var_3._ID20810 = 1;
    var_3._ID20811 = 0;
    var_3 thread _ID12250( var_4._ID8263, var_4._ID8265, var_4._ID23621, var_4._ID23087 );
    return var_3;
}

_ID36494( var_0, var_1, var_2 )
{
    var_3 = getent( var_1, "targetname" );

    if ( !isdefined( var_3 ) )
        return;

    if ( !isdefined( var_3._ID20810 ) )
        return;

    if ( isdefined( var_2 ) )
    {
        if ( var_2 < 0 )
            var_2 = 0;
    }

    var_3 setlightintensity( var_2 );
    var_3 notify( "kill_flicker" );
    var_3._ID20810 = undefined;
}

_ID26399( var_0, var_1 )
{
    var_2 = getent( var_1, "targetname" );

    if ( !isdefined( var_2 ) )
        return;

    if ( !isdefined( var_2._ID20810 ) )
        return;

    var_2._ID20811 = 1;
}

_ID39513( var_0, var_1 )
{
    var_2 = getent( var_1, "targetname" );

    if ( !isdefined( var_2 ) )
        return;

    if ( !isdefined( var_2._ID20810 ) )
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
        var_4 = var_0 + ( var_1 - var_0 ) * randomfloat( 1.0 );

        if ( var_2 != var_3 )
            var_5 += randomfloatrange( var_2, var_3 );
        else
            var_5 += var_2;

        if ( var_5 == 0 )
            var_5 += 1e-07;

        for ( var_7 = ( var_6 - var_4 ) * 1 / var_5; var_5 > 0 && !self._ID20811; var_5 -= 0.05 )
        {
            self setlightcolor( var_4 + var_7 * var_5 );
            wait 0.05;
        }
    }
}

_ID12251( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "kill_flicker" );
    self setlightcolor( var_0 );
    self setlightintensity( var_1 );
    thread _ID14262();
    var_5 = self.origin;
    var_6 = var_2;
    var_7 = var_2;
    var_8 = var_2;
    var_9 = var_3;
    var_10 = var_4;

    for (;;)
    {
        var_11 = randomfloatrange( var_9, var_10 );
        var_12 = var_6 * randomfloatrange( 0.1, 1 );
        var_13 = var_7 * randomfloatrange( 0.1, 1 );
        var_14 = var_8 * randomfloatrange( 0.1, 1 );
        var_15 = var_5 + ( var_12, var_13, var_14 );
        self moveto( var_15, var_11 );
        wait(var_11);

        while ( self._ID20811 )
            wait 0.05;
    }
}

_ID14262()
{
    var_0 = self getlightintensity();
    self endon( "kill_flicker" );
    var_1 = var_0;

    for (;;)
    {
        var_2 = randomfloatrange( var_0 * 0.5, var_0 * 1.2 );
        var_3 = randomfloatrange( 0.2, 1.0 );
        var_3 *= 0.75;

        while ( self._ID20811 )
            wait 0.05;

        for ( var_4 = 0; var_4 < var_3; var_4++ )
        {
            var_5 = var_2 * var_4 / var_3 + var_1 * ( var_3 - var_4 ) / var_3;
            self setlightintensity( var_5 );
            wait 0.05;
        }

        var_1 = var_2;
    }
}

_ID9161( var_0, var_1 )
{
    var_2 = spawnstruct();
    var_3 = getentarray( var_0, "script_noteworthy" );
    var_2._ID22298 = [];
    var_2._ID23877 = [];

    foreach ( var_5 in var_3 )
    {
        if ( var_5.classname == "script_model" )
            var_2._ID23877[var_2._ID23877.size] = var_5;

        if ( var_5.classname == "light_spot" )
            var_2._ID22298[var_2._ID22298.size] = var_5;
    }

    var_2._ID15275 = var_1;
    return var_2;
}

_ID22284( var_0, var_1, var_2 )
{
    foreach ( var_4 in self._ID22298 )
    {
        var_4 setlightintensity( var_0 );
        var_4 setlightcolor( var_1 );
    }

    if ( var_2 && !isdefined( self._ID41407 ) )
    {
        _ID42234::_ID13611( self._ID15275 );

        foreach ( var_7 in self._ID23877 )
            var_7 show();

        self._ID41407 = 1;
    }
    else if ( isdefined( self._ID41407 ) && !var_2 )
    {
        _ID42407::_ID36481( self._ID15275 );

        foreach ( var_7 in self._ID23877 )
            var_7 hide();

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
        var_7 = randomfloat( 1.0 );

        if ( var_5 != var_6 )
            var_8 += randomfloatrange( var_5, var_6 );
        else
            var_8 += var_6;

        if ( var_8 == 0 )
            var_8 += 1e-07;

        for ( var_10 = ( var_7 - var_9 ) / var_8; var_8 > 0; var_8 -= 0.05 )
        {
            var_11 = var_7 - var_8 * var_10;
            var_12 = vectorlerp( var_1, var_3, var_11 );
            var_13 = _ID42407::_ID22382( var_11, var_2, var_4 );
            var_14 = var_11 > 0.5;
            var_0 _ID22284( var_13, var_12, var_14 );
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
        var_8 = clamp( perlinnoise2d( gettime() * 0.001 * var_5, 0, var_6, 2, var_7 ), 0, 1 );
        var_9 = vectorlerp( var_1, var_3, var_8 );
        var_10 = _ID42407::_ID22382( var_8, var_2, var_4 );
        var_11 = var_8 > 0.5;
        var_0 _ID22284( var_10, var_9, var_11 );
        wait 0.05;
    }
}

_ID22179( var_0, var_1, var_2 )
{
    var_3 = getent( var_0, "targetname" );

    if ( level._ID227 && isdefined( var_3 ) == 0 )
        return;

    var_4 = var_3 getlightintensity();
    var_3._ID12725 = var_2;
    var_5 = 0;

    while ( var_5 < var_1 )
    {
        var_6 = var_4 + ( var_2 - var_4 ) * var_5 / var_1;
        var_5 += 0.05;
        var_3 setlightintensity( var_6 );
        wait 0.05;
    }

    var_3 setlightintensity( var_2 );
}

_ID22180( var_0, var_1, var_2 )
{
    var_3 = getentarray( var_0, "targetname" );

    foreach ( var_5 in var_3 )
    {
        var_6 = var_5 getlightintensity();
        var_5._ID12725 = var_2;
        var_7 = 0;

        while ( var_7 < var_1 )
        {
            var_8 = var_6 + ( var_2 - var_6 ) * var_7 / var_1;
            var_7 += 0.05;
            var_5 setlightintensity( var_8 );
            wait 0.05;
        }

        var_5 setlightintensity( var_2 );
    }
}

_ID22181( var_0, var_1, var_2 )
{
    var_3 = getent( var_0, "targetname" );

    if ( level._ID227 && isdefined( var_3 ) == 0 )
        return;

    var_4 = var_3 getlightradius();
    var_3._ID12737 = var_2;
    var_5 = 0;

    while ( var_5 < var_1 )
    {
        var_6 = var_4 + ( var_2 - var_4 ) * var_5 / var_1;
        var_5 += 0.05;
        var_3 setlightradius( var_6 );
        wait 0.05;
    }

    var_3 setlightradius( var_2 );
}

_ID32449( var_0, var_1 )
{
    var_2 = getent( var_0, "targetname" );

    if ( level._ID227 && isdefined( var_2 ) == 0 )
        return;

    var_2 setlightintensity( var_1 );
}

_ID22178( var_0, var_1, var_2 )
{
    var_3 = getent( var_0, "targetname" );

    if ( level._ID227 && isdefined( var_3 ) == 0 )
        return;

    var_4 = var_3 getlightcolor();
    var_3._ID12634 = var_2;
    var_5 = 0;

    while ( var_5 < var_1 )
    {
        var_6 = var_4 + ( var_2 - var_4 ) * var_5 / var_1;
        var_5 += 0.05;
        var_3 setlightcolor( var_6 );
        wait 0.05;
    }

    var_3 setlightcolor( var_2 );
}

_ID32448( var_0, var_1 )
{
    var_2 = getent( var_0, "targetname" );
    var_2 setlightcolor( var_1 );
}

_ID22292()
{
    _ID9174( "red", 0.1, 0.1, 10000, ( 1, 0.2, 0.2 ), 2 );
    _ID9174( "red2", 0.1, 0.1, 68200000, ( 1, 0.2, 0.2 ), 2 );
    _ID9174( "yellow", 0.1, 0.1, 68200000, ( 1, 0.7, 0.2 ), 2 );
    _ID9174( "white", 0.1, 0.1, 68200000, ( 1, 1, 1 ), 2 );
    _ID9174( "turbine_pulse", 0.1, 0.1, 10000, ( 0.9, 0.9, 1 ), 2 );
}

_ID9174( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID1507._ID28755 ) )
        level._ID1507._ID28755 = [];

    var_6 = spawnstruct();
    var_6._ID38674 = var_1;
    var_6._ID38673 = var_2;
    var_6._ID20129 = var_3;
    var_6._ID8264 = var_4;
    var_6._ID25216 = var_5;
    level._ID1507._ID28755[var_0] = var_6;
}

_ID15938( var_0 )
{
    if ( isdefined( level._ID1507._ID28755 ) && isdefined( level._ID1507._ID28755[var_0] ) )
        return level._ID1507._ID28755[var_0];

    return undefined;
}

_ID27032( var_0, var_1, var_2, var_3 )
{
    var_4 = var_0 + var_1 + "_pulse";
    level notify( var_4 );
    level endon( var_4 );
    var_5 = getent( var_1, "targetname" );

    if ( !isdefined( var_5 ) )
        return;

    var_6 = _ID15938( var_0 );

    if ( !isdefined( var_6 ) )
        return;

    if ( isdefined( var_2 ) )
    {
        if ( var_2 < 0 )
            var_2 = 0;

        var_6._ID20129 = var_2;
    }

    var_5 setlightintensity( var_6._ID20129 );
    var_5 setlightcolor( var_6._ID8264 );
    var_7 = var_6._ID25216;
    var_8 = var_5 getlightintensity();
    var_9 = 0.05;
    var_10 = var_8;
    var_11 = var_6._ID38674;
    var_12 = var_6._ID38673;
    var_13 = ( var_8 - var_9 ) / ( var_11 / 0.05 );
    var_14 = ( var_8 - var_9 ) / ( var_12 / 0.05 );
    var_15 = var_6._ID25216;

    for (;;)
    {
        var_16 = 1;
        var_17 = 0;

        while ( var_17 < var_12 )
        {
            var_10 -= var_14;
            var_10 = clamp( var_10, 0, 1000000000 );
            var_5 setlightintensity( var_10 );
            var_17 += 0.05;
            wait 0.05;
        }

        if ( isdefined( var_3 ) )
            _ID42407::_ID36481( var_3 );

        wait 0.8;
        var_17 = 0;

        while ( var_17 < var_11 )
        {
            var_10 += var_13;
            var_10 = clamp( var_10, 0, 1000000000 );
            var_5 setlightintensity( var_10 );
            var_17 += 0.05;
            wait 0.05;
        }

        if ( isdefined( var_3 ) )
            _ID42234::_ID13611( var_3 );

        wait 0.1;

        while ( var_16 < var_15 )
        {
            var_17 = 0;

            while ( var_17 < var_12 )
            {
                var_10 -= var_14;
                var_10 = clamp( var_10, 0, 300000 );
                var_5 setlightintensity( var_10 );
                var_17 += 0.05;
                wait 0.05;
            }

            wait 0.1;
            var_17 = 0;

            while ( var_17 < var_11 )
            {
                var_10 += var_13;
                var_10 = clamp( var_10, 0, 300000 );
                var_5 setlightintensity( var_10 );
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

    if ( isdefined( var_10 ) )
        level endon( var_10 );

    var_13 = getentarray( var_0, "script_noteworthy" );

    if ( !isdefined( var_13 ) )
        return;

    var_14 = [];
    var_15 = [];

    foreach ( var_17 in var_13 )
    {
        if ( var_17.classname == "script_model" )
            var_15[var_15.size] = var_17;

        if ( var_17.classname == "light_spot" || var_17.classname == "light_omni" )
        {
            var_14[var_14.size] = var_17;
            var_18 = var_2;

            if ( var_3 > var_2 )
                var_18 = randomfloatrange( var_2, var_3 );

            var_17 setlightintensity( var_18 );
        }
    }

    var_20 = 0;
    var_21 = undefined;
    var_22 = undefined;
    var_23 = undefined;
    var_24 = undefined;
    var_25 = undefined;
    var_26 = 1;

    if ( isarray( var_11 ) )
    {
        var_21 = var_11["on"];
        var_22 = var_11["off"];
        var_23 = var_11["loop"];
        var_25 = var_11["vol_env"];

        if ( isstring( var_23 ) )
            var_24 = "model_flicker_preset_" + _ID42475::_ID34587();
    }

    var_27 = 0;

    if ( isdefined( var_4 ) )
        _ID42234::_ID13611( var_4 );

    while ( var_27 < var_1 || var_1 == 0 )
    {
        var_28 = undefined;

        if ( isdefined( var_12 ) )
            var_29 = var_12;
        else
            var_29 = 0.05;

        var_30 = 0.0;

        if ( isdefined( var_6 ) && isdefined( var_7 ) )
            var_31 = randomfloatrange( var_6, var_7 );
        else
            var_31 = randomfloatrange( 0.1, 0.8 );

        if ( isdefined( var_8 ) && isdefined( var_9 ) )
            var_32 = randomfloatrange( var_8, var_9 );
        else
            var_32 = randomfloatrange( 0.1, 0.8 );

        foreach ( var_34 in var_14 )
        {
            if ( var_20 )
            {
                if ( isstring( var_24 ) )
                    level notify( var_24 );

                if ( isdefined( var_22 ) )
                    var_34 _ID42494::_ID34619( var_22, undefined, undefined, undefined, var_26 );

                var_20 = 0;
            }
        }

        if ( isdefined( var_5 ) )
            _ID42407::_ID36481( var_5 );

        foreach ( var_37 in var_15 )
            var_37 hide();

        foreach ( var_40 in var_14 )
        {
            var_28 = var_40 getlightintensity();
            var_40 setlightintensity( var_29 );
        }

        wait(var_32);

        foreach ( var_34 in var_14 )
        {
            var_18 = var_2;

            if ( var_3 > var_2 )
                var_18 = randomfloatrange( var_2, var_3 );

            var_34 setlightintensity( var_18 );

            if ( isdefined( var_21 ) && !var_20 )
            {
                if ( isarray( var_25 ) )
                    var_26 = _ID42475::_ID34571( var_18, var_25 );

                if ( isdefined( var_21 ) )
                    var_34 _ID42494::_ID34619( var_21, undefined, undefined, undefined, var_26 );

                if ( isdefined( var_23 ) )
                    var_34 _ID42494::_ID34629( var_23, var_24, 0.0, 0.1, var_26 );

                var_20 = 1;
            }
        }

        if ( isdefined( var_5 ) )
            _ID42234::_ID13611( var_5 );

        foreach ( var_37 in var_15 )
            var_37 show();

        foreach ( var_40 in var_14 )
            var_40 setlightintensity( var_28 );

        wait(var_31);

        if ( var_1 != 0 )
            var_27++;
    }
}

_ID22288()
{
    _ID9134( "default", 1, 1, 4.5, 500, 500, 0.05, 0.5 );
    _ID9134( "viewmodel_blur", 1, 1, 4.5, 500, 500, 0.05, 0.5 );
    _ID9134( "close_none_viewmodel_blur", 1, 50, 4, 1000, 7000, 0.05, 0.5 );
    _ID9134( "river", 1, 104, 4.5, 500, 500, 1.8, 0.5 );
    _ID9134( "medium_none_viewmodel_blur", 1, 500, 10, 1000, 7000, 0.05, 0.5 );
}

_ID9134( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !isdefined( level._ID1507._ID11369 ) )
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
    if ( isdefined( level._ID1507._ID11369 ) && isdefined( level._ID1507._ID11369[var_0] ) )
        return level._ID1507._ID11369[var_0];
}

_ID5275( var_0, var_1, var_2 )
{
    if ( isdefined( level._ID1507._ID11369 ) )
    {
        var_3 = _ID22278( var_0 );
        var_4 = _ID22278( var_1 );

        if ( isdefined( var_3 ) && isdefined( var_4 ) )
            _ID42262::_ID11342( var_4["nearStart"], var_4["nearEnd"], var_4["nearBlur"], var_4["farStart"], var_4["farEnd"], var_4["farBlur"], var_2, var_4["bias"] );
        else
        {

        }
    }
}

_ID22289()
{
    _ID9135( "default", 2, 8 );
    _ID9135( "viewmodel_blur", 10, 90 );
    _ID9135( "max", 2, 128 );
}

_ID9135( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID1507._ID11388 ) )
        level._ID1507._ID11388 = [];

    var_3["start"] = var_1;
    var_3["end"] = var_2;
    level.player._ID40477 = var_3["start"];
    level.player._ID40476 = var_3["end"];
    level._ID1507._ID11388[var_0] = var_3;
}

_ID22279( var_0 )
{
    if ( isdefined( level._ID1507._ID11388 ) && isdefined( level._ID1507._ID11388[var_0] ) )
        return level._ID1507._ID11388[var_0];
}

_ID5276( var_0, var_1, var_2 )
{
    if ( isdefined( level._ID1507._ID11388 ) )
    {
        var_3 = _ID22279( var_0 );
        var_4 = _ID22279( var_1 );

        if ( isdefined( var_3 ) && isdefined( var_4 ) )
            _ID5283( var_3, var_4, var_2 );
        else
        {

        }
    }
}

_ID5283( var_0, var_1, var_2 )
{
    if ( var_2 > 0 )
    {
        var_3 = ( var_1["start"] - var_0["start"] ) * 0.05 / var_2;
        var_4 = ( var_1["end"] - var_0["end"] ) * 0.05 / var_2;
        thread _ID22193( var_1, var_3, var_4 );
    }
    else
    {
        level.player._ID40477 = var_1["start"];
        level.player._ID40476 = var_1["end"];
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
            level.player._ID40477 = level.player._ID40477 + var_1;

            if ( var_1 > 0 && level.player._ID40477 > var_0["start"] || var_1 < 0 && level.player._ID40477 < var_0["start"] )
            {
                level.player._ID40477 = var_0["start"];
                var_3 = 1;
            }
        }

        if ( !var_4 )
        {
            level.player._ID40476 = level.player._ID40476 + var_2;

            if ( var_2 > 0 && level.player._ID40476 > var_0["end"] || var_2 < 0 && level.player._ID40476 < var_0["end"] )
            {
                level.player._ID40476 = var_0["end"];
                var_4 = 1;
            }
        }

        level.player setviewmodeldepthoffield( level.player._ID40477, level.player._ID40476 );
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
    if ( isdefined( level._ID1507._ID23484[var_0] ) )
    {
        if ( isdefined( var_3 ) )
            thread [[ level._ID1507._ID23484[var_0] ]]( var_1, var_2, var_3 );
        else if ( isdefined( var_2 ) )
            thread [[ level._ID1507._ID23484[var_0] ]]( var_1, var_2 );
        else if ( isdefined( var_1 ) )
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
        self setlightfovrange( _ID42407::_ID22382( var_6, var_0, var_2 ), _ID42407::_ID22382( var_6, var_1, var_3 ) );
        waittillframeend;
    }
}

_ID49740()
{
    var_0 = getentarray( "emissive_intensity_0", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 _meth_83b4( 0.0, 0.0 );

    var_4 = getentarray( "emissive_intensity_25", "targetname" );

    foreach ( var_2 in var_4 )
        var_2 _meth_83b4( 0.25, 0.0 );

    var_7 = getentarray( "emissive_intensity_50", "targetname" );

    foreach ( var_2 in var_7 )
        var_2 _meth_83b4( 0.5, 0.0 );

    var_10 = getentarray( "emissive_intensity_75", "targetname" );

    foreach ( var_2 in var_10 )
        var_2 _meth_83b4( 0.75, 0.0 );

    var_13 = getentarray( "emissive_intensity_100", "targetname" );

    foreach ( var_2 in var_13 )
        var_2 _meth_83b4( 1.0, 0.0 );

    var_16 = getentarray( "emissive_intensity", "targetname" );

    foreach ( var_2 in var_16 )
    {
        var_18 = float( var_2.script_noteworthy ) * 0.01;
        var_2 _meth_83b4( var_18, 0.0 );
    }
}

_ID46743()
{
    if ( !level._ID765 )
        return;

    switch ( level.script )
    {
        case "airlift":
        case "armada":
        case "cargoship":
        case "coup":
        case "jeepride":
        case "killhouse":
            setsaveddvar( "r_hbaoStrengthScale", 0.2 );
            break;
        case "ambush":
        case "ac130":
        case "aftermath":
        case "airplane":
        case "blackout":
        case "bog_a":
        case "bog_b":
        case "hunted":
        case "icbm":
        case "launchfacility_a":
        case "launchfacility_b":
        case "scoutsniper":
        case "sniperescape":
        case "village_assault":
        case "village_defend":
            setsaveddvar( "r_hbaoStrengthScale", 0.2 );
            break;
        case "favela":
        case "gulag":
        case "af_caves":
        case "af_chase":
        case "airport":
        case "arcadia":
        case "boneyard":
        case "cliffhanger":
        case "co_hunted":
        case "contingency":
        case "dc_whitehouse":
        case "dcburning":
        case "dcemp":
        case "development":
        case "ending":
        case "estate":
        case "favela_escape":
        case "invasion":
        case "iw4_credits":
        case "oilrig":
        case "roadkill":
        case "trainer":
        case "so_ghillies":
            setsaveddvar( "r_hbaoStrengthScale", 0.2 );
            break;
        default:
            break;
    }
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19881( var_0 )
{
    _ID42237::_ID14400( "atvi_credits_go" );
    level._ID22392 = 1;
    level._ID18302 = 1;
    level._ID22388 = [];
    level.remastertextcolorgrey = ( 0.5, 0.5, 0.5 );
    level.remastertextcolorwhite = ( 0.8, 0.8, 0.8 );
    level._ID9303 = 25;
    level._ID9302 = -120;
    level.delayscale = 0.5;
    level.destroydelayvalue = 18 * level.delayscale;
    level.moveovertimevalue = 18 * level.delayscale;
    _ID42407::_ID32246();
    var_1 = 25;

    if ( level._ID765 )
        var_1 = 0;

    if ( !isdefined( var_0 ) )
        var_0 = "all";

    switch ( var_0 )
    {
        case "iw":
            maps\_credit_h2_autogen::_ID46965();
            break;
        case "atvi":
            maps\_credit_h2_autogen::_ID19839();
            break;
        case "all":
            maps\_credit_h2_autogen::_ID46965();
            maps\_credit_h2_autogen::_ID19839();
            break;
    }

    thread maps\simplecredits::_ID53644();
}

_ID2047( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID22392;

    var_2 = spawnstruct();
    var_2.type = "lefttitle";
    var_2._ID37792 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2046( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID22392;

    var_2 = spawnstruct();
    var_2.type = "leftname";
    var_2.name = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2103( var_0, var_1 )
{
    _ID2046( var_0, var_1 );
}

_ID2102( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID22392;

    var_2 = spawnstruct();
    var_2.type = "subleftname";
    var_2.name = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2092( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID22392;

    var_2 = spawnstruct();
    var_2.type = "righttitle";
    var_2._ID37792 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2091( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID22392;

    var_2 = spawnstruct();
    var_2.type = "rightname";
    var_2.name = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2004( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID18302;

    var_2 = spawnstruct();
    var_2.type = "centerheading";
    var_2._ID18300 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2002( var_0, var_1, var_2 )
{
    precachestring( var_1 );
    precachestring( var_0 );

    if ( !isdefined( var_2 ) )
        var_2 = level._ID22392;

    var_3 = spawnstruct();
    var_3.type = "castname";
    var_3._ID37792 = var_1;
    var_3.name = var_0;
    var_3._ID37572 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2006( var_0, var_1 )
{
    precachestring( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = level._ID22392;

    var_2 = spawnstruct();
    var_2.type = "centername";
    var_2.name = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2007( var_0, var_1, var_2 )
{
    precachestring( var_0 );
    precachestring( var_1 );

    if ( !isdefined( var_2 ) )
        var_2 = level._ID22392;

    var_3 = spawnstruct();
    var_3.type = "centernamedouble";
    var_3._ID24643 = var_0;
    var_3._ID24644 = var_1;
    var_3._ID37572 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2003( var_0, var_1, var_2 )
{
    precachestring( var_0 );
    precachestring( var_1 );

    if ( !isdefined( var_2 ) )
        var_2 = level._ID22392;

    var_3 = spawnstruct();
    var_3.type = "centerdual";
    var_3._ID37792 = var_0;
    var_3.name = var_1;
    var_3._ID37572 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2009( var_0, var_1, var_2, var_3 )
{
    precachestring( var_0 );
    precachestring( var_1 );
    precachestring( var_2 );

    if ( !isdefined( var_3 ) )
        var_3 = level._ID22392;

    var_4 = spawnstruct();
    var_4.type = "centertriple";
    var_4._ID24643 = var_0;
    var_4._ID24644 = var_1;
    var_4._ID24645 = var_2;
    var_4._ID37572 = var_3;
    level._ID22388[level._ID22388.size] = var_4;
}

_ID2096()
{
    var_0 = spawnstruct();
    var_0.type = "space";
    level._ID22388[level._ID22388.size] = var_0;
}

_ID2097()
{
    var_0 = spawnstruct();
    var_0.type = "spacesmall";
    level._ID22388[level._ID22388.size] = var_0;
}

addcentergradientimage( var_0, var_1, var_2 )
{
    precacheshader( var_0 );
    var_3 = spawnstruct();
    var_3.type = "centergradientimage";
    var_3._ID19452 = var_0;
    var_3._ID1319 = 1080;
    var_3._ID488 = 126;
    var_3.aligny = var_1;
    var_3.vertalign = var_1;
    var_3._ID41917 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2005( var_0, var_1, var_2, var_3, var_4 )
{
    precacheshader( var_0 );
    var_5 = spawnstruct();
    var_5.type = "centerimage";
    var_5._ID19452 = var_0;
    var_5._ID1319 = var_1;
    var_5._ID488 = var_2;
    var_5.sort = 2;

    if ( isdefined( var_3 ) )
        var_5._ID10179 = var_3;

    if ( isdefined( var_4 ) )
        var_5.waitflag = var_4;

    level._ID22388[level._ID22388.size] = var_5;
}

_ID44739( var_0, var_1, var_2, var_3 )
{
    precacheshader( var_0 );
    var_4 = spawnstruct();
    var_4.type = "leftimage";
    var_4._ID19452 = var_0;
    var_4._ID1319 = var_1;
    var_4._ID488 = var_2;
    var_4.sort = 2;

    if ( isdefined( var_3 ) )
        var_4._ID10179 = var_3;

    level._ID22388[level._ID22388.size] = var_4;
}

_ID27197()
{
    visionsetnaked( "", 0 );
    maps\ending_lighting::_ID49627( "ending_museum" );
    var_0 = getdvar( "ui_char_museum_mode" );
    _ID42475::_ID34575( "start_credits_mix" );
    setdvar( "credits_active", 1 );

    if ( isdefined( var_0 ) && var_0 == "credits_1" )
    {
        var_1 = newhudelem();
        var_1.x = 0;
        var_1.y = 0;
        var_1.alignx = "center";
        var_1.aligny = "middle";
        var_1.horzalign = "center";
        var_1.vertalign = "middle";
        var_1.sort = 3;
        var_1.foreground = 1;
        var_1 settext( &"CREDITS_UI_DEVELOPED_BY" );
        var_1.alpha = 1;
        var_1.hidewheninmenu = 0;
        var_1.fontscale = 1.7;
        var_1.font = "objective";
        var_1.color = level.remastertextcolorwhite;
        var_2 = 3000;
        var_1 setpulsefx( 0, var_2, 700 );
        wait 3;
        var_1 _ID42237::_ID10192( 1, ::destroy );
        wait 1;
        var_1 = newhudelem();
        var_1.x = 0;
        var_1.y = 0;
        var_1.alignx = "center";
        var_1.aligny = "middle";
        var_1.horzalign = "center";
        var_1.vertalign = "middle";
        var_1.sort = 3;
        var_1.foreground = 1;
        var_1 settext( &"CREDITS_UI_REMASTERED_BY" );
        var_1.alpha = 1;
        var_1.hidewheninmenu = 0;
        var_1.fontscale = 1.7;
        var_1.font = "objective";
        var_1.color = level.remastertextcolorwhite;
        var_2 = 3000;
        var_1 setpulsefx( 0, var_2, 700 );
        wait 3;
        var_1 _ID42237::_ID10192( 1, ::destroy );
        wait 0.5;
    }

    var_3 = 0.5;

    for ( var_4 = 0; var_4 < level._ID22388.size; var_4++ )
    {
        var_5 = var_3;
        var_6 = level._ID22388[var_4].type;

        if ( var_6 == "centerimage" )
        {
            if ( isdefined( var_0 ) && var_0 != "credits_black" && isdefined( level._ID22388[var_4].waitflag ) )
            {
                _ID42237::_ID14413( level._ID22388[var_4].waitflag );
                var_3 = 0.6;
            }

            var_7 = level._ID22388[var_4]._ID19452;
            var_8 = level._ID22388[var_4]._ID1319;
            var_9 = level._ID22388[var_4]._ID488;
            var_10 = newhudelem();
            var_10 setshader( var_7, var_8, var_9 );
            var_10.alignx = "center";
            var_10.horzalign = "center";
            var_10.x = 0;
            var_10.y = 480;
            var_10.sort = 2;
            var_10.foreground = 1;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;

            if ( isdefined( level._ID22388[var_4]._ID10179 ) )
                var_5 = level._ID22388[var_4]._ID10179;
            else
                var_5 = 0.037 * var_9;
        }
        else if ( var_6 == "leftimage" )
        {
            var_7 = level._ID22388[var_4]._ID19452;
            var_8 = level._ID22388[var_4]._ID1319;
            var_9 = level._ID22388[var_4]._ID488;
            var_10 = newhudelem();
            var_10 setshader( var_7, var_8, var_9 );
            var_10.alignx = "center";
            var_10.horzalign = "left";
            var_10.x = 128;
            var_10.y = 480;
            var_10.sort = 2;
            var_10.foreground = 1;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
            var_5 = 0.037 * var_9;
        }
        else if ( var_6 == "lefttitle" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = newhudelem();
            var_10 settext( var_11 );
            var_10.alignx = "left";
            var_10.horzalign = "left";
            var_10.x = 28;
            var_10.y = 480;

            if ( !level._ID8534 )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
            var_10 thread _ID28754();
        }
        else if ( var_6 == "leftname" )
        {
            var_13 = level._ID22388[var_4].name;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "left";
            var_10.x = 60;
            var_10.y = 480;

            if ( !level._ID8534 )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorgrey;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
            var_10 thread _ID28754();
        }
        else if ( var_6 == "castname" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_13 = level._ID22388[var_4].name;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = newhudelem();
            var_14 settext( var_11 );
            var_14.alignx = "left";
            var_14.horzalign = "left";
            var_14.x = 60;
            var_14.y = 480;

            if ( !level._ID8534 )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorgrey;
            var_15 = newhudelem();
            var_15 settext( var_13 );
            var_15.alignx = "right";
            var_15.horzalign = "left";
            var_15.x = 275;
            var_15.y = 480;

            if ( !level._ID8534 )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorgrey;
            var_14 thread _ID10200( level._ID9303 );
            var_14 moveovertime( level._ID9303 );
            var_14.y = level._ID9302;
            var_15 thread _ID10200( level._ID9303 );
            var_15 moveovertime( level._ID9303 );
            var_15.y = level._ID9302;
            var_14 thread _ID28754();
            var_15 thread _ID28754();
        }
        else if ( var_6 == "subleftname" )
        {
            var_13 = level._ID22388[var_4].name;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "left";
            var_10.x = 92;
            var_10.y = 480;

            if ( !level._ID8534 )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorgrey;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
            var_10 thread _ID28754();
        }
        else if ( var_6 == "righttitle" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = newhudelem();
            var_10 settext( var_11 );
            var_10.alignx = "left";
            var_10.horzalign = "right";
            var_10.x = -132;
            var_10.y = 480;

            if ( !level._ID8534 )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
        }
        else if ( var_6 == "rightname" )
        {
            var_13 = level._ID22388[var_4].name;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "right";
            var_10.x = -100;
            var_10.y = 480;

            if ( !level._ID8534 )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorgrey;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
        }
        else if ( var_6 == "centerheading" )
        {
            var_16 = level._ID22388[var_4]._ID18300;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = newhudelem();
            var_10 settext( var_16 );
            var_10.alignx = "center";
            var_10.horzalign = "center";
            var_10.x = 0;
            var_10.y = 480;

            if ( !level._ID8534 )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
        }
        else if ( var_6 == "centerdual" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_13 = level._ID22388[var_4].name;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = newhudelem();
            var_14 settext( var_11 );
            var_14.alignx = "right";
            var_14.horzalign = "center";
            var_14.x = -8;
            var_14.y = 480;

            if ( !level._ID8534 )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorwhite;
            var_15 = newhudelem();
            var_15 settext( var_13 );
            var_15.alignx = "left";
            var_15.horzalign = "center";
            var_15.x = 8;
            var_15.y = 480;

            if ( !level._ID8534 )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorgrey;
            var_14 thread _ID10200( level._ID9303 );
            var_14 moveovertime( level._ID9303 );
            var_14.y = level._ID9302;
            var_15 thread _ID10200( level._ID9303 );
            var_15 moveovertime( level._ID9303 );
            var_15.y = level._ID9302;
        }
        else if ( var_6 == "centertriple" )
        {
            var_17 = level._ID22388[var_4]._ID24643;
            var_18 = level._ID22388[var_4]._ID24644;
            var_19 = level._ID22388[var_4]._ID24645;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = newhudelem();
            var_14 settext( var_17 );
            var_14.alignx = "center";
            var_14.horzalign = "center";
            var_14.x = -160;
            var_14.y = 480;

            if ( !level._ID8534 )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorwhite;
            var_15 = newhudelem();
            var_15 settext( var_18 );
            var_15.alignx = "center";
            var_15.horzalign = "center";
            var_15.x = 0;
            var_15.y = 480;

            if ( !level._ID8534 )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorwhite;
            var_20 = newhudelem();
            var_20 settext( var_19 );
            var_20.alignx = "center";
            var_20.horzalign = "center";
            var_20.x = 160;
            var_20.y = 480;

            if ( !level._ID8534 )
                var_20.font = "default";
            else
                var_20.font = "small";

            var_20.fontscale = var_12;
            var_20.sort = 2;
            var_20.color = level.remastertextcolorwhite;
            var_14 thread _ID10200( level._ID9303 );
            var_14 moveovertime( level._ID9303 );
            var_14.y = level._ID9302;
            var_15 thread _ID10200( level._ID9303 );
            var_15 moveovertime( level._ID9303 );
            var_15.y = level._ID9302;
            var_20 thread _ID10200( level._ID9303 );
            var_20 moveovertime( level._ID9303 );
            var_20.y = level._ID9302;
        }
        else if ( var_6 == "centername" )
        {
            var_13 = level._ID22388[var_4].name;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = newhudelem();
            var_10 settext( var_13 );
            var_10.alignx = "left";
            var_10.horzalign = "center";
            var_10.x = 8;
            var_10.y = 480;

            if ( !level._ID8534 )
                var_10.font = "default";
            else
                var_10.font = "small";

            var_10.fontscale = var_12;
            var_10.sort = 2;
            var_10.color = level.remastertextcolorwhite;
            var_10 thread _ID10200( level._ID9303 );
            var_10 moveovertime( level._ID9303 );
            var_10.y = level._ID9302;
        }
        else if ( var_6 == "centernamedouble" )
        {
            var_17 = level._ID22388[var_4]._ID24643;
            var_18 = level._ID22388[var_4]._ID24644;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = newhudelem();
            var_14 settext( var_17 );
            var_14.alignx = "center";
            var_14.horzalign = "center";
            var_14.x = -100;
            var_14.y = 480;

            if ( !level._ID8534 )
                var_14.font = "default";
            else
                var_14.font = "small";

            var_14.fontscale = var_12;
            var_14.sort = 2;
            var_14.color = level.remastertextcolorwhite;
            var_15 = newhudelem();
            var_15 settext( var_18 );
            var_15.alignx = "center";
            var_15.horzalign = "center";
            var_15.x = 100;
            var_15.y = 480;

            if ( !level._ID8534 )
                var_15.font = "default";
            else
                var_15.font = "small";

            var_15.fontscale = var_12;
            var_15.sort = 2;
            var_15.color = level.remastertextcolorwhite;
            var_14 thread _ID10200( level._ID9303 );
            var_14 moveovertime( level._ID9303 );
            var_14.y = level._ID9302;
            var_15 thread _ID10200( level._ID9303 );
            var_15 moveovertime( level._ID9303 );
            var_15.y = level._ID9302;
        }
        else if ( var_6 == "spacesmall" )
            var_5 = 0.1875;
        else
        {

        }

        wait(var_5 * level._ID9303 / 22.5);
    }
}

_ID10200( var_0 )
{
    wait(var_0);
    self destroy();
}

_ID28754()
{
    self.alpha = 0;
    wait(level._ID9303 * 0.08);
    self fadeovertime( 0.2 );
    self.alpha = 1;
    self setpulsefx( 50, int( level._ID9303 * 0.6 * 1000 ), 500 );
}

_ID47611( var_0, var_1 )
{
    _ID2103( var_0 );
    _ID2097();
    _ID2102( var_1 );
    _ID2096();
}

_ID44065( var_0, var_1 )
{
    _ID2047( var_0 );
    _ID2097();
    _ID2046( var_1 );
    _ID2096();
}

_ID52416( var_0, var_1 )
{
    _ID2047( var_0 );
    _ID2097();
    _ID2046( var_1 );
}

_ID54173( var_0, var_1 )
{
    _ID2103( var_0 );
    _ID2097();
    _ID2102( var_1 );
}

_ID46636( var_0, var_1 )
{
    _ID2046( var_0 );
    _ID2046( var_1 );
}

_ID45190( var_0, var_1 )
{
    _ID2102( var_0 );
    _ID2102( var_1 );
}

_ID44387( var_0, var_1, var_2 )
{
    _ID2102( var_0 );
    _ID2102( var_1 );
    _ID2102( var_2 );
}

_ID47880( var_0, var_1, var_2, var_3 )
{
    _ID2005( var_0, var_1, var_2, var_3, "atvi_credits_go" );
}

_ID50788( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        _ID2047( var_0 );
    else
        _ID2004( var_0 );
}

_ID49265( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        _ID2103( var_0 );
    else
        _ID2004( var_0 );
}

_ID45477( var_0, var_1 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
    {
        _ID2047( var_0 );
        _ID2097();
        _ID2046( var_1 );
    }
    else
        _ID2003( var_0, var_1 );
}

_ID43152( var_0, var_1 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
    {
        _ID2103( var_0 );
        _ID2097();
        _ID2102( var_1 );
    }
    else
        _ID2003( var_0, var_1 );
}

_ID49068( var_0, var_1, var_2 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        _ID2002( var_0, var_1 );
    else
        _ID2004( var_0 );
}

_ID50739( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        _ID2046( var_0 );
    else
        _ID2006( var_0 );
}

_ID50427( var_0 )
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        _ID2102( var_0 );
    else
        _ID2006( var_0 );
}

_ID45091()
{
    if ( getdvar( "ui_char_museum_mode" ) != "credits_black" )
        _ID2096();
    else
        _ID2097();
}

_ID2021()
{
    _ID2096();
    _ID2096();
}

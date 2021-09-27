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

    if ( !_func_02F( var_0 ) )
        var_0 = "all";

    switch ( var_0 )
    {

    }

    thread maps\simplecredits::_ID53644();
    case "atvi":
    case "iw":
    case "all":
}

_ID2047( var_0, var_1 )
{
    _func_150( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID22392;

    var_2 = _func_1A5();
    var_2._ID1244 = "lefttitle";
    var_2._ID37792 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2046( var_0, var_1 )
{
    _func_150( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID22392;

    var_2 = _func_1A5();
    var_2._ID1244 = "leftname";
    var_2._ID680 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2103( var_0, var_1 )
{
    _unknown_013B( var_0, var_1 );
}

_ID2102( var_0, var_1 )
{
    _func_150( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID22392;

    var_2 = _func_1A5();
    var_2._ID1244 = "subleftname";
    var_2._ID680 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2092( var_0, var_1 )
{
    _func_150( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID22392;

    var_2 = _func_1A5();
    var_2._ID1244 = "righttitle";
    var_2._ID37792 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2091( var_0, var_1 )
{
    _func_150( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID22392;

    var_2 = _func_1A5();
    var_2._ID1244 = "rightname";
    var_2._ID680 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2004( var_0, var_1 )
{
    _func_150( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID18302;

    var_2 = _func_1A5();
    var_2._ID1244 = "centerheading";
    var_2._ID18300 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2002( var_0, var_1, var_2 )
{
    _func_150( var_1 );
    _func_150( var_0 );

    if ( !_func_02F( var_2 ) )
        var_2 = level._ID22392;

    var_3 = _func_1A5();
    var_3._ID1244 = "castname";
    var_3._ID37792 = var_1;
    var_3._ID680 = var_0;
    var_3._ID37572 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2006( var_0, var_1 )
{
    _func_150( var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID22392;

    var_2 = _func_1A5();
    var_2._ID1244 = "centername";
    var_2._ID680 = var_0;
    var_2._ID37572 = var_1;
    level._ID22388[level._ID22388.size] = var_2;
}

_ID2007( var_0, var_1, var_2 )
{
    _func_150( var_0 );
    _func_150( var_1 );

    if ( !_func_02F( var_2 ) )
        var_2 = level._ID22392;

    var_3 = _func_1A5();
    var_3._ID1244 = "centernamedouble";
    var_3._ID24643 = var_0;
    var_3._ID24644 = var_1;
    var_3._ID37572 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2003( var_0, var_1, var_2 )
{
    _func_150( var_0 );
    _func_150( var_1 );

    if ( !_func_02F( var_2 ) )
        var_2 = level._ID22392;

    var_3 = _func_1A5();
    var_3._ID1244 = "centerdual";
    var_3._ID37792 = var_0;
    var_3._ID680 = var_1;
    var_3._ID37572 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2009( var_0, var_1, var_2, var_3 )
{
    _func_150( var_0 );
    _func_150( var_1 );
    _func_150( var_2 );

    if ( !_func_02F( var_3 ) )
        var_3 = level._ID22392;

    var_4 = _func_1A5();
    var_4._ID1244 = "centertriple";
    var_4._ID24643 = var_0;
    var_4._ID24644 = var_1;
    var_4._ID24645 = var_2;
    var_4._ID37572 = var_3;
    level._ID22388[level._ID22388.size] = var_4;
}

_ID2096()
{
    var_0 = _func_1A5();
    var_0._ID1244 = "space";
    level._ID22388[level._ID22388.size] = var_0;
}

_ID2097()
{
    var_0 = _func_1A5();
    var_0._ID1244 = "spacesmall";
    level._ID22388[level._ID22388.size] = var_0;
}

addcentergradientimage( var_0, var_1, var_2 )
{
    _func_14F( var_0 );
    var_3 = _func_1A5();
    var_3._ID1244 = "centergradientimage";
    var_3._ID19452 = var_0;
    var_3._ID1319 = 1080;
    var_3._ID488 = 126;
    var_3._ID45 = var_1;
    var_3._ID1284 = var_1;
    var_3._ID41917 = var_2;
    level._ID22388[level._ID22388.size] = var_3;
}

_ID2005( var_0, var_1, var_2, var_3, var_4 )
{
    _func_14F( var_0 );
    var_5 = _func_1A5();
    var_5._ID1244 = "centerimage";
    var_5._ID19452 = var_0;
    var_5._ID1319 = var_1;
    var_5._ID488 = var_2;
    var_5._ID983 = 2;

    if ( _func_02F( var_3 ) )
        var_5._ID10179 = var_3;

    if ( _func_02F( var_4 ) )
        var_5.waitflag = var_4;

    level._ID22388[level._ID22388.size] = var_5;
}

_ID44739( var_0, var_1, var_2, var_3 )
{
    _func_14F( var_0 );
    var_4 = _func_1A5();
    var_4._ID1244 = "leftimage";
    var_4._ID19452 = var_0;
    var_4._ID1319 = var_1;
    var_4._ID488 = var_2;
    var_4._ID983 = 2;

    if ( _func_02F( var_3 ) )
        var_4._ID10179 = var_3;

    level._ID22388[level._ID22388.size] = var_4;
}

_ID27197()
{
    _func_148( "", 0 );
    maps\ending_lighting::_ID49627( "ending_museum" );
    var_0 = _func_039( "ui_char_museum_mode" );
    _ID42475::_ID34575( "start_credits_mix" );
    _func_034( "credits_active", 1 );

    if ( _func_02F( var_0 ) && var_0 == "credits_1" )
    {
        var_1 = _func_1AF();
        var_1._ID1331 = 0;
        var_1._ID1339 = 0;
        var_1._ID44 = "center";
        var_1._ID45 = "middle";
        var_1._ID499 = "center";
        var_1._ID1284 = "middle";
        var_1._ID983 = 3;
        var_1._ID408 = 1;
        var_1 _meth_80D1( &"CREDITS_UI_DEVELOPED_BY" );
        var_1._ID55 = 1;
        var_1._ID493 = 0;
        var_1._ID393 = 1.7;
        var_1._ID392 = "objective";
        var_1._ID196 = level.remastertextcolorwhite;
        var_2 = 3000;
        var_1 _meth_8090( 0, var_2, 700 );
        wait 3;
        var_1 _ID42237::_ID10192( 1, ::_meth_808F );
        wait 1;
        var_1 = _func_1AF();
        var_1._ID1331 = 0;
        var_1._ID1339 = 0;
        var_1._ID44 = "center";
        var_1._ID45 = "middle";
        var_1._ID499 = "center";
        var_1._ID1284 = "middle";
        var_1._ID983 = 3;
        var_1._ID408 = 1;
        var_1 _meth_80D1( &"CREDITS_UI_REMASTERED_BY" );
        var_1._ID55 = 1;
        var_1._ID493 = 0;
        var_1._ID393 = 1.7;
        var_1._ID392 = "objective";
        var_1._ID196 = level.remastertextcolorwhite;
        var_2 = 3000;
        var_1 _meth_8090( 0, var_2, 700 );
        wait 3;
        var_1 _ID42237::_ID10192( 1, ::_meth_808F );
        wait 0.5;
    }

    var_3 = 0.5;

    for ( var_4 = 0; var_4 < level._ID22388.size; var_4++ )
    {
        var_5 = var_3;
        var_6 = level._ID22388[var_4]._ID1244;

        if ( var_6 == "centerimage" )
        {
            if ( _func_02F( var_0 ) && var_0 != "credits_black" && _func_02F( level._ID22388[var_4].waitflag ) )
            {
                _ID42237::_ID14413( level._ID22388[var_4].waitflag );
                var_3 = 0.6;
            }

            var_7 = level._ID22388[var_4]._ID19452;
            var_8 = level._ID22388[var_4]._ID1319;
            var_9 = level._ID22388[var_4]._ID488;
            var_10 = _func_1AF();
            var_10 _meth_80D3( var_7, var_8, var_9 );
            var_10._ID44 = "center";
            var_10._ID499 = "center";
            var_10._ID1331 = 0;
            var_10._ID1339 = 480;
            var_10._ID983 = 2;
            var_10._ID408 = 1;
            var_10 thread _unknown_0A51( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;

            if ( _func_02F( level._ID22388[var_4]._ID10179 ) )
                var_5 = level._ID22388[var_4]._ID10179;
            else
                var_5 = 0.037 * var_9;
        }
        else if ( var_6 == "leftimage" )
        {
            var_7 = level._ID22388[var_4]._ID19452;
            var_8 = level._ID22388[var_4]._ID1319;
            var_9 = level._ID22388[var_4]._ID488;
            var_10 = _func_1AF();
            var_10 _meth_80D3( var_7, var_8, var_9 );
            var_10._ID44 = "center";
            var_10._ID499 = "left";
            var_10._ID1331 = 128;
            var_10._ID1339 = 480;
            var_10._ID983 = 2;
            var_10._ID408 = 1;
            var_10 thread _unknown_0ADD( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
            var_5 = 0.037 * var_9;
        }
        else if ( var_6 == "lefttitle" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = _func_1AF();
            var_10 _meth_80D1( var_11 );
            var_10._ID44 = "left";
            var_10._ID499 = "left";
            var_10._ID1331 = 28;
            var_10._ID1339 = 480;

            if ( !level._ID8534 )
                var_10._ID392 = "default";
            else
                var_10._ID392 = "small";

            var_10._ID393 = var_12;
            var_10._ID983 = 2;
            var_10._ID196 = level.remastertextcolorwhite;
            var_10 thread _unknown_0B66( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
            var_10 thread _unknown_0B7A();
        }
        else if ( var_6 == "leftname" )
        {
            var_13 = level._ID22388[var_4]._ID680;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = _func_1AF();
            var_10 _meth_80D1( var_13 );
            var_10._ID44 = "left";
            var_10._ID499 = "left";
            var_10._ID1331 = 60;
            var_10._ID1339 = 480;

            if ( !level._ID8534 )
                var_10._ID392 = "default";
            else
                var_10._ID392 = "small";

            var_10._ID393 = var_12;
            var_10._ID983 = 2;
            var_10._ID196 = level.remastertextcolorgrey;
            var_10 thread _unknown_0BED( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
            var_10 thread _unknown_0C01();
        }
        else if ( var_6 == "castname" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_13 = level._ID22388[var_4]._ID680;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = _func_1AF();
            var_14 _meth_80D1( var_11 );
            var_14._ID44 = "left";
            var_14._ID499 = "left";
            var_14._ID1331 = 60;
            var_14._ID1339 = 480;

            if ( !level._ID8534 )
                var_14._ID392 = "default";
            else
                var_14._ID392 = "small";

            var_14._ID393 = var_12;
            var_14._ID983 = 2;
            var_14._ID196 = level.remastertextcolorgrey;
            var_15 = _func_1AF();
            var_15 _meth_80D1( var_13 );
            var_15._ID44 = "right";
            var_15._ID499 = "left";
            var_15._ID1331 = 275;
            var_15._ID1339 = 480;

            if ( !level._ID8534 )
                var_15._ID392 = "default";
            else
                var_15._ID392 = "small";

            var_15._ID393 = var_12;
            var_15._ID983 = 2;
            var_15._ID196 = level.remastertextcolorgrey;
            var_14 thread _unknown_0CCD( level._ID9303 );
            var_14 _meth_808D( level._ID9303 );
            var_14._ID1339 = level._ID9302;
            var_15 thread _unknown_0CE1( level._ID9303 );
            var_15 _meth_808D( level._ID9303 );
            var_15._ID1339 = level._ID9302;
            var_14 thread _unknown_0CF6();
            var_15 thread _unknown_0CFB();
        }
        else if ( var_6 == "subleftname" )
        {
            var_13 = level._ID22388[var_4]._ID680;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = _func_1AF();
            var_10 _meth_80D1( var_13 );
            var_10._ID44 = "left";
            var_10._ID499 = "left";
            var_10._ID1331 = 92;
            var_10._ID1339 = 480;

            if ( !level._ID8534 )
                var_10._ID392 = "default";
            else
                var_10._ID392 = "small";

            var_10._ID393 = var_12;
            var_10._ID983 = 2;
            var_10._ID196 = level.remastertextcolorgrey;
            var_10 thread _unknown_0D6D( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
            var_10 thread _unknown_0D82();
        }
        else if ( var_6 == "righttitle" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = _func_1AF();
            var_10 _meth_80D1( var_11 );
            var_10._ID44 = "left";
            var_10._ID499 = "right";
            var_10._ID1331 = -132;
            var_10._ID1339 = 480;

            if ( !level._ID8534 )
                var_10._ID392 = "default";
            else
                var_10._ID392 = "small";

            var_10._ID393 = var_12;
            var_10._ID983 = 2;
            var_10._ID196 = level.remastertextcolorwhite;
            var_10 thread _unknown_0DF4( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
        }
        else if ( var_6 == "rightname" )
        {
            var_13 = level._ID22388[var_4]._ID680;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = _func_1AF();
            var_10 _meth_80D1( var_13 );
            var_10._ID44 = "left";
            var_10._ID499 = "right";
            var_10._ID1331 = -100;
            var_10._ID1339 = 480;

            if ( !level._ID8534 )
                var_10._ID392 = "default";
            else
                var_10._ID392 = "small";

            var_10._ID393 = var_12;
            var_10._ID983 = 2;
            var_10._ID196 = level.remastertextcolorgrey;
            var_10 thread _unknown_0E76( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
        }
        else if ( var_6 == "centerheading" )
        {
            var_16 = level._ID22388[var_4]._ID18300;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = _func_1AF();
            var_10 _meth_80D1( var_16 );
            var_10._ID44 = "center";
            var_10._ID499 = "center";
            var_10._ID1331 = 0;
            var_10._ID1339 = 480;

            if ( !level._ID8534 )
                var_10._ID392 = "default";
            else
                var_10._ID392 = "small";

            var_10._ID393 = var_12;
            var_10._ID983 = 2;
            var_10._ID196 = level.remastertextcolorwhite;
            var_10 thread _unknown_0EF7( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
        }
        else if ( var_6 == "centerdual" )
        {
            var_11 = level._ID22388[var_4]._ID37792;
            var_13 = level._ID22388[var_4]._ID680;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = _func_1AF();
            var_14 _meth_80D1( var_11 );
            var_14._ID44 = "right";
            var_14._ID499 = "center";
            var_14._ID1331 = -8;
            var_14._ID1339 = 480;

            if ( !level._ID8534 )
                var_14._ID392 = "default";
            else
                var_14._ID392 = "small";

            var_14._ID393 = var_12;
            var_14._ID983 = 2;
            var_14._ID196 = level.remastertextcolorwhite;
            var_15 = _func_1AF();
            var_15 _meth_80D1( var_13 );
            var_15._ID44 = "left";
            var_15._ID499 = "center";
            var_15._ID1331 = 8;
            var_15._ID1339 = 480;

            if ( !level._ID8534 )
                var_15._ID392 = "default";
            else
                var_15._ID392 = "small";

            var_15._ID393 = var_12;
            var_15._ID983 = 2;
            var_15._ID196 = level.remastertextcolorgrey;
            var_14 thread _unknown_0FD1( level._ID9303 );
            var_14 _meth_808D( level._ID9303 );
            var_14._ID1339 = level._ID9302;
            var_15 thread _unknown_0FE6( level._ID9303 );
            var_15 _meth_808D( level._ID9303 );
            var_15._ID1339 = level._ID9302;
        }
        else if ( var_6 == "centertriple" )
        {
            var_17 = level._ID22388[var_4]._ID24643;
            var_18 = level._ID22388[var_4]._ID24644;
            var_19 = level._ID22388[var_4]._ID24645;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = _func_1AF();
            var_14 _meth_80D1( var_17 );
            var_14._ID44 = "center";
            var_14._ID499 = "center";
            var_14._ID1331 = -160;
            var_14._ID1339 = 480;

            if ( !level._ID8534 )
                var_14._ID392 = "default";
            else
                var_14._ID392 = "small";

            var_14._ID393 = var_12;
            var_14._ID983 = 2;
            var_14._ID196 = level.remastertextcolorwhite;
            var_15 = _func_1AF();
            var_15 _meth_80D1( var_18 );
            var_15._ID44 = "center";
            var_15._ID499 = "center";
            var_15._ID1331 = 0;
            var_15._ID1339 = 480;

            if ( !level._ID8534 )
                var_15._ID392 = "default";
            else
                var_15._ID392 = "small";

            var_15._ID393 = var_12;
            var_15._ID983 = 2;
            var_15._ID196 = level.remastertextcolorwhite;
            var_20 = _func_1AF();
            var_20 _meth_80D1( var_19 );
            var_20._ID44 = "center";
            var_20._ID499 = "center";
            var_20._ID1331 = 160;
            var_20._ID1339 = 480;

            if ( !level._ID8534 )
                var_20._ID392 = "default";
            else
                var_20._ID392 = "small";

            var_20._ID393 = var_12;
            var_20._ID983 = 2;
            var_20._ID196 = level.remastertextcolorwhite;
            var_14 thread _unknown_1118( level._ID9303 );
            var_14 _meth_808D( level._ID9303 );
            var_14._ID1339 = level._ID9302;
            var_15 thread _unknown_112C( level._ID9303 );
            var_15 _meth_808D( level._ID9303 );
            var_15._ID1339 = level._ID9302;
            var_20 thread _unknown_1140( level._ID9303 );
            var_20 _meth_808D( level._ID9303 );
            var_20._ID1339 = level._ID9302;
        }
        else if ( var_6 == "centername" )
        {
            var_13 = level._ID22388[var_4]._ID680;
            var_12 = level._ID22388[var_4]._ID37572;
            var_10 = _func_1AF();
            var_10 _meth_80D1( var_13 );
            var_10._ID44 = "left";
            var_10._ID499 = "center";
            var_10._ID1331 = 8;
            var_10._ID1339 = 480;

            if ( !level._ID8534 )
                var_10._ID392 = "default";
            else
                var_10._ID392 = "small";

            var_10._ID393 = var_12;
            var_10._ID983 = 2;
            var_10._ID196 = level.remastertextcolorwhite;
            var_10 thread _unknown_11C2( level._ID9303 );
            var_10 _meth_808D( level._ID9303 );
            var_10._ID1339 = level._ID9302;
        }
        else if ( var_6 == "centernamedouble" )
        {
            var_17 = level._ID22388[var_4]._ID24643;
            var_18 = level._ID22388[var_4]._ID24644;
            var_12 = level._ID22388[var_4]._ID37572;
            var_14 = _func_1AF();
            var_14 _meth_80D1( var_17 );
            var_14._ID44 = "center";
            var_14._ID499 = "center";
            var_14._ID1331 = -100;
            var_14._ID1339 = 480;

            if ( !level._ID8534 )
                var_14._ID392 = "default";
            else
                var_14._ID392 = "small";

            var_14._ID393 = var_12;
            var_14._ID983 = 2;
            var_14._ID196 = level.remastertextcolorwhite;
            var_15 = _func_1AF();
            var_15 _meth_80D1( var_18 );
            var_15._ID44 = "center";
            var_15._ID499 = "center";
            var_15._ID1331 = 100;
            var_15._ID1339 = 480;

            if ( !level._ID8534 )
                var_15._ID392 = "default";
            else
                var_15._ID392 = "small";

            var_15._ID393 = var_12;
            var_15._ID983 = 2;
            var_15._ID196 = level.remastertextcolorwhite;
            var_14 thread _unknown_129C( level._ID9303 );
            var_14 _meth_808D( level._ID9303 );
            var_14._ID1339 = level._ID9302;
            var_15 thread _unknown_12B0( level._ID9303 );
            var_15 _meth_808D( level._ID9303 );
            var_15._ID1339 = level._ID9302;
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
    self _meth_808F();
}

_ID28754()
{
    self._ID55 = 0;
    wait(level._ID9303 * 0.08);
    self _meth_808B( 0.2 );
    self._ID55 = 1;
    self _meth_8090( 50, _func_0C1( level._ID9303 * 0.6 * 1000 ), 500 );
}

_ID47611( var_0, var_1 )
{
    _unknown_0EB6( var_0 );
    _unknown_0F61();
    _unknown_0EC3( var_1 );
    _unknown_0F63();
}

_ID44065( var_0, var_1 )
{
    _unknown_0EAE( var_0 );
    _unknown_0F78();
    _unknown_0EC6( var_1 );
    _unknown_0F7A();
}

_ID52416( var_0, var_1 )
{
    _unknown_0EC4( var_0 );
    _unknown_0F8E();
    _unknown_0EDD( var_1 );
}

_ID54173( var_0, var_1 )
{
    _unknown_0EF6( var_0 );
    _unknown_0FA1();
    _unknown_0F02( var_1 );
}

_ID46636( var_0, var_1 )
{
    _unknown_0EF9( var_0 );
    _unknown_0EFE( var_1 );
}

_ID45190( var_0, var_1 )
{
    _unknown_0F1B( var_0 );
    _unknown_0F20( var_1 );
}

_ID44387( var_0, var_1, var_2 )
{
    _unknown_0F2C( var_0 );
    _unknown_0F31( var_1 );
    _unknown_0F36( var_2 );
}

_ID47880( var_0, var_1, var_2, var_3 )
{
    _unknown_1009( var_0, var_1, var_2, var_3, "atvi_credits_go" );
}

_ID50788( var_0 )
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
        _unknown_0F3B( var_0 );
    else
        _unknown_0F92( var_0 );
}

_ID49265( var_0 )
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
        _unknown_0F76( var_0 );
    else
        _unknown_0FAE( var_0 );
}

_ID45477( var_0, var_1 )
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
    {
        _unknown_0F74( var_0 );
        _unknown_103F();
        _unknown_0F8D( var_1 );
    }
    else
        _unknown_101A( var_0, var_1 );
}

_ID43152( var_0, var_1 )
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
    {
        _unknown_0FBA( var_0 );
        _unknown_1066();
        _unknown_0FC7( var_1 );
    }
    else
        _unknown_1041( var_0, var_1 );
}

_ID49068( var_0, var_1, var_2 )
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
        _unknown_1025( var_0, var_1 );
    else
        _unknown_101C( var_0 );
}

_ID50739( var_0 )
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
        _unknown_0FF0( var_0 );
    else
        _unknown_105A( var_0 );
}

_ID50427( var_0 )
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
        _unknown_101F( var_0 );
    else
        _unknown_1076( var_0 );
}

_ID45091()
{
    if ( _func_039( "ui_char_museum_mode" ) != "credits_black" )
        _unknown_10D4();
    else
        _unknown_10E0();
}

_ID2021()
{
    _unknown_10DF();
    _unknown_10E3();
}

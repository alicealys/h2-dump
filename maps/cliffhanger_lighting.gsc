// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_0005();
    level.blizzard_sunflare_threadid = undefined;
}

_ID32363()
{
    if ( _func_242() )
        _func_0DB( "r_disablelightsets", 0 );
}

_ID53242( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        return;

    thread _unknown_0134();

    switch ( var_0 )
    {

    }

    if ( !_func_02F( var_access_14 ) )
        var_access_14 = var_access_9;

    _ID49359::_ID48895();
    thread _ID49359::_ID47375( var_access_15, var_access_14 );

    if ( _func_039( "r_useCheatPostFX" ) != "Edge Detect" )
    {
        _ID42407::_ID32515( var_access_11, var_access_14 );
        thread _ID49359::_ID50804( var_access_3, var_access_4 );

        if ( _func_02F( var_access_13 ) )
            _ID42407::_ID14689( var_access_12, var_access_13 );
        else
            _ID42407::_ID14689( var_access_12, var_access_14 );
    }

    _func_045( var_0 );

    if ( var_1 )
        _ID42237::_ID14402( "pause_blizzard_ground_fx" );
    else if ( var_2 )
        _ID42237::_ID14388( "pause_blizzard_ground_fx" );

    level._ID794 _ID42407::_ID48929( var_access_10 );

    if ( var_access_8 )
        _func_048();
    else if ( _func_02F( var_access_7 ) )
        thread _ID49359::_ID54444( var_access_7, var_access_14 );

    _ID49359::_ID53955( var_access_14, var_access_5 );

    if ( _func_02F( var_access_6 ) )
        level._ID794 _meth_849F( var_access_6, var_access_14 );

    if ( _func_03A( "blizzard_light_debug" ) == 1 )
        _func_19E( "blizzard vision transition to :  " + var_access_15 );

    level._ID46419 = var_access_15;
    case "heavy_building":
    case "climbing_up":
    case "climbing":
    case "extreme":
    case "med":
    case "hard":
    case "snowmobile":
    default:
}

_ID47950()
{
    if ( _func_02F( level._ID54428 ) )
        return;

    level._ID54428 = 1;
    var_0 = ( 0, 180, 0 );
    var_1 = undefined;

    for (;;)
    {
        if ( level._ID51628 && !_ID42237::_ID14385( "player_indoors" ) )
        {
            var_2 = _func_119( _func_11F( level._ID794._ID65 ) );
            var_3 = _func_119( _func_11F( var_0 ) );
            var_4 = _func_0FB( var_2, var_3 );
            var_5 = var_4 < -0.5;
        }
        else
            var_5 = 0;

        var_6 = _func_02F( var_1 );

        if ( var_5 )
        {
            if ( !var_6 )
            {
                var_1 = _func_15B( level._ID1426["vfx_screen_google_snowflakes_addon"], level._ID794._ID740 );
                _func_15C( var_1 );
            }
        }
        else if ( var_6 )
            var_1 _meth_80B7();

        waittillframeend;
    }
}

_ID45932( var_0 )
{
    if ( _func_02F( level.blizzard_sunflare_threadid ) )
        return;

    level.blizzard_sunflare_threadid = thisthread;

    if ( !_func_02F( level._ID49429 ) )
        level._ID49429 = _ID42407::_ID48236( "fx_sunflare_cliffhanger" );

    if ( var_0 )
        level._ID49429 _ID42407::_ID29840();
    else
    {
        var_1 = 1;
        var_2 = ( 0, 0, 0 );
        var_3 = ( 0, 0, 0 );

        while ( var_1 )
        {
            wait 0.5;
            var_4 = level._ID794 _meth_8346();
            var_2 = _func_119( _func_11F( var_4 ) );
            var_3 = _func_119( level._ID49429._ID40005["origin"] - level._ID794._ID740 );

            if ( _func_0FB( var_2, var_3 ) < 0 )
                var_1 = 0;
        }

        level._ID49429 _ID42237::_ID26402();
    }
}

_ID48518()
{
    level endon( "goggle_remove" );
    var_0 = "";

    for (;;)
    {
        level waittill( "goggle_fx_change" );

        if ( !level._ID51628 || var_0 == level._ID52573 )
            continue;

        if ( _func_02F( level._ID44988 ) )
            level._ID44988 _meth_80B7();

        if ( !_ID42237::_ID14385( "starting_hanger_backdoor_path" ) )
        {
            level._ID44988 = _func_15B( level._ID1426[level._ID52573], level._ID794._ID740 );
            _func_15C( level._ID44988 );
        }

        var_0 = level._ID52573;
    }
}

_ID49414( var_0 )
{
    level._ID52573 = var_0;
    level notify( "goggle_fx_change" );
}

_ID43891()
{
    level endon( "player_gets_on_snowmobile" );
    var_0 = "cliffhanger_snowmobile";
    var_1 = "cliffhanger_snowmobile";
    var_2 = "cliffhanger_snowmobile";

    for (;;)
    {
        level waittill( "player_indoors",  var_4, var_3  );
        var_5 = var_4._ID922;
        var_6 = var_4._ID922;
        var_7 = 1;

        if ( var_4._ID922 == "cliffhanger_snowmobile_int" )
            var_7 = 0;

        if ( _func_02F( var_4._ID31388 ) && _func_02F( level._ID40560[var_4._ID31388] ) )
            var_8 = var_4._ID31388;
        else
            var_8 = var_4._ID922;

        _unknown_06B9( var_6, var_5, var_8, var_7 );

        while ( _ID42237::_ID14385( "player_indoors" ) )
        {
            if ( level._ID794._ID46646 != var_6 )
            {
                if ( !_ID42237::_ID14385( "acs_picked_up" ) )
                    _unknown_06DC( var_6, var_5, var_8 );
            }

            _unknown_069D( "goggle_meltingfrost" );
            waittillframeend;
        }

        if ( _func_03A( "blizzard_light_debug" ) == 1 )
            _func_19F( "blizzard is now outdoor" );

        if ( !_ID42237::_ID14385( "acs_picked_up" ) )
        {
            _unknown_054B( level._ID46419, 3 );
            continue;
        }

        _unknown_0718( var_2, var_1, var_0 );
    }
}

_ID45336( var_0, var_1, var_2, var_3 )
{
    if ( _func_02F( var_2 ) )
        _ID42407::_ID14689( var_2, var_3 );

    if ( _func_02F( var_1 ) )
        _ID42407::_ID32515( var_1, 0.5 );

    if ( _func_02F( var_0 ) )
        level._ID794 _ID42407::_ID48929( var_0 );

    _ID49359::_ID53955( 0.5, 0.0 );
}

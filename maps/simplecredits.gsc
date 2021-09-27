// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    thread _ID42277::_ID19881();
    thread _ID42277::_ID27197();
    thread maps\simplecredits_code::_ID45073();
    thread _unknown_00B0();
    _func_034( "credits_load", "0" );
    _func_034( "credits_active", "1" );
    level._ID9296 = 1;
    _ID42237::_ID14400( "credits_ended" );
    _ID42323::_ID616();
    _func_0DB( "sv_saveOnStartMap", 0 );
    level._ID794 _meth_8334( 1 );
    level._ID794 _meth_831B();
    wait 0.05;
    _func_0DB( "g_friendlyfiredist", 0 );
    _func_0DB( "g_friendlynamedist", 0 );
    _func_0DB( "compass", 0 );
    _func_0DB( "ammoCounterHide", 1 );
    _func_0DB( "hud_showStance", 0 );
    thread _unknown_0112();
}

_ID45777()
{
    if ( level._ID794 _meth_835B() )
    {
        if ( _func_09A() )
            return level._ID794 _meth_8256( "BUTTON_B" );

        return level._ID794 _meth_8256( "BUTTON_A" );
    }
    else
        return level._ID794 _meth_8256( "ENTER" );
}

_ID54562()
{
    if ( level._ID794 _meth_835B() )
        return level._ID794 _meth_8256( "BUTTON_Y" ) || level._ID794 _meth_8256( "BUTTON_B" ) || level._ID794 _meth_8256( "BUTTON_A" ) || level._ID794 _meth_8256( "BUTTON_X" );
    else
        return level._ID794 _meth_8256( "SPACE" ) || level._ID794 _meth_8256( "ESCAPE" ) || level._ID794 _meth_8256( "ENTER" ) || level._ID794 _meth_8256( "MOUSE1" );
}

_ID53644()
{
    level._ID49483 = 1500;
    level._ID46595 = 0;
    level._ID53134 = 0;
    level._ID48331 = 0;
    level._ID49288 = 0;
    level endon( "credits_ended" );
    _func_0DB( "r_progressIconRatio", 0 );

    while ( !_func_03A( "credits_active", 0 ) )
        wait 1;

    for (;;)
    {
        var_0 = _unknown_015C();
        var_1 = _unknown_016F();

        if ( var_0 || var_1 )
        {
            if ( level._ID48331 )
            {
                var_2 = _func_03D() - level._ID46595;
                var_3 = _func_0C4( var_2 / level._ID49483, 1 );
                _func_0DB( "r_progressIconRatio", var_3 );

                if ( var_2 >= level._ID49483 )
                {
                    _unknown_0217();
                    return;
                }
            }
            else if ( !level._ID49288 )
            {
                _func_032( "ui_setluibriefingmenumode", 2 );
                level._ID49288 = 1;
            }

            if ( level._ID48331 != var_0 )
            {
                level._ID48331 = var_0;
                level._ID46595 = _func_03D();
            }
        }
        else if ( level._ID48331 || level._ID49288 )
        {
            level._ID48331 = 0;
            level._ID49288 = 0;
            level._ID53134 = _func_03D();
            _func_0DB( "r_progressIconRatio", 0 );
        }
        else
        {
            var_4 = _func_03D();

            if ( var_4 - level._ID53134 >= 5000 )
            {
                if ( _func_033( "ui_setluibriefingmenumode" ) != 0 )
                    _func_032( "ui_setluibriefingmenumode", 0 );
            }
        }

        waittillframeend;
    }
}

_ID43341()
{
    _ID42237::_ID14413( "credits_ended" );
    wait 14;
    _unknown_0290();
}

_ID24574()
{
    _ID42407::_ID24587( "simplecredits_rocking" );
    wait 155;
    _func_078( 6 );
    wait 6.1;
    _ID42407::_ID24587( "simplecredits_abandoned" );
    wait 110;
    _func_078( 7 );
    wait 7.1;
    _ID42407::_ID24587( "simplecredits_abandoned" );
    wait 85;
    _func_078( 6 );
}

_ID46866()
{
    _func_0DB( "cl_disable_pause", 1 );
    var_0 = 2;
    var_1 = _func_1AF();
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 _meth_80D3( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID55 = 0;
    var_1._ID983 = 6;
    var_1._ID408 = 1;
    var_1 _meth_808B( var_0 );
    var_1._ID55 = 1;
    _func_032( "ui_setluibriefingmenumode", 0 );
    _func_078( var_0 );
    wait(var_0);
    _func_034( "credits_active", "0" );

    if ( _func_02F( level.credits_frommenu ) )
        _func_057( "" );
    else
        _ID42291::_ID9301();
}

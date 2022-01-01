// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    thread _ID42277::_ID19881();
    thread _ID42277::_ID27197();
    thread maps\simplecredits_code::_ID45073();
    thread _ID24574();
    setdvar( "credits_load", "0" );
    setdvar( "credits_active", "1" );
    level._ID9296 = 1;
    _ID42237::_ID14400( "credits_ended" );
    _ID42323::_ID616();
    setsaveddvar( "sv_saveOnStartMap", 0 );
    level._ID794 freezecontrols( 1 );
    level._ID794 takeallweapons();
    wait 0.05;
    setsaveddvar( "g_friendlyfiredist", 0 );
    setsaveddvar( "g_friendlynamedist", 0 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    thread _ID43341();
}

_ID45777()
{
    if ( level._ID794 _meth_835b() )
    {
        if ( _func_9a() )
            return level._ID794 buttonpressed( "BUTTON_B" );

        return level._ID794 buttonpressed( "BUTTON_A" );
    }
    else
        return level._ID794 buttonpressed( "ENTER" );
}

_ID54562()
{
    if ( level._ID794 _meth_835b() )
        return level._ID794 buttonpressed( "BUTTON_Y" ) || level._ID794 buttonpressed( "BUTTON_B" ) || level._ID794 buttonpressed( "BUTTON_A" ) || level._ID794 buttonpressed( "BUTTON_X" );
    else
        return level._ID794 buttonpressed( "SPACE" ) || level._ID794 buttonpressed( "ESCAPE" ) || level._ID794 buttonpressed( "ENTER" ) || level._ID794 buttonpressed( "MOUSE1" );
}

_ID53644()
{
    level._ID49483 = 1500;
    level._ID46595 = 0;
    level._ID53134 = 0;
    level._ID48331 = 0;
    level._ID49288 = 0;
    level endon( "credits_ended" );
    setsaveddvar( "r_progressIconRatio", 0 );

    while ( !getdvarint( "credits_active", 0 ) )
        wait 1;

    for (;;)
    {
        var_0 = _ID45777();
        var_1 = _ID54562();

        if ( var_0 || var_1 )
        {
            if ( level._ID48331 )
            {
                var_2 = gettime() - level._ID46595;
                var_3 = min( var_2 / level._ID49483, 1 );
                setsaveddvar( "r_progressIconRatio", var_3 );

                if ( var_2 >= level._ID49483 )
                {
                    _ID46866();
                    return;
                }
            }
            else if ( !level._ID49288 )
            {
                setomnvar( "ui_setluibriefingmenumode", 2 );
                level._ID49288 = 1;
            }

            if ( level._ID48331 != var_0 )
            {
                level._ID48331 = var_0;
                level._ID46595 = gettime();
            }
        }
        else if ( level._ID48331 || level._ID49288 )
        {
            level._ID48331 = 0;
            level._ID49288 = 0;
            level._ID53134 = gettime();
            setsaveddvar( "r_progressIconRatio", 0 );
        }
        else
        {
            var_4 = gettime();

            if ( var_4 - level._ID53134 >= 5000 )
            {
                if ( getomnvar( "ui_setluibriefingmenumode" ) != 0 )
                    setomnvar( "ui_setluibriefingmenumode", 0 );
            }
        }

        waittillframeend;
    }
}

_ID43341()
{
    _ID42237::_ID14413( "credits_ended" );
    wait 14;
    _ID46866();
}

_ID24574()
{
    _ID42407::_ID24587( "simplecredits_rocking" );
    wait 155;
    musicstop( 6 );
    wait 6.1;
    _ID42407::_ID24587( "simplecredits_abandoned" );
    wait 110;
    musicstop( 7 );
    wait 7.1;
    _ID42407::_ID24587( "simplecredits_abandoned" );
    wait 85;
    musicstop( 6 );
}

_ID46866()
{
    setsaveddvar( "cl_disable_pause", 1 );
    var_0 = 2;
    var_1 = newhudelem();
    var_1._ID1331 = 0;
    var_1._ID1339 = 0;
    var_1 setshader( "black", 640, 480 );
    var_1._ID44 = "left";
    var_1._ID45 = "top";
    var_1._ID499 = "fullscreen";
    var_1._ID1284 = "fullscreen";
    var_1._ID55 = 0;
    var_1._ID983 = 6;
    var_1._ID408 = 1;
    var_1 fadeovertime( var_0 );
    var_1._ID55 = 1;
    setomnvar( "ui_setluibriefingmenumode", 0 );
    musicstop( var_0 );
    wait(var_0);
    setdvar( "credits_active", "0" );

    if ( isdefined( level.credits_frommenu ) )
        changelevel( "" );
    else
        _ID42291::_ID9301();
}

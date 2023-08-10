// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    thread maps\_credits::initcredits();
    thread maps\_credits::playcredits();
    thread maps\simplecredits_code::_id_B011();
    thread music();
    setdvar( "credits_load", "0" );
    setdvar( "credits_active", "1" );
    level.credits_active = 1;
    common_scripts\utility::flag_init( "credits_ended" );
    maps\_load::main();
    setsaveddvar( "sv_saveOnStartMap", 0 );
    level.player freezecontrols( 1 );
    level.player takeallweapons();
    wait 0.05;
    setsaveddvar( "g_friendlyfiredist", 0 );
    setsaveddvar( "g_friendlynamedist", 0 );
    setsaveddvar( "compass", 0 );
    setsaveddvar( "ammoCounterHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    thread _id_A94D();
}

_id_B2D1()
{
    if ( level.player _meth_835B() )
    {
        if ( _func_9A() )
            return level.player buttonpressed( "BUTTON_B" );

        return level.player buttonpressed( "BUTTON_A" );
    }
    else
        return level.player buttonpressed( "ENTER" );
}

_id_D522()
{
    if ( level.player _meth_835B() )
        return level.player buttonpressed( "BUTTON_Y" ) || level.player buttonpressed( "BUTTON_B" ) || level.player buttonpressed( "BUTTON_A" ) || level.player buttonpressed( "BUTTON_X" );
    else
        return level.player buttonpressed( "SPACE" ) || level.player buttonpressed( "ESCAPE" ) || level.player buttonpressed( "ENTER" ) || level.player buttonpressed( "MOUSE1" );
}

_id_D18C()
{
    level._id_C14B = 1500;
    level._id_B603 = 0;
    level._id_CF8E = 0;
    level._id_BCCB = 0;
    level._id_C088 = 0;
    level endon( "credits_ended" );
    setsaveddvar( "r_progressIconRatio", 0 );

    while ( !getdvarint( "credits_active", 0 ) )
        wait 1;

    for (;;)
    {
        var_0 = _id_B2D1();
        var_1 = _id_D522();

        if ( var_0 || var_1 )
        {
            if ( level._id_BCCB )
            {
                var_2 = gettime() - level._id_B603;
                var_3 = min( var_2 / level._id_C14B, 1 );
                setsaveddvar( "r_progressIconRatio", var_3 );

                if ( var_2 >= level._id_C14B )
                {
                    _id_B712();
                    return;
                }
            }
            else if ( !level._id_C088 )
            {
                setomnvar( "ui_setluibriefingmenumode", 2 );
                level._id_C088 = 1;
            }

            if ( level._id_BCCB != var_0 )
            {
                level._id_BCCB = var_0;
                level._id_B603 = gettime();
            }
        }
        else if ( level._id_BCCB || level._id_C088 )
        {
            level._id_BCCB = 0;
            level._id_C088 = 0;
            level._id_CF8E = gettime();
            setsaveddvar( "r_progressIconRatio", 0 );
        }
        else
        {
            var_4 = gettime();

            if ( var_4 - level._id_CF8E >= 5000 )
            {
                if ( getomnvar( "ui_setluibriefingmenumode" ) != 0 )
                    setomnvar( "ui_setluibriefingmenumode", 0 );
            }
        }

        waitframe();
    }
}

_id_A94D()
{
    common_scripts\utility::flag_wait( "credits_ended" );
    wait 14;
    _id_B712();
}

music()
{
    maps\_utility::musicplaywrapper( "simplecredits_rocking" );
    wait 155;
    musicstop( 6 );
    wait 6.1;
    maps\_utility::musicplaywrapper( "simplecredits_abandoned" );
    wait 110;
    musicstop( 7 );
    wait 7.1;
    maps\_utility::musicplaywrapper( "simplecredits_abandoned" );
    wait 85;
    musicstop( 6 );
}

_id_B712()
{
    setsaveddvar( "cl_disable_pause", 1 );
    var_0 = 2;
    var_1 = newhudelem();
    var_1.x = 0;
    var_1.y = 0;
    var_1 setshader( "black", 640, 480 );
    var_1.alignx = "left";
    var_1.aligny = "top";
    var_1.horzalign = "fullscreen";
    var_1.vertalign = "fullscreen";
    var_1.alpha = 0;
    var_1.sort = 6;
    var_1.foreground = 1;
    var_1 fadeovertime( var_0 );
    var_1.alpha = 1;
    setomnvar( "ui_setluibriefingmenumode", 0 );
    musicstop( var_0 );
    wait( var_0 );
    setdvar( "credits_active", "0" );

    if ( isdefined( level.credits_frommenu ) )
        changelevel( "" );
    else
        maps\_endmission::credits_end();
}

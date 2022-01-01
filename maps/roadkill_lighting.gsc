// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID19720();
    thread _ID32969();
    thread _ID32363();
    thread _ID52366();
    thread _ID49662();
    thread _ID43556();
    thread _ID22343();
}

_ID19720()
{

}

_ID32969()
{

}

_ID32363()
{
    _ID42407::_ID40561( "roadkill", 0 );
    level._ID794 _ID42407::_ID48929( "roadkill" );
    level._ID51424 = "roadkill";
    level._ID49027 = "roadkill";
}

_ID52366()
{
    wait 0.05;
    _ID42237::_ID14413( "ambush" );
    thread _ID42407::_ID40561( "roadkill_ambush", 0.8 );
    var_0 = 5;
    thread maps\roadkill_aud::_ID46869( var_0, "scn_shellshock_latvee_ambush_01", "shellshock_latvee_ambush_01_mix" );
    level._ID794 shellshock( "default", var_0 );
    _ID42475::_ID34575( "start_ambush_flee_mix" );
    earthquake( 0.7, 1.2, level._ID794._ID740, 5000 );
    level._ID794 playrumblelooponentity( "damage_heavy" );
}

_ID49662()
{
    wait 0.05;
    _ID42237::_ID14413( "roadkill_town_dialogue" );
    thread _ID42318::_ID47446( 2 );
    _ID42237::_ID14413( "convoy_moment" );
    setsaveddvar( "sm_sunSampleSizeNear", "0.6" );
}

_ID43556()
{
    wait 0.05;
    _ID42237::_ID14413( "intro_started" );

    if ( getdvarint( "newintro" ) )
    {
        var_0 = 5.8;
        thread maps\roadkill_aud::_ID46869( var_0, "scn_shellshock_intro", "shellshock_intro_mix" );
        _ID42475::_ID34575( "start_shellshock_mix" );
        _ID42407::_ID4917( "allies" );
        level._ID794 shellshock( "default", var_0 );
        level._ID794 disableweapons();
        var_1 = _ID42313::_ID9125( "black", 0, level._ID794 );
        var_1._ID55 = 1;
        _ID42237::_ID14402( "intro_latvee_complete" );
        setomnvar( "ui_expireHUD", 1 );
        setsaveddvar( "compass", 0 );
        wait 1;
        var_1 fadeovertime( 2.0 );
        var_1._ID55 = 0;
        level waittill( "get_on_the_line" );
        level._ID794 enableweapons();
        _ID42475::_ID34575( "stop_shellshock_mix" );
        setsaveddvar( "compass", 1 );
        _ID42407::_ID4918( "allies" );
    }
}

_ID45110()
{
    setsaveddvar( "sm_sunsamplesizenear", 0.33 );
    _ID42237::_ID14413( "h2_intro_done" );
    _ID42237::_ID14425( "player_enters_riverbank", 9 );
    _ID42318::_ID47446( 1, 0.76 );
}

_ID53561()
{
    for (;;)
    {
        self setlightintensity( 0.8 );
        wait(randomfloatrange( 0.1, 1.5 ));
        self setlightintensity( randomfloatrange( 0.6, 0.9 ) * 0.8 );
        wait(randomfloatrange( 0.05, 0.1 ));
    }
}

_ID22343()
{
    var_0 = getentarray( "flickerlight1", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 thread _ID53561();
}

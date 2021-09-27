// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _unknown_000D();
    thread _unknown_0011();
    thread _unknown_0016();
    thread _unknown_0026();
    thread _unknown_0047();
    thread _unknown_0059();
    thread _unknown_00B2();
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
    level._ID794 _meth_818E( "default", var_0 );
    _ID42475::_ID34575( "start_ambush_flee_mix" );
    _func_192( 0.7, 1.2, level._ID794._ID740, 5000 );
    level._ID794 _meth_80B4( "damage_heavy" );
}

_ID49662()
{
    wait 0.05;
    _ID42237::_ID14413( "roadkill_town_dialogue" );
    thread _ID42318::_ID47446( 2 );
    _ID42237::_ID14413( "convoy_moment" );
    _func_0DB( "sm_sunSampleSizeNear", "0.6" );
}

_ID43556()
{
    wait 0.05;
    _ID42237::_ID14413( "intro_started" );

    if ( _func_03A( "newintro" ) )
    {
        var_0 = 5.8;
        thread maps\roadkill_aud::_ID46869( var_0, "scn_shellshock_intro", "shellshock_intro_mix" );
        _ID42475::_ID34575( "start_shellshock_mix" );
        _ID42407::_ID4917( "allies" );
        level._ID794 _meth_818E( "default", var_0 );
        level._ID794 _meth_8328();
        var_1 = _ID42313::_ID9125( "black", 0, level._ID794 );
        var_1._ID55 = 1;
        _ID42237::_ID14402( "intro_latvee_complete" );
        _func_032( "ui_expireHUD", 1 );
        _func_0DB( "compass", 0 );
        wait 1;
        var_1 _meth_808B( 2.0 );
        var_1._ID55 = 0;
        level waittill( "get_on_the_line" );
        level._ID794 _meth_8329();
        _ID42475::_ID34575( "stop_shellshock_mix" );
        _func_0DB( "compass", 1 );
        _ID42407::_ID4918( "allies" );
    }
}

_ID45110()
{
    _func_0DB( "sm_sunsamplesizenear", 0.33 );
    _ID42237::_ID14413( "h2_intro_done" );
    _ID42237::_ID14425( "player_enters_riverbank", 9 );
    _ID42318::_ID47446( 1, 0.76 );
}

_ID53561()
{
    for (;;)
    {
        self _meth_81EB( 0.8 );
        wait(_func_0BA( 0.1, 1.5 ));
        self _meth_81EB( _func_0BA( 0.6, 0.9 ) * 0.8 );
        wait(_func_0BA( 0.05, 0.1 ));
    }
}

_ID22343()
{
    var_0 = _func_1A2( "flickerlight1", "targetname" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 thread _unknown_0267();
    }

    var_clear_2
    var_clear_0
}

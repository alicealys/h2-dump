// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID43797::init();
    _ID45890::main();
    _ID53481::main();
    _ID49192::main();
    maps\roadkill_anim::main();
    _ID46125::main();
    _ID42237::_ID14400( "intro_started" );
    _ID42237::_ID14400( "ambush" );
    _ID42237::_ID14400( "roadkill_town_dialogue" );
    _ID42323::main();
    maps\roadkill_aud::main();
    maps\roadkill_lighting::main();
    _ID42237::_ID30398( "helper_model", _ID42407::_ID31860 );
    thread _ID42318::_ID47446( 2 );
    setsaveddvar( "sm_sunSampleSizeNear", "0.6" );
    thread _ID49243();
    return 1;
}

_ID49243()
{
    var_0 = spawn( "script_origin", ( -1864.8, -4774.4, 144.5 ) );
    var_0.angles = ( -5.8, 80.5, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "roadkill", 0 );
    level.player _ID42407::_ID40561( "roadkill", 0 );
    level.player lightset( "roadkill" );
    return;
}

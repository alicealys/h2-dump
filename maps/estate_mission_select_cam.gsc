// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID43797::init();
    _ID45614::main();
    _ID51464::main();
    maps\estate_anim::main();
    _ID47772::main();
    _ID42323::main();
    maps\estate_lighting::main();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( -4880.2, 5650.8, 796.1 );
    var_1 = ( 3.4, -27.1, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "estate", 1 );
    _ID42407::_ID14689( "estate", 1 );
    level.player lightset( "estate" );
}

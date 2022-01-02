// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID49242::main();
    _ID51176::main();
    _ID44499::main();
    maps\arcadia_lighting::main();
    thread maps\arcadia::_ID44594();
    _ID42323::main();
    maps\arcadia_anim::main();
    maps\arcadia_aud::main();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( 172.5, 2246.2, 2279.4 );
    var_1 = ( -4, -108.2, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "arcadia", 0 );
    level.player _ID42407::_ID40561( "arcadia", 0 );
    level.player lightset( "arcadia" );
}

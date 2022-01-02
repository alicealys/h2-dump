// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    maps\trainer::_ID28333();
    _ID42323::main();
    maps\trainer::_ID28284();
    thread _ID49243();
    return 1;
}

_ID49243()
{
    wait 0.5;
    var_0 = ( -5435.7, 2930.4, 67 );
    var_1 = ( 7.7, -15.1, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "trainer", 1 );
    _ID42407::_ID14689( "trainer", 1 );
    level.player lightset( "trainer" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID51196::main();
    _ID51855::main();
    _ID54620::main();
    _ID53782::main();
    _ID51773::main();
    maps\favela_escape::_ID49233();
    maps\favela_escape_anim::main();
    _ID42323::main();
    maps\favela_escape_lighting::main();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( -5355.2, 1197, 915.6 );
    var_1 = ( 20.3, -120.8, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "favela_escape_solorun_buildings", 1 );
    _ID42407::_ID14689( "favela_escape_solorun_buildings", 1 );
    level.player lightset( "favela_escape" );
}

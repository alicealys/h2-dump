// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID53206::main();
    _ID44190::main();
    maps\af_caves_anim::main();
    _ID47599::main();
    _ID42323::main();
    _ID50289::main();
    maps\af_caves_lighting::main();
    getent( "cell_hook1", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook1", "cell_hook" );
    getent( "cell_hook2", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook2", "cell_hook" );
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( 4148.4, 6920.6, -3628.8 );
    var_1 = ( -4.7, -81, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "af_caves_overlook", 1 );
    _ID42407::_ID14689( "af_caves", 1 );
    level.player lightset( "af_caves" );
}

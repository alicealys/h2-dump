// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID51620::main();
    _ID52608::main();
    _ID49419::main();
    maps\contingency_anim::_ID43266();
    _ID42323::main();
    maps\contingency_lighting::_ID44761( "defend_sub" );
    thread sat_rotate_cam();
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( -17184.7, -730.3, 1469.6 );
    var_1 = ( 16, 57.4, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "contingency_port", 1 );
    _ID42407::_ID14689( "contingency_port", 1 );
    level.player lightset( "contingency" );
}

sat_rotate_cam()
{
    var_0 = getent( "sat_dish", "targetname" );

    for (;;)
    {
        var_0 rotateyaw( 360, 25, 0.05, 0.05 );
        wait 25;
    }
}

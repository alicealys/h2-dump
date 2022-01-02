// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID49383::main();
    maps\cliffhanger_lighting::main();
    _ID43695::main();
    _ID42323::main();
    _ID53530::main();
    maps\cliffhanger_anim::_ID43266();
    _ID42237::_ID14400( "player_indoors" );
    _ID49359::_ID50649( level.player );
    thread maps\cliffhanger_code::_ID52966();
    var_0 = getentarray( "wind_blown_object", "targetname" );
    _ID42237::_ID3350( var_0, maps\cliffhanger_code::_ID48501 );
    level._ID44100 = 6;
    _ID49359::_ID49387();
    thread _ID49243();
    return 1;
}

_ID49243()
{
    var_0 = ( -4999.6, -25392, 944.6 );
    var_1 = ( -13.2, -116.4, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 90, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "cliffhanger_blizzard_extreme", 1 );
    _ID42407::_ID14689( "cliffhanger_blizzard_heavy", 1 );
    level.player lightset( "cliffhanger" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    maps\dc_whitehouse::_ID46258();
    maps\dc_whitehouse::_ID49840();
    _ID42422::_ID28929( 1 );
    thread _ID49243();
}

_ID49243()
{
    var_0 = ( -5846.4, 7955.9, -150.6 );
    var_1 = ( 5.1, 39.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level _ID42407::_ID40561( "dc_whitehouse", 0 );
    level.player _ID42407::_ID40561( "dc_whitehouse", 0 );
    level.player lightset( "dc_whitehouse" );
}

// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID52779::main();
    _ID51744::main();
    _ID43617::main();
    maps\oilrig_anim::main();
    _ID42323::main();
    _ID42367::_ID34366();
    _ID42367::_ID1851( maps\oilrig::_ID46835 );
    maps\oilrig_lighting::main();
    var_0 = getentarray( "animated_crane_hook", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2._ID3189 = "animated_crane_hook";
        var_2 _ID42407::_ID3428();
        var_2 thread _ID42259::_ID3044( var_2, "idle", "stop_idle" );
    }

    thread _ID49243();
}

_ID49243()
{
    var_0 = ( 723.7, 1188.2, -1413.3 );
    var_1 = ( -2.7, -125.3, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "oilrig", 1 );
    _ID42407::_ID14689( "oilrig", 1 );
    level.player lightset( "oilrig_interiors" );
}

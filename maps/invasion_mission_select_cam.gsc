// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID50320()
{
    _ID47059::main();
    _ID54687::main( "vehicle_mi-28_flying", "mi28", "script_vehicle_mi28" );
    _ID54469::main();
    _ID51039::main();
    maps\invasion_anim::_ID43266();
    _ID42323::main();
    maps\invasion_lighting::main();
    maps\invasion::_ID49693();
    thread _ID49243();
    thread spawn_planes();
}

_ID49243()
{
    var_0 = ( -866.1, -2840.8, 2333.5 );
    var_1 = ( -6.9, 26.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    _ID42407::_ID32515( "invasion", 1 );
    _ID42407::_ID14689( "invasion", 1 );
    level.player lightset( "invasion" );
    _ID42237::_ID14402( "flag_portal_road_east_wall" );
    _ID42237::_ID14402( "flag_portal_parking_north_entrance" );
    _ID42237::_ID14402( "flag_portal_apartments_road" );
    _ID42237::_ID14402( "flag_portal_parking_north" );
}

spawn_planes()
{
    var_0 = getentarray( "mission_select", "targetname" );
    wait 30;
    _ID42237::_ID3350( var_0, _ID42411::_ID35194 );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_B7D3::main();
    _id_D59F::main( "vehicle_mi-28_flying", "mi28", "script_vehicle_mi28" );
    _id_D4C5::main();
    _id_C75F::main();
    maps\invasion_anim::_id_A902();
    maps\_load::main();
    maps\invasion_lighting::main();
    maps\invasion::_id_C21D();
    thread _id_C05B();
    thread spawn_planes();
}

_id_C05B()
{
    var_0 = ( -866.1, -2840.8, 2333.5 );
    var_1 = ( -6.9, 26.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "invasion", 1 );
    maps\_utility::fog_set_changes( "invasion", 1 );
    level.player lightset( "invasion" );
    common_scripts\utility::flag_set( "flag_portal_road_east_wall" );
    common_scripts\utility::flag_set( "flag_portal_parking_north_entrance" );
    common_scripts\utility::flag_set( "flag_portal_apartments_road" );
    common_scripts\utility::flag_set( "flag_portal_parking_north" );
}

spawn_planes()
{
    var_0 = getentarray( "mission_select", "targetname" );
    wait 30;
    common_scripts\utility::array_thread( var_0, maps\_vehicle::spawn_vehicle_and_gopath );
}

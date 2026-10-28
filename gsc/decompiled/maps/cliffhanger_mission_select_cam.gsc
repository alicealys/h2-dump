// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_C0E7::main();
    maps\cliffhanger_lighting::main();
    _id_AAAF::main();
    maps\_load::main();
    _id_D11A::main();
    maps\cliffhanger_anim::_id_A902();
    common_scripts\utility::flag_init( "player_indoors" );
    _id_C0CF::_id_C5D9( level.player );
    thread maps\cliffhanger_code::_id_CEE6();
    var_0 = getentarray( "wind_blown_object", "targetname" );
    common_scripts\utility::array_thread( var_0, maps\cliffhanger_code::_id_BD75 );
    level._id_AC44 = 6;
    _id_C0CF::_id_C0EB();
    thread _id_C05B();
    return 1;
}

_id_C05B()
{
    var_0 = ( -4999.6, -25392, 944.6 );
    var_1 = ( -13.2, -116.4, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 90, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "cliffhanger_blizzard_extreme", 1 );
    maps\_utility::fog_set_changes( "cliffhanger_blizzard_heavy", 1 );
    level.player lightset( "cliffhanger" );
}

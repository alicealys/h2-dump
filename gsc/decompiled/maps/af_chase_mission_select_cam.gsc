// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_BDA4::main();
    _id_CC30::main();
    _id_D557::main();
    maps\_utility::default_start( maps\af_chase::_id_B972 );
    maps\af_chase_knife_fight::_id_D080();
    maps\af_chase::_id_D1E4();
    maps\_load::main();
    maps\af_chase_anim::_id_A902();
    _id_BC8E::main();
    _id_BE1D::_id_CD39( "viewhands_player_tf141" );
    _id_B257::main();
    var_0 = getentarray( "script_vehicle_zodiac_player", "classname" );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, _id_BE1D::_id_C525 );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, maps\af_chase_code::_id_BCEC );
    common_scripts\utility::array_thread( var_0, maps\_utility::add_spawn_function, maps\af_chase_code::_id_ACA8 );
    _id_C05B();
    return 1;
}

_id_C05B()
{
    var_0 = spawn( "script_origin", ( -17560.4, -25627.9, 372.9 ) );
    var_0.angles = ( 1.8, -34.9, 0 );
    level.player setorigin( var_0.origin );
    level.player setplayerangles( var_0.angles );
    level.player lerpfov( 70, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "af_chase_caves_end", 0 );
    level.player maps\_utility::vision_set_fog_changes( "af_chase_caves_end", 0 );
    level.player lightset( "af_chase_caves_end" );
    return;
}

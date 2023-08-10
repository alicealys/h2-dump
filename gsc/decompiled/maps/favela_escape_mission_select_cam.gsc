// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_C7FC::main();
    _id_CA8F::main();
    _id_D55C::main();
    _id_D216::main();
    _id_CA3D::main();
    maps\favela_escape::_id_C051();
    maps\favela_escape_anim::main();
    maps\_load::main();
    maps\favela_escape_lighting::main();
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( -5355.2, 1197, 915.6 );
    var_1 = ( 20.3, -120.8, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "favela_escape_solorun_buildings", 1 );
    maps\_utility::fog_set_changes( "favela_escape_solorun_buildings", 1 );
    level.player lightset( "favela_escape" );
}

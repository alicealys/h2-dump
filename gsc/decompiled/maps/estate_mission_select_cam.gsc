// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_AB15::init();
    _id_B22E::main();
    _id_C908::main();
    maps\estate_anim::main();
    _id_BA9C::main();
    maps\_load::main();
    maps\estate_lighting::main();
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( -4880.2, 5650.8, 796.1 );
    var_1 = ( 3.4, -27.1, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "estate", 1 );
    maps\_utility::fog_set_changes( "estate", 1 );
    level.player lightset( "estate" );
}

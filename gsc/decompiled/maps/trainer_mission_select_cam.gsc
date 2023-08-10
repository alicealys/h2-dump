// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    maps\trainer::pre_load();
    maps\_load::main();
    maps\trainer::post_load();
    thread _id_C05B();
    return 1;
}

_id_C05B()
{
    wait 0.5;
    var_0 = ( -5435.7, 2930.4, 67 );
    var_1 = ( 7.7, -15.1, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "trainer", 1 );
    maps\_utility::fog_set_changes( "trainer", 1 );
    level.player lightset( "trainer" );
}

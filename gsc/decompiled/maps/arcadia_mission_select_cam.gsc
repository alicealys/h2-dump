// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_C05A::main();
    _id_C7E8::main();
    _id_ADD3::main();
    maps\arcadia_lighting::main();
    thread maps\arcadia::_id_AE32();
    maps\_load::main();
    maps\arcadia_anim::main();
    maps\arcadia_aud::main();
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( 172.5, 2246.2, 2279.4 );
    var_1 = ( -4, -108.2, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "arcadia", 0 );
    level.player maps\_utility::vision_set_fog_changes( "arcadia", 0 );
    level.player lightset( "arcadia" );
}

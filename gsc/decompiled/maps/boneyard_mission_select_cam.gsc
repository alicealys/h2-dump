// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_D4E2::main();
    _id_AA09::main();
    _id_CC16::main();
    maps\_load::main();
    maps\boneyard_anim::main();
    maps\boneyard_lighting::main();
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( -5873.6, -4813.4, 181.9 );
    var_1 = ( 15.6, 55.6, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "boneyard", 1 );
    maps\_utility::fog_set_changes( "boneyard", 1 );
    level.player lightset( "boneyard" );
    var_2 = getent( "intro_btr80", "script_noteworthy" );
    var_2 maps\_utility::add_spawn_function( ::_id_C2CE );
    var_2.origin = ( -5160, -2920, 22.4 );
    var_2.dontgetonpath = 1;
    var_3 = var_2 maps\_utility::spawn_vehicle();
}

_id_C2CE()
{
    waitframe();
    maps\_vehicle::force_kill();
}

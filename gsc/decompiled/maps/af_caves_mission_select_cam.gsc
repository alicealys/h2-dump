// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_CFD6::main();
    _id_AC9E::main();
    maps\af_caves_anim::main();
    _id_B9EF::main();
    maps\_load::main();
    _id_C471::main();
    maps\af_caves_lighting::main();
    getent( "cell_hook1", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook1", "cell_hook" );
    getent( "cell_hook2", "targetname" ) thread maps\af_caves_code::scripted_anim_props( "cell_hook2", "cell_hook" );
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( 4148.4, 6920.6, -3628.8 );
    var_1 = ( -4.7, -81, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "af_caves_overlook", 1 );
    maps\_utility::fog_set_changes( "af_caves", 1 );
    level.player lightset( "af_caves" );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_C9A4::main();
    _id_CD80::main();
    _id_C10B::main();
    maps\contingency_anim::_id_A902();
    maps\_load::main();
    maps\contingency_lighting::_id_AED9( "defend_sub" );
    thread sat_rotate_cam();
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( -17184.7, -730.3, 1469.6 );
    var_1 = ( 16, 57.4, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "contingency_port", 1 );
    maps\_utility::fog_set_changes( "contingency_port", 1 );
    level.player lightset( "contingency" );
}

sat_rotate_cam()
{
    var_0 = getent( "sat_dish", "targetname" );

    for (;;)
    {
        var_0 rotateyaw( 360, 25, 0.05, 0.05 );
        wait 25;
    }
}

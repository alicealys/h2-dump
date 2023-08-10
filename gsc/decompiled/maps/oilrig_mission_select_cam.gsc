// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    _id_CE2B::main();
    _id_CA20::main();
    _id_AA61::main();
    maps\oilrig_anim::main();
    maps\_load::main();
    maps\_slowmo_breach::slowmo_breach_init();
    maps\_slowmo_breach::add_breach_func( maps\oilrig::_id_B6F3 );
    maps\oilrig_lighting::main();
    var_0 = getentarray( "animated_crane_hook", "targetname" );

    foreach ( var_2 in var_0 )
    {
        var_2.animname = "animated_crane_hook";
        var_2 maps\_utility::assign_animtree();
        var_2 thread maps\_anim::anim_loop_solo( var_2, "idle", "stop_idle" );
    }

    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( 723.7, 1188.2, -1413.3 );
    var_1 = ( -2.7, -125.3, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 80, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    maps\_utility::set_vision_set( "oilrig", 1 );
    maps\_utility::fog_set_changes( "oilrig", 1 );
    level.player lightset( "oilrig_interiors" );
}

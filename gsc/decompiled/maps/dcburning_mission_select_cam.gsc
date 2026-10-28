// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    maps\dcburning::_id_B2C8();
    _id_B64C::main();
    _id_D3D6::main( "h2_vehicle_blackhawk_minigun_hero_exterior", undefined, "script_vehicle_blackhawk_minigun" );
    maps\dc_crashsite::main();
    _id_B626::main();
    maps\dcburning_lighting::main();
    _id_AD17::main();
    _id_D388::main();
    maps\_load::main();
    maps\dcburning_anim::main();
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( -22034, 1240, -268 );
    var_1 = ( -6.2, 96.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "dcburning_trenches", 0 );
    level.player maps\_utility::vision_set_fog_changes( "dcburning_trenches", 0 );
    level.player lightset( "dcburning" );
}

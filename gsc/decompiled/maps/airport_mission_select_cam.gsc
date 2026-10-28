// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    maps\airport::_id_C21D();
    maps\airport_challenge::_id_CC24();
    _id_B354::main();
    _id_B94F::main();
    _id_B864::main();
    _id_BEEE::main();
    _id_D19C::main();
    maps\airport_anim::main();
    maps\_load::main();
    maps\airport_lighting::main();
    maps\_drone_civilian::init();
    maps\_drone_ai::init();
    var_0 = getentarray( "script_model", "classname" );

    foreach ( var_2 in var_0 )
        var_2 hide();

    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( 5358.4, 2161.7, 308.9 );
    var_1 = ( 12.6, 161.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 95, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "airport", 0 );
    level.player maps\_utility::vision_set_fog_changes( "airport", 0 );
    level.player lightset( "airport" );
}

// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C490()
{
    maps\dc_whitehouse::_id_B4B2();
    maps\dc_whitehouse::_id_C2B0();
    maps\_weather::rainlight( 1 );
    thread _id_C05B();
}

_id_C05B()
{
    var_0 = ( -5846.4, 7955.9, -150.6 );
    var_1 = ( 5.1, 39.5, 0 );
    level.player setorigin( var_0 );
    level.player setplayerangles( var_1 );
    level.player lerpfov( 85, 0.1 );
    level.player.ignoreme = 1;
    setsaveddvar( "hud_drawhud", 0 );
    level maps\_utility::vision_set_fog_changes( "dc_whitehouse", 0 );
    level.player maps\_utility::vision_set_fog_changes( "dc_whitehouse", 0 );
    level.player lightset( "dc_whitehouse" );
}

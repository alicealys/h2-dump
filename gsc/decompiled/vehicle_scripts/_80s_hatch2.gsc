// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "80s_hatch1", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_destructible( "vehicle_80s_hatch2_brn_destructible_mp", "vehicle_80s_hatch2_brn" );
    maps\_vehicle::build_destructible( "vehicle_80s_hatch2_green_destructible_mp", "vehicle_80s_hatch2_green" );
    maps\_vehicle::build_destructible( "vehicle_80s_hatch2_red_destructible_mp", "vehicle_80s_hatch2_red" );
    maps\_vehicle::build_destructible( "vehicle_80s_hatch2_silv_destructible_mp", "vehicle_80s_hatch2_silv" );
    maps\_vehicle::build_destructible( "vehicle_80s_hatch2_tan_destructible_mp", "vehicle_80s_hatch2_tan" );
    maps\_vehicle::build_destructible( "vehicle_80s_hatch2_yel_destructible_mp", "vehicle_80s_hatch2_yel" );
    maps\_vehicle::build_drive( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
}

init_local()
{

}

set_vehicle_anims( var_0 )
{
    return var_0;
}

setanims()
{
    var_0 = [];
    return var_0;
}

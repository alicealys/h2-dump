// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_water_collector", "tag_origin", 220, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/water_collector_explosion" );
    common_scripts\_destructible::destructible_sound( "water_collector_splash" );
    common_scripts\_destructible::destructible_explode( 500, 800, 32, 1, 10 );
    common_scripts\_destructible::destructible_state( undefined, "utility_water_collector_base_dest", undefined, undefined, "no_melee", undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_lid", undefined, 220, undefined, undefined, "no_melee", 1.0 );
    common_scripts\_destructible::destructible_state( undefined );
}

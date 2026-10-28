// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_firehydrant", "tag_origin", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 11 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/props/firehydrant_leak", 0.1 );
    common_scripts\_destructible::destructible_loopsound( "firehydrant_spray_loop" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 800, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/firehydrant_exp", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/firehydrant_spray_10sec", 0 );
    common_scripts\_destructible::destructible_sound( "firehydrant_burst" );
    common_scripts\_destructible::destructible_explode( 17000, 18000, 96, 32, 48 );
    common_scripts\_destructible::destructible_state( undefined, "com_firehydrant_dest", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_firehydrant_dam", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_cap", "com_firehydrant_cap", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

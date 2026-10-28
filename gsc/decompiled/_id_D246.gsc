// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_propane_tank02_small", "tag_origin", 50, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 10 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_gas_leak_loop" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/distortion/propane_cap_distortion", 0.1 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/fire/propane_capfire_leak", 0.1 );
    common_scripts\_destructible::destructible_sound( "propanetank02_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_physics( "tag_cap", ( 50, 0, 0 ) );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/fire/propane_capfire", 0.6 );
    common_scripts\_destructible::destructible_fx( "tag_valve", "fx/fire/propane_valvefire_flareup" );
    common_scripts\_destructible::destructible_physics( "tag_valve", ( 50, 0, 0 ) );
    common_scripts\_destructible::destructible_fx( "tag_cap", "fx/fire/propane_capfire_flareup" );
    common_scripts\_destructible::destructible_loopfx( "tag_valve", "fx/fire/propane_valvefire", 0.1 );
    common_scripts\_destructible::destructible_sound( "propanetank02_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "propanetank02_fire_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/propane_small_fire" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/propane_large_exp", 0 );
    common_scripts\_destructible::destructible_sound( "propanetank02_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 400, 32, 100 );
    common_scripts\_destructible::destructible_state( undefined, "com_propane_tank02_small_DES", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_valve", "com_propane_tank02_small_valve" );
    common_scripts\_destructible::destructible_part( "tag_cap", "com_propane_tank02_small_cap" );
}

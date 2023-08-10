// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_transformer_ratnest01", "tag_origin", 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_whitesmoke_ratnest01" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/smoke/transformer_damage_blacksmoke_ratnest01" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/transformer_spark_runner_ratnest01", 0.5 );
    common_scripts\_destructible::destructible_loopsound( "transformer_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/explosions/transformer_spark_runner_ratnest01", 0.5 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/fire/transformer_blacksmoke_fire_ratnest01", 0.4 );
    common_scripts\_destructible::destructible_sound( "transformer01_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "transformer_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2, 150, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/transformer_explosion_ratnest01", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/firelp_small_pm_ratnest01" );
    common_scripts\_destructible::destructible_sound( "transformer01_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 150, 16, 100 );
    common_scripts\_destructible::destructible_state( undefined, "utility_transformer_ratnest01_dest", undefined, undefined, "no_melee" );
}

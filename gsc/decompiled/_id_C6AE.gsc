// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_copier", "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_loopfx( "tag_left_feeder", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_left_feeder", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/props/photocopier_sparks", 3 );
    common_scripts\_destructible::destructible_loopsound( "copier_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 800, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/photocopier_exp", 0 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/photocopier_fire" );
    common_scripts\_destructible::destructible_sound( "copier_exp" );
    common_scripts\_destructible::destructible_loopsound( "copier_fire_loop" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 96, 32, 48 );
    common_scripts\_destructible::destructible_state( undefined, "prop_photocopier_destroyed", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_left_feeder", "prop_photocopier_destroyed_left_feeder", 4, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_right_shelf", "prop_photocopier_destroyed_right_shelf", 4, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_part( "tag_top", "prop_photocopier_destroyed_top", 4, undefined, undefined, undefined, 1.0, 1.0 );
}

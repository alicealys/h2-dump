// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_light_ceiling_round", "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/light_blowout_runner" );
    common_scripts\_destructible::destructible_state( undefined, "com_light_ceiling_round_off", undefined, undefined, "no_melee" );
}

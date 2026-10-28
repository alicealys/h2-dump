// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_D488( "tv2" );
}

_id_D488( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_tubetv_" + var_0, "tag_origin", 1, undefined, 32 );
    common_scripts\_destructible::destructible_splash_damage_scaler( 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_explosion" );
    common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
    common_scripts\_destructible::destructible_explode( 20, 2000, 9, 3, 3 );
    common_scripts\_destructible::destructible_state( undefined, "com_" + var_0 + "_d", undefined, undefined, "no_melee" );
}

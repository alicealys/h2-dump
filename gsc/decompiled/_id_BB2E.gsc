// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_trashbin_01", "tag_origin", 120, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew_des", 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/garbage_spew", 1 );
    common_scripts\_destructible::destructible_sound( "exp_trashcan_sweet" );
    common_scripts\_destructible::destructible_explode( 1300, 1351, 1, 10, 20 );
    common_scripts\_destructible::destructible_state( undefined, "com_trashbin01_dmg", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_trashbin01_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
